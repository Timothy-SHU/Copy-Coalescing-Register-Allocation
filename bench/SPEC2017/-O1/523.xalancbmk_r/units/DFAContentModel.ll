; ModuleID = 'DFAContentModel.cpp'
source_filename = "DFAContentModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMLeaf" = type <{ %"class.xercesc_2_7::CMNode.base", [4 x i8], ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::CMNode.base" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::CMStateSet" = type { i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DFAContentModel" = type { %"class.xercesc_2_7::XMLContentModel", ptr, ptr, i32, i8, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_76CMNodeD0Ev = comdat any

$_ZN11xercesc_2_76CMLeafD0Ev = comdat any

$_ZN11xercesc_2_76CMLeafD2Ev = comdat any

$_ZN11xercesc_2_714HashCMStateSetD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710CMStateSetC2ERKS0_ = comdat any

$_ZNK11xercesc_2_710CMStateSet6getBitEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_76CMNodeD2Ev = comdat any

$_ZNK11xercesc_2_76CMLeaf10isNullableEv = comdat any

$_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE = comdat any

$_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE = comdat any

$_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_ = comdat any

$_ZNK11xercesc_2_715DFAContentModel12getNextStateEjj = comdat any

$_ZN11xercesc_2_78HashBaseD2Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_710CMStateSet6setBitEj = comdat any

$_ZNK11xercesc_2_710CMStateSeteqERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv = comdat any

$_ZTVN11xercesc_2_76CMNodeE = comdat any

$_ZTVN11xercesc_2_76CMLeafE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_76CMNodeE = comdat any

$_ZTIN11xercesc_2_76CMNodeE = comdat any

$_ZTSN11xercesc_2_76CMLeafE = comdat any

$_ZTIN11xercesc_2_76CMLeafE = comdat any

$_ZTVN11xercesc_2_714HashCMStateSetE = comdat any

$_ZTSN11xercesc_2_714HashCMStateSetE = comdat any

$_ZTSN11xercesc_2_78HashBaseE = comdat any

$_ZTIN11xercesc_2_78HashBaseE = comdat any

$_ZTIN11xercesc_2_714HashCMStateSetE = comdat any

$_ZTSN11xercesc_2_715XMLContentModelE = comdat any

$_ZTIN11xercesc_2_715XMLContentModelE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_76CMNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMNodeE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_76CMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_76CMLeafE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMLeafE, ptr @_ZN11xercesc_2_76CMLeafD2Ev, ptr @_ZN11xercesc_2_76CMLeafD0Ev, ptr @_ZNK11xercesc_2_76CMLeaf10isNullableEv, ptr @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE] }, comdat, align 8
@_ZTVN11xercesc_2_715DFAContentModelE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DFAContentModelE, ptr @_ZN11xercesc_2_715DFAContentModelD2Ev, ptr @_ZN11xercesc_2_715DFAContentModelD0Ev, ptr @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_715DFAContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE, ptr @_ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt, ptr @_ZNK11xercesc_2_715DFAContentModel28getContentLeafNameTypeVectorEv, ptr @_ZNK11xercesc_2_715DFAContentModel12getNextStateEjj] }, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_715XMLContentModel13gInvalidTransE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"DFAContentModel.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols22fgATTVAL_TWOPOUNDOTHERE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMNodeE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_76CMLeafE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMLeafE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMLeafE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMLeafE, ptr @_ZTIN11xercesc_2_76CMNodeE }, comdat, align 8
@_ZTVN11xercesc_2_714HashCMStateSetE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714HashCMStateSetE, ptr @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_, ptr @_ZN11xercesc_2_78HashBaseD2Ev, ptr @_ZN11xercesc_2_714HashCMStateSetD0Ev] }, comdat, align 8
@_ZTSN11xercesc_2_714HashCMStateSetE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714HashCMStateSetE\00", comdat, align 1
@_ZTSN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78HashBaseE\00", comdat, align 1
@_ZTIN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78HashBaseE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_714HashCMStateSetE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714HashCMStateSetE, ptr @_ZTIN11xercesc_2_78HashBaseE }, comdat, align 8
@_ZTSN11xercesc_2_715DFAContentModelE = dso_local constant [33 x i8] c"N11xercesc_2_715DFAContentModelE\00", align 1
@_ZTSN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLContentModelE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLContentModelE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLContentModelE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715DFAContentModelE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DFAContentModelE, ptr @_ZTIN11xercesc_2_715XMLContentModelE }, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"./xercesc/validators/common/CMStateSet.hpp\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [48 x i8] c"./xercesc/validators/common/DFAContentModel.hpp\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i1, ptr, ptr), ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE
@_ZN11xercesc_2_715DFAContentModelC1EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i1, ptr, i1, ptr), ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE
@_ZN11xercesc_2_715DFAContentModelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715DFAContentModelD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 !prof !89 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafD0Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 4, !tbaa !94, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !104

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !106

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(56) %7) #15, !prof !107
  br label %13

13:                                               ; preds = %9, %5, %1
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !prof !109

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21, !prof !112

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %15, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %19)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #14
  unreachable

30:                                               ; preds = %21, %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %31

31:                                               ; preds = %30, %13
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !115

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %33, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !110
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39, !prof !116

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %33, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %37)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #14
  unreachable

48:                                               ; preds = %39, %35
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %33) #15
  br label %49

49:                                               ; preds = %31, %48
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 4, !tbaa !94, !range !102, !noundef !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  br label %13

13:                                               ; preds = %5, %9, %1
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %15, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %19)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #14
  unreachable

30:                                               ; preds = %21, %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #15
  br label %31

31:                                               ; preds = %30, %13
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %33, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !110
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %33, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %37)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #14
  unreachable

48:                                               ; preds = %39, %35
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %33) #15
  br label %49

49:                                               ; preds = %31, %48
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714HashCMStateSetD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !117 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = zext i1 %1 to i8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715DFAContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !118
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %6, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  store i8 %5, ptr %10, align 4, !tbaa !121
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  store i8 0, ptr %11, align 1, !tbaa !122
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  store ptr null, ptr %12, align 8, !tbaa !123
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  store ptr %3, ptr %13, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !124
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %6)
          to label %8 unwind label %73, !prof !125

8:                                                ; preds = %2
  %9 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !126
  %10 = load ptr, ptr %3, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %9, ptr noundef %10)
          to label %11 unwind label %75, !prof !125

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 8, !tbaa !124
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !91
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %5, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !127
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %5, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !128
  %15 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %5, i64 0, i32 4
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %5, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 -1, ptr %16, align 8, !tbaa !129
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !91
  %17 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %5, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !105
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %5, i64 0, i32 3
  store i32 -1, ptr %18, align 8, !tbaa !130
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %5, i64 0, i32 4
  store i8 1, ptr %19, align 4, !tbaa !94
  store ptr %7, ptr %17, align 8, !tbaa !105
  %20 = tail call noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  %21 = load ptr, ptr %3, align 8, !tbaa !124
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %21)
  %23 = load ptr, ptr %3, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %22, i32 noundef 5, ptr noundef %20, ptr noundef nonnull %5, ptr noundef %23)
          to label %24 unwind label %79, !prof !125

24:                                               ; preds = %11
  %25 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 8
  store ptr %22, ptr %25, align 8, !tbaa !131
  %26 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !132
  %28 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 5
  store i32 %27, ptr %28, align 8, !tbaa !118
  %29 = add i32 %27, 1
  store i32 %29, ptr %26, align 8, !tbaa !132
  store i32 %27, ptr %18, align 8, !tbaa !130
  %30 = load ptr, ptr %3, align 8, !tbaa !124
  %31 = zext i32 %29 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = load ptr, ptr %30, align 8, !tbaa !91
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %32), !prof !133
  %37 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  store ptr %36, ptr %37, align 8, !tbaa !134
  %38 = load ptr, ptr %3, align 8, !tbaa !124
  %39 = load i32, ptr %26, align 8, !tbaa !132
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = load ptr, ptr %38, align 8, !tbaa !91
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %41), !prof !133
  %46 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  store ptr %45, ptr %46, align 8, !tbaa !135
  %47 = load ptr, ptr %25, align 8, !tbaa !131
  %48 = tail call noundef i32 @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %47, i32 noundef 0)
  %49 = load ptr, ptr %3, align 8, !tbaa !124
  %50 = load i32, ptr %26, align 8, !tbaa !132
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 3
  %53 = load ptr, ptr %49, align 8, !tbaa !91
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef %52), !prof !133
  %57 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 7
  store ptr %56, ptr %57, align 8, !tbaa !136
  %58 = load i32, ptr %26, align 8, !tbaa !132
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %83, label %60, !prof !137

60:                                               ; preds = %24, %66
  %61 = phi i64 [ %69, %66 ], [ 0, %24 ]
  %62 = load ptr, ptr %3, align 8, !tbaa !124
  %63 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %62)
  %64 = load i32, ptr %26, align 8, !tbaa !132
  %65 = load ptr, ptr %3, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %63, i32 noundef %64, ptr noundef %65)
          to label %66 unwind label %81, !prof !112

66:                                               ; preds = %60
  %67 = load ptr, ptr %57, align 8, !tbaa !136
  %68 = getelementptr inbounds ptr, ptr %67, i64 %61
  store ptr %63, ptr %68, align 8, !tbaa !138
  %69 = add nuw nsw i64 %61, 1
  %70 = load i32, ptr %26, align 8, !tbaa !132
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %60, label %83, !prof !139, !llvm.loop !140

73:                                               ; preds = %2
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %77

75:                                               ; preds = %8
  %76 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #15
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi { ptr, i32 } [ %74, %73 ], [ %76, %75 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #15
  br label %867

79:                                               ; preds = %11
  %80 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #15
  br label %867

81:                                               ; preds = %60
  %82 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %63, ptr noundef %62) #15
  br label %867

83:                                               ; preds = %66, %24
  %84 = load ptr, ptr %25, align 8, !tbaa !131
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %84)
  %85 = load ptr, ptr %20, align 8, !tbaa !91
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef zeroext i1 %87(ptr noundef nonnull align 8 dereferenceable(44) %20), !prof !143
  %89 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 4
  %90 = zext i1 %88 to i8
  store i8 %90, ptr %89, align 4, !tbaa !144
  %91 = load ptr, ptr %3, align 8, !tbaa !124
  %92 = load i32, ptr %26, align 8, !tbaa !132
  %93 = zext i32 %92 to i64
  %94 = shl nuw nsw i64 %93, 3
  %95 = load ptr, ptr %91, align 8, !tbaa !91
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %91, i64 noundef %94), !prof !133
  %99 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !145
  %100 = load ptr, ptr %3, align 8, !tbaa !124
  %101 = load i32, ptr %26, align 8, !tbaa !132
  %102 = zext i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 2
  %104 = load ptr, ptr %100, align 8, !tbaa !91
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef %103), !prof !133
  %108 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  store ptr %107, ptr %108, align 8, !tbaa !146
  %109 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  store i32 0, ptr %109, align 8, !tbaa !147
  %110 = load i32, ptr %26, align 8, !tbaa !132
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112, !prof !137

112:                                              ; preds = %83
  %113 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  br label %118

114:                                              ; preds = %270, %83
  %115 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %116 = load ptr, ptr %115, align 8, !tbaa !123
  %117 = icmp eq ptr %116, null
  br i1 %117, label %279, label %275, !prof !125

118:                                              ; preds = %112, %270
  %119 = phi i64 [ 0, %112 ], [ %271, %270 ]
  %120 = load ptr, ptr %3, align 8, !tbaa !124
  %121 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %120)
  %122 = load ptr, ptr %3, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %121, ptr noundef %122)
          to label %123 unwind label %140, !prof !112

123:                                              ; preds = %118
  %124 = load ptr, ptr %99, align 8, !tbaa !145
  %125 = getelementptr inbounds ptr, ptr %124, i64 %119
  store ptr %121, ptr %125, align 8, !tbaa !138
  %126 = load ptr, ptr %46, align 8, !tbaa !135
  %127 = getelementptr inbounds i32, ptr %126, i64 %119
  %128 = load i32, ptr %127, align 4, !tbaa !148
  %129 = and i32 %128, 15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %144, label %131, !prof !112

131:                                              ; preds = %123
  %132 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %133 = load ptr, ptr %132, align 8, !tbaa !123
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load ptr, ptr %3, align 8, !tbaa !124
  %137 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %136)
  %138 = load ptr, ptr %3, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(28) %137, ptr noundef %138)
          to label %139 unwind label %142

139:                                              ; preds = %135
  store ptr %137, ptr %132, align 8, !tbaa !123
  br label %144

140:                                              ; preds = %118
  %141 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %121, ptr noundef %120) #15
  br label %867

142:                                              ; preds = %135
  %143 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %137, ptr noundef %136) #15
  br label %867

144:                                              ; preds = %131, %139, %123
  %145 = load ptr, ptr %37, align 8, !tbaa !134
  %146 = getelementptr inbounds ptr, ptr %145, i64 %119
  %147 = load ptr, ptr %146, align 8, !tbaa !138
  %148 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !105
  %150 = load i8, ptr %113, align 4, !tbaa !121, !range !102, !noundef !103
  %151 = icmp ne i8 %150, 0
  %152 = icmp ne ptr %149, null
  %153 = and i1 %152, %151
  br i1 %153, label %154, label %156, !prof !149

154:                                              ; preds = %144
  %155 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %149)
  br label %156

156:                                              ; preds = %154, %144
  %157 = phi ptr [ %155, %154 ], [ null, %144 ]
  %158 = load i32, ptr %109, align 8, !tbaa !147
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %253, label %160, !prof !150

160:                                              ; preds = %156
  %161 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %149, i64 0, i32 4
  %162 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %149, i64 0, i32 6
  br label %163

163:                                              ; preds = %160, %241
  %164 = phi i64 [ 0, %160 ], [ %242, %241 ]
  %165 = load ptr, ptr %99, align 8, !tbaa !145
  %166 = getelementptr inbounds ptr, ptr %165, i64 %164
  %167 = load ptr, ptr %166, align 8, !tbaa !138
  %168 = load i8, ptr %113, align 4, !tbaa !121, !range !102, !noundef !103
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %198, label %170, !prof !151

170:                                              ; preds = %163
  %171 = icmp eq ptr %157, null
  %172 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %167)
  %173 = icmp eq ptr %172, null
  %174 = or i1 %171, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load i16, ptr %172, align 2, !tbaa !152
  %177 = load i16, ptr %157, align 2, !tbaa !152
  %178 = icmp eq i16 %176, %177
  br i1 %178, label %187, label %241

179:                                              ; preds = %170
  br i1 %173, label %183, label %180

180:                                              ; preds = %179
  %181 = load i16, ptr %172, align 2, !tbaa !152
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %241

183:                                              ; preds = %180, %179
  br i1 %171, label %250, label %184

184:                                              ; preds = %183
  %185 = load i16, ptr %157, align 2, !tbaa !152
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %250, label %241

187:                                              ; preds = %175, %192
  %188 = phi i16 [ %195, %192 ], [ %176, %175 ]
  %189 = phi ptr [ %194, %192 ], [ %157, %175 ]
  %190 = phi ptr [ %193, %192 ], [ %172, %175 ]
  %191 = icmp eq i16 %188, 0
  br i1 %191, label %248, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds i16, ptr %190, i64 1
  %194 = getelementptr inbounds i16, ptr %189, i64 1
  %195 = load i16, ptr %193, align 2, !tbaa !152
  %196 = load i16, ptr %194, align 2, !tbaa !152
  %197 = icmp eq i16 %195, %196
  br i1 %197, label %187, label %241, !llvm.loop !154

198:                                              ; preds = %163
  %199 = load ptr, ptr %108, align 8, !tbaa !146
  %200 = getelementptr inbounds i32, ptr %199, i64 %164
  %201 = load i32, ptr %200, align 4, !tbaa !148
  %202 = load ptr, ptr %46, align 8, !tbaa !135
  %203 = getelementptr inbounds i32, ptr %202, i64 %119
  %204 = load i32, ptr %203, align 4, !tbaa !148
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %241, !prof !151

206:                                              ; preds = %198
  %207 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %167, i64 0, i32 4
  %208 = load i32, ptr %207, align 4, !tbaa !155
  %209 = load i32, ptr %161, align 4, !tbaa !155
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %241, !prof !158

211:                                              ; preds = %206
  %212 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %167, i64 0, i32 6
  %213 = load ptr, ptr %212, align 8, !tbaa !159
  %214 = load ptr, ptr %162, align 8, !tbaa !159
  %215 = icmp eq ptr %213, null
  %216 = icmp eq ptr %214, null
  %217 = or i1 %215, %216
  br i1 %217, label %222, label %218, !prof !160

218:                                              ; preds = %211
  %219 = load i16, ptr %213, align 2, !tbaa !152
  %220 = load i16, ptr %214, align 2, !tbaa !152
  %221 = icmp eq i16 %219, %220
  br i1 %221, label %230, label %241, !prof !161

222:                                              ; preds = %211
  br i1 %215, label %226, label %223

223:                                              ; preds = %222
  %224 = load i16, ptr %213, align 2, !tbaa !152
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %223, %222
  br i1 %216, label %250, label %227

227:                                              ; preds = %226
  %228 = load i16, ptr %214, align 2, !tbaa !152
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %250, label %241

230:                                              ; preds = %218, %235
  %231 = phi i16 [ %238, %235 ], [ %219, %218 ]
  %232 = phi ptr [ %237, %235 ], [ %214, %218 ]
  %233 = phi ptr [ %236, %235 ], [ %213, %218 ]
  %234 = icmp eq i16 %231, 0
  br i1 %234, label %246, label %235, !prof !162

235:                                              ; preds = %230
  %236 = getelementptr inbounds i16, ptr %233, i64 1
  %237 = getelementptr inbounds i16, ptr %232, i64 1
  %238 = load i16, ptr %236, align 2, !tbaa !152
  %239 = load i16, ptr %237, align 2, !tbaa !152
  %240 = icmp eq i16 %238, %239
  br i1 %240, label %230, label %241, !prof !162, !llvm.loop !154

241:                                              ; preds = %192, %235, %175, %218, %206, %198, %180, %184, %223, %227
  %242 = add nuw nsw i64 %164, 1
  %243 = load i32, ptr %109, align 8, !tbaa !147
  %244 = zext i32 %243 to i64
  %245 = icmp ult i64 %242, %244
  br i1 %245, label %163, label %250, !prof !163, !llvm.loop !164

246:                                              ; preds = %230
  %247 = trunc i64 %164 to i32
  br label %253

248:                                              ; preds = %187
  %249 = trunc i64 %164 to i32
  br label %253

250:                                              ; preds = %226, %227, %183, %184, %241
  %251 = phi i64 [ %164, %226 ], [ %164, %227 ], [ %164, %183 ], [ %164, %184 ], [ %242, %241 ]
  %252 = trunc i64 %251 to i32
  br label %253

253:                                              ; preds = %250, %248, %246, %156
  %254 = phi i32 [ 0, %156 ], [ %247, %246 ], [ %249, %248 ], [ %252, %250 ]
  %255 = load i32, ptr %109, align 8, !tbaa !147
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %270, !prof !112

257:                                              ; preds = %253
  %258 = load ptr, ptr %99, align 8, !tbaa !145
  %259 = zext i32 %255 to i64
  %260 = getelementptr inbounds ptr, ptr %258, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !138
  tail call void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %261, ptr noundef nonnull align 8 dereferenceable(56) %149)
  %262 = load ptr, ptr %46, align 8, !tbaa !135
  %263 = getelementptr inbounds i32, ptr %262, i64 %119
  %264 = load i32, ptr %263, align 4, !tbaa !148
  %265 = load ptr, ptr %108, align 8, !tbaa !146
  %266 = load i32, ptr %109, align 8, !tbaa !147
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i32, ptr %265, i64 %267
  store i32 %264, ptr %268, align 4, !tbaa !148
  %269 = add i32 %266, 1
  store i32 %269, ptr %109, align 8, !tbaa !147
  br label %270

270:                                              ; preds = %257, %253
  %271 = add nuw nsw i64 %119, 1
  %272 = load i32, ptr %26, align 8, !tbaa !132
  %273 = zext i32 %272 to i64
  %274 = icmp ult i64 %271, %273
  br i1 %274, label %118, label %114, !prof !139, !llvm.loop !165

275:                                              ; preds = %114
  %276 = load ptr, ptr %99, align 8, !tbaa !145
  %277 = load ptr, ptr %108, align 8, !tbaa !146
  %278 = load i32, ptr %109, align 8, !tbaa !147
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj(ptr noundef nonnull align 8 dereferenceable(28) %116, ptr noundef %276, ptr noundef %277, i32 noundef %278)
  br label %279

279:                                              ; preds = %275, %114
  %280 = load ptr, ptr %3, align 8, !tbaa !124
  %281 = load i32, ptr %26, align 8, !tbaa !132
  %282 = load i32, ptr %109, align 8, !tbaa !147
  %283 = add i32 %282, %281
  %284 = zext i32 %283 to i64
  %285 = shl nuw nsw i64 %284, 2
  %286 = load ptr, ptr %280, align 8, !tbaa !91
  %287 = getelementptr inbounds ptr, ptr %286, i64 2
  %288 = load ptr, ptr %287, align 8
  %289 = tail call noundef ptr %288(ptr noundef nonnull align 8 dereferenceable(8) %280, i64 noundef %285), !prof !133
  %290 = load i32, ptr %109, align 8, !tbaa !147
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292, !prof !137

292:                                              ; preds = %279
  %293 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  br label %338

294:                                              ; preds = %357, %279
  %295 = load i32, ptr %26, align 8, !tbaa !132
  %296 = shl i32 %295, 2
  %297 = load ptr, ptr %3, align 8, !tbaa !124
  %298 = zext i32 %296 to i64
  %299 = shl nuw nsw i64 %298, 3
  %300 = load ptr, ptr %297, align 8, !tbaa !91
  %301 = getelementptr inbounds ptr, ptr %300, i64 2
  %302 = load ptr, ptr %301, align 8
  %303 = tail call noundef ptr %302(ptr noundef nonnull align 8 dereferenceable(8) %297, i64 noundef %299), !prof !133
  %304 = load ptr, ptr %3, align 8, !tbaa !124
  %305 = load ptr, ptr %304, align 8, !tbaa !91
  %306 = getelementptr inbounds ptr, ptr %305, i64 2
  %307 = load ptr, ptr %306, align 8
  %308 = tail call noundef ptr %307(ptr noundef nonnull align 8 dereferenceable(8) %304, i64 noundef %298), !prof !133
  %309 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  store ptr %308, ptr %309, align 8, !tbaa !166
  %310 = load ptr, ptr %3, align 8, !tbaa !124
  %311 = load ptr, ptr %310, align 8, !tbaa !91
  %312 = getelementptr inbounds ptr, ptr %311, i64 2
  %313 = load ptr, ptr %312, align 8
  %314 = tail call noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(8) %310, i64 noundef %299), !prof !133
  %315 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  store ptr %314, ptr %315, align 8, !tbaa !167
  %316 = load ptr, ptr %3, align 8, !tbaa !124
  %317 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %316)
  %318 = load ptr, ptr %25, align 8, !tbaa !131
  %319 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %318, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !108
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %336, !prof !125

322:                                              ; preds = %294
  %323 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %318, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !127
  %325 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %324)
          to label %326 unwind label %520, !prof !125

326:                                              ; preds = %322
  %327 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %318, i64 0, i32 6
  %328 = load i32, ptr %327, align 8, !tbaa !129
  %329 = load ptr, ptr %323, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %325, i32 noundef %328, ptr noundef %329)
          to label %330 unwind label %334, !prof !125

330:                                              ; preds = %326
  store ptr %325, ptr %319, align 8, !tbaa !108
  %331 = load ptr, ptr %318, align 8, !tbaa !91
  %332 = getelementptr inbounds ptr, ptr %331, i64 3
  %333 = load ptr, ptr %332, align 8
  invoke void %333(ptr noundef nonnull align 8 dereferenceable(44) %318, ptr noundef nonnull align 8 dereferenceable(32) %325)
          to label %336 unwind label %520, !prof !168

334:                                              ; preds = %326
  %335 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %325, ptr noundef %324) #15
  br label %522

336:                                              ; preds = %330, %294
  %337 = load ptr, ptr %319, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_710CMStateSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %317, ptr noundef nonnull align 8 dereferenceable(32) %337)
          to label %458 unwind label %520, !prof !125

338:                                              ; preds = %292, %357
  %339 = phi i64 [ 0, %292 ], [ %362, %357 ]
  %340 = phi i32 [ 0, %292 ], [ %359, %357 ]
  %341 = load ptr, ptr %99, align 8, !tbaa !145
  %342 = getelementptr inbounds ptr, ptr %341, i64 %339
  %343 = load ptr, ptr %342, align 8, !tbaa !138
  %344 = load i8, ptr %293, align 4, !tbaa !121, !range !102, !noundef !103
  %345 = icmp ne i8 %344, 0
  %346 = icmp ne ptr %343, null
  %347 = select i1 %345, i1 %346, i1 false, !prof !149
  br i1 %347, label %348, label %350, !prof !149

348:                                              ; preds = %338
  %349 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %343)
  br label %350

350:                                              ; preds = %348, %338
  %351 = phi ptr [ %349, %348 ], [ null, %338 ]
  %352 = load i32, ptr %26, align 8, !tbaa !132
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %357, label %354, !prof !150

354:                                              ; preds = %350
  %355 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %343, i64 0, i32 4
  %356 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %343, i64 0, i32 6
  br label %366

357:                                              ; preds = %452, %350
  %358 = phi i32 [ %340, %350 ], [ %453, %452 ]
  %359 = add i32 %358, 1
  %360 = zext i32 %358 to i64
  %361 = getelementptr inbounds i32, ptr %289, i64 %360
  store i32 -1, ptr %361, align 4, !tbaa !126
  %362 = add nuw nsw i64 %339, 1
  %363 = load i32, ptr %109, align 8, !tbaa !147
  %364 = zext i32 %363 to i64
  %365 = icmp ult i64 %362, %364
  br i1 %365, label %338, label %294, !prof !139, !llvm.loop !169

366:                                              ; preds = %354, %452
  %367 = phi i64 [ 0, %354 ], [ %454, %452 ]
  %368 = phi i32 [ %340, %354 ], [ %453, %452 ]
  %369 = load ptr, ptr %37, align 8, !tbaa !134
  %370 = getelementptr inbounds ptr, ptr %369, i64 %367
  %371 = load ptr, ptr %370, align 8, !tbaa !138
  %372 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %371, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !105
  %374 = load i8, ptr %293, align 4, !tbaa !121, !range !102, !noundef !103
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %404, label %376, !prof !170

376:                                              ; preds = %366
  %377 = icmp eq ptr %351, null
  %378 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %373)
  %379 = icmp eq ptr %378, null
  %380 = or i1 %377, %379
  br i1 %380, label %385, label %381

381:                                              ; preds = %376
  %382 = load i16, ptr %378, align 2, !tbaa !152
  %383 = load i16, ptr %351, align 2, !tbaa !152
  %384 = icmp eq i16 %382, %383
  br i1 %384, label %393, label %452

385:                                              ; preds = %376
  br i1 %379, label %389, label %386

386:                                              ; preds = %385
  %387 = load i16, ptr %378, align 2, !tbaa !152
  %388 = icmp eq i16 %387, 0
  br i1 %388, label %389, label %452

389:                                              ; preds = %386, %385
  br i1 %377, label %447, label %390

390:                                              ; preds = %389
  %391 = load i16, ptr %351, align 2, !tbaa !152
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %447, label %452

393:                                              ; preds = %381, %398
  %394 = phi i16 [ %401, %398 ], [ %382, %381 ]
  %395 = phi ptr [ %400, %398 ], [ %351, %381 ]
  %396 = phi ptr [ %399, %398 ], [ %378, %381 ]
  %397 = icmp eq i16 %394, 0
  br i1 %397, label %447, label %398

398:                                              ; preds = %393
  %399 = getelementptr inbounds i16, ptr %396, i64 1
  %400 = getelementptr inbounds i16, ptr %395, i64 1
  %401 = load i16, ptr %399, align 2, !tbaa !152
  %402 = load i16, ptr %400, align 2, !tbaa !152
  %403 = icmp eq i16 %401, %402
  br i1 %403, label %393, label %452, !llvm.loop !154

404:                                              ; preds = %366
  %405 = load ptr, ptr %108, align 8, !tbaa !146
  %406 = getelementptr inbounds i32, ptr %405, i64 %339
  %407 = load i32, ptr %406, align 4, !tbaa !148
  %408 = load ptr, ptr %46, align 8, !tbaa !135
  %409 = getelementptr inbounds i32, ptr %408, i64 %367
  %410 = load i32, ptr %409, align 4, !tbaa !148
  %411 = icmp eq i32 %407, %410
  br i1 %411, label %412, label %452, !prof !170

412:                                              ; preds = %404
  %413 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %373, i64 0, i32 4
  %414 = load i32, ptr %413, align 4, !tbaa !155
  %415 = load i32, ptr %355, align 4, !tbaa !155
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %452, !prof !171

417:                                              ; preds = %412
  %418 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %373, i64 0, i32 6
  %419 = load ptr, ptr %418, align 8, !tbaa !159
  %420 = load ptr, ptr %356, align 8, !tbaa !159
  %421 = icmp eq ptr %419, null
  %422 = icmp eq ptr %420, null
  %423 = or i1 %421, %422
  br i1 %423, label %428, label %424, !prof !172

424:                                              ; preds = %417
  %425 = load i16, ptr %419, align 2, !tbaa !152
  %426 = load i16, ptr %420, align 2, !tbaa !152
  %427 = icmp eq i16 %425, %426
  br i1 %427, label %436, label %452, !prof !173

428:                                              ; preds = %417
  br i1 %421, label %432, label %429

429:                                              ; preds = %428
  %430 = load i16, ptr %419, align 2, !tbaa !152
  %431 = icmp eq i16 %430, 0
  br i1 %431, label %432, label %452

432:                                              ; preds = %429, %428
  br i1 %422, label %447, label %433

433:                                              ; preds = %432
  %434 = load i16, ptr %420, align 2, !tbaa !152
  %435 = icmp eq i16 %434, 0
  br i1 %435, label %447, label %452

436:                                              ; preds = %424, %441
  %437 = phi i16 [ %444, %441 ], [ %425, %424 ]
  %438 = phi ptr [ %443, %441 ], [ %420, %424 ]
  %439 = phi ptr [ %442, %441 ], [ %419, %424 ]
  %440 = icmp eq i16 %437, 0
  br i1 %440, label %447, label %441, !prof !174

441:                                              ; preds = %436
  %442 = getelementptr inbounds i16, ptr %439, i64 1
  %443 = getelementptr inbounds i16, ptr %438, i64 1
  %444 = load i16, ptr %442, align 2, !tbaa !152
  %445 = load i16, ptr %443, align 2, !tbaa !152
  %446 = icmp eq i16 %444, %445
  br i1 %446, label %436, label %452, !prof !175, !llvm.loop !154

447:                                              ; preds = %393, %436, %432, %433, %389, %390
  %448 = add i32 %368, 1
  %449 = zext i32 %368 to i64
  %450 = getelementptr inbounds i32, ptr %289, i64 %449
  %451 = trunc i64 %367 to i32
  store i32 %451, ptr %450, align 4, !tbaa !126
  br label %452

452:                                              ; preds = %398, %441, %447, %381, %424, %433, %429, %390, %386, %404, %412
  %453 = phi i32 [ %368, %412 ], [ %368, %404 ], [ %368, %386 ], [ %368, %390 ], [ %368, %429 ], [ %368, %433 ], [ %368, %424 ], [ %368, %381 ], [ %448, %447 ], [ %368, %441 ], [ %368, %398 ]
  %454 = add nuw nsw i64 %367, 1
  %455 = load i32, ptr %26, align 8, !tbaa !132
  %456 = zext i32 %455 to i64
  %457 = icmp ult i64 %454, %456
  br i1 %457, label %366, label %357, !prof !176, !llvm.loop !177

458:                                              ; preds = %336
  %459 = load ptr, ptr %3, align 8, !tbaa !124
  %460 = load i32, ptr %109, align 8, !tbaa !147
  %461 = zext i32 %460 to i64
  %462 = shl nuw nsw i64 %461, 2
  %463 = load ptr, ptr %459, align 8, !tbaa !91
  %464 = getelementptr inbounds ptr, ptr %463, i64 2
  %465 = load ptr, ptr %464, align 8
  %466 = tail call noundef ptr %465(ptr noundef nonnull align 8 dereferenceable(8) %459, i64 noundef %462), !prof !133
  %467 = load i32, ptr %109, align 8, !tbaa !147
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %478, label %469, !prof !137

469:                                              ; preds = %458
  %470 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !126
  br label %471

471:                                              ; preds = %469, %471
  %472 = phi i64 [ 0, %469 ], [ %474, %471 ]
  %473 = getelementptr inbounds i32, ptr %466, i64 %472
  store i32 %470, ptr %473, align 4, !tbaa !126
  %474 = add nuw nsw i64 %472, 1
  %475 = load i32, ptr %109, align 8, !tbaa !147
  %476 = zext i32 %475 to i64
  %477 = icmp ult i64 %474, %476
  br i1 %477, label %471, label %478, !prof !139, !llvm.loop !178

478:                                              ; preds = %471, %458
  %479 = load ptr, ptr %315, align 8, !tbaa !167
  store ptr %466, ptr %479, align 8, !tbaa !138
  store ptr %317, ptr %303, align 8, !tbaa !138
  %480 = load ptr, ptr %3, align 8, !tbaa !124
  %481 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %480)
  %482 = load ptr, ptr %3, align 8, !tbaa !124
  %483 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %482)
          to label %484 unwind label %524, !prof !125

484:                                              ; preds = %478
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714HashCMStateSetE, i64 0, inrange i32 0, i64 2), ptr %483, align 8, !tbaa !91
  %485 = load ptr, ptr %3, align 8, !tbaa !124
  store ptr %485, ptr %481, align 8, !tbaa !179
  %486 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %481, i64 0, i32 1
  store i8 1, ptr %486, align 8, !tbaa !181
  %487 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %481, i64 0, i32 2
  store ptr null, ptr %487, align 8, !tbaa !182
  %488 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %481, i64 0, i32 3
  store i32 %296, ptr %488, align 8, !tbaa !183
  %489 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %481, i64 0, i32 4
  store i32 %296, ptr %489, align 4, !tbaa !184
  %490 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %481, i64 0, i32 5
  store i32 0, ptr %490, align 8, !tbaa !185
  %491 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %481, i64 0, i32 6
  store ptr null, ptr %491, align 8, !tbaa !186
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %481, i32 noundef %296)
          to label %492 unwind label %524, !prof !125

492:                                              ; preds = %484
  store ptr %483, ptr %491, align 8, !tbaa !186
  %493 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  br label %501

494:                                              ; preds = %739, %501
  %495 = phi i32 [ %506, %501 ], [ %740, %739 ]
  %496 = phi ptr [ %505, %501 ], [ %741, %739 ]
  %497 = phi i32 [ %504, %501 ], [ %742, %739 ]
  %498 = phi ptr [ %503, %501 ], [ %743, %739 ]
  %499 = zext i32 %497 to i64
  %500 = icmp ult i64 %517, %499
  br i1 %500, label %501, label %748, !prof !187, !llvm.loop !188

501:                                              ; preds = %492, %494
  %502 = phi i64 [ 0, %492 ], [ %517, %494 ]
  %503 = phi ptr [ null, %492 ], [ %498, %494 ]
  %504 = phi i32 [ 1, %492 ], [ %497, %494 ]
  %505 = phi ptr [ %303, %492 ], [ %496, %494 ]
  %506 = phi i32 [ %296, %492 ], [ %495, %494 ]
  %507 = getelementptr inbounds ptr, ptr %505, i64 %502
  %508 = load ptr, ptr %507, align 8, !tbaa !138
  %509 = load ptr, ptr %315, align 8, !tbaa !167
  %510 = getelementptr inbounds ptr, ptr %509, i64 %502
  %511 = load ptr, ptr %510, align 8, !tbaa !138
  %512 = load i32, ptr %28, align 8, !tbaa !118
  %513 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %508, i32 noundef %512)
  %514 = load ptr, ptr %309, align 8, !tbaa !166
  %515 = getelementptr inbounds i8, ptr %514, i64 %502
  %516 = zext i1 %513 to i8
  store i8 %516, ptr %515, align 1, !tbaa !189
  %517 = add nuw nsw i64 %502, 1
  %518 = load i32, ptr %109, align 8, !tbaa !147
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %494, label %526, !prof !190

520:                                              ; preds = %330, %322, %336
  %521 = landingpad { ptr, i32 }
          cleanup
  br label %522

522:                                              ; preds = %334, %520
  %523 = phi { ptr, i32 } [ %521, %520 ], [ %335, %334 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %317, ptr noundef %316) #15
  br label %867

524:                                              ; preds = %484, %478
  %525 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %481, ptr noundef %480) #15
  br label %867

526:                                              ; preds = %501, %739
  %527 = phi i64 [ %744, %739 ], [ 0, %501 ]
  %528 = phi i32 [ %617, %739 ], [ 0, %501 ]
  %529 = phi ptr [ %743, %739 ], [ %503, %501 ]
  %530 = phi i32 [ %742, %739 ], [ %504, %501 ]
  %531 = phi ptr [ %741, %739 ], [ %505, %501 ]
  %532 = phi i32 [ %740, %739 ], [ %506, %501 ]
  %533 = icmp eq ptr %529, null
  br i1 %533, label %534, label %541, !prof !191

534:                                              ; preds = %526
  %535 = load ptr, ptr %3, align 8, !tbaa !124
  %536 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %535)
  %537 = load i32, ptr %26, align 8, !tbaa !132
  %538 = load ptr, ptr %3, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %536, i32 noundef %537, ptr noundef %538)
          to label %561 unwind label %539, !prof !192

539:                                              ; preds = %534
  %540 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %536, ptr noundef %535) #15
  br label %867

541:                                              ; preds = %526
  %542 = load i32, ptr %529, align 8, !tbaa !193
  %543 = icmp ult i32 %542, 65
  br i1 %543, label %550, label %544, !prof !194

544:                                              ; preds = %541
  %545 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %529, i64 0, i32 1
  %546 = load i32, ptr %545, align 4, !tbaa !195
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %561, label %548

548:                                              ; preds = %544
  %549 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %529, i64 0, i32 4
  br label %553

550:                                              ; preds = %541
  %551 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %529, i64 0, i32 2
  store i32 0, ptr %551, align 8, !tbaa !196
  %552 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %529, i64 0, i32 3
  store i32 0, ptr %552, align 4, !tbaa !197
  br label %561

553:                                              ; preds = %548, %553
  %554 = phi i64 [ 0, %548 ], [ %557, %553 ]
  %555 = load ptr, ptr %549, align 8, !tbaa !110
  %556 = getelementptr inbounds i8, ptr %555, i64 %554
  store i8 0, ptr %556, align 1, !tbaa !198
  %557 = add nuw nsw i64 %554, 1
  %558 = load i32, ptr %545, align 4, !tbaa !195
  %559 = zext i32 %558 to i64
  %560 = icmp ult i64 %557, %559
  br i1 %560, label %553, label %561, !llvm.loop !199

561:                                              ; preds = %553, %544, %550, %534
  %562 = phi ptr [ %536, %534 ], [ %529, %550 ], [ %529, %544 ], [ %529, %553 ]
  %563 = zext i32 %528 to i64
  %564 = getelementptr inbounds i32, ptr %289, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !126
  %566 = add i32 %528, 1
  %567 = icmp eq i32 %565, -1
  br i1 %567, label %616, label %568, !prof !200

568:                                              ; preds = %561, %610
  %569 = phi i32 [ %614, %610 ], [ %566, %561 ]
  %570 = phi i32 [ %613, %610 ], [ %565, %561 ]
  %571 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %508, i32 noundef %570)
  br i1 %571, label %572, label %610, !prof !201

572:                                              ; preds = %568
  %573 = load ptr, ptr %57, align 8, !tbaa !136
  %574 = sext i32 %570 to i64
  %575 = getelementptr inbounds ptr, ptr %573, i64 %574
  %576 = load ptr, ptr %575, align 8, !tbaa !138
  %577 = load i32, ptr %562, align 8, !tbaa !193
  %578 = icmp ult i32 %577, 65
  br i1 %578, label %586, label %579, !prof !202

579:                                              ; preds = %572
  %580 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 1
  %581 = load i32, ptr %580, align 4, !tbaa !195
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %610, label %583

583:                                              ; preds = %579
  %584 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 4
  %585 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %576, i64 0, i32 4
  br label %597

586:                                              ; preds = %572
  %587 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 2
  %588 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 3
  %589 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %576, i64 0, i32 2
  %590 = load i32, ptr %589, align 8, !tbaa !196
  %591 = load i32, ptr %587, align 8, !tbaa !196
  %592 = or i32 %591, %590
  store i32 %592, ptr %587, align 8, !tbaa !196
  %593 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %576, i64 0, i32 3
  %594 = load i32, ptr %593, align 4, !tbaa !197
  %595 = load i32, ptr %588, align 4, !tbaa !197
  %596 = or i32 %595, %594
  store i32 %596, ptr %588, align 4, !tbaa !197
  br label %610

597:                                              ; preds = %583, %597
  %598 = phi i64 [ 0, %583 ], [ %606, %597 ]
  %599 = load ptr, ptr %585, align 8, !tbaa !110
  %600 = getelementptr inbounds i8, ptr %599, i64 %598
  %601 = load i8, ptr %600, align 1, !tbaa !198
  %602 = load ptr, ptr %584, align 8, !tbaa !110
  %603 = getelementptr inbounds i8, ptr %602, i64 %598
  %604 = load i8, ptr %603, align 1, !tbaa !198
  %605 = or i8 %604, %601
  store i8 %605, ptr %603, align 1, !tbaa !198
  %606 = add nuw nsw i64 %598, 1
  %607 = load i32, ptr %580, align 4, !tbaa !195
  %608 = zext i32 %607 to i64
  %609 = icmp ult i64 %606, %608
  br i1 %609, label %597, label %610, !llvm.loop !203

610:                                              ; preds = %597, %579, %586, %568
  %611 = zext i32 %569 to i64
  %612 = getelementptr inbounds i32, ptr %289, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !126
  %614 = add i32 %569, 1
  %615 = icmp eq i32 %613, -1
  br i1 %615, label %616, label %568, !prof !204, !llvm.loop !205

616:                                              ; preds = %610, %561
  %617 = phi i32 [ %566, %561 ], [ %614, %610 ]
  %618 = load i32, ptr %562, align 8, !tbaa !193
  %619 = icmp ult i32 %618, 65
  br i1 %619, label %627, label %620, !prof !206

620:                                              ; preds = %616
  %621 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 1
  %622 = load i32, ptr %621, align 4, !tbaa !195
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %644, label %624

624:                                              ; preds = %620
  %625 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 4
  %626 = load ptr, ptr %625, align 8, !tbaa !110
  br label %638

627:                                              ; preds = %616
  %628 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 2
  %629 = load i32, ptr %628, align 8, !tbaa !196
  %630 = icmp eq i32 %629, 0
  %631 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %562, i64 0, i32 3
  %632 = load i32, ptr %631, align 4
  %633 = icmp eq i32 %632, 0
  %634 = select i1 %630, i1 %633, i1 false, !prof !207
  br label %644

635:                                              ; preds = %638
  %636 = add nuw i32 %639, 1
  %637 = icmp eq i32 %636, %622
  br i1 %637, label %739, label %638, !llvm.loop !208

638:                                              ; preds = %624, %635
  %639 = phi i32 [ 0, %624 ], [ %636, %635 ]
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i8, ptr %626, i64 %640
  %642 = load i8, ptr %641, align 1, !tbaa !198
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %635, label %646

644:                                              ; preds = %620, %627
  %645 = phi i1 [ %634, %627 ], [ %623, %620 ]
  br i1 %645, label %739, label %646, !prof !207

646:                                              ; preds = %638, %644
  %647 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %481, ptr noundef nonnull %562)
  %648 = icmp eq ptr %647, null
  br i1 %648, label %651, label %649, !prof !209

649:                                              ; preds = %646
  %650 = load i32, ptr %647, align 4, !tbaa !210
  br label %651

651:                                              ; preds = %646, %649
  %652 = phi i32 [ %650, %649 ], [ %530, %646 ]
  %653 = icmp eq i32 %652, %530
  br i1 %653, label %654, label %680, !prof !209

654:                                              ; preds = %651
  %655 = zext i32 %530 to i64
  %656 = getelementptr inbounds ptr, ptr %531, i64 %655
  store ptr %562, ptr %656, align 8, !tbaa !138
  %657 = load ptr, ptr %3, align 8, !tbaa !124
  %658 = load i32, ptr %109, align 8, !tbaa !147
  %659 = zext i32 %658 to i64
  %660 = shl nuw nsw i64 %659, 2
  %661 = load ptr, ptr %657, align 8, !tbaa !91
  %662 = getelementptr inbounds ptr, ptr %661, i64 2
  %663 = load ptr, ptr %662, align 8
  %664 = tail call noundef ptr %663(ptr noundef nonnull align 8 dereferenceable(8) %657, i64 noundef %660), !prof !212
  %665 = load i32, ptr %109, align 8, !tbaa !147
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %674, label %667, !prof !213

667:                                              ; preds = %654, %667
  %668 = phi i64 [ %670, %667 ], [ 0, %654 ]
  %669 = getelementptr inbounds i32, ptr %664, i64 %668
  store i32 %493, ptr %669, align 4, !tbaa !126
  %670 = add nuw nsw i64 %668, 1
  %671 = load i32, ptr %109, align 8, !tbaa !147
  %672 = zext i32 %671 to i64
  %673 = icmp ult i64 %670, %672
  br i1 %673, label %667, label %674, !prof !214, !llvm.loop !178

674:                                              ; preds = %667, %654
  %675 = load ptr, ptr %315, align 8, !tbaa !167
  %676 = getelementptr inbounds ptr, ptr %675, i64 %655
  store ptr %664, ptr %676, align 8, !tbaa !138
  %677 = load ptr, ptr %3, align 8, !tbaa !124
  %678 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %677)
  store i32 %530, ptr %678, align 4, !tbaa !210
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %481, ptr noundef nonnull %562, ptr noundef nonnull %678)
  %679 = add i32 %530, 1
  br label %680

680:                                              ; preds = %674, %651
  %681 = phi i32 [ %679, %674 ], [ %530, %651 ]
  %682 = phi ptr [ null, %674 ], [ %562, %651 ]
  %683 = getelementptr inbounds i32, ptr %511, i64 %527
  store i32 %652, ptr %683, align 4, !tbaa !126
  %684 = icmp eq i32 %681, %532
  br i1 %684, label %685, label %739, !prof !215

685:                                              ; preds = %680
  %686 = uitofp i32 %532 to double
  %687 = fmul double %686, 1.500000e+00
  %688 = fptoui double %687 to i32
  %689 = load ptr, ptr %3, align 8, !tbaa !124
  %690 = zext i32 %688 to i64
  %691 = shl nuw nsw i64 %690, 3
  %692 = load ptr, ptr %689, align 8, !tbaa !91
  %693 = getelementptr inbounds ptr, ptr %692, i64 2
  %694 = load ptr, ptr %693, align 8
  %695 = tail call noundef ptr %694(ptr noundef nonnull align 8 dereferenceable(8) %689, i64 noundef %691)
  %696 = load ptr, ptr %3, align 8, !tbaa !124
  %697 = load ptr, ptr %696, align 8, !tbaa !91
  %698 = getelementptr inbounds ptr, ptr %697, i64 2
  %699 = load ptr, ptr %698, align 8
  %700 = tail call noundef ptr %699(ptr noundef nonnull align 8 dereferenceable(8) %696, i64 noundef %690)
  %701 = load ptr, ptr %3, align 8, !tbaa !124
  %702 = load ptr, ptr %701, align 8, !tbaa !91
  %703 = getelementptr inbounds ptr, ptr %702, i64 2
  %704 = load ptr, ptr %703, align 8
  %705 = tail call noundef ptr %704(ptr noundef nonnull align 8 dereferenceable(8) %701, i64 noundef %691)
  %706 = icmp eq i32 %532, 0
  br i1 %706, label %709, label %707

707:                                              ; preds = %685
  %708 = zext i32 %532 to i64
  br label %724

709:                                              ; preds = %724, %685
  %710 = load ptr, ptr %3, align 8, !tbaa !124
  %711 = load ptr, ptr %710, align 8, !tbaa !91
  %712 = getelementptr inbounds ptr, ptr %711, i64 3
  %713 = load ptr, ptr %712, align 8
  tail call void %713(ptr noundef nonnull align 8 dereferenceable(8) %710, ptr noundef %531)
  %714 = load ptr, ptr %3, align 8, !tbaa !124
  %715 = load ptr, ptr %309, align 8, !tbaa !166
  %716 = load ptr, ptr %714, align 8, !tbaa !91
  %717 = getelementptr inbounds ptr, ptr %716, i64 3
  %718 = load ptr, ptr %717, align 8
  tail call void %718(ptr noundef nonnull align 8 dereferenceable(8) %714, ptr noundef %715)
  %719 = load ptr, ptr %3, align 8, !tbaa !124
  %720 = load ptr, ptr %315, align 8, !tbaa !167
  %721 = load ptr, ptr %719, align 8, !tbaa !91
  %722 = getelementptr inbounds ptr, ptr %721, i64 3
  %723 = load ptr, ptr %722, align 8
  tail call void %723(ptr noundef nonnull align 8 dereferenceable(8) %719, ptr noundef %720)
  store ptr %700, ptr %309, align 8, !tbaa !166
  store ptr %705, ptr %315, align 8, !tbaa !167
  br label %739

724:                                              ; preds = %707, %724
  %725 = phi i64 [ 0, %707 ], [ %737, %724 ]
  %726 = getelementptr inbounds ptr, ptr %531, i64 %725
  %727 = load ptr, ptr %726, align 8, !tbaa !138
  %728 = getelementptr inbounds ptr, ptr %695, i64 %725
  store ptr %727, ptr %728, align 8, !tbaa !138
  %729 = load ptr, ptr %309, align 8, !tbaa !166
  %730 = getelementptr inbounds i8, ptr %729, i64 %725
  %731 = load i8, ptr %730, align 1, !tbaa !189, !range !102, !noundef !103
  %732 = getelementptr inbounds i8, ptr %700, i64 %725
  store i8 %731, ptr %732, align 1, !tbaa !189
  %733 = load ptr, ptr %315, align 8, !tbaa !167
  %734 = getelementptr inbounds ptr, ptr %733, i64 %725
  %735 = load ptr, ptr %734, align 8, !tbaa !138
  %736 = getelementptr inbounds ptr, ptr %705, i64 %725
  store ptr %735, ptr %736, align 8, !tbaa !138
  %737 = add nuw nsw i64 %725, 1
  %738 = icmp eq i64 %737, %708
  br i1 %738, label %709, label %724, !llvm.loop !216

739:                                              ; preds = %635, %680, %709, %644
  %740 = phi i32 [ %532, %644 ], [ %688, %709 ], [ %532, %680 ], [ %532, %635 ]
  %741 = phi ptr [ %531, %644 ], [ %695, %709 ], [ %531, %680 ], [ %531, %635 ]
  %742 = phi i32 [ %530, %644 ], [ %681, %709 ], [ %681, %680 ], [ %530, %635 ]
  %743 = phi ptr [ %562, %644 ], [ %682, %709 ], [ %682, %680 ], [ %562, %635 ]
  %744 = add nuw nsw i64 %527, 1
  %745 = load i32, ptr %109, align 8, !tbaa !147
  %746 = zext i32 %745 to i64
  %747 = icmp ult i64 %744, %746
  br i1 %747, label %526, label %494, !prof !217, !llvm.loop !218

748:                                              ; preds = %494
  %749 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  store i32 %497, ptr %749, align 8, !tbaa !219
  %750 = icmp eq ptr %498, null
  br i1 %750, label %765, label %751, !prof !106

751:                                              ; preds = %748
  %752 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %498, i64 0, i32 4
  %753 = load ptr, ptr %752, align 8, !tbaa !110
  %754 = icmp eq ptr %753, null
  br i1 %754, label %764, label %755, !prof !125

755:                                              ; preds = %751
  %756 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %498, i64 0, i32 5
  %757 = load ptr, ptr %756, align 8, !tbaa !113
  %758 = load ptr, ptr %757, align 8, !tbaa !91
  %759 = getelementptr inbounds ptr, ptr %758, i64 3
  %760 = load ptr, ptr %759, align 8
  invoke void %760(ptr noundef nonnull align 8 dereferenceable(8) %757, ptr noundef nonnull %753)
          to label %764 unwind label %761

761:                                              ; preds = %755
  %762 = landingpad { ptr, i32 }
          catch ptr null
  %763 = extractvalue { ptr, i32 } %762, 0
  tail call void @__clang_call_terminate(ptr %763) #14
  unreachable

764:                                              ; preds = %751, %755
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %498) #15
  br label %765

765:                                              ; preds = %764, %748
  %766 = load ptr, ptr %25, align 8, !tbaa !131
  %767 = icmp eq ptr %766, null
  br i1 %767, label %772, label %768, !prof !106

768:                                              ; preds = %765
  %769 = load ptr, ptr %766, align 8, !tbaa !91
  %770 = getelementptr inbounds ptr, ptr %769, i64 1
  %771 = load ptr, ptr %770, align 8
  tail call void %771(ptr noundef nonnull align 8 dereferenceable(44) %766) #15, !prof !220
  br label %772

772:                                              ; preds = %768, %765
  %773 = load i32, ptr %26, align 8, !tbaa !132
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %800, label %775, !prof !137

775:                                              ; preds = %772, %795
  %776 = phi i64 [ %796, %795 ], [ 0, %772 ]
  %777 = load ptr, ptr %57, align 8, !tbaa !136
  %778 = getelementptr inbounds ptr, ptr %777, i64 %776
  %779 = load ptr, ptr %778, align 8, !tbaa !138
  %780 = icmp eq ptr %779, null
  br i1 %780, label %795, label %781, !prof !149

781:                                              ; preds = %775
  %782 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %779, i64 0, i32 4
  %783 = load ptr, ptr %782, align 8, !tbaa !110
  %784 = icmp eq ptr %783, null
  br i1 %784, label %794, label %785, !prof !112

785:                                              ; preds = %781
  %786 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %779, i64 0, i32 5
  %787 = load ptr, ptr %786, align 8, !tbaa !113
  %788 = load ptr, ptr %787, align 8, !tbaa !91
  %789 = getelementptr inbounds ptr, ptr %788, i64 3
  %790 = load ptr, ptr %789, align 8
  invoke void %790(ptr noundef nonnull align 8 dereferenceable(8) %787, ptr noundef nonnull %783)
          to label %794 unwind label %791

791:                                              ; preds = %785
  %792 = landingpad { ptr, i32 }
          catch ptr null
  %793 = extractvalue { ptr, i32 } %792, 0
  tail call void @__clang_call_terminate(ptr %793) #14
  unreachable

794:                                              ; preds = %781, %785
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %779) #15
  br label %795

795:                                              ; preds = %775, %794
  %796 = add nuw nsw i64 %776, 1
  %797 = load i32, ptr %26, align 8, !tbaa !132
  %798 = zext i32 %797 to i64
  %799 = icmp ult i64 %796, %798
  br i1 %799, label %775, label %800, !prof !139, !llvm.loop !221

800:                                              ; preds = %795, %772
  %801 = load ptr, ptr %3, align 8, !tbaa !124
  %802 = load ptr, ptr %57, align 8, !tbaa !136
  %803 = load ptr, ptr %801, align 8, !tbaa !91
  %804 = getelementptr inbounds ptr, ptr %803, i64 3
  %805 = load ptr, ptr %804, align 8
  tail call void %805(ptr noundef nonnull align 8 dereferenceable(8) %801, ptr noundef %802), !prof !222
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %481)
          to label %809 unwind label %806, !prof !125

806:                                              ; preds = %800
  %807 = landingpad { ptr, i32 }
          catch ptr null
  %808 = extractvalue { ptr, i32 } %807, 0
  tail call void @__clang_call_terminate(ptr %808) #14
  unreachable

809:                                              ; preds = %800
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %481) #15
  %810 = icmp eq i32 %497, 0
  br i1 %810, label %835, label %811, !prof !137

811:                                              ; preds = %809
  %812 = zext i32 %497 to i64
  br label %813

813:                                              ; preds = %811, %832
  %814 = phi i64 [ 0, %811 ], [ %833, %832 ]
  %815 = getelementptr inbounds ptr, ptr %496, i64 %814
  %816 = load ptr, ptr %815, align 8, !tbaa !138
  %817 = icmp eq ptr %816, null
  br i1 %817, label %832, label %818, !prof !223

818:                                              ; preds = %813
  %819 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %816, i64 0, i32 4
  %820 = load ptr, ptr %819, align 8, !tbaa !110
  %821 = icmp eq ptr %820, null
  br i1 %821, label %831, label %822, !prof !192

822:                                              ; preds = %818
  %823 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %816, i64 0, i32 5
  %824 = load ptr, ptr %823, align 8, !tbaa !113
  %825 = load ptr, ptr %824, align 8, !tbaa !91
  %826 = getelementptr inbounds ptr, ptr %825, i64 3
  %827 = load ptr, ptr %826, align 8
  invoke void %827(ptr noundef nonnull align 8 dereferenceable(8) %824, ptr noundef nonnull %820)
          to label %831 unwind label %828

828:                                              ; preds = %822
  %829 = landingpad { ptr, i32 }
          catch ptr null
  %830 = extractvalue { ptr, i32 } %829, 0
  tail call void @__clang_call_terminate(ptr %830) #14
  unreachable

831:                                              ; preds = %818, %822
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %816) #15
  br label %832

832:                                              ; preds = %813, %831
  %833 = add nuw nsw i64 %814, 1
  %834 = icmp eq i64 %833, %812
  br i1 %834, label %835, label %813, !prof !224, !llvm.loop !225

835:                                              ; preds = %832, %809
  %836 = load ptr, ptr %3, align 8, !tbaa !124
  %837 = load ptr, ptr %836, align 8, !tbaa !91
  %838 = getelementptr inbounds ptr, ptr %837, i64 3
  %839 = load ptr, ptr %838, align 8
  tail call void %839(ptr noundef nonnull align 8 dereferenceable(8) %836, ptr noundef %496), !prof !222
  %840 = load i32, ptr %26, align 8, !tbaa !132
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %857, label %842, !prof !137

842:                                              ; preds = %835, %852
  %843 = phi i64 [ %853, %852 ], [ 0, %835 ]
  %844 = load ptr, ptr %37, align 8, !tbaa !134
  %845 = getelementptr inbounds ptr, ptr %844, i64 %843
  %846 = load ptr, ptr %845, align 8, !tbaa !138
  %847 = icmp eq ptr %846, null
  br i1 %847, label %852, label %848, !prof !149

848:                                              ; preds = %842
  %849 = load ptr, ptr %846, align 8, !tbaa !91
  %850 = getelementptr inbounds ptr, ptr %849, i64 1
  %851 = load ptr, ptr %850, align 8
  tail call void %851(ptr noundef nonnull align 8 dereferenceable(61) %846) #15, !prof !226
  br label %852

852:                                              ; preds = %842, %848
  %853 = add nuw nsw i64 %843, 1
  %854 = load i32, ptr %26, align 8, !tbaa !132
  %855 = zext i32 %854 to i64
  %856 = icmp ult i64 %853, %855
  br i1 %856, label %842, label %857, !prof !139, !llvm.loop !227

857:                                              ; preds = %852, %835
  %858 = load ptr, ptr %3, align 8, !tbaa !124
  %859 = load ptr, ptr %37, align 8, !tbaa !134
  %860 = load ptr, ptr %858, align 8, !tbaa !91
  %861 = getelementptr inbounds ptr, ptr %860, i64 3
  %862 = load ptr, ptr %861, align 8
  tail call void %862(ptr noundef nonnull align 8 dereferenceable(8) %858, ptr noundef %859), !prof !222
  %863 = load ptr, ptr %3, align 8, !tbaa !124
  %864 = load ptr, ptr %863, align 8, !tbaa !91
  %865 = getelementptr inbounds ptr, ptr %864, i64 3
  %866 = load ptr, ptr %865, align 8
  tail call void %866(ptr noundef nonnull align 8 dereferenceable(8) %863, ptr noundef %289), !prof !222
  ret void

867:                                              ; preds = %79, %81, %142, %140, %524, %539, %522, %77
  %868 = phi { ptr, i32 } [ %78, %77 ], [ %82, %81 ], [ %80, %79 ], [ %143, %142 ], [ %141, %140 ], [ %523, %522 ], [ %540, %539 ], [ %525, %524 ]
  resume { ptr, i32 } %868
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %6 = zext i1 %1 to i8
  %7 = zext i1 %3 to i8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715DFAContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !118
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %8, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  store i8 %6, ptr %12, align 4, !tbaa !121
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  store i8 %7, ptr %13, align 1, !tbaa !122
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  store ptr null, ptr %14, align 8, !tbaa !123
  %15 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  store ptr %4, ptr %15, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715DFAContentModelE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = load ptr, ptr %3, align 8, !tbaa !91
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %86, !prof !222

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !219
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13, !prof !137

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %24
  %16 = phi i64 [ 0, %13 ], [ %25, %24 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = load ptr, ptr %14, align 8, !tbaa !167
  %19 = getelementptr inbounds ptr, ptr %18, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = load ptr, ptr %17, align 8, !tbaa !91
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
          to label %24 unwind label %84, !prof !228

24:                                               ; preds = %15
  %25 = add nuw nsw i64 %16, 1
  %26 = load i32, ptr %10, align 8, !tbaa !219
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %15, label %29, !prof !229, !llvm.loop !230

29:                                               ; preds = %24, %9
  %30 = load ptr, ptr %2, align 8, !tbaa !124
  %31 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !167
  %33 = load ptr, ptr %30, align 8, !tbaa !91
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %36 unwind label %86, !prof !222

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !132
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %57, label %40, !prof !137

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  br label %42

42:                                               ; preds = %40, %52
  %43 = phi i64 [ 0, %40 ], [ %53, %52 ]
  %44 = load ptr, ptr %41, align 8, !tbaa !145
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !138
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !149

48:                                               ; preds = %42
  %49 = load ptr, ptr %46, align 8, !tbaa !91
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(56) %46) #15, !prof !231
  br label %52

52:                                               ; preds = %42, %48
  %53 = add nuw nsw i64 %43, 1
  %54 = load i32, ptr %37, align 8, !tbaa !132
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %42, label %57, !prof !139, !llvm.loop !232

57:                                               ; preds = %52, %36
  %58 = load ptr, ptr %2, align 8, !tbaa !124
  %59 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !145
  %61 = load ptr, ptr %58, align 8, !tbaa !91
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %60)
          to label %64 unwind label %86, !prof !222

64:                                               ; preds = %57
  %65 = load ptr, ptr %2, align 8, !tbaa !124
  %66 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !146
  %68 = load ptr, ptr %65, align 8, !tbaa !91
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %67)
          to label %71 unwind label %86, !prof !222

71:                                               ; preds = %64
  %72 = load ptr, ptr %2, align 8, !tbaa !124
  %73 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !135
  %75 = load ptr, ptr %72, align 8, !tbaa !91
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %74)
          to label %78 unwind label %86, !prof !222

78:                                               ; preds = %71
  %79 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %80 = load ptr, ptr %79, align 8, !tbaa !123
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82, !prof !125

82:                                               ; preds = %78
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %80) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %80) #15
  br label %83

83:                                               ; preds = %82, %78
  ret void

84:                                               ; preds = %15
  %85 = landingpad { ptr, i32 }
          catch ptr null
  br label %88

86:                                               ; preds = %1, %29, %57, %64, %71
  %87 = landingpad { ptr, i32 }
          catch ptr null
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi { ptr, i32 } [ %85, %84 ], [ %87, %86 ]
  %90 = extractvalue { ptr, i32 } %89, 0
  tail call void @__clang_call_terminate(ptr %90) #14
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !89 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_725ContentLeafNameTypeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModelD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 align 2 !prof !117 {
  tail call void @_ZN11xercesc_2_715DFAContentModelD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715DFAContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3) unnamed_addr #4 align 2 !prof !233 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %17, label %6, !prof !234

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %11 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %15 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %16 = zext i32 %2 to i64
  br label %22

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 4
  %19 = load i8, ptr %18, align 4, !tbaa !144, !range !102, !noundef !103
  %20 = sub nsw i8 0, %19
  %21 = sext i8 %20 to i32
  br label %232

22:                                               ; preds = %6, %220
  %23 = phi i64 [ 0, %6 ], [ %221, %220 ]
  %24 = phi i32 [ undef, %6 ], [ %219, %220 ]
  %25 = phi i32 [ 0, %6 ], [ %218, %220 ]
  %26 = phi i32 [ 0, %6 ], [ %216, %220 ]
  %27 = getelementptr inbounds ptr, ptr %1, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = load i8, ptr %7, align 4, !tbaa !121, !range !102, !noundef !103
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31, !prof !235

31:                                               ; preds = %22
  %32 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %28)
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %32, %31 ], [ null, %22 ]
  %35 = load i8, ptr %8, align 1, !tbaa !122, !range !102, !noundef !103
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37, !prof !236

37:                                               ; preds = %33
  %38 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %39 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %28, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !155
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %215, label %42, !prof !237

42:                                               ; preds = %37, %33
  %43 = load i32, ptr %9, align 8, !tbaa !147
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %202, label %45, !prof !238

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %28, i64 0, i32 4
  %47 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %28, i64 0, i32 6
  %48 = zext i32 %25 to i64
  br label %49

49:                                               ; preds = %45, %194
  %50 = phi i64 [ 0, %45 ], [ %195, %194 ]
  %51 = phi i32 [ %26, %45 ], [ %191, %194 ]
  %52 = load ptr, ptr %10, align 8, !tbaa !145
  %53 = getelementptr inbounds ptr, ptr %52, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !138
  %55 = load i8, ptr %7, align 4, !tbaa !121, !range !102, !noundef !103
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %94, label %57, !prof !239

57:                                               ; preds = %49
  %58 = icmp eq ptr %34, null
  %59 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %54)
  %60 = icmp eq ptr %59, null
  %61 = or i1 %58, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i16, ptr %59, align 2, !tbaa !152
  %64 = load i16, ptr %34, align 2, !tbaa !152
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %74, label %188

66:                                               ; preds = %57
  br i1 %60, label %70, label %67

67:                                               ; preds = %66
  %68 = load i16, ptr %59, align 2, !tbaa !152
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %188

70:                                               ; preds = %67, %66
  br i1 %58, label %85, label %71

71:                                               ; preds = %70
  %72 = load i16, ptr %34, align 2, !tbaa !152
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %85, label %188

74:                                               ; preds = %62, %79
  %75 = phi i16 [ %82, %79 ], [ %63, %62 ]
  %76 = phi ptr [ %81, %79 ], [ %34, %62 ]
  %77 = phi ptr [ %80, %79 ], [ %59, %62 ]
  %78 = icmp eq i16 %75, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds i16, ptr %77, i64 1
  %81 = getelementptr inbounds i16, ptr %76, i64 1
  %82 = load i16, ptr %80, align 2, !tbaa !152
  %83 = load i16, ptr %81, align 2, !tbaa !152
  %84 = icmp eq i16 %82, %83
  br i1 %84, label %74, label %188, !llvm.loop !154

85:                                               ; preds = %74, %71, %70
  %86 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %87 = zext i32 %25 to i64
  %88 = load ptr, ptr %86, align 8, !tbaa !167
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds i32, ptr %90, i64 %50
  %92 = load i32, ptr %91, align 4, !tbaa !126
  %93 = icmp eq i32 %92, %11
  br i1 %93, label %188, label %190

94:                                               ; preds = %49
  %95 = load ptr, ptr %12, align 8, !tbaa !146
  %96 = getelementptr inbounds i32, ptr %95, i64 %50
  %97 = load i32, ptr %96, align 4, !tbaa !148
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %141, !prof !239

99:                                               ; preds = %94
  %100 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %54, i64 0, i32 4
  %101 = load i32, ptr %100, align 4, !tbaa !155
  %102 = load i32, ptr %46, align 4, !tbaa !155
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %182, !prof !239

104:                                              ; preds = %99
  %105 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %54, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !159
  %107 = load ptr, ptr %47, align 8, !tbaa !159
  %108 = icmp eq ptr %106, null
  %109 = icmp eq ptr %107, null
  %110 = or i1 %108, %109
  br i1 %110, label %115, label %111, !prof !240

111:                                              ; preds = %104
  %112 = load i16, ptr %106, align 2, !tbaa !152
  %113 = load i16, ptr %107, align 2, !tbaa !152
  %114 = icmp eq i16 %112, %113
  br i1 %114, label %123, label %182, !prof !241

115:                                              ; preds = %104
  br i1 %108, label %119, label %116

116:                                              ; preds = %115
  %117 = load i16, ptr %106, align 2, !tbaa !152
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %182

119:                                              ; preds = %116, %115
  br i1 %109, label %134, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %107, align 2, !tbaa !152
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %134, label %182

123:                                              ; preds = %111, %128
  %124 = phi i16 [ %131, %128 ], [ %112, %111 ]
  %125 = phi ptr [ %130, %128 ], [ %107, %111 ]
  %126 = phi ptr [ %129, %128 ], [ %106, %111 ]
  %127 = icmp eq i16 %124, 0
  br i1 %127, label %134, label %128, !prof !242

128:                                              ; preds = %123
  %129 = getelementptr inbounds i16, ptr %126, i64 1
  %130 = getelementptr inbounds i16, ptr %125, i64 1
  %131 = load i16, ptr %129, align 2, !tbaa !152
  %132 = load i16, ptr %130, align 2, !tbaa !152
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %123, label %182, !prof !243, !llvm.loop !154

134:                                              ; preds = %123, %120, %119
  %135 = load ptr, ptr %13, align 8, !tbaa !167
  %136 = getelementptr inbounds ptr, ptr %135, i64 %48
  %137 = load ptr, ptr %136, align 8, !tbaa !138
  %138 = getelementptr inbounds i32, ptr %137, i64 %50
  %139 = load i32, ptr %138, align 4, !tbaa !126
  %140 = icmp eq i32 %139, %11
  br i1 %140, label %182, label %184, !prof !244

141:                                              ; preds = %94
  %142 = and i32 %97, 15
  switch i32 %142, label %182 [
    i32 6, label %143
    i32 8, label %152
    i32 7, label %167
  ]

143:                                              ; preds = %141
  %144 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %145 = zext i32 %25 to i64
  %146 = load ptr, ptr %144, align 8, !tbaa !167
  %147 = getelementptr inbounds ptr, ptr %146, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !138
  %149 = getelementptr inbounds i32, ptr %148, i64 %50
  %150 = load i32, ptr %149, align 4, !tbaa !126
  %151 = icmp eq i32 %150, %11
  br i1 %151, label %182, label %184

152:                                              ; preds = %141
  %153 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %28, i64 0, i32 4
  %154 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %54, i64 0, i32 4
  %155 = load i32, ptr %154, align 4, !tbaa !155
  %156 = load i32, ptr %153, align 4, !tbaa !155
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %182

158:                                              ; preds = %152
  %159 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %160 = zext i32 %25 to i64
  %161 = load ptr, ptr %159, align 8, !tbaa !167
  %162 = getelementptr inbounds ptr, ptr %161, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !138
  %164 = getelementptr inbounds i32, ptr %163, i64 %50
  %165 = load i32, ptr %164, align 4, !tbaa !126
  %166 = icmp eq i32 %165, %11
  br i1 %166, label %182, label %184

167:                                              ; preds = %141
  %168 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %28, i64 0, i32 4
  %169 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %54, i64 0, i32 4
  %170 = load i32, ptr %169, align 4, !tbaa !155
  %171 = load i32, ptr %168, align 4, !tbaa !155
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %182, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %175 = zext i32 %25 to i64
  %176 = load ptr, ptr %174, align 8, !tbaa !167
  %177 = getelementptr inbounds ptr, ptr %176, i64 %175
  %178 = load ptr, ptr %177, align 8, !tbaa !138
  %179 = getelementptr inbounds i32, ptr %178, i64 %50
  %180 = load i32, ptr %179, align 4, !tbaa !126
  %181 = icmp eq i32 %180, %11
  br i1 %181, label %182, label %184

182:                                              ; preds = %128, %111, %120, %116, %141, %143, %173, %167, %152, %158, %99, %134
  %183 = phi i32 [ %139, %134 ], [ %51, %99 ], [ %150, %143 ], [ %165, %158 ], [ %51, %152 ], [ %180, %173 ], [ %51, %167 ], [ %51, %141 ], [ %51, %116 ], [ %51, %120 ], [ %51, %111 ], [ %51, %128 ]
  br label %184

184:                                              ; preds = %173, %158, %134, %143, %182
  %185 = phi i32 [ %183, %182 ], [ %150, %143 ], [ %139, %134 ], [ %165, %158 ], [ %180, %173 ]
  %186 = phi i1 [ true, %182 ], [ false, %143 ], [ false, %134 ], [ false, %158 ], [ false, %173 ]
  %187 = phi i32 [ 0, %182 ], [ 5, %143 ], [ 5, %134 ], [ 5, %158 ], [ 5, %173 ]
  br i1 %186, label %188, label %190, !prof !245

188:                                              ; preds = %79, %62, %71, %67, %184, %85
  %189 = phi i32 [ %92, %85 ], [ %185, %184 ], [ %51, %67 ], [ %51, %71 ], [ %51, %62 ], [ %51, %79 ]
  br label %190

190:                                              ; preds = %85, %184, %188
  %191 = phi i32 [ %189, %188 ], [ %185, %184 ], [ %92, %85 ]
  %192 = phi i32 [ 0, %188 ], [ %187, %184 ], [ 5, %85 ]
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199, !prof !245

194:                                              ; preds = %190
  %195 = add nuw nsw i64 %50, 1
  %196 = load i32, ptr %9, align 8, !tbaa !147
  %197 = zext i32 %196 to i64
  %198 = icmp ult i64 %195, %197
  br i1 %198, label %49, label %199, !prof !239, !llvm.loop !246

199:                                              ; preds = %190, %194
  %200 = phi i64 [ %195, %194 ], [ %50, %190 ]
  %201 = trunc i64 %200 to i32
  br label %202

202:                                              ; preds = %199, %42
  %203 = phi i32 [ 0, %42 ], [ %201, %199 ]
  %204 = phi i32 [ %26, %42 ], [ %191, %199 ]
  %205 = icmp eq i32 %204, %15
  %206 = trunc i64 %23 to i32
  br i1 %205, label %215, label %207, !prof !244

207:                                              ; preds = %202
  %208 = load i32, ptr %14, align 8, !tbaa !147
  %209 = icmp eq i32 %203, %208
  %210 = select i1 %209, i32 %204, i32 0, !prof !244
  %211 = zext i1 %209 to i32
  %212 = select i1 %209, i32 %25, i32 %204, !prof !244
  %213 = trunc i64 %23 to i32
  %214 = select i1 %209, i32 %213, i32 %24, !prof !244
  br label %215

215:                                              ; preds = %202, %207, %37
  %216 = phi i32 [ %26, %37 ], [ %204, %202 ], [ %210, %207 ]
  %217 = phi i32 [ 4, %37 ], [ 1, %202 ], [ %211, %207 ]
  %218 = phi i32 [ %25, %37 ], [ %25, %202 ], [ %212, %207 ]
  %219 = phi i32 [ %24, %37 ], [ %206, %202 ], [ %214, %207 ]
  switch i32 %217, label %232 [
    i32 0, label %220
    i32 4, label %220
  ], !prof !247

220:                                              ; preds = %215, %215
  %221 = add nuw nsw i64 %23, 1
  %222 = icmp eq i64 %221, %16
  br i1 %222, label %223, label %22, !prof !248, !llvm.loop !249

223:                                              ; preds = %220
  %224 = trunc i64 %221 to i32
  %225 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !166
  %227 = zext i32 %218 to i64
  %228 = getelementptr inbounds i8, ptr %226, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !189, !range !102, !noundef !103
  %230 = icmp eq i8 %229, 0
  %231 = select i1 %230, i32 %224, i32 -1, !prof !250
  br label %232

232:                                              ; preds = %215, %223, %17
  %233 = phi i32 [ %21, %17 ], [ %231, %223 ], [ %219, %215 ]
  ret i32 %233
}

declare noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715DFAContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  store ptr %4, ptr %7, align 8, !tbaa !251
  %8 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %7, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !253
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  %12 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %17 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %18 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %21 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %22 = zext i32 %2 to i64
  br label %28

23:                                               ; preds = %6
  %24 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 4
  %25 = load i8, ptr %24, align 4, !tbaa !144, !range !102, !noundef !103
  %26 = sub nsw i8 0, %25
  %27 = sext i8 %26 to i32
  br label %146

28:                                               ; preds = %10, %134
  %29 = phi i64 [ 0, %10 ], [ %135, %134 ]
  %30 = phi i32 [ undef, %10 ], [ %133, %134 ]
  %31 = phi i32 [ 0, %10 ], [ %131, %134 ]
  %32 = phi i32 [ 0, %10 ], [ %130, %134 ]
  %33 = getelementptr inbounds ptr, ptr %1, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !138
  %35 = load i8, ptr %11, align 1, !tbaa !122, !range !102, !noundef !103
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !155
  %40 = icmp eq i32 %39, %12
  br i1 %40, label %129, label %41

41:                                               ; preds = %37, %28
  %42 = load i32, ptr %13, align 8, !tbaa !147
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %116, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 4
  %46 = zext i32 %31 to i64
  %47 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 4
  %48 = zext i32 %31 to i64
  %49 = zext i32 %31 to i64
  %50 = zext i32 %31 to i64
  br label %51

51:                                               ; preds = %44, %108
  %52 = phi i64 [ 0, %44 ], [ %109, %108 ]
  %53 = phi i32 [ %32, %44 ], [ %106, %108 ]
  %54 = load ptr, ptr %14, align 8, !tbaa !145
  %55 = getelementptr inbounds ptr, ptr %54, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !138
  %57 = load ptr, ptr %15, align 8, !tbaa !146
  %58 = getelementptr inbounds i32, ptr %57, i64 %52
  %59 = load i32, ptr %58, align 4, !tbaa !148
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = call noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %34, ptr noundef %56)
  br i1 %62, label %63, label %103

63:                                               ; preds = %61
  %64 = load ptr, ptr %20, align 8, !tbaa !167
  %65 = getelementptr inbounds ptr, ptr %64, i64 %50
  %66 = load ptr, ptr %65, align 8, !tbaa !138
  %67 = getelementptr inbounds i32, ptr %66, i64 %52
  %68 = load i32, ptr %67, align 4, !tbaa !126
  %69 = icmp eq i32 %68, %17
  br i1 %69, label %103, label %105

70:                                               ; preds = %51
  %71 = and i32 %59, 15
  switch i32 %71, label %103 [
    i32 6, label %72
    i32 8, label %79
    i32 7, label %91
  ]

72:                                               ; preds = %70
  %73 = load ptr, ptr %19, align 8, !tbaa !167
  %74 = getelementptr inbounds ptr, ptr %73, i64 %49
  %75 = load ptr, ptr %74, align 8, !tbaa !138
  %76 = getelementptr inbounds i32, ptr %75, i64 %52
  %77 = load i32, ptr %76, align 4, !tbaa !126
  %78 = icmp eq i32 %77, %17
  br i1 %78, label %103, label %105

79:                                               ; preds = %70
  %80 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %56, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !155
  %82 = load i32, ptr %47, align 4, !tbaa !155
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load ptr, ptr %18, align 8, !tbaa !167
  %86 = getelementptr inbounds ptr, ptr %85, i64 %48
  %87 = load ptr, ptr %86, align 8, !tbaa !138
  %88 = getelementptr inbounds i32, ptr %87, i64 %52
  %89 = load i32, ptr %88, align 4, !tbaa !126
  %90 = icmp eq i32 %89, %17
  br i1 %90, label %103, label %105

91:                                               ; preds = %70
  %92 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %56, i64 0, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !155
  %94 = load i32, ptr %45, align 4, !tbaa !155
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %16, align 8, !tbaa !167
  %98 = getelementptr inbounds ptr, ptr %97, i64 %46
  %99 = load ptr, ptr %98, align 8, !tbaa !138
  %100 = getelementptr inbounds i32, ptr %99, i64 %52
  %101 = load i32, ptr %100, align 4, !tbaa !126
  %102 = icmp eq i32 %101, %17
  br i1 %102, label %103, label %105

103:                                              ; preds = %70, %72, %96, %91, %79, %84, %61, %63
  %104 = phi i32 [ %68, %63 ], [ %53, %61 ], [ %77, %72 ], [ %89, %84 ], [ %53, %79 ], [ %101, %96 ], [ %53, %91 ], [ %53, %70 ]
  br label %105

105:                                              ; preds = %96, %84, %72, %63, %103
  %106 = phi i32 [ %104, %103 ], [ %68, %63 ], [ %77, %72 ], [ %89, %84 ], [ %101, %96 ]
  %107 = phi i1 [ true, %103 ], [ false, %63 ], [ false, %72 ], [ false, %84 ], [ false, %96 ]
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = add nuw nsw i64 %52, 1
  %110 = load i32, ptr %13, align 8, !tbaa !147
  %111 = zext i32 %110 to i64
  %112 = icmp ult i64 %109, %111
  br i1 %112, label %51, label %113, !llvm.loop !254

113:                                              ; preds = %105, %108
  %114 = phi i64 [ %109, %108 ], [ %52, %105 ]
  %115 = trunc i64 %114 to i32
  br label %116

116:                                              ; preds = %113, %41
  %117 = phi i32 [ 0, %41 ], [ %115, %113 ]
  %118 = phi i32 [ %32, %41 ], [ %106, %113 ]
  %119 = icmp eq i32 %118, %17
  %120 = trunc i64 %29 to i32
  br i1 %119, label %129, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %21, align 8, !tbaa !147
  %123 = icmp eq i32 %117, %122
  %124 = select i1 %123, i32 %118, i32 0
  %125 = select i1 %123, i32 %31, i32 %118
  %126 = zext i1 %123 to i32
  %127 = trunc i64 %29 to i32
  %128 = select i1 %123, i32 %127, i32 %30
  br label %129

129:                                              ; preds = %116, %121, %37
  %130 = phi i32 [ %32, %37 ], [ %118, %116 ], [ %124, %121 ]
  %131 = phi i32 [ %31, %37 ], [ %31, %116 ], [ %125, %121 ]
  %132 = phi i32 [ 4, %37 ], [ 1, %116 ], [ %126, %121 ]
  %133 = phi i32 [ %30, %37 ], [ %120, %116 ], [ %128, %121 ]
  switch i32 %132, label %146 [
    i32 0, label %134
    i32 4, label %134
  ]

134:                                              ; preds = %129, %129
  %135 = add nuw nsw i64 %29, 1
  %136 = icmp eq i64 %135, %22
  br i1 %136, label %137, label %28, !llvm.loop !255

137:                                              ; preds = %134
  %138 = trunc i64 %135 to i32
  %139 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !166
  %141 = zext i32 %131 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !189, !range !102, !noundef !103
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, i32 %138, i32 -1
  br label %146

146:                                              ; preds = %129, %137, %23
  %147 = phi i32 [ %27, %23 ], [ %145, %137 ], [ %133, %129 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  ret i32 %147
}

declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !256 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !257
  %5 = and i32 %4, 15
  %6 = add nsw i32 %5, -6
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %22, !prof !259

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %10)
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !260
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !155
  %16 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !132
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !132
  %19 = load ptr, ptr %9, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_75CMAnyC1ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %11, i32 noundef %4, i32 noundef %15, i32 noundef %17, ptr noundef %19)
          to label %70 unwind label %20

20:                                               ; preds = %8
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #15
  br label %72

22:                                               ; preds = %2
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %24, label %36, !prof !261

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %26)
  %28 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !260
  %30 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !132
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !132
  %33 = load ptr, ptr %25, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %27, ptr noundef %29, i32 noundef %31, ptr noundef %33)
          to label %70 unwind label %34, !prof !116

34:                                               ; preds = %24
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #15
  br label %72

36:                                               ; preds = %22
  %37 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !262
  %39 = and i32 %4, 14
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %52, !prof !263

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !264
  %44 = tail call noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %38)
  %45 = tail call noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %43)
  %46 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %47)
  %49 = load ptr, ptr %46, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %48, i32 noundef %4, ptr noundef %44, ptr noundef %45, ptr noundef %49)
          to label %70 unwind label %50, !prof !265

50:                                               ; preds = %41
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %47) #15
  br label %72

52:                                               ; preds = %36
  %53 = icmp ult i32 %4, 4
  br i1 %53, label %54, label %63, !prof !266

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !124
  %57 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %56)
  %58 = invoke noundef ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %38)
          to label %59 unwind label %61, !prof !266

59:                                               ; preds = %54
  %60 = load ptr, ptr %55, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %57, i32 noundef %4, ptr noundef %58, ptr noundef %60)
          to label %70 unwind label %61, !prof !266

61:                                               ; preds = %59, %54
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %57, ptr noundef %56) #15
  br label %72

63:                                               ; preds = %52
  %64 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %65 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 22, ptr noundef %66)
          to label %67 unwind label %68

67:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

68:                                               ; preds = %63
  %69 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %64) #15
  br label %72

70:                                               ; preds = %41, %59, %24, %8
  %71 = phi ptr [ %11, %8 ], [ %27, %24 ], [ %48, %41 ], [ %57, %59 ]
  ret ptr %71

72:                                               ; preds = %50, %61, %68, %34, %20
  %73 = phi { ptr, i32 } [ %21, %20 ], [ %35, %34 ], [ %51, %50 ], [ %62, %61 ], [ %69, %68 ]
  resume { ptr, i32 } %73
}

declare void @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !267 {
  br label %4

4:                                                ; preds = %55, %48, %3
  %5 = phi ptr [ %1, %3 ], [ %51, %48 ], [ %56, %55 ]
  %6 = phi i32 [ %2, %3 ], [ %50, %48 ], [ %6, %55 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !132
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %5, i64 0, i32 6
  store i32 %8, ptr %9, align 8, !tbaa !129
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %5, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !128
  %12 = and i32 %11, 15
  switch i32 %12, label %52 [
    i32 6, label %13
    i32 8, label %13
    i32 7, label %13
    i32 4, label %48
    i32 5, label %48
  ], !prof !268

13:                                               ; preds = %4, %4, %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %15)
  %17 = load ptr, ptr %14, align 8, !tbaa !124
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %17)
          to label %19 unwind label %42

19:                                               ; preds = %13
  %20 = invoke noundef i32 @_ZNK11xercesc_2_75CMAny6getURIEv(ptr noundef nonnull align 8 dereferenceable(52) %5)
          to label %21 unwind label %44

21:                                               ; preds = %19
  %22 = load ptr, ptr %14, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %20, ptr noundef %22)
          to label %23 unwind label %44

23:                                               ; preds = %21
  %24 = invoke noundef i32 @_ZNK11xercesc_2_75CMAny11getPositionEv(ptr noundef nonnull align 8 dereferenceable(52) %5)
          to label %25 unwind label %42

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !124
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !91
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %16, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !127
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %16, i64 0, i32 2
  store i32 0, ptr %28, align 8, !tbaa !128
  %29 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %16, i64 0, i32 4
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %16, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i32 -1, ptr %30, align 8, !tbaa !129
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !91
  %31 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %16, i64 0, i32 2
  store ptr null, ptr %31, align 8, !tbaa !105
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %16, i64 0, i32 3
  store i32 %24, ptr %32, align 8, !tbaa !130
  %33 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %16, i64 0, i32 4
  store i8 1, ptr %33, align 4, !tbaa !94
  store ptr %18, ptr %31, align 8, !tbaa !105
  %34 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !134
  %36 = zext i32 %6 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  store ptr %16, ptr %37, align 8, !tbaa !138
  %38 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !135
  %40 = getelementptr inbounds i32, ptr %39, i64 %36
  store i32 %11, ptr %40, align 4, !tbaa !148
  %41 = add i32 %6, 1
  br label %92

42:                                               ; preds = %23, %13
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %21, %19
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #15
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %43, %42 ], [ %45, %44 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #15
  br label %94

48:                                               ; preds = %4, %4
  %49 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %50 = tail call noundef i32 @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %49, i32 noundef %6)
  %51 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  br label %4

52:                                               ; preds = %4
  %53 = add i32 %11, -1
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %55, label %57, !prof !269

55:                                               ; preds = %52
  %56 = tail call noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
  br label %4

57:                                               ; preds = %52
  %58 = icmp eq i32 %11, 0
  br i1 %58, label %59, label %85, !prof !112

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %5, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  %62 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %61, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !155
  %64 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4, !tbaa !126
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %92, label %66, !prof !149

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !124
  %69 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %68)
  %70 = load ptr, ptr %60, align 8, !tbaa !105
  %71 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %5, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !130
  %73 = load ptr, ptr %67, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %69, ptr noundef %70, i32 noundef %72, ptr noundef %73)
          to label %74 unwind label %83, !prof !112

74:                                               ; preds = %66
  %75 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !134
  %77 = zext i32 %6 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr %69, ptr %78, align 8, !tbaa !138
  %79 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 11
  %80 = load ptr, ptr %79, align 8, !tbaa !135
  %81 = getelementptr inbounds i32, ptr %80, i64 %77
  store i32 0, ptr %81, align 4, !tbaa !148
  %82 = add i32 %6, 1
  br label %92

83:                                               ; preds = %66
  %84 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %69, ptr noundef %68) #15
  br label %94

85:                                               ; preds = %57
  %86 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %87 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %86, ptr noundef nonnull @.str, i32 noundef 1103, i32 noundef 22, ptr noundef %88)
          to label %89 unwind label %90

89:                                               ; preds = %85
  tail call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

90:                                               ; preds = %85
  %91 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %86) #15
  br label %94

92:                                               ; preds = %74, %59, %25
  %93 = phi i32 [ %41, %25 ], [ %82, %74 ], [ %6, %59 ]
  ret i32 %93

94:                                               ; preds = %90, %83, %46
  %95 = phi { ptr, i32 } [ %47, %46 ], [ %84, %83 ], [ %91, %90 ]
  resume { ptr, i32 } %95
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !270 {
  store i32 %1, ptr %0, align 8, !tbaa !193
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !113
  %6 = icmp ugt i32 %1, 64
  br i1 %6, label %7, label %19, !prof !271

7:                                                ; preds = %3
  %8 = lshr i32 %1, 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = and i32 %1, 7
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %8, %12
  store i32 %13, ptr %9, align 4, !tbaa !195
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !91
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14)
  store ptr %18, ptr %4, align 8, !tbaa !110
  br label %19

19:                                               ; preds = %7, %3
  %20 = load i32, ptr %0, align 8, !tbaa !193
  %21 = icmp ult i32 %20, 65
  br i1 %21, label %26, label %22, !prof !272

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !195
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !196
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %28, align 4, !tbaa !197
  br label %37

29:                                               ; preds = %22, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %22 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !110
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  store i8 0, ptr %32, align 1, !tbaa !198
  %33 = add nuw nsw i64 %30, 1
  %34 = load i32, ptr %23, align 4, !tbaa !195
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %29, label %37, !llvm.loop !199

37:                                               ; preds = %29, %22, %26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !267 {
  br label %3

3:                                                ; preds = %201, %2
  %4 = phi ptr [ %1, %2 ], [ %202, %201 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !128
  %7 = and i32 %6, 15
  switch i32 %7, label %105 [
    i32 4, label %8
    i32 5, label %11
  ], !prof !273

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %9)
  %10 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  br label %201

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %12)
  %13 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %13)
  %14 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  %15 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %33, !prof !274

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %20)
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %14, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !129
  %24 = load ptr, ptr %19, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef %23, ptr noundef %24)
          to label %25 unwind label %31, !prof !275

25:                                               ; preds = %18
  store ptr %21, ptr %15, align 8, !tbaa !114
  %26 = load ptr, ptr %14, align 8, !tbaa !91
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(44) %14, ptr noundef nonnull align 8 dereferenceable(32) %21), !prof !276
  br label %33

29:                                               ; preds = %142, %124, %50, %31
  %30 = phi { ptr, i32 } [ %32, %31 ], [ %51, %50 ], [ %125, %124 ], [ %143, %142 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %18
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #15
  br label %29

33:                                               ; preds = %11, %25
  %34 = load ptr, ptr %15, align 8, !tbaa !114
  %35 = tail call noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %52, !prof !274

39:                                               ; preds = %33
  %40 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !127
  %42 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %41)
  %43 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %35, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !129
  %45 = load ptr, ptr %40, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef %44, ptr noundef %45)
          to label %46 unwind label %50, !prof !275

46:                                               ; preds = %39
  store ptr %42, ptr %36, align 8, !tbaa !108
  %47 = load ptr, ptr %35, align 8, !tbaa !91
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(44) %35, ptr noundef nonnull align 8 dereferenceable(32) %42), !prof !277
  br label %52

50:                                               ; preds = %39
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %42, ptr noundef %41) #15
  br label %29

52:                                               ; preds = %33, %46
  %53 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !132
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %203, label %56, !prof !278

56:                                               ; preds = %52
  %57 = load ptr, ptr %36, align 8, !tbaa !108
  %58 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 7
  %59 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %57, i64 0, i32 2
  %60 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %57, i64 0, i32 3
  br label %61

61:                                               ; preds = %56, %100
  %62 = phi i64 [ 0, %56 ], [ %101, %100 ]
  %63 = trunc i64 %62 to i32
  %64 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef %63)
  br i1 %64, label %65, label %100, !prof !279

65:                                               ; preds = %61
  %66 = load ptr, ptr %58, align 8, !tbaa !136
  %67 = getelementptr inbounds ptr, ptr %66, i64 %62
  %68 = load ptr, ptr %67, align 8, !tbaa !138
  %69 = load i32, ptr %68, align 8, !tbaa !193
  %70 = icmp ult i32 %69, 65
  br i1 %70, label %78, label %71, !prof !280

71:                                               ; preds = %65
  %72 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %68, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !195
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %57, i64 0, i32 4
  %77 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %68, i64 0, i32 4
  br label %87

78:                                               ; preds = %65
  %79 = load i32, ptr %59, align 8, !tbaa !196
  %80 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %68, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !196
  %82 = or i32 %81, %79
  store i32 %82, ptr %80, align 8, !tbaa !196
  %83 = load i32, ptr %60, align 4, !tbaa !197
  %84 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %68, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !197
  %86 = or i32 %85, %83
  store i32 %86, ptr %84, align 4, !tbaa !197
  br label %100

87:                                               ; preds = %75, %87
  %88 = phi i64 [ 0, %75 ], [ %96, %87 ]
  %89 = load ptr, ptr %76, align 8, !tbaa !110
  %90 = getelementptr inbounds i8, ptr %89, i64 %88
  %91 = load i8, ptr %90, align 1, !tbaa !198
  %92 = load ptr, ptr %77, align 8, !tbaa !110
  %93 = getelementptr inbounds i8, ptr %92, i64 %88
  %94 = load i8, ptr %93, align 1, !tbaa !198
  %95 = or i8 %94, %91
  store i8 %95, ptr %93, align 1, !tbaa !198
  %96 = add nuw nsw i64 %88, 1
  %97 = load i32, ptr %72, align 4, !tbaa !195
  %98 = zext i32 %97 to i64
  %99 = icmp ult i64 %96, %98
  br i1 %99, label %87, label %100, !llvm.loop !203

100:                                              ; preds = %87, %71, %78, %61
  %101 = add nuw nsw i64 %62, 1
  %102 = load i32, ptr %53, align 8, !tbaa !132
  %103 = zext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %61, label %203, !prof !281, !llvm.loop !282

105:                                              ; preds = %3
  %106 = and i32 %6, -2
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %197, !prof !283

108:                                              ; preds = %105
  %109 = tail call noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  tail call void @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %109)
  %110 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !108
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %126, !prof !284

113:                                              ; preds = %108
  %114 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !127
  %116 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %115)
  %117 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !129
  %119 = load ptr, ptr %114, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %116, i32 noundef %118, ptr noundef %119)
          to label %120 unwind label %124, !prof !284

120:                                              ; preds = %113
  store ptr %116, ptr %110, align 8, !tbaa !108
  %121 = load ptr, ptr %4, align 8, !tbaa !91
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  tail call void %123(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(32) %116), !prof !285
  br label %126

124:                                              ; preds = %113
  %125 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %116, ptr noundef %115) #15
  br label %29

126:                                              ; preds = %108, %120
  %127 = load ptr, ptr %110, align 8, !tbaa !108
  %128 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %144, !prof !284

131:                                              ; preds = %126
  %132 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !127
  %134 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %133)
  %135 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !129
  %137 = load ptr, ptr %132, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %134, i32 noundef %136, ptr noundef %137)
          to label %138 unwind label %142, !prof !284

138:                                              ; preds = %131
  store ptr %134, ptr %128, align 8, !tbaa !114
  %139 = load ptr, ptr %4, align 8, !tbaa !91
  %140 = getelementptr inbounds ptr, ptr %139, i64 4
  %141 = load ptr, ptr %140, align 8
  tail call void %141(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(32) %134), !prof !286
  br label %144

142:                                              ; preds = %131
  %143 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %134, ptr noundef %133) #15
  br label %29

144:                                              ; preds = %126, %138
  %145 = load ptr, ptr %128, align 8, !tbaa !114
  %146 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 9
  %147 = load i32, ptr %146, align 8, !tbaa !132
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %203, label %149, !prof !287

149:                                              ; preds = %144
  %150 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 7
  %151 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %127, i64 0, i32 2
  %152 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %127, i64 0, i32 3
  br label %153

153:                                              ; preds = %149, %192
  %154 = phi i64 [ 0, %149 ], [ %193, %192 ]
  %155 = trunc i64 %154 to i32
  %156 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %145, i32 noundef %155)
  br i1 %156, label %157, label %192, !prof !288

157:                                              ; preds = %153
  %158 = load ptr, ptr %150, align 8, !tbaa !136
  %159 = getelementptr inbounds ptr, ptr %158, i64 %154
  %160 = load ptr, ptr %159, align 8, !tbaa !138
  %161 = load i32, ptr %160, align 8, !tbaa !193
  %162 = icmp ult i32 %161, 65
  br i1 %162, label %170, label %163, !prof !289

163:                                              ; preds = %157
  %164 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %160, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !195
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %192, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %127, i64 0, i32 4
  %169 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %160, i64 0, i32 4
  br label %179

170:                                              ; preds = %157
  %171 = load i32, ptr %151, align 8, !tbaa !196
  %172 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %160, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !196
  %174 = or i32 %173, %171
  store i32 %174, ptr %172, align 8, !tbaa !196
  %175 = load i32, ptr %152, align 4, !tbaa !197
  %176 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %160, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !197
  %178 = or i32 %177, %175
  store i32 %178, ptr %176, align 4, !tbaa !197
  br label %192

179:                                              ; preds = %167, %179
  %180 = phi i64 [ 0, %167 ], [ %188, %179 ]
  %181 = load ptr, ptr %168, align 8, !tbaa !110
  %182 = getelementptr inbounds i8, ptr %181, i64 %180
  %183 = load i8, ptr %182, align 1, !tbaa !198
  %184 = load ptr, ptr %169, align 8, !tbaa !110
  %185 = getelementptr inbounds i8, ptr %184, i64 %180
  %186 = load i8, ptr %185, align 1, !tbaa !198
  %187 = or i8 %186, %183
  store i8 %187, ptr %185, align 1, !tbaa !198
  %188 = add nuw nsw i64 %180, 1
  %189 = load i32, ptr %164, align 4, !tbaa !195
  %190 = zext i32 %189 to i64
  %191 = icmp ult i64 %188, %190
  br i1 %191, label %179, label %192, !llvm.loop !203

192:                                              ; preds = %179, %163, %170, %153
  %193 = add nuw nsw i64 %154, 1
  %194 = load i32, ptr %146, align 8, !tbaa !132
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %193, %195
  br i1 %196, label %153, label %203, !prof !290, !llvm.loop !291

197:                                              ; preds = %105
  %198 = icmp eq i32 %6, 1
  br i1 %198, label %199, label %203, !prof !292

199:                                              ; preds = %197
  %200 = tail call noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  br label %201

201:                                              ; preds = %8, %199
  %202 = phi ptr [ %200, %199 ], [ %10, %8 ]
  br label %3

203:                                              ; preds = %100, %192, %52, %144, %197
  ret void
}

declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #8

declare void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) unnamed_addr #8

declare void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

declare void @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 !prof !117 {
  %3 = load i32, ptr %1, align 8, !tbaa !193
  store i32 %3, ptr %0, align 8, !tbaa !193
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  store ptr %7, ptr %5, align 8, !tbaa !113
  %8 = icmp ugt i32 %3, 64
  br i1 %8, label %9, label %25, !prof !106

9:                                                ; preds = %2
  %10 = lshr i32 %3, 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %12 = and i32 %3, 7
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = add nuw nsw i32 %10, %14
  store i32 %15, ptr %11, align 4, !tbaa !195
  %16 = zext nneg i32 %15 to i64
  %17 = load ptr, ptr %7, align 8, !tbaa !91
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %16)
  store ptr %20, ptr %4, align 8, !tbaa !110
  %21 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = load i32, ptr %11, align 4, !tbaa !195
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %22, i64 %24, i1 false)
  br label %32

25:                                               ; preds = %2
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !196
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !196
  %29 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !197
  %31 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !197
  br label %32

32:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DFAContentModel16makeDefStateListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !147
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = load ptr, ptr %3, align 8, !tbaa !91
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %7)
  %12 = load i32, ptr %4, align 8, !tbaa !147
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !126
  br label %17

16:                                               ; preds = %17, %1
  ret ptr %11

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %20, %17 ]
  %19 = getelementptr inbounds i32, ptr %11, i64 %18
  store i32 %15, ptr %19, align 4, !tbaa !126
  %20 = add nuw nsw i64 %18, 1
  %21 = load i32, ptr %4, align 8, !tbaa !147
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %17, label %16, !llvm.loop !178
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSet6getBitEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !293 {
  %3 = load i32, ptr %0, align 8, !tbaa !193
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5, !prof !294

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 11, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = icmp ult i32 %3, 65
  br i1 %13, label %14, label %24, !prof !294

14:                                               ; preds = %12
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = icmp ult i32 %1, 32
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %20 = load i32, ptr %18, align 8
  %21 = load i32, ptr %19, align 4
  %22 = select i1 %17, i32 %20, i32 %21, !prof !294
  %23 = and i32 %22, %16
  br label %35

24:                                               ; preds = %12
  %25 = and i32 %1, 7
  %26 = shl nuw nsw i32 1, %25
  %27 = lshr i32 %1, 3
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !198
  %33 = zext i8 %32 to i32
  %34 = and i32 %26, %33
  br label %35

35:                                               ; preds = %24, %14
  %36 = phi i32 [ %23, %14 ], [ %34, %24 ]
  %37 = icmp ne i32 %36, 0
  ret i1 %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !295 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !183
  %7 = load ptr, ptr %0, align 8, !tbaa !179
  %8 = load ptr, ptr %4, align 8, !tbaa !91
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !296
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !297

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !186
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !298
  %22 = load ptr, ptr %19, align 8, !tbaa !91
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !300
  br i1 %25, label %30, label %26, !prof !301

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !302, !llvm.loop !303

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !209

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !304
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !305 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !183
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !185
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !306

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !186
  %15 = load i32, ptr %4, align 8, !tbaa !183
  %16 = load ptr, ptr %0, align 8, !tbaa !179
  %17 = load ptr, ptr %14, align 8, !tbaa !91
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !307
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !308

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !186
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !298
  %31 = load ptr, ptr %28, align 8, !tbaa !91
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !309
  br i1 %34, label %39, label %35, !prof !310

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !138
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !311, !llvm.loop !303

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !306

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !181, !range !102, !noundef !103
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !304
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #15
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !304
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !298
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !179
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !212
  %58 = load ptr, ptr %20, align 8, !tbaa !182
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !138
  store ptr %2, ptr %57, align 8, !tbaa !304
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !312
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !298
  store ptr %57, ptr %59, align 8, !tbaa !138
  %63 = load i32, ptr %8, align 8, !tbaa !185
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !185
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

declare void @_ZN11xercesc_2_75CMAnyC1ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !127
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 8, !tbaa !128
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i32 -1, ptr %9, align 8, !tbaa !129
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMLeafE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !105
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  store i32 %2, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 4
  store i8 0, ptr %12, align 4, !tbaa !94
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %24, !prof !314

14:                                               ; preds = %4
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
          to label %16 unwind label %20

16:                                               ; preds = %14
  %17 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !126
  %18 = load ptr, ptr %5, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %17, ptr noundef %18)
          to label %19 unwind label %22

19:                                               ; preds = %16
  store ptr %15, ptr %10, align 8, !tbaa !105
  store i8 1, ptr %12, align 4, !tbaa !94
  br label %25

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %26

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %3) #15
  br label %26

24:                                               ; preds = %4
  store ptr %1, ptr %10, align 8, !tbaa !105
  br label %25

25:                                               ; preds = %24, %19
  ret void

26:                                               ; preds = %22, %20
  %27 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %28 = load ptr, ptr %7, align 8, !tbaa !108
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %28, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !110
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %28, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !113
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull %32)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %34, %30
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %28) #15
  br label %44

44:                                               ; preds = %43, %26
  %45 = load ptr, ptr %8, align 8, !tbaa !114
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %45, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %45, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !113
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull %49)
          to label %60 unwind label %57

57:                                               ; preds = %51
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #14
  unreachable

60:                                               ; preds = %51, %47
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #15
  br label %61

61:                                               ; preds = %44, %60
  resume { ptr, i32 } %27
}

declare void @_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
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

declare noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

declare noundef i32 @_ZNK11xercesc_2_75CMAny6getURIEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #8

declare noundef i32 @_ZNK11xercesc_2_75CMAny11getPositionEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DFAContentModel28getContentLeafNameTypeVectorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) unnamed_addr #10 align 2 !prof !315 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715DFAContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %8 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %9 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %10 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  store ptr %2, ptr %8, align 8, !tbaa !251
  %11 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %8, i64 0, i32 1
  store ptr %3, ptr %11, align 8, !tbaa !253
  %12 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !147
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !126
  %19 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel14gEpsilonFakeIdE, align 4
  %20 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %21 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %22 = zext i32 %13 to i64
  br label %23

23:                                               ; preds = %15, %40
  %24 = phi i64 [ 0, %15 ], [ %41, %40 ]
  %25 = getelementptr inbounds ptr, ptr %17, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !155
  %29 = icmp eq i32 %28, %18
  %30 = icmp eq i32 %28, %19
  %31 = select i1 %29, i1 true, i1 %30
  %32 = icmp eq i32 %28, %20
  %33 = select i1 %31, i1 true, i1 %32
  %34 = icmp eq i32 %28, %21
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %23
  %37 = zext i32 %28 to i64
  %38 = getelementptr inbounds i32, ptr %5, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !126
  store i32 %39, ptr %27, align 4, !tbaa !155
  br label %40

40:                                               ; preds = %36, %23
  %41 = add nuw nsw i64 %24, 1
  %42 = icmp eq i64 %41, %22
  br i1 %42, label %43, label %23, !llvm.loop !316

43:                                               ; preds = %40, %7
  %44 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %45 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !124
  %47 = zext i32 %13 to i64
  %48 = shl nuw nsw i64 %47, 3
  %49 = load ptr, ptr %46, align 8, !tbaa !91
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef %48)
  %53 = load i32, ptr %44, align 8, !tbaa !147
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  br label %86

57:                                               ; preds = %102, %86
  %58 = load i32, ptr %44, align 8, !tbaa !147
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %98, %59
  %61 = add nuw nsw i64 %88, 1
  br i1 %60, label %86, label %62, !llvm.loop !317

62:                                               ; preds = %57, %43
  %63 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  %64 = load i32, ptr %63, align 8, !tbaa !219
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %113, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %68 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4
  %69 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 15
  %70 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %71 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %72 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 2
  %73 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 1
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 1
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 2
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 3
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 4
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 5
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 1
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 2
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 3
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 4
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 5
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  br label %109

86:                                               ; preds = %55, %57
  %87 = phi i64 [ 0, %55 ], [ %98, %57 ]
  %88 = phi i64 [ 1, %55 ], [ %61, %57 ]
  %89 = phi i32 [ %53, %55 ], [ %58, %57 ]
  %90 = load ptr, ptr %45, align 8, !tbaa !124
  %91 = zext i32 %89 to i64
  %92 = shl nuw nsw i64 %91, 2
  %93 = load ptr, ptr %90, align 8, !tbaa !91
  %94 = getelementptr inbounds ptr, ptr %93, i64 2
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef %92)
  %97 = getelementptr inbounds ptr, ptr %52, i64 %87
  store ptr %96, ptr %97, align 8, !tbaa !138
  %98 = add nuw nsw i64 %87, 1
  %99 = load i32, ptr %44, align 8, !tbaa !147
  %100 = zext i32 %99 to i64
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %57

102:                                              ; preds = %86, %102
  %103 = phi i64 [ %105, %102 ], [ %88, %86 ]
  %104 = getelementptr inbounds i32, ptr %96, i64 %103
  store i32 %56, ptr %104, align 4, !tbaa !126
  %105 = add nuw nsw i64 %103, 1
  %106 = load i32, ptr %44, align 8, !tbaa !147
  %107 = zext i32 %106 to i64
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %102, label %57, !llvm.loop !318

109:                                              ; preds = %66, %277
  %110 = phi i64 [ 0, %66 ], [ %278, %277 ]
  %111 = load i32, ptr %44, align 8, !tbaa !147
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %277, label %121

113:                                              ; preds = %277, %62
  %114 = load i32, ptr %44, align 8, !tbaa !147
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %294, label %282

116:                                              ; preds = %272, %121
  %117 = load i32, ptr %44, align 8, !tbaa !147
  %118 = zext i32 %117 to i64
  %119 = icmp ult i64 %124, %118
  %120 = add nuw nsw i64 %123, 1
  br i1 %119, label %121, label %277, !llvm.loop !319

121:                                              ; preds = %109, %116
  %122 = phi i64 [ %124, %116 ], [ 0, %109 ]
  %123 = phi i64 [ %120, %116 ], [ 1, %109 ]
  %124 = add nuw nsw i64 %122, 1
  %125 = load i32, ptr %44, align 8, !tbaa !147
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %124, %126
  br i1 %127, label %128, label %116

128:                                              ; preds = %121
  %129 = getelementptr inbounds ptr, ptr %52, i64 %122
  br label %130

130:                                              ; preds = %128, %272
  %131 = phi i64 [ %123, %128 ], [ %273, %272 ]
  %132 = load ptr, ptr %67, align 8, !tbaa !167
  %133 = getelementptr inbounds ptr, ptr %132, i64 %110
  %134 = load ptr, ptr %133, align 8, !tbaa !138
  %135 = getelementptr inbounds i32, ptr %134, i64 %122
  %136 = load i32, ptr %135, align 4, !tbaa !126
  %137 = icmp eq i32 %136, %68
  br i1 %137, label %272, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds i32, ptr %134, i64 %131
  %140 = load i32, ptr %139, align 4, !tbaa !126
  %141 = icmp eq i32 %140, %68
  br i1 %141, label %272, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %129, align 8, !tbaa !138
  %144 = getelementptr inbounds i32, ptr %143, i64 %131
  %145 = load i32, ptr %144, align 4, !tbaa !126
  %146 = icmp eq i32 %145, %68
  br i1 %146, label %147, label %272

147:                                              ; preds = %142
  %148 = load i8, ptr %69, align 1, !tbaa !122, !range !102, !noundef !103
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %70, align 8, !tbaa !145
  %152 = getelementptr inbounds ptr, ptr %151, i64 %122
  %153 = load ptr, ptr %152, align 8, !tbaa !138
  %154 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %153, i64 0, i32 4
  %155 = load i32, ptr %154, align 4, !tbaa !155
  %156 = icmp eq i32 %155, %71
  br i1 %156, label %272, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds ptr, ptr %151, i64 %131
  %159 = load ptr, ptr %158, align 8, !tbaa !138
  %160 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %159, i64 0, i32 4
  %161 = load i32, ptr %160, align 4, !tbaa !155
  %162 = icmp eq i32 %161, %71
  br i1 %162, label %272, label %163

163:                                              ; preds = %157, %147
  %164 = load ptr, ptr %72, align 8, !tbaa !146
  %165 = getelementptr inbounds i32, ptr %164, i64 %122
  %166 = load i32, ptr %165, align 4, !tbaa !148
  %167 = load ptr, ptr %73, align 8, !tbaa !145
  %168 = getelementptr inbounds ptr, ptr %167, i64 %122
  %169 = load ptr, ptr %168, align 8, !tbaa !138
  %170 = getelementptr inbounds i32, ptr %164, i64 %131
  %171 = load i32, ptr %170, align 4, !tbaa !148
  %172 = getelementptr inbounds ptr, ptr %167, i64 %131
  %173 = load ptr, ptr %172, align 8, !tbaa !138
  %174 = call noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %1, i32 noundef %166, ptr noundef %169, i32 noundef %171, ptr noundef %173, ptr noundef nonnull %8)
  %175 = load ptr, ptr %129, align 8, !tbaa !138
  %176 = getelementptr inbounds i32, ptr %175, i64 %131
  br i1 %174, label %177, label %271

177:                                              ; preds = %163
  store i32 1, ptr %176, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #15
  %178 = load ptr, ptr %45, align 8, !tbaa !124
  store i32 0, ptr %9, align 8, !tbaa !320
  store i32 1023, ptr %74, align 4, !tbaa !322
  store i32 0, ptr %75, align 8, !tbaa !323
  store i8 0, ptr %76, align 4, !tbaa !324
  store ptr %178, ptr %77, align 8, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  %179 = load ptr, ptr %178, align 8, !tbaa !91
  %180 = getelementptr inbounds ptr, ptr %179, i64 2
  %181 = load ptr, ptr %180, align 8
  %182 = call noundef ptr %181(ptr noundef nonnull align 8 dereferenceable(8) %178, i64 noundef 2048)
  store ptr %182, ptr %79, align 8, !tbaa !326
  store i16 0, ptr %182, align 2, !tbaa !152
  %183 = load ptr, ptr %72, align 8, !tbaa !146
  %184 = getelementptr inbounds i32, ptr %183, i64 %122
  %185 = load i32, ptr %184, align 4, !tbaa !148
  %186 = and i32 %185, 15
  switch i32 %186, label %192 [
    i32 6, label %190
    i32 8, label %190
    i32 7, label %189
  ]

187:                                              ; preds = %190, %197, %192
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %260

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %177, %177, %189
  %191 = phi ptr [ @_ZN11xercesc_2_713SchemaSymbols22fgATTVAL_TWOPOUNDOTHERE, %189 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE, %177 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE, %177 ]
  store i32 0, ptr %9, align 8, !tbaa !320
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %191)
          to label %198 unwind label %187

192:                                              ; preds = %177
  %193 = load ptr, ptr %73, align 8, !tbaa !145
  %194 = getelementptr inbounds ptr, ptr %193, i64 %122
  %195 = load ptr, ptr %194, align 8, !tbaa !138
  %196 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %195)
          to label %197 unwind label %187

197:                                              ; preds = %192
  store i32 0, ptr %9, align 8, !tbaa !320
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %196)
          to label %198 unwind label %187

198:                                              ; preds = %190, %197
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #15
  %199 = load ptr, ptr %45, align 8, !tbaa !124
  store i32 0, ptr %10, align 8, !tbaa !320
  store i32 1023, ptr %80, align 4, !tbaa !322
  store i32 0, ptr %81, align 8, !tbaa !323
  store i8 0, ptr %82, align 4, !tbaa !324
  store ptr %199, ptr %83, align 8, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  %200 = load ptr, ptr %199, align 8, !tbaa !91
  %201 = getelementptr inbounds ptr, ptr %200, i64 2
  %202 = load ptr, ptr %201, align 8
  %203 = invoke noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(8) %199, i64 noundef 2048)
          to label %204 unwind label %209

204:                                              ; preds = %198
  store ptr %203, ptr %85, align 8, !tbaa !326
  store i16 0, ptr %203, align 2, !tbaa !152
  %205 = load ptr, ptr %72, align 8, !tbaa !146
  %206 = getelementptr inbounds i32, ptr %205, i64 %131
  %207 = load i32, ptr %206, align 4, !tbaa !148
  %208 = and i32 %207, 15
  switch i32 %208, label %224 [
    i32 6, label %222
    i32 8, label %222
    i32 7, label %221
  ]

209:                                              ; preds = %198
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %258

211:                                              ; preds = %222, %229, %230, %224
  %212 = landingpad { ptr, i32 }
          cleanup
  %213 = load ptr, ptr %83, align 8, !tbaa !325
  %214 = load ptr, ptr %85, align 8, !tbaa !326
  %215 = load ptr, ptr %213, align 8, !tbaa !91
  %216 = getelementptr inbounds ptr, ptr %215, i64 3
  %217 = load ptr, ptr %216, align 8
  invoke void %217(ptr noundef nonnull align 8 dereferenceable(8) %213, ptr noundef %214)
          to label %258 unwind label %218

218:                                              ; preds = %211
  %219 = landingpad { ptr, i32 }
          catch ptr null
  %220 = extractvalue { ptr, i32 } %219, 0
  call void @__clang_call_terminate(ptr %220) #14
  unreachable

221:                                              ; preds = %204
  br label %222

222:                                              ; preds = %204, %204, %221
  %223 = phi ptr [ @_ZN11xercesc_2_713SchemaSymbols22fgATTVAL_TWOPOUNDOTHERE, %221 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE, %204 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgATTVAL_TWOPOUNDANYE, %204 ]
  store i32 0, ptr %10, align 8, !tbaa !320
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %223)
          to label %230 unwind label %211

224:                                              ; preds = %204
  %225 = load ptr, ptr %73, align 8, !tbaa !145
  %226 = getelementptr inbounds ptr, ptr %225, i64 %131
  %227 = load ptr, ptr %226, align 8, !tbaa !138
  %228 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %227)
          to label %229 unwind label %211

229:                                              ; preds = %224
  store i32 0, ptr %10, align 8, !tbaa !320
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %228)
          to label %230 unwind label %211

230:                                              ; preds = %222, %229
  %231 = load ptr, ptr %79, align 8, !tbaa !326
  %232 = load i32, ptr %9, align 8, !tbaa !320
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i16, ptr %231, i64 %233
  store i16 0, ptr %234, align 2, !tbaa !152
  %235 = load ptr, ptr %85, align 8, !tbaa !326
  %236 = load i32, ptr %10, align 8, !tbaa !320
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i16, ptr %235, i64 %237
  store i16 0, ptr %238, align 2, !tbaa !152
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 88, ptr noundef %6, ptr noundef %231, ptr noundef %235, ptr noundef null)
          to label %239 unwind label %211

239:                                              ; preds = %230
  %240 = load ptr, ptr %83, align 8, !tbaa !325
  %241 = load ptr, ptr %85, align 8, !tbaa !326
  %242 = load ptr, ptr %240, align 8, !tbaa !91
  %243 = getelementptr inbounds ptr, ptr %242, i64 3
  %244 = load ptr, ptr %243, align 8
  invoke void %244(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef %241)
          to label %248 unwind label %245

245:                                              ; preds = %239
  %246 = landingpad { ptr, i32 }
          catch ptr null
  %247 = extractvalue { ptr, i32 } %246, 0
  call void @__clang_call_terminate(ptr %247) #14
  unreachable

248:                                              ; preds = %239
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #15
  %249 = load ptr, ptr %77, align 8, !tbaa !325
  %250 = load ptr, ptr %79, align 8, !tbaa !326
  %251 = load ptr, ptr %249, align 8, !tbaa !91
  %252 = getelementptr inbounds ptr, ptr %251, i64 3
  %253 = load ptr, ptr %252, align 8
  invoke void %253(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef %250)
          to label %257 unwind label %254

254:                                              ; preds = %248
  %255 = landingpad { ptr, i32 }
          catch ptr null
  %256 = extractvalue { ptr, i32 } %255, 0
  call void @__clang_call_terminate(ptr %256) #14
  unreachable

257:                                              ; preds = %248
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #15
  br label %272

258:                                              ; preds = %211, %209
  %259 = phi { ptr, i32 } [ %210, %209 ], [ %212, %211 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #15
  br label %260

260:                                              ; preds = %258, %187
  %261 = phi { ptr, i32 } [ %259, %258 ], [ %188, %187 ]
  %262 = load ptr, ptr %77, align 8, !tbaa !325
  %263 = load ptr, ptr %79, align 8, !tbaa !326
  %264 = load ptr, ptr %262, align 8, !tbaa !91
  %265 = getelementptr inbounds ptr, ptr %264, i64 3
  %266 = load ptr, ptr %265, align 8
  invoke void %266(ptr noundef nonnull align 8 dereferenceable(8) %262, ptr noundef %263)
          to label %270 unwind label %267

267:                                              ; preds = %260
  %268 = landingpad { ptr, i32 }
          catch ptr null
  %269 = extractvalue { ptr, i32 } %268, 0
  call void @__clang_call_terminate(ptr %269) #14
  unreachable

270:                                              ; preds = %260
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  resume { ptr, i32 } %261

271:                                              ; preds = %163
  store i32 0, ptr %176, align 4, !tbaa !126
  br label %272

272:                                              ; preds = %130, %138, %142, %271, %257, %150, %157
  %273 = add nuw nsw i64 %131, 1
  %274 = load i32, ptr %44, align 8, !tbaa !147
  %275 = zext i32 %274 to i64
  %276 = icmp ult i64 %273, %275
  br i1 %276, label %130, label %116, !llvm.loop !327

277:                                              ; preds = %116, %109
  %278 = add nuw nsw i64 %110, 1
  %279 = load i32, ptr %63, align 8, !tbaa !219
  %280 = zext i32 %279 to i64
  %281 = icmp ult i64 %278, %280
  br i1 %281, label %109, label %113, !llvm.loop !328

282:                                              ; preds = %113, %282
  %283 = phi i64 [ %290, %282 ], [ 0, %113 ]
  %284 = load ptr, ptr %45, align 8, !tbaa !124
  %285 = getelementptr inbounds ptr, ptr %52, i64 %283
  %286 = load ptr, ptr %285, align 8, !tbaa !138
  %287 = load ptr, ptr %284, align 8, !tbaa !91
  %288 = getelementptr inbounds ptr, ptr %287, i64 3
  %289 = load ptr, ptr %288, align 8
  call void %289(ptr noundef nonnull align 8 dereferenceable(8) %284, ptr noundef %286)
  %290 = add nuw nsw i64 %283, 1
  %291 = load i32, ptr %44, align 8, !tbaa !147
  %292 = zext i32 %291 to i64
  %293 = icmp ult i64 %290, %292
  br i1 %293, label %282, label %294, !llvm.loop !329

294:                                              ; preds = %282, %113
  %295 = load ptr, ptr %45, align 8, !tbaa !124
  %296 = load ptr, ptr %295, align 8, !tbaa !91
  %297 = getelementptr inbounds ptr, ptr %296, i64 3
  %298 = load ptr, ptr %297, align 8
  call void %298(ptr noundef nonnull align 8 dereferenceable(8) %295, ptr noundef %52)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #8

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %7)
          to label %18 unwind label %15

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #14
  unreachable

18:                                               ; preds = %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #15
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %21, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %25)
          to label %36 unwind label %33

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #14
  unreachable

36:                                               ; preds = %23, %27
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #15
  br label %37

37:                                               ; preds = %36, %19
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_76CMLeaf10isNullableEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #2 comdat align 2 !prof !330 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !130
  %4 = icmp eq i32 %3, -1
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !130
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %26, !prof !149

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !193
  %8 = icmp ult i32 %7, 65
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !195
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  br label %18

15:                                               ; preds = %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !196
  %17 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !197
  br label %27

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %22, %18 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !110
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  store i8 0, ptr %21, align 1, !tbaa !198
  %22 = add nuw nsw i64 %19, 1
  %23 = load i32, ptr %10, align 4, !tbaa !195
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %18, label %27, !llvm.loop !199

26:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %4)
  br label %27

27:                                               ; preds = %18, %9, %15, %26
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 !prof !332 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMLeaf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !130
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %26, !prof !333

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !193
  %8 = icmp ult i32 %7, 65
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !195
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  br label %18

15:                                               ; preds = %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !196
  %17 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !197
  br label %27

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %22, %18 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !110
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  store i8 0, ptr %21, align 1, !tbaa !198
  %22 = add nuw nsw i64 %19, 1
  %23 = load i32, ptr %10, align 4, !tbaa !195
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %18, label %27, !llvm.loop !199

26:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %4)
  br label %27

27:                                               ; preds = %18, %9, %15, %26
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 comdat align 2 !prof !267 {
  %5 = load i32, ptr %1, align 8, !tbaa !193
  %6 = icmp ult i32 %5, 65
  br i1 %6, label %7, label %14, !prof !334

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !196
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !197
  %12 = mul i32 %11, 31
  %13 = add i32 %12, %9
  br label %33

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !195
  %17 = add i32 %16, -1
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !110
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %22, %19 ], [ %31, %23 ]
  %25 = phi i32 [ 0, %19 ], [ %30, %23 ]
  %26 = getelementptr inbounds i8, ptr %21, i64 %24
  %27 = load i8, ptr %26, align 1, !tbaa !198
  %28 = zext i8 %27 to i32
  %29 = mul nsw i32 %25, 31
  %30 = add nsw i32 %29, %28
  %31 = add nsw i64 %24, -1
  %32 = icmp sgt i64 %24, 0
  br i1 %32, label %23, label %33, !llvm.loop !335

33:                                               ; preds = %23, %14, %7
  %34 = phi i32 [ %13, %7 ], [ 0, %14 ], [ %30, %23 ]
  %35 = urem i32 %34, %2
  ret i32 %35
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 !prof !336 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSeteqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715DFAContentModel12getNextStateEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel13gInvalidTransE, align 4, !tbaa !126
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 8, !tbaa !219
  %9 = icmp ugt i32 %8, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, %2
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.2, i32 noundef 234, i32 noundef 6, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %6
  %22 = getelementptr inbounds %"class.xercesc_2_7::DFAContentModel", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = zext i32 %2 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !126
  br label %30

30:                                               ; preds = %3, %21
  %31 = phi i32 [ %29, %21 ], [ %4, %3 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
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

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !91
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !91
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !340 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !341

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !152
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !342

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !152
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !343, !llvm.loop !344

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !320
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !322
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !345

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !326
  %24 = load i32, ptr %0, align 8, !tbaa !320
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !346
  %28 = load i32, ptr %0, align 8, !tbaa !320
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !320
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %3 = load i32, ptr %0, align 8, !tbaa !193
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5, !prof !347

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 11, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = icmp ult i32 %3, 65
  br i1 %13, label %14, label %26, !prof !347

14:                                               ; preds = %12
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = icmp ult i32 %1, 32
  br i1 %17, label %18, label %22, !prof !347

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !196
  %21 = or i32 %20, %16
  store i32 %21, ptr %19, align 8, !tbaa !196
  br label %42

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !197
  %25 = or i32 %24, %16
  store i32 %25, ptr %23, align 4, !tbaa !197
  br label %42

26:                                               ; preds = %12
  %27 = and i32 %1, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %1, 3
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !110
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !198
  %35 = trunc i32 %28 to i8
  %36 = xor i8 %35, -1
  %37 = and i8 %34, %36
  store i8 %37, ptr %33, align 1, !tbaa !198
  %38 = load ptr, ptr %30, align 8, !tbaa !110
  %39 = getelementptr inbounds i8, ptr %38, i64 %32
  %40 = load i8, ptr %39, align 1, !tbaa !198
  %41 = or i8 %40, %35
  store i8 %41, ptr %39, align 1, !tbaa !198
  br label %42

42:                                               ; preds = %18, %22, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMStateSeteqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 !prof !336 {
  %3 = load i32, ptr %0, align 8, !tbaa !193
  %4 = load i32, ptr %1, align 8, !tbaa !193
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %45, !prof !348

6:                                                ; preds = %2
  %7 = icmp ult i32 %3, 65
  br i1 %7, label %20, label %8, !prof !348

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !195
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  %17 = load i8, ptr %14, align 1, !tbaa !198
  %18 = load i8, ptr %16, align 1, !tbaa !198
  %19 = icmp eq i8 %17, %18
  br i1 %19, label %32, label %45

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !196
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !196
  %25 = icmp eq i32 %22, %24
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  %31 = select i1 %25, i1 %30, i1 false, !prof !349
  br label %45

32:                                               ; preds = %12, %36
  %33 = phi i32 [ %34, %36 ], [ 0, %12 ]
  %34 = add nuw i32 %33, 1
  %35 = icmp eq i32 %34, %10
  br i1 %35, label %43, label %36, !llvm.loop !350

36:                                               ; preds = %32
  %37 = zext i32 %34 to i64
  %38 = getelementptr inbounds i8, ptr %14, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !198
  %40 = getelementptr inbounds i8, ptr %16, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !198
  %42 = icmp eq i8 %39, %41
  br i1 %42, label %32, label %43, !llvm.loop !350

43:                                               ; preds = %36, %32
  %44 = icmp uge i32 %34, %10
  br label %45

45:                                               ; preds = %43, %12, %8, %2, %20
  %46 = phi i1 [ %31, %20 ], [ false, %2 ], [ %11, %8 ], [ %11, %12 ], [ %44, %43 ]
  ret i1 %46
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !106

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !179
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !183
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !91
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !133
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !182
  %21 = load i32, ptr %12, align 8, !tbaa !183
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !137

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !182
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !138
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !351, !llvm.loop !352
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !89 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !91
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !183
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !179
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !91
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !179
  store ptr %12, ptr %2, align 8, !tbaa !353
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !355
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !183
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = load ptr, ptr %2, align 8, !tbaa !353
  store ptr null, ptr %2, align 8, !tbaa !353
  store ptr %23, ptr %21, align 8, !tbaa !182
  store i32 %5, ptr %3, align 8, !tbaa !183
  %24 = load ptr, ptr %0, align 8, !tbaa !179
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !182
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !138
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !312
  %38 = load ptr, ptr %19, align 8, !tbaa !186
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !298
  %41 = load ptr, ptr %0, align 8, !tbaa !179
  %42 = load ptr, ptr %38, align 8, !tbaa !91
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !138
  store ptr %48, ptr %36, align 8, !tbaa !312
  store ptr %35, ptr %47, align 8, !tbaa !138
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !356

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !183
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !357

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !353
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !91
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
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !117 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = load ptr, ptr %2, align 8, !tbaa !91
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !222
  store ptr null, ptr %3, align 8, !tbaa !182
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !186
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !106

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !91
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15, !prof !358
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !185
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !106

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !183
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !137

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !185
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !182
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !359

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !312
  %23 = load i8, ptr %11, align 8, !tbaa !181, !range !102, !noundef !103
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !360

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !304
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !360

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #15
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !179
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !361
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !306, !llvm.loop !362

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !182
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !138
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !183
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !363, !llvm.loop !364

42:                                               ; preds = %1, %12
  ret void
}

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!88}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!35 = !{ptr @_ZN11xercesc_2_76CMLeafD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 293}
!36 = !{ptr @_ZN11xercesc_2_714HashCMStateSetD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 11}
!37 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 364}
!38 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 11}
!39 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, i64 11}
!40 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, i64 11}
!41 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, i64 11}
!42 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 160}
!43 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, i64 11}
!44 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE, i64 76}
!45 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, i64 76}
!46 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMStateSetC2ERKS0_, i64 11}
!47 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE10initializeEj, i64 11}
!48 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZNK11xercesc_2_710CMStateSet6getBitEj, i64 643}
!49 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv, i64 95}
!50 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, i64 62}
!51 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 171}
!52 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv, i64 11}
!53 = !{ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_76CMLeafD0Ev, i64 76}
!54 = !{ptr @_ZN11xercesc_2_715DFAContentModelC2EbPNS_15ContentSpecNodeEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715DFAContentModel8buildDFAEPNS_15ContentSpecNodeE, i64 11}
!55 = !{ptr @_ZN11xercesc_2_715DFAContentModelD0Ev, ptr @_ZN11xercesc_2_715DFAContentModelD2Ev, i64 11}
!56 = !{ptr @_ZN11xercesc_2_715DFAContentModelD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 11}
!57 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 135}
!58 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, i64 65}
!59 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, i64 124}
!60 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, i64 54}
!61 = !{ptr @_ZN11xercesc_2_715DFAContentModel15buildSyntaxTreeEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE, i64 16}
!62 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv, i64 134}
!63 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, i64 134}
!64 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv, i64 134}
!65 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv, i64 33}
!66 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 157}
!67 = !{ptr @_ZN11xercesc_2_715DFAContentModel17postTreeBuildInitEPNS_6CMNodeEj, ptr @_ZN11xercesc_2_76CMLeafC2EPNS_5QNameEjPNS_13MemoryManagerE, i64 157}
!68 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv, i64 140}
!69 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, i64 144}
!70 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv, i64 140}
!71 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 142}
!72 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 142}
!73 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE, i64 9}
!74 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE, i64 49}
!75 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZNK11xercesc_2_710CMStateSet6getBitEj, i64 590}
!76 = !{ptr @_ZN11xercesc_2_715DFAContentModel14calcFollowListEPNS_6CMNodeE, ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv, i64 17}
!77 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv, ptr @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE, i64 95}
!78 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3getEPKv, ptr @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_, i64 48}
!79 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, ptr @_ZN11xercesc_2_714HashCMStateSet10getHashValEPKvjPNS_13MemoryManagerE, i64 62}
!80 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE3putEPvPS1_, ptr @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_, i64 15}
!81 = !{ptr @_ZNK11xercesc_2_76CMLeaf12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, i64 76}
!82 = !{ptr @_ZNK11xercesc_2_76CMLeaf11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, i64 65}
!83 = !{ptr @_ZN11xercesc_2_714HashCMStateSet6equalsEPKvS2_, ptr @_ZNK11xercesc_2_710CMStateSeteqERKS0_, i64 63}
!84 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!85 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv, i64 11}
!86 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE7cleanupEv, ptr @_ZN11xercesc_2_714HashCMStateSetD0Ev, i64 11}
!87 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEE9removeAllEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 62}
!88 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!89 = !{!"function_entry_count", i64 0}
!90 = !{!"function_entry_count", i64 152}
!91 = !{!92, !92, i64 0}
!92 = !{!"vtable pointer", !93, i64 0}
!93 = !{!"Simple C++ TBAA"}
!94 = !{!95, !101, i64 60}
!95 = !{!"_ZTSN11xercesc_2_76CMLeafE", !96, i64 0, !97, i64 48, !100, i64 56, !101, i64 60}
!96 = !{!"_ZTSN11xercesc_2_76CMNodeE", !97, i64 8, !99, i64 16, !97, i64 24, !97, i64 32, !100, i64 40}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !93, i64 0}
!99 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !98, i64 0}
!100 = !{!"int", !98, i64 0}
!101 = !{!"bool", !98, i64 0}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = !{!"branch_weights", i32 141, i32 11}
!105 = !{!95, !97, i64 48}
!106 = !{!"branch_weights", i32 0, i32 11}
!107 = !{!"VP", i32 0, i64 11, i64 7173745605608799217, i64 11}
!108 = !{!96, !97, i64 24}
!109 = !{!"branch_weights", i32 76, i32 76}
!110 = !{!111, !97, i64 16}
!111 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !100, i64 0, !100, i64 4, !100, i64 8, !100, i64 12, !97, i64 16, !97, i64 24}
!112 = !{!"branch_weights", i32 76, i32 0}
!113 = !{!111, !97, i64 24}
!114 = !{!96, !97, i64 32}
!115 = !{!"branch_weights", i32 87, i32 65}
!116 = !{!"branch_weights", i32 65, i32 0}
!117 = !{!"function_entry_count", i64 11}
!118 = !{!119, !100, i64 32}
!119 = !{!"_ZTSN11xercesc_2_715DFAContentModelE", !120, i64 0, !97, i64 8, !97, i64 16, !100, i64 24, !101, i64 28, !100, i64 32, !97, i64 40, !97, i64 48, !97, i64 56, !100, i64 64, !97, i64 72, !97, i64 80, !97, i64 88, !100, i64 96, !101, i64 100, !101, i64 101, !97, i64 104, !97, i64 112}
!120 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!121 = !{!119, !101, i64 100}
!122 = !{!119, !101, i64 101}
!123 = !{!119, !97, i64 104}
!124 = !{!119, !97, i64 112}
!125 = !{!"branch_weights", i32 11, i32 0}
!126 = !{!100, !100, i64 0}
!127 = !{!96, !97, i64 8}
!128 = !{!96, !99, i64 16}
!129 = !{!96, !100, i64 40}
!130 = !{!95, !100, i64 56}
!131 = !{!119, !97, i64 56}
!132 = !{!119, !100, i64 64}
!133 = !{!"VP", i32 0, i64 11, i64 8345045103670217670, i64 11}
!134 = !{!119, !97, i64 72}
!135 = !{!119, !97, i64 80}
!136 = !{!119, !97, i64 48}
!137 = !{!"branch_weights", i32 1, i32 175}
!138 = !{!97, !97, i64 0}
!139 = !{!"branch_weights", i32 1041, i32 175}
!140 = distinct !{!140, !141, !142}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !{!"llvm.loop.unroll.disable"}
!143 = !{!"VP", i32 0, i64 11, i64 4116827858891658780, i64 10, i64 -171872773832646926, i64 1}
!144 = !{!119, !101, i64 28}
!145 = !{!119, !97, i64 8}
!146 = !{!119, !97, i64 16}
!147 = !{!119, !100, i64 24}
!148 = !{!99, !99, i64 0}
!149 = !{!"branch_weights", i32 0, i32 76}
!150 = !{!"branch_weights", i32 1, i32 151}
!151 = !{!"branch_weights", i32 257, i32 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"short", !98, i64 0}
!154 = distinct !{!154, !141, !142}
!155 = !{!156, !100, i64 20}
!156 = !{!"_ZTSN11xercesc_2_75QNameE", !157, i64 0, !100, i64 8, !100, i64 12, !100, i64 16, !100, i64 20, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48}
!157 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!158 = !{!"branch_weights", i32 192, i32 65}
!159 = !{!156, !97, i64 32}
!160 = !{!"branch_weights", i32 0, i32 192}
!161 = !{!"branch_weights", i32 12, i32 180}
!162 = !{!"branch_weights", i32 0, i32 12}
!163 = !{!"branch_weights", i32 363, i32 151}
!164 = distinct !{!164, !141, !142}
!165 = distinct !{!165, !141, !142}
!166 = !{!119, !97, i64 40}
!167 = !{!119, !97, i64 88}
!168 = !{!"VP", i32 0, i64 11, i64 -4273712280559351836, i64 11}
!169 = distinct !{!169, !141, !142}
!170 = !{!"branch_weights", i32 590, i32 0}
!171 = !{!"branch_weights", i32 460, i32 130}
!172 = !{!"branch_weights", i32 0, i32 460}
!173 = !{!"branch_weights", i32 383, i32 1}
!174 = !{!"branch_weights", i32 76, i32 478}
!175 = !{!"branch_weights", i32 171, i32 383}
!176 = !{!"branch_weights", i32 1029, i32 151}
!177 = distinct !{!177, !141, !142}
!178 = distinct !{!178, !141, !142}
!179 = !{!180, !97, i64 0}
!180 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLIntegerEEE", !97, i64 0, !101, i64 8, !97, i64 16, !100, i64 24, !100, i64 28, !100, i64 32, !97, i64 40}
!181 = !{!180, !101, i64 8}
!182 = !{!180, !97, i64 16}
!183 = !{!180, !100, i64 24}
!184 = !{!180, !100, i64 28}
!185 = !{!180, !100, i64 32}
!186 = !{!180, !97, i64 40}
!187 = !{!"branch_weights", i32 62, i32 11}
!188 = distinct !{!188, !141, !142}
!189 = !{!101, !101, i64 0}
!190 = !{!"branch_weights", i32 1, i32 145}
!191 = !{!"branch_weights", i32 73, i32 497}
!192 = !{!"branch_weights", i32 73, i32 0}
!193 = !{!111, !100, i64 0}
!194 = !{!"branch_weights", i32 497, i32 0}
!195 = !{!111, !100, i64 4}
!196 = !{!111, !100, i64 8}
!197 = !{!111, !100, i64 12}
!198 = !{!98, !98, i64 0}
!199 = distinct !{!199, !141, !142}
!200 = !{!"branch_weights", i32 1, i32 569}
!201 = !{!"branch_weights", i32 114, i32 456}
!202 = !{!"branch_weights", i32 114, i32 0}
!203 = distinct !{!203, !141, !142}
!204 = !{!"branch_weights", i32 569, i32 1}
!205 = distinct !{!205, !141, !142}
!206 = !{!"branch_weights", i32 570, i32 0}
!207 = !{!"branch_weights", i32 475, i32 95}
!208 = distinct !{!208, !141, !142}
!209 = !{!"branch_weights", i32 62, i32 33}
!210 = !{!211, !100, i64 0}
!211 = !{!"_ZTSN11xercesc_2_710XMLIntegerE", !100, i64 0}
!212 = !{!"VP", i32 0, i64 62, i64 8345045103670217670, i64 62}
!213 = !{!"branch_weights", i32 1, i32 247}
!214 = !{!"branch_weights", i32 1729, i32 247}
!215 = !{!"branch_weights", i32 0, i32 95}
!216 = distinct !{!216, !141, !142}
!217 = !{!"branch_weights", i32 995, i32 145}
!218 = distinct !{!218, !141, !142}
!219 = !{!119, !100, i64 96}
!220 = !{!"VP", i32 0, i64 11, i64 -6195330049133800025, i64 11}
!221 = distinct !{!221, !141, !142}
!222 = !{!"VP", i32 0, i64 11, i64 -7405368087501025645, i64 11}
!223 = !{!"branch_weights", i32 0, i32 73}
!224 = !{!"branch_weights", i32 175, i32 993}
!225 = distinct !{!225, !141, !142}
!226 = !{!"VP", i32 0, i64 76, i64 6977671972959571951, i64 76}
!227 = distinct !{!227, !141, !142}
!228 = !{!"VP", i32 0, i64 73, i64 -7405368087501025645, i64 73}
!229 = !{!"branch_weights", i32 993, i32 175}
!230 = distinct !{!230, !141, !142}
!231 = !{!"VP", i32 0, i64 76, i64 7173745605608799217, i64 76}
!232 = distinct !{!232, !141, !142}
!233 = !{!"function_entry_count", i64 256331}
!234 = !{!"branch_weights", i32 110792, i32 145539}
!235 = !{!"branch_weights", i32 665441, i32 0}
!236 = !{!"branch_weights", i32 560074, i32 105367}
!237 = !{!"branch_weights", i32 0, i32 105367}
!238 = !{!"branch_weights", i32 0, i32 1}
!239 = !{!"branch_weights", i32 2307453, i32 0}
!240 = !{!"branch_weights", i32 0, i32 2307453}
!241 = !{!"branch_weights", i32 1642011, i32 1}
!242 = !{!"branch_weights", i32 665441, i32 4452928}
!243 = !{!"branch_weights", i32 3476358, i32 1642011}
!244 = !{!"branch_weights", i32 0, i32 665441}
!245 = !{!"branch_weights", i32 1642012, i32 665441}
!246 = distinct !{!246, !141, !142}
!247 = !{!"branch_weights", i32 0, i32 665441, i32 0}
!248 = !{!"branch_weights", i32 145539, i32 519902}
!249 = distinct !{!249, !141, !142}
!250 = !{!"branch_weights", i32 0, i32 145539}
!251 = !{!252, !97, i64 0}
!252 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !97, i64 0, !97, i64 8}
!253 = !{!252, !97, i64 8}
!254 = distinct !{!254, !141, !142}
!255 = distinct !{!255, !141, !142}
!256 = !{!"function_entry_count", i64 135}
!257 = !{!258, !99, i64 48}
!258 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !157, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !99, i64 48, !101, i64 52, !101, i64 53, !100, i64 56, !100, i64 60}
!259 = !{!"branch_weights", i32 0, i32 135}
!260 = !{!258, !97, i64 16}
!261 = !{!"branch_weights", i32 65, i32 70}
!262 = !{!258, !97, i64 32}
!263 = !{!"branch_weights", i32 54, i32 16}
!264 = !{!258, !97, i64 40}
!265 = !{!"branch_weights", i32 54, i32 0}
!266 = !{!"branch_weights", i32 16, i32 0}
!267 = !{!"function_entry_count", i64 157}
!268 = !{!"branch_weights", i32 92, i32 0, i32 0, i32 0, i32 2, i32 63}
!269 = !{!"branch_weights", i32 16, i32 76}
!270 = !{!"function_entry_count", i64 441}
!271 = !{!"branch_weights", i32 0, i32 441}
!272 = !{!"branch_weights", i32 441, i32 0}
!273 = !{!"branch_weights", i32 92, i32 2, i32 63}
!274 = !{!"branch_weights", i32 61, i32 2}
!275 = !{!"branch_weights", i32 61, i32 0}
!276 = !{!"VP", i32 0, i64 61, i64 3129422713079703786, i64 52, i64 8485140935668277144, i64 9}
!277 = !{!"VP", i32 0, i64 61, i64 8664271339341851308, i64 49, i64 -6675604480922784931, i64 12}
!278 = !{!"branch_weights", i32 1, i32 251}
!279 = !{!"branch_weights", i32 95, i32 411}
!280 = !{!"branch_weights", i32 95, i32 0}
!281 = !{!"branch_weights", i32 1773, i32 251}
!282 = distinct !{!282, !141, !142}
!283 = !{!"branch_weights", i32 4, i32 88}
!284 = !{!"branch_weights", i32 4, i32 0}
!285 = !{!"VP", i32 0, i64 4, i64 -6675604480922784931, i64 4}
!286 = !{!"VP", i32 0, i64 4, i64 -1811503911290508545, i64 4}
!287 = !{!"branch_weights", i32 1, i32 127}
!288 = !{!"branch_weights", i32 6, i32 25}
!289 = !{!"branch_weights", i32 6, i32 0}
!290 = !{!"branch_weights", i32 865, i32 127}
!291 = distinct !{!291, !141, !142}
!292 = !{!"branch_weights", i32 12, i32 76}
!293 = !{!"function_entry_count", i64 1180}
!294 = !{!"branch_weights", i32 1180, i32 0}
!295 = !{!"function_entry_count", i64 95}
!296 = !{!"VP", i32 0, i64 95, i64 8531078682986229641, i64 95}
!297 = !{!"branch_weights", i32 14, i32 48}
!298 = !{!299, !97, i64 16}
!299 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLIntegerEEE", !97, i64 0, !97, i64 8, !97, i64 16}
!300 = !{!"VP", i32 0, i64 48, i64 -7188554910281611075, i64 48}
!301 = !{!"branch_weights", i32 33, i32 15}
!302 = !{!"branch_weights", i32 48, i32 0}
!303 = distinct !{!303, !141, !142}
!304 = !{!299, !97, i64 0}
!305 = !{!"function_entry_count", i64 62}
!306 = !{!"branch_weights", i32 62, i32 0}
!307 = !{!"VP", i32 0, i64 62, i64 8531078682986229641, i64 62}
!308 = !{!"branch_weights", i32 47, i32 15}
!309 = !{!"VP", i32 0, i64 15, i64 -7188554910281611075, i64 15}
!310 = !{!"branch_weights", i32 0, i32 15}
!311 = !{!"branch_weights", i32 15, i32 0}
!312 = !{!299, !97, i64 8}
!313 = !{!"function_entry_count", i64 141}
!314 = !{!"branch_weights", i32 0, i32 141}
!315 = !{!"function_entry_count", i64 665441}
!316 = distinct !{!316, !141, !142}
!317 = distinct !{!317, !141, !142}
!318 = distinct !{!318, !141, !142}
!319 = distinct !{!319, !141, !142}
!320 = !{!321, !100, i64 0}
!321 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !100, i64 0, !100, i64 4, !100, i64 8, !101, i64 12, !97, i64 16, !97, i64 24, !97, i64 32}
!322 = !{!321, !100, i64 4}
!323 = !{!321, !100, i64 8}
!324 = !{!321, !101, i64 12}
!325 = !{!321, !97, i64 16}
!326 = !{!321, !97, i64 32}
!327 = distinct !{!327, !141, !142}
!328 = distinct !{!328, !141, !142}
!329 = distinct !{!329, !141, !142}
!330 = !{!"function_entry_count", i64 108}
!331 = !{!"function_entry_count", i64 76}
!332 = !{!"function_entry_count", i64 65}
!333 = !{!"branch_weights", i32 0, i32 65}
!334 = !{!"branch_weights", i32 157, i32 0}
!335 = distinct !{!335, !141, !142}
!336 = !{!"function_entry_count", i64 63}
!337 = !{!338, !97, i64 40}
!338 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !339, i64 8, !97, i64 16, !100, i64 24, !97, i64 32, !97, i64 40}
!339 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !98, i64 0}
!340 = !{!"function_entry_count", i64 789922}
!341 = !{!"branch_weights", i32 0, i32 789922}
!342 = !{!"branch_weights", i32 284, i32 789638}
!343 = !{!"branch_weights", i32 789638, i32 41628303}
!344 = distinct !{!344, !141, !142}
!345 = !{!"branch_weights", i32 789636, i32 2}
!346 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!347 = !{!"branch_weights", i32 141, i32 0}
!348 = !{!"branch_weights", i32 63, i32 0}
!349 = !{!"branch_weights", i32 33, i32 30}
!350 = distinct !{!350, !141, !142}
!351 = !{!"branch_weights", i32 175, i32 4689}
!352 = distinct !{!352, !141, !142}
!353 = !{!354, !97, i64 0}
!354 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10XMLIntegerEEEEE", !97, i64 0, !97, i64 8}
!355 = !{!354, !97, i64 8}
!356 = distinct !{!356, !141, !142}
!357 = distinct !{!357, !141, !142}
!358 = !{!"VP", i32 0, i64 11, i64 493944040492487424, i64 11}
!359 = !{!"branch_weights", i32 242, i32 62}
!360 = !{!"branch_weights", i32 0, i32 62}
!361 = !{!"VP", i32 0, i64 62, i64 -7405368087501025645, i64 62}
!362 = distinct !{!362, !141, !142}
!363 = !{!"branch_weights", i32 4689, i32 175}
!364 = distinct !{!364, !141, !142}

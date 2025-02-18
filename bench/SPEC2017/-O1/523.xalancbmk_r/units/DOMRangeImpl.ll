; ModuleID = 'DOMRangeImpl.cpp'
source_filename = "DOMRangeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMRangeImpl" = type { %"class.xercesc_2_7::DOMRange", ptr, i64, ptr, i64, i8, ptr, i8, ptr, ptr }
%"class.xercesc_2_7::DOMRange" = type { ptr }
%"class.xercesc_2_7::RefVectorOf" = type { %"class.xercesc_2_7::BaseRefVectorOf" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_78DOMRangeE = comdat any

$_ZTIN11xercesc_2_78DOMRangeE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_712DOMRangeImplE = dso_local unnamed_addr constant { [29 x ptr] } { [29 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMRangeImplE, ptr @_ZN11xercesc_2_712DOMRangeImplD2Ev, ptr @_ZN11xercesc_2_712DOMRangeImplD0Ev, ptr @_ZNK11xercesc_2_712DOMRangeImpl17getStartContainerEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl14getStartOffsetEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl15getEndContainerEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl12getEndOffsetEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl12getCollapsedEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl26getCommonAncestorContainerEv, ptr @_ZN11xercesc_2_712DOMRangeImpl8setStartEPKNS_7DOMNodeEm, ptr @_ZN11xercesc_2_712DOMRangeImpl6setEndEPKNS_7DOMNodeEm, ptr @_ZN11xercesc_2_712DOMRangeImpl14setStartBeforeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl13setStartAfterEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl12setEndBeforeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl11setEndAfterEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl8collapseEb, ptr @_ZN11xercesc_2_712DOMRangeImpl10selectNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl18selectNodeContentsEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_712DOMRangeImpl21compareBoundaryPointsENS_8DOMRange10CompareHowEPKS1_, ptr @_ZN11xercesc_2_712DOMRangeImpl14deleteContentsEv, ptr @_ZN11xercesc_2_712DOMRangeImpl15extractContentsEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl13cloneContentsEv, ptr @_ZN11xercesc_2_712DOMRangeImpl10insertNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl16surroundContentsEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_712DOMRangeImpl10cloneRangeEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl8toStringEv, ptr @_ZN11xercesc_2_712DOMRangeImpl6detachEv, ptr @_ZN11xercesc_2_712DOMRangeImpl7releaseEv] }, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTIN11xercesc_2_717DOMRangeExceptionE = external constant ptr
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DOMRangeImplE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMRangeImplE\00", align 1
@_ZTSN11xercesc_2_78DOMRangeE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78DOMRangeE\00", comdat, align 1
@_ZTIN11xercesc_2_78DOMRangeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78DOMRangeE }, comdat, align 8
@_ZTIN11xercesc_2_712DOMRangeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMRangeImplE, ptr @_ZTIN11xercesc_2_78DOMRangeE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7DOMNodeEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712DOMRangeImplC1EPNS_11DOMDocumentEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DOMRangeImplC2EPNS_11DOMDocumentEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DOMRangeImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DOMRangeImplC2ERKS0_
@_ZN11xercesc_2_712DOMRangeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMRangeImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplC2EPNS_11DOMDocumentEPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMRangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  store ptr %7, ptr %4, align 8, !tbaa !41
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 0, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  store i8 0, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  store ptr %2, ptr %15, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1) unnamed_addr #2 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMRangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  store ptr %5, ptr %3, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !48
  store i64 %8, ptr %6, align 8, !tbaa !48
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  store ptr %11, ptr %9, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !50
  store i64 %14, ptr %12, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !51, !range !56, !noundef !57
  store i8 %17, ptr %15, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  store ptr %20, ptr %18, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 8, !tbaa !53, !range !56, !noundef !57
  store i8 %23, ptr %21, align 8, !tbaa !53
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  store ptr %26, ptr %24, align 8, !tbaa !54
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  store ptr %29, ptr %27, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 !prof !37 {
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl17getStartContainerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  ret ptr %14
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl14getStartOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !48
  ret i64 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl15getEndContainerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl12getEndOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !50
  ret i64 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl12getCollapsedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %14, %16
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %19, %21
  %23 = select i1 %17, i1 %22, i1 false
  ret i1 %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl17setStartContainerEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl14setStartOffsetEm(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %1, ptr %14, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl15setEndContainerEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %14, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl12setEndOffsetEm(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %1, ptr %14, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl8setStartEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl10checkIndexEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 24
  %15 = select i1 %13, ptr null, ptr %14
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %21, align 8, !tbaa !51
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 4, ptr noundef null, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #17
  resume { ptr, i32 } %27

28:                                               ; preds = %11, %3
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %29, align 8, !tbaa !41
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %2, ptr %30, align 8, !tbaa !48
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %32)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds ptr, ptr %36, i64 14
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load ptr, ptr %0, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0)
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 14
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %51

49:                                               ; preds = %39
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %50, align 8, !tbaa !51
  br label %51

51:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %34, label %15

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 11, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %35

15:                                               ; preds = %6, %21
  %16 = phi ptr [ %25, %21 ], [ %1, %6 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef signext i16 %19(ptr noundef nonnull align 8 dereferenceable(8) %16)
  switch i16 %20, label %21 [
    i16 12, label %27
    i16 10, label %27
    i16 6, label %27
  ]

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %15, !llvm.loop !58

27:                                               ; preds = %15, %15, %15
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef 2, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %35

34:                                               ; preds = %21, %6
  ret void

35:                                               ; preds = %32, %13
  %36 = phi ptr [ %28, %32 ], [ %9, %13 ]
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %36) #17
  resume { ptr, i32 } %37
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_712DOMRangeImpl10checkIndexEPKNS_7DOMNodeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %7, label %38 [
    i16 8, label %8
    i16 7, label %8
    i16 4, label %8
    i16 3, label %8
  ]

8:                                                ; preds = %3, %3, %3, %3
  %9 = load ptr, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = load i16, ptr %12, align 2, !tbaa !61
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %12, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !61
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !63

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %12 to i64
  %25 = sub i64 %23, %24
  %26 = lshr exact i64 %25, 1
  %27 = and i64 %26, 4294967295
  br label %28

28:                                               ; preds = %8, %14, %22
  %29 = phi i64 [ %27, %22 ], [ 0, %14 ], [ 0, %8 ]
  %30 = icmp ult i64 %29, %2
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %32, i16 noundef signext 1, ptr noundef null, ptr noundef %34)
          to label %35 unwind label %36

35:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %64

38:                                               ; preds = %3
  %39 = load ptr, ptr %1, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 7
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %38, %44
  %45 = phi i64 [ %51, %44 ], [ 0, %38 ]
  %46 = phi ptr [ %50, %44 ], [ %42, %38 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 10
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %51 = add i64 %45, 1
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %44, !llvm.loop !64

53:                                               ; preds = %44, %38
  %54 = phi i64 [ 0, %38 ], [ %51, %44 ]
  %55 = icmp ult i64 %54, %2
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %57, i16 noundef signext 1, ptr noundef null, ptr noundef %59)
          to label %60 unwind label %61

60:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %64

63:                                               ; preds = %53, %28
  ret void

64:                                               ; preds = %61, %36
  %65 = phi ptr [ %57, %61 ], [ %32, %36 ]
  %66 = phi { ptr, i32 } [ %62, %61 ], [ %37, %36 ]
  tail call void @__cxa_free_exception(ptr %65) #17
  resume { ptr, i32 } %66
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::RefVectorOf", align 8
  %5 = alloca %"class.xercesc_2_7::RefVectorOf", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 8, !tbaa !53, !range !56, !noundef !57
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 11, ptr noundef null, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #17
  br label %117

16:                                               ; preds = %3
  %17 = icmp eq ptr %1, %2
  br i1 %17, label %115, label %18

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 1
  store i8 0, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  store i32 0, ptr %24, align 4, !tbaa !81
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 3
  store i32 1, ptr %25, align 8, !tbaa !82
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  store ptr null, ptr %26, align 8, !tbaa !83
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  store ptr %22, ptr %27, align 8, !tbaa !84
  %28 = load ptr, ptr %22, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 8)
  store ptr %31, ptr %26, align 8, !tbaa !83
  store ptr null, ptr %31, align 8, !tbaa !85
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %36, %18
  %33 = phi ptr [ %1, %18 ], [ %45, %36 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %36 unwind label %46

36:                                               ; preds = %35
  %37 = load ptr, ptr %26, align 8, !tbaa !83
  %38 = load i32, ptr %24, align 4, !tbaa !81
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  store ptr %33, ptr %40, align 8, !tbaa !85
  %41 = add i32 %38, 1
  store i32 %41, ptr %24, align 4, !tbaa !81
  %42 = load ptr, ptr %33, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %32 unwind label %46, !llvm.loop !86

46:                                               ; preds = %35, %36
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %113

48:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %49 = load ptr, ptr %19, align 8, !tbaa !52
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %49, i64 0, i32 25
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !38
  %52 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 1
  store i8 0, ptr %52, align 8, !tbaa !79
  %53 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 2
  store i32 0, ptr %53, align 4, !tbaa !81
  %54 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 3
  store i32 1, ptr %54, align 8, !tbaa !82
  %55 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 4
  store ptr null, ptr %55, align 8, !tbaa !83
  %56 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 5
  store ptr %51, ptr %56, align 8, !tbaa !84
  %57 = load ptr, ptr %51, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 8)
          to label %61 unwind label %76

61:                                               ; preds = %48
  store ptr %60, ptr %55, align 8, !tbaa !83
  store ptr null, ptr %60, align 8, !tbaa !85
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !38
  br label %62

62:                                               ; preds = %61, %66
  %63 = phi ptr [ %2, %61 ], [ %75, %66 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %66 unwind label %78

66:                                               ; preds = %65
  %67 = load ptr, ptr %55, align 8, !tbaa !83
  %68 = load i32, ptr %53, align 4, !tbaa !81
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  store ptr %63, ptr %70, align 8, !tbaa !85
  %71 = add i32 %68, 1
  store i32 %71, ptr %53, align 4, !tbaa !81
  %72 = load ptr, ptr %63, align 8, !tbaa !38
  %73 = getelementptr inbounds ptr, ptr %72, i64 5
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %62 unwind label %78, !llvm.loop !87

76:                                               ; preds = %48
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %111

78:                                               ; preds = %65, %66
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %109

80:                                               ; preds = %62
  %81 = load i32, ptr %24, align 4, !tbaa !81
  %82 = load i32, ptr %53, align 4, !tbaa !81
  %83 = add i32 %82, -1
  %84 = add i32 %81, -1
  %85 = icmp sgt i32 %84, -1
  %86 = icmp sgt i32 %83, -1
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %94, label %107

88:                                               ; preds = %103
  %89 = add nsw i32 %96, -1
  %90 = add nsw i32 %95, -1
  %91 = icmp sgt i32 %95, 0
  %92 = icmp sgt i32 %96, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %107, !llvm.loop !88

94:                                               ; preds = %80, %88
  %95 = phi i32 [ %90, %88 ], [ %84, %80 ]
  %96 = phi i32 [ %89, %88 ], [ %83, %80 ]
  %97 = phi ptr [ %104, %88 ], [ null, %80 ]
  %98 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %95)
          to label %99 unwind label %105

99:                                               ; preds = %94
  %100 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %96)
          to label %101 unwind label %105

101:                                              ; preds = %99
  %102 = icmp eq ptr %98, %100
  br i1 %102, label %103, label %107

103:                                              ; preds = %101
  %104 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %95)
          to label %88 unwind label %105, !llvm.loop !88

105:                                              ; preds = %103, %99, %94
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %109

107:                                              ; preds = %88, %101, %80
  %108 = phi ptr [ null, %80 ], [ %104, %88 ], [ %97, %101 ]
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %115

109:                                              ; preds = %105, %78
  %110 = phi { ptr, i32 } [ %79, %78 ], [ %106, %105 ]
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %111

111:                                              ; preds = %109, %76
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %113

113:                                              ; preds = %111, %46
  %114 = phi { ptr, i32 } [ %47, %46 ], [ %112, %111 ]
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %117

115:                                              ; preds = %16, %107
  %116 = phi ptr [ %108, %107 ], [ %1, %16 ]
  ret ptr %116

117:                                              ; preds = %113, %14
  %118 = phi { ptr, i32 } [ %15, %14 ], [ %114, %113 ]
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl6setEndEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl10checkIndexEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 24
  %15 = select i1 %13, ptr null, ptr %14
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %21, align 8, !tbaa !51
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 4, ptr noundef null, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #17
  resume { ptr, i32 } %27

28:                                               ; preds = %11, %3
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %29, align 8, !tbaa !49
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %2, ptr %30, align 8, !tbaa !50
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %32)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds ptr, ptr %36, i64 14
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load ptr, ptr %0, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0)
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 14
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %51

49:                                               ; preds = %39
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %50, align 8, !tbaa !51
  br label %51

51:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl14setStartBeforeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %116

13:                                               ; preds = %2
  %14 = icmp eq ptr %1, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %26, %21 ], [ %1, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !89

32:                                               ; preds = %21, %15
  %33 = phi ptr [ %1, %15 ], [ %26, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef signext i16 %36(ptr noundef nonnull align 8 dereferenceable(8) %33)
  switch i16 %37, label %52 [
    i16 2, label %38
    i16 9, label %38
    i16 11, label %38
  ]

38:                                               ; preds = %32, %32, %32
  br i1 %14, label %52, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %1, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %43, label %44 [
    i16 9, label %52
    i16 11, label %52
    i16 2, label %52
    i16 6, label %52
    i16 12, label %52
  ]

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %1, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %76, label %59

52:                                               ; preds = %39, %39, %39, %39, %38, %32, %13, %39
  %53 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 2, ptr noundef null, ptr noundef %55)
          to label %56 unwind label %57

56:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %116

59:                                               ; preds = %44
  %60 = load ptr, ptr %45, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds i8, ptr %60, i64 24
  %63 = select i1 %61, ptr null, ptr %62
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 14
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %69, align 8, !tbaa !51
  %70 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %70, i16 noundef signext 4, ptr noundef null, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

74:                                               ; preds = %65
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %116

76:                                               ; preds = %59, %44
  %77 = load ptr, ptr %1, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !41
  br label %90

82:                                               ; preds = %90
  %83 = icmp eq i64 %93, 0
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %85 = select i1 %83, i64 0, i64 %92
  store i64 %85, ptr %84, align 8, !tbaa !48
  %86 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !49
  %88 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %87)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %103

90:                                               ; preds = %76, %90
  %91 = phi ptr [ %1, %76 ], [ %97, %90 ]
  %92 = phi i64 [ 0, %76 ], [ %93, %90 ]
  %93 = add i64 %92, 1
  %94 = load ptr, ptr %91, align 8, !tbaa !38
  %95 = getelementptr inbounds ptr, ptr %94, i64 9
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %91)
  %98 = icmp eq ptr %97, null
  br i1 %98, label %82, label %90, !llvm.loop !90

99:                                               ; preds = %82
  %100 = load ptr, ptr %0, align 8, !tbaa !38
  %101 = getelementptr inbounds ptr, ptr %100, i64 14
  %102 = load ptr, ptr %101, align 8
  tail call void %102(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %103

103:                                              ; preds = %99, %82
  %104 = load ptr, ptr %0, align 8, !tbaa !38
  %105 = getelementptr inbounds ptr, ptr %104, i64 17
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef signext i16 %106(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0)
  %108 = icmp eq i16 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load ptr, ptr %0, align 8, !tbaa !38
  %111 = getelementptr inbounds ptr, ptr %110, i64 14
  %112 = load ptr, ptr %111, align 8
  tail call void %112(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %115

113:                                              ; preds = %103
  %114 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %114, align 8, !tbaa !51
  br label %115

115:                                              ; preds = %113, %109
  ret void

116:                                              ; preds = %74, %57, %11
  %117 = phi ptr [ %70, %74 ], [ %53, %57 ], [ %7, %11 ]
  %118 = phi { ptr, i32 } [ %75, %74 ], [ %58, %57 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %117) #17
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl21hasLegalRootContainerEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %1, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !89

21:                                               ; preds = %10, %4
  %22 = phi ptr [ %1, %4 ], [ %15, %10 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef signext i16 %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = icmp ult i16 %26, 12
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = trunc i16 %26 to i12
  %30 = lshr i12 -1532, %29
  %31 = and i12 %30, 1
  %32 = icmp ne i12 %31, 0
  br label %33

33:                                               ; preds = %21, %28, %2
  %34 = phi i1 [ false, %2 ], [ %32, %28 ], [ false, %21 ]
  ret i1 %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp ult i16 %8, 13
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = trunc i16 %8 to i13
  %12 = lshr i13 1467, %11
  %13 = and i13 %12, 1
  %14 = icmp ne i13 %13, 0
  br label %15

15:                                               ; preds = %4, %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ], [ true, %4 ]
  ret i1 %16
}

declare void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717DOMRangeExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl13setStartAfterEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %114

13:                                               ; preds = %2
  %14 = icmp eq ptr %1, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %26, %21 ], [ %1, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !89

32:                                               ; preds = %21, %15
  %33 = phi ptr [ %1, %15 ], [ %26, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef signext i16 %36(ptr noundef nonnull align 8 dereferenceable(8) %33)
  switch i16 %37, label %52 [
    i16 2, label %38
    i16 9, label %38
    i16 11, label %38
  ]

38:                                               ; preds = %32, %32, %32
  br i1 %14, label %52, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %1, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %43, label %44 [
    i16 9, label %52
    i16 11, label %52
    i16 2, label %52
    i16 6, label %52
    i16 12, label %52
  ]

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %1, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %76, label %59

52:                                               ; preds = %39, %39, %39, %39, %38, %32, %13, %39
  %53 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 2, ptr noundef null, ptr noundef %55)
          to label %56 unwind label %57

56:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %114

59:                                               ; preds = %44
  %60 = load ptr, ptr %45, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds i8, ptr %60, i64 24
  %63 = select i1 %61, ptr null, ptr %62
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 14
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %69, align 8, !tbaa !51
  %70 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %70, i16 noundef signext 4, ptr noundef null, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

74:                                               ; preds = %65
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %114

76:                                               ; preds = %59, %44
  %77 = load ptr, ptr %1, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !41
  br label %88

82:                                               ; preds = %88
  %83 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %91, ptr %83, align 8, !tbaa !48
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %85)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %101

88:                                               ; preds = %76, %88
  %89 = phi ptr [ %1, %76 ], [ %95, %88 ]
  %90 = phi i64 [ 0, %76 ], [ %91, %88 ]
  %91 = add i64 %90, 1
  %92 = load ptr, ptr %89, align 8, !tbaa !38
  %93 = getelementptr inbounds ptr, ptr %92, i64 9
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %89)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %82, label %88, !llvm.loop !91

97:                                               ; preds = %82
  %98 = load ptr, ptr %0, align 8, !tbaa !38
  %99 = getelementptr inbounds ptr, ptr %98, i64 14
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %101

101:                                              ; preds = %97, %82
  %102 = load ptr, ptr %0, align 8, !tbaa !38
  %103 = getelementptr inbounds ptr, ptr %102, i64 17
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef signext i16 %104(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0)
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load ptr, ptr %0, align 8, !tbaa !38
  %109 = getelementptr inbounds ptr, ptr %108, i64 14
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %113

111:                                              ; preds = %101
  %112 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %112, align 8, !tbaa !51
  br label %113

113:                                              ; preds = %111, %107
  ret void

114:                                              ; preds = %74, %57, %11
  %115 = phi ptr [ %70, %74 ], [ %53, %57 ], [ %7, %11 ]
  %116 = phi { ptr, i32 } [ %75, %74 ], [ %58, %57 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %115) #17
  resume { ptr, i32 } %116
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl12setEndBeforeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %116

13:                                               ; preds = %2
  %14 = icmp eq ptr %1, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %26, %21 ], [ %1, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !89

32:                                               ; preds = %21, %15
  %33 = phi ptr [ %1, %15 ], [ %26, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef signext i16 %36(ptr noundef nonnull align 8 dereferenceable(8) %33)
  switch i16 %37, label %52 [
    i16 2, label %38
    i16 9, label %38
    i16 11, label %38
  ]

38:                                               ; preds = %32, %32, %32
  br i1 %14, label %52, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %1, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %43, label %44 [
    i16 9, label %52
    i16 11, label %52
    i16 2, label %52
    i16 6, label %52
    i16 12, label %52
  ]

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %1, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %76, label %59

52:                                               ; preds = %39, %39, %39, %39, %38, %32, %13, %39
  %53 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 2, ptr noundef null, ptr noundef %55)
          to label %56 unwind label %57

56:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %116

59:                                               ; preds = %44
  %60 = load ptr, ptr %45, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds i8, ptr %60, i64 24
  %63 = select i1 %61, ptr null, ptr %62
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 14
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %69, align 8, !tbaa !51
  %70 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %70, i16 noundef signext 4, ptr noundef null, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

74:                                               ; preds = %65
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %116

76:                                               ; preds = %59, %44
  %77 = load ptr, ptr %1, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %80, ptr %81, align 8, !tbaa !49
  br label %90

82:                                               ; preds = %90
  %83 = icmp eq i64 %97, 0
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %85 = select i1 %83, i64 0, i64 %92
  store i64 %85, ptr %84, align 8, !tbaa !50
  %86 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !41
  %88 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %87)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %103

90:                                               ; preds = %76, %90
  %91 = phi ptr [ %1, %76 ], [ %96, %90 ]
  %92 = phi i64 [ 0, %76 ], [ %97, %90 ]
  %93 = load ptr, ptr %91, align 8, !tbaa !38
  %94 = getelementptr inbounds ptr, ptr %93, i64 9
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %91)
  %97 = add i64 %92, 1
  %98 = icmp eq ptr %96, null
  br i1 %98, label %82, label %90, !llvm.loop !92

99:                                               ; preds = %82
  %100 = load ptr, ptr %0, align 8, !tbaa !38
  %101 = getelementptr inbounds ptr, ptr %100, i64 14
  %102 = load ptr, ptr %101, align 8
  tail call void %102(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %103

103:                                              ; preds = %99, %82
  %104 = load ptr, ptr %0, align 8, !tbaa !38
  %105 = getelementptr inbounds ptr, ptr %104, i64 17
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef signext i16 %106(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0)
  %108 = icmp eq i16 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load ptr, ptr %0, align 8, !tbaa !38
  %111 = getelementptr inbounds ptr, ptr %110, i64 14
  %112 = load ptr, ptr %111, align 8
  tail call void %112(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %115

113:                                              ; preds = %103
  %114 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %114, align 8, !tbaa !51
  br label %115

115:                                              ; preds = %113, %109
  ret void

116:                                              ; preds = %74, %57, %11
  %117 = phi ptr [ %70, %74 ], [ %53, %57 ], [ %7, %11 ]
  %118 = phi { ptr, i32 } [ %75, %74 ], [ %58, %57 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %117) #17
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl11setEndAfterEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %114

13:                                               ; preds = %2
  %14 = icmp eq ptr %1, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %26, %21 ], [ %1, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !89

32:                                               ; preds = %21, %15
  %33 = phi ptr [ %1, %15 ], [ %26, %21 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef signext i16 %36(ptr noundef nonnull align 8 dereferenceable(8) %33)
  switch i16 %37, label %52 [
    i16 2, label %38
    i16 9, label %38
    i16 11, label %38
  ]

38:                                               ; preds = %32, %32, %32
  br i1 %14, label %52, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %1, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %43, label %44 [
    i16 9, label %52
    i16 11, label %52
    i16 2, label %52
    i16 6, label %52
    i16 12, label %52
  ]

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %1, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %76, label %59

52:                                               ; preds = %39, %39, %39, %39, %38, %32, %13, %39
  %53 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef 2, ptr noundef null, ptr noundef %55)
          to label %56 unwind label %57

56:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %114

59:                                               ; preds = %44
  %60 = load ptr, ptr %45, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds i8, ptr %60, i64 24
  %63 = select i1 %61, ptr null, ptr %62
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %0, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 14
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %69, align 8, !tbaa !51
  %70 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %70, i16 noundef signext 4, ptr noundef null, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

74:                                               ; preds = %65
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %114

76:                                               ; preds = %59, %44
  %77 = load ptr, ptr %1, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %80, ptr %81, align 8, !tbaa !49
  br label %88

82:                                               ; preds = %88
  %83 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %95, ptr %83, align 8, !tbaa !50
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !41
  %86 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %85)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %101

88:                                               ; preds = %76, %88
  %89 = phi ptr [ %1, %76 ], [ %94, %88 ]
  %90 = phi i64 [ 0, %76 ], [ %95, %88 ]
  %91 = load ptr, ptr %89, align 8, !tbaa !38
  %92 = getelementptr inbounds ptr, ptr %91, i64 9
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %89)
  %95 = add i64 %90, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %82, label %88, !llvm.loop !93

97:                                               ; preds = %82
  %98 = load ptr, ptr %0, align 8, !tbaa !38
  %99 = getelementptr inbounds ptr, ptr %98, i64 14
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %101

101:                                              ; preds = %97, %82
  %102 = load ptr, ptr %0, align 8, !tbaa !38
  %103 = getelementptr inbounds ptr, ptr %102, i64 17
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef signext i16 %104(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0)
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load ptr, ptr %0, align 8, !tbaa !38
  %109 = getelementptr inbounds ptr, ptr %108, i64 14
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %113

111:                                              ; preds = %101
  %112 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %112, align 8, !tbaa !51
  br label %113

113:                                              ; preds = %111, %107
  ret void

114:                                              ; preds = %74, %57, %11
  %115 = phi ptr [ %70, %74 ], [ %53, %57 ], [ %7, %11 ]
  %116 = phi { ptr, i32 } [ %75, %74 ], [ %58, %57 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %115) #17
  resume { ptr, i32 } %116
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 84
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(293) %14, ptr noundef nonnull %0)
  store i8 1, ptr %2, align 8, !tbaa !53
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  store i8 1, ptr %19, align 8, !tbaa !51
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl8collapseEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  br i1 %1, label %14, label %21

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %19, ptr %20, align 8, !tbaa !50
  br label %28

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !41
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %26, ptr %27, align 8, !tbaa !48
  br label %28

28:                                               ; preds = %21, %14
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %29, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl10selectNodeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %8, label %9 [
    i16 9, label %14
    i16 11, label %14
    i16 2, label %14
    i16 6, label %14
    i16 12, label %14
  ]

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %13, label %48 [
    i16 8, label %21
    i16 7, label %21
    i16 4, label %21
    i16 3, label %21
  ]

14:                                               ; preds = %4, %4, %4, %4, %2, %4
  %15 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 2, ptr noundef null, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %9, %9, %9, %9
  %22 = icmp eq i16 %13, 7
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !41
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %24, align 8, !tbaa !49
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %25, align 8, !tbaa !48
  %26 = load ptr, ptr %1, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 41
  %28 = load ptr, ptr %27, align 8
  br i1 %22, label %29, label %46

29:                                               ; preds = %21
  %30 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %79, label %32

32:                                               ; preds = %29
  %33 = load i16, ptr %30, align 2, !tbaa !61
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %32, %35
  %36 = phi ptr [ %37, %35 ], [ %30, %32 ]
  %37 = getelementptr inbounds i16, ptr %36, i64 1
  %38 = load i16, ptr %37, align 2, !tbaa !61
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %35, !llvm.loop !63

40:                                               ; preds = %35
  %41 = ptrtoint ptr %37 to i64
  %42 = ptrtoint ptr %30 to i64
  %43 = sub i64 %41, %42
  %44 = lshr exact i64 %43, 1
  %45 = and i64 %44, 4294967295
  br label %79

46:                                               ; preds = %21
  %47 = tail call noundef i64 %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %79

48:                                               ; preds = %9
  %49 = load ptr, ptr %1, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %52, ptr %55, align 8, !tbaa !41
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %52, ptr %56, align 8, !tbaa !49
  %57 = load ptr, ptr %52, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 7
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %61 = icmp ne ptr %60, null
  %62 = icmp ne ptr %60, %1
  %63 = and i1 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %68, %54
  %65 = phi i64 [ 0, %54 ], [ %71, %68 ]
  %66 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %65, ptr %66, align 8, !tbaa !48
  %67 = add i64 %65, 1
  br label %79

68:                                               ; preds = %54, %68
  %69 = phi ptr [ %75, %68 ], [ %60, %54 ]
  %70 = phi i64 [ %71, %68 ], [ 0, %54 ]
  %71 = add i64 %70, 1
  %72 = load ptr, ptr %69, align 8, !tbaa !38
  %73 = getelementptr inbounds ptr, ptr %72, i64 10
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %69)
  %76 = icmp ne ptr %75, null
  %77 = icmp ne ptr %75, %1
  %78 = and i1 %76, %77
  br i1 %78, label %68, label %64, !llvm.loop !94

79:                                               ; preds = %40, %32, %29, %46, %64
  %80 = phi i64 [ %67, %64 ], [ %47, %46 ], [ %45, %40 ], [ 0, %32 ], [ 0, %29 ]
  %81 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %80, ptr %81, align 8, !tbaa !50
  br label %82

82:                                               ; preds = %79, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl18selectNodeContentsEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %5, align 8, !tbaa !48
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %9, label %35 [
    i16 8, label %10
    i16 4, label %10
    i16 3, label %10
    i16 7, label %15
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load ptr, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 41
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i64 %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %50

15:                                               ; preds = %2
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 41
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %15
  %22 = load i16, ptr %19, align 2, !tbaa !61
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %26, %24 ], [ %19, %21 ]
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !61
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %24, !llvm.loop !63

29:                                               ; preds = %24
  %30 = ptrtoint ptr %26 to i64
  %31 = ptrtoint ptr %19 to i64
  %32 = sub i64 %30, %31
  %33 = lshr exact i64 %32, 1
  %34 = and i64 %33, 4294967295
  br label %50

35:                                               ; preds = %2
  %36 = load ptr, ptr %1, align 8, !tbaa !38
  %37 = getelementptr inbounds ptr, ptr %36, i64 7
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %48, %41 ], [ %39, %35 ]
  %43 = phi i64 [ %44, %41 ], [ 0, %35 ]
  %44 = add i64 %43, 1
  %45 = load ptr, ptr %42, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 10
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %42)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41, !llvm.loop !95

50:                                               ; preds = %41, %35, %29, %21, %15, %10
  %51 = phi i64 [ %14, %10 ], [ %34, %29 ], [ 0, %21 ], [ 0, %15 ], [ 0, %35 ], [ %44, %41 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %51, ptr %52, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl16surroundContentsEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !53, !range !56, !noundef !57
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 11, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %108

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %24, i16 noundef signext 4, ptr noundef null, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %108

30:                                               ; preds = %15
  %31 = load ptr, ptr %1, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef signext i16 %33(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %35 = load ptr, ptr %1, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef signext i16 %37(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %39 = icmp ugt i16 %38, 12
  %40 = trunc i16 %38 to i13
  %41 = lshr i13 1467, %40
  %42 = and i13 %41, 1
  %43 = icmp ne i13 %42, 0
  %44 = select i1 %39, i1 true, i1 %43
  %45 = icmp ne i16 %34, 10
  %46 = and i1 %45, %44
  br i1 %46, label %54, label %47

47:                                               ; preds = %30
  %48 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef 2, ptr noundef null, ptr noundef %50)
          to label %51 unwind label %52

51:                                               ; preds = %47
  tail call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

52:                                               ; preds = %47
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %108

54:                                               ; preds = %30
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = load ptr, ptr %56, align 8, !tbaa !38
  %60 = getelementptr inbounds ptr, ptr %59, i64 4
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef signext i16 %61(ptr noundef nonnull align 8 dereferenceable(8) %56)
  switch i16 %62, label %69 [
    i16 8, label %63
    i16 7, label %63
    i16 4, label %63
    i16 3, label %63
  ]

63:                                               ; preds = %54, %54, %54, %54
  %64 = load ptr, ptr %55, align 8, !tbaa !41
  %65 = load ptr, ptr %64, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 5
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %64)
  br label %69

69:                                               ; preds = %54, %63
  %70 = phi ptr [ %68, %63 ], [ %56, %54 ]
  %71 = load ptr, ptr %57, align 8, !tbaa !49
  %72 = load ptr, ptr %71, align 8, !tbaa !38
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef signext i16 %74(ptr noundef nonnull align 8 dereferenceable(8) %71)
  switch i16 %75, label %82 [
    i16 8, label %76
    i16 7, label %76
    i16 4, label %76
    i16 3, label %76
  ]

76:                                               ; preds = %69, %69, %69, %69
  %77 = load ptr, ptr %57, align 8, !tbaa !49
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %77)
  br label %82

82:                                               ; preds = %69, %76
  %83 = phi ptr [ %81, %76 ], [ %58, %69 ]
  %84 = icmp eq ptr %70, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %87 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %86, i32 noundef 1, ptr noundef null, ptr noundef %88)
          to label %89 unwind label %90

89:                                               ; preds = %85
  tail call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

90:                                               ; preds = %85
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %108

92:                                               ; preds = %82
  %93 = load ptr, ptr %0, align 8, !tbaa !38
  %94 = getelementptr inbounds ptr, ptr %93, i64 19
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %97 = load ptr, ptr %0, align 8, !tbaa !38
  %98 = getelementptr inbounds ptr, ptr %97, i64 21
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  %100 = load ptr, ptr %1, align 8, !tbaa !38
  %101 = getelementptr inbounds ptr, ptr %100, i64 17
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %96)
  %104 = load ptr, ptr %0, align 8, !tbaa !38
  %105 = getelementptr inbounds ptr, ptr %104, i64 15
  %106 = load ptr, ptr %105, align 8
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  br label %107

107:                                              ; preds = %2, %92
  ret void

108:                                              ; preds = %52, %90, %28, %13
  %109 = phi ptr [ %48, %52 ], [ %86, %90 ], [ %24, %28 ], [ %9, %13 ]
  %110 = phi { ptr, i32 } [ %53, %52 ], [ %91, %90 ], [ %29, %28 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %109) #17
  resume { ptr, i32 } %110
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_712DOMRangeImpl21compareBoundaryPointsENS_8DOMRange10CompareHowEPKS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %2, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 4, ptr noundef null, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %300

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 8, !tbaa !53, !range !56, !noundef !57
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %21, i16 noundef signext 11, ptr noundef null, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %300

27:                                               ; preds = %16
  switch i32 %1, label %76 [
    i32 0, label %28
    i32 1, label %40
    i32 3, label %52
    i32 2, label %64
  ]

28:                                               ; preds = %27
  %29 = load ptr, ptr %2, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = load ptr, ptr %2, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i64 %37(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  br label %83

40:                                               ; preds = %27
  %41 = load ptr, ptr %2, align 8, !tbaa !38
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = load ptr, ptr %2, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef i64 %49(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  br label %83

52:                                               ; preds = %27
  %53 = load ptr, ptr %2, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = load ptr, ptr %2, align 8, !tbaa !38
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef i64 %61(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  br label %83

64:                                               ; preds = %27
  %65 = load ptr, ptr %2, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !49
  %71 = load ptr, ptr %2, align 8, !tbaa !38
  %72 = getelementptr inbounds ptr, ptr %71, i64 5
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef i64 %73(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %75 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  br label %83

76:                                               ; preds = %27
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %77, i16 noundef signext 11, ptr noundef null, ptr noundef %79)
          to label %80 unwind label %81

80:                                               ; preds = %76
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %300

83:                                               ; preds = %64, %52, %40, %28
  %84 = phi ptr [ %70, %64 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ]
  %85 = phi ptr [ %68, %64 ], [ %56, %52 ], [ %44, %40 ], [ %32, %28 ]
  %86 = phi ptr [ %75, %64 ], [ %63, %52 ], [ %51, %40 ], [ %39, %28 ]
  %87 = phi i64 [ %74, %64 ], [ %62, %52 ], [ %50, %40 ], [ %38, %28 ]
  %88 = trunc i64 %87 to i32
  %89 = load i64, ptr %86, align 8, !tbaa !96
  %90 = trunc i64 %89 to i32
  %91 = icmp eq ptr %84, %85
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = icmp slt i32 %90, %88
  br i1 %93, label %298, label %94

94:                                               ; preds = %92
  %95 = icmp ne i32 %90, %88
  %96 = zext i1 %95 to i16
  br label %298

97:                                               ; preds = %83
  %98 = load ptr, ptr %84, align 8, !tbaa !38
  %99 = getelementptr inbounds ptr, ptr %98, i64 7
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %84)
  %102 = icmp eq ptr %101, null
  br i1 %102, label %152, label %103

103:                                              ; preds = %97
  %104 = icmp eq ptr %85, null
  br label %105

105:                                              ; preds = %103, %147
  %106 = phi i1 [ %102, %103 ], [ %151, %147 ]
  %107 = phi ptr [ %101, %103 ], [ %150, %147 ]
  %108 = icmp eq ptr %85, %107
  %109 = or i1 %104, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %105, %110
  %111 = phi ptr [ %115, %110 ], [ %85, %105 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !38
  %113 = getelementptr inbounds ptr, ptr %112, i64 5
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %111)
  %116 = icmp eq ptr %115, null
  %117 = icmp eq ptr %115, %107
  %118 = or i1 %116, %117
  br i1 %118, label %119, label %110, !llvm.loop !97

119:                                              ; preds = %110, %105
  %120 = phi i1 [ %104, %105 ], [ %116, %110 ]
  %121 = load ptr, ptr %107, align 8, !tbaa !38
  br i1 %120, label %147, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds ptr, ptr %121, i64 5
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %107)
  %126 = icmp eq ptr %125, %84
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load ptr, ptr %107, align 8, !tbaa !38
  %129 = getelementptr inbounds ptr, ptr %128, i64 9
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %107)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %142, label %133

133:                                              ; preds = %127, %133
  %134 = phi ptr [ %140, %133 ], [ %131, %127 ]
  %135 = phi i64 [ %136, %133 ], [ 0, %127 ]
  %136 = add i64 %135, 1
  %137 = load ptr, ptr %134, align 8, !tbaa !38
  %138 = getelementptr inbounds ptr, ptr %137, i64 9
  %139 = load ptr, ptr %138, align 8
  %140 = tail call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %134)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %133, !llvm.loop !98

142:                                              ; preds = %133, %127, %122
  %143 = phi i64 [ -1, %122 ], [ 0, %127 ], [ %136, %133 ]
  %144 = trunc i64 %143 to i32
  %145 = icmp sgt i32 %90, %144
  %146 = select i1 %145, i16 1, i16 -1
  br label %152

147:                                              ; preds = %119
  %148 = getelementptr inbounds ptr, ptr %121, i64 10
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(8) %107)
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %105, !llvm.loop !99

152:                                              ; preds = %147, %97, %142
  %153 = phi i1 [ %106, %142 ], [ %102, %97 ], [ %151, %147 ]
  %154 = phi i16 [ %146, %142 ], [ undef, %97 ], [ undef, %147 ]
  br i1 %153, label %155, label %298

155:                                              ; preds = %152
  %156 = load ptr, ptr %85, align 8, !tbaa !38
  %157 = getelementptr inbounds ptr, ptr %156, i64 7
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %85)
  %160 = icmp eq ptr %159, null
  br i1 %160, label %213, label %161

161:                                              ; preds = %155
  %162 = icmp eq ptr %84, %159
  br i1 %162, label %178, label %165

163:                                              ; preds = %207
  %164 = icmp eq ptr %84, %211
  br i1 %164, label %178, label %165, !llvm.loop !100

165:                                              ; preds = %161, %163
  %166 = phi ptr [ %211, %163 ], [ %159, %161 ]
  %167 = phi i1 [ %212, %163 ], [ %160, %161 ]
  br label %168

168:                                              ; preds = %165, %168
  %169 = phi ptr [ %173, %168 ], [ %84, %165 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !38
  %171 = getelementptr inbounds ptr, ptr %170, i64 5
  %172 = load ptr, ptr %171, align 8
  %173 = tail call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169)
  %174 = icmp eq ptr %173, null
  %175 = icmp eq ptr %173, %166
  %176 = or i1 %174, %175
  br i1 %176, label %177, label %168, !llvm.loop !97

177:                                              ; preds = %168
  br i1 %174, label %207, label %178

178:                                              ; preds = %177, %163, %161
  %179 = phi i1 [ %160, %161 ], [ %167, %177 ], [ %212, %163 ]
  %180 = phi ptr [ %159, %161 ], [ %166, %177 ], [ %211, %163 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !38
  %182 = getelementptr inbounds ptr, ptr %181, i64 5
  %183 = load ptr, ptr %182, align 8
  %184 = tail call noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(8) %180)
  %185 = icmp eq ptr %184, %85
  br i1 %185, label %186, label %203

186:                                              ; preds = %178
  %187 = load ptr, ptr %180, align 8, !tbaa !38
  %188 = getelementptr inbounds ptr, ptr %187, i64 9
  %189 = load ptr, ptr %188, align 8
  %190 = tail call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %180)
  %191 = icmp eq ptr %190, null
  br i1 %191, label %203, label %192

192:                                              ; preds = %186, %192
  %193 = phi ptr [ %199, %192 ], [ %190, %186 ]
  %194 = phi i64 [ %195, %192 ], [ 0, %186 ]
  %195 = add i64 %194, 1
  %196 = load ptr, ptr %193, align 8, !tbaa !38
  %197 = getelementptr inbounds ptr, ptr %196, i64 9
  %198 = load ptr, ptr %197, align 8
  %199 = tail call noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %193)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %192, !llvm.loop !98

201:                                              ; preds = %192
  %202 = trunc i64 %195 to i32
  br label %203

203:                                              ; preds = %201, %186, %178
  %204 = phi i32 [ -1, %178 ], [ 0, %186 ], [ %202, %201 ]
  %205 = icmp slt i32 %204, %88
  %206 = select i1 %205, i16 -1, i16 1
  br label %213

207:                                              ; preds = %177
  %208 = load ptr, ptr %166, align 8, !tbaa !38
  %209 = getelementptr inbounds ptr, ptr %208, i64 10
  %210 = load ptr, ptr %209, align 8
  %211 = tail call noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(8) %166)
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %163, !llvm.loop !100

213:                                              ; preds = %207, %155, %203
  %214 = phi i1 [ %179, %203 ], [ %160, %155 ], [ %212, %207 ]
  %215 = phi i16 [ %206, %203 ], [ %154, %155 ], [ %154, %207 ]
  br i1 %214, label %216, label %298

216:                                              ; preds = %213, %216
  %217 = phi ptr [ %223, %216 ], [ %85, %213 ]
  %218 = phi i32 [ %219, %216 ], [ 0, %213 ]
  %219 = add nuw nsw i32 %218, 1
  %220 = load ptr, ptr %217, align 8, !tbaa !38
  %221 = getelementptr inbounds ptr, ptr %220, i64 5
  %222 = load ptr, ptr %221, align 8
  %223 = tail call noundef ptr %222(ptr noundef nonnull align 8 dereferenceable(8) %217)
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %216, !llvm.loop !101

225:                                              ; preds = %227
  %226 = icmp sgt i32 %229, 1
  br i1 %226, label %240, label %236

227:                                              ; preds = %216, %227
  %228 = phi ptr [ %234, %227 ], [ %84, %216 ]
  %229 = phi i32 [ %230, %227 ], [ %219, %216 ]
  %230 = add nsw i32 %229, -1
  %231 = load ptr, ptr %228, align 8, !tbaa !38
  %232 = getelementptr inbounds ptr, ptr %231, i64 5
  %233 = load ptr, ptr %232, align 8
  %234 = tail call noundef ptr %233(ptr noundef nonnull align 8 dereferenceable(8) %228)
  %235 = icmp eq ptr %234, null
  br i1 %235, label %225, label %227, !llvm.loop !102

236:                                              ; preds = %240, %225
  %237 = phi ptr [ %85, %225 ], [ %246, %240 ]
  %238 = phi i32 [ %230, %225 ], [ 0, %240 ]
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %249, label %258

240:                                              ; preds = %225, %240
  %241 = phi i32 [ %247, %240 ], [ %230, %225 ]
  %242 = phi ptr [ %246, %240 ], [ %85, %225 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !38
  %244 = getelementptr inbounds ptr, ptr %243, i64 5
  %245 = load ptr, ptr %244, align 8
  %246 = tail call noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(8) %242)
  %247 = add nsw i32 %241, -1
  %248 = icmp sgt i32 %241, 1
  br i1 %248, label %240, label %236, !llvm.loop !103

249:                                              ; preds = %236, %249
  %250 = phi i32 [ %256, %249 ], [ %238, %236 ]
  %251 = phi ptr [ %255, %249 ], [ %84, %236 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !38
  %253 = getelementptr inbounds ptr, ptr %252, i64 5
  %254 = load ptr, ptr %253, align 8
  %255 = tail call noundef ptr %254(ptr noundef nonnull align 8 dereferenceable(8) %251)
  %256 = add nsw i32 %250, 1
  %257 = icmp slt i32 %250, -1
  br i1 %257, label %249, label %258, !llvm.loop !104

258:                                              ; preds = %249, %236
  %259 = phi ptr [ %84, %236 ], [ %255, %249 ]
  %260 = load ptr, ptr %237, align 8, !tbaa !38
  %261 = getelementptr inbounds ptr, ptr %260, i64 5
  %262 = load ptr, ptr %261, align 8
  %263 = tail call noundef ptr %262(ptr noundef nonnull align 8 dereferenceable(8) %237)
  %264 = load ptr, ptr %259, align 8, !tbaa !38
  %265 = getelementptr inbounds ptr, ptr %264, i64 5
  %266 = load ptr, ptr %265, align 8
  %267 = tail call noundef ptr %266(ptr noundef nonnull align 8 dereferenceable(8) %259)
  %268 = icmp eq ptr %263, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %277, %258
  %270 = phi ptr [ %259, %258 ], [ %278, %277 ]
  %271 = phi ptr [ %237, %258 ], [ %279, %277 ]
  %272 = load ptr, ptr %271, align 8, !tbaa !38
  %273 = getelementptr inbounds ptr, ptr %272, i64 10
  %274 = load ptr, ptr %273, align 8
  %275 = tail call noundef ptr %274(ptr noundef nonnull align 8 dereferenceable(8) %271)
  %276 = icmp eq ptr %275, null
  br i1 %276, label %298, label %289

277:                                              ; preds = %258, %277
  %278 = phi ptr [ %287, %277 ], [ %267, %258 ]
  %279 = phi ptr [ %283, %277 ], [ %263, %258 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !38
  %281 = getelementptr inbounds ptr, ptr %280, i64 5
  %282 = load ptr, ptr %281, align 8
  %283 = tail call noundef ptr %282(ptr noundef nonnull align 8 dereferenceable(8) %279)
  %284 = load ptr, ptr %278, align 8, !tbaa !38
  %285 = getelementptr inbounds ptr, ptr %284, i64 5
  %286 = load ptr, ptr %285, align 8
  %287 = tail call noundef ptr %286(ptr noundef nonnull align 8 dereferenceable(8) %278)
  %288 = icmp eq ptr %283, %287
  br i1 %288, label %269, label %277, !llvm.loop !105

289:                                              ; preds = %269, %292
  %290 = phi ptr [ %296, %292 ], [ %275, %269 ]
  %291 = icmp eq ptr %290, %270
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %290, align 8, !tbaa !38
  %294 = getelementptr inbounds ptr, ptr %293, i64 10
  %295 = load ptr, ptr %294, align 8
  %296 = tail call noundef ptr %295(ptr noundef nonnull align 8 dereferenceable(8) %290)
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %289, !llvm.loop !106

298:                                              ; preds = %292, %289, %269, %94, %92, %213, %152
  %299 = phi i16 [ %215, %213 ], [ %154, %152 ], [ -1, %92 ], [ %96, %94 ], [ -1, %269 ], [ 1, %289 ], [ -1, %292 ]
  ret i16 %299

300:                                              ; preds = %81, %25, %14
  %301 = phi ptr [ %77, %81 ], [ %21, %25 ], [ %10, %14 ]
  %302 = phi { ptr, i32 } [ %82, %81 ], [ %26, %25 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %301) #17
  resume { ptr, i32 } %302
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, %0
  %14 = and i1 %13, %12
  br i1 %14, label %6, label %15, !llvm.loop !97

15:                                               ; preds = %6, %2
  %16 = phi i1 [ %3, %2 ], [ %12, %6 ]
  ret i1 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %22, %15 ], [ %13, %9 ]
  %17 = phi i64 [ %18, %15 ], [ 0, %9 ]
  %18 = add i64 %17, 1
  %19 = load ptr, ptr %16, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 9
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !98

24:                                               ; preds = %15, %9, %3
  %25 = phi i64 [ -1, %3 ], [ 0, %9 ], [ %18, %15 ]
  ret i64 %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl14deleteContentsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !53, !range !56, !noundef !57
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %140, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %140, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %15, %19
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseSameContainerEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1)
  br label %140

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %14, align 8, !tbaa !41
  %33 = icmp eq ptr %29, %32
  br i1 %33, label %37, label %42

34:                                               ; preds = %42
  %35 = load ptr, ptr %14, align 8, !tbaa !41
  %36 = icmp eq ptr %49, %35
  br i1 %36, label %37, label %42, !llvm.loop !107

37:                                               ; preds = %34, %31
  %38 = phi i1 [ %30, %31 ], [ %50, %34 ]
  %39 = phi ptr [ %19, %31 ], [ %44, %34 ]
  %40 = phi i32 [ 0, %31 ], [ %45, %34 ]
  %41 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl28traverseCommonStartContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %39, i32 noundef %1)
  br label %51

42:                                               ; preds = %31, %34
  %43 = phi i32 [ %45, %34 ], [ 0, %31 ]
  %44 = phi ptr [ %49, %34 ], [ %29, %31 ]
  %45 = add nuw nsw i32 %43, 1
  %46 = load ptr, ptr %44, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %44)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %34, !llvm.loop !107

51:                                               ; preds = %42, %25, %37
  %52 = phi i32 [ %40, %37 ], [ 0, %25 ], [ %45, %42 ]
  %53 = phi i1 [ %38, %37 ], [ %30, %25 ], [ %50, %42 ]
  %54 = phi ptr [ %41, %37 ], [ undef, %25 ], [ undef, %42 ]
  br i1 %53, label %55, label %140

55:                                               ; preds = %51
  %56 = load ptr, ptr %14, align 8, !tbaa !41
  %57 = load ptr, ptr %56, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %18, align 8, !tbaa !49
  %64 = icmp eq ptr %60, %63
  br i1 %64, label %68, label %73

65:                                               ; preds = %73
  %66 = load ptr, ptr %18, align 8, !tbaa !49
  %67 = icmp eq ptr %80, %66
  br i1 %67, label %68, label %73, !llvm.loop !108

68:                                               ; preds = %65, %62
  %69 = phi i1 [ %61, %62 ], [ %81, %65 ]
  %70 = phi ptr [ %56, %62 ], [ %75, %65 ]
  %71 = phi i32 [ 0, %62 ], [ %76, %65 ]
  %72 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl26traverseCommonEndContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %70, i32 noundef %1)
  br label %82

73:                                               ; preds = %62, %65
  %74 = phi i32 [ %76, %65 ], [ 0, %62 ]
  %75 = phi ptr [ %80, %65 ], [ %60, %62 ]
  %76 = add nuw nsw i32 %74, 1
  %77 = load ptr, ptr %75, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %75)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %65, !llvm.loop !108

82:                                               ; preds = %73, %55, %68
  %83 = phi i32 [ %71, %68 ], [ 0, %55 ], [ %76, %73 ]
  %84 = phi i1 [ %69, %68 ], [ %61, %55 ], [ %81, %73 ]
  %85 = phi ptr [ %72, %68 ], [ %54, %55 ], [ %54, %73 ]
  br i1 %84, label %86, label %140

86:                                               ; preds = %82
  %87 = sub nsw i32 %83, %52
  %88 = load ptr, ptr %14, align 8, !tbaa !41
  %89 = icmp sgt i32 %87, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86, %90
  %91 = phi ptr [ %96, %90 ], [ %88, %86 ]
  %92 = phi i32 [ %97, %90 ], [ %87, %86 ]
  %93 = load ptr, ptr %91, align 8, !tbaa !38
  %94 = getelementptr inbounds ptr, ptr %93, i64 5
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %91)
  %97 = add nsw i32 %92, -1
  %98 = icmp sgt i32 %92, 1
  br i1 %98, label %90, label %99, !llvm.loop !109

99:                                               ; preds = %90, %86
  %100 = phi i32 [ %87, %86 ], [ 0, %90 ]
  %101 = phi ptr [ %88, %86 ], [ %96, %90 ]
  %102 = load ptr, ptr %18, align 8, !tbaa !49
  %103 = icmp slt i32 %100, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %110, %104 ], [ %102, %99 ]
  %106 = phi i32 [ %111, %104 ], [ %100, %99 ]
  %107 = load ptr, ptr %105, align 8, !tbaa !38
  %108 = getelementptr inbounds ptr, ptr %107, i64 5
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %105)
  %111 = add i32 %106, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %104, !llvm.loop !110

113:                                              ; preds = %104, %99
  %114 = phi ptr [ %102, %99 ], [ %110, %104 ]
  %115 = load ptr, ptr %101, align 8, !tbaa !38
  %116 = getelementptr inbounds ptr, ptr %115, i64 5
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %101)
  %119 = load ptr, ptr %114, align 8, !tbaa !38
  %120 = getelementptr inbounds ptr, ptr %119, i64 5
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %114)
  %123 = icmp eq ptr %118, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %128, %113
  %125 = phi ptr [ %101, %113 ], [ %130, %128 ]
  %126 = phi ptr [ %114, %113 ], [ %129, %128 ]
  %127 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl23traverseCommonAncestorsEPNS_7DOMNodeES2_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %125, ptr noundef nonnull %126, i32 noundef %1)
  br label %140

128:                                              ; preds = %113, %128
  %129 = phi ptr [ %138, %128 ], [ %122, %113 ]
  %130 = phi ptr [ %134, %128 ], [ %118, %113 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !38
  %132 = getelementptr inbounds ptr, ptr %131, i64 5
  %133 = load ptr, ptr %132, align 8
  %134 = tail call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(8) %130)
  %135 = load ptr, ptr %129, align 8, !tbaa !38
  %136 = getelementptr inbounds ptr, ptr %135, i64 5
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(8) %129)
  %139 = icmp eq ptr %134, %138
  br i1 %139, label %124, label %128, !llvm.loop !111

140:                                              ; preds = %51, %82, %124, %13, %17, %23
  %141 = phi ptr [ %24, %23 ], [ null, %17 ], [ null, %13 ], [ %54, %51 ], [ %127, %124 ], [ %85, %82 ]
  ret ptr %141
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15extractContentsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_712DOMRangeImpl13checkReadOnlyEPNS_7DOMNodeES2_mm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %3, ptr noundef %5, i64 noundef %7, i64 noundef %9)
  %10 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl13checkReadOnlyEPNS_7DOMNodeES2_mm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = icmp eq ptr %1, null
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %84, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %13, label %36 [
    i16 10, label %14
    i16 8, label %21
    i16 7, label %21
    i16 4, label %21
    i16 3, label %21
  ]

14:                                               ; preds = %9
  %15 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %15, i16 noundef signext 3, ptr noundef null, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %85

21:                                               ; preds = %9, %9, %9, %9
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %23 = load i16, ptr %22, align 8, !tbaa !112
  %24 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !61
  %25 = and i16 %24, %23
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %28, i16 noundef signext 7, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %85

34:                                               ; preds = %21
  %35 = icmp eq ptr %1, %2
  br i1 %35, label %84, label %51

36:                                               ; preds = %9
  %37 = load ptr, ptr %1, align 8, !tbaa !38
  %38 = getelementptr inbounds ptr, ptr %37, i64 7
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %41 = icmp eq i64 %3, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36, %42
  %43 = phi i64 [ %49, %42 ], [ 0, %36 ]
  %44 = phi ptr [ %48, %42 ], [ %40, %36 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 10
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %44)
  %49 = add nuw i64 %43, 1
  %50 = icmp eq i64 %49, %3
  br i1 %50, label %51, label %42, !llvm.loop !113

51:                                               ; preds = %42, %36, %34
  %52 = phi ptr [ %1, %34 ], [ %40, %36 ], [ %48, %42 ]
  %53 = load ptr, ptr %2, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef signext i16 %55(ptr noundef nonnull align 8 dereferenceable(8) %2)
  switch i16 %56, label %64 [
    i16 10, label %57
    i16 8, label %82
    i16 7, label %82
    i16 4, label %82
    i16 3, label %82
  ]

57:                                               ; preds = %51
  %58 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %58, i16 noundef signext 3, ptr noundef null, ptr noundef %60)
          to label %61 unwind label %62

61:                                               ; preds = %57
  tail call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %85

64:                                               ; preds = %51
  %65 = load ptr, ptr %2, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 7
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %69 = icmp eq i64 %4, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = add i64 %4, -1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %80, %73 ], [ 0, %70 ]
  %75 = phi ptr [ %79, %73 ], [ %68, %70 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !38
  %77 = getelementptr inbounds ptr, ptr %76, i64 10
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %75)
  %80 = add nuw i64 %74, 1
  %81 = icmp eq i64 %80, %71
  br i1 %81, label %82, label %73, !llvm.loop !114

82:                                               ; preds = %73, %70, %64, %51, %51, %51, %51
  %83 = phi ptr [ %2, %51 ], [ %2, %51 ], [ %2, %51 ], [ %2, %51 ], [ %68, %64 ], [ %68, %70 ], [ %79, %73 ]
  tail call void @_ZN11xercesc_2_712DOMRangeImpl19recurseTreeAndCheckEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %52, ptr noundef %83)
  br label %84

84:                                               ; preds = %82, %34, %5
  ret void

85:                                               ; preds = %62, %32, %19
  %86 = phi ptr [ %58, %62 ], [ %28, %32 ], [ %15, %19 ]
  %87 = phi { ptr, i32 } [ %63, %62 ], [ %33, %32 ], [ %20, %19 ]
  tail call void @__cxa_free_exception(ptr %86) #17
  resume { ptr, i32 } %87
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl13cloneContentsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 2)
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl10insertNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %163, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !53, !range !56, !noundef !57
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 11, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %164

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i16 %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %19, label %27 [
    i16 12, label %20
    i16 9, label %20
    i16 6, label %20
    i16 2, label %20
  ]

20:                                               ; preds = %15, %15, %15, %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 2, ptr noundef null, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #18
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %164

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  %31 = icmp eq ptr %29, %1
  %32 = or i1 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %27, %33
  %34 = phi ptr [ %38, %33 ], [ %29, %27 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34)
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %1
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %33, !llvm.loop !97

42:                                               ; preds = %33, %27
  %43 = phi i1 [ %30, %27 ], [ %39, %33 ]
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %45, i16 noundef signext 3, ptr noundef null, ptr noundef %47)
          to label %48 unwind label %49

48:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

49:                                               ; preds = %44
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %164

51:                                               ; preds = %42
  %52 = load ptr, ptr %28, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %56 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !61
  br label %65

57:                                               ; preds = %77, %51
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = load ptr, ptr %1, align 8, !tbaa !38
  %61 = getelementptr inbounds ptr, ptr %60, i64 12
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %90, label %83

65:                                               ; preds = %54, %77
  %66 = phi ptr [ %52, %54 ], [ %81, %77 ]
  %67 = load i16, ptr %55, align 8, !tbaa !112
  %68 = and i16 %56, %67
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %71, i16 noundef signext 7, ptr noundef null, ptr noundef %73)
          to label %74 unwind label %75

74:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

75:                                               ; preds = %70
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %164

77:                                               ; preds = %65
  %78 = load ptr, ptr %66, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %66)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %57, label %65, !llvm.loop !115

83:                                               ; preds = %57
  %84 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %85 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %84, i16 noundef signext 4, ptr noundef null, ptr noundef %86)
          to label %87 unwind label %88

87:                                               ; preds = %83
  tail call void @__cxa_throw(ptr nonnull %84, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

88:                                               ; preds = %83
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %164

90:                                               ; preds = %57
  %91 = load ptr, ptr %28, align 8, !tbaa !41
  %92 = load ptr, ptr %91, align 8, !tbaa !38
  %93 = getelementptr inbounds ptr, ptr %92, i64 4
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef signext i16 %94(ptr noundef nonnull align 8 dereferenceable(8) %91)
  switch i16 %95, label %125 [
    i16 8, label %96
    i16 7, label %96
    i16 4, label %96
    i16 3, label %96
  ]

96:                                               ; preds = %90, %90, %90, %90
  %97 = load ptr, ptr %28, align 8, !tbaa !41
  %98 = load ptr, ptr %97, align 8, !tbaa !38
  %99 = getelementptr inbounds ptr, ptr %98, i64 5
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97)
  %102 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %103 = load i64, ptr %102, align 8, !tbaa !48
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %96
  %106 = load ptr, ptr %28, align 8, !tbaa !41
  switch i16 %95, label %111 [
    i16 8, label %107
    i16 7, label %109
  ]

107:                                              ; preds = %105
  %108 = tail call noundef ptr @_ZN11xercesc_2_714DOMCommentImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(56) %106, i64 noundef %103)
  br label %116

109:                                              ; preds = %105
  %110 = tail call noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(72) %106, i64 noundef %103)
  br label %116

111:                                              ; preds = %105
  %112 = load ptr, ptr %106, align 8, !tbaa !38
  %113 = getelementptr inbounds ptr, ptr %112, i64 48
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %106, i64 noundef %103)
  br label %116

116:                                              ; preds = %107, %111, %109, %96
  %117 = load i64, ptr %102, align 8, !tbaa !48
  %118 = icmp eq i64 %117, 0
  %119 = load ptr, ptr %28, align 8, !tbaa !41
  br i1 %118, label %148, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %119, align 8, !tbaa !38
  %122 = getelementptr inbounds ptr, ptr %121, i64 10
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %119)
  br label %148

125:                                              ; preds = %90
  %126 = load ptr, ptr %28, align 8, !tbaa !41
  %127 = load ptr, ptr %126, align 8, !tbaa !38
  %128 = getelementptr inbounds ptr, ptr %127, i64 7
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126)
  %131 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !48
  %133 = icmp ne i64 %132, 0
  %134 = icmp ne ptr %130, null
  %135 = and i1 %134, %133
  br i1 %135, label %136, label %148

136:                                              ; preds = %125, %136
  %137 = phi i64 [ %143, %136 ], [ 0, %125 ]
  %138 = phi ptr [ %142, %136 ], [ %130, %125 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !38
  %140 = getelementptr inbounds ptr, ptr %139, i64 10
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138)
  %143 = add nuw i64 %137, 1
  %144 = load i64, ptr %131, align 8, !tbaa !48
  %145 = icmp ult i64 %143, %144
  %146 = icmp ne ptr %142, null
  %147 = and i1 %146, %145
  br i1 %147, label %136, label %148, !llvm.loop !116

148:                                              ; preds = %136, %116, %125, %120
  %149 = phi ptr [ %101, %120 ], [ %126, %125 ], [ %101, %116 ], [ %126, %136 ]
  %150 = phi ptr [ %124, %120 ], [ %130, %125 ], [ %119, %116 ], [ %142, %136 ]
  %151 = icmp eq ptr %149, null
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  %153 = icmp eq ptr %150, null
  %154 = load ptr, ptr %149, align 8, !tbaa !38
  br i1 %153, label %159, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds ptr, ptr %154, i64 14
  %157 = load ptr, ptr %156, align 8
  %158 = tail call noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef nonnull %1, ptr noundef nonnull %150)
  br label %163

159:                                              ; preds = %152
  %160 = getelementptr inbounds ptr, ptr %154, i64 17
  %161 = load ptr, ptr %160, align 8
  %162 = tail call noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef nonnull %1)
  br label %163

163:                                              ; preds = %148, %159, %155, %2
  ret void

164:                                              ; preds = %25, %49, %75, %88, %13
  %165 = phi ptr [ %21, %25 ], [ %45, %49 ], [ %71, %75 ], [ %84, %88 ], [ %9, %13 ]
  %166 = phi { ptr, i32 } [ %26, %25 ], [ %50, %49 ], [ %76, %75 ], [ %89, %88 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %165) #17
  resume { ptr, i32 } %166
}

declare noundef ptr @_ZN11xercesc_2_714DOMCommentImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl10cloneRangeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !48
  %23 = load ptr, ptr %18, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %20, i64 noundef %22)
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = load ptr, ptr %18, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %27, i64 noundef %29)
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8toStringEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = alloca [4000 x i16], align 16
  %4 = alloca [4000 x i16], align 16
  %5 = alloca [4000 x i16], align 16
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 8, !tbaa !53, !range !56, !noundef !57
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 11, ptr noundef null, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #17
  br label %357

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !48
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %355, label %28

28:                                               ; preds = %22, %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %30, i64 0, i32 25
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  store i32 0, ptr %2, align 8, !tbaa !117
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  store i32 1023, ptr %33, align 4, !tbaa !119
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 2
  store i32 0, ptr %34, align 8, !tbaa !120
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 3
  store i8 0, ptr %35, align 4, !tbaa !121
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 4
  store ptr %32, ptr %36, align 8, !tbaa !122
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 5
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %39 = load ptr, ptr %32, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef 2048)
  store ptr %42, ptr %38, align 8, !tbaa !123
  store i16 0, ptr %42, align 2, !tbaa !61
  %43 = load ptr, ptr %17, align 8, !tbaa !41
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef signext i16 %46(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %48 unwind label %71

48:                                               ; preds = %28
  switch i16 %47, label %179 [
    i16 8, label %49
    i16 7, label %49
    i16 4, label %49
    i16 3, label %49
  ]

49:                                               ; preds = %48, %48, %48, %48
  %50 = load ptr, ptr %17, align 8, !tbaa !41
  %51 = load ptr, ptr %19, align 8, !tbaa !49
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #17
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %55 = load i64, ptr %54, align 8, !tbaa !50
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !48
  %58 = sub i64 %55, %57
  %59 = icmp ugt i64 %58, 3998
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !55
  %63 = shl i64 %58, 1
  %64 = add i64 %63, 2
  %65 = load ptr, ptr %62, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %62, i64 noundef %64)
          to label %75 unwind label %73

69:                                               ; preds = %264, %270, %275, %276
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %344

71:                                               ; preds = %28, %179, %211, %214, %278, %326
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %344

73:                                               ; preds = %82, %75, %60
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %107

75:                                               ; preds = %60, %53
  %76 = phi ptr [ %3, %53 ], [ %68, %60 ]
  %77 = load ptr, ptr %17, align 8, !tbaa !41
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %82 unwind label %73

82:                                               ; preds = %75
  %83 = load i64, ptr %56, align 8, !tbaa !48
  %84 = trunc i64 %83 to i32
  %85 = load i64, ptr %54, align 8, !tbaa !50
  %86 = trunc i64 %85 to i32
  %87 = load ptr, ptr %29, align 8, !tbaa !52
  %88 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %87, i64 0, i32 25
  %89 = load ptr, ptr %88, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %76, ptr noundef %81, i32 noundef %84, i32 noundef %86, ptr noundef %89)
          to label %90 unwind label %73

90:                                               ; preds = %82
  %91 = load ptr, ptr %29, align 8, !tbaa !52
  %92 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %91, ptr noundef %76)
          to label %93 unwind label %104

93:                                               ; preds = %90
  %94 = load i64, ptr %54, align 8, !tbaa !50
  %95 = load i64, ptr %56, align 8, !tbaa !48
  %96 = sub i64 %94, %95
  %97 = icmp ugt i64 %96, 3998
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !55
  %101 = load ptr, ptr %100, align 8, !tbaa !38
  %102 = getelementptr inbounds ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %76)
          to label %106 unwind label %104

104:                                              ; preds = %98, %90
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %107

106:                                              ; preds = %98, %93
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #17
  br label %333

107:                                              ; preds = %104, %73
  %108 = phi { ptr, i32 } [ %105, %104 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #17
  br label %344

109:                                              ; preds = %49
  %110 = load ptr, ptr %50, align 8, !tbaa !38
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %114 unwind label %148

114:                                              ; preds = %109
  %115 = icmp eq ptr %113, null
  br i1 %115, label %130, label %116

116:                                              ; preds = %114
  %117 = load i16, ptr %113, align 2, !tbaa !61
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %121, %119 ], [ %113, %116 ]
  %121 = getelementptr inbounds i16, ptr %120, i64 1
  %122 = load i16, ptr %121, align 2, !tbaa !61
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %119, !llvm.loop !63

124:                                              ; preds = %119
  %125 = ptrtoint ptr %121 to i64
  %126 = ptrtoint ptr %113 to i64
  %127 = sub i64 %125, %126
  %128 = lshr exact i64 %127, 1
  %129 = trunc i64 %128 to i32
  br label %130

130:                                              ; preds = %114, %116, %124
  %131 = phi i32 [ %129, %124 ], [ 0, %116 ], [ 0, %114 ]
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !48
  %135 = icmp eq i64 %134, %132
  br i1 %135, label %177, label %136

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %4) #17
  %137 = sub i64 %132, %134
  %138 = icmp ugt i64 %137, 3998
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %141 = load ptr, ptr %140, align 8, !tbaa !55
  %142 = shl i64 %137, 1
  %143 = add i64 %142, 2
  %144 = load ptr, ptr %141, align 8, !tbaa !38
  %145 = getelementptr inbounds ptr, ptr %144, i64 2
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef ptr %146(ptr noundef nonnull align 8 dereferenceable(8) %141, i64 noundef %143)
          to label %152 unwind label %150

148:                                              ; preds = %177, %109
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %344

150:                                              ; preds = %170, %165, %159, %152, %139
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #17
  br label %344

152:                                              ; preds = %139, %136
  %153 = phi ptr [ %4, %136 ], [ %147, %139 ]
  %154 = load ptr, ptr %17, align 8, !tbaa !41
  %155 = load ptr, ptr %154, align 8, !tbaa !38
  %156 = getelementptr inbounds ptr, ptr %155, i64 3
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(8) %154)
          to label %159 unwind label %150

159:                                              ; preds = %152
  %160 = load i64, ptr %133, align 8, !tbaa !48
  %161 = trunc i64 %160 to i32
  %162 = load ptr, ptr %29, align 8, !tbaa !52
  %163 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %162, i64 0, i32 25
  %164 = load ptr, ptr %163, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %153, ptr noundef %158, i32 noundef %161, i32 noundef %131, ptr noundef %164)
          to label %165 unwind label %150

165:                                              ; preds = %159
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %153)
          to label %166 unwind label %150

166:                                              ; preds = %165
  %167 = load i64, ptr %133, align 8, !tbaa !48
  %168 = sub i64 %132, %167
  %169 = icmp ugt i64 %168, 3998
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %172 = load ptr, ptr %171, align 8, !tbaa !55
  %173 = load ptr, ptr %172, align 8, !tbaa !38
  %174 = getelementptr inbounds ptr, ptr %173, i64 3
  %175 = load ptr, ptr %174, align 8
  invoke void %175(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef %153)
          to label %176 unwind label %150

176:                                              ; preds = %170, %166
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #17
  br label %177

177:                                              ; preds = %176, %130
  %178 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %18, i1 noundef zeroext true)
          to label %214 unwind label %148

179:                                              ; preds = %48
  %180 = load ptr, ptr %18, align 8, !tbaa !38
  %181 = getelementptr inbounds ptr, ptr %180, i64 7
  %182 = load ptr, ptr %181, align 8
  %183 = invoke noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %184 unwind label %71

184:                                              ; preds = %179
  %185 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %186 = load i64, ptr %185, align 8, !tbaa !48
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %184
  %189 = load i64, ptr %185, align 8, !tbaa !48
  %190 = icmp ne i64 %189, 0
  %191 = icmp ne ptr %183, null
  %192 = and i1 %191, %190
  br i1 %192, label %193, label %208

193:                                              ; preds = %188, %200
  %194 = phi i64 [ %201, %200 ], [ 0, %188 ]
  %195 = phi ptr [ %199, %200 ], [ %183, %188 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !38
  %197 = getelementptr inbounds ptr, ptr %196, i64 10
  %198 = load ptr, ptr %197, align 8
  %199 = invoke noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %195)
          to label %200 unwind label %206

200:                                              ; preds = %193
  %201 = add nuw i64 %194, 1
  %202 = load i64, ptr %185, align 8, !tbaa !48
  %203 = icmp ult i64 %201, %202
  %204 = icmp ne ptr %199, null
  %205 = and i1 %204, %203
  br i1 %205, label %193, label %208, !llvm.loop !124

206:                                              ; preds = %193
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %344

208:                                              ; preds = %200, %188, %184
  %209 = phi ptr [ %183, %184 ], [ %183, %188 ], [ %199, %200 ]
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load ptr, ptr %17, align 8, !tbaa !41
  %213 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %212, i1 noundef zeroext false)
          to label %214 unwind label %71

214:                                              ; preds = %211, %177, %208
  %215 = phi ptr [ %209, %208 ], [ %178, %177 ], [ %213, %211 ]
  %216 = load ptr, ptr %19, align 8, !tbaa !49
  %217 = load ptr, ptr %216, align 8, !tbaa !38
  %218 = getelementptr inbounds ptr, ptr %217, i64 4
  %219 = load ptr, ptr %218, align 8
  %220 = invoke noundef signext i16 %219(ptr noundef nonnull align 8 dereferenceable(8) %216)
          to label %221 unwind label %71

221:                                              ; preds = %214
  switch i16 %220, label %222 [
    i16 8, label %257
    i16 7, label %257
    i16 4, label %257
    i16 3, label %257
  ]

222:                                              ; preds = %221
  %223 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %224 = load i64, ptr %223, align 8, !tbaa !50
  %225 = load ptr, ptr %19, align 8, !tbaa !49
  %226 = load ptr, ptr %225, align 8, !tbaa !38
  %227 = getelementptr inbounds ptr, ptr %226, i64 7
  %228 = load ptr, ptr %227, align 8
  %229 = invoke noundef ptr %228(ptr noundef nonnull align 8 dereferenceable(8) %225)
          to label %230 unwind label %249

230:                                              ; preds = %222
  %231 = trunc i64 %224 to i32
  %232 = icmp sgt i32 %231, 0
  %233 = icmp ne ptr %229, null
  %234 = and i1 %233, %232
  br i1 %234, label %235, label %251

235:                                              ; preds = %230, %242
  %236 = phi i32 [ %243, %242 ], [ %231, %230 ]
  %237 = phi ptr [ %241, %242 ], [ %229, %230 ]
  %238 = load ptr, ptr %237, align 8, !tbaa !38
  %239 = getelementptr inbounds ptr, ptr %238, i64 10
  %240 = load ptr, ptr %239, align 8
  %241 = invoke noundef ptr %240(ptr noundef nonnull align 8 dereferenceable(8) %237)
          to label %242 unwind label %247

242:                                              ; preds = %235
  %243 = add nsw i32 %236, -1
  %244 = icmp sgt i32 %236, 1
  %245 = icmp ne ptr %241, null
  %246 = and i1 %245, %244
  br i1 %246, label %235, label %251, !llvm.loop !125

247:                                              ; preds = %235
  %248 = landingpad { ptr, i32 }
          cleanup
  br label %344

249:                                              ; preds = %222, %254
  %250 = landingpad { ptr, i32 }
          cleanup
  br label %344

251:                                              ; preds = %242, %230
  %252 = phi ptr [ %229, %230 ], [ %241, %242 ]
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load ptr, ptr %19, align 8, !tbaa !49
  %256 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %255, i1 noundef zeroext false)
          to label %257 unwind label %249

257:                                              ; preds = %221, %221, %221, %251, %254, %221
  %258 = phi ptr [ %20, %221 ], [ %252, %251 ], [ %256, %254 ], [ %20, %221 ], [ %20, %221 ], [ %20, %221 ]
  br label %259

259:                                              ; preds = %276, %257
  %260 = phi ptr [ %215, %257 ], [ %277, %276 ]
  %261 = icmp eq ptr %260, %258
  %262 = icmp eq ptr %260, null
  %263 = or i1 %261, %262
  br i1 %263, label %278, label %264

264:                                              ; preds = %259
  %265 = load ptr, ptr %260, align 8, !tbaa !38
  %266 = getelementptr inbounds ptr, ptr %265, i64 4
  %267 = load ptr, ptr %266, align 8
  %268 = invoke noundef signext i16 %267(ptr noundef nonnull align 8 dereferenceable(8) %260)
          to label %269 unwind label %69

269:                                              ; preds = %264
  switch i16 %268, label %276 [
    i16 8, label %270
    i16 7, label %270
    i16 4, label %270
    i16 3, label %270
  ]

270:                                              ; preds = %269, %269, %269, %269
  %271 = load ptr, ptr %260, align 8, !tbaa !38
  %272 = getelementptr inbounds ptr, ptr %271, i64 3
  %273 = load ptr, ptr %272, align 8
  %274 = invoke noundef ptr %273(ptr noundef nonnull align 8 dereferenceable(8) %260)
          to label %275 unwind label %69

275:                                              ; preds = %270
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %274)
          to label %276 unwind label %69

276:                                              ; preds = %275, %269
  %277 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %260, i1 noundef zeroext true)
          to label %259 unwind label %69, !llvm.loop !126

278:                                              ; preds = %259
  %279 = load ptr, ptr %19, align 8, !tbaa !49
  %280 = load ptr, ptr %279, align 8, !tbaa !38
  %281 = getelementptr inbounds ptr, ptr %280, i64 4
  %282 = load ptr, ptr %281, align 8
  %283 = invoke noundef signext i16 %282(ptr noundef nonnull align 8 dereferenceable(8) %279)
          to label %284 unwind label %71

284:                                              ; preds = %278
  switch i16 %283, label %326 [
    i16 8, label %285
    i16 7, label %285
    i16 4, label %285
    i16 3, label %285
  ]

285:                                              ; preds = %284, %284, %284, %284
  %286 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %287 = load i64, ptr %286, align 8, !tbaa !50
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %326, label %289

289:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #17
  %290 = icmp ugt i64 %287, 3998
  br i1 %290, label %291, label %302

291:                                              ; preds = %289
  %292 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %293 = load ptr, ptr %292, align 8, !tbaa !55
  %294 = shl i64 %287, 1
  %295 = add i64 %294, 2
  %296 = load ptr, ptr %293, align 8, !tbaa !38
  %297 = getelementptr inbounds ptr, ptr %296, i64 2
  %298 = load ptr, ptr %297, align 8
  %299 = invoke noundef ptr %298(ptr noundef nonnull align 8 dereferenceable(8) %293, i64 noundef %295)
          to label %302 unwind label %300

300:                                              ; preds = %319, %315, %309, %302, %291
  %301 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #17
  br label %344

302:                                              ; preds = %291, %289
  %303 = phi ptr [ %5, %289 ], [ %299, %291 ]
  %304 = load ptr, ptr %19, align 8, !tbaa !49
  %305 = load ptr, ptr %304, align 8, !tbaa !38
  %306 = getelementptr inbounds ptr, ptr %305, i64 3
  %307 = load ptr, ptr %306, align 8
  %308 = invoke noundef ptr %307(ptr noundef nonnull align 8 dereferenceable(8) %304)
          to label %309 unwind label %300

309:                                              ; preds = %302
  %310 = load i64, ptr %286, align 8, !tbaa !50
  %311 = trunc i64 %310 to i32
  %312 = load ptr, ptr %29, align 8, !tbaa !52
  %313 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %312, i64 0, i32 25
  %314 = load ptr, ptr %313, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %303, ptr noundef %308, i32 noundef 0, i32 noundef %311, ptr noundef %314)
          to label %315 unwind label %300

315:                                              ; preds = %309
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %303)
          to label %316 unwind label %300

316:                                              ; preds = %315
  %317 = load i64, ptr %286, align 8, !tbaa !50
  %318 = icmp ugt i64 %317, 3998
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %321 = load ptr, ptr %320, align 8, !tbaa !55
  %322 = load ptr, ptr %321, align 8, !tbaa !38
  %323 = getelementptr inbounds ptr, ptr %322, i64 3
  %324 = load ptr, ptr %323, align 8
  invoke void %324(ptr noundef nonnull align 8 dereferenceable(8) %321, ptr noundef %303)
          to label %325 unwind label %300

325:                                              ; preds = %319, %316
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #17
  br label %326

326:                                              ; preds = %284, %285, %325
  %327 = load ptr, ptr %29, align 8, !tbaa !52
  %328 = load ptr, ptr %38, align 8, !tbaa !123
  %329 = load i32, ptr %2, align 8, !tbaa !117
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i16, ptr %328, i64 %330
  store i16 0, ptr %331, align 2, !tbaa !61
  %332 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %327, ptr noundef %328)
          to label %333 unwind label %71

333:                                              ; preds = %326, %106
  %334 = phi ptr [ %92, %106 ], [ %332, %326 ]
  %335 = load ptr, ptr %36, align 8, !tbaa !122
  %336 = load ptr, ptr %38, align 8, !tbaa !123
  %337 = load ptr, ptr %335, align 8, !tbaa !38
  %338 = getelementptr inbounds ptr, ptr %337, i64 3
  %339 = load ptr, ptr %338, align 8
  invoke void %339(ptr noundef nonnull align 8 dereferenceable(8) %335, ptr noundef %336)
          to label %343 unwind label %340

340:                                              ; preds = %333
  %341 = landingpad { ptr, i32 }
          catch ptr null
  %342 = extractvalue { ptr, i32 } %341, 0
  call void @__clang_call_terminate(ptr %342) #19
  unreachable

343:                                              ; preds = %333
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  br label %355

344:                                              ; preds = %247, %249, %69, %71, %148, %150, %300, %206, %107
  %345 = phi { ptr, i32 } [ %108, %107 ], [ %301, %300 ], [ %207, %206 ], [ %149, %148 ], [ %151, %150 ], [ %70, %69 ], [ %72, %71 ], [ %248, %247 ], [ %250, %249 ]
  %346 = load ptr, ptr %36, align 8, !tbaa !122
  %347 = load ptr, ptr %38, align 8, !tbaa !123
  %348 = load ptr, ptr %346, align 8, !tbaa !38
  %349 = getelementptr inbounds ptr, ptr %348, i64 3
  %350 = load ptr, ptr %349, align 8
  invoke void %350(ptr noundef nonnull align 8 dereferenceable(8) %346, ptr noundef %347)
          to label %354 unwind label %351

351:                                              ; preds = %344
  %352 = landingpad { ptr, i32 }
          catch ptr null
  %353 = extractvalue { ptr, i32 } %352, 0
  call void @__clang_call_terminate(ptr %353) #19
  unreachable

354:                                              ; preds = %344
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  br label %357

355:                                              ; preds = %22, %343
  %356 = phi ptr [ %334, %343 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %22 ]
  ret ptr %356

357:                                              ; preds = %354, %14
  %358 = phi { ptr, i32 } [ %15, %14 ], [ %345, %354 ]
  resume { ptr, i32 } %358
}

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 !prof !127 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !128

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !61
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !129

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !61
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !130, !llvm.loop !131

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !117
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !119
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !132

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = load i32, ptr %0, align 8, !tbaa !117
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !133
  %28 = load i32, ptr %0, align 8, !tbaa !117
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !117
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  br i1 %2, label %6, label %12

6:                                                ; preds = %5
  %7 = load ptr, ptr %1, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %6, %5
  %13 = load ptr, ptr %1, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 10
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %24 = icmp eq ptr %22, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %18, %38
  %26 = phi ptr [ %42, %38 ], [ %22, %18 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !52
  %28 = icmp ne ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 24
  %30 = icmp eq ptr %29, %26
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 10
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %26, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %25, !llvm.loop !134

44:                                               ; preds = %32, %38, %25, %18, %6, %12, %3
  %45 = phi ptr [ null, %3 ], [ %10, %6 ], [ %16, %12 ], [ null, %18 ], [ null, %25 ], [ null, %38 ], [ %36, %32 ]
  ret ptr %45
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #10 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl26getCommonAncestorContainerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %3, ptr noundef %5)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 25
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl19isValidAncestorTypeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %11
  %5 = phi i1 [ %16, %11 ], [ %3, %2 ]
  %6 = phi ptr [ %15, %11 ], [ %1, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  switch i16 %10, label %11 [
    i16 12, label %17
    i16 10, label %17
    i16 6, label %17
  ]

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !58

17:                                               ; preds = %11, %4, %4, %4, %2
  %18 = phi i1 [ %3, %2 ], [ %16, %11 ], [ %5, %4 ], [ %5, %4 ], [ %5, %4 ]
  ret i1 %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  ret ptr %18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !79, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !83
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !81
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !135

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseSameContainerEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = alloca [4000 x i16], align 16
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %7)
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi ptr [ %11, %5 ], [ null, %2 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %181, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef signext i16 %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq i16 %25, 7
  switch i16 %25, label %97 [
    i16 8, label %27
    i16 7, label %27
    i16 4, label %27
    i16 3, label %27
  ]

27:                                               ; preds = %19, %19, %19, %19
  %28 = load ptr, ptr %20, align 8, !tbaa !41
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 13
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i1 noundef zeroext false)
  %33 = load i64, ptr %16, align 8, !tbaa !50
  %34 = load i64, ptr %14, align 8, !tbaa !48
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load ptr, ptr %32, align 8, !tbaa !38
  %38 = getelementptr inbounds ptr, ptr %37, i64 19
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  br label %79

40:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #17
  %41 = icmp ugt i64 %33, 3998
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = shl i64 %33, 1
  %46 = add i64 %45, 2
  %47 = load ptr, ptr %44, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46)
  br label %51

51:                                               ; preds = %40, %42
  %52 = phi ptr [ %50, %42 ], [ %3, %40 ]
  %53 = load ptr, ptr %32, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %57 = load i64, ptr %14, align 8, !tbaa !48
  %58 = trunc i64 %57 to i32
  %59 = load i64, ptr %16, align 8, !tbaa !50
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %62, i64 0, i32 25
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %56, i32 noundef %58, i32 noundef %60, ptr noundef %64)
  %65 = load ptr, ptr %61, align 8, !tbaa !52
  %66 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %65, ptr noundef %52)
  %67 = load ptr, ptr %32, align 8, !tbaa !38
  %68 = getelementptr inbounds ptr, ptr %67, i64 19
  %69 = load ptr, ptr %68, align 8
  call void %69(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %66)
  %70 = load i64, ptr %16, align 8, !tbaa !50
  %71 = icmp ugt i64 %70, 3998
  br i1 %71, label %72, label %78

72:                                               ; preds = %51
  %73 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  call void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %52)
  br label %78

78:                                               ; preds = %72, %51
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #17
  br label %79

79:                                               ; preds = %78, %36
  %80 = icmp eq i32 %1, 2
  br i1 %80, label %91, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %20, align 8, !tbaa !41
  %83 = load i64, ptr %14, align 8, !tbaa !48
  %84 = load i64, ptr %16, align 8, !tbaa !50
  %85 = sub i64 %84, %83
  br i1 %26, label %86, label %87

86:                                               ; preds = %81
  call void @_ZN11xercesc_2_728DOMProcessingInstructionImpl10deleteDataEmm(ptr noundef nonnull align 8 dereferenceable(72) %82, i64 noundef %83, i64 noundef %85)
  br label %91

87:                                               ; preds = %81
  %88 = load ptr, ptr %82, align 8, !tbaa !38
  %89 = getelementptr inbounds ptr, ptr %88, i64 45
  %90 = load ptr, ptr %89, align 8
  call void %90(ptr noundef nonnull align 8 dereferenceable(8) %82, i64 noundef %83, i64 noundef %85)
  br label %91

91:                                               ; preds = %86, %87, %79
  br i1 %4, label %175, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %13, align 8, !tbaa !38
  %94 = getelementptr inbounds ptr, ptr %93, i64 17
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %32)
  br label %175

97:                                               ; preds = %19
  %98 = load ptr, ptr %20, align 8, !tbaa !41
  %99 = load i64, ptr %14, align 8, !tbaa !48
  %100 = trunc i64 %99 to i32
  %101 = load ptr, ptr %98, align 8, !tbaa !38
  %102 = getelementptr inbounds ptr, ptr %101, i64 4
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef signext i16 %103(ptr noundef nonnull align 8 dereferenceable(8) %98)
  switch i16 %104, label %105 [
    i16 8, label %130
    i16 7, label %130
    i16 4, label %130
    i16 3, label %130
  ]

105:                                              ; preds = %97
  %106 = icmp slt i32 %100, 0
  br i1 %106, label %130, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %98, align 8, !tbaa !38
  %109 = getelementptr inbounds ptr, ptr %108, i64 7
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(8) %98)
  %112 = icmp ne ptr %111, null
  %113 = icmp ne i32 %100, 0
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %126

115:                                              ; preds = %107, %115
  %116 = phi ptr [ %122, %115 ], [ %111, %107 ]
  %117 = phi i32 [ %118, %115 ], [ %100, %107 ]
  %118 = add nsw i32 %117, -1
  %119 = load ptr, ptr %116, align 8, !tbaa !38
  %120 = getelementptr inbounds ptr, ptr %119, i64 10
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %116)
  %123 = icmp ne ptr %122, null
  %124 = icmp sgt i32 %117, 1
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %115, label %126, !llvm.loop !136

126:                                              ; preds = %115, %107
  %127 = phi ptr [ %111, %107 ], [ %122, %115 ]
  %128 = phi i1 [ %112, %107 ], [ %123, %115 ]
  %129 = select i1 %128, ptr %127, ptr %98
  br label %130

130:                                              ; preds = %97, %97, %97, %97, %105, %126
  %131 = phi ptr [ %129, %126 ], [ %98, %97 ], [ %98, %105 ], [ %98, %97 ], [ %98, %97 ], [ %98, %97 ]
  %132 = load i64, ptr %16, align 8, !tbaa !50
  %133 = load i64, ptr %14, align 8, !tbaa !48
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = icmp sgt i32 %135, 0
  %137 = icmp ne ptr %131, null
  %138 = and i1 %137, %136
  br i1 %138, label %139, label %175

139:                                              ; preds = %130
  %140 = icmp eq ptr %13, null
  br label %141

141:                                              ; preds = %139, %170
  %142 = phi i32 [ %135, %139 ], [ %171, %170 ]
  %143 = phi ptr [ %131, %139 ], [ %147, %170 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !38
  %145 = getelementptr inbounds ptr, ptr %144, i64 10
  %146 = load ptr, ptr %145, align 8
  %147 = tail call noundef ptr %146(ptr noundef nonnull align 8 dereferenceable(8) %143)
  switch i32 %1, label %162 [
    i32 2, label %148
    i32 1, label %163
    i32 3, label %153
  ]

148:                                              ; preds = %141
  %149 = load ptr, ptr %143, align 8, !tbaa !38
  %150 = getelementptr inbounds ptr, ptr %149, i64 13
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %143, i1 noundef zeroext true)
  br label %163

153:                                              ; preds = %141
  %154 = load ptr, ptr %143, align 8, !tbaa !38
  %155 = getelementptr inbounds ptr, ptr %154, i64 5
  %156 = load ptr, ptr %155, align 8
  %157 = tail call noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(8) %143)
  %158 = load ptr, ptr %157, align 8, !tbaa !38
  %159 = getelementptr inbounds ptr, ptr %158, i64 16
  %160 = load ptr, ptr %159, align 8
  %161 = tail call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef nonnull %143)
  br label %163

162:                                              ; preds = %141
  br label %163

163:                                              ; preds = %141, %148, %153, %162
  %164 = phi ptr [ null, %162 ], [ null, %153 ], [ %152, %148 ], [ %143, %141 ]
  br i1 %140, label %170, label %165

165:                                              ; preds = %163
  %166 = load ptr, ptr %13, align 8, !tbaa !38
  %167 = getelementptr inbounds ptr, ptr %166, i64 17
  %168 = load ptr, ptr %167, align 8
  %169 = tail call noundef ptr %168(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %164)
  br label %170

170:                                              ; preds = %165, %163
  %171 = add nsw i32 %142, -1
  %172 = icmp sgt i32 %142, 1
  %173 = icmp ne ptr %147, null
  %174 = and i1 %173, %172
  br i1 %174, label %141, label %175, !llvm.loop !137

175:                                              ; preds = %170, %130, %91, %92
  %176 = icmp eq i32 %1, 2
  br i1 %176, label %181, label %177

177:                                              ; preds = %175
  %178 = load ptr, ptr %0, align 8, !tbaa !38
  %179 = getelementptr inbounds ptr, ptr %178, i64 14
  %180 = load ptr, ptr %179, align 8
  call void %180(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %181

181:                                              ; preds = %175, %177, %12
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl28traverseCommonStartContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = icmp eq i32 %2, 3
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %7)
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi ptr [ %11, %5 ], [ null, %3 ]
  %14 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2)
  %15 = icmp eq ptr %13, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %13, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14)
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = load ptr, ptr %1, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load ptr, ptr %1, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %29, %35
  %36 = phi ptr [ %42, %35 ], [ %33, %29 ]
  %37 = phi i64 [ %38, %35 ], [ 0, %29 ]
  %38 = add i64 %37, 1
  %39 = load ptr, ptr %36, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 9
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %36)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %35, !llvm.loop !98

44:                                               ; preds = %35, %29, %21
  %45 = phi i64 [ -1, %21 ], [ 0, %29 ], [ %38, %35 ]
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !48
  %48 = sub i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = icmp eq i32 %2, 2
  br i1 %52, label %103, label %96

53:                                               ; preds = %44
  %54 = load ptr, ptr %1, align 8, !tbaa !38
  %55 = getelementptr inbounds ptr, ptr %54, i64 9
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %58

58:                                               ; preds = %53, %91
  %59 = phi i32 [ %49, %53 ], [ %92, %91 ]
  %60 = phi ptr [ %57, %53 ], [ %64, %91 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !38
  %62 = getelementptr inbounds ptr, ptr %61, i64 9
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %60)
  switch i32 %2, label %79 [
    i32 2, label %65
    i32 1, label %80
    i32 3, label %70
  ]

65:                                               ; preds = %58
  %66 = load ptr, ptr %60, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 13
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %60, i1 noundef zeroext true)
  br label %80

70:                                               ; preds = %58
  %71 = load ptr, ptr %60, align 8, !tbaa !38
  %72 = getelementptr inbounds ptr, ptr %71, i64 5
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %60)
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds ptr, ptr %75, i64 16
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull %60)
  br label %80

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %58, %65, %70, %79
  %81 = phi ptr [ null, %79 ], [ null, %70 ], [ %69, %65 ], [ %60, %58 ]
  br i1 %15, label %91, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %13, align 8, !tbaa !38
  %84 = getelementptr inbounds ptr, ptr %83, i64 7
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %13)
  %87 = load ptr, ptr %13, align 8, !tbaa !38
  %88 = getelementptr inbounds ptr, ptr %87, i64 14
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %81, ptr noundef %86)
  br label %91

91:                                               ; preds = %82, %80
  %92 = add nsw i32 %59, -1
  %93 = icmp sgt i32 %59, 1
  br i1 %93, label %58, label %94, !llvm.loop !138

94:                                               ; preds = %91
  %95 = icmp eq i32 %2, 2
  br i1 %95, label %103, label %96

96:                                               ; preds = %94, %51
  %97 = load ptr, ptr %0, align 8, !tbaa !38
  %98 = getelementptr inbounds ptr, ptr %97, i64 12
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  %100 = load ptr, ptr %0, align 8, !tbaa !38
  %101 = getelementptr inbounds ptr, ptr %100, i64 14
  %102 = load ptr, ptr %101, align 8
  tail call void %102(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  br label %103

103:                                              ; preds = %96, %94, %51
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl26traverseCommonEndContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = icmp eq i32 %2, 3
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %7)
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi ptr [ %11, %5 ], [ null, %3 ]
  %14 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2)
  %15 = icmp eq ptr %13, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %13, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14)
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = load ptr, ptr %1, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load ptr, ptr %1, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %29, %35
  %36 = phi ptr [ %42, %35 ], [ %33, %29 ]
  %37 = phi i64 [ %38, %35 ], [ 0, %29 ]
  %38 = add i64 %37, 1
  %39 = load ptr, ptr %36, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 9
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %36)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %35, !llvm.loop !98

44:                                               ; preds = %35
  %45 = sub i64 -2, %37
  br label %46

46:                                               ; preds = %44, %29, %21
  %47 = phi i64 [ 0, %21 ], [ -1, %29 ], [ %45, %44 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !50
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %1, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 10
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %56 = icmp sgt i32 %51, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %46, %86
  %58 = phi ptr [ %63, %86 ], [ %55, %46 ]
  %59 = phi i32 [ %87, %86 ], [ %51, %46 ]
  %60 = load ptr, ptr %58, align 8, !tbaa !38
  %61 = getelementptr inbounds ptr, ptr %60, i64 10
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %58)
  switch i32 %2, label %78 [
    i32 2, label %64
    i32 1, label %79
    i32 3, label %69
  ]

64:                                               ; preds = %57
  %65 = load ptr, ptr %58, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 13
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %58, i1 noundef zeroext true)
  br label %79

69:                                               ; preds = %57
  %70 = load ptr, ptr %58, align 8, !tbaa !38
  %71 = getelementptr inbounds ptr, ptr %70, i64 5
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %58)
  %74 = load ptr, ptr %73, align 8, !tbaa !38
  %75 = getelementptr inbounds ptr, ptr %74, i64 16
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull %58)
  br label %79

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %57, %64, %69, %78
  %80 = phi ptr [ null, %78 ], [ null, %69 ], [ %68, %64 ], [ %58, %57 ]
  br i1 %15, label %86, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %13, align 8, !tbaa !38
  %83 = getelementptr inbounds ptr, ptr %82, i64 17
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %80)
  br label %86

86:                                               ; preds = %81, %79
  %87 = add nsw i32 %59, -1
  %88 = icmp sgt i32 %59, 1
  br i1 %88, label %57, label %89, !llvm.loop !139

89:                                               ; preds = %86, %46
  %90 = icmp eq i32 %2, 2
  br i1 %90, label %98, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %0, align 8, !tbaa !38
  %93 = getelementptr inbounds ptr, ptr %92, i64 11
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  %95 = load ptr, ptr %0, align 8, !tbaa !38
  %96 = getelementptr inbounds ptr, ptr %95, i64 14
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %98

98:                                               ; preds = %91, %89
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl23traverseCommonAncestorsEPNS_7DOMNodeES2_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 !prof !37 {
  %5 = icmp eq i32 %3, 3
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %8)
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi ptr [ %12, %6 ], [ null, %4 ]
  %15 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %3)
  %16 = icmp eq ptr %14, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 17
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %15)
  br label %22

22:                                               ; preds = %17, %13
  %23 = load ptr, ptr %1, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %27 = load ptr, ptr %1, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %31 = icmp eq ptr %30, %26
  br i1 %31, label %32, label %50

32:                                               ; preds = %22
  %33 = load ptr, ptr %1, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 9
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %45, %38 ], [ %36, %32 ]
  %40 = phi i64 [ %41, %38 ], [ 0, %32 ]
  %41 = add i64 %40, 1
  %42 = load ptr, ptr %39, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 9
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !98

47:                                               ; preds = %38
  %48 = trunc i64 %41 to i32
  %49 = xor i32 %48, -1
  br label %50

50:                                               ; preds = %47, %32, %22
  %51 = phi i32 [ 0, %22 ], [ -1, %32 ], [ %49, %47 ]
  %52 = load ptr, ptr %2, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %56 = icmp eq ptr %55, %26
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load ptr, ptr %2, align 8, !tbaa !38
  %59 = getelementptr inbounds ptr, ptr %58, i64 9
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %70, %63 ], [ %61, %57 ]
  %65 = phi i64 [ %66, %63 ], [ 0, %57 ]
  %66 = add i64 %65, 1
  %67 = load ptr, ptr %64, align 8, !tbaa !38
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %64)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %63, !llvm.loop !98

72:                                               ; preds = %63
  %73 = trunc i64 %66 to i32
  br label %74

74:                                               ; preds = %72, %57, %50
  %75 = phi i32 [ -1, %50 ], [ 0, %57 ], [ %73, %72 ]
  %76 = add i32 %75, %51
  %77 = load ptr, ptr %1, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 10
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %81 = icmp sgt i32 %76, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %74, %111
  %83 = phi ptr [ %88, %111 ], [ %80, %74 ]
  %84 = phi i32 [ %112, %111 ], [ %76, %74 ]
  %85 = load ptr, ptr %83, align 8, !tbaa !38
  %86 = getelementptr inbounds ptr, ptr %85, i64 10
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %83)
  switch i32 %3, label %103 [
    i32 2, label %89
    i32 1, label %104
    i32 3, label %94
  ]

89:                                               ; preds = %82
  %90 = load ptr, ptr %83, align 8, !tbaa !38
  %91 = getelementptr inbounds ptr, ptr %90, i64 13
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %83, i1 noundef zeroext true)
  br label %104

94:                                               ; preds = %82
  %95 = load ptr, ptr %83, align 8, !tbaa !38
  %96 = getelementptr inbounds ptr, ptr %95, i64 5
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %99 = load ptr, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds ptr, ptr %99, i64 16
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull %83)
  br label %104

103:                                              ; preds = %82
  br label %104

104:                                              ; preds = %82, %89, %94, %103
  %105 = phi ptr [ null, %103 ], [ null, %94 ], [ %93, %89 ], [ %83, %82 ]
  br i1 %16, label %111, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr %14, align 8, !tbaa !38
  %108 = getelementptr inbounds ptr, ptr %107, i64 17
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %105)
  br label %111

111:                                              ; preds = %106, %104
  %112 = add nsw i32 %84, -1
  %113 = icmp sgt i32 %84, 1
  br i1 %113, label %82, label %114, !llvm.loop !140

114:                                              ; preds = %111, %74
  %115 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, i32 noundef %3)
  br i1 %16, label %121, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %14, align 8, !tbaa !38
  %118 = getelementptr inbounds ptr, ptr %117, i64 17
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %115)
  br label %121

121:                                              ; preds = %116, %114
  %122 = icmp eq i32 %3, 2
  br i1 %122, label %130, label %123

123:                                              ; preds = %121
  %124 = load ptr, ptr %0, align 8, !tbaa !38
  %125 = getelementptr inbounds ptr, ptr %124, i64 11
  %126 = load ptr, ptr %125, align 8
  tail call void %126(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  %127 = load ptr, ptr %0, align 8, !tbaa !38
  %128 = getelementptr inbounds ptr, ptr %127, i64 14
  %129 = load ptr, ptr %128, align 8
  tail call void %129(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  br label %130

130:                                              ; preds = %123, %121
  ret ptr %14
}

declare void @_ZN11xercesc_2_728DOMProcessingInstructionImpl10deleteDataEmm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15getSelectedNodeEPNS_7DOMNodeEi(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %7, label %8 [
    i16 8, label %33
    i16 7, label %33
    i16 4, label %33
    i16 3, label %33
  ]

8:                                                ; preds = %3
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = icmp ne ptr %14, null
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %25, %18 ], [ %14, %10 ]
  %20 = phi i32 [ %21, %18 ], [ %2, %10 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr %19, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %26 = icmp ne ptr %25, null
  %27 = icmp sgt i32 %20, 1
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %18, label %29, !llvm.loop !136

29:                                               ; preds = %18, %10
  %30 = phi ptr [ %14, %10 ], [ %25, %18 ]
  %31 = phi i1 [ %15, %10 ], [ %26, %18 ]
  %32 = select i1 %31, ptr %30, ptr %1
  br label %33

33:                                               ; preds = %3, %3, %3, %8, %3, %29
  %34 = phi ptr [ %32, %29 ], [ %1, %3 ], [ %1, %8 ], [ %1, %3 ], [ %1, %3 ], [ %1, %3 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  switch i32 %2, label %18 [
    i32 2, label %4
    i32 1, label %19
    i32 3, label %9
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr %1, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 13
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true)
  br label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds ptr, ptr %14, i64 16
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %1)
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %3, %18, %9, %4
  %20 = phi ptr [ null, %18 ], [ null, %9 ], [ %8, %4 ], [ %1, %3 ]
  ret ptr %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, -1
  %10 = load ptr, ptr %5, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %5)
  switch i16 %13, label %14 [
    i16 8, label %39
    i16 7, label %39
    i16 4, label %39
    i16 3, label %39
  ]

14:                                               ; preds = %3
  %15 = icmp slt i32 %9, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %21 = icmp ne ptr %20, null
  %22 = icmp ne i32 %9, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %35

24:                                               ; preds = %16, %24
  %25 = phi ptr [ %31, %24 ], [ %20, %16 ]
  %26 = phi i32 [ %27, %24 ], [ %9, %16 ]
  %27 = add nsw i32 %26, -1
  %28 = load ptr, ptr %25, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %25)
  %32 = icmp ne ptr %31, null
  %33 = icmp sgt i32 %26, 1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %24, label %35, !llvm.loop !136

35:                                               ; preds = %24, %16
  %36 = phi ptr [ %20, %16 ], [ %31, %24 ]
  %37 = phi i1 [ %21, %16 ], [ %32, %24 ]
  %38 = select i1 %37, ptr %36, ptr %5
  br label %39

39:                                               ; preds = %3, %3, %3, %3, %14, %35
  %40 = phi ptr [ %38, %35 ], [ %5, %3 ], [ %5, %14 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !49
  %42 = icmp ne ptr %40, %41
  %43 = icmp eq ptr %40, %1
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %40, i1 noundef zeroext %42, i1 noundef zeroext false, i32 noundef %2)
  br label %131

46:                                               ; preds = %39
  %47 = zext i1 %42 to i8
  %48 = load ptr, ptr %40, align 8, !tbaa !38
  %49 = getelementptr inbounds ptr, ptr %48, i64 5
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %40)
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef signext i16 %54(ptr noundef nonnull align 8 dereferenceable(8) %51)
  switch i16 %55, label %58 [
    i16 8, label %56
    i16 7, label %56
    i16 4, label %56
    i16 3, label %56
  ]

56:                                               ; preds = %46, %46, %46, %46
  %57 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %51, i1 noundef zeroext false, i32 noundef %2)
  br label %66

58:                                               ; preds = %46
  %59 = add i32 %2, -1
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load ptr, ptr %51, align 8, !tbaa !38
  %63 = getelementptr inbounds ptr, ptr %62, i64 13
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %51, i1 noundef zeroext false)
  br label %66

66:                                               ; preds = %56, %58, %61
  %67 = phi ptr [ %57, %56 ], [ %65, %61 ], [ null, %58 ]
  %68 = icmp eq i32 %2, 3
  %69 = add i32 %2, -1
  %70 = icmp ult i32 %69, 2
  %71 = icmp eq i32 %2, 3
  br label %72

72:                                               ; preds = %130, %66
  %73 = phi ptr [ %51, %66 ], [ %110, %130 ]
  %74 = phi ptr [ %67, %66 ], [ %124, %130 ]
  %75 = phi i8 [ %47, %66 ], [ %100, %130 ]
  %76 = phi ptr [ %40, %66 ], [ %106, %130 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %72, %97
  %79 = phi ptr [ %84, %97 ], [ %76, %72 ]
  %80 = phi i8 [ 1, %97 ], [ %75, %72 ]
  %81 = load ptr, ptr %79, align 8, !tbaa !38
  %82 = getelementptr inbounds ptr, ptr %81, i64 9
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %79)
  %85 = and i8 %80, 1
  %86 = icmp ne i8 %85, 0
  %87 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %79, i1 noundef zeroext %86, i1 noundef zeroext false, i32 noundef %2)
  br i1 %68, label %97, label %88

88:                                               ; preds = %78
  %89 = load ptr, ptr %74, align 8, !tbaa !38
  %90 = getelementptr inbounds ptr, ptr %89, i64 7
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %93 = load ptr, ptr %74, align 8, !tbaa !38
  %94 = getelementptr inbounds ptr, ptr %93, i64 14
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %87, ptr noundef %92)
  br label %97

97:                                               ; preds = %88, %78
  %98 = icmp eq ptr %84, null
  br i1 %98, label %99, label %78, !llvm.loop !141

99:                                               ; preds = %97, %72
  %100 = phi i8 [ %75, %72 ], [ 1, %97 ]
  %101 = icmp eq ptr %73, %1
  br i1 %101, label %131, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %73, align 8, !tbaa !38
  %104 = getelementptr inbounds ptr, ptr %103, i64 9
  %105 = load ptr, ptr %104, align 8
  %106 = tail call noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %73)
  %107 = load ptr, ptr %73, align 8, !tbaa !38
  %108 = getelementptr inbounds ptr, ptr %107, i64 5
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %73)
  %111 = load ptr, ptr %110, align 8, !tbaa !38
  %112 = getelementptr inbounds ptr, ptr %111, i64 4
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef signext i16 %113(ptr noundef nonnull align 8 dereferenceable(8) %110)
  switch i16 %114, label %117 [
    i16 8, label %115
    i16 7, label %115
    i16 4, label %115
    i16 3, label %115
  ]

115:                                              ; preds = %102, %102, %102, %102
  %116 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %110, i1 noundef zeroext false, i32 noundef %2)
  br label %123

117:                                              ; preds = %102
  br i1 %70, label %118, label %123

118:                                              ; preds = %117
  %119 = load ptr, ptr %110, align 8, !tbaa !38
  %120 = getelementptr inbounds ptr, ptr %119, i64 13
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %110, i1 noundef zeroext false)
  br label %123

123:                                              ; preds = %115, %117, %118
  %124 = phi ptr [ %116, %115 ], [ %122, %118 ], [ null, %117 ]
  br i1 %71, label %130, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %124, align 8, !tbaa !38
  %127 = getelementptr inbounds ptr, ptr %126, i64 17
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %74)
  br label %130

130:                                              ; preds = %125, %123
  br label %72, !llvm.loop !142

131:                                              ; preds = %99, %44
  %132 = phi ptr [ %45, %44 ], [ %74, %99 ]
  ret ptr %132
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %12 = trunc i64 %11 to i32
  %13 = load ptr, ptr %7, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %7)
  switch i16 %16, label %17 [
    i16 8, label %42
    i16 7, label %42
    i16 4, label %42
    i16 3, label %42
  ]

17:                                               ; preds = %3
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %24 = icmp ne ptr %23, null
  %25 = icmp ne i32 %12, 0
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %19, %27
  %28 = phi ptr [ %34, %27 ], [ %23, %19 ]
  %29 = phi i32 [ %30, %27 ], [ %12, %19 ]
  %30 = add nsw i32 %29, -1
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 10
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %28)
  %35 = icmp ne ptr %34, null
  %36 = icmp sgt i32 %29, 1
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %27, label %38, !llvm.loop !136

38:                                               ; preds = %27, %19
  %39 = phi ptr [ %23, %19 ], [ %34, %27 ]
  %40 = phi i1 [ %24, %19 ], [ %35, %27 ]
  %41 = select i1 %40, ptr %39, ptr %7
  br label %42

42:                                               ; preds = %3, %3, %3, %3, %17, %38
  %43 = phi ptr [ %41, %38 ], [ %7, %3 ], [ %7, %17 ], [ %7, %3 ], [ %7, %3 ], [ %7, %3 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !38
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %48 = icmp ne ptr %43, %47
  %49 = icmp eq ptr %43, %1
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %43, i1 noundef zeroext %48, i1 noundef zeroext true, i32 noundef %2)
  br label %133

52:                                               ; preds = %42
  %53 = zext i1 %48 to i8
  %54 = load ptr, ptr %43, align 8, !tbaa !38
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %43)
  %58 = load ptr, ptr %57, align 8, !tbaa !38
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef signext i16 %60(ptr noundef nonnull align 8 dereferenceable(8) %57)
  switch i16 %61, label %64 [
    i16 8, label %62
    i16 7, label %62
    i16 4, label %62
    i16 3, label %62
  ]

62:                                               ; preds = %52, %52, %52, %52
  %63 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %57, i1 noundef zeroext true, i32 noundef %2)
  br label %72

64:                                               ; preds = %52
  %65 = add i32 %2, -1
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load ptr, ptr %57, align 8, !tbaa !38
  %69 = getelementptr inbounds ptr, ptr %68, i64 13
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %57, i1 noundef zeroext false)
  br label %72

72:                                               ; preds = %62, %64, %67
  %73 = phi ptr [ %63, %62 ], [ %71, %67 ], [ null, %64 ]
  %74 = icmp eq i32 %2, 3
  %75 = add i32 %2, -1
  %76 = icmp ult i32 %75, 2
  %77 = icmp eq i32 %2, 3
  br label %78

78:                                               ; preds = %132, %72
  %79 = phi ptr [ %57, %72 ], [ %112, %132 ]
  %80 = phi ptr [ %73, %72 ], [ %126, %132 ]
  %81 = phi i8 [ %53, %72 ], [ %102, %132 ]
  %82 = phi ptr [ %43, %72 ], [ %108, %132 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %78, %99
  %85 = phi ptr [ %90, %99 ], [ %82, %78 ]
  %86 = phi i8 [ 1, %99 ], [ %81, %78 ]
  %87 = load ptr, ptr %85, align 8, !tbaa !38
  %88 = getelementptr inbounds ptr, ptr %87, i64 10
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %85)
  %91 = and i8 %86, 1
  %92 = icmp ne i8 %91, 0
  %93 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %85, i1 noundef zeroext %92, i1 noundef zeroext true, i32 noundef %2)
  br i1 %74, label %99, label %94

94:                                               ; preds = %84
  %95 = load ptr, ptr %80, align 8, !tbaa !38
  %96 = getelementptr inbounds ptr, ptr %95, i64 17
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %93)
  br label %99

99:                                               ; preds = %94, %84
  %100 = icmp eq ptr %90, null
  br i1 %100, label %101, label %84, !llvm.loop !143

101:                                              ; preds = %99, %78
  %102 = phi i8 [ %81, %78 ], [ 1, %99 ]
  %103 = icmp eq ptr %79, %1
  br i1 %103, label %133, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %79, align 8, !tbaa !38
  %106 = getelementptr inbounds ptr, ptr %105, i64 10
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(8) %79)
  %109 = load ptr, ptr %79, align 8, !tbaa !38
  %110 = getelementptr inbounds ptr, ptr %109, i64 5
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %79)
  %113 = load ptr, ptr %112, align 8, !tbaa !38
  %114 = getelementptr inbounds ptr, ptr %113, i64 4
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef signext i16 %115(ptr noundef nonnull align 8 dereferenceable(8) %112)
  switch i16 %116, label %119 [
    i16 8, label %117
    i16 7, label %117
    i16 4, label %117
    i16 3, label %117
  ]

117:                                              ; preds = %104, %104, %104, %104
  %118 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %112, i1 noundef zeroext true, i32 noundef %2)
  br label %125

119:                                              ; preds = %104
  br i1 %76, label %120, label %125

120:                                              ; preds = %119
  %121 = load ptr, ptr %112, align 8, !tbaa !38
  %122 = getelementptr inbounds ptr, ptr %121, i64 13
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %112, i1 noundef zeroext false)
  br label %125

125:                                              ; preds = %117, %119, %120
  %126 = phi ptr [ %118, %117 ], [ %124, %120 ], [ null, %119 ]
  br i1 %77, label %132, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %126, align 8, !tbaa !38
  %129 = getelementptr inbounds ptr, ptr %128, i64 17
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef %80)
  br label %132

132:                                              ; preds = %127, %125
  br label %78, !llvm.loop !144

133:                                              ; preds = %101, %50
  %134 = phi ptr [ %51, %50 ], [ %80, %101 ]
  ret ptr %134
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #5 align 2 !prof !37 {
  br i1 %2, label %6, label %22

6:                                                ; preds = %5
  switch i32 %4, label %21 [
    i32 2, label %7
    i32 1, label %37
    i32 3, label %12
  ]

7:                                                ; preds = %6
  %8 = load ptr, ptr %1, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true)
  br label %37

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %1)
  br label %37

21:                                               ; preds = %6
  br label %37

22:                                               ; preds = %5
  %23 = load ptr, ptr %1, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef signext i16 %25(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %26, label %29 [
    i16 8, label %27
    i16 7, label %27
    i16 4, label %27
    i16 3, label %27
  ]

27:                                               ; preds = %22, %22, %22, %22
  %28 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, i1 noundef zeroext %3, i32 noundef %4)
  br label %37

29:                                               ; preds = %22
  %30 = add i32 %4, -1
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load ptr, ptr %1, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 13
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
  br label %37

37:                                               ; preds = %32, %29, %21, %12, %7, %6, %27
  %38 = phi ptr [ %28, %27 ], [ null, %21 ], [ null, %12 ], [ %11, %7 ], [ %1, %6 ], [ %36, %32 ], [ null, %29 ]
  ret ptr %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca [4000 x i16], align 16
  %7 = alloca [4000 x i16], align 16
  %8 = alloca [4000 x i16], align 16
  %9 = alloca [4000 x i16], align 16
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = icmp eq ptr %13, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %4
  %18 = load i16, ptr %13, align 2, !tbaa !61
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %22, %20 ], [ %13, %17 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !61
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %20, !llvm.loop !63

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i64
  %27 = ptrtoint ptr %13 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, 2
  %30 = and i64 %29, 8589934590
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i64 [ %30, %25 ], [ 2, %17 ]
  %33 = load ptr, ptr %15, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %32)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr nonnull align 2 %13, i64 %32, i1 false)
  br label %37

37:                                               ; preds = %4, %31
  %38 = phi ptr [ %36, %31 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %39 = load ptr, ptr %14, align 8, !tbaa !55
  store ptr %38, ptr %5, align 8, !tbaa !145
  %40 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !147
  br i1 %2, label %41, label %166

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %48 unwind label %79

48:                                               ; preds = %41
  %49 = icmp eq ptr %47, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %48
  %51 = load i16, ptr %47, align 2, !tbaa !61
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %55, %53 ], [ %47, %50 ]
  %55 = getelementptr inbounds i16, ptr %54, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !61
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %53, !llvm.loop !63

58:                                               ; preds = %53
  %59 = ptrtoint ptr %55 to i64
  %60 = ptrtoint ptr %47 to i64
  %61 = sub i64 %59, %60
  %62 = lshr exact i64 %61, 1
  %63 = trunc i64 %62 to i32
  br label %64

64:                                               ; preds = %48, %50, %58
  %65 = phi i32 [ %63, %58 ], [ 0, %50 ], [ 0, %48 ]
  %66 = load ptr, ptr %0, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef i64 %68(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %70 unwind label %81

70:                                               ; preds = %64
  %71 = trunc i64 %69 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = icmp eq i32 %3, 2
  br i1 %74, label %120, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %1, align 8, !tbaa !38
  %77 = getelementptr inbounds ptr, ptr %76, i64 19
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %118 unwind label %81

79:                                               ; preds = %41
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %293

81:                                               ; preds = %75, %64
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %293

83:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %6) #17
  %84 = icmp sgt i32 %71, 3998
  br i1 %84, label %85, label %96

85:                                               ; preds = %83
  %86 = load ptr, ptr %14, align 8, !tbaa !55
  %87 = shl i64 %69, 1
  %88 = add i64 %87, 2
  %89 = and i64 %88, 8589934590
  %90 = load ptr, ptr %86, align 8, !tbaa !38
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %86, i64 noundef %89)
          to label %96 unwind label %94

94:                                               ; preds = %112, %107, %104, %96, %85
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %6) #17
  br label %293

96:                                               ; preds = %85, %83
  %97 = phi ptr [ %6, %83 ], [ %93, %85 ]
  %98 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !52
  %100 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %99, i64 0, i32 25
  %101 = load ptr, ptr %100, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %97, ptr noundef %38, i32 noundef 0, i32 noundef %71, ptr noundef %101)
          to label %102 unwind label %94

102:                                              ; preds = %96
  %103 = icmp eq i32 %3, 2
  br i1 %103, label %111, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %98, align 8, !tbaa !52
  %106 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %105, ptr noundef %97)
          to label %107 unwind label %94

107:                                              ; preds = %104
  %108 = load ptr, ptr %1, align 8, !tbaa !38
  %109 = getelementptr inbounds ptr, ptr %108, i64 19
  %110 = load ptr, ptr %109, align 8
  invoke void %110(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %106)
          to label %111 unwind label %94

111:                                              ; preds = %107, %102
  br i1 %84, label %112, label %117

112:                                              ; preds = %111
  %113 = load ptr, ptr %14, align 8, !tbaa !55
  %114 = load ptr, ptr %113, align 8, !tbaa !38
  %115 = getelementptr inbounds ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef %97)
          to label %117 unwind label %94

117:                                              ; preds = %112, %111
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %6) #17
  br label %118

118:                                              ; preds = %75, %117
  %119 = icmp eq i32 %3, 3
  br i1 %119, label %291, label %120

120:                                              ; preds = %73, %118
  %121 = load ptr, ptr %1, align 8, !tbaa !38
  %122 = getelementptr inbounds ptr, ptr %121, i64 13
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
          to label %125 unwind label %131

125:                                              ; preds = %120
  %126 = icmp eq i32 %65, %71
  br i1 %126, label %127, label %133

127:                                              ; preds = %125
  %128 = load ptr, ptr %124, align 8, !tbaa !38
  %129 = getelementptr inbounds ptr, ptr %128, i64 19
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %291 unwind label %131

131:                                              ; preds = %127, %120
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %293

133:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %7) #17
  %134 = icmp sgt i32 %71, 3998
  br i1 %134, label %135, label %146

135:                                              ; preds = %133
  %136 = load ptr, ptr %14, align 8, !tbaa !55
  %137 = shl i64 %69, 1
  %138 = add i64 %137, 2
  %139 = and i64 %138, 8589934590
  %140 = load ptr, ptr %136, align 8, !tbaa !38
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8
  %143 = invoke noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %136, i64 noundef %139)
          to label %146 unwind label %144

144:                                              ; preds = %160, %155, %152, %146, %135
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #17
  br label %293

146:                                              ; preds = %135, %133
  %147 = phi ptr [ %7, %133 ], [ %143, %135 ]
  %148 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %149, i64 0, i32 25
  %151 = load ptr, ptr %150, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %147, ptr noundef %38, i32 noundef %71, i32 noundef %65, ptr noundef %151)
          to label %152 unwind label %144

152:                                              ; preds = %146
  %153 = load ptr, ptr %148, align 8, !tbaa !52
  %154 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %153, ptr noundef %147)
          to label %155 unwind label %144

155:                                              ; preds = %152
  %156 = load ptr, ptr %124, align 8, !tbaa !38
  %157 = getelementptr inbounds ptr, ptr %156, i64 19
  %158 = load ptr, ptr %157, align 8
  invoke void %158(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %154)
          to label %159 unwind label %144

159:                                              ; preds = %155
  br i1 %134, label %160, label %165

160:                                              ; preds = %159
  %161 = load ptr, ptr %14, align 8, !tbaa !55
  %162 = load ptr, ptr %161, align 8, !tbaa !38
  %163 = getelementptr inbounds ptr, ptr %162, i64 3
  %164 = load ptr, ptr %163, align 8
  invoke void %164(ptr noundef nonnull align 8 dereferenceable(8) %161, ptr noundef %147)
          to label %165 unwind label %144

165:                                              ; preds = %160, %159
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #17
  br label %291

166:                                              ; preds = %37
  %167 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !49
  %169 = load ptr, ptr %168, align 8, !tbaa !38
  %170 = getelementptr inbounds ptr, ptr %169, i64 3
  %171 = load ptr, ptr %170, align 8
  %172 = invoke noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(8) %168)
          to label %173 unwind label %204

173:                                              ; preds = %166
  %174 = icmp eq ptr %172, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %173
  %176 = load i16, ptr %172, align 2, !tbaa !61
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %180, %178 ], [ %172, %175 ]
  %180 = getelementptr inbounds i16, ptr %179, i64 1
  %181 = load i16, ptr %180, align 2, !tbaa !61
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %178, !llvm.loop !63

183:                                              ; preds = %178
  %184 = ptrtoint ptr %180 to i64
  %185 = ptrtoint ptr %172 to i64
  %186 = sub i64 %184, %185
  %187 = lshr exact i64 %186, 1
  %188 = trunc i64 %187 to i32
  br label %189

189:                                              ; preds = %173, %175, %183
  %190 = phi i32 [ %188, %183 ], [ 0, %175 ], [ 0, %173 ]
  %191 = load ptr, ptr %0, align 8, !tbaa !38
  %192 = getelementptr inbounds ptr, ptr %191, i64 5
  %193 = load ptr, ptr %192, align 8
  %194 = invoke noundef i64 %193(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %195 unwind label %206

195:                                              ; preds = %189
  %196 = trunc i64 %194 to i32
  %197 = icmp eq i32 %190, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = icmp eq i32 %3, 2
  br i1 %199, label %245, label %200

200:                                              ; preds = %198
  %201 = load ptr, ptr %1, align 8, !tbaa !38
  %202 = getelementptr inbounds ptr, ptr %201, i64 19
  %203 = load ptr, ptr %202, align 8
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %243 unwind label %206

204:                                              ; preds = %166
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %293

206:                                              ; preds = %200, %189
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %293

208:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %8) #17
  %209 = icmp sgt i32 %196, 3998
  br i1 %209, label %210, label %221

210:                                              ; preds = %208
  %211 = load ptr, ptr %14, align 8, !tbaa !55
  %212 = shl i64 %194, 1
  %213 = add i64 %212, 2
  %214 = and i64 %213, 8589934590
  %215 = load ptr, ptr %211, align 8, !tbaa !38
  %216 = getelementptr inbounds ptr, ptr %215, i64 2
  %217 = load ptr, ptr %216, align 8
  %218 = invoke noundef ptr %217(ptr noundef nonnull align 8 dereferenceable(8) %211, i64 noundef %214)
          to label %221 unwind label %219

219:                                              ; preds = %237, %232, %229, %221, %210
  %220 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %8) #17
  br label %293

221:                                              ; preds = %210, %208
  %222 = phi ptr [ %8, %208 ], [ %218, %210 ]
  %223 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %224 = load ptr, ptr %223, align 8, !tbaa !52
  %225 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %224, i64 0, i32 25
  %226 = load ptr, ptr %225, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %222, ptr noundef %38, i32 noundef %196, i32 noundef %190, ptr noundef %226)
          to label %227 unwind label %219

227:                                              ; preds = %221
  %228 = icmp eq i32 %3, 2
  br i1 %228, label %236, label %229

229:                                              ; preds = %227
  %230 = load ptr, ptr %223, align 8, !tbaa !52
  %231 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %230, ptr noundef %222)
          to label %232 unwind label %219

232:                                              ; preds = %229
  %233 = load ptr, ptr %1, align 8, !tbaa !38
  %234 = getelementptr inbounds ptr, ptr %233, i64 19
  %235 = load ptr, ptr %234, align 8
  invoke void %235(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %231)
          to label %236 unwind label %219

236:                                              ; preds = %232, %227
  br i1 %209, label %237, label %242

237:                                              ; preds = %236
  %238 = load ptr, ptr %14, align 8, !tbaa !55
  %239 = load ptr, ptr %238, align 8, !tbaa !38
  %240 = getelementptr inbounds ptr, ptr %239, i64 3
  %241 = load ptr, ptr %240, align 8
  invoke void %241(ptr noundef nonnull align 8 dereferenceable(8) %238, ptr noundef %222)
          to label %242 unwind label %219

242:                                              ; preds = %237, %236
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %8) #17
  br label %243

243:                                              ; preds = %200, %242
  %244 = icmp eq i32 %3, 3
  br i1 %244, label %291, label %245

245:                                              ; preds = %198, %243
  %246 = load ptr, ptr %1, align 8, !tbaa !38
  %247 = getelementptr inbounds ptr, ptr %246, i64 13
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef ptr %248(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
          to label %250 unwind label %256

250:                                              ; preds = %245
  %251 = icmp eq i32 %196, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %250
  %253 = load ptr, ptr %249, align 8, !tbaa !38
  %254 = getelementptr inbounds ptr, ptr %253, i64 19
  %255 = load ptr, ptr %254, align 8
  invoke void %255(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %291 unwind label %256

256:                                              ; preds = %252, %245
  %257 = landingpad { ptr, i32 }
          cleanup
  br label %293

258:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %9) #17
  %259 = icmp sgt i32 %196, 3998
  br i1 %259, label %260, label %271

260:                                              ; preds = %258
  %261 = load ptr, ptr %14, align 8, !tbaa !55
  %262 = shl i64 %194, 1
  %263 = add i64 %262, 2
  %264 = and i64 %263, 8589934590
  %265 = load ptr, ptr %261, align 8, !tbaa !38
  %266 = getelementptr inbounds ptr, ptr %265, i64 2
  %267 = load ptr, ptr %266, align 8
  %268 = invoke noundef ptr %267(ptr noundef nonnull align 8 dereferenceable(8) %261, i64 noundef %264)
          to label %271 unwind label %269

269:                                              ; preds = %285, %280, %277, %271, %260
  %270 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %9) #17
  br label %293

271:                                              ; preds = %260, %258
  %272 = phi ptr [ %9, %258 ], [ %268, %260 ]
  %273 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %274 = load ptr, ptr %273, align 8, !tbaa !52
  %275 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %274, i64 0, i32 25
  %276 = load ptr, ptr %275, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %272, ptr noundef %38, i32 noundef 0, i32 noundef %196, ptr noundef %276)
          to label %277 unwind label %269

277:                                              ; preds = %271
  %278 = load ptr, ptr %273, align 8, !tbaa !52
  %279 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %278, ptr noundef %272)
          to label %280 unwind label %269

280:                                              ; preds = %277
  %281 = load ptr, ptr %249, align 8, !tbaa !38
  %282 = getelementptr inbounds ptr, ptr %281, i64 19
  %283 = load ptr, ptr %282, align 8
  invoke void %283(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef %279)
          to label %284 unwind label %269

284:                                              ; preds = %280
  br i1 %259, label %285, label %290

285:                                              ; preds = %284
  %286 = load ptr, ptr %14, align 8, !tbaa !55
  %287 = load ptr, ptr %286, align 8, !tbaa !38
  %288 = getelementptr inbounds ptr, ptr %287, i64 3
  %289 = load ptr, ptr %288, align 8
  invoke void %289(ptr noundef nonnull align 8 dereferenceable(8) %286, ptr noundef %272)
          to label %290 unwind label %269

290:                                              ; preds = %285, %284
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %9) #17
  br label %291

291:                                              ; preds = %252, %127, %243, %290, %118, %165
  %292 = phi ptr [ null, %118 ], [ %124, %165 ], [ null, %243 ], [ %249, %290 ], [ %124, %127 ], [ %249, %252 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret ptr %292

293:                                              ; preds = %204, %256, %269, %219, %206, %79, %131, %144, %94, %81
  %294 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ], [ %95, %94 ], [ %132, %131 ], [ %145, %144 ], [ %205, %204 ], [ %207, %206 ], [ %220, %219 ], [ %257, %256 ], [ %270, %269 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  resume { ptr, i32 } %294
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl25traversePartiallySelectedEPNS_7DOMNodeEi(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 13
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
  br label %11

11:                                               ; preds = %3, %6
  %12 = phi ptr [ %10, %6 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !145
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !149

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !150

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !151

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #16
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
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl19recurseTreeAndCheckEPNS_7DOMNodeES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %1, %2
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2
  br label %10

9:                                                ; preds = %46, %3
  ret void

10:                                               ; preds = %7, %46
  %11 = phi ptr [ %1, %7 ], [ %51, %46 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef signext i16 %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = icmp eq i16 %15, 10
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %18, i16 noundef signext 3, ptr noundef null, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %55

24:                                               ; preds = %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %11, i64 0, i32 1, i32 1
  %26 = load i16, ptr %25, align 8, !tbaa !112
  %27 = and i16 %8, %26
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %30, i16 noundef signext 7, ptr noundef null, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %55

36:                                               ; preds = %24
  %37 = load ptr, ptr %11, align 8, !tbaa !38
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load ptr, ptr %11, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %11)
  tail call void @_ZN11xercesc_2_712DOMRangeImpl19recurseTreeAndCheckEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %45, ptr noundef %2)
  br label %46

46:                                               ; preds = %36, %41
  %47 = phi ptr [ %45, %41 ], [ %11, %36 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !38
  %49 = getelementptr inbounds ptr, ptr %48, i64 10
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %47)
  %52 = icmp ne ptr %51, null
  %53 = icmp ne ptr %51, %2
  %54 = and i1 %52, %53
  br i1 %54, label %10, label %9, !llvm.loop !152

55:                                               ; preds = %34, %22
  %56 = phi ptr [ %30, %34 ], [ %18, %22 ]
  %57 = phi { ptr, i32 } [ %35, %34 ], [ %23, %22 ]
  tail call void @__cxa_free_exception(ptr %56) #17
  resume { ptr, i32 } %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl11removeChildEPNS_7DOMNodeES2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  store ptr %2, ptr %4, align 8, !tbaa !54
  %5 = load ptr, ptr %1, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  store ptr null, ptr %4, align 8, !tbaa !54
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl19receiveReplacedTextEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = load ptr, ptr %5, align 8, !tbaa !41
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  switch i16 %10, label %16 [
    i16 8, label %14
    i16 7, label %14
    i16 4, label %14
    i16 3, label %14
  ]

14:                                               ; preds = %13, %13, %13, %13
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !48
  br label %16

16:                                               ; preds = %13, %14, %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i16 %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %23 = load ptr, ptr %17, align 8, !tbaa !49
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  switch i16 %22, label %28 [
    i16 8, label %26
    i16 7, label %26
    i16 4, label %26
    i16 3, label %26
  ]

26:                                               ; preds = %25, %25, %25, %25
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 0, ptr %27, align 8, !tbaa !50
  br label %28

28:                                               ; preds = %16, %26, %25, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedTextEPNS_7DOMNodeEmi(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 !prof !37 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = load ptr, ptr %7, align 8, !tbaa !41
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %28

15:                                               ; preds = %6
  switch i16 %12, label %28 [
    i16 8, label %16
    i16 7, label %16
    i16 4, label %16
    i16 3, label %16
  ]

16:                                               ; preds = %15, %15, %15, %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = sext i32 %3 to i64
  %20 = add i64 %19, %2
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = sub i64 %18, %19
  br label %26

24:                                               ; preds = %16
  %25 = icmp ugt i64 %18, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %2, %24 ]
  store i64 %27, ptr %17, align 8, !tbaa !48
  br label %28

28:                                               ; preds = %26, %15, %24, %6
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef signext i16 %33(ptr noundef nonnull align 8 dereferenceable(8) %30)
  %35 = load ptr, ptr %29, align 8, !tbaa !49
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  switch i16 %34, label %50 [
    i16 8, label %38
    i16 7, label %38
    i16 4, label %38
    i16 3, label %38
  ]

38:                                               ; preds = %37, %37, %37, %37
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !50
  %41 = sext i32 %3 to i64
  %42 = add i64 %41, %2
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = sub i64 %40, %41
  br label %48

46:                                               ; preds = %38
  %47 = icmp ugt i64 %40, %2
  br i1 %47, label %48, label %50

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %2, %46 ]
  store i64 %49, ptr %39, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %48, %28, %46, %37, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedTextEPNS_7DOMNodeEmi(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 !prof !37 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = load ptr, ptr %7, align 8, !tbaa !41
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  switch i16 %12, label %21 [
    i16 8, label %16
    i16 7, label %16
    i16 4, label %16
    i16 3, label %16
  ]

16:                                               ; preds = %15, %15, %15, %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp ugt i64 %18, %2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 %2, ptr %17, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %15, %16, %20, %6
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef signext i16 %26(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %28 = load ptr, ptr %22, align 8, !tbaa !49
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  switch i16 %27, label %38 [
    i16 8, label %31
    i16 7, label %31
    i16 4, label %31
    i16 3, label %31
  ]

31:                                               ; preds = %30, %30, %30, %30
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !50
  %34 = icmp ugt i64 %33, %2
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = sext i32 %3 to i64
  %37 = add i64 %33, %36
  store i64 %37, ptr %32, align 8, !tbaa !50
  br label %38

38:                                               ; preds = %30, %21, %35, %31, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %3, i1 true, i1 %6
  br i1 %7, label %182, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = load ptr, ptr %1, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load ptr, ptr %1, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 9
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %22 ]
  %30 = phi i64 [ %31, %28 ], [ 0, %22 ]
  %31 = add i64 %30, 1
  %32 = load ptr, ptr %29, align 8, !tbaa !38
  %33 = getelementptr inbounds ptr, ptr %32, i64 9
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %29)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !98

37:                                               ; preds = %28, %22, %16
  %38 = phi i64 [ -1, %16 ], [ 0, %22 ], [ %31, %28 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !48
  %41 = icmp ugt i64 %40, %38
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = add i64 %40, -1
  store i64 %43, ptr %39, align 8, !tbaa !48
  br label %44

44:                                               ; preds = %37, %42, %8
  %45 = load ptr, ptr %1, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 5
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %44
  %53 = load ptr, ptr %1, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %57 = icmp eq ptr %56, %50
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load ptr, ptr %1, align 8, !tbaa !38
  %60 = getelementptr inbounds ptr, ptr %59, i64 9
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %58, %64
  %65 = phi ptr [ %71, %64 ], [ %62, %58 ]
  %66 = phi i64 [ %67, %64 ], [ 0, %58 ]
  %67 = add i64 %66, 1
  %68 = load ptr, ptr %65, align 8, !tbaa !38
  %69 = getelementptr inbounds ptr, ptr %68, i64 9
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %65)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %64, !llvm.loop !98

73:                                               ; preds = %64, %58, %52
  %74 = phi i64 [ -1, %52 ], [ 0, %58 ], [ %67, %64 ]
  %75 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %76 = load i64, ptr %75, align 8, !tbaa !50
  %77 = icmp ugt i64 %76, %74
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = add i64 %76, -1
  store i64 %79, ptr %75, align 8, !tbaa !50
  br label %80

80:                                               ; preds = %73, %78, %44
  %81 = load ptr, ptr %1, align 8, !tbaa !38
  %82 = getelementptr inbounds ptr, ptr %81, i64 5
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %85 = load ptr, ptr %13, align 8, !tbaa !41
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load ptr, ptr %1, align 8, !tbaa !38
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %92 = load ptr, ptr %49, align 8, !tbaa !49
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %182, label %94

94:                                               ; preds = %87, %80
  %95 = load ptr, ptr %13, align 8, !tbaa !41
  %96 = icmp eq ptr %95, null
  %97 = icmp eq ptr %95, %1
  %98 = or i1 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %94, %99
  %100 = phi ptr [ %104, %99 ], [ %95, %94 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !38
  %102 = getelementptr inbounds ptr, ptr %101, i64 5
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100)
  %105 = icmp eq ptr %104, null
  %106 = icmp eq ptr %104, %1
  %107 = or i1 %105, %106
  br i1 %107, label %108, label %99, !llvm.loop !97

108:                                              ; preds = %99, %94
  %109 = phi i1 [ %96, %94 ], [ %105, %99 ]
  br i1 %109, label %138, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr %1, align 8, !tbaa !38
  %112 = getelementptr inbounds ptr, ptr %111, i64 5
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xercesc_2_712DOMRangeImpl17setStartContainerEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %114)
  %115 = load ptr, ptr %1, align 8, !tbaa !38
  %116 = getelementptr inbounds ptr, ptr %115, i64 5
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %119 = icmp eq ptr %118, %114
  br i1 %119, label %120, label %135

120:                                              ; preds = %110
  %121 = load ptr, ptr %1, align 8, !tbaa !38
  %122 = getelementptr inbounds ptr, ptr %121, i64 9
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %120, %126
  %127 = phi ptr [ %133, %126 ], [ %124, %120 ]
  %128 = phi i64 [ %129, %126 ], [ 0, %120 ]
  %129 = add i64 %128, 1
  %130 = load ptr, ptr %127, align 8, !tbaa !38
  %131 = getelementptr inbounds ptr, ptr %130, i64 9
  %132 = load ptr, ptr %131, align 8
  %133 = tail call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %127)
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %126, !llvm.loop !98

135:                                              ; preds = %126, %120, %110
  %136 = phi i64 [ -1, %110 ], [ 0, %120 ], [ %129, %126 ]
  %137 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %136, ptr %137, align 8, !tbaa !48
  br label %138

138:                                              ; preds = %135, %108
  %139 = load ptr, ptr %49, align 8, !tbaa !49
  %140 = icmp eq ptr %139, null
  %141 = icmp eq ptr %139, %1
  %142 = or i1 %140, %141
  br i1 %142, label %152, label %143

143:                                              ; preds = %138, %143
  %144 = phi ptr [ %148, %143 ], [ %139, %138 ]
  %145 = load ptr, ptr %144, align 8, !tbaa !38
  %146 = getelementptr inbounds ptr, ptr %145, i64 5
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(8) %144)
  %149 = icmp eq ptr %148, null
  %150 = icmp eq ptr %148, %1
  %151 = or i1 %149, %150
  br i1 %151, label %152, label %143, !llvm.loop !97

152:                                              ; preds = %143, %138
  %153 = phi i1 [ %140, %138 ], [ %149, %143 ]
  br i1 %153, label %182, label %154

154:                                              ; preds = %152
  %155 = load ptr, ptr %1, align 8, !tbaa !38
  %156 = getelementptr inbounds ptr, ptr %155, i64 5
  %157 = load ptr, ptr %156, align 8
  %158 = tail call noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xercesc_2_712DOMRangeImpl15setEndContainerEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %158)
  %159 = load ptr, ptr %1, align 8, !tbaa !38
  %160 = getelementptr inbounds ptr, ptr %159, i64 5
  %161 = load ptr, ptr %160, align 8
  %162 = tail call noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %163 = icmp eq ptr %162, %158
  br i1 %163, label %164, label %179

164:                                              ; preds = %154
  %165 = load ptr, ptr %1, align 8, !tbaa !38
  %166 = getelementptr inbounds ptr, ptr %165, i64 9
  %167 = load ptr, ptr %166, align 8
  %168 = tail call noundef ptr %167(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %164, %170
  %171 = phi ptr [ %177, %170 ], [ %168, %164 ]
  %172 = phi i64 [ %173, %170 ], [ 0, %164 ]
  %173 = add i64 %172, 1
  %174 = load ptr, ptr %171, align 8, !tbaa !38
  %175 = getelementptr inbounds ptr, ptr %174, i64 9
  %176 = load ptr, ptr %175, align 8
  %177 = tail call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %171)
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %170, !llvm.loop !98

179:                                              ; preds = %170, %164, %154
  %180 = phi i64 [ -1, %154 ], [ 0, %164 ], [ %173, %170 ]
  %181 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %180, ptr %181, align 8, !tbaa !50
  br label %182

182:                                              ; preds = %152, %179, %2, %87
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %76, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load ptr, ptr %1, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 9
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %18, %24
  %25 = phi ptr [ %31, %24 ], [ %22, %18 ]
  %26 = phi i64 [ %27, %24 ], [ 0, %18 ]
  %27 = add i64 %26, 1
  %28 = load ptr, ptr %25, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 9
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %25)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !98

33:                                               ; preds = %24, %18, %12
  %34 = phi i64 [ -1, %12 ], [ 0, %18 ], [ %27, %24 ]
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !48
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = add i64 %36, 1
  store i64 %39, ptr %35, align 8, !tbaa !48
  br label %40

40:                                               ; preds = %33, %38, %4
  %41 = load ptr, ptr %1, align 8, !tbaa !38
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %40
  %49 = load ptr, ptr %1, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 5
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %53 = icmp eq ptr %52, %46
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load ptr, ptr %1, align 8, !tbaa !38
  %56 = getelementptr inbounds ptr, ptr %55, i64 9
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %67, %60 ], [ %58, %54 ]
  %62 = phi i64 [ %63, %60 ], [ 0, %54 ]
  %63 = add i64 %62, 1
  %64 = load ptr, ptr %61, align 8, !tbaa !38
  %65 = getelementptr inbounds ptr, ptr %64, i64 9
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %61)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %60, !llvm.loop !98

69:                                               ; preds = %60, %54, %48
  %70 = phi i64 [ -1, %48 ], [ 0, %54 ], [ %63, %60 ]
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %72 = load i64, ptr %71, align 8, !tbaa !50
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = add i64 %72, 1
  store i64 %75, ptr %71, align 8, !tbaa !50
  br label %76

76:                                               ; preds = %69, %74, %2, %40
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl15updateSplitInfoEPNS_7DOMNodeES2_m(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 align 2 !prof !37 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = load ptr, ptr %7, align 8, !tbaa !41
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  switch i16 %12, label %22 [
    i16 8, label %16
    i16 7, label %16
    i16 4, label %16
    i16 3, label %16
  ]

16:                                               ; preds = %15, %15, %15, %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp ugt i64 %18, %3
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = sub i64 %18, %3
  store i64 %21, ptr %17, align 8, !tbaa !48
  store ptr %2, ptr %7, align 8, !tbaa !41
  br label %22

22:                                               ; preds = %15, %16, %20, %6
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef signext i16 %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %29 = load ptr, ptr %23, align 8, !tbaa !49
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  switch i16 %28, label %38 [
    i16 8, label %32
    i16 7, label %32
    i16 4, label %32
    i16 3, label %32
  ]

32:                                               ; preds = %31, %31, %31, %31
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !50
  %35 = icmp ugt i64 %34, %3
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  store ptr %2, ptr %23, align 8, !tbaa !49
  %37 = sub i64 %34, %3
  store i64 %37, ptr %33, align 8, !tbaa !50
  br label %38

38:                                               ; preds = %31, %22, %36, %32, %4
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #17
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !79, !range !56, !noundef !57
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #17
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !83
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !85
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !81
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !81
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !79, !range !56, !noundef !57
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !83
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #17
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !83
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !85
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !81
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !153
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !79, !range !56, !noundef !57
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #17
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !81
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
  %40 = load ptr, ptr %35, align 8, !tbaa !83
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !85
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !154

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !83
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !85
  store i32 %30, ptr %3, align 4, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !81
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !81
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !79, !range !56, !noundef !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !79, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !83
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !81
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !155

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !81
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !85
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !83
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !85
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !159

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !84
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = load ptr, ptr %49, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !83
  store i32 %12, ptr %6, align 8, !tbaa !82
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !44, i64 8}
!42 = !{!"_ZTSN11xercesc_2_712DOMRangeImplE", !43, i64 0, !44, i64 8, !46, i64 16, !44, i64 24, !46, i64 32, !47, i64 40, !44, i64 48, !47, i64 56, !44, i64 64, !44, i64 72}
!43 = !{!"_ZTSN11xercesc_2_78DOMRangeE"}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !40, i64 0}
!46 = !{!"long", !45, i64 0}
!47 = !{!"bool", !45, i64 0}
!48 = !{!42, !46, i64 16}
!49 = !{!42, !44, i64 24}
!50 = !{!42, !46, i64 32}
!51 = !{!42, !47, i64 40}
!52 = !{!42, !44, i64 48}
!53 = !{!42, !47, i64 56}
!54 = !{!42, !44, i64 64}
!55 = !{!42, !44, i64 72}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !45, i64 0}
!63 = distinct !{!63, !59, !60}
!64 = distinct !{!64, !59, !60}
!65 = !{!66, !44, i64 280}
!66 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !67, i64 0, !72, i64 32, !73, i64 48, !44, i64 80, !44, i64 88, !44, i64 96, !47, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !76, i64 136, !44, i64 176, !44, i64 184, !44, i64 192, !46, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !78, i64 288, !47, i64 292}
!67 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !68, i64 0, !69, i64 8, !70, i64 16, !71, i64 24}
!68 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!69 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!70 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!71 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!72 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !44, i64 0, !62, i64 8}
!73 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !44, i64 0, !44, i64 8, !74, i64 16}
!74 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !75, i64 0, !44, i64 8}
!75 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!76 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !77, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !78, i64 32, !78, i64 36}
!77 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!78 = !{!"int", !45, i64 0}
!79 = !{!80, !47, i64 8}
!80 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE", !47, i64 8, !78, i64 12, !78, i64 16, !44, i64 24, !44, i64 32}
!81 = !{!80, !78, i64 12}
!82 = !{!80, !78, i64 16}
!83 = !{!80, !44, i64 24}
!84 = !{!80, !44, i64 32}
!85 = !{!44, !44, i64 0}
!86 = distinct !{!86, !59, !60}
!87 = distinct !{!87, !59, !60}
!88 = distinct !{!88, !59, !60}
!89 = distinct !{!89, !59, !60}
!90 = distinct !{!90, !59, !60}
!91 = distinct !{!91, !59, !60}
!92 = distinct !{!92, !59, !60}
!93 = distinct !{!93, !59, !60}
!94 = distinct !{!94, !59, !60}
!95 = distinct !{!95, !59, !60}
!96 = !{!46, !46, i64 0}
!97 = distinct !{!97, !59, !60}
!98 = distinct !{!98, !59, !60}
!99 = distinct !{!99, !59, !60}
!100 = distinct !{!100, !59, !60}
!101 = distinct !{!101, !59, !60}
!102 = distinct !{!102, !59, !60}
!103 = distinct !{!103, !59, !60}
!104 = distinct !{!104, !59, !60}
!105 = distinct !{!105, !59, !60}
!106 = distinct !{!106, !59, !60}
!107 = distinct !{!107, !59, !60}
!108 = distinct !{!108, !59, !60}
!109 = distinct !{!109, !59, !60}
!110 = distinct !{!110, !59, !60}
!111 = distinct !{!111, !59, !60}
!112 = !{!72, !62, i64 8}
!113 = distinct !{!113, !59, !60}
!114 = distinct !{!114, !59, !60}
!115 = distinct !{!115, !59, !60}
!116 = distinct !{!116, !59, !60}
!117 = !{!118, !78, i64 0}
!118 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !78, i64 0, !78, i64 4, !78, i64 8, !47, i64 12, !44, i64 16, !44, i64 24, !44, i64 32}
!119 = !{!118, !78, i64 4}
!120 = !{!118, !78, i64 8}
!121 = !{!118, !47, i64 12}
!122 = !{!118, !44, i64 16}
!123 = !{!118, !44, i64 32}
!124 = distinct !{!124, !59, !60}
!125 = distinct !{!125, !59, !60}
!126 = distinct !{!126, !59, !60}
!127 = !{!"function_entry_count", i64 789922}
!128 = !{!"branch_weights", i32 0, i32 789922}
!129 = !{!"branch_weights", i32 284, i32 789638}
!130 = !{!"branch_weights", i32 789638, i32 41628303}
!131 = distinct !{!131, !59, !60}
!132 = !{!"branch_weights", i32 789636, i32 2}
!133 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!134 = distinct !{!134, !59, !60}
!135 = distinct !{!135, !59, !60}
!136 = distinct !{!136, !59, !60}
!137 = distinct !{!137, !59, !60}
!138 = distinct !{!138, !59, !60}
!139 = distinct !{!139, !59, !60}
!140 = distinct !{!140, !59, !60}
!141 = distinct !{!141, !59, !60}
!142 = distinct !{!142, !59, !60}
!143 = distinct !{!143, !59, !60}
!144 = distinct !{!144, !59, !60}
!145 = !{!146, !44, i64 0}
!146 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !44, i64 0, !44, i64 8}
!147 = !{!146, !44, i64 8}
!148 = !{!"function_entry_count", i64 243874}
!149 = !{!"branch_weights", i32 191815, i32 52059}
!150 = !{!"branch_weights", i32 0, i32 52059}
!151 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!152 = distinct !{!152, !59, !60}
!153 = distinct !{!153, !59, !60}
!154 = distinct !{!154, !59, !60}
!155 = distinct !{!155, !59, !60}
!156 = !{!157, !44, i64 40}
!157 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !158, i64 8, !44, i64 16, !78, i64 24, !44, i64 32, !44, i64 40}
!158 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
!159 = distinct !{!159, !59, !60}

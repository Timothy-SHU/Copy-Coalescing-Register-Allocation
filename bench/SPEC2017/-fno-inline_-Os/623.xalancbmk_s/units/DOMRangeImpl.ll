; ModuleID = 'DOMRangeImpl.cpp'
source_filename = "DOMRangeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMRangeImpl" = type { %"class.xercesc_2_7::DOMRange", ptr, i64, ptr, i64, i8, ptr, i8, ptr, ptr }
%"class.xercesc_2_7::DOMRange" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::RefVectorOf" = type { %"class.xercesc_2_7::BaseRefVectorOf" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_78DOMRangeC2Ev = comdat any

$_ZN11xercesc_2_78DOMRangeD2Ev = comdat any

$_ZN11xercesc_2_78DOMRangeD0Ev = comdat any

$_ZN11xercesc_2_78DOMRangeC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_78DOMRangeE = comdat any

$_ZTIN11xercesc_2_78DOMRangeE = comdat any

$_ZTVN11xercesc_2_78DOMRangeE = comdat any

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

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_712DOMRangeImplE = dso_local unnamed_addr constant { [29 x ptr] } { [29 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMRangeImplE, ptr @_ZN11xercesc_2_712DOMRangeImplD2Ev, ptr @_ZN11xercesc_2_712DOMRangeImplD0Ev, ptr @_ZNK11xercesc_2_712DOMRangeImpl17getStartContainerEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl14getStartOffsetEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl15getEndContainerEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl12getEndOffsetEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl12getCollapsedEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl26getCommonAncestorContainerEv, ptr @_ZN11xercesc_2_712DOMRangeImpl8setStartEPKNS_7DOMNodeEm, ptr @_ZN11xercesc_2_712DOMRangeImpl6setEndEPKNS_7DOMNodeEm, ptr @_ZN11xercesc_2_712DOMRangeImpl14setStartBeforeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl13setStartAfterEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl12setEndBeforeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl11setEndAfterEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl8collapseEb, ptr @_ZN11xercesc_2_712DOMRangeImpl10selectNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl18selectNodeContentsEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_712DOMRangeImpl21compareBoundaryPointsENS_8DOMRange10CompareHowEPKS1_, ptr @_ZN11xercesc_2_712DOMRangeImpl14deleteContentsEv, ptr @_ZN11xercesc_2_712DOMRangeImpl15extractContentsEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl13cloneContentsEv, ptr @_ZN11xercesc_2_712DOMRangeImpl10insertNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_712DOMRangeImpl16surroundContentsEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_712DOMRangeImpl10cloneRangeEv, ptr @_ZNK11xercesc_2_712DOMRangeImpl8toStringEv, ptr @_ZN11xercesc_2_712DOMRangeImpl6detachEv, ptr @_ZN11xercesc_2_712DOMRangeImpl7releaseEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DOMRangeImplE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMRangeImplE\00", align 1
@_ZTSN11xercesc_2_78DOMRangeE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78DOMRangeE\00", comdat, align 1
@_ZTIN11xercesc_2_78DOMRangeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78DOMRangeE }, comdat, align 8
@_ZTIN11xercesc_2_712DOMRangeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMRangeImplE, ptr @_ZTIN11xercesc_2_78DOMRangeE }, align 8
@_ZTVN11xercesc_2_78DOMRangeE = linkonce_odr dso_local unnamed_addr constant { [29 x ptr] } { [29 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78DOMRangeE, ptr @_ZN11xercesc_2_78DOMRangeD2Ev, ptr @_ZN11xercesc_2_78DOMRangeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTIN11xercesc_2_717DOMRangeExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712DOMRangeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl17getStartContainerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl14getStartOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !56
  ret i64 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl15getEndContainerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl12getEndOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !58
  ret i64 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl12getCollapsedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %14, %16
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %19, %21
  %23 = select i1 %17, i1 %22, i1 false
  ret i1 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl26getCommonAncestorContainerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %3, ptr noundef %5) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl8setStartEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #16
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl10checkIndexEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %1, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 24
  %15 = select i1 %13, ptr null, ptr %14
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %21, align 8, !tbaa !62
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 4, ptr noundef null, ptr noundef %24) #16
          to label %25 unwind label %26

25:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %11, %3
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %29, align 8, !tbaa !55
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %2, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %32) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !60
  %37 = getelementptr inbounds ptr, ptr %36, i64 14
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %39

39:                                               ; preds = %35, %28
  %40 = load ptr, ptr %0, align 8, !tbaa !60
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0) #16
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 14
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %51

49:                                               ; preds = %39
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %50, align 8, !tbaa !62
  br label %51

51:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl6setEndEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #16
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl10checkIndexEPKNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %1, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !tbaa !59
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 24
  %15 = select i1 %13, ptr null, ptr %14
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %21, align 8, !tbaa !62
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %22, i16 noundef signext 4, ptr noundef null, ptr noundef %24) #16
          to label %25 unwind label %26

25:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %11, %3
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %2, ptr %30, align 8, !tbaa !58
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %32) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !60
  %37 = getelementptr inbounds ptr, ptr %36, i64 14
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %39

39:                                               ; preds = %35, %28
  %40 = load ptr, ptr %0, align 8, !tbaa !60
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef signext i16 %42(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0) #16
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 14
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %51

49:                                               ; preds = %39
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %50, align 8, !tbaa !62
  br label %51

51:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl14setStartBeforeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %89

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl21hasLegalRootContainerEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %16, label %24, label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 2, ptr noundef null, ptr noundef %20) #16
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %89

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr %1, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %49, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds i8, ptr %33, i64 24
  %36 = select i1 %34, ptr null, ptr %35
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 14
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %42, align 8, !tbaa !62
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 4, ptr noundef null, ptr noundef %45) #16
          to label %46 unwind label %47

46:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

47:                                               ; preds = %38
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %89

49:                                               ; preds = %32, %24
  %50 = load ptr, ptr %1, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !55
  br label %63

55:                                               ; preds = %63
  %56 = icmp eq i64 %66, 0
  %57 = select i1 %56, i64 0, i64 %65
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %57, ptr %58, align 8
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %60) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %76

63:                                               ; preds = %49, %63
  %64 = phi ptr [ %1, %49 ], [ %70, %63 ]
  %65 = phi i64 [ 0, %49 ], [ %66, %63 ]
  %66 = add i64 %65, 1
  %67 = load ptr, ptr %64, align 8, !tbaa !60
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %64) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %55, label %63, !llvm.loop !63

72:                                               ; preds = %55
  %73 = load ptr, ptr %0, align 8, !tbaa !60
  %74 = getelementptr inbounds ptr, ptr %73, i64 14
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %76

76:                                               ; preds = %72, %55
  %77 = load ptr, ptr %0, align 8, !tbaa !60
  %78 = getelementptr inbounds ptr, ptr %77, i64 17
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef signext i16 %79(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0) #16
  %81 = icmp eq i16 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8, !tbaa !60
  %84 = getelementptr inbounds ptr, ptr %83, i64 14
  %85 = load ptr, ptr %84, align 8
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %88

86:                                               ; preds = %76
  %87 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %87, align 8, !tbaa !62
  br label %88

88:                                               ; preds = %86, %82
  ret void

89:                                               ; preds = %47, %22, %11
  %90 = phi ptr [ %43, %47 ], [ %18, %22 ], [ %7, %11 ]
  %91 = phi { ptr, i32 } [ %48, %47 ], [ %23, %22 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %90) #15
  resume { ptr, i32 } %91
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl13setStartAfterEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %87

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl21hasLegalRootContainerEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %16, label %24, label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 2, ptr noundef null, ptr noundef %20) #16
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %87

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr %1, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %49, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds i8, ptr %33, i64 24
  %36 = select i1 %34, ptr null, ptr %35
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 14
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %42, align 8, !tbaa !62
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 4, ptr noundef null, ptr noundef %45) #16
          to label %46 unwind label %47

46:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

47:                                               ; preds = %38
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %87

49:                                               ; preds = %32, %24
  %50 = load ptr, ptr %1, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !55
  br label %61

55:                                               ; preds = %61
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %64, ptr %56, align 8, !tbaa !56
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %58) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %74

61:                                               ; preds = %49, %61
  %62 = phi ptr [ %1, %49 ], [ %68, %61 ]
  %63 = phi i64 [ 0, %49 ], [ %64, %61 ]
  %64 = add i64 %63, 1
  %65 = load ptr, ptr %62, align 8, !tbaa !60
  %66 = getelementptr inbounds ptr, ptr %65, i64 9
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %62) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %55, label %61, !llvm.loop !65

70:                                               ; preds = %55
  %71 = load ptr, ptr %0, align 8, !tbaa !60
  %72 = getelementptr inbounds ptr, ptr %71, i64 14
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %74

74:                                               ; preds = %70, %55
  %75 = load ptr, ptr %0, align 8, !tbaa !60
  %76 = getelementptr inbounds ptr, ptr %75, i64 17
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef signext i16 %77(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0) #16
  %79 = icmp eq i16 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load ptr, ptr %0, align 8, !tbaa !60
  %82 = getelementptr inbounds ptr, ptr %81, i64 14
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %86

84:                                               ; preds = %74
  %85 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %85, align 8, !tbaa !62
  br label %86

86:                                               ; preds = %84, %80
  ret void

87:                                               ; preds = %47, %22, %11
  %88 = phi ptr [ %43, %47 ], [ %18, %22 ], [ %7, %11 ]
  %89 = phi { ptr, i32 } [ %48, %47 ], [ %23, %22 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %88) #15
  resume { ptr, i32 } %89
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl12setEndBeforeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %89

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl21hasLegalRootContainerEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %16, label %24, label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 2, ptr noundef null, ptr noundef %20) #16
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %89

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr %1, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %49, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds i8, ptr %33, i64 24
  %36 = select i1 %34, ptr null, ptr %35
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 14
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %42, align 8, !tbaa !62
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 4, ptr noundef null, ptr noundef %45) #16
          to label %46 unwind label %47

46:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

47:                                               ; preds = %38
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %89

49:                                               ; preds = %32, %24
  %50 = load ptr, ptr %1, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !57
  br label %63

55:                                               ; preds = %63
  %56 = icmp eq i64 %70, 0
  %57 = select i1 %56, i64 0, i64 %65
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %57, ptr %58, align 8
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %60) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %76

63:                                               ; preds = %49, %63
  %64 = phi ptr [ %1, %49 ], [ %69, %63 ]
  %65 = phi i64 [ 0, %49 ], [ %70, %63 ]
  %66 = load ptr, ptr %64, align 8, !tbaa !60
  %67 = getelementptr inbounds ptr, ptr %66, i64 9
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %64) #16
  %70 = add i64 %65, 1
  %71 = icmp eq ptr %69, null
  br i1 %71, label %55, label %63, !llvm.loop !66

72:                                               ; preds = %55
  %73 = load ptr, ptr %0, align 8, !tbaa !60
  %74 = getelementptr inbounds ptr, ptr %73, i64 14
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %76

76:                                               ; preds = %72, %55
  %77 = load ptr, ptr %0, align 8, !tbaa !60
  %78 = getelementptr inbounds ptr, ptr %77, i64 17
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef signext i16 %79(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0) #16
  %81 = icmp eq i16 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8, !tbaa !60
  %84 = getelementptr inbounds ptr, ptr %83, i64 14
  %85 = load ptr, ptr %84, align 8
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %88

86:                                               ; preds = %76
  %87 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %87, align 8, !tbaa !62
  br label %88

88:                                               ; preds = %86, %82
  ret void

89:                                               ; preds = %47, %22, %11
  %90 = phi ptr [ %43, %47 ], [ %18, %22 ], [ %7, %11 ]
  %91 = phi { ptr, i32 } [ %48, %47 ], [ %23, %22 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %90) #15
  resume { ptr, i32 } %91
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl11setEndAfterEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %87

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl21hasLegalRootContainerEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %16, label %24, label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 2, ptr noundef null, ptr noundef %20) #16
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %87

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr %1, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %49, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds i8, ptr %33, i64 24
  %36 = select i1 %34, ptr null, ptr %35
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 14
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %42, align 8, !tbaa !62
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 4, ptr noundef null, ptr noundef %45) #16
          to label %46 unwind label %47

46:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

47:                                               ; preds = %38
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %87

49:                                               ; preds = %32, %24
  %50 = load ptr, ptr %1, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !57
  br label %55

55:                                               ; preds = %49, %55
  %56 = phi ptr [ %1, %49 ], [ %61, %55 ]
  %57 = phi i64 [ 0, %49 ], [ %62, %55 ]
  %58 = load ptr, ptr %56, align 8, !tbaa !60
  %59 = getelementptr inbounds ptr, ptr %58, i64 9
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %56) #16
  %62 = add i64 %57, 1
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %55, !llvm.loop !67

64:                                               ; preds = %55
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %62, ptr %65, align 8
  %66 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = tail call noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef %67) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load ptr, ptr %0, align 8, !tbaa !60
  %72 = getelementptr inbounds ptr, ptr %71, i64 14
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %74

74:                                               ; preds = %70, %64
  %75 = load ptr, ptr %0, align 8, !tbaa !60
  %76 = getelementptr inbounds ptr, ptr %75, i64 17
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef signext i16 %77(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3, ptr noundef nonnull %0) #16
  %79 = icmp eq i16 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load ptr, ptr %0, align 8, !tbaa !60
  %82 = getelementptr inbounds ptr, ptr %81, i64 14
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %86

84:                                               ; preds = %74
  %85 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %85, align 8, !tbaa !62
  br label %86

86:                                               ; preds = %84, %80
  ret void

87:                                               ; preds = %47, %22, %11
  %88 = phi ptr [ %43, %47 ], [ %18, %22 ], [ %7, %11 ]
  %89 = phi { ptr, i32 } [ %48, %47 ], [ %23, %22 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %88) #15
  resume { ptr, i32 } %89
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl8collapseEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  br i1 %1, label %14, label %21

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %19, ptr %20, align 8, !tbaa !58
  br label %28

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %26, ptr %27, align 8, !tbaa !56
  br label %28

28:                                               ; preds = %21, %14
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %29, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl10selectNodeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #16
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 2, ptr noundef null, ptr noundef %7) #16
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !60
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef signext i16 %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %15, label %30 [
    i16 8, label %16
    i16 7, label %16
    i16 4, label %16
    i16 3, label %16
  ]

16:                                               ; preds = %11, %11, %11, %11
  %17 = icmp eq i16 %15, 7
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %19, align 8, !tbaa !57
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %20, align 8, !tbaa !56
  %21 = load ptr, ptr %1, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 41
  %23 = load ptr, ptr %22, align 8
  br i1 %17, label %24, label %28

24:                                               ; preds = %16
  %25 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %25) #16
  %27 = zext i32 %26 to i64
  br label %61

28:                                               ; preds = %16
  %29 = tail call noundef i64 %23(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %61

30:                                               ; preds = %11
  %31 = load ptr, ptr %1, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %64, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !55
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %34, ptr %38, align 8, !tbaa !57
  %39 = load ptr, ptr %34, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 7
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %34) #16
  %43 = icmp ne ptr %42, null
  %44 = icmp ne ptr %42, %1
  %45 = and i1 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %50, %36
  %47 = phi i64 [ 0, %36 ], [ %53, %50 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %47, ptr %48, align 8, !tbaa !56
  %49 = add i64 %47, 1
  br label %61

50:                                               ; preds = %36, %50
  %51 = phi ptr [ %57, %50 ], [ %42, %36 ]
  %52 = phi i64 [ %53, %50 ], [ 0, %36 ]
  %53 = add i64 %52, 1
  %54 = load ptr, ptr %51, align 8, !tbaa !60
  %55 = getelementptr inbounds ptr, ptr %54, i64 10
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51) #16
  %58 = icmp ne ptr %57, null
  %59 = icmp ne ptr %57, %1
  %60 = and i1 %58, %59
  br i1 %60, label %50, label %46, !llvm.loop !68

61:                                               ; preds = %28, %24, %46
  %62 = phi i64 [ %49, %46 ], [ %27, %24 ], [ %29, %28 ]
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %62, ptr %63, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %61, %30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl18selectNodeContentsEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %5, align 8, !tbaa !56
  %6 = load ptr, ptr %1, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %9, label %22 [
    i16 8, label %10
    i16 4, label %10
    i16 3, label %10
    i16 7, label %15
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load ptr, ptr %1, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 41
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i64 %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %37

15:                                               ; preds = %2
  %16 = load ptr, ptr %1, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 41
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %19) #16
  %21 = zext i32 %20 to i64
  br label %37

22:                                               ; preds = %2
  %23 = load ptr, ptr %1, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %22 ]
  %30 = phi i64 [ %31, %28 ], [ 0, %22 ]
  %31 = add i64 %30, 1
  %32 = load ptr, ptr %29, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %29) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !69

37:                                               ; preds = %28, %22, %15, %10
  %38 = phi i64 [ %21, %15 ], [ %14, %10 ], [ 0, %22 ], [ %31, %28 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %38, ptr %39, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_712DOMRangeImpl21compareBoundaryPointsENS_8DOMRange10CompareHowEPKS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %2, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 4, ptr noundef null, ptr noundef %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %221

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 8, !tbaa !44, !range !52, !noundef !53
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %21, i16 noundef signext 11, ptr noundef null, ptr noundef %23) #16
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %221

27:                                               ; preds = %16
  switch i32 %1, label %76 [
    i32 0, label %28
    i32 1, label %40
    i32 3, label %52
    i32 2, label %64
  ]

28:                                               ; preds = %27
  %29 = load ptr, ptr %2, align 8, !tbaa !60
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = load ptr, ptr %2, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i64 %37(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  br label %83

40:                                               ; preds = %27
  %41 = load ptr, ptr %2, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = load ptr, ptr %2, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef i64 %49(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  br label %83

52:                                               ; preds = %27
  %53 = load ptr, ptr %2, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !55
  %59 = load ptr, ptr %2, align 8, !tbaa !60
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef i64 %61(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  br label %83

64:                                               ; preds = %27
  %65 = load ptr, ptr %2, align 8, !tbaa !60
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = load ptr, ptr %2, align 8, !tbaa !60
  %72 = getelementptr inbounds ptr, ptr %71, i64 5
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef i64 %73(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %75 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  br label %83

76:                                               ; preds = %27
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %77, i16 noundef signext 11, ptr noundef null, ptr noundef %79) #16
          to label %80 unwind label %81

80:                                               ; preds = %76
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %221

83:                                               ; preds = %64, %52, %40, %28
  %84 = phi ptr [ %70, %64 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ]
  %85 = phi ptr [ %68, %64 ], [ %56, %52 ], [ %44, %40 ], [ %32, %28 ]
  %86 = phi ptr [ %75, %64 ], [ %63, %52 ], [ %51, %40 ], [ %39, %28 ]
  %87 = phi i64 [ %74, %64 ], [ %62, %52 ], [ %50, %40 ], [ %38, %28 ]
  %88 = trunc i64 %87 to i32
  %89 = load i64, ptr %86, align 8, !tbaa !70
  %90 = trunc i64 %89 to i32
  %91 = icmp eq ptr %84, %85
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = icmp slt i32 %90, %88
  br i1 %93, label %219, label %94

94:                                               ; preds = %92
  %95 = icmp ne i32 %90, %88
  %96 = zext i1 %95 to i16
  br label %219

97:                                               ; preds = %83
  %98 = load ptr, ptr %84, align 8, !tbaa !60
  %99 = getelementptr inbounds ptr, ptr %98, i64 7
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %84) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %117, label %103

103:                                              ; preds = %97, %106
  %104 = phi ptr [ %110, %106 ], [ %101, %97 ]
  %105 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull %104, ptr noundef %85) #16
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %104, align 8, !tbaa !60
  %108 = getelementptr inbounds ptr, ptr %107, i64 10
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %104) #16
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %103, !llvm.loop !71

112:                                              ; preds = %103
  %113 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %104, ptr noundef nonnull %84) #16
  %114 = trunc i64 %113 to i32
  %115 = icmp sgt i32 %90, %114
  %116 = select i1 %115, i16 1, i16 -1
  br label %219

117:                                              ; preds = %106, %97
  %118 = load ptr, ptr %85, align 8, !tbaa !60
  %119 = getelementptr inbounds ptr, ptr %118, i64 7
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %85) #16
  %122 = icmp eq ptr %121, null
  br i1 %122, label %137, label %123

123:                                              ; preds = %117, %131
  %124 = phi ptr [ %135, %131 ], [ %121, %117 ]
  %125 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull %124, ptr noundef nonnull %84) #16
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %124, ptr noundef nonnull %85) #16
  %128 = trunc i64 %127 to i32
  %129 = icmp slt i32 %128, %88
  %130 = select i1 %129, i16 -1, i16 1
  br label %219

131:                                              ; preds = %123
  %132 = load ptr, ptr %124, align 8, !tbaa !60
  %133 = getelementptr inbounds ptr, ptr %132, i64 10
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(8) %124) #16
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %123, !llvm.loop !72

137:                                              ; preds = %131, %117
  br label %138

138:                                              ; preds = %137, %138
  %139 = phi ptr [ %145, %138 ], [ %85, %137 ]
  %140 = phi i32 [ %141, %138 ], [ 0, %137 ]
  %141 = add nuw nsw i32 %140, 1
  %142 = load ptr, ptr %139, align 8, !tbaa !60
  %143 = getelementptr inbounds ptr, ptr %142, i64 5
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %139) #16
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %138, !llvm.loop !73

147:                                              ; preds = %149
  %148 = icmp sgt i32 %151, 1
  br i1 %148, label %160, label %158

149:                                              ; preds = %138, %149
  %150 = phi ptr [ %156, %149 ], [ %84, %138 ]
  %151 = phi i32 [ %152, %149 ], [ %141, %138 ]
  %152 = add nsw i32 %151, -1
  %153 = load ptr, ptr %150, align 8, !tbaa !60
  %154 = getelementptr inbounds ptr, ptr %153, i64 5
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(8) %150) #16
  %157 = icmp eq ptr %156, null
  br i1 %157, label %147, label %149, !llvm.loop !74

158:                                              ; preds = %147
  %159 = icmp eq i32 %151, 1
  br i1 %159, label %178, label %169

160:                                              ; preds = %147, %160
  %161 = phi i32 [ %167, %160 ], [ %152, %147 ]
  %162 = phi ptr [ %166, %160 ], [ %85, %147 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !60
  %164 = getelementptr inbounds ptr, ptr %163, i64 5
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %162) #16
  %167 = add nsw i32 %161, -1
  %168 = icmp ugt i32 %161, 1
  br i1 %168, label %160, label %178, !llvm.loop !75

169:                                              ; preds = %158, %169
  %170 = phi i32 [ %176, %169 ], [ %152, %158 ]
  %171 = phi ptr [ %175, %169 ], [ %84, %158 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !60
  %173 = getelementptr inbounds ptr, ptr %172, i64 5
  %174 = load ptr, ptr %173, align 8
  %175 = tail call noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(8) %171) #16
  %176 = add nsw i32 %170, 1
  %177 = icmp eq i32 %170, -1
  br i1 %177, label %178, label %169, !llvm.loop !76

178:                                              ; preds = %169, %160, %158
  %179 = phi ptr [ %85, %158 ], [ %166, %160 ], [ %85, %169 ]
  %180 = phi ptr [ %84, %158 ], [ %84, %160 ], [ %175, %169 ]
  %181 = load ptr, ptr %179, align 8, !tbaa !60
  %182 = getelementptr inbounds ptr, ptr %181, i64 5
  %183 = load ptr, ptr %182, align 8
  %184 = tail call noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(8) %179) #16
  %185 = load ptr, ptr %180, align 8, !tbaa !60
  %186 = getelementptr inbounds ptr, ptr %185, i64 5
  %187 = load ptr, ptr %186, align 8
  %188 = tail call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(8) %180) #16
  %189 = icmp eq ptr %184, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %198, %178
  %191 = phi ptr [ %180, %178 ], [ %199, %198 ]
  %192 = phi ptr [ %179, %178 ], [ %200, %198 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !60
  %194 = getelementptr inbounds ptr, ptr %193, i64 10
  %195 = load ptr, ptr %194, align 8
  %196 = tail call noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(8) %192) #16
  %197 = icmp eq ptr %196, null
  br i1 %197, label %219, label %210

198:                                              ; preds = %178, %198
  %199 = phi ptr [ %208, %198 ], [ %188, %178 ]
  %200 = phi ptr [ %204, %198 ], [ %184, %178 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !60
  %202 = getelementptr inbounds ptr, ptr %201, i64 5
  %203 = load ptr, ptr %202, align 8
  %204 = tail call noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %200) #16
  %205 = load ptr, ptr %199, align 8, !tbaa !60
  %206 = getelementptr inbounds ptr, ptr %205, i64 5
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(8) %199) #16
  %209 = icmp eq ptr %204, %208
  br i1 %209, label %190, label %198, !llvm.loop !77

210:                                              ; preds = %190, %213
  %211 = phi ptr [ %217, %213 ], [ %196, %190 ]
  %212 = icmp eq ptr %211, %191
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %211, align 8, !tbaa !60
  %215 = getelementptr inbounds ptr, ptr %214, i64 10
  %216 = load ptr, ptr %215, align 8
  %217 = tail call noundef ptr %216(ptr noundef nonnull align 8 dereferenceable(8) %211) #16
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %210, !llvm.loop !78

219:                                              ; preds = %213, %210, %190, %126, %112, %94, %92
  %220 = phi i16 [ %116, %112 ], [ -1, %92 ], [ %96, %94 ], [ %130, %126 ], [ -1, %190 ], [ -1, %213 ], [ 1, %210 ]
  ret i16 %220

221:                                              ; preds = %81, %25, %14
  %222 = phi ptr [ %77, %81 ], [ %21, %25 ], [ %10, %14 ]
  %223 = phi { ptr, i32 } [ %82, %81 ], [ %26, %25 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %222) #15
  resume { ptr, i32 } %223
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl14deleteContentsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15extractContentsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_712DOMRangeImpl13checkReadOnlyEPNS_7DOMNodeES2_mm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %3, ptr noundef %5, i64 noundef %7, i64 noundef %9) #16
  %10 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 1) #16
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl13cloneContentsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 2) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl10insertNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %151, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !44, !range !52, !noundef !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 11, ptr noundef null, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %152

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i16 %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %19, label %27 [
    i16 12, label %20
    i16 9, label %20
    i16 6, label %20
    i16 2, label %20
  ]

20:                                               ; preds = %15, %15, %15, %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 2, ptr noundef null, ptr noundef %23) #16
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %152

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull %1, ptr noundef %29) #16
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %32, i16 noundef signext 3, ptr noundef null, ptr noundef %34) #16
          to label %35 unwind label %36

35:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %152

38:                                               ; preds = %27
  %39 = load ptr, ptr %28, align 8, !tbaa !55
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #16
  br label %51

43:                                               ; preds = %61, %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = load ptr, ptr %1, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %50 = icmp eq ptr %45, %49
  br i1 %50, label %74, label %67

51:                                               ; preds = %41, %61
  %52 = phi ptr [ %39, %41 ], [ %65, %61 ]
  %53 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %42) #16
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %55, i16 noundef signext 7, ptr noundef null, ptr noundef %57) #16
          to label %58 unwind label %59

58:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %152

61:                                               ; preds = %51
  %62 = load ptr, ptr %52, align 8, !tbaa !60
  %63 = getelementptr inbounds ptr, ptr %62, i64 5
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %52) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %43, label %51, !llvm.loop !79

67:                                               ; preds = %43
  %68 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %68, i16 noundef signext 4, ptr noundef null, ptr noundef %70) #16
          to label %71 unwind label %72

71:                                               ; preds = %67
  tail call void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

72:                                               ; preds = %67
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %152

74:                                               ; preds = %43
  %75 = load ptr, ptr %28, align 8, !tbaa !55
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = getelementptr inbounds ptr, ptr %76, i64 4
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef signext i16 %78(ptr noundef nonnull align 8 dereferenceable(8) %75) #16
  switch i16 %79, label %111 [
    i16 8, label %80
    i16 7, label %80
    i16 4, label %80
    i16 3, label %80
  ]

80:                                               ; preds = %74, %74, %74, %74
  %81 = load ptr, ptr %28, align 8, !tbaa !55
  %82 = load ptr, ptr %81, align 8, !tbaa !60
  %83 = getelementptr inbounds ptr, ptr %82, i64 5
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %81) #16
  %86 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !56
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %80
  %90 = load ptr, ptr %28, align 8, !tbaa !55
  switch i16 %79, label %95 [
    i16 8, label %91
    i16 7, label %93
  ]

91:                                               ; preds = %89
  %92 = tail call noundef ptr @_ZN11xercesc_2_714DOMCommentImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(56) %90, i64 noundef %87) #16
  br label %100

93:                                               ; preds = %89
  %94 = tail call noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(72) %90, i64 noundef %87) #16
  br label %100

95:                                               ; preds = %89
  %96 = load ptr, ptr %90, align 8, !tbaa !60
  %97 = getelementptr inbounds ptr, ptr %96, i64 48
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef %87) #16
  br label %100

100:                                              ; preds = %91, %95, %93
  %101 = load i64, ptr %86, align 8, !tbaa !56
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %80, %100
  %104 = load ptr, ptr %28, align 8, !tbaa !55
  br label %134

105:                                              ; preds = %100
  %106 = load ptr, ptr %28, align 8, !tbaa !55
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  %108 = getelementptr inbounds ptr, ptr %107, i64 10
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %106) #16
  br label %134

111:                                              ; preds = %74
  %112 = load ptr, ptr %28, align 8, !tbaa !55
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = getelementptr inbounds ptr, ptr %113, i64 7
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %112) #16
  %117 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !56
  %119 = icmp ne i64 %118, 0
  %120 = icmp ne ptr %116, null
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %138

122:                                              ; preds = %111, %122
  %123 = phi i64 [ %129, %122 ], [ 0, %111 ]
  %124 = phi ptr [ %128, %122 ], [ %116, %111 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !60
  %126 = getelementptr inbounds ptr, ptr %125, i64 10
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(8) %124) #16
  %129 = add nuw i64 %123, 1
  %130 = load i64, ptr %117, align 8, !tbaa !56
  %131 = icmp ult i64 %129, %130
  %132 = icmp ne ptr %128, null
  %133 = and i1 %132, %131
  br i1 %133, label %122, label %134, !llvm.loop !80

134:                                              ; preds = %122, %103, %105
  %135 = phi ptr [ %85, %103 ], [ %85, %105 ], [ %112, %122 ]
  %136 = phi ptr [ %104, %103 ], [ %110, %105 ], [ %128, %122 ]
  %137 = icmp eq ptr %135, null
  br i1 %137, label %151, label %138

138:                                              ; preds = %111, %134
  %139 = phi ptr [ %136, %134 ], [ %116, %111 ]
  %140 = phi ptr [ %135, %134 ], [ %112, %111 ]
  %141 = icmp eq ptr %139, null
  %142 = load ptr, ptr %140, align 8, !tbaa !60
  br i1 %141, label %147, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds ptr, ptr %142, i64 14
  %145 = load ptr, ptr %144, align 8
  %146 = tail call noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef nonnull %1, ptr noundef nonnull %139) #16
  br label %151

147:                                              ; preds = %138
  %148 = getelementptr inbounds ptr, ptr %142, i64 17
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef nonnull %1) #16
  br label %151

151:                                              ; preds = %134, %147, %143, %2
  ret void

152:                                              ; preds = %25, %36, %59, %72, %13
  %153 = phi ptr [ %21, %25 ], [ %32, %36 ], [ %55, %59 ], [ %68, %72 ], [ %9, %13 ]
  %154 = phi { ptr, i32 } [ %26, %25 ], [ %37, %36 ], [ %60, %59 ], [ %73, %72 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %153) #15
  resume { ptr, i32 } %154
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl16surroundContentsEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !44, !range !52, !noundef !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 11, ptr noundef null, ptr noundef %11) #16
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %99

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %24, i16 noundef signext 4, ptr noundef null, ptr noundef %26) #16
          to label %27 unwind label %28

27:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %99

30:                                               ; preds = %15
  %31 = load ptr, ptr %1, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef signext i16 %33(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %35 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef nonnull %1) #16
  %36 = icmp ne i16 %34, 10
  %37 = and i1 %36, %35
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef 2, ptr noundef null, ptr noundef %41) #16
          to label %42 unwind label %43

42:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %99

45:                                               ; preds = %30
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = load ptr, ptr %47, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef signext i16 %52(ptr noundef nonnull align 8 dereferenceable(8) %47) #16
  switch i16 %53, label %60 [
    i16 8, label %54
    i16 7, label %54
    i16 4, label %54
    i16 3, label %54
  ]

54:                                               ; preds = %45, %45, %45, %45
  %55 = load ptr, ptr %46, align 8, !tbaa !55
  %56 = load ptr, ptr %55, align 8, !tbaa !60
  %57 = getelementptr inbounds ptr, ptr %56, i64 5
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %55) #16
  br label %60

60:                                               ; preds = %45, %54
  %61 = phi ptr [ %59, %54 ], [ %47, %45 ]
  %62 = load ptr, ptr %48, align 8, !tbaa !57
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef signext i16 %65(ptr noundef nonnull align 8 dereferenceable(8) %62) #16
  switch i16 %66, label %73 [
    i16 8, label %67
    i16 7, label %67
    i16 4, label %67
    i16 3, label %67
  ]

67:                                               ; preds = %60, %60, %60, %60
  %68 = load ptr, ptr %48, align 8, !tbaa !57
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 5
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %68) #16
  br label %73

73:                                               ; preds = %60, %67
  %74 = phi ptr [ %72, %67 ], [ %49, %60 ]
  %75 = icmp eq ptr %61, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %77, i32 noundef 1, ptr noundef null, ptr noundef %79) #16
          to label %80 unwind label %81

80:                                               ; preds = %76
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %99

83:                                               ; preds = %73
  %84 = load ptr, ptr %0, align 8, !tbaa !60
  %85 = getelementptr inbounds ptr, ptr %84, i64 19
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  %88 = load ptr, ptr %0, align 8, !tbaa !60
  %89 = getelementptr inbounds ptr, ptr %88, i64 21
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) #16
  %91 = load ptr, ptr %1, align 8, !tbaa !60
  %92 = getelementptr inbounds ptr, ptr %91, i64 17
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %87) #16
  %95 = load ptr, ptr %0, align 8, !tbaa !60
  %96 = getelementptr inbounds ptr, ptr %95, i64 15
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) #16
  br label %98

98:                                               ; preds = %2, %83
  ret void

99:                                               ; preds = %43, %81, %28, %13
  %100 = phi ptr [ %39, %43 ], [ %77, %81 ], [ %24, %28 ], [ %9, %13 ]
  %101 = phi { ptr, i32 } [ %44, %43 ], [ %82, %81 ], [ %29, %28 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %100) #15
  resume { ptr, i32 } %101
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl10cloneRangeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14) #16
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !56
  %23 = load ptr, ptr %18, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %20, i64 noundef %22) #16
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !58
  %30 = load ptr, ptr %18, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %27, i64 noundef %29) #16
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8toStringEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = alloca [4000 x i16], align 16
  %4 = alloca [4000 x i16], align 16
  %5 = alloca [4000 x i16], align 16
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 8, !tbaa !44, !range !52, !noundef !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 11, ptr noundef null, ptr noundef %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #15
  br label %305

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !58
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !56
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %303, label %28

28:                                               ; preds = %22, %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %30) #16
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1023, ptr noundef %31) #16
  %32 = load ptr, ptr %17, align 8, !tbaa !55
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef signext i16 %35(ptr noundef nonnull align 8 dereferenceable(8) %32) #16
          to label %37 unwind label %62

37:                                               ; preds = %28
  switch i16 %36, label %152 [
    i16 8, label %38
    i16 7, label %38
    i16 4, label %38
    i16 3, label %38
  ]

38:                                               ; preds = %37, %37, %37, %37
  %39 = load ptr, ptr %17, align 8, !tbaa !55
  %40 = load ptr, ptr %19, align 8, !tbaa !57
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #15
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %44 = load i64, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !56
  %47 = sub i64 %44, %46
  %48 = icmp ugt i64 %47, 3998
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  %52 = shl i64 %47, 1
  %53 = add i64 %52, 2
  %54 = load ptr, ptr %51, align 8, !tbaa !60
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %53) #16
          to label %58 unwind label %64

58:                                               ; preds = %49
  %59 = load ptr, ptr %17, align 8, !tbaa !55
  br label %66

60:                                               ; preds = %234, %240, %245, %246
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %301

62:                                               ; preds = %28, %152, %181, %184, %248, %295
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %301

64:                                               ; preds = %73, %66, %49
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %97

66:                                               ; preds = %58, %42
  %67 = phi ptr [ %59, %58 ], [ %39, %42 ]
  %68 = phi ptr [ %57, %58 ], [ %3, %42 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %67) #16
          to label %73 unwind label %64

73:                                               ; preds = %66
  %74 = load i64, ptr %45, align 8, !tbaa !56
  %75 = trunc i64 %74 to i32
  %76 = load i64, ptr %43, align 8, !tbaa !58
  %77 = trunc i64 %76 to i32
  %78 = load ptr, ptr %29, align 8, !tbaa !59
  %79 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %78) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %68, ptr noundef %72, i32 noundef %75, i32 noundef %77, ptr noundef %79) #16
          to label %80 unwind label %64

80:                                               ; preds = %73
  %81 = load ptr, ptr %29, align 8, !tbaa !59
  %82 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %81, ptr noundef %68) #16
          to label %83 unwind label %94

83:                                               ; preds = %80
  %84 = load i64, ptr %43, align 8, !tbaa !58
  %85 = load i64, ptr %45, align 8, !tbaa !56
  %86 = sub i64 %84, %85
  %87 = icmp ugt i64 %86, 3998
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !54
  %91 = load ptr, ptr %90, align 8, !tbaa !60
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %68) #16
          to label %96 unwind label %94

94:                                               ; preds = %88, %80
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %97

96:                                               ; preds = %88, %83
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #15
  br label %299

97:                                               ; preds = %94, %64
  %98 = phi { ptr, i32 } [ %95, %94 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #15
  br label %301

99:                                               ; preds = %38
  %100 = load ptr, ptr %39, align 8, !tbaa !60
  %101 = getelementptr inbounds ptr, ptr %100, i64 3
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %39) #16
          to label %104 unwind label %122

104:                                              ; preds = %99
  %105 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %103) #16
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !56
  %109 = icmp eq i64 %108, %106
  br i1 %109, label %150, label %110

110:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %4) #15
  %111 = sub i64 %106, %108
  %112 = icmp ugt i64 %111, 3998
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !54
  %116 = shl i64 %111, 1
  %117 = add i64 %116, 2
  %118 = load ptr, ptr %115, align 8, !tbaa !60
  %119 = getelementptr inbounds ptr, ptr %118, i64 2
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %115, i64 noundef %117) #16
          to label %126 unwind label %124

122:                                              ; preds = %150, %99
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %301

124:                                              ; preds = %143, %138, %133, %126, %113
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #15
  br label %301

126:                                              ; preds = %110, %113
  %127 = phi ptr [ %121, %113 ], [ %4, %110 ]
  %128 = load ptr, ptr %17, align 8, !tbaa !55
  %129 = load ptr, ptr %128, align 8, !tbaa !60
  %130 = getelementptr inbounds ptr, ptr %129, i64 3
  %131 = load ptr, ptr %130, align 8
  %132 = invoke noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(8) %128) #16
          to label %133 unwind label %124

133:                                              ; preds = %126
  %134 = load i64, ptr %107, align 8, !tbaa !56
  %135 = trunc i64 %134 to i32
  %136 = load ptr, ptr %29, align 8, !tbaa !59
  %137 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %136) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %127, ptr noundef %132, i32 noundef %135, i32 noundef %105, ptr noundef %137) #16
          to label %138 unwind label %124

138:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %127) #16
          to label %139 unwind label %124

139:                                              ; preds = %138
  %140 = load i64, ptr %107, align 8, !tbaa !56
  %141 = sub i64 %106, %140
  %142 = icmp ugt i64 %141, 3998
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %145 = load ptr, ptr %144, align 8, !tbaa !54
  %146 = load ptr, ptr %145, align 8, !tbaa !60
  %147 = getelementptr inbounds ptr, ptr %146, i64 3
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef %127) #16
          to label %149 unwind label %124

149:                                              ; preds = %143, %139
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #15
  br label %150

150:                                              ; preds = %149, %104
  %151 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %18, i1 noundef zeroext true) #16
          to label %184 unwind label %122

152:                                              ; preds = %37
  %153 = load ptr, ptr %18, align 8, !tbaa !60
  %154 = getelementptr inbounds ptr, ptr %153, i64 7
  %155 = load ptr, ptr %154, align 8
  %156 = invoke noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(8) %18) #16
          to label %157 unwind label %62

157:                                              ; preds = %152
  %158 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %159 = load i64, ptr %158, align 8, !tbaa !56
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %178, label %161

161:                                              ; preds = %157
  %162 = icmp eq ptr %156, null
  br i1 %162, label %181, label %163

163:                                              ; preds = %161, %170
  %164 = phi i64 [ %171, %170 ], [ 0, %161 ]
  %165 = phi ptr [ %169, %170 ], [ %156, %161 ]
  %166 = load ptr, ptr %165, align 8, !tbaa !60
  %167 = getelementptr inbounds ptr, ptr %166, i64 10
  %168 = load ptr, ptr %167, align 8
  %169 = invoke noundef ptr %168(ptr noundef nonnull align 8 dereferenceable(8) %165) #16
          to label %170 unwind label %176

170:                                              ; preds = %163
  %171 = add nuw i64 %164, 1
  %172 = load i64, ptr %158, align 8, !tbaa !56
  %173 = icmp ult i64 %171, %172
  %174 = icmp ne ptr %169, null
  %175 = and i1 %174, %173
  br i1 %175, label %163, label %178, !llvm.loop !81

176:                                              ; preds = %163
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %301

178:                                              ; preds = %170, %157
  %179 = phi ptr [ %156, %157 ], [ %169, %170 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %161, %178
  %182 = load ptr, ptr %17, align 8, !tbaa !55
  %183 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %182, i1 noundef zeroext false) #16
          to label %184 unwind label %62

184:                                              ; preds = %181, %150, %178
  %185 = phi ptr [ %179, %178 ], [ %151, %150 ], [ %183, %181 ]
  %186 = load ptr, ptr %19, align 8, !tbaa !57
  %187 = load ptr, ptr %186, align 8, !tbaa !60
  %188 = getelementptr inbounds ptr, ptr %187, i64 4
  %189 = load ptr, ptr %188, align 8
  %190 = invoke noundef signext i16 %189(ptr noundef nonnull align 8 dereferenceable(8) %186) #16
          to label %191 unwind label %62

191:                                              ; preds = %184
  switch i16 %190, label %192 [
    i16 8, label %227
    i16 7, label %227
    i16 4, label %227
    i16 3, label %227
  ]

192:                                              ; preds = %191
  %193 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %194 = load i64, ptr %193, align 8, !tbaa !58
  %195 = load ptr, ptr %19, align 8, !tbaa !57
  %196 = load ptr, ptr %195, align 8, !tbaa !60
  %197 = getelementptr inbounds ptr, ptr %196, i64 7
  %198 = load ptr, ptr %197, align 8
  %199 = invoke noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %195) #16
          to label %200 unwind label %219

200:                                              ; preds = %192
  %201 = trunc i64 %194 to i32
  %202 = icmp sgt i32 %201, 0
  %203 = icmp ne ptr %199, null
  %204 = and i1 %203, %202
  br i1 %204, label %205, label %221

205:                                              ; preds = %200, %212
  %206 = phi i32 [ %213, %212 ], [ %201, %200 ]
  %207 = phi ptr [ %211, %212 ], [ %199, %200 ]
  %208 = load ptr, ptr %207, align 8, !tbaa !60
  %209 = getelementptr inbounds ptr, ptr %208, i64 10
  %210 = load ptr, ptr %209, align 8
  %211 = invoke noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(8) %207) #16
          to label %212 unwind label %217

212:                                              ; preds = %205
  %213 = add nsw i32 %206, -1
  %214 = icmp sgt i32 %206, 1
  %215 = icmp ne ptr %211, null
  %216 = and i1 %215, %214
  br i1 %216, label %205, label %221, !llvm.loop !82

217:                                              ; preds = %205
  %218 = landingpad { ptr, i32 }
          cleanup
  br label %301

219:                                              ; preds = %192, %224
  %220 = landingpad { ptr, i32 }
          cleanup
  br label %301

221:                                              ; preds = %212, %200
  %222 = phi ptr [ %199, %200 ], [ %211, %212 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load ptr, ptr %19, align 8, !tbaa !57
  %226 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %225, i1 noundef zeroext false) #16
          to label %227 unwind label %219

227:                                              ; preds = %221, %224, %191, %191, %191, %191
  %228 = phi ptr [ %20, %191 ], [ %20, %191 ], [ %20, %191 ], [ %20, %191 ], [ %222, %221 ], [ %226, %224 ]
  br label %229

229:                                              ; preds = %246, %227
  %230 = phi ptr [ %185, %227 ], [ %247, %246 ]
  %231 = icmp eq ptr %230, %228
  %232 = icmp eq ptr %230, null
  %233 = or i1 %231, %232
  br i1 %233, label %248, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %230, align 8, !tbaa !60
  %236 = getelementptr inbounds ptr, ptr %235, i64 4
  %237 = load ptr, ptr %236, align 8
  %238 = invoke noundef signext i16 %237(ptr noundef nonnull align 8 dereferenceable(8) %230) #16
          to label %239 unwind label %60

239:                                              ; preds = %234
  switch i16 %238, label %246 [
    i16 8, label %240
    i16 7, label %240
    i16 4, label %240
    i16 3, label %240
  ]

240:                                              ; preds = %239, %239, %239, %239
  %241 = load ptr, ptr %230, align 8, !tbaa !60
  %242 = getelementptr inbounds ptr, ptr %241, i64 3
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef ptr %243(ptr noundef nonnull align 8 dereferenceable(8) %230) #16
          to label %245 unwind label %60

245:                                              ; preds = %240
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %244) #16
          to label %246 unwind label %60

246:                                              ; preds = %239, %245
  %247 = invoke noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %230, i1 noundef zeroext true) #16
          to label %229 unwind label %60, !llvm.loop !83

248:                                              ; preds = %229
  %249 = load ptr, ptr %19, align 8, !tbaa !57
  %250 = load ptr, ptr %249, align 8, !tbaa !60
  %251 = getelementptr inbounds ptr, ptr %250, i64 4
  %252 = load ptr, ptr %251, align 8
  %253 = invoke noundef signext i16 %252(ptr noundef nonnull align 8 dereferenceable(8) %249) #16
          to label %254 unwind label %62

254:                                              ; preds = %248
  switch i16 %253, label %295 [
    i16 8, label %255
    i16 7, label %255
    i16 4, label %255
    i16 3, label %255
  ]

255:                                              ; preds = %254, %254, %254, %254
  %256 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %257 = load i64, ptr %256, align 8, !tbaa !58
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %295, label %259

259:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %5) #15
  %260 = icmp ugt i64 %257, 3998
  br i1 %260, label %261, label %272

261:                                              ; preds = %259
  %262 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %263 = load ptr, ptr %262, align 8, !tbaa !54
  %264 = shl i64 %257, 1
  %265 = add i64 %264, 2
  %266 = load ptr, ptr %263, align 8, !tbaa !60
  %267 = getelementptr inbounds ptr, ptr %266, i64 2
  %268 = load ptr, ptr %267, align 8
  %269 = invoke noundef ptr %268(ptr noundef nonnull align 8 dereferenceable(8) %263, i64 noundef %265) #16
          to label %272 unwind label %270

270:                                              ; preds = %288, %284, %279, %272, %261
  %271 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #15
  br label %301

272:                                              ; preds = %259, %261
  %273 = phi ptr [ %269, %261 ], [ %5, %259 ]
  %274 = load ptr, ptr %19, align 8, !tbaa !57
  %275 = load ptr, ptr %274, align 8, !tbaa !60
  %276 = getelementptr inbounds ptr, ptr %275, i64 3
  %277 = load ptr, ptr %276, align 8
  %278 = invoke noundef ptr %277(ptr noundef nonnull align 8 dereferenceable(8) %274) #16
          to label %279 unwind label %270

279:                                              ; preds = %272
  %280 = load i64, ptr %256, align 8, !tbaa !58
  %281 = trunc i64 %280 to i32
  %282 = load ptr, ptr %29, align 8, !tbaa !59
  %283 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %282) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %273, ptr noundef %278, i32 noundef 0, i32 noundef %281, ptr noundef %283) #16
          to label %284 unwind label %270

284:                                              ; preds = %279
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %273) #16
          to label %285 unwind label %270

285:                                              ; preds = %284
  %286 = load i64, ptr %256, align 8, !tbaa !58
  %287 = icmp ugt i64 %286, 3998
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %290 = load ptr, ptr %289, align 8, !tbaa !54
  %291 = load ptr, ptr %290, align 8, !tbaa !60
  %292 = getelementptr inbounds ptr, ptr %291, i64 3
  %293 = load ptr, ptr %292, align 8
  invoke void %293(ptr noundef nonnull align 8 dereferenceable(8) %290, ptr noundef %273) #16
          to label %294 unwind label %270

294:                                              ; preds = %288, %285
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %5) #15
  br label %295

295:                                              ; preds = %254, %255, %294
  %296 = load ptr, ptr %29, align 8, !tbaa !59
  %297 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  %298 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %296, ptr noundef %297) #16
          to label %299 unwind label %62

299:                                              ; preds = %295, %96
  %300 = phi ptr [ %82, %96 ], [ %298, %295 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  br label %303

301:                                              ; preds = %217, %219, %60, %62, %122, %124, %270, %176, %97
  %302 = phi { ptr, i32 } [ %98, %97 ], [ %271, %270 ], [ %177, %176 ], [ %123, %122 ], [ %125, %124 ], [ %61, %60 ], [ %63, %62 ], [ %218, %217 ], [ %220, %219 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  br label %305

303:                                              ; preds = %22, %299
  %304 = phi ptr [ %300, %299 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %22 ]
  ret ptr %304

305:                                              ; preds = %301, %14
  %306 = phi { ptr, i32 } [ %15, %14 ], [ %302, %301 ]
  resume { ptr, i32 } %306
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 84
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(293) %14, ptr noundef nonnull %0) #16
  store i8 1, ptr %2, align 8, !tbaa !44
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  store i8 1, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 25
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplC2EPNS_11DOMDocumentEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_78DOMRangeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMRangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  store ptr %7, ptr %4, align 8, !tbaa !55
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 0, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 0, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  store i8 0, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !84
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  store ptr %2, ptr %15, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMRangeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTVN11xercesc_2_78DOMRangeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMRangeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !43 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMRangeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_78DOMRangeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMRangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  store ptr %5, ptr %3, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !56
  store i64 %8, ptr %6, align 8, !tbaa !56
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  store ptr %11, ptr %9, align 8, !tbaa !57
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !58
  store i64 %14, ptr %12, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !62, !range !52, !noundef !53
  store i8 %17, ptr %15, align 8, !tbaa !62
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  store ptr %20, ptr %18, align 8, !tbaa !59
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 8, !tbaa !44, !range !52, !noundef !53
  store i8 %23, ptr %21, align 8, !tbaa !44
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %1, i64 0, i32 8
  %26 = load <2 x ptr>, ptr %25, align 8, !tbaa !85
  store <2 x ptr> %26, ptr %24, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMRangeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTVN11xercesc_2_78DOMRangeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_78DOMRangeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl17setStartContainerEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl14setStartOffsetEm(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %1, ptr %14, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl15setEndContainerEPKNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %14, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl12setEndOffsetEm(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %1, ptr %14, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOMRangeImpl12validateNodeEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %23

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl19isValidAncestorTypeEPKNS_7DOMNodeE(ptr nonnull align 8 poison, ptr noundef %1) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 2, ptr noundef null, ptr noundef %18) #16
          to label %19 unwind label %20

19:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_717DOMRangeExceptionE, ptr nonnull @_ZN11xercesc_2_717DOMRangeExceptionD1Ev) #17
  unreachable

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %23

22:                                               ; preds = %13
  ret void

23:                                               ; preds = %20, %11
  %24 = phi ptr [ %16, %20 ], [ %7, %11 ]
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %24) #15
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOMRangeImpl10checkIndexEPKNS_7DOMNodeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %7, label %23 [
    i16 8, label %8
    i16 7, label %8
    i16 4, label %8
    i16 3, label %8
  ]

8:                                                ; preds = %3, %3, %3, %3
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %12) #16
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %16, label %48

16:                                               ; preds = %8
  %17 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %17, i16 noundef signext 1, ptr noundef null, ptr noundef %19) #16
          to label %20 unwind label %21

20:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %49

23:                                               ; preds = %3
  %24 = load ptr, ptr %1, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %36, %29 ], [ 0, %23 ]
  %31 = phi ptr [ %35, %29 ], [ %27, %23 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31) #16
  %36 = add i64 %30, 1
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %29, !llvm.loop !86

38:                                               ; preds = %29, %23
  %39 = phi i64 [ 0, %23 ], [ %36, %29 ]
  %40 = icmp ult i64 %39, %2
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 1, ptr noundef null, ptr noundef %44) #16
          to label %45 unwind label %46

45:                                               ; preds = %41
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %49

48:                                               ; preds = %38, %8
  ret void

49:                                               ; preds = %46, %21
  %50 = phi ptr [ %42, %46 ], [ %17, %21 ]
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %22, %21 ]
  tail call void @__cxa_free_exception(ptr %50) #15
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl16commonAncestorOfEPKNS_7DOMNodeES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = alloca %"class.xercesc_2_7::RefVectorOf", align 8
  %5 = alloca %"class.xercesc_2_7::RefVectorOf", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 8, !tbaa !44, !range !52, !noundef !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 11, ptr noundef null, ptr noundef %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #15
  br label %85

16:                                               ; preds = %3
  %17 = icmp eq ptr %1, %2
  br i1 %17, label %83, label %18

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %20) #16
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1, i1 noundef zeroext false, ptr noundef %21) #16
  br label %22

22:                                               ; preds = %26, %18
  %23 = phi ptr [ %1, %18 ], [ %30, %26 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %23) #16
          to label %26 unwind label %31

26:                                               ; preds = %25
  %27 = load ptr, ptr %23, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %23) #16
          to label %22 unwind label %31, !llvm.loop !87

31:                                               ; preds = %26, %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %81

33:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  %34 = load ptr, ptr %19, align 8, !tbaa !59
  %35 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %34) #16
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1, i1 noundef zeroext false, ptr noundef %35) #16
          to label %36 unwind label %45

36:                                               ; preds = %33, %40
  %37 = phi ptr [ %44, %40 ], [ %2, %33 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %37) #16
          to label %40 unwind label %47

40:                                               ; preds = %39
  %41 = load ptr, ptr %37, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %37) #16
          to label %36 unwind label %47, !llvm.loop !88

45:                                               ; preds = %33
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %79

47:                                               ; preds = %40, %39
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %77

49:                                               ; preds = %36
  %50 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #16
  %51 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #16
  %52 = add i32 %51, -1
  %53 = add i32 %50, -1
  %54 = or i32 %53, %52
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %62, label %75

56:                                               ; preds = %71
  %57 = add i32 %64, -1
  %58 = add i32 %63, -1
  %59 = icmp sgt i32 %58, -1
  %60 = icmp sgt i32 %57, -1
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %75, !llvm.loop !89

62:                                               ; preds = %49, %56
  %63 = phi i32 [ %58, %56 ], [ %53, %49 ]
  %64 = phi i32 [ %57, %56 ], [ %52, %49 ]
  %65 = phi ptr [ %72, %56 ], [ null, %49 ]
  %66 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %63) #16
          to label %67 unwind label %73

67:                                               ; preds = %62
  %68 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %64) #16
          to label %69 unwind label %73

69:                                               ; preds = %67
  %70 = icmp eq ptr %66, %68
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %63) #16
          to label %56 unwind label %73, !llvm.loop !89

73:                                               ; preds = %71, %67, %62
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %77

75:                                               ; preds = %56, %69, %49
  %76 = phi ptr [ null, %49 ], [ %65, %69 ], [ %72, %56 ]
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %83

77:                                               ; preds = %73, %47
  %78 = phi { ptr, i32 } [ %48, %47 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  br label %79

79:                                               ; preds = %77, %45
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %81

81:                                               ; preds = %79, %31
  %82 = phi { ptr, i32 } [ %32, %31 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %85

83:                                               ; preds = %16, %75
  %84 = phi ptr [ %76, %75 ], [ %1, %16 ]
  ret ptr %84

85:                                               ; preds = %81, %14
  %86 = phi { ptr, i32 } [ %15, %14 ], [ %82, %81 ]
  resume { ptr, i32 } %86
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl21hasLegalRootContainerEPKNS_7DOMNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %15, %10 ], [ %1, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !90

21:                                               ; preds = %10, %4
  %22 = phi ptr [ %1, %4 ], [ %15, %10 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef signext i16 %25(ptr noundef nonnull align 8 dereferenceable(8) %22) #16
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl20isLegalContainedNodeEPKNS_7DOMNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DOMRangeExceptionC1ENS0_18RangeExceptionCodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717DOMRangeExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !92

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !93
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !95

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !96, !llvm.loop !97

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
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, %0
  %14 = and i1 %13, %12
  br i1 %14, label %6, label %15, !llvm.loop !98

15:                                               ; preds = %6, %2
  %16 = phi i1 [ %3, %2 ], [ %12, %6 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %22, %15 ], [ %13, %9 ]
  %17 = phi i64 [ %18, %15 ], [ 0, %9 ]
  %18 = add i64 %17, 1
  %19 = load ptr, ptr %16, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 9
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !99

24:                                               ; preds = %15, %9, %3
  %25 = phi i64 [ -1, %3 ], [ 0, %9 ], [ %18, %15 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseContentsENS0_13TraversalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !44, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %131, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %131, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %15, %19
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseSameContainerEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) #16
  br label %131

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %19) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %14, align 8, !tbaa !55
  %33 = icmp eq ptr %29, %32
  br i1 %33, label %46, label %37

34:                                               ; preds = %37
  %35 = load ptr, ptr %14, align 8, !tbaa !55
  %36 = icmp eq ptr %44, %35
  br i1 %36, label %46, label %37, !llvm.loop !100

37:                                               ; preds = %31, %34
  %38 = phi i32 [ %40, %34 ], [ 0, %31 ]
  %39 = phi ptr [ %44, %34 ], [ %29, %31 ]
  %40 = add nuw nsw i32 %38, 1
  %41 = load ptr, ptr %39, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %39) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %34, !llvm.loop !100

46:                                               ; preds = %34, %31
  %47 = phi ptr [ %19, %31 ], [ %39, %34 ]
  %48 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl28traverseCommonStartContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %47, i32 noundef %1) #16
  br label %131

49:                                               ; preds = %37, %25
  %50 = phi i32 [ 0, %25 ], [ %40, %37 ]
  %51 = load ptr, ptr %14, align 8, !tbaa !55
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %18, align 8, !tbaa !57
  %59 = icmp eq ptr %55, %58
  br i1 %59, label %72, label %63

60:                                               ; preds = %63
  %61 = load ptr, ptr %18, align 8, !tbaa !57
  %62 = icmp eq ptr %70, %61
  br i1 %62, label %72, label %63, !llvm.loop !101

63:                                               ; preds = %57, %60
  %64 = phi i32 [ %66, %60 ], [ 0, %57 ]
  %65 = phi ptr [ %70, %60 ], [ %55, %57 ]
  %66 = add nuw nsw i32 %64, 1
  %67 = load ptr, ptr %65, align 8, !tbaa !60
  %68 = getelementptr inbounds ptr, ptr %67, i64 5
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %65) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %60, !llvm.loop !101

72:                                               ; preds = %60, %57
  %73 = phi ptr [ %51, %57 ], [ %65, %60 ]
  %74 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl26traverseCommonEndContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %73, i32 noundef %1) #16
  br label %131

75:                                               ; preds = %63, %49
  %76 = phi i32 [ 0, %49 ], [ %66, %63 ]
  %77 = sub nsw i32 %76, %50
  %78 = load ptr, ptr %14, align 8, !tbaa !55
  %79 = icmp sgt i32 %77, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75, %80
  %81 = phi ptr [ %86, %80 ], [ %78, %75 ]
  %82 = phi i32 [ %87, %80 ], [ %77, %75 ]
  %83 = load ptr, ptr %81, align 8, !tbaa !60
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %81) #16
  %87 = add nsw i32 %82, -1
  %88 = icmp ugt i32 %82, 1
  br i1 %88, label %80, label %89, !llvm.loop !102

89:                                               ; preds = %80
  %90 = load ptr, ptr %18, align 8, !tbaa !57
  br label %103

91:                                               ; preds = %75
  %92 = load ptr, ptr %18, align 8, !tbaa !57
  %93 = icmp slt i32 %77, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91, %94
  %95 = phi ptr [ %100, %94 ], [ %92, %91 ]
  %96 = phi i32 [ %101, %94 ], [ %77, %91 ]
  %97 = load ptr, ptr %95, align 8, !tbaa !60
  %98 = getelementptr inbounds ptr, ptr %97, i64 5
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %95) #16
  %101 = add i32 %96, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %94, !llvm.loop !103

103:                                              ; preds = %94, %89, %91
  %104 = phi ptr [ %78, %91 ], [ %86, %89 ], [ %78, %94 ]
  %105 = phi ptr [ %92, %91 ], [ %90, %89 ], [ %100, %94 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !60
  %107 = getelementptr inbounds ptr, ptr %106, i64 5
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %104) #16
  %110 = load ptr, ptr %105, align 8, !tbaa !60
  %111 = getelementptr inbounds ptr, ptr %110, i64 5
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %105) #16
  %114 = icmp eq ptr %109, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %119, %103
  %116 = phi ptr [ %104, %103 ], [ %121, %119 ]
  %117 = phi ptr [ %105, %103 ], [ %120, %119 ]
  %118 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl23traverseCommonAncestorsEPNS_7DOMNodeES2_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %116, ptr noundef nonnull %117, i32 noundef %1) #16
  br label %131

119:                                              ; preds = %103, %119
  %120 = phi ptr [ %129, %119 ], [ %113, %103 ]
  %121 = phi ptr [ %125, %119 ], [ %109, %103 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !60
  %123 = getelementptr inbounds ptr, ptr %122, i64 5
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %121) #16
  %126 = load ptr, ptr %120, align 8, !tbaa !60
  %127 = getelementptr inbounds ptr, ptr %126, i64 5
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(8) %120) #16
  %130 = icmp eq ptr %125, %129
  br i1 %130, label %115, label %119, !llvm.loop !104

131:                                              ; preds = %72, %46, %115, %13, %17, %23
  %132 = phi ptr [ %24, %23 ], [ null, %17 ], [ null, %13 ], [ %48, %46 ], [ %118, %115 ], [ %74, %72 ]
  ret ptr %132
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl13checkReadOnlyEPNS_7DOMNodeES2_mm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = icmp eq ptr %1, null
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %81, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %13, label %33 [
    i16 10, label %14
    i16 8, label %21
    i16 7, label %21
    i16 4, label %21
    i16 3, label %21
  ]

14:                                               ; preds = %9
  %15 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %15, i16 noundef signext 3, ptr noundef null, ptr noundef %17) #16
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %82

21:                                               ; preds = %9, %9, %9, %9
  %22 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #16
  %23 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %22) #16
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %25, i16 noundef signext 7, ptr noundef null, ptr noundef %27) #16
          to label %28 unwind label %29

28:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %82

31:                                               ; preds = %21
  %32 = icmp eq ptr %1, %2
  br i1 %32, label %81, label %48

33:                                               ; preds = %9
  %34 = load ptr, ptr %1, align 8, !tbaa !60
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %33, %39
  %40 = phi i64 [ %46, %39 ], [ 0, %33 ]
  %41 = phi ptr [ %45, %39 ], [ %37, %33 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = getelementptr inbounds ptr, ptr %42, i64 10
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %41) #16
  %46 = add nuw i64 %40, 1
  %47 = icmp eq i64 %46, %3
  br i1 %47, label %48, label %39, !llvm.loop !105

48:                                               ; preds = %39, %33, %31
  %49 = phi ptr [ %1, %31 ], [ %37, %33 ], [ %45, %39 ]
  %50 = load ptr, ptr %2, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef signext i16 %52(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  switch i16 %53, label %61 [
    i16 10, label %54
    i16 8, label %79
    i16 7, label %79
    i16 4, label %79
    i16 3, label %79
  ]

54:                                               ; preds = %48
  %55 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %55, i16 noundef signext 3, ptr noundef null, ptr noundef %57) #16
          to label %58 unwind label %59

58:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %82

61:                                               ; preds = %48
  %62 = load ptr, ptr %2, align 8, !tbaa !60
  %63 = getelementptr inbounds ptr, ptr %62, i64 7
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %66 = icmp eq i64 %4, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = add i64 %4, -1
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %77, %70 ], [ 0, %67 ]
  %72 = phi ptr [ %76, %70 ], [ %65, %67 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  %74 = getelementptr inbounds ptr, ptr %73, i64 10
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %72) #16
  %77 = add nuw i64 %71, 1
  %78 = icmp eq i64 %77, %68
  br i1 %78, label %79, label %70, !llvm.loop !106

79:                                               ; preds = %70, %67, %48, %48, %48, %48, %61
  %80 = phi ptr [ %65, %61 ], [ %2, %48 ], [ %2, %48 ], [ %2, %48 ], [ %2, %48 ], [ %65, %67 ], [ %76, %70 ]
  tail call void @_ZN11xercesc_2_712DOMRangeImpl19recurseTreeAndCheckEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %49, ptr noundef %80) #16
  br label %81

81:                                               ; preds = %79, %31, %5
  ret void

82:                                               ; preds = %59, %29, %19
  %83 = phi ptr [ %55, %59 ], [ %25, %29 ], [ %15, %19 ]
  %84 = phi { ptr, i32 } [ %60, %59 ], [ %30, %29 ], [ %20, %19 ]
  tail call void @__cxa_free_exception(ptr %83) #15
  resume { ptr, i32 } %84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #7 !prof !43 !PGOFuncName !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !109
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !93
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMCommentImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !125 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i32 0, ptr %0, align 8, !tbaa !126
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !128
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !130
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !131
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #16
  store ptr %16, ptr %9, align 8, !tbaa !132
  store i16 0, ptr %16, align 2, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !133 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !134

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !93
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !135

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !93
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !136, !llvm.loop !137

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !126
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !128
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !138

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #16
  %21 = load i32, ptr %0, align 8, !tbaa !126
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !126
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !126
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DOMRangeImpl8nextNodeEPKNS_7DOMNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  br i1 %2, label %6, label %12

6:                                                ; preds = %5
  %7 = load ptr, ptr %1, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %6, %5
  %13 = load ptr, ptr %1, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 10
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %24 = icmp eq ptr %22, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %18, %38
  %26 = phi ptr [ %42, %38 ], [ %22, %18 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !59
  %28 = icmp ne ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 24
  %30 = icmp eq ptr %29, %26
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 10
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %26) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %26, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %26) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %25, !llvm.loop !139

44:                                               ; preds = %32, %38, %25, %18, %6, %12, %3
  %45 = phi ptr [ null, %3 ], [ %10, %6 ], [ %16, %12 ], [ null, %18 ], [ %36, %32 ], [ null, %38 ], [ null, %25 ]
  ret ptr %45
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = load i32, ptr %0, align 8, !tbaa !126
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = load ptr, ptr %3, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !141 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #10 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712DOMRangeImpl19isValidAncestorTypeEPKNS_7DOMNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %10
  %5 = phi ptr [ %14, %10 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  switch i16 %9, label %10 [
    i16 12, label %16
    i16 10, label %16
    i16 6, label %16
  ]

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !142

16:                                               ; preds = %10, %4, %4, %4, %2
  %17 = phi i1 [ true, %2 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ true, %10 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #16
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !145
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !85
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !145
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !145
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !147, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !143
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !145
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !148

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = load ptr, ptr %30, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #16
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !43 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !147
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !145
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !149
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !143
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !146
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !60
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #16
  store ptr %16, ptr %9, align 8, !tbaa !143
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !143
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !85
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !150
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !145
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #16
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !147, !range !52, !noundef !53
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !60
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !145
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !145
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !147, !range !52, !noundef !53
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !143
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !60
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !143
  %24 = load i32, ptr %2, align 4, !tbaa !145
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !85
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !151
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !145
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #16
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !147, !range !52, !noundef !53
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !60
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !145
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !143
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !143
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !85
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !85
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !152

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !85
  store i32 %31, ptr %3, align 4, !tbaa !145
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !145
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !145
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !147, !range !52, !noundef !53
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !143
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !147, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !143
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !145
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !153

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = load ptr, ptr %30, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !43 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
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
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !145
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !149
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #16
  %21 = load i32, ptr %3, align 4, !tbaa !145
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !85
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !143
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !85
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !157

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !146
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !143
  %49 = load ptr, ptr %46, align 8, !tbaa !60
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #16
  store ptr %20, ptr %47, align 8, !tbaa !143
  store i32 %12, ptr %6, align 8, !tbaa !149
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseSameContainerEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = alloca [4000 x i16], align 16
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi ptr [ %11, %5 ], [ null, %2 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !56
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %134, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef signext i16 %24(ptr noundef nonnull align 8 dereferenceable(8) %21) #16
  %26 = icmp eq i16 %25, 7
  switch i16 %25, label %96 [
    i16 8, label %27
    i16 7, label %27
    i16 4, label %27
    i16 3, label %27
  ]

27:                                               ; preds = %19, %19, %19, %19
  %28 = load ptr, ptr %20, align 8, !tbaa !55
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds ptr, ptr %29, i64 13
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i1 noundef zeroext false) #16
  %33 = load i64, ptr %16, align 8, !tbaa !58
  %34 = load i64, ptr %14, align 8, !tbaa !56
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load ptr, ptr %32, align 8, !tbaa !60
  %38 = getelementptr inbounds ptr, ptr %37, i64 19
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
  br label %78

40:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #15
  %41 = icmp ugt i64 %33, 3998
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = shl i64 %33, 1
  %46 = add i64 %45, 2
  %47 = load ptr, ptr %44, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46) #16
  br label %51

51:                                               ; preds = %40, %42
  %52 = phi ptr [ %50, %42 ], [ %3, %40 ]
  %53 = load ptr, ptr %32, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %32) #16
  %57 = load i64, ptr %14, align 8, !tbaa !56
  %58 = trunc i64 %57 to i32
  %59 = load i64, ptr %16, align 8, !tbaa !58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %62) #16
  call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %56, i32 noundef %58, i32 noundef %60, ptr noundef %63) #16
  %64 = load ptr, ptr %61, align 8, !tbaa !59
  %65 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %64, ptr noundef %52) #16
  %66 = load ptr, ptr %32, align 8, !tbaa !60
  %67 = getelementptr inbounds ptr, ptr %66, i64 19
  %68 = load ptr, ptr %67, align 8
  call void %68(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %65) #16
  %69 = load i64, ptr %16, align 8, !tbaa !58
  %70 = icmp ugt i64 %69, 3998
  br i1 %70, label %71, label %77

71:                                               ; preds = %51
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  %74 = load ptr, ptr %73, align 8, !tbaa !60
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %52) #16
  br label %77

77:                                               ; preds = %71, %51
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #15
  br label %78

78:                                               ; preds = %77, %36
  %79 = icmp eq i32 %1, 2
  br i1 %79, label %91, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %20, align 8, !tbaa !55
  %82 = load i64, ptr %14, align 8, !tbaa !56
  %83 = load i64, ptr %16, align 8, !tbaa !58
  %84 = sub i64 %83, %82
  br i1 %26, label %85, label %86

85:                                               ; preds = %80
  call void @_ZN11xercesc_2_728DOMProcessingInstructionImpl10deleteDataEmm(ptr noundef nonnull align 8 dereferenceable(72) %81, i64 noundef %82, i64 noundef %84) #16
  br label %90

86:                                               ; preds = %80
  %87 = load ptr, ptr %81, align 8, !tbaa !60
  %88 = getelementptr inbounds ptr, ptr %87, i64 45
  %89 = load ptr, ptr %88, align 8
  call void %89(ptr noundef nonnull align 8 dereferenceable(8) %81, i64 noundef %82, i64 noundef %84) #16
  br label %90

90:                                               ; preds = %85, %86
  br i1 %4, label %130, label %91

91:                                               ; preds = %78, %90
  %92 = load ptr, ptr %13, align 8, !tbaa !60
  %93 = getelementptr inbounds ptr, ptr %92, i64 17
  %94 = load ptr, ptr %93, align 8
  %95 = call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %32) #16
  br label %128

96:                                               ; preds = %19
  %97 = load ptr, ptr %20, align 8, !tbaa !55
  %98 = load i64, ptr %14, align 8, !tbaa !56
  %99 = trunc i64 %98 to i32
  %100 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15getSelectedNodeEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef %97, i32 noundef %99) #16
  %101 = load i64, ptr %16, align 8, !tbaa !58
  %102 = load i64, ptr %14, align 8, !tbaa !56
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = icmp sgt i32 %104, 0
  %106 = icmp ne ptr %100, null
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %128

108:                                              ; preds = %96
  %109 = icmp eq ptr %13, null
  br label %110

110:                                              ; preds = %108, %123
  %111 = phi i32 [ %104, %108 ], [ %124, %123 ]
  %112 = phi ptr [ %100, %108 ], [ %116, %123 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = getelementptr inbounds ptr, ptr %113, i64 10
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %112) #16
  %117 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef nonnull %112, i32 noundef %1) #16
  br i1 %109, label %123, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %13, align 8, !tbaa !60
  %120 = getelementptr inbounds ptr, ptr %119, i64 17
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %117) #16
  br label %123

123:                                              ; preds = %118, %110
  %124 = add nsw i32 %111, -1
  %125 = icmp sgt i32 %111, 1
  %126 = icmp ne ptr %116, null
  %127 = and i1 %126, %125
  br i1 %127, label %110, label %128, !llvm.loop !158

128:                                              ; preds = %123, %96, %91
  %129 = icmp eq i32 %1, 2
  br i1 %129, label %134, label %130

130:                                              ; preds = %90, %128
  %131 = load ptr, ptr %0, align 8, !tbaa !60
  %132 = getelementptr inbounds ptr, ptr %131, i64 14
  %133 = load ptr, ptr %132, align 8
  call void %133(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %134

134:                                              ; preds = %128, %130, %12
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl28traverseCommonStartContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = icmp eq i32 %2, 3
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef 3) #16
  br label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  %14 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) #16
  %15 = icmp eq ptr %13, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %13, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14) #16
  br label %21

21:                                               ; preds = %5, %16, %7
  %22 = phi i1 [ true, %5 ], [ false, %16 ], [ true, %7 ]
  %23 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %7 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %25) #16
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !56
  %29 = sub i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = icmp eq i32 %2, 2
  br i1 %33, label %73, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %0, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #16
  br label %69

38:                                               ; preds = %21
  %39 = load ptr, ptr %1, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 9
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %43

43:                                               ; preds = %38, %60
  %44 = phi i32 [ %30, %38 ], [ %61, %60 ]
  %45 = phi ptr [ %42, %38 ], [ %49, %60 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 9
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45) #16
  %50 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef nonnull %45, i32 noundef %2) #16
  br i1 %22, label %60, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %23, align 8, !tbaa !60
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %23) #16
  %56 = load ptr, ptr %23, align 8, !tbaa !60
  %57 = getelementptr inbounds ptr, ptr %56, i64 14
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %50, ptr noundef %55) #16
  br label %60

60:                                               ; preds = %51, %43
  %61 = add nsw i32 %44, -1
  %62 = icmp sgt i32 %44, 1
  br i1 %62, label %43, label %63, !llvm.loop !159

63:                                               ; preds = %60
  %64 = icmp eq i32 %2, 2
  br i1 %64, label %73, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %0, align 8, !tbaa !60
  %67 = getelementptr inbounds ptr, ptr %66, i64 12
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) #16
  br label %69

69:                                               ; preds = %34, %65
  %70 = load ptr, ptr %0, align 8, !tbaa !60
  %71 = getelementptr inbounds ptr, ptr %70, i64 14
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false) #16
  br label %73

73:                                               ; preds = %69, %63, %32
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl26traverseCommonEndContainerEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = icmp eq i32 %2, 3
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef 3) #16
  br label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  %14 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) #16
  %15 = icmp eq ptr %13, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %13, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14) #16
  br label %21

21:                                               ; preds = %5, %16, %7
  %22 = phi i1 [ true, %5 ], [ false, %16 ], [ true, %7 ]
  %23 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %7 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %25) #16
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !58
  %29 = xor i64 %26, -1
  %30 = add i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %1, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %36 = icmp sgt i32 %31, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %21, %50
  %38 = phi ptr [ %43, %50 ], [ %35, %21 ]
  %39 = phi i32 [ %51, %50 ], [ %31, %21 ]
  %40 = load ptr, ptr %38, align 8, !tbaa !60
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %38) #16
  %44 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef nonnull %38, i32 noundef %2) #16
  br i1 %22, label %50, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %23, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 17
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %44) #16
  br label %50

50:                                               ; preds = %45, %37
  %51 = add nsw i32 %39, -1
  %52 = icmp sgt i32 %39, 1
  br i1 %52, label %37, label %53, !llvm.loop !160

53:                                               ; preds = %50, %21
  %54 = icmp eq i32 %2, 2
  br i1 %54, label %62, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %0, align 8, !tbaa !60
  %57 = getelementptr inbounds ptr, ptr %56, i64 11
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) #16
  %59 = load ptr, ptr %0, align 8, !tbaa !60
  %60 = getelementptr inbounds ptr, ptr %59, i64 14
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %62

62:                                               ; preds = %55, %53
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl23traverseCommonAncestorsEPNS_7DOMNodeES2_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !43 {
  %5 = icmp eq i32 %3, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef 3) #16
  br label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  %15 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %3) #16
  %16 = icmp eq ptr %14, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %14, align 8, !tbaa !60
  %19 = getelementptr inbounds ptr, ptr %18, i64 17
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %15) #16
  br label %22

22:                                               ; preds = %6, %17, %8
  %23 = phi i1 [ true, %6 ], [ false, %17 ], [ true, %8 ]
  %24 = phi ptr [ null, %6 ], [ %14, %17 ], [ null, %8 ]
  %25 = load ptr, ptr %1, align 8, !tbaa !60
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %29 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %28) #16
  %30 = trunc i64 %29 to i32
  %31 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef %28) #16
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %30, -1
  %34 = add i32 %32, %33
  %35 = load ptr, ptr %1, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 10
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %39 = icmp sgt i32 %34, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %22, %53
  %41 = phi ptr [ %46, %53 ], [ %38, %22 ]
  %42 = phi i32 [ %54, %53 ], [ %34, %22 ]
  %43 = load ptr, ptr %41, align 8, !tbaa !60
  %44 = getelementptr inbounds ptr, ptr %43, i64 10
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %41) #16
  %47 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef nonnull %41, i32 noundef %3) #16
  br i1 %23, label %53, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %24, align 8, !tbaa !60
  %50 = getelementptr inbounds ptr, ptr %49, i64 17
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %47) #16
  br label %53

53:                                               ; preds = %48, %40
  %54 = add nsw i32 %42, -1
  %55 = icmp sgt i32 %42, 1
  br i1 %55, label %40, label %56, !llvm.loop !161

56:                                               ; preds = %53, %22
  %57 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %2, i32 noundef %3) #16
  br i1 %23, label %63, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %24, align 8, !tbaa !60
  %60 = getelementptr inbounds ptr, ptr %59, i64 17
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %57) #16
  br label %63

63:                                               ; preds = %58, %56
  %64 = icmp eq i32 %3, 2
  br i1 %64, label %72, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %0, align 8, !tbaa !60
  %67 = getelementptr inbounds ptr, ptr %66, i64 11
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) #16
  %69 = load ptr, ptr %0, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 14
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true) #16
  br label %72

72:                                               ; preds = %65, %63
  ret ptr %24
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_728DOMProcessingInstructionImpl10deleteDataEmm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15getSelectedNodeEPNS_7DOMNodeEi(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
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
  %11 = load ptr, ptr %1, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %15 = icmp ne ptr %14, null
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %25, %18 ], [ %14, %10 ]
  %20 = phi i32 [ %21, %18 ], [ %2, %10 ]
  %21 = add nsw i32 %20, -1
  %22 = load ptr, ptr %19, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 10
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %19) #16
  %26 = icmp ne ptr %25, null
  %27 = icmp ugt i32 %20, 1
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %18, label %29, !llvm.loop !162

29:                                               ; preds = %18, %10
  %30 = phi ptr [ %14, %10 ], [ %25, %18 ]
  %31 = phi i1 [ %15, %10 ], [ %26, %18 ]
  %32 = select i1 %31, ptr %30, ptr %1
  br label %33

33:                                               ; preds = %8, %3, %3, %3, %3, %29
  %34 = phi ptr [ %32, %29 ], [ %1, %3 ], [ %1, %3 ], [ %1, %3 ], [ %1, %3 ], [ %1, %8 ]
  ret ptr %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  switch i32 %2, label %18 [
    i32 2, label %4
    i32 1, label %19
    i32 3, label %9
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 13
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true) #16
  br label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 16
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %1) #16
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %3, %18, %9, %4
  %20 = phi ptr [ null, %18 ], [ null, %9 ], [ %8, %4 ], [ %1, %3 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseRightBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !58
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, -1
  %10 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15getSelectedNodeEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef %5, i32 noundef %9) #16
  %11 = load ptr, ptr %4, align 8, !tbaa !57
  %12 = icmp ne ptr %10, %11
  %13 = icmp eq ptr %10, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %12, i1 noundef zeroext false, i32 noundef %2) #16
  br label %73

16:                                               ; preds = %3
  %17 = load ptr, ptr %10, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %21 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %20, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %2) #16
  %22 = icmp eq ptr %20, null
  br i1 %22, label %73, label %23

23:                                               ; preds = %16
  %24 = zext i1 %12 to i8
  %25 = icmp eq i32 %2, 3
  br label %26

26:                                               ; preds = %23, %71
  %27 = phi ptr [ %10, %23 ], [ %60, %71 ]
  %28 = phi i8 [ %24, %23 ], [ %54, %71 ]
  %29 = phi ptr [ %21, %23 ], [ %65, %71 ]
  %30 = phi ptr [ %20, %23 ], [ %64, %71 ]
  %31 = icmp eq ptr %27, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %26, %51
  %33 = phi ptr [ %38, %51 ], [ %27, %26 ]
  %34 = phi i8 [ 1, %51 ], [ %28, %26 ]
  %35 = load ptr, ptr %33, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 9
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %33) #16
  %39 = and i8 %34, 1
  %40 = icmp ne i8 %39, 0
  %41 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %33, i1 noundef zeroext %40, i1 noundef zeroext false, i32 noundef %2) #16
  br i1 %25, label %51, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %29, align 8, !tbaa !60
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %29) #16
  %47 = load ptr, ptr %29, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 14
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %41, ptr noundef %46) #16
  br label %51

51:                                               ; preds = %42, %32
  %52 = icmp eq ptr %38, null
  br i1 %52, label %53, label %32, !llvm.loop !163

53:                                               ; preds = %51, %26
  %54 = phi i8 [ %28, %26 ], [ 1, %51 ]
  %55 = icmp eq ptr %30, %1
  br i1 %55, label %73, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %30, align 8, !tbaa !60
  %58 = getelementptr inbounds ptr, ptr %57, i64 9
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %30) #16
  %61 = load ptr, ptr %30, align 8, !tbaa !60
  %62 = getelementptr inbounds ptr, ptr %61, i64 5
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %30) #16
  %65 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %64, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %2) #16
  br i1 %25, label %71, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr %65, align 8, !tbaa !60
  %68 = getelementptr inbounds ptr, ptr %67, i64 17
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %29) #16
  br label %71

71:                                               ; preds = %66, %56
  %72 = icmp eq ptr %64, null
  br i1 %72, label %73, label %26, !llvm.loop !164

73:                                               ; preds = %71, %53, %16, %14
  %74 = phi ptr [ %15, %14 ], [ null, %16 ], [ null, %71 ], [ %29, %53 ]
  ret ptr %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl20traverseLeftBoundaryEPNS_7DOMNodeEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = load ptr, ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  %12 = trunc i64 %11 to i32
  %13 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl15getSelectedNodeEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef %7, i32 noundef %12) #16
  %14 = load ptr, ptr %0, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  %18 = icmp ne ptr %13, %17
  %19 = icmp eq ptr %13, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %18, i1 noundef zeroext true, i32 noundef %2) #16
  br label %75

22:                                               ; preds = %3
  %23 = load ptr, ptr %13, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  %27 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %26, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %2) #16
  %28 = icmp eq ptr %26, null
  br i1 %28, label %75, label %29

29:                                               ; preds = %22
  %30 = zext i1 %18 to i8
  %31 = icmp eq i32 %2, 3
  br label %32

32:                                               ; preds = %29, %73
  %33 = phi ptr [ %13, %29 ], [ %62, %73 ]
  %34 = phi i8 [ %30, %29 ], [ %56, %73 ]
  %35 = phi ptr [ %27, %29 ], [ %67, %73 ]
  %36 = phi ptr [ %26, %29 ], [ %66, %73 ]
  %37 = icmp eq ptr %33, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %32, %53
  %39 = phi ptr [ %44, %53 ], [ %33, %32 ]
  %40 = phi i8 [ 1, %53 ], [ %34, %32 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %39) #16
  %45 = and i8 %40, 1
  %46 = icmp ne i8 %45, 0
  %47 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %39, i1 noundef zeroext %46, i1 noundef zeroext true, i32 noundef %2) #16
  br i1 %31, label %53, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr %35, align 8, !tbaa !60
  %50 = getelementptr inbounds ptr, ptr %49, i64 17
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %47) #16
  br label %53

53:                                               ; preds = %48, %38
  %54 = icmp eq ptr %44, null
  br i1 %54, label %55, label %38, !llvm.loop !165

55:                                               ; preds = %53, %32
  %56 = phi i8 [ %34, %32 ], [ 1, %53 ]
  %57 = icmp eq ptr %36, %1
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %36, align 8, !tbaa !60
  %60 = getelementptr inbounds ptr, ptr %59, i64 10
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %36) #16
  %63 = load ptr, ptr %36, align 8, !tbaa !60
  %64 = getelementptr inbounds ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %36) #16
  %67 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %66, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %2) #16
  br i1 %31, label %73, label %68

68:                                               ; preds = %58
  %69 = load ptr, ptr %67, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 17
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %35) #16
  br label %73

73:                                               ; preds = %68, %58
  %74 = icmp eq ptr %66, null
  br i1 %74, label %75, label %32, !llvm.loop !166

75:                                               ; preds = %73, %55, %22, %20
  %76 = phi ptr [ %21, %20 ], [ null, %22 ], [ null, %73 ], [ %35, %55 ]
  ret ptr %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl12traverseNodeEPNS_7DOMNodeEbbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #1 align 2 !prof !43 {
  br i1 %2, label %6, label %8

6:                                                ; preds = %5
  %7 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl21traverseFullySelectedEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %4) #16
  br label %17

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  switch i16 %12, label %15 [
    i16 8, label %13
    i16 7, label %13
    i16 4, label %13
    i16 3, label %13
  ]

13:                                               ; preds = %8, %8, %8, %8
  %14 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, i1 noundef zeroext %3, i32 noundef %4) #16
  br label %17

15:                                               ; preds = %8
  %16 = tail call noundef ptr @_ZN11xercesc_2_712DOMRangeImpl25traversePartiallySelectedEPNS_7DOMNodeEi(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %4) #16
  br label %17

17:                                               ; preds = %13, %15, %6
  %18 = phi ptr [ %7, %6 ], [ %14, %13 ], [ %16, %15 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl16traverseTextNodeEPNS_7DOMNodeEbi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca [4000 x i16], align 16
  %7 = alloca [4000 x i16], align 16
  %8 = alloca [4000 x i16], align 16
  %9 = alloca [4000 x i16], align 16
  %10 = load ptr, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %15) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %17 = load ptr, ptr %14, align 8, !tbaa !54
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %16, ptr noundef %17) #16
  br i1 %2, label %18, label %125

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #16
          to label %25 unwind label %40

25:                                               ; preds = %18
  %26 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %24) #16
  %27 = load ptr, ptr %0, align 8, !tbaa !60
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef i64 %29(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
          to label %31 unwind label %42

31:                                               ; preds = %25
  %32 = trunc i64 %30 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = icmp eq i32 %3, 2
  br i1 %35, label %80, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %1, align 8, !tbaa !60
  %38 = getelementptr inbounds ptr, ptr %37, i64 19
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
          to label %78 unwind label %42

40:                                               ; preds = %18
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %234

42:                                               ; preds = %36, %25
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %234

44:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %6) #15
  %45 = icmp sgt i32 %32, 3998
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = load ptr, ptr %14, align 8, !tbaa !54
  %48 = shl i64 %30, 1
  %49 = add i64 %48, 2
  %50 = and i64 %49, 8589934590
  %51 = load ptr, ptr %47, align 8, !tbaa !60
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %50) #16
          to label %57 unwind label %55

55:                                               ; preds = %72, %67, %64, %57, %46
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %6) #15
  br label %234

57:                                               ; preds = %44, %46
  %58 = phi ptr [ %54, %46 ], [ %6, %44 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %60) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %16, i32 noundef 0, i32 noundef %32, ptr noundef %61) #16
          to label %62 unwind label %55

62:                                               ; preds = %57
  %63 = icmp eq i32 %3, 2
  br i1 %63, label %71, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %59, align 8, !tbaa !59
  %66 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %65, ptr noundef %58) #16
          to label %67 unwind label %55

67:                                               ; preds = %64
  %68 = load ptr, ptr %1, align 8, !tbaa !60
  %69 = getelementptr inbounds ptr, ptr %68, i64 19
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %66) #16
          to label %71 unwind label %55

71:                                               ; preds = %67, %62
  br i1 %45, label %72, label %77

72:                                               ; preds = %71
  %73 = load ptr, ptr %14, align 8, !tbaa !54
  %74 = load ptr, ptr %73, align 8, !tbaa !60
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %58) #16
          to label %77 unwind label %55

77:                                               ; preds = %72, %71
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %6) #15
  br label %78

78:                                               ; preds = %36, %77
  %79 = icmp eq i32 %3, 3
  br i1 %79, label %232, label %80

80:                                               ; preds = %34, %78
  %81 = load ptr, ptr %1, align 8, !tbaa !60
  %82 = getelementptr inbounds ptr, ptr %81, i64 13
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #16
          to label %85 unwind label %91

85:                                               ; preds = %80
  %86 = icmp eq i32 %26, %32
  br i1 %86, label %87, label %93

87:                                               ; preds = %85
  %88 = load ptr, ptr %84, align 8, !tbaa !60
  %89 = getelementptr inbounds ptr, ptr %88, i64 19
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
          to label %232 unwind label %91

91:                                               ; preds = %87, %80
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %234

93:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %7) #15
  %94 = icmp sgt i32 %32, 3998
  br i1 %94, label %95, label %106

95:                                               ; preds = %93
  %96 = load ptr, ptr %14, align 8, !tbaa !54
  %97 = shl i64 %30, 1
  %98 = add i64 %97, 2
  %99 = and i64 %98, 8589934590
  %100 = load ptr, ptr %96, align 8, !tbaa !60
  %101 = getelementptr inbounds ptr, ptr %100, i64 2
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %96, i64 noundef %99) #16
          to label %106 unwind label %104

104:                                              ; preds = %119, %114, %111, %106, %95
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #15
  br label %234

106:                                              ; preds = %93, %95
  %107 = phi ptr [ %103, %95 ], [ %7, %93 ]
  %108 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  %110 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %109) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %107, ptr noundef %16, i32 noundef %32, i32 noundef %26, ptr noundef %110) #16
          to label %111 unwind label %104

111:                                              ; preds = %106
  %112 = load ptr, ptr %108, align 8, !tbaa !59
  %113 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %112, ptr noundef %107) #16
          to label %114 unwind label %104

114:                                              ; preds = %111
  %115 = load ptr, ptr %84, align 8, !tbaa !60
  %116 = getelementptr inbounds ptr, ptr %115, i64 19
  %117 = load ptr, ptr %116, align 8
  invoke void %117(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef %113) #16
          to label %118 unwind label %104

118:                                              ; preds = %114
  br i1 %94, label %119, label %124

119:                                              ; preds = %118
  %120 = load ptr, ptr %14, align 8, !tbaa !54
  %121 = load ptr, ptr %120, align 8, !tbaa !60
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %107) #16
          to label %124 unwind label %104

124:                                              ; preds = %119, %118
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #15
  br label %232

125:                                              ; preds = %4
  %126 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !57
  %128 = load ptr, ptr %127, align 8, !tbaa !60
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %127) #16
          to label %132 unwind label %147

132:                                              ; preds = %125
  %133 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %131) #16
  %134 = load ptr, ptr %0, align 8, !tbaa !60
  %135 = getelementptr inbounds ptr, ptr %134, i64 5
  %136 = load ptr, ptr %135, align 8
  %137 = invoke noundef i64 %136(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
          to label %138 unwind label %149

138:                                              ; preds = %132
  %139 = trunc i64 %137 to i32
  %140 = icmp eq i32 %133, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = icmp eq i32 %3, 2
  br i1 %142, label %187, label %143

143:                                              ; preds = %141
  %144 = load ptr, ptr %1, align 8, !tbaa !60
  %145 = getelementptr inbounds ptr, ptr %144, i64 19
  %146 = load ptr, ptr %145, align 8
  invoke void %146(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
          to label %185 unwind label %149

147:                                              ; preds = %125
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %234

149:                                              ; preds = %143, %132
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %234

151:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %8) #15
  %152 = icmp sgt i32 %139, 3998
  br i1 %152, label %153, label %164

153:                                              ; preds = %151
  %154 = load ptr, ptr %14, align 8, !tbaa !54
  %155 = shl i64 %137, 1
  %156 = add i64 %155, 2
  %157 = and i64 %156, 8589934590
  %158 = load ptr, ptr %154, align 8, !tbaa !60
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8
  %161 = invoke noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %154, i64 noundef %157) #16
          to label %164 unwind label %162

162:                                              ; preds = %179, %174, %171, %164, %153
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %8) #15
  br label %234

164:                                              ; preds = %151, %153
  %165 = phi ptr [ %161, %153 ], [ %8, %151 ]
  %166 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %167 = load ptr, ptr %166, align 8, !tbaa !59
  %168 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %167) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %165, ptr noundef %16, i32 noundef %139, i32 noundef %133, ptr noundef %168) #16
          to label %169 unwind label %162

169:                                              ; preds = %164
  %170 = icmp eq i32 %3, 2
  br i1 %170, label %178, label %171

171:                                              ; preds = %169
  %172 = load ptr, ptr %166, align 8, !tbaa !59
  %173 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %172, ptr noundef %165) #16
          to label %174 unwind label %162

174:                                              ; preds = %171
  %175 = load ptr, ptr %1, align 8, !tbaa !60
  %176 = getelementptr inbounds ptr, ptr %175, i64 19
  %177 = load ptr, ptr %176, align 8
  invoke void %177(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %173) #16
          to label %178 unwind label %162

178:                                              ; preds = %174, %169
  br i1 %152, label %179, label %184

179:                                              ; preds = %178
  %180 = load ptr, ptr %14, align 8, !tbaa !54
  %181 = load ptr, ptr %180, align 8, !tbaa !60
  %182 = getelementptr inbounds ptr, ptr %181, i64 3
  %183 = load ptr, ptr %182, align 8
  invoke void %183(ptr noundef nonnull align 8 dereferenceable(8) %180, ptr noundef %165) #16
          to label %184 unwind label %162

184:                                              ; preds = %179, %178
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %8) #15
  br label %185

185:                                              ; preds = %143, %184
  %186 = icmp eq i32 %3, 3
  br i1 %186, label %232, label %187

187:                                              ; preds = %141, %185
  %188 = load ptr, ptr %1, align 8, !tbaa !60
  %189 = getelementptr inbounds ptr, ptr %188, i64 13
  %190 = load ptr, ptr %189, align 8
  %191 = invoke noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #16
          to label %192 unwind label %198

192:                                              ; preds = %187
  %193 = icmp eq i32 %139, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %192
  %195 = load ptr, ptr %191, align 8, !tbaa !60
  %196 = getelementptr inbounds ptr, ptr %195, i64 19
  %197 = load ptr, ptr %196, align 8
  invoke void %197(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #16
          to label %232 unwind label %198

198:                                              ; preds = %194, %187
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %234

200:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %9) #15
  %201 = icmp sgt i32 %139, 3998
  br i1 %201, label %202, label %213

202:                                              ; preds = %200
  %203 = load ptr, ptr %14, align 8, !tbaa !54
  %204 = shl i64 %137, 1
  %205 = add i64 %204, 2
  %206 = and i64 %205, 8589934590
  %207 = load ptr, ptr %203, align 8, !tbaa !60
  %208 = getelementptr inbounds ptr, ptr %207, i64 2
  %209 = load ptr, ptr %208, align 8
  %210 = invoke noundef ptr %209(ptr noundef nonnull align 8 dereferenceable(8) %203, i64 noundef %206) #16
          to label %213 unwind label %211

211:                                              ; preds = %226, %221, %218, %213, %202
  %212 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %9) #15
  br label %234

213:                                              ; preds = %200, %202
  %214 = phi ptr [ %210, %202 ], [ %9, %200 ]
  %215 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 6
  %216 = load ptr, ptr %215, align 8, !tbaa !59
  %217 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %216) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %214, ptr noundef %16, i32 noundef 0, i32 noundef %139, ptr noundef %217) #16
          to label %218 unwind label %211

218:                                              ; preds = %213
  %219 = load ptr, ptr %215, align 8, !tbaa !59
  %220 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %219, ptr noundef %214) #16
          to label %221 unwind label %211

221:                                              ; preds = %218
  %222 = load ptr, ptr %191, align 8, !tbaa !60
  %223 = getelementptr inbounds ptr, ptr %222, i64 19
  %224 = load ptr, ptr %223, align 8
  invoke void %224(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef %220) #16
          to label %225 unwind label %211

225:                                              ; preds = %221
  br i1 %201, label %226, label %231

226:                                              ; preds = %225
  %227 = load ptr, ptr %14, align 8, !tbaa !54
  %228 = load ptr, ptr %227, align 8, !tbaa !60
  %229 = getelementptr inbounds ptr, ptr %228, i64 3
  %230 = load ptr, ptr %229, align 8
  invoke void %230(ptr noundef nonnull align 8 dereferenceable(8) %227, ptr noundef %214) #16
          to label %231 unwind label %211

231:                                              ; preds = %226, %225
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %9) #15
  br label %232

232:                                              ; preds = %185, %194, %231, %78, %87, %124
  %233 = phi ptr [ null, %78 ], [ %84, %87 ], [ %84, %124 ], [ null, %185 ], [ %191, %194 ], [ %191, %231 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret ptr %233

234:                                              ; preds = %147, %198, %211, %162, %149, %40, %91, %104, %55, %42
  %235 = phi { ptr, i32 } [ %41, %40 ], [ %43, %42 ], [ %56, %55 ], [ %92, %91 ], [ %105, %104 ], [ %148, %147 ], [ %150, %149 ], [ %163, %162 ], [ %199, %198 ], [ %212, %211 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %235
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl25traversePartiallySelectedEPNS_7DOMNodeEi(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 13
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #16
  br label %11

11:                                               ; preds = %3, %6
  %12 = phi ptr [ %10, %6 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !168

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !169 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !173 {
  %3 = load ptr, ptr %0, align 8, !tbaa !170
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !174

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !175

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #16
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !170
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !172
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl19recurseTreeAndCheckEPNS_7DOMNodeES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %1, %2
  %6 = and i1 %4, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %42, %3
  ret void

8:                                                ; preds = %3, %42
  %9 = phi ptr [ %47, %42 ], [ %1, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %14 = icmp eq i16 %13, 10
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 3, ptr noundef null, ptr noundef %18) #16
          to label %19 unwind label %20

19:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %51

22:                                               ; preds = %8
  %23 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %9) #16
  %24 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %23) #16
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %26, i16 noundef signext 7, ptr noundef null, ptr noundef %28) #16
          to label %29 unwind label %30

29:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %51

32:                                               ; preds = %22
  %33 = load ptr, ptr %9, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 18
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load ptr, ptr %9, align 8, !tbaa !60
  %39 = getelementptr inbounds ptr, ptr %38, i64 7
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  tail call void @_ZN11xercesc_2_712DOMRangeImpl19recurseTreeAndCheckEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %41, ptr noundef %2) #16
  br label %42

42:                                               ; preds = %32, %37
  %43 = phi ptr [ %41, %37 ], [ %9, %32 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = getelementptr inbounds ptr, ptr %44, i64 10
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %43) #16
  %48 = icmp ne ptr %47, null
  %49 = icmp ne ptr %47, %2
  %50 = and i1 %48, %49
  br i1 %50, label %8, label %7, !llvm.loop !176

51:                                               ; preds = %30, %20
  %52 = phi ptr [ %26, %30 ], [ %16, %20 ]
  %53 = phi { ptr, i32 } [ %31, %30 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %52) #15
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DOMRangeImpl11removeChildEPNS_7DOMNodeES2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  store ptr %2, ptr %4, align 8, !tbaa !84
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #16
  store ptr null, ptr %4, align 8, !tbaa !84
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl19receiveReplacedTextEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %11 = load ptr, ptr %5, align 8, !tbaa !55
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
  store i64 0, ptr %15, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %13, %14, %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i16 %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #16
  %23 = load ptr, ptr %17, align 8, !tbaa !57
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
  store i64 0, ptr %27, align 8, !tbaa !58
  br label %28

28:                                               ; preds = %16, %26, %25, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedTextEPNS_7DOMNodeEmi(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !43 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !55
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
  %18 = load i64, ptr %17, align 8, !tbaa !56
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
  store i64 %27, ptr %17, align 8, !tbaa !56
  br label %28

28:                                               ; preds = %26, %15, %24, %6
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef signext i16 %33(ptr noundef nonnull align 8 dereferenceable(8) %30) #16
  %35 = load ptr, ptr %29, align 8, !tbaa !57
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
  %40 = load i64, ptr %39, align 8, !tbaa !58
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
  store i64 %49, ptr %39, align 8, !tbaa !58
  br label %50

50:                                               ; preds = %48, %28, %46, %37, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedTextEPNS_7DOMNodeEmi(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !43 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !55
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
  %18 = load i64, ptr %17, align 8, !tbaa !56
  %19 = icmp ugt i64 %18, %2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 %2, ptr %17, align 8, !tbaa !56
  br label %21

21:                                               ; preds = %15, %16, %20, %6
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef signext i16 %26(ptr noundef nonnull align 8 dereferenceable(8) %23) #16
  %28 = load ptr, ptr %22, align 8, !tbaa !57
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
  %33 = load i64, ptr %32, align 8, !tbaa !58
  %34 = icmp ugt i64 %33, %2
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = sext i32 %3 to i64
  %37 = add i64 %33, %36
  store i64 %37, ptr %32, align 8, !tbaa !58
  br label %38

38:                                               ; preds = %21, %35, %31, %30, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl25updateRangeForDeletedNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %3, i1 true, i1 %6
  br i1 %7, label %74, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %12) #16
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !56
  %20 = icmp ugt i64 %19, %17
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = add i64 %19, -1
  store i64 %22, ptr %18, align 8, !tbaa !56
  br label %23

23:                                               ; preds = %16, %21, %8
  %24 = load ptr, ptr %1, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %27) #16
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !58
  %35 = icmp ugt i64 %34, %32
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = add i64 %34, -1
  store i64 %37, ptr %33, align 8, !tbaa !58
  br label %38

38:                                               ; preds = %31, %36, %23
  %39 = load ptr, ptr %1, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %43 = load ptr, ptr %13, align 8, !tbaa !55
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load ptr, ptr %1, align 8, !tbaa !60
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %50 = load ptr, ptr %28, align 8, !tbaa !57
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %74, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %13, align 8, !tbaa !55
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi ptr [ %53, %52 ], [ %43, %38 ]
  %56 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull %1, ptr noundef %55) #16
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load ptr, ptr %1, align 8, !tbaa !60
  %59 = getelementptr inbounds ptr, ptr %58, i64 5
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @_ZN11xercesc_2_712DOMRangeImpl17setStartContainerEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %61) #16
  %62 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %61) #16
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  store i64 %62, ptr %63, align 8, !tbaa !56
  br label %64

64:                                               ; preds = %57, %54
  %65 = load ptr, ptr %28, align 8, !tbaa !57
  %66 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DOMRangeImpl12isAncestorOfEPKNS_7DOMNodeES3_(ptr noundef nonnull %1, ptr noundef %65) #16
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load ptr, ptr %1, align 8, !tbaa !60
  %69 = getelementptr inbounds ptr, ptr %68, i64 5
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @_ZN11xercesc_2_712DOMRangeImpl15setEndContainerEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %71) #16
  %72 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %71) #16
  %73 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  store i64 %72, ptr %73, align 8, !tbaa !58
  br label %74

74:                                               ; preds = %64, %67, %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl26updateRangeForInsertedNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %8) #16
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !56
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = add i64 %15, 1
  store i64 %18, ptr %14, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %12, %17, %4
  %20 = load ptr, ptr %1, align 8, !tbaa !60
  %21 = getelementptr inbounds ptr, ptr %20, i64 5
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = tail call noundef i64 @_ZNK11xercesc_2_712DOMRangeImpl7indexOfEPKNS_7DOMNodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %23) #16
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !58
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = add i64 %30, 1
  store i64 %33, ptr %29, align 8, !tbaa !58
  br label %34

34:                                               ; preds = %27, %32, %2, %19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMRangeImpl15updateSplitInfoEPNS_7DOMNodeES2_m(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef readnone %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 !prof !43 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !55
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
  %18 = load i64, ptr %17, align 8, !tbaa !56
  %19 = icmp ugt i64 %18, %3
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = sub i64 %18, %3
  store i64 %21, ptr %17, align 8, !tbaa !56
  store ptr %2, ptr %7, align 8, !tbaa !55
  br label %22

22:                                               ; preds = %15, %16, %20, %6
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMRangeImpl", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef signext i16 %27(ptr noundef nonnull align 8 dereferenceable(8) %24) #16
  %29 = load ptr, ptr %23, align 8, !tbaa !57
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
  %34 = load i64, ptr %33, align 8, !tbaa !58
  %35 = icmp ugt i64 %34, %3
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  store ptr %2, ptr %23, align 8, !tbaa !57
  %37 = sub i64 %34, %3
  store i64 %37, ptr %33, align 8, !tbaa !58
  br label %38

38:                                               ; preds = %22, %36, %32, %31, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!42}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41}
!36 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!37 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!38 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!40 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!41 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !51, i64 56}
!45 = !{!"_ZTSN11xercesc_2_712DOMRangeImplE", !46, i64 0, !47, i64 8, !50, i64 16, !47, i64 24, !50, i64 32, !51, i64 40, !47, i64 48, !51, i64 56, !47, i64 64, !47, i64 72}
!46 = !{!"_ZTSN11xercesc_2_78DOMRangeE"}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"long", !48, i64 0}
!51 = !{!"bool", !48, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!45, !47, i64 72}
!55 = !{!45, !47, i64 8}
!56 = !{!45, !50, i64 16}
!57 = !{!45, !47, i64 24}
!58 = !{!45, !50, i64 32}
!59 = !{!45, !47, i64 48}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !49, i64 0}
!62 = !{!45, !51, i64 40}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !64}
!69 = distinct !{!69, !64}
!70 = !{!50, !50, i64 0}
!71 = distinct !{!71, !64}
!72 = distinct !{!72, !64}
!73 = distinct !{!73, !64}
!74 = distinct !{!74, !64}
!75 = distinct !{!75, !64}
!76 = distinct !{!76, !64}
!77 = distinct !{!77, !64}
!78 = distinct !{!78, !64}
!79 = distinct !{!79, !64}
!80 = distinct !{!80, !64}
!81 = distinct !{!81, !64}
!82 = distinct !{!82, !64}
!83 = distinct !{!83, !64}
!84 = !{!45, !47, i64 64}
!85 = !{!47, !47, i64 0}
!86 = distinct !{!86, !64}
!87 = distinct !{!87, !64}
!88 = distinct !{!88, !64}
!89 = distinct !{!89, !64}
!90 = distinct !{!90, !64}
!91 = !{!"function_entry_count", i64 2453164456}
!92 = !{!"branch_weights", i32 1, i32 -1841802839}
!93 = !{!94, !94, i64 0}
!94 = !{!"short", !48, i64 0}
!95 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!96 = !{!"branch_weights", i32 408669070, i32 -279908792}
!97 = distinct !{!97, !64}
!98 = distinct !{!98, !64}
!99 = distinct !{!99, !64}
!100 = distinct !{!100, !64}
!101 = distinct !{!101, !64}
!102 = distinct !{!102, !64}
!103 = distinct !{!103, !64}
!104 = distinct !{!104, !64}
!105 = distinct !{!105, !64}
!106 = distinct !{!106, !64}
!107 = !{!"DOMRangeImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!108 = !{!"function_entry_count", i64 3150}
!109 = !{!110, !94, i64 8}
!110 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !47, i64 0, !94, i64 8}
!111 = !{!"function_entry_count", i64 2954}
!112 = !{!113, !47, i64 280}
!113 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !114, i64 0, !110, i64 32, !119, i64 48, !47, i64 80, !47, i64 88, !47, i64 96, !51, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !122, i64 136, !47, i64 176, !47, i64 184, !47, i64 192, !50, i64 200, !47, i64 208, !47, i64 216, !47, i64 224, !47, i64 232, !47, i64 240, !47, i64 248, !47, i64 256, !47, i64 264, !47, i64 272, !47, i64 280, !124, i64 288, !51, i64 292}
!114 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !115, i64 0, !116, i64 8, !117, i64 16, !118, i64 24}
!115 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!116 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!117 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!118 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!119 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !47, i64 0, !47, i64 8, !120, i64 16}
!120 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !121, i64 0, !47, i64 8}
!121 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!122 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !123, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !124, i64 32, !124, i64 36}
!123 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!124 = !{!"int", !48, i64 0}
!125 = !{!"function_entry_count", i64 496321}
!126 = !{!127, !124, i64 0}
!127 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !124, i64 0, !124, i64 4, !124, i64 8, !51, i64 12, !47, i64 16, !47, i64 24, !47, i64 32}
!128 = !{!127, !124, i64 4}
!129 = !{!127, !124, i64 8}
!130 = !{!127, !51, i64 12}
!131 = !{!127, !47, i64 16}
!132 = !{!127, !47, i64 32}
!133 = !{!"function_entry_count", i64 789922}
!134 = !{!"branch_weights", i32 1, i32 789923}
!135 = !{!"branch_weights", i32 285, i32 789639}
!136 = !{!"branch_weights", i32 789639, i32 41628304}
!137 = distinct !{!137, !64}
!138 = !{!"branch_weights", i32 789637, i32 3}
!139 = distinct !{!139, !64}
!140 = !{!"function_entry_count", i64 10769804}
!141 = !{!"function_entry_count", i64 5836268}
!142 = distinct !{!142, !64}
!143 = !{!144, !47, i64 24}
!144 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7DOMNodeEEE", !51, i64 8, !124, i64 12, !124, i64 16, !47, i64 24, !47, i64 32}
!145 = !{!144, !124, i64 12}
!146 = !{!144, !47, i64 32}
!147 = !{!144, !51, i64 8}
!148 = distinct !{!148, !64}
!149 = !{!144, !124, i64 16}
!150 = distinct !{!150, !64}
!151 = distinct !{!151, !64}
!152 = distinct !{!152, !64}
!153 = distinct !{!153, !64}
!154 = !{!155, !47, i64 40}
!155 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !156, i64 8, !47, i64 16, !124, i64 24, !47, i64 32, !47, i64 40}
!156 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !48, i64 0}
!157 = distinct !{!157, !64}
!158 = distinct !{!158, !64}
!159 = distinct !{!159, !64}
!160 = distinct !{!160, !64}
!161 = distinct !{!161, !64}
!162 = distinct !{!162, !64}
!163 = distinct !{!163, !64}
!164 = distinct !{!164, !64}
!165 = distinct !{!165, !64}
!166 = distinct !{!166, !64}
!167 = !{!"function_entry_count", i64 558789}
!168 = !{!"branch_weights", i32 158605, i32 400186}
!169 = !{!"function_entry_count", i64 52059}
!170 = !{!171, !47, i64 0}
!171 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !47, i64 0, !47, i64 8}
!172 = !{!171, !47, i64 8}
!173 = !{!"function_entry_count", i64 243874}
!174 = !{!"branch_weights", i32 191816, i32 52060}
!175 = !{!"branch_weights", i32 1, i32 52060}
!176 = distinct !{!176, !64}

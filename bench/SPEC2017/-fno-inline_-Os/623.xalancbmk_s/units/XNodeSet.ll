; ModuleID = 'XNodeSet.cpp'
source_filename = "XNodeSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XNodeSet" = type { %"class.xalanc_1_10::XNodeSetBase", %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" }
%"class.xalanc_1_10::XNodeSetBase" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERKS1_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList5cloneEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListaSERS1_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv = comdat any

@_ZTVN11xalanc_1_108XNodeSetE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108XNodeSetE, ptr @_ZN11xalanc_1_108XNodeSetD2Ev, ptr @_ZN11xalanc_1_108XNodeSetD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3numEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv, ptr @_ZNK11xalanc_1_108XNodeSet7nodesetEv, ptr @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv, ptr @_ZNK11xalanc_1_108XNodeSet4itemEj, ptr @_ZNK11xalanc_1_108XNodeSet9getLengthEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108XNodeSetE = dso_local constant [25 x i8] c"N11xalanc_1_108XNodeSetE\00", align 1
@_ZTIN11xalanc_1_1012XNodeSetBaseE = external constant ptr
@_ZTIN11xalanc_1_108XNodeSetE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108XNodeSetE, ptr @_ZTIN11xalanc_1_1012XNodeSetBaseE }, align 8

@_ZN11xalanc_1_108XNodeSetC1ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_108XNodeSetC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_108XNodeSetC1ERKS0_RN11xercesc_2_713MemoryManagerEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_108XNodeSetC2ERKS0_RN11xercesc_2_713MemoryManagerEb
@_ZN11xalanc_1_108XNodeSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108XNodeSetD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XNodeSetD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_108XNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !53
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase3numEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_108XNodeSet7nodesetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_108XNodeSet4itemEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !59 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #8
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_108XNodeSet9getLengthEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(40) %3) #8
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XNodeSetC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_108XNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %1, i64 0, i32 1
  %4 = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  store <2 x ptr> %4, ptr %0, align 8, !tbaa !64
  store ptr null, ptr %3, align 8, !tbaa !66
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XNodeSetC2ERKS0_RN11xercesc_2_713MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_108XNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #8
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #6
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %3 = load ptr, ptr %1, align 8, !tbaa !68
  tail call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  %7 = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull align 8 dereferenceable(44) %5) #8
          to label %10 unwind label %8

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !69 {
  store ptr %1, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  store ptr %7, ptr %3, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !73

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !66
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !63 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_108XNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #6
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #6
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XNodeSet7releaseEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  tail call void @_ZN11xalanc_1_1012XNodeSetBase17clearCachedValuesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBase17clearCachedValuesEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 !prof !76 {
  tail call void @_ZN11xalanc_1_108XNodeSet7releaseEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSet", ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListaSERS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListaSERS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %1, i64 0, i32 1
  %4 = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  store <2 x ptr> %4, ptr %0, align 8, !tbaa !64
  store ptr null, ptr %3, align 8, !tbaa !66
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  ret ptr %2
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!51}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!36 = !{ptr @_ZNK11xalanc_1_108XNodeSet7nodesetEv, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 19395}
!37 = !{ptr @_ZNK11xalanc_1_108XNodeSet4itemEj, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, i64 213796}
!38 = !{ptr @_ZNK11xalanc_1_108XNodeSet9getLengthEv, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, i64 254940}
!39 = !{ptr @_ZN11xalanc_1_108XNodeSetC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE, i64 2}
!40 = !{ptr @_ZN11xalanc_1_108XNodeSetC2ERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERKS1_, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv, i64 2647211}
!42 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @__clang_call_terminate, i64 3}
!43 = !{ptr @_ZN11xalanc_1_108XNodeSetD2Ev, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, i64 2}
!44 = !{ptr @_ZN11xalanc_1_108XNodeSetD2Ev, ptr @_ZN11xalanc_1_1012XNodeSetBaseD2Ev, i64 2}
!45 = !{ptr @_ZN11xalanc_1_108XNodeSet7releaseEv, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv, i64 415044}
!46 = !{ptr @_ZN11xalanc_1_108XNodeSet7releaseEv, ptr @_ZN11xalanc_1_1012XNodeSetBase17clearCachedValuesEv, i64 415044}
!47 = !{ptr @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_108XNodeSet7releaseEv, i64 207521}
!48 = !{ptr @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListaSERS1_, i64 207521}
!49 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListaSERS1_, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv, i64 207521}
!50 = !{ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 3851627}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !55, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !55, i64 8}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"function_entry_count", i64 19395}
!59 = !{!"function_entry_count", i64 213796}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !57, i64 0}
!62 = !{!"function_entry_count", i64 254940}
!63 = !{!"function_entry_count", i64 2}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !56, i64 0}
!66 = !{!67, !65, i64 8}
!67 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !65, i64 0, !65, i64 8}
!68 = !{!67, !65, i64 0}
!69 = !{!"function_entry_count", i64 2647209}
!70 = !{!"function_entry_count", i64 5227480}
!71 = !{!"function_entry_count", i64 2647211}
!72 = !{!"function_entry_count", i64 3269776}
!73 = !{!"branch_weights", i32 622568, i32 2647210}
!74 = !{!"function_entry_count", i64 4637746}
!75 = !{!"function_entry_count", i64 415044}
!76 = !{!"function_entry_count", i64 207521}
!77 = !{!"function_entry_count", i64 3851627}

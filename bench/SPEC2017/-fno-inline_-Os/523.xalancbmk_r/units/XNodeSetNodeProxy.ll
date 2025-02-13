; ModuleID = 'XNodeSetNodeProxy.cpp'
source_filename = "XNodeSetNodeProxy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XNodeSetNodeProxy::Proxy" = type { %"class.xalanc_1_10::NodeRefListBase", ptr }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XNodeSetNodeProxy" = type { %"class.xalanc_1_10::XNodeSetBase", %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy" }
%"class.xalanc_1_10::XNodeSetBase" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC2ERKS1_ = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1015NodeRefListBaseC2ERKS0_ = comdat any

@_ZTVN11xalanc_1_1017XNodeSetNodeProxy5ProxyE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XNodeSetNodeProxy5ProxyE, ptr @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD2Ev, ptr @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD0Ev, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy4itemEj, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy9getLengthEv, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy7indexOfEPKNS_9XalanNodeE] }, align 8
@_ZTVN11xalanc_1_1017XNodeSetNodeProxyE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XNodeSetNodeProxyE, ptr @_ZN11xalanc_1_1017XNodeSetNodeProxyD2Ev, ptr @_ZN11xalanc_1_1017XNodeSetNodeProxyD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3numEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy7nodesetEv, ptr @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy11getRealTypeEv, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy4itemEj, ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy9getLengthEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XNodeSetNodeProxy5ProxyE = dso_local constant [41 x i8] c"N11xalanc_1_1017XNodeSetNodeProxy5ProxyE\00", align 1
@_ZTIN11xalanc_1_1015NodeRefListBaseE = external constant ptr
@_ZTIN11xalanc_1_1017XNodeSetNodeProxy5ProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XNodeSetNodeProxy5ProxyE, ptr @_ZTIN11xalanc_1_1015NodeRefListBaseE }, align 8
@_ZTSN11xalanc_1_1017XNodeSetNodeProxyE = dso_local constant [35 x i8] c"N11xalanc_1_1017XNodeSetNodeProxyE\00", align 1
@_ZTIN11xalanc_1_1012XNodeSetBaseE = external constant ptr
@_ZTIN11xalanc_1_1017XNodeSetNodeProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XNodeSetNodeProxyE, ptr @_ZTIN11xalanc_1_1012XNodeSetBaseE }, align 8
@_ZTVN11xalanc_1_1015NodeRefListBaseE = external unnamed_addr constant { [7 x ptr] }, align 8

@_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC1EPNS_9XalanNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC2EPNS_9XalanNodeE
@_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD2Ev
@_ZN11xalanc_1_1017XNodeSetNodeProxyC1ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XNodeSetNodeProxyC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeE
@_ZN11xalanc_1_1017XNodeSetNodeProxyC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XNodeSetNodeProxyC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XNodeSetNodeProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XNodeSetNodeProxyD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC2EPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1017XNodeSetNodeProxy5ProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr %4, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy7indexOfEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef readnone %1) unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %4, %1
  %7 = or i1 %5, %6
  %8 = sext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxyC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1017XNodeSetNodeProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC2EPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2) #7
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxyC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1017XNodeSetNodeProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #7
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1017XNodeSetNodeProxy5ProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy::Proxy", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  store ptr %5, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1017XNodeSetNodeProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017XNodeSetNodeProxy5ProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XNodeSetNodeProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1017XNodeSetNodeProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XNodeSetNodeProxy11getRealTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i32 13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy7nodesetEv(ptr noundef nonnull readnone align 8 dereferenceable(104) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy4itemEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %1) #7
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XNodeSetNodeProxy9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetNodeProxy", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1017XNodeSetNodeProxy5Proxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #7, !range !43
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !44
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

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015NodeRefListBaseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1015NodeRefListBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1017XNodeSetNodeProxy5ProxyE", !40, i64 0, !41, i64 8}
!40 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{i32 0, i32 2}
!44 = !{!45, !46, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !46, i64 8}
!46 = !{!"int", !42, i64 0}

; ModuleID = 'XUnknown.cpp'
source_filename = "XUnknown.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XUnknown" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XUnknown, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XUnknown, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XUnknownEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanDOMString4swapERS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

@_ZTVN11xalanc_1_108XUnknownE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108XUnknownE, ptr @_ZN11xalanc_1_108XUnknownD2Ev, ptr @_ZN11xalanc_1_108XUnknownD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_108XUnknown13getTypeStringEv, ptr @_ZNK11xalanc_1_108XUnknown3numEv, ptr @_ZNK11xalanc_1_108XUnknown7booleanEv, ptr @_ZNK11xalanc_1_108XUnknown3strEv, ptr @_ZNK11xalanc_1_108XUnknown3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_108XUnknown12stringLengthEv, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_108XUnknown26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_108XUnknown26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108XUnknownE = dso_local constant [25 x i8] c"N11xalanc_1_108XUnknownE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_108XUnknownE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108XUnknownE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_108XUnknown15s_unknownStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_10L9s_unknownE = internal constant [10 x i16] [i16 60, i16 117, i16 110, i16 107, i16 110, i16 111, i16 119, i16 110, i16 62, i16 0], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XUnknown.cpp, ptr null }]

@_ZN11xalanc_1_108XUnknownC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_108XUnknownC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_108XUnknownC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_108XUnknownC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_108XUnknownD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108XUnknownD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknownD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_108XUnknownD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !68
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108XUnknown13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !67 {
  ret ptr @_ZN11xalanc_1_108XUnknown15s_unknownStringE
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @_ZNK11xalanc_1_108XUnknown3numEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !67 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_108XUnknown7booleanEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !67 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108XUnknown3strEv(ptr noundef nonnull readnone align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_108XUnknown3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #3 align 2 !prof !67 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %3
  %6 = and i64 %2, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !73
  %10 = getelementptr i8, ptr %9, i64 %2
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load ptr, ptr %11, align 8, !nosanitize !75
  br label %15

13:                                               ; preds = %4
  %14 = inttoptr i64 %2 to ptr
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %12, %8 ], [ %14, %13 ]
  %17 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  %18 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %17) #12
  %19 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %17) #12
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %18, i32 noundef %19) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_108XUnknown12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2) #12
  %4 = uitofp i32 %3 to double
  ret double %4
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknown26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_108XUnknown26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #4 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #12
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_108XUnknown15s_unknownStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_108XUnknown15s_unknownStringE, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !76 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !82

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #12
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !84 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !86

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #12
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !87, !llvm.loop !88

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !90 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !93 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !95
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknownC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #12
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XUnknownE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
          to label %5 unwind label %8

5:                                                ; preds = %3
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 96, ptr noundef nonnull align 8 dereferenceable(36) %1) #12
          to label %7 unwind label %10

7:                                                ; preds = %5
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %12

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ]
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  resume { ptr, i32 } %13
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_108XUnknown6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = load ptr, ptr %1, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 64) #12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #12
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  invoke void @_ZN11xalanc_1_108XUnknownC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !67 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #12
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !67 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !98
  store ptr %2, ptr %5, align 8, !tbaa !98
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XUnknownEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XUnknownEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !67 {
  %4 = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %4, ptr %0, align 8, !tbaa !99
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %6, ptr %5, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !67 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !99
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !96
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !67 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !99
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = load ptr, ptr %4, align 8, !tbaa !73
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #12
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XUnknownELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !99
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknownC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XUnknownE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %1, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1) #12
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknownD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XUnknownE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xalanc_1_10::XUnknown", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #10
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat !prof !100 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat !prof !101 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !102 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  br i1 %2, label %5, label %3, !prof !103

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #12
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !104 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !105 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !95
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !107 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !108 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !109
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !111 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_108XUnknown15s_unknownStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L9s_unknownE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XUnknown9terminateEv() local_unnamed_addr #3 align 2 !prof !111 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #12
  tail call void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_108XUnknown15s_unknownStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !112 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  invoke void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %0) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat align 2 !prof !113 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #12
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  tail call void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !114 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %7, ptr %0, align 8, !tbaa !92
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  store ptr %11, ptr %5, align 8, !tbaa !83
  store ptr %3, ptr %1, align 8, !tbaa !92
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !115
  store <2 x i64> %9, ptr %4, align 8, !tbaa !115
  store <2 x i64> %12, ptr %8, align 8, !tbaa !115
  store ptr %6, ptr %10, align 8, !tbaa !83
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat !prof !113 {
  %3 = load i32, ptr %0, align 4, !tbaa !116
  %4 = load i32, ptr %1, align 4, !tbaa !116
  store i32 %4, ptr %0, align 4, !tbaa !116
  store i32 %3, ptr %1, align 4, !tbaa !116
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XUnknown.cpp() #4 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!66}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!36 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!47 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!48 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!49 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!50 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!51 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!52 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!53 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!54 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!55 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!56 = !{ptr @_ZN11xalanc_1_108XUnknown10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt, i64 1}
!57 = !{ptr @_ZN11xalanc_1_108XUnknown9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!58 = !{ptr @_ZN11xalanc_1_108XUnknown9terminateEv, ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 153}
!60 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, i64 153}
!61 = !{ptr @_ZN11xalanc_1_1013releaseMemoryERNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 153}
!62 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 320}
!63 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 320}
!64 = !{ptr @_ZN11xalanc_1_1014XalanDOMString4swapERS0_, ptr @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_, i64 320}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !70, i64 8}
!69 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !70, i64 8}
!70 = !{!"int", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C++ TBAA"}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !72, i64 0}
!75 = !{}
!76 = !{!"function_entry_count", i64 43398227}
!77 = !{!"function_entry_count", i64 128698679}
!78 = !{!79, !81, i64 16}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !80, i64 0, !81, i64 8, !81, i64 16, !80, i64 24}
!80 = !{!"any pointer", !71, i64 0}
!81 = !{!"long", !71, i64 0}
!82 = !{!"branch_weights", i32 43398290, i32 85300391}
!83 = !{!79, !80, i64 24}
!84 = !{!"function_entry_count", i64 6521798503}
!85 = !{!"function_entry_count", i64 85300390}
!86 = !{!"branch_weights", i32 1, i32 12185770}
!87 = !{!"branch_weights", i32 12185770, i32 -193930395}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"function_entry_count", i64 227375739}
!91 = !{!"function_entry_count", i64 568333389}
!92 = !{!79, !80, i64 0}
!93 = !{!"function_entry_count", i64 30137156670}
!94 = !{!"function_entry_count", i64 825654975}
!95 = !{!79, !81, i64 8}
!96 = !{!97, !80, i64 8}
!97 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XUnknownEE", !80, i64 0, !80, i64 8}
!98 = !{!80, !80, i64 0}
!99 = !{!97, !80, i64 0}
!100 = !{!"function_entry_count", i64 12093723}
!101 = !{!"function_entry_count", i64 66708615}
!102 = !{!"function_entry_count", i64 967143541}
!103 = !{!"branch_weights", i32 403628487, i32 563515056}
!104 = !{!"function_entry_count", i64 3070433826}
!105 = !{!"function_entry_count", i64 1083116306}
!106 = !{!"function_entry_count", i64 565220908}
!107 = !{!"function_entry_count", i64 230527000}
!108 = !{!"function_entry_count", i64 1414337976}
!109 = !{!110, !70, i64 32}
!110 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !79, i64 0, !70, i64 32}
!111 = !{!"function_entry_count", i64 1}
!112 = !{!"function_entry_count", i64 153}
!113 = !{!"function_entry_count", i64 320}
!114 = !{!"function_entry_count", i64 85300747}
!115 = !{!81, !81, i64 0}
!116 = !{!70, !70, i64 0}

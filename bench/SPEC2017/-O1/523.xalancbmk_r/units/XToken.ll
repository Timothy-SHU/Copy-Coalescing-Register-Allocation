; ModuleID = 'XToken.cpp'
source_filename = "XToken.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_106XTokenE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_106XTokenE, ptr @_ZN11xalanc_1_106XTokenD2Ev, ptr @_ZN11xalanc_1_106XTokenD0Ev, ptr @_ZN11xalanc_1_106XToken10referencedEv, ptr @_ZN11xalanc_1_106XToken12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_106XToken13getTypeStringEv, ptr @_ZNK11xalanc_1_106XToken3numEv, ptr @_ZNK11xalanc_1_106XToken7booleanEv, ptr @_ZNK11xalanc_1_106XToken3strEv, ptr @_ZNK11xalanc_1_106XToken3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_106XToken12stringLengthEv, ptr @_ZNK11xalanc_1_106XToken3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZN11xalanc_1_107XObject13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZN11xalanc_1_107XObject14s_stringStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_106XTokenE = dso_local constant [23 x i8] c"N11xalanc_1_106XTokenE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_106XTokenE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_106XTokenE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XToken.cpp, ptr null }]

@_ZN11xalanc_1_106XTokenC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_106XTokenC2Ev
@_ZN11xalanc_1_106XTokenC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_106XTokenC1EdRKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, double, ptr), ptr @_ZN11xalanc_1_106XTokenC2EdRKNS_14XalanDOMStringE
@_ZN11xalanc_1_106XTokenC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_106XTokenC2ERKS0_
@_ZN11xalanc_1_106XTokenD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_106XTokenD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr %2, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %4 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !61
  store double %4, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 1, ptr %5, align 8, !tbaa !63
  ret void
}

declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %6 unwind label %9, !prof !65

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %5, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 1, ptr %8, align 8, !tbaa !63
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %10
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2EdRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(41) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #3 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 4)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %1, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XTokenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #5 align 2 !prof !64 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  store ptr %5, ptr %3, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 2
  %8 = load double, ptr %7, align 8, !tbaa !62
  store double %8, ptr %6, align 8, !tbaa !62
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !63, !range !66, !noundef !67
  store i8 %11, ptr %9, align 8, !tbaa !63
  ret void
}

declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_106XTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_106XTokenD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_106XTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_106XToken13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !47 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject14s_stringStringE, align 8, !tbaa !69
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK11xalanc_1_106XToken3numEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #9 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !62
  ret double %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_106XToken7booleanEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !63, !range !66, !noundef !67
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = icmp ne i32 %9, 0
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !62
  %14 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !61
  %15 = bitcast double %13 to i64
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %14, %16
  %18 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %19 = lshr i64 %15, 32
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %18, %20
  %22 = select i1 %17, i1 %21, i1 false
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %13, double noundef 0.000000e+00)
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %23, %11, %5
  %27 = phi i1 [ %10, %5 ], [ false, %11 ], [ %25, %23 ]
  ret i1 %27
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_106XToken3strEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #9 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_106XToken3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #3 align 2 !prof !47 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %1, i64 %3
  %12 = and i64 %2, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 8, !tbaa !48
  %16 = getelementptr i8, ptr %15, i64 %2
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !67
  br label %21

19:                                               ; preds = %10
  %20 = inttoptr i64 %2 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !76
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %28, i32 noundef %8)
  br label %29

29:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_106XToken3strERNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !76
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9, !prof !78
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %10, i32 noundef %12)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZNK11xalanc_1_106XToken12stringLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #11 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = uitofp i32 %5 to double
  ret double %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !63, !range !66, !noundef !67
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %1, align 8, !tbaa !48
  br i1 %5, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %6, i64 4
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9)
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds ptr, ptr %6, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %14)
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_106XToken26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 8, !tbaa !63, !range !66, !noundef !67
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %1, align 8, !tbaa !48
  br i1 %5, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %6, i64 4
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9)
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds ptr, ptr %6, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %14)
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 !prof !79 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %5, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 1, ptr %7, align 8, !tbaa !63
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 2
  store double %1, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !81
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12, !prof !82

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = load ptr, ptr %5, align 8, !tbaa !84
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %14)
          to label %22 unwind label %19

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #17
  unreachable

22:                                               ; preds = %4, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_106XToken10referencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !47 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_106XToken12dereferencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !47 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !85
  ret i32 %3
}

declare noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !87

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = load ptr, ptr %0, align 8, !tbaa !84
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !88

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !47 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XToken.cpp() #14 section ".text.startup" !prof !89 !PGOFuncName !90 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #15
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 983}
!36 = !{ptr @_ZN11xalanc_1_106XTokenC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 983}
!37 = !{ptr @_ZN11xalanc_1_106XTokenC2ERKS0_, ptr @_ZN11xalanc_1_107XObjectC2ERKS0_, i64 983}
!38 = !{ptr @_ZN11xalanc_1_106XTokenD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 1966}
!39 = !{ptr @_ZNK11xalanc_1_106XToken3strERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 20910}
!40 = !{ptr @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 172}
!41 = !{ptr @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 43}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!43 = !{ptr @_GLOBAL__sub_I_XToken.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!44 = !{ptr @_GLOBAL__sub_I_XToken.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!45 = !{ptr @_GLOBAL__sub_I_XToken.cpp, ptr @__cxa_atexit, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !58, i64 24}
!52 = !{!"_ZTSN11xalanc_1_106XTokenE", !53, i64 0, !58, i64 24, !59, i64 32, !60, i64 40}
!53 = !{!"_ZTSN11xalanc_1_107XObjectE", !54, i64 0, !57, i64 12, !58, i64 16}
!54 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !55, i64 8}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !50, i64 0}
!57 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !56, i64 0}
!58 = !{!"any pointer", !56, i64 0}
!59 = !{!"double", !56, i64 0}
!60 = !{!"bool", !56, i64 0}
!61 = !{!56, !56, i64 0}
!62 = !{!52, !59, i64 32}
!63 = !{!52, !60, i64 40}
!64 = !{!"function_entry_count", i64 983}
!65 = !{!"branch_weights", i32 983, i32 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!"function_entry_count", i64 1966}
!69 = !{!58, !58, i64 0}
!70 = !{!"function_entry_count", i64 89504425}
!71 = !{!72, !55, i64 32}
!72 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !73, i64 0, !55, i64 32}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !74, i64 8, !74, i64 16, !58, i64 24}
!74 = !{!"long", !56, i64 0}
!75 = !{!"function_entry_count", i64 226496830}
!76 = !{!73, !74, i64 8}
!77 = !{!"function_entry_count", i64 20910}
!78 = !{!"branch_weights", i32 0, i32 20910}
!79 = !{!"function_entry_count", i64 172}
!80 = !{!"function_entry_count", i64 43}
!81 = !{!73, !74, i64 16}
!82 = !{!"branch_weights", i32 43, i32 0}
!83 = !{!73, !58, i64 24}
!84 = !{!73, !58, i64 0}
!85 = !{!54, !55, i64 8}
!86 = !{!"function_entry_count", i64 42470003}
!87 = !{!"branch_weights", i32 52000, i32 42418003}
!88 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!89 = !{!"function_entry_count", i64 1}
!90 = !{!"XToken.cpp;_GLOBAL__sub_I_XToken.cpp"}

; ModuleID = 'AttributeListImpl.cpp'
source_filename = "AttributeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::CollectionDeleteGuard" = type { ptr }
%"class.xalanc_1_10::AttributeVectorEntry" = type { ptr, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i16 }

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD2Ev = comdat any

$_ZN11xalanc_1_1020AttributeVectorEntryD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZTSN11xercesc_2_713AttributeListE = comdat any

$_ZTIN11xercesc_2_713AttributeListE = comdat any

$_ZTVN11xalanc_1_1020AttributeVectorEntryE = comdat any

$_ZTSN11xalanc_1_1020AttributeVectorEntryE = comdat any

$_ZTIN11xalanc_1_1020AttributeVectorEntryE = comdat any

@_ZTVN11xalanc_1_1017AttributeListImplE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017AttributeListImplE, ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImplD0Ev, ptr @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv, ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj, ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEj, ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj, ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEPKt, ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKt, ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKc, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl15removeAttributeEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017AttributeListImplE = dso_local constant [35 x i8] c"N11xalanc_1_1017AttributeListImplE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713AttributeListE\00", comdat, align 1
@_ZTIN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713AttributeListE }, comdat, align 8
@_ZTIN11xalanc_1_1017AttributeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017AttributeListImplE, ptr @_ZTIN11xercesc_2_713AttributeListE }, align 8
@_ZTVN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020AttributeVectorEntryE, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev] }, comdat, align 8
@_ZTSN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020AttributeVectorEntryE\00", comdat, align 1
@_ZTIN11xalanc_1_1020AttributeVectorEntryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020AttributeVectorEntryE }, comdat, align 8

@_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017AttributeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev
@_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017AttributeListImplC1ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !72
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !73

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = load ptr, ptr %0, align 8, !tbaa !66
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !75

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  invoke void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %2 unwind label %28, !prof !77

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = load ptr, ptr %3, align 8, !tbaa !66
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %24, label %11, !prof !79

11:                                               ; preds = %2, %21
  %12 = phi ptr [ %22, %21 ], [ %5, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !81

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !63
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(104) %13) #19, !prof !82
  %18 = load ptr, ptr %9, align 8, !tbaa !63
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %13)
          to label %21 unwind label %26, !prof !83

21:                                               ; preds = %15, %11
  %22 = getelementptr inbounds ptr, ptr %12, i64 1
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %11, !prof !84, !llvm.loop !85

24:                                               ; preds = %21, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %25 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #19
  ret void

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %1
  %29 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !88 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImpl13deleteEntriesERNS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  %7 = load ptr, ptr %0, align 8, !tbaa !66
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1, %19
  %10 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !63
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(104) %11) #19
  %16 = load ptr, ptr %7, align 8, !tbaa !63
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %11)
  br label %19

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds ptr, ptr %10, i64 1
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %9, !llvm.loop !85

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !88 {
  tail call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %9 unwind label %10, !prof !90

9:                                                ; preds = %3
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = alloca %"class.xalanc_1_10::CollectionDeleteGuard", align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %88, label %7, !prof !91

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  store ptr %9, ptr %3, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %13 = load ptr, ptr %1, align 8, !tbaa !63
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %17 unwind label %43, !prof !92

17:                                               ; preds = %7
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %61, label %19, !prof !90

19:                                               ; preds = %17
  %20 = zext i32 %16 to i64
  %21 = load i64, ptr %11, align 8, !tbaa !72
  %22 = icmp ult i64 %21, %20
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %20)
          to label %24 unwind label %43

24:                                               ; preds = %19, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr %3, ptr %4, align 8, !tbaa !93
  %25 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %1, i64 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %1, i64 0, i32 1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !78
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = icmp eq i64 %28, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %56, %24
  %32 = load ptr, ptr %8, align 8, !tbaa !66
  %33 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !78
  %35 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !72
  %37 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = load ptr, ptr %3, align 8, !tbaa !66
  store ptr %39, ptr %8, align 8, !tbaa !66
  %40 = load i64, ptr %10, align 8, !tbaa !78
  store i64 %40, ptr %33, align 8, !tbaa !78
  %41 = load i64, ptr %11, align 8, !tbaa !72
  store i64 %41, ptr %35, align 8, !tbaa !72
  %42 = load ptr, ptr %12, align 8, !tbaa !74
  store ptr %42, ptr %37, align 8, !tbaa !74
  store ptr %32, ptr %3, align 8, !tbaa !66
  store i64 %34, ptr %10, align 8, !tbaa !78
  store i64 %36, ptr %11, align 8, !tbaa !72
  store ptr %38, ptr %12, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %61

43:                                               ; preds = %23, %7
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %74

45:                                               ; preds = %24, %56
  %46 = phi ptr [ %57, %56 ], [ %26, %24 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %48 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %47, i64 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !95
  %50 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %47, i64 0, i32 3, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %47, i64 0, i32 2, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = invoke noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %49, ptr noundef %51, ptr noundef %53)
          to label %55 unwind label %59

55:                                               ; preds = %45
  store ptr %54, ptr %5, align 8, !tbaa !80
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %56 unwind label %59

56:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %57 = getelementptr inbounds ptr, ptr %46, i64 1
  %58 = icmp eq ptr %57, %29
  br i1 %58, label %31, label %45, !llvm.loop !97

59:                                               ; preds = %55, %45
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %74

61:                                               ; preds = %31, %17
  %62 = load i64, ptr %11, align 8, !tbaa !72
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %73, label %64, !prof !90

64:                                               ; preds = %61
  %65 = load ptr, ptr %12, align 8, !tbaa !74
  %66 = load ptr, ptr %3, align 8, !tbaa !66
  %67 = load ptr, ptr %66, align 8, !tbaa !63
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %65)
          to label %73 unwind label %70

70:                                               ; preds = %64
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  call void @__clang_call_terminate(ptr %72) #18
  unreachable

73:                                               ; preds = %61, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %88

74:                                               ; preds = %59, %43
  %75 = phi { ptr, i32 } [ %60, %59 ], [ %44, %43 ]
  %76 = load i64, ptr %11, align 8, !tbaa !72
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %12, align 8, !tbaa !74
  %80 = load ptr, ptr %3, align 8, !tbaa !66
  %81 = load ptr, ptr %80, align 8, !tbaa !63
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84

84:                                               ; preds = %78
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #18
  unreachable

87:                                               ; preds = %74, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %75

88:                                               ; preds = %73, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImplC2ERKN11xercesc_2_713AttributeListERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %10

9:                                                ; preds = %3
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKN11xercesc_2_713AttributeListE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.xalanc_1_10::AttributeListImpl", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %64, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  %6 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xalanc_1_1017AttributeListImplE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !66
  %9 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %3, i64 0, i32 1, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %3, i64 0, i32 1, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %3, i64 0, i32 1, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %3, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %7, ptr %12, align 8, !tbaa !66
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %3, i64 0, i32 2, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %1, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %18 unwind label %37

18:                                               ; preds = %5
  %19 = zext i32 %17 to i64
  %20 = load i64, ptr %10, align 8, !tbaa !72
  %21 = icmp ult i64 %20, %19
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %19)
          to label %23 unwind label %37

23:                                               ; preds = %22, %18
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %57, %23
  %26 = load ptr, ptr %6, align 8, !tbaa !66
  %27 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !78
  %29 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !74
  %33 = load ptr, ptr %8, align 8, !tbaa !66
  store ptr %33, ptr %6, align 8, !tbaa !66
  %34 = load i64, ptr %9, align 8, !tbaa !78
  store i64 %34, ptr %27, align 8, !tbaa !78
  %35 = load i64, ptr %10, align 8, !tbaa !72
  store i64 %35, ptr %29, align 8, !tbaa !72
  %36 = load ptr, ptr %11, align 8, !tbaa !74
  store ptr %36, ptr %31, align 8, !tbaa !74
  store ptr %26, ptr %8, align 8, !tbaa !66
  store i64 %28, ptr %9, align 8, !tbaa !78
  store i64 %30, ptr %10, align 8, !tbaa !72
  store ptr %32, ptr %11, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  br label %64

37:                                               ; preds = %22, %5
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %62

39:                                               ; preds = %23, %57
  %40 = phi i32 [ %58, %57 ], [ 0, %23 ]
  %41 = load ptr, ptr %1, align 8, !tbaa !63
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %40)
          to label %45 unwind label %60

45:                                               ; preds = %39
  %46 = load ptr, ptr %1, align 8, !tbaa !63
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %40)
          to label %50 unwind label %60

50:                                               ; preds = %45
  %51 = load ptr, ptr %1, align 8, !tbaa !63
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %40)
          to label %55 unwind label %60

55:                                               ; preds = %50
  %56 = invoke noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %44, ptr noundef %49, ptr noundef %54)
          to label %57 unwind label %60

57:                                               ; preds = %55
  %58 = add nuw i32 %40, 1
  %59 = icmp eq i32 %58, %17
  br i1 %59, label %25, label %39, !llvm.loop !98

60:                                               ; preds = %55, %50, %45, %39
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %37
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %38, %37 ]
  call void @_ZN11xalanc_1_1017AttributeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  resume { ptr, i32 } %63

64:                                               ; preds = %25, %2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 !prof !99 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12, !prof !100

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %65

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = getelementptr ptr, ptr %14, i64 %6
  %16 = getelementptr ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 1, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !101
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %22, label %21, !prof !102

21:                                               ; preds = %12
  store i64 0, ptr %18, align 8, !tbaa !101
  br label %22

22:                                               ; preds = %21, %12
  %23 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !101
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26, !prof !102

26:                                               ; preds = %22
  store i64 0, ptr %23, align 8, !tbaa !101
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 3, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !101
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %32, label %31, !prof !102

31:                                               ; preds = %27
  store i64 0, ptr %28, align 8, !tbaa !101
  br label %32

32:                                               ; preds = %27, %31
  %33 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 1, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %1, %32 ], [ %39, %35 ]
  %37 = load i16, ptr %36, align 2, !tbaa !103
  %38 = icmp eq i16 %37, 0
  %39 = getelementptr inbounds i16, ptr %36, i64 1
  br i1 %38, label %40, label %35, !prof !105, !llvm.loop !106

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 1
  %42 = getelementptr inbounds i16, ptr %36, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef %34, ptr noundef %1, ptr noundef nonnull %42)
  %43 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 2, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  br label %45

45:                                               ; preds = %45, %40
  %46 = phi ptr [ %3, %40 ], [ %49, %45 ]
  %47 = load i16, ptr %46, align 2, !tbaa !103
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr inbounds i16, ptr %46, i64 1
  br i1 %48, label %50, label %45, !prof !107, !llvm.loop !106

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 2
  %52 = getelementptr inbounds i16, ptr %46, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef %44, ptr noundef %3, ptr noundef nonnull %52)
  %53 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 3, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !95
  br label %55

55:                                               ; preds = %55, %50
  %56 = phi ptr [ %2, %50 ], [ %59, %55 ]
  %57 = load i16, ptr %56, align 2, !tbaa !103
  %58 = icmp eq i16 %57, 0
  %59 = getelementptr inbounds i16, ptr %56, i64 1
  br i1 %58, label %60, label %55, !prof !108, !llvm.loop !106

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %17, i64 0, i32 3
  %62 = getelementptr inbounds i16, ptr %56, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef %54, ptr noundef %2, ptr noundef nonnull %62)
  %63 = load i64, ptr %5, align 8, !tbaa !78
  %64 = add i64 %63, -1
  store i64 %64, ptr %5, align 8, !tbaa !78
  br label %65

65:                                               ; preds = %60, %8
  %66 = phi ptr [ %11, %8 ], [ %17, %60 ]
  ret ptr %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !78
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %2, align 8, !tbaa !66
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4, %22
  %13 = phi ptr [ %23, %22 ], [ %6, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !63
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(104) %14) #19
  %19 = load ptr, ptr %10, align 8, !tbaa !63
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %14)
          to label %22 unwind label %26

22:                                               ; preds = %16, %12
  %23 = getelementptr inbounds ptr, ptr %13, i64 1
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %25, label %12, !llvm.loop !85

25:                                               ; preds = %22, %4, %1
  ret void

26:                                               ; preds = %16
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  %6 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %7 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %11, ptr noundef %14, ptr %1)
  %16 = load ptr, ptr %10, align 8, !tbaa !74
  %17 = load i64, ptr %12, align 8, !tbaa !78
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = icmp eq ptr %15, %18
  br i1 %19, label %146, label %20, !prof !109

20:                                               ; preds = %4
  %21 = load ptr, ptr %15, align 8, !tbaa !80
  %22 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %21, i64 0, i32 3, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %2, %20 ], [ %28, %24 ]
  %26 = load i16, ptr %25, align 2, !tbaa !103
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds i16, ptr %25, i64 1
  br i1 %27, label %29, label %24, !llvm.loop !110

29:                                               ; preds = %24
  %30 = ptrtoint ptr %25 to i64
  %31 = ptrtoint ptr %2 to i64
  %32 = sub i64 %30, %31
  %33 = lshr exact i64 %32, 1
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi ptr [ %23, %29 ], [ %38, %34 ]
  %36 = load i16, ptr %35, align 2, !tbaa !103
  %37 = icmp eq i16 %36, 0
  %38 = getelementptr inbounds i16, ptr %35, i64 1
  br i1 %37, label %39, label %34, !llvm.loop !110

39:                                               ; preds = %34
  %40 = trunc i64 %33 to i32
  %41 = ptrtoint ptr %35 to i64
  %42 = ptrtoint ptr %23 to i64
  %43 = sub i64 %41, %42
  %44 = lshr exact i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %23, i32 noundef %40)
  br i1 %48, label %96, label %49

49:                                               ; preds = %39, %47
  br label %50

50:                                               ; preds = %49, %50
  %51 = phi ptr [ %54, %50 ], [ %2, %49 ]
  %52 = load i16, ptr %51, align 2, !tbaa !103
  %53 = icmp eq i16 %52, 0
  %54 = getelementptr inbounds i16, ptr %51, i64 1
  br i1 %53, label %55, label %50, !llvm.loop !106

55:                                               ; preds = %50
  %56 = getelementptr inbounds i16, ptr %51, i64 1
  %57 = load ptr, ptr %15, align 8, !tbaa !80
  %58 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %57, i64 0, i32 3, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !111
  %60 = ptrtoint ptr %56 to i64
  %61 = sub i64 %60, %31
  %62 = ashr exact i64 %61, 1
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %65 = load ptr, ptr %9, align 8, !tbaa !66
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %2, ptr noundef nonnull %56, ptr noundef nonnull align 8 dereferenceable(8) %65)
  %66 = load ptr, ptr %15, align 8, !tbaa !80
  %67 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %6, align 8, !tbaa !112
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !101
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !111
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !95
  %75 = load ptr, ptr %67, align 8, !tbaa !112
  store ptr %75, ptr %6, align 8, !tbaa !112
  %76 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %66, i64 0, i32 3, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !101
  store i64 %77, ptr %69, align 8, !tbaa !101
  %78 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %66, i64 0, i32 3, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !111
  store i64 %79, ptr %71, align 8, !tbaa !111
  %80 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %66, i64 0, i32 3, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !95
  store ptr %81, ptr %73, align 8, !tbaa !95
  store ptr %68, ptr %67, align 8, !tbaa !112
  store i64 %70, ptr %76, align 8, !tbaa !101
  store i64 %72, ptr %78, align 8, !tbaa !111
  store ptr %74, ptr %80, align 8, !tbaa !95
  %82 = icmp eq i64 %79, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %64
  %84 = load ptr, ptr %75, align 8, !tbaa !63
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef %81)
          to label %90 unwind label %87

87:                                               ; preds = %83
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #18
  unreachable

90:                                               ; preds = %64, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %96

91:                                               ; preds = %55
  %92 = icmp eq ptr %56, %2
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %57, i64 0, i32 3, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !95
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %95, ptr align 2 %2, i64 %61, i1 false)
  br label %96

96:                                               ; preds = %93, %91, %90, %47
  br label %97

97:                                               ; preds = %96, %97
  %98 = phi ptr [ %101, %97 ], [ %3, %96 ]
  %99 = load i16, ptr %98, align 2, !tbaa !103
  %100 = icmp eq i16 %99, 0
  %101 = getelementptr inbounds i16, ptr %98, i64 1
  br i1 %100, label %102, label %97, !llvm.loop !106

102:                                              ; preds = %97
  %103 = getelementptr inbounds i16, ptr %98, i64 1
  %104 = ptrtoint ptr %103 to i64
  %105 = ptrtoint ptr %3 to i64
  %106 = sub i64 %104, %105
  %107 = ashr exact i64 %106, 1
  %108 = load ptr, ptr %15, align 8, !tbaa !80
  %109 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %108, i64 0, i32 2, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !111
  %111 = icmp ult i64 %110, %107
  br i1 %111, label %112, label %139

112:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %113 = load ptr, ptr %9, align 8, !tbaa !66
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %3, ptr noundef nonnull %103, ptr noundef nonnull align 8 dereferenceable(8) %113)
  %114 = load ptr, ptr %15, align 8, !tbaa !80
  %115 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %7, align 8, !tbaa !112
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !101
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !111
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !95
  %123 = load ptr, ptr %115, align 8, !tbaa !112
  store ptr %123, ptr %7, align 8, !tbaa !112
  %124 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %114, i64 0, i32 2, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !101
  store i64 %125, ptr %117, align 8, !tbaa !101
  %126 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %114, i64 0, i32 2, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !111
  store i64 %127, ptr %119, align 8, !tbaa !111
  %128 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %114, i64 0, i32 2, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !95
  store ptr %129, ptr %121, align 8, !tbaa !95
  store ptr %116, ptr %115, align 8, !tbaa !112
  store i64 %118, ptr %124, align 8, !tbaa !101
  store i64 %120, ptr %126, align 8, !tbaa !111
  store ptr %122, ptr %128, align 8, !tbaa !95
  %130 = icmp eq i64 %127, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %112
  %132 = load ptr, ptr %123, align 8, !tbaa !63
  %133 = getelementptr inbounds ptr, ptr %132, i64 3
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef %129)
          to label %138 unwind label %135

135:                                              ; preds = %131
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  call void @__clang_call_terminate(ptr %137) #18
  unreachable

138:                                              ; preds = %112, %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %170

139:                                              ; preds = %102
  %140 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %108, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  store i16 0, ptr %5, align 2, !tbaa !113
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %140, i64 noundef %107, ptr noundef nonnull align 2 dereferenceable(2) %5)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  %141 = icmp eq ptr %103, %3
  br i1 %141, label %170, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %15, align 8, !tbaa !80
  %144 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %143, i64 0, i32 2, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !95
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %145, ptr align 2 %3, i64 %106, i1 false)
  br label %170

146:                                              ; preds = %4
  %147 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !72
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151, !prof !100

150:                                              ; preds = %146
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 5)
  br label %151

151:                                              ; preds = %150, %146
  %152 = load ptr, ptr %9, align 8, !tbaa !66
  %153 = tail call noundef ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store ptr %153, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %154 unwind label %155, !prof !109

154:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %170

155:                                              ; preds = %151
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  %157 = icmp ne ptr %152, null
  %158 = icmp ne ptr %153, null
  %159 = and i1 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load ptr, ptr %153, align 8, !tbaa !63
  %162 = load ptr, ptr %161, align 8
  call void %162(ptr noundef nonnull align 8 dereferenceable(104) %153) #19
  %163 = load ptr, ptr %152, align 8, !tbaa !63
  %164 = getelementptr inbounds ptr, ptr %163, i64 3
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef nonnull %153)
          to label %169 unwind label %166

166:                                              ; preds = %160
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #18
  unreachable

169:                                              ; preds = %155, %160
  resume { ptr, i32 } %156

170:                                              ; preds = %142, %139, %138, %154
  ret i1 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !78
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !116 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds ptr, ptr %5, i64 %3
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %7, i64 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #9 align 2 !prof !88 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds ptr, ptr %5, i64 %3
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %7, i64 0, i32 3, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !99 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds ptr, ptr %5, i64 %3
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %7, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 !prof !88 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl7getTypeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = tail call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %4, ptr noundef %7, ptr %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !74
  %10 = load i64, ptr %5, align 8, !tbaa !78
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = icmp eq ptr %8, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017AttributeListImpl8getValueEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = tail call noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %4, ptr noundef %7, ptr %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !74
  %10 = load i64, ptr %5, align 8, !tbaa !78
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = icmp eq ptr %8, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %7, ptr noundef %9, ptr noundef %12)
  %13 = load i64, ptr %10, align 8, !tbaa !78
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15, !prof !118

15:                                               ; preds = %1
  store i64 0, ptr %10, align 8, !tbaa !78
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !118

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !78
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !72
  br i1 %18, label %21, label %39, !prof !109

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !100

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !119

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !74
  %28 = load i64, ptr %12, align 8, !tbaa !78
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !80
  store ptr %34, ptr %32, align 8, !tbaa !80
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !120, !llvm.loop !121

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !66
  store ptr %42, ptr %5, align 8, !tbaa !66
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !78
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !72
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !63
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !74
  %51 = load i64, ptr %43, align 8, !tbaa !78
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !74
  %56 = load i64, ptr %43, align 8, !tbaa !78
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !74
  %60 = load i64, ptr %43, align 8, !tbaa !78
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !74
  %63 = load i64, ptr %12, align 8, !tbaa !78
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !66
  %67 = load i64, ptr %12, align 8, !tbaa !78
  %68 = load i64, ptr %19, align 8, !tbaa !72
  %69 = load ptr, ptr %15, align 8, !tbaa !74
  %70 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %70, ptr %0, align 8, !tbaa !66
  %71 = load i64, ptr %43, align 8, !tbaa !78
  store i64 %71, ptr %12, align 8, !tbaa !78
  %72 = load i64, ptr %44, align 8, !tbaa !72
  store i64 %72, ptr %19, align 8, !tbaa !72
  %73 = load ptr, ptr %50, align 8, !tbaa !74
  store ptr %73, ptr %15, align 8, !tbaa !74
  store ptr %66, ptr %5, align 8, !tbaa !66
  store i64 %67, ptr %43, align 8, !tbaa !78
  store i64 %68, ptr %44, align 8, !tbaa !72
  store ptr %69, ptr %50, align 8, !tbaa !74
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !63
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !72
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !74
  %89 = load ptr, ptr %5, align 8, !tbaa !66
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !122

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !123

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !124

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !78
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %3, ptr %5, align 8, !tbaa !112
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, ptr noundef %1, ptr noundef %2)
          to label %10 unwind label %30, !prof !126

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !112
  %14 = load i64, ptr %6, align 8, !tbaa !101
  %15 = load i64, ptr %12, align 8, !tbaa !111
  %16 = load ptr, ptr %11, align 8, !tbaa !95
  %17 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %17, ptr %0, align 8, !tbaa !112
  %18 = load i64, ptr %7, align 8, !tbaa !101
  store i64 %18, ptr %6, align 8, !tbaa !101
  %19 = load i64, ptr %8, align 8, !tbaa !111
  store i64 %19, ptr %12, align 8, !tbaa !111
  %20 = load ptr, ptr %9, align 8, !tbaa !95
  store ptr %20, ptr %11, align 8, !tbaa !95
  store ptr %13, ptr %5, align 8, !tbaa !112
  store i64 %14, ptr %7, align 8, !tbaa !101
  store i64 %15, ptr %8, align 8, !tbaa !111
  store ptr %16, ptr %9, align 8, !tbaa !95
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !126

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !63
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #18
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !111
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !95
  %36 = load ptr, ptr %5, align 8, !tbaa !112
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %31
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !128

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = load ptr, ptr %0, align 8, !tbaa !112
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !129

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %5 = load ptr, ptr %3, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 104), !prof !131
  invoke void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %10, !prof !84

9:                                                ; preds = %4
  ret ptr %8

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %8, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %8)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #18
  unreachable

20:                                               ; preds = %10, %13
  resume { ptr, i32 } %11
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !133

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !111
  br i1 %18, label %21, label %39, !prof !134

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !135

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !136

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !95
  %28 = load i64, ptr %12, align 8, !tbaa !101
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !103
  store i16 %34, ptr %32, align 2, !tbaa !103
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !137, !llvm.loop !138

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !139

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %42, ptr %5, align 8, !tbaa !112
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !101
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !111
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !63
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !140
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !95
  %51 = load i64, ptr %43, align 8, !tbaa !101
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !95
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !141

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !95
  %56 = load i64, ptr %43, align 8, !tbaa !101
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !141

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !95
  %60 = load i64, ptr %43, align 8, !tbaa !101
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !95
  %63 = load i64, ptr %12, align 8, !tbaa !101
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !141

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !112
  %67 = load i64, ptr %12, align 8, !tbaa !101
  %68 = load i64, ptr %19, align 8, !tbaa !111
  %69 = load ptr, ptr %15, align 8, !tbaa !95
  %70 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %70, ptr %0, align 8, !tbaa !112
  %71 = load i64, ptr %43, align 8, !tbaa !101
  store i64 %71, ptr %12, align 8, !tbaa !101
  %72 = load i64, ptr %44, align 8, !tbaa !111
  store i64 %72, ptr %19, align 8, !tbaa !111
  %73 = load ptr, ptr %50, align 8, !tbaa !95
  store ptr %73, ptr %15, align 8, !tbaa !95
  store ptr %66, ptr %5, align 8, !tbaa !112
  store i64 %67, ptr %43, align 8, !tbaa !101
  store i64 %68, ptr %44, align 8, !tbaa !111
  store ptr %69, ptr %50, align 8, !tbaa !95
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !142

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !63
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !143

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !111
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !95
  %89 = load ptr, ptr %5, align 8, !tbaa !112
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !144

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !145

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !145

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !146, !llvm.loop !147

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !148, !llvm.loop !149

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !150
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !151

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !101
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017AttributeListImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %4, ptr noundef %7, ptr %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !74
  %10 = load i64, ptr %5, align 8, !tbaa !78
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = icmp ne ptr %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::AttributeListImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %3, align 8, !tbaa !74
  %17 = load i64, ptr %5, align 8, !tbaa !78
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = ptrtoint ptr %15 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %22, %21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %15, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %13, %20
  %25 = load i64, ptr %5, align 8, !tbaa !78
  %26 = add i64 %25, -1
  store i64 %26, ptr %5, align 8, !tbaa !78
  br label %27

27:                                               ; preds = %24, %2
  ret i1 %12
}

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi ptr [ %1, %5 ], [ %10, %6 ]
  %8 = load i16, ptr %7, align 2, !tbaa !103
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %9, label %11, label %6, !prof !152, !llvm.loop !110

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  %13 = ptrtoint ptr %7 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = and i64 %16, 4294967295
  %18 = getelementptr inbounds i16, ptr %1, i64 %17
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %20

20:                                               ; preds = %20, %11
  %21 = phi ptr [ %2, %11 ], [ %24, %20 ]
  %22 = load i16, ptr %21, align 2, !tbaa !103
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds i16, ptr %21, i64 1
  br i1 %23, label %25, label %20, !prof !153, !llvm.loop !110

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  %27 = ptrtoint ptr %21 to i64
  %28 = ptrtoint ptr %2 to i64
  %29 = sub i64 %27, %28
  %30 = lshr exact i64 %29, 1
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds i16, ptr %2, i64 %31
  %33 = getelementptr inbounds i16, ptr %32, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %2, ptr noundef nonnull %33, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %34 unwind label %49, !prof !84

34:                                               ; preds = %25, %34
  %35 = phi ptr [ %38, %34 ], [ %3, %25 ]
  %36 = load i16, ptr %35, align 2, !tbaa !103
  %37 = icmp eq i16 %36, 0
  %38 = getelementptr inbounds i16, ptr %35, i64 1
  br i1 %37, label %39, label %34, !prof !154, !llvm.loop !110

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  %41 = ptrtoint ptr %35 to i64
  %42 = ptrtoint ptr %3 to i64
  %43 = sub i64 %41, %42
  %44 = lshr exact i64 %43, 1
  %45 = and i64 %44, 4294967295
  %46 = getelementptr inbounds i16, ptr %3, i64 %45
  %47 = getelementptr inbounds i16, ptr %46, i64 1
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef %3, ptr noundef nonnull %47, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %48 unwind label %51, !prof !84

48:                                               ; preds = %39
  ret void

49:                                               ; preds = %25
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %53

51:                                               ; preds = %39
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #19
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  resume { ptr, i32 } %54
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !130 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020AttributeVectorEntryD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020AttributeVectorEntryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %3 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %4 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = load ptr, ptr %3, align 8, !tbaa !66
  store ptr %12, ptr %0, align 8, !tbaa !66
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !78
  store i64 %14, ptr %6, align 8, !tbaa !78
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !72
  store i64 %16, ptr %8, align 8, !tbaa !72
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  store ptr %18, ptr %10, align 8, !tbaa !74
  store ptr %5, ptr %3, align 8, !tbaa !66
  store i64 %7, ptr %13, align 8, !tbaa !78
  store i64 %9, ptr %15, align 8, !tbaa !72
  store ptr %11, ptr %17, align 8, !tbaa !74
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !156

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !63
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !78
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !156

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !66
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !72
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !63
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !74
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  %24 = load i64, ptr %9, align 8, !tbaa !78
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !66
  %28 = load i64, ptr %6, align 8, !tbaa !78
  %29 = load i64, ptr %7, align 8, !tbaa !72
  %30 = load ptr, ptr %8, align 8, !tbaa !74
  %31 = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %31, ptr %0, align 8, !tbaa !66
  %32 = load i64, ptr %14, align 8, !tbaa !78
  store i64 %32, ptr %6, align 8, !tbaa !78
  %33 = load i64, ptr %15, align 8, !tbaa !72
  store i64 %33, ptr %7, align 8, !tbaa !72
  %34 = load ptr, ptr %21, align 8, !tbaa !74
  store ptr %34, ptr %8, align 8, !tbaa !74
  store ptr %27, ptr %5, align 8, !tbaa !66
  store i64 %28, ptr %14, align 8, !tbaa !78
  store i64 %29, ptr %15, align 8, !tbaa !72
  store ptr %30, ptr %21, align 8, !tbaa !74
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !72
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !74
  %50 = load ptr, ptr %5, align 8, !tbaa !66
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !157

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !63
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !158
  store ptr %65, ptr %8, align 8, !tbaa !74
  store i64 %3, ptr %7, align 8, !tbaa !72
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !72
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !109

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !80
  store ptr %13, ptr %12, align 8, !tbaa !80
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !78
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !66
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !66
  %24 = load i64, ptr %4, align 8, !tbaa !78
  %25 = load i64, ptr %6, align 8, !tbaa !72
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = load ptr, ptr %3, align 8, !tbaa !66
  store ptr %28, ptr %0, align 8, !tbaa !66
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !78
  store i64 %30, ptr %4, align 8, !tbaa !78
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !72
  store i64 %32, ptr %6, align 8, !tbaa !72
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  store ptr %34, ptr %26, align 8, !tbaa !74
  store ptr %23, ptr %3, align 8, !tbaa !66
  store i64 %24, ptr %29, align 8, !tbaa !78
  store i64 %25, ptr %31, align 8, !tbaa !72
  store ptr %27, ptr %33, align 8, !tbaa !74
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !72
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = load ptr, ptr %3, align 8, !tbaa !66
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #3 comdat !prof !88 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %132

9:                                                ; preds = %3
  %10 = ptrtoint ptr %2 to i64
  br label %11

11:                                               ; preds = %9, %128
  %12 = phi i64 [ %7, %9 ], [ %130, %128 ]
  %13 = phi ptr [ %0, %9 ], [ %129, %128 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi ptr [ %16, %11 ], [ %21, %17 ]
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds i16, ptr %18, i64 1
  br i1 %20, label %22, label %17, !llvm.loop !110

22:                                               ; preds = %17
  %23 = ptrtoint ptr %18 to i64
  %24 = ptrtoint ptr %16 to i64
  %25 = sub i64 %23, %24
  %26 = lshr exact i64 %25, 1
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %2, %22 ], [ %31, %27 ]
  %29 = load i16, ptr %28, align 2, !tbaa !103
  %30 = icmp eq i16 %29, 0
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  br i1 %30, label %32, label %27, !llvm.loop !110

32:                                               ; preds = %27
  %33 = trunc i64 %26 to i32
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %34, %10
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %16, ptr noundef %2, i32 noundef %33)
  br i1 %40, label %237, label %41

41:                                               ; preds = %32, %39
  %42 = getelementptr inbounds ptr, ptr %13, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !80
  %44 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %43, i64 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  br label %46

46:                                               ; preds = %46, %41
  %47 = phi ptr [ %45, %41 ], [ %50, %46 ]
  %48 = load i16, ptr %47, align 2, !tbaa !103
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  br i1 %49, label %51, label %46, !llvm.loop !110

51:                                               ; preds = %46
  %52 = ptrtoint ptr %47 to i64
  %53 = ptrtoint ptr %45 to i64
  %54 = sub i64 %52, %53
  %55 = lshr exact i64 %54, 1
  br label %56

56:                                               ; preds = %56, %51
  %57 = phi ptr [ %2, %51 ], [ %60, %56 ]
  %58 = load i16, ptr %57, align 2, !tbaa !103
  %59 = icmp eq i16 %58, 0
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  br i1 %59, label %61, label %56, !llvm.loop !110

61:                                               ; preds = %56
  %62 = trunc i64 %55 to i32
  %63 = ptrtoint ptr %57 to i64
  %64 = sub i64 %63, %10
  %65 = lshr exact i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %45, ptr noundef %2, i32 noundef %62)
  br i1 %69, label %231, label %70

70:                                               ; preds = %61, %68
  %71 = getelementptr inbounds ptr, ptr %13, i64 2
  %72 = load ptr, ptr %71, align 8, !tbaa !80
  %73 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %72, i64 0, i32 1, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !95
  br label %75

75:                                               ; preds = %75, %70
  %76 = phi ptr [ %74, %70 ], [ %79, %75 ]
  %77 = load i16, ptr %76, align 2, !tbaa !103
  %78 = icmp eq i16 %77, 0
  %79 = getelementptr inbounds i16, ptr %76, i64 1
  br i1 %78, label %80, label %75, !llvm.loop !110

80:                                               ; preds = %75
  %81 = ptrtoint ptr %76 to i64
  %82 = ptrtoint ptr %74 to i64
  %83 = sub i64 %81, %82
  %84 = lshr exact i64 %83, 1
  br label %85

85:                                               ; preds = %85, %80
  %86 = phi ptr [ %2, %80 ], [ %89, %85 ]
  %87 = load i16, ptr %86, align 2, !tbaa !103
  %88 = icmp eq i16 %87, 0
  %89 = getelementptr inbounds i16, ptr %86, i64 1
  br i1 %88, label %90, label %85, !llvm.loop !110

90:                                               ; preds = %85
  %91 = trunc i64 %84 to i32
  %92 = ptrtoint ptr %86 to i64
  %93 = sub i64 %92, %10
  %94 = lshr exact i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %91, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %74, ptr noundef %2, i32 noundef %91)
  br i1 %98, label %233, label %99

99:                                               ; preds = %90, %97
  %100 = getelementptr inbounds ptr, ptr %13, i64 3
  %101 = load ptr, ptr %100, align 8, !tbaa !80
  %102 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %101, i64 0, i32 1, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !95
  br label %104

104:                                              ; preds = %104, %99
  %105 = phi ptr [ %103, %99 ], [ %108, %104 ]
  %106 = load i16, ptr %105, align 2, !tbaa !103
  %107 = icmp eq i16 %106, 0
  %108 = getelementptr inbounds i16, ptr %105, i64 1
  br i1 %107, label %109, label %104, !llvm.loop !110

109:                                              ; preds = %104
  %110 = ptrtoint ptr %105 to i64
  %111 = ptrtoint ptr %103 to i64
  %112 = sub i64 %110, %111
  %113 = lshr exact i64 %112, 1
  br label %114

114:                                              ; preds = %114, %109
  %115 = phi ptr [ %2, %109 ], [ %118, %114 ]
  %116 = load i16, ptr %115, align 2, !tbaa !103
  %117 = icmp eq i16 %116, 0
  %118 = getelementptr inbounds i16, ptr %115, i64 1
  br i1 %117, label %119, label %114, !llvm.loop !110

119:                                              ; preds = %114
  %120 = trunc i64 %113 to i32
  %121 = ptrtoint ptr %115 to i64
  %122 = sub i64 %121, %10
  %123 = lshr exact i64 %122, 1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %103, ptr noundef %2, i32 noundef %120)
  br i1 %127, label %235, label %128

128:                                              ; preds = %119, %126
  %129 = getelementptr inbounds ptr, ptr %13, i64 4
  %130 = add nsw i64 %12, -1
  %131 = icmp sgt i64 %12, 1
  br i1 %131, label %11, label %132, !llvm.loop !159

132:                                              ; preds = %128, %3
  %133 = phi ptr [ %0, %3 ], [ %129, %128 ]
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %4, %134
  %136 = ashr exact i64 %135, 3
  switch i64 %136, label %230 [
    i64 3, label %137
    i64 2, label %168
    i64 1, label %200
  ]

137:                                              ; preds = %132
  %138 = load ptr, ptr %133, align 8, !tbaa !80
  %139 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %138, i64 0, i32 1, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  br label %141

141:                                              ; preds = %141, %137
  %142 = phi ptr [ %140, %137 ], [ %145, %141 ]
  %143 = load i16, ptr %142, align 2, !tbaa !103
  %144 = icmp eq i16 %143, 0
  %145 = getelementptr inbounds i16, ptr %142, i64 1
  br i1 %144, label %146, label %141, !llvm.loop !110

146:                                              ; preds = %141
  %147 = ptrtoint ptr %142 to i64
  %148 = ptrtoint ptr %140 to i64
  %149 = sub i64 %147, %148
  %150 = lshr exact i64 %149, 1
  br label %151

151:                                              ; preds = %151, %146
  %152 = phi ptr [ %2, %146 ], [ %155, %151 ]
  %153 = load i16, ptr %152, align 2, !tbaa !103
  %154 = icmp eq i16 %153, 0
  %155 = getelementptr inbounds i16, ptr %152, i64 1
  br i1 %154, label %156, label %151, !llvm.loop !110

156:                                              ; preds = %151
  %157 = trunc i64 %150 to i32
  %158 = ptrtoint ptr %152 to i64
  %159 = ptrtoint ptr %2 to i64
  %160 = sub i64 %158, %159
  %161 = lshr exact i64 %160, 1
  %162 = trunc i64 %161 to i32
  %163 = icmp eq i32 %157, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %140, ptr noundef %2, i32 noundef %157)
  br i1 %165, label %237, label %166

166:                                              ; preds = %156, %164
  %167 = getelementptr inbounds ptr, ptr %133, i64 1
  br label %168

168:                                              ; preds = %132, %166
  %169 = phi ptr [ %133, %132 ], [ %167, %166 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !80
  %171 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %170, i64 0, i32 1, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !95
  br label %173

173:                                              ; preds = %173, %168
  %174 = phi ptr [ %172, %168 ], [ %177, %173 ]
  %175 = load i16, ptr %174, align 2, !tbaa !103
  %176 = icmp eq i16 %175, 0
  %177 = getelementptr inbounds i16, ptr %174, i64 1
  br i1 %176, label %178, label %173, !llvm.loop !110

178:                                              ; preds = %173
  %179 = ptrtoint ptr %174 to i64
  %180 = ptrtoint ptr %172 to i64
  %181 = sub i64 %179, %180
  %182 = lshr exact i64 %181, 1
  br label %183

183:                                              ; preds = %183, %178
  %184 = phi ptr [ %2, %178 ], [ %187, %183 ]
  %185 = load i16, ptr %184, align 2, !tbaa !103
  %186 = icmp eq i16 %185, 0
  %187 = getelementptr inbounds i16, ptr %184, i64 1
  br i1 %186, label %188, label %183, !llvm.loop !110

188:                                              ; preds = %183
  %189 = trunc i64 %182 to i32
  %190 = ptrtoint ptr %184 to i64
  %191 = ptrtoint ptr %2 to i64
  %192 = sub i64 %190, %191
  %193 = lshr exact i64 %192, 1
  %194 = trunc i64 %193 to i32
  %195 = icmp eq i32 %189, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %172, ptr noundef %2, i32 noundef %189)
  br i1 %197, label %237, label %198

198:                                              ; preds = %188, %196
  %199 = getelementptr inbounds ptr, ptr %169, i64 1
  br label %200

200:                                              ; preds = %132, %198
  %201 = phi ptr [ %133, %132 ], [ %199, %198 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !80
  %203 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %202, i64 0, i32 1, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !95
  br label %205

205:                                              ; preds = %205, %200
  %206 = phi ptr [ %204, %200 ], [ %209, %205 ]
  %207 = load i16, ptr %206, align 2, !tbaa !103
  %208 = icmp eq i16 %207, 0
  %209 = getelementptr inbounds i16, ptr %206, i64 1
  br i1 %208, label %210, label %205, !llvm.loop !110

210:                                              ; preds = %205
  %211 = ptrtoint ptr %206 to i64
  %212 = ptrtoint ptr %204 to i64
  %213 = sub i64 %211, %212
  %214 = lshr exact i64 %213, 1
  br label %215

215:                                              ; preds = %215, %210
  %216 = phi ptr [ %2, %210 ], [ %219, %215 ]
  %217 = load i16, ptr %216, align 2, !tbaa !103
  %218 = icmp eq i16 %217, 0
  %219 = getelementptr inbounds i16, ptr %216, i64 1
  br i1 %218, label %220, label %215, !llvm.loop !110

220:                                              ; preds = %215
  %221 = trunc i64 %214 to i32
  %222 = ptrtoint ptr %216 to i64
  %223 = ptrtoint ptr %2 to i64
  %224 = sub i64 %222, %223
  %225 = lshr exact i64 %224, 1
  %226 = trunc i64 %225 to i32
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %204, ptr noundef %2, i32 noundef %221)
  br i1 %229, label %237, label %230

230:                                              ; preds = %220, %228, %132
  br label %237

231:                                              ; preds = %68
  %232 = getelementptr inbounds ptr, ptr %13, i64 1
  br label %237

233:                                              ; preds = %97
  %234 = getelementptr inbounds ptr, ptr %13, i64 2
  br label %237

235:                                              ; preds = %126
  %236 = getelementptr inbounds ptr, ptr %13, i64 3
  br label %237

237:                                              ; preds = %39, %231, %233, %235, %228, %196, %164, %230
  %238 = phi ptr [ %1, %230 ], [ %133, %164 ], [ %169, %196 ], [ %201, %228 ], [ %232, %231 ], [ %234, %233 ], [ %236, %235 ], [ %13, %39 ]
  ret ptr %238
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !99 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %132, !prof !160

9:                                                ; preds = %3
  %10 = ptrtoint ptr %2 to i64
  br label %11

11:                                               ; preds = %9, %128
  %12 = phi i64 [ %7, %9 ], [ %130, %128 ]
  %13 = phi ptr [ %0, %9 ], [ %129, %128 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %14, i64 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi ptr [ %16, %11 ], [ %21, %17 ]
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds i16, ptr %18, i64 1
  br i1 %20, label %22, label %17, !llvm.loop !110

22:                                               ; preds = %17
  %23 = ptrtoint ptr %18 to i64
  %24 = ptrtoint ptr %16 to i64
  %25 = sub i64 %23, %24
  %26 = lshr exact i64 %25, 1
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %2, %22 ], [ %31, %27 ]
  %29 = load i16, ptr %28, align 2, !tbaa !103
  %30 = icmp eq i16 %29, 0
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  br i1 %30, label %32, label %27, !llvm.loop !110

32:                                               ; preds = %27
  %33 = trunc i64 %26 to i32
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %34, %10
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %16, ptr noundef %2, i32 noundef %33)
  br i1 %40, label %237, label %41

41:                                               ; preds = %32, %39
  %42 = getelementptr inbounds ptr, ptr %13, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !80
  %44 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %43, i64 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  br label %46

46:                                               ; preds = %46, %41
  %47 = phi ptr [ %45, %41 ], [ %50, %46 ]
  %48 = load i16, ptr %47, align 2, !tbaa !103
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  br i1 %49, label %51, label %46, !llvm.loop !110

51:                                               ; preds = %46
  %52 = ptrtoint ptr %47 to i64
  %53 = ptrtoint ptr %45 to i64
  %54 = sub i64 %52, %53
  %55 = lshr exact i64 %54, 1
  br label %56

56:                                               ; preds = %56, %51
  %57 = phi ptr [ %2, %51 ], [ %60, %56 ]
  %58 = load i16, ptr %57, align 2, !tbaa !103
  %59 = icmp eq i16 %58, 0
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  br i1 %59, label %61, label %56, !llvm.loop !110

61:                                               ; preds = %56
  %62 = trunc i64 %55 to i32
  %63 = ptrtoint ptr %57 to i64
  %64 = sub i64 %63, %10
  %65 = lshr exact i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %45, ptr noundef %2, i32 noundef %62)
  br i1 %69, label %231, label %70

70:                                               ; preds = %61, %68
  %71 = getelementptr inbounds ptr, ptr %13, i64 2
  %72 = load ptr, ptr %71, align 8, !tbaa !80
  %73 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %72, i64 0, i32 1, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !95
  br label %75

75:                                               ; preds = %75, %70
  %76 = phi ptr [ %74, %70 ], [ %79, %75 ]
  %77 = load i16, ptr %76, align 2, !tbaa !103
  %78 = icmp eq i16 %77, 0
  %79 = getelementptr inbounds i16, ptr %76, i64 1
  br i1 %78, label %80, label %75, !llvm.loop !110

80:                                               ; preds = %75
  %81 = ptrtoint ptr %76 to i64
  %82 = ptrtoint ptr %74 to i64
  %83 = sub i64 %81, %82
  %84 = lshr exact i64 %83, 1
  br label %85

85:                                               ; preds = %85, %80
  %86 = phi ptr [ %2, %80 ], [ %89, %85 ]
  %87 = load i16, ptr %86, align 2, !tbaa !103
  %88 = icmp eq i16 %87, 0
  %89 = getelementptr inbounds i16, ptr %86, i64 1
  br i1 %88, label %90, label %85, !llvm.loop !110

90:                                               ; preds = %85
  %91 = trunc i64 %84 to i32
  %92 = ptrtoint ptr %86 to i64
  %93 = sub i64 %92, %10
  %94 = lshr exact i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %91, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %74, ptr noundef %2, i32 noundef %91)
  br i1 %98, label %233, label %99

99:                                               ; preds = %90, %97
  %100 = getelementptr inbounds ptr, ptr %13, i64 3
  %101 = load ptr, ptr %100, align 8, !tbaa !80
  %102 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %101, i64 0, i32 1, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !95
  br label %104

104:                                              ; preds = %104, %99
  %105 = phi ptr [ %103, %99 ], [ %108, %104 ]
  %106 = load i16, ptr %105, align 2, !tbaa !103
  %107 = icmp eq i16 %106, 0
  %108 = getelementptr inbounds i16, ptr %105, i64 1
  br i1 %107, label %109, label %104, !llvm.loop !110

109:                                              ; preds = %104
  %110 = ptrtoint ptr %105 to i64
  %111 = ptrtoint ptr %103 to i64
  %112 = sub i64 %110, %111
  %113 = lshr exact i64 %112, 1
  br label %114

114:                                              ; preds = %114, %109
  %115 = phi ptr [ %2, %109 ], [ %118, %114 ]
  %116 = load i16, ptr %115, align 2, !tbaa !103
  %117 = icmp eq i16 %116, 0
  %118 = getelementptr inbounds i16, ptr %115, i64 1
  br i1 %117, label %119, label %114, !llvm.loop !110

119:                                              ; preds = %114
  %120 = trunc i64 %113 to i32
  %121 = ptrtoint ptr %115 to i64
  %122 = sub i64 %121, %10
  %123 = lshr exact i64 %122, 1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %103, ptr noundef %2, i32 noundef %120)
  br i1 %127, label %235, label %128

128:                                              ; preds = %119, %126
  %129 = getelementptr inbounds ptr, ptr %13, i64 4
  %130 = add nsw i64 %12, -1
  %131 = icmp sgt i64 %12, 1
  br i1 %131, label %11, label %132, !prof !160, !llvm.loop !161

132:                                              ; preds = %128, %3
  %133 = phi ptr [ %0, %3 ], [ %129, %128 ]
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %4, %134
  %136 = ashr exact i64 %135, 3
  switch i64 %136, label %230 [
    i64 3, label %137
    i64 2, label %168
    i64 1, label %200
  ], !prof !162

137:                                              ; preds = %132
  %138 = load ptr, ptr %133, align 8, !tbaa !80
  %139 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %138, i64 0, i32 1, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  br label %141

141:                                              ; preds = %141, %137
  %142 = phi ptr [ %140, %137 ], [ %145, %141 ]
  %143 = load i16, ptr %142, align 2, !tbaa !103
  %144 = icmp eq i16 %143, 0
  %145 = getelementptr inbounds i16, ptr %142, i64 1
  br i1 %144, label %146, label %141, !llvm.loop !110

146:                                              ; preds = %141
  %147 = ptrtoint ptr %142 to i64
  %148 = ptrtoint ptr %140 to i64
  %149 = sub i64 %147, %148
  %150 = lshr exact i64 %149, 1
  br label %151

151:                                              ; preds = %151, %146
  %152 = phi ptr [ %2, %146 ], [ %155, %151 ]
  %153 = load i16, ptr %152, align 2, !tbaa !103
  %154 = icmp eq i16 %153, 0
  %155 = getelementptr inbounds i16, ptr %152, i64 1
  br i1 %154, label %156, label %151, !llvm.loop !110

156:                                              ; preds = %151
  %157 = trunc i64 %150 to i32
  %158 = ptrtoint ptr %152 to i64
  %159 = ptrtoint ptr %2 to i64
  %160 = sub i64 %158, %159
  %161 = lshr exact i64 %160, 1
  %162 = trunc i64 %161 to i32
  %163 = icmp eq i32 %157, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %140, ptr noundef %2, i32 noundef %157)
  br i1 %165, label %237, label %166

166:                                              ; preds = %156, %164
  %167 = getelementptr inbounds ptr, ptr %133, i64 1
  br label %168

168:                                              ; preds = %132, %166
  %169 = phi ptr [ %133, %132 ], [ %167, %166 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !80
  %171 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %170, i64 0, i32 1, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !95
  br label %173

173:                                              ; preds = %173, %168
  %174 = phi ptr [ %172, %168 ], [ %177, %173 ]
  %175 = load i16, ptr %174, align 2, !tbaa !103
  %176 = icmp eq i16 %175, 0
  %177 = getelementptr inbounds i16, ptr %174, i64 1
  br i1 %176, label %178, label %173, !llvm.loop !110

178:                                              ; preds = %173
  %179 = ptrtoint ptr %174 to i64
  %180 = ptrtoint ptr %172 to i64
  %181 = sub i64 %179, %180
  %182 = lshr exact i64 %181, 1
  br label %183

183:                                              ; preds = %183, %178
  %184 = phi ptr [ %2, %178 ], [ %187, %183 ]
  %185 = load i16, ptr %184, align 2, !tbaa !103
  %186 = icmp eq i16 %185, 0
  %187 = getelementptr inbounds i16, ptr %184, i64 1
  br i1 %186, label %188, label %183, !llvm.loop !110

188:                                              ; preds = %183
  %189 = trunc i64 %182 to i32
  %190 = ptrtoint ptr %184 to i64
  %191 = ptrtoint ptr %2 to i64
  %192 = sub i64 %190, %191
  %193 = lshr exact i64 %192, 1
  %194 = trunc i64 %193 to i32
  %195 = icmp eq i32 %189, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %172, ptr noundef %2, i32 noundef %189)
  br i1 %197, label %237, label %198

198:                                              ; preds = %188, %196
  %199 = getelementptr inbounds ptr, ptr %169, i64 1
  br label %200

200:                                              ; preds = %132, %198
  %201 = phi ptr [ %133, %132 ], [ %199, %198 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !80
  %203 = getelementptr inbounds %"class.xalanc_1_10::AttributeVectorEntry", ptr %202, i64 0, i32 1, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !95
  br label %205

205:                                              ; preds = %205, %200
  %206 = phi ptr [ %204, %200 ], [ %209, %205 ]
  %207 = load i16, ptr %206, align 2, !tbaa !103
  %208 = icmp eq i16 %207, 0
  %209 = getelementptr inbounds i16, ptr %206, i64 1
  br i1 %208, label %210, label %205, !llvm.loop !110

210:                                              ; preds = %205
  %211 = ptrtoint ptr %206 to i64
  %212 = ptrtoint ptr %204 to i64
  %213 = sub i64 %211, %212
  %214 = lshr exact i64 %213, 1
  br label %215

215:                                              ; preds = %215, %210
  %216 = phi ptr [ %2, %210 ], [ %219, %215 ]
  %217 = load i16, ptr %216, align 2, !tbaa !103
  %218 = icmp eq i16 %217, 0
  %219 = getelementptr inbounds i16, ptr %216, i64 1
  br i1 %218, label %220, label %215, !llvm.loop !110

220:                                              ; preds = %215
  %221 = trunc i64 %214 to i32
  %222 = ptrtoint ptr %216 to i64
  %223 = ptrtoint ptr %2 to i64
  %224 = sub i64 %222, %223
  %225 = lshr exact i64 %224, 1
  %226 = trunc i64 %225 to i32
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %204, ptr noundef %2, i32 noundef %221)
  br i1 %229, label %237, label %230

230:                                              ; preds = %220, %228, %132
  br label %237

231:                                              ; preds = %68
  %232 = getelementptr inbounds ptr, ptr %13, i64 1
  br label %237

233:                                              ; preds = %97
  %234 = getelementptr inbounds ptr, ptr %13, i64 2
  br label %237

235:                                              ; preds = %126
  %236 = getelementptr inbounds ptr, ptr %13, i64 3
  br label %237

237:                                              ; preds = %39, %231, %233, %235, %228, %196, %164, %230
  %238 = phi ptr [ %1, %230 ], [ %133, %164 ], [ %169, %196 ], [ %201, %228 ], [ %232, %231 ], [ %234, %233 ], [ %236, %235 ], [ %13, %39 ]
  ret ptr %238
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #6 comdat align 2 !prof !163 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !164

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !165

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !111
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !165

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds i16, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !101
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !166

20:                                               ; preds = %14
  %21 = getelementptr inbounds i16, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load i16, ptr %2, align 2, !tbaa !103
  store i16 %25, ptr %23, align 2, !tbaa !103
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !167, !llvm.loop !168

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !101
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !101
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !112
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !101
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !170

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !112
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !111
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !63
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !171
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = load i64, ptr %5, align 8, !tbaa !101
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !172

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !112
  %24 = load i64, ptr %10, align 8, !tbaa !101
  %25 = load i64, ptr %11, align 8, !tbaa !111
  %26 = load ptr, ptr %17, align 8, !tbaa !95
  store ptr %4, ptr %3, align 8, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !111
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !95
  %33 = load ptr, ptr %3, align 8, !tbaa !112
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !173

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !63
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !174
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !112
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !111
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  store ptr %53, ptr %0, align 8, !tbaa !112
  store i64 %52, ptr %5, align 8, !tbaa !101
  store i64 %51, ptr %55, align 8, !tbaa !111
  store ptr %50, ptr %57, align 8, !tbaa !95
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !175

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !63
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !176

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !170

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !112
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !111
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !63
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !178
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !95
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = load i64, ptr %9, align 8, !tbaa !101
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !172

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !112
  %28 = load i64, ptr %6, align 8, !tbaa !101
  %29 = load i64, ptr %7, align 8, !tbaa !111
  %30 = load ptr, ptr %8, align 8, !tbaa !95
  %31 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %31, ptr %0, align 8, !tbaa !112
  %32 = load i64, ptr %14, align 8, !tbaa !101
  store i64 %32, ptr %6, align 8, !tbaa !101
  %33 = load i64, ptr %15, align 8, !tbaa !111
  store i64 %33, ptr %7, align 8, !tbaa !111
  %34 = load ptr, ptr %21, align 8, !tbaa !95
  store ptr %34, ptr %8, align 8, !tbaa !95
  store ptr %27, ptr %5, align 8, !tbaa !112
  store i64 %28, ptr %14, align 8, !tbaa !101
  store i64 %29, ptr %15, align 8, !tbaa !111
  store ptr %30, ptr %21, align 8, !tbaa !95
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !172

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !111
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !95
  %50 = load ptr, ptr %5, align 8, !tbaa !112
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !173

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !63
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !179
  store ptr %65, ptr %8, align 8, !tbaa !95
  store i64 %3, ptr %7, align 8, !tbaa !111
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !181

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !103
  store i16 %13, ptr %12, align 2, !tbaa !103
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !101
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !112
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !112
  %24 = load i64, ptr %4, align 8, !tbaa !101
  %25 = load i64, ptr %6, align 8, !tbaa !111
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %28, ptr %0, align 8, !tbaa !112
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !101
  store i64 %30, ptr %4, align 8, !tbaa !101
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !111
  store i64 %32, ptr %6, align 8, !tbaa !111
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  store ptr %34, ptr %26, align 8, !tbaa !95
  store ptr %23, ptr %3, align 8, !tbaa !112
  store i64 %24, ptr %29, align 8, !tbaa !101
  store i64 %25, ptr %31, align 8, !tbaa !111
  store ptr %27, ptr %33, align 8, !tbaa !95
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !63
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !111
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = load ptr, ptr %3, align 8, !tbaa !112
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, i64 8}
!36 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1017AttributeListImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 16}
!38 = !{ptr @_ZN11xalanc_1_1017AttributeListImplC2ERKS0_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, i64 3}
!39 = !{ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_, ptr @_ZNK11xalanc_1_1017AttributeListImpl9getLengthEv, i64 3}
!40 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 225276}
!42 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1020AttributeVectorEntryEN9__gnu_cxx5__ops10_Iter_predINS0_18NameCompareFunctorEEEET_S9_S9_T0_St26random_access_iterator_tag, i64 75094}
!43 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1017AttributeListImpl11getNewEntryEPKtS2_S2_, i64 75094}
!45 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl12addAttributeEPKtS2_S2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 75094}
!46 = !{ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 1126156}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 12}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!50 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntry6createEPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, i64 2}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!55 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryC2EPKtS2_S2_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, i64 6}
!56 = !{ptr @_ZN11xalanc_1_1020AttributeVectorEntryD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 4}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 152}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 5}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !68, i64 0, !70, i64 8, !70, i64 16, !68, i64 24}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !65, i64 0}
!70 = !{!"long", !69, i64 0}
!71 = !{!"function_entry_count", i64 16}
!72 = !{!67, !70, i64 16}
!73 = !{!"branch_weights", i32 12, i32 4}
!74 = !{!67, !68, i64 24}
!75 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!76 = !{!"function_entry_count", i64 8}
!77 = !{!"branch_weights", i32 8, i32 0}
!78 = !{!67, !70, i64 8}
!79 = !{!"branch_weights", i32 6, i32 2}
!80 = !{!68, !68, i64 0}
!81 = !{!"branch_weights", i32 0, i32 2}
!82 = !{!"VP", i32 0, i64 2, i64 1790824735769605587, i64 2}
!83 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!84 = !{!"branch_weights", i32 2, i32 0}
!85 = distinct !{!85, !86, !87}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!"function_entry_count", i64 3}
!90 = !{!"branch_weights", i32 3, i32 0}
!91 = !{!"branch_weights", i32 0, i32 3}
!92 = !{!"VP", i32 0, i64 3, i64 8893614577066288799, i64 3}
!93 = !{!94, !68, i64 0}
!94 = !{!"_ZTSN11xalanc_1_1021CollectionDeleteGuardINS_11XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS3_EEEENS_13DeleteFunctorIS2_EEEE", !68, i64 0}
!95 = !{!96, !68, i64 24}
!96 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !68, i64 0, !70, i64 8, !70, i64 16, !68, i64 24}
!97 = distinct !{!97, !86, !87}
!98 = distinct !{!98, !86, !87}
!99 = !{!"function_entry_count", i64 75094}
!100 = !{!"branch_weights", i32 2, i32 75092}
!101 = !{!96, !70, i64 8}
!102 = !{!"branch_weights", i32 0, i32 75092}
!103 = !{!104, !104, i64 0}
!104 = !{!"short", !69, i64 0}
!105 = !{!"branch_weights", i32 75092, i32 370426}
!106 = distinct !{!106, !86, !87}
!107 = !{!"branch_weights", i32 75092, i32 1093546}
!108 = !{!"branch_weights", i32 75092, i32 375460}
!109 = !{!"branch_weights", i32 75094, i32 0}
!110 = distinct !{!110, !86, !87}
!111 = !{!96, !70, i64 16}
!112 = !{!96, !68, i64 0}
!113 = !{!114, !104, i64 0}
!114 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !104, i64 0}
!115 = !{!"function_entry_count", i64 1048814}
!116 = !{!"function_entry_count", i64 75095}
!117 = !{!"function_entry_count", i64 1126156}
!118 = !{!"branch_weights", i32 1051062, i32 75094}
!119 = !{!"branch_weights", i32 1, i32 75093}
!120 = !{!"branch_weights", i32 75093, i32 1}
!121 = distinct !{!121, !86, !87}
!122 = distinct !{!122, !86, !87}
!123 = distinct !{!123, !86, !87}
!124 = distinct !{!124, !86, !87}
!125 = !{!"function_entry_count", i64 12}
!126 = !{!"branch_weights", i32 12, i32 0}
!127 = !{!"function_entry_count", i64 42470003}
!128 = !{!"branch_weights", i32 52000, i32 42418003}
!129 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!130 = !{!"function_entry_count", i64 2}
!131 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!132 = !{!"function_entry_count", i64 155828046}
!133 = !{!"branch_weights", i32 0, i32 155828046}
!134 = !{!"branch_weights", i32 133170777, i32 22657269}
!135 = !{!"branch_weights", i32 20, i32 133170757}
!136 = !{!"branch_weights", i32 1, i32 19024395}
!137 = !{!"branch_weights", i32 19024395, i32 -26420601}
!138 = distinct !{!138, !86, !87}
!139 = !{!"branch_weights", i32 20748786, i32 1908483}
!140 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!141 = !{!"branch_weights", i32 20748786, i32 0}
!142 = !{!"branch_weights", i32 0, i32 20748786}
!143 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!144 = !{!"branch_weights", i32 0, i32 1908483}
!145 = !{!"branch_weights", i32 1, i32 1908482}
!146 = !{!"branch_weights", i32 1908482, i32 49797853}
!147 = distinct !{!147, !86, !87}
!148 = !{!"branch_weights", i32 1908482, i32 1}
!149 = distinct !{!149, !86, !87}
!150 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!151 = distinct !{!151, !86, !87}
!152 = !{!"branch_weights", i32 2, i32 15}
!153 = !{!"branch_weights", i32 2, i32 32}
!154 = !{!"branch_weights", i32 2, i32 10}
!155 = !{!"function_entry_count", i64 4}
!156 = !{!"branch_weights", i32 4, i32 0}
!157 = !{!"branch_weights", i32 0, i32 4}
!158 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!159 = distinct !{!159, !86, !87}
!160 = !{!"branch_weights", i32 0, i32 1}
!161 = distinct !{!161, !86, !87}
!162 = !{!"branch_weights", i32 75094, i32 0, i32 0, i32 0}
!163 = !{!"function_entry_count", i64 152}
!164 = !{!"branch_weights", i32 0, i32 152}
!165 = !{!"branch_weights", i32 152, i32 0}
!166 = !{!"branch_weights", i32 1, i32 151}
!167 = !{!"branch_weights", i32 151, i32 8215}
!168 = distinct !{!168, !86, !87}
!169 = !{!"function_entry_count", i64 64551586}
!170 = !{!"branch_weights", i32 64551590, i32 18}
!171 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!172 = !{!"branch_weights", i32 18, i32 0}
!173 = !{!"branch_weights", i32 4, i32 64551586}
!174 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!175 = !{!"branch_weights", i32 42418193, i32 22133393}
!176 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!177 = !{!"function_entry_count", i64 22}
!178 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!179 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!180 = !{!"function_entry_count", i64 124150652}
!181 = !{!"branch_weights", i32 124150652, i32 0}

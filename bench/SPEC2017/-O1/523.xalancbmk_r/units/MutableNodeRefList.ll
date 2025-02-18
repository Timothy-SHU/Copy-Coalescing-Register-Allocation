; ModuleID = 'MutableNodeRefList.cpp'
source_filename = "MutableNodeRefList.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::ExecutionContextPredicate" = type <{ ptr, %"struct.xalanc_1_10::DocumentPredicate", [7 x i8] }>
%"struct.xalanc_1_10::DocumentPredicate" = type { i8 }
%"struct.xalanc_1_10::IndexPredicate" = type { %"struct.xalanc_1_10::DocumentPredicate" }

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZNK11xalanc_1_1014IndexPredicateclERKNS_9XalanNodeES3_ = comdat any

$_ZNK11xalanc_1_1025ExecutionContextPredicateclERKNS_9XalanNodeES3_ = comdat any

@_ZTVN11xalanc_1_1018MutableNodeRefListE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1018MutableNodeRefListD0Ev, ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj, ptr @_ZNK11xalanc_1_1011NodeRefList9getLengthEv, ptr @_ZNK11xalanc_1_1011NodeRefList7indexOfEPKNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018MutableNodeRefListE = dso_local constant [36 x i8] c"N11xalanc_1_1018MutableNodeRefListE\00", align 1
@_ZTIN11xalanc_1_1011NodeRefListE = external constant ptr
@_ZTIN11xalanc_1_1018MutableNodeRefListE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018MutableNodeRefListE, ptr @_ZTIN11xalanc_1_1011NodeRefListE }, align 8

@_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018MutableNodeRefListC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018MutableNodeRefListC1ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018MutableNodeRefListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018MutableNodeRefListD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !51
  ret void
}

declare void @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1018MutableNodeRefList6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 48)
  invoke void @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %8

6:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !51
  ret ptr %5

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %5, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #17
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !60 {
  tail call void @_ZN11xalanc_1_1011NodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !51
  store i32 %6, ptr %4, align 8, !tbaa !51
  ret void
}

declare void @_ZN11xalanc_1_1011NodeRefListC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !60 {
  tail call void @_ZN11xalanc_1_1011NodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1018MutableNodeRefListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !51
  ret void
}

declare void @_ZN11xalanc_1_1011NodeRefListC2ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 align 2 !prof !61 {
  tail call void @_ZN11xalanc_1_1011NodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefListD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 align 2 !prof !60 {
  tail call void @_ZN11xalanc_1_1011NodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %4, %2
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_11NodeRefListE(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !51
  br label %7

7:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 !prof !62 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %7, label %4, !prof !63

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !51
  br label %7

7:                                                ; preds = %4, %2
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_1018MutableNodeRefListaSEPKNS_13XalanNodeListE(ptr noundef nonnull returned align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !64
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i64 0, ptr %3, align 8, !tbaa !64
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %8, align 8, !tbaa !51
  %9 = icmp eq ptr %1, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList8addNodesERKNS_13XalanNodeListE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %11

11:                                               ; preds = %10, %7
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr nocapture noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #7 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !66

5:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !tbaa !64
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList8addNodesERKNS_13XalanNodeListE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %20, %2
  ret void

12:                                               ; preds = %9, %20
  %13 = phi i32 [ 0, %9 ], [ %21, %20 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %14 = load ptr, ptr %1, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %13)
  store ptr %17, ptr %3, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %20

20:                                               ; preds = %19, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %21 = add nuw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %11, label %12, !llvm.loop !68
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !71 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !67
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !72

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10insertNodeEPNS_9XalanNodeEj(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !60 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !67
  %5 = icmp eq ptr %1, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %13

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !60 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !64
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %10, !prof !75

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %16 = load ptr, ptr %11, align 8, !tbaa !73
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi ptr [ %1, %9 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10removeNodeEPKNS_9XalanNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %5, ptr noundef %8, ptr nonnull %3)
  %10 = load ptr, ptr %4, align 8, !tbaa !73
  %11 = load i64, ptr %6, align 8, !tbaa !64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds ptr, ptr %9, i64 1
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %12 to i64
  %20 = sub i64 %19, %18
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %9, ptr nonnull align 8 %15, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %14, %17
  %22 = load i64, ptr %6, align 8, !tbaa !64
  %23 = add i64 %22, -1
  store i64 %23, ptr %6, align 8, !tbaa !64
  br label %24

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10removeNodeEj(ptr nocapture noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !60 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %4, i64 %9
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = ptrtoint ptr %7 to i64
  %14 = ptrtoint ptr %10 to i64
  %15 = sub i64 %14, %13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %6, ptr nonnull align 8 %7, i64 %15, i1 false)
  br label %16

16:                                               ; preds = %2, %12
  %17 = load i64, ptr %8, align 8, !tbaa !64
  %18 = add i64 %17, -1
  store i64 %18, ptr %8, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 align 2 !prof !76 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  store ptr %2, ptr %7, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList8addNodesERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %20, %2
  ret void

12:                                               ; preds = %9, %20
  %13 = phi i32 [ 0, %9 ], [ %21, %20 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %14 = load ptr, ptr %1, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %13)
  store ptr %17, ptr %3, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %20

20:                                               ; preds = %19, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %21 = add nuw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %11, label %12, !llvm.loop !77
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_13XalanNodeListERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 !prof !60 {
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %3
  ret void

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %3 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %11)
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = add nuw i32 %11, 1
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %9, label %10, !llvm.loop !78
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 align 2 !prof !79 {
  %4 = alloca %"struct.xalanc_1_10::ExecutionContextPredicate", align 8
  %5 = alloca %"struct.xalanc_1_10::IndexPredicate", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %7, align 8, !tbaa !67
  %8 = icmp eq ptr %1, null
  br i1 %8, label %173, label %9, !prof !80

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15, !prof !80

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %1, ptr %6, align 8, !tbaa !67
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %173

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = getelementptr ptr, ptr %17, i64 %12
  %19 = getelementptr ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %173, label %22, !prof !80

22:                                               ; preds = %15
  %23 = load ptr, ptr %17, align 8, !tbaa !67
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %23), !prof !81
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %34, label %29, !prof !80

29:                                               ; preds = %22
  %30 = load ptr, ptr %23, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %23), !prof !82
  br label %34

34:                                               ; preds = %22, %29
  %35 = phi ptr [ %33, %29 ], [ %23, %22 ]
  %36 = load ptr, ptr %7, align 8, !tbaa !67
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 26
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(8) %36), !prof !83
  br i1 %40, label %41, label %144, !prof !84

41:                                               ; preds = %34
  %42 = load ptr, ptr %7, align 8, !tbaa !67
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %42), !prof !82
  %47 = icmp eq ptr %46, %35
  br i1 %47, label %48, label %144, !prof !84

48:                                               ; preds = %41
  %49 = load ptr, ptr %20, align 8, !tbaa !48
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(8) %20), !prof !81
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %59, label %54, !prof !80

54:                                               ; preds = %48
  %55 = load ptr, ptr %20, align 8, !tbaa !48
  %56 = getelementptr inbounds ptr, ptr %55, i64 12
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %20), !prof !82
  br label %59

59:                                               ; preds = %48, %54
  %60 = phi ptr [ %58, %54 ], [ %20, %48 ]
  %61 = icmp eq ptr %35, %60
  %62 = load ptr, ptr %7, align 8, !tbaa !67
  %63 = load ptr, ptr %16, align 8, !tbaa !73
  %64 = load i64, ptr %11, align 8, !tbaa !64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  br i1 %61, label %66, label %123, !prof !84

66:                                               ; preds = %59
  %67 = load ptr, ptr %62, align 8, !tbaa !48
  %68 = getelementptr inbounds ptr, ptr %67, i64 27
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef i64 %69(ptr noundef nonnull align 8 dereferenceable(8) %62), !prof !85
  %71 = getelementptr inbounds ptr, ptr %65, i64 -1
  %72 = load ptr, ptr %71, align 8, !tbaa !67
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = getelementptr inbounds ptr, ptr %73, i64 27
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(8) %72), !prof !85
  %77 = icmp ult i64 %76, %70
  br i1 %77, label %169, label %78, !prof !84

78:                                               ; preds = %66
  %79 = icmp ult ptr %71, %63
  br i1 %79, label %109, label %80

80:                                               ; preds = %78, %105
  %81 = phi ptr [ %107, %105 ], [ %63, %78 ]
  %82 = phi ptr [ %106, %105 ], [ %71, %78 ]
  %83 = ptrtoint ptr %82 to i64
  %84 = ptrtoint ptr %81 to i64
  %85 = sub i64 %83, %84
  %86 = ashr exact i64 %85, 3
  %87 = sdiv i64 %86, 2
  %88 = getelementptr inbounds ptr, ptr %81, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  %90 = load ptr, ptr %89, align 8, !tbaa !48
  %91 = getelementptr inbounds ptr, ptr %90, i64 27
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef i64 %92(ptr noundef nonnull align 8 dereferenceable(8) %89)
  %94 = icmp ult i64 %70, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %80
  %96 = icmp eq ptr %88, %63
  br i1 %96, label %109, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds ptr, ptr %88, i64 -1
  br label %105

99:                                               ; preds = %80
  %100 = icmp ugt i64 %70, %93
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = getelementptr inbounds ptr, ptr %88, i64 1
  br label %105

103:                                              ; preds = %99
  %104 = icmp eq i64 %70, %93
  br i1 %104, label %109, label %105

105:                                              ; preds = %103, %101, %97
  %106 = phi ptr [ %98, %97 ], [ %82, %101 ], [ %82, %103 ]
  %107 = phi ptr [ %81, %97 ], [ %102, %101 ], [ %81, %103 ]
  %108 = icmp ugt ptr %107, %106
  br i1 %108, label %109, label %80, !llvm.loop !86

109:                                              ; preds = %105, %103, %95, %78
  %110 = phi ptr [ %63, %78 ], [ %107, %105 ], [ %81, %95 ], [ %81, %103 ]
  %111 = phi i1 [ true, %78 ], [ true, %105 ], [ true, %95 ], [ false, %103 ]
  %112 = phi ptr [ %65, %78 ], [ %88, %95 ], [ %88, %103 ], [ %88, %105 ]
  %113 = phi i64 [ 0, %78 ], [ %93, %95 ], [ %93, %103 ], [ %93, %105 ]
  %114 = icmp eq i64 %70, %113
  br i1 %114, label %169, label %115

115:                                              ; preds = %109
  %116 = icmp eq ptr %112, %65
  %117 = icmp eq ptr %110, %65
  %118 = or i1 %117, %116
  br i1 %118, label %169, label %119

119:                                              ; preds = %115
  %120 = icmp ult i64 %113, %70
  %121 = zext i1 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %112, i64 %121
  br label %169

123:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  br label %124

124:                                              ; preds = %135, %123
  %125 = phi ptr [ %63, %123 ], [ %136, %135 ]
  %126 = phi i8 [ 1, %123 ], [ %137, %135 ]
  %127 = icmp eq ptr %125, %65
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %125, align 8, !tbaa !67
  %130 = icmp eq ptr %129, %62
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = call noundef zeroext i1 @_ZNK11xalanc_1_1014IndexPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %129)
  %133 = zext i1 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %125, i64 %133
  br label %135

135:                                              ; preds = %131, %128
  %136 = phi ptr [ %125, %128 ], [ %134, %131 ]
  %137 = phi i8 [ 0, %128 ], [ %126, %131 ]
  %138 = phi i1 [ false, %128 ], [ %132, %131 ]
  br i1 %138, label %124, label %139

139:                                              ; preds = %135, %124
  %140 = phi ptr [ %125, %124 ], [ %136, %135 ]
  %141 = phi i8 [ %126, %124 ], [ %137, %135 ]
  %142 = and i8 %141, 1
  %143 = icmp ne i8 %142, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %169

144:                                              ; preds = %41, %34
  %145 = load ptr, ptr %7, align 8, !tbaa !67
  %146 = load ptr, ptr %16, align 8, !tbaa !73
  %147 = load i64, ptr %11, align 8, !tbaa !64
  %148 = getelementptr inbounds ptr, ptr %146, i64 %147
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  store ptr %2, ptr %4, align 8
  br label %149

149:                                              ; preds = %160, %144
  %150 = phi ptr [ %146, %144 ], [ %161, %160 ]
  %151 = phi i8 [ 1, %144 ], [ %162, %160 ]
  %152 = icmp eq ptr %150, %148
  br i1 %152, label %164, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %150, align 8, !tbaa !67
  %155 = icmp eq ptr %154, %145
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = call noundef zeroext i1 @_ZNK11xalanc_1_1025ExecutionContextPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef nonnull align 8 dereferenceable(8) %154)
  %158 = zext i1 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %150, i64 %158
  br label %160

160:                                              ; preds = %156, %153
  %161 = phi ptr [ %150, %153 ], [ %159, %156 ]
  %162 = phi i8 [ 0, %153 ], [ %151, %156 ]
  %163 = phi i1 [ false, %153 ], [ %157, %156 ]
  br i1 %163, label %149, label %164

164:                                              ; preds = %160, %149
  %165 = phi ptr [ %150, %149 ], [ %161, %160 ]
  %166 = phi i8 [ %151, %149 ], [ %162, %160 ]
  %167 = and i8 %166, 1
  %168 = icmp ne i8 %167, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %169

169:                                              ; preds = %119, %109, %66, %115, %139, %164
  %170 = phi ptr [ %140, %139 ], [ %165, %164 ], [ undef, %109 ], [ %65, %66 ], [ %65, %115 ], [ %122, %119 ]
  %171 = phi i1 [ %143, %139 ], [ %168, %164 ], [ %111, %109 ], [ true, %66 ], [ %111, %115 ], [ %111, %119 ]
  br i1 %171, label %172, label %173, !prof !84

172:                                              ; preds = %169
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %170, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %173

173:                                              ; preds = %172, %169, %15, %14, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 !prof !60 {
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %3
  ret void

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %3 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %11)
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = add nuw i32 %11, 1
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %9, label %10, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 align 2 !prof !88 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !51
  switch i32 %5, label %38 [
    i32 0, label %6
    i32 1, label %18
  ], !prof !89

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %16, %13 ], [ %8, %6 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = getelementptr inbounds ptr, ptr %14, i64 1
  %17 = icmp eq ptr %16, %11
  br i1 %17, label %70, label %13, !llvm.loop !90

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !64
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26, !prof !91

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1
  %25 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
  br label %70

26:                                               ; preds = %18
  %27 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = icmp eq i64 %30, 0
  br i1 %32, label %70, label %33, !prof !92

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %36, %33 ], [ %28, %26 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %36 = getelementptr inbounds ptr, ptr %34, i64 1
  %37 = icmp eq ptr %36, %31
  br i1 %37, label %70, label %33, !prof !93, !llvm.loop !90

38:                                               ; preds = %3
  %39 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1
  %40 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !64
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !64, !noalias !94
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !73, !noalias !97
  %50 = getelementptr inbounds ptr, ptr %49, i64 %45
  br label %51

51:                                               ; preds = %47, %51
  %52 = phi i64 [ %55, %51 ], [ %45, %47 ]
  %53 = phi ptr [ %54, %51 ], [ %50, %47 ]
  %54 = getelementptr inbounds ptr, ptr %53, i64 -1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %54)
  %55 = add nsw i64 %52, -1
  %56 = icmp sgt i64 %52, 1
  br i1 %56, label %51, label %70, !llvm.loop !98

57:                                               ; preds = %38
  %58 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !73, !noalias !97
  %60 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %1, i64 0, i32 1, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !64, !noalias !99
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds ptr, ptr %59, i64 %61
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi ptr [ %67, %65 ], [ %64, %63 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 -1
  %68 = load ptr, ptr %67, align 8, !tbaa !67
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %68, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %69 = icmp eq ptr %67, %59
  br i1 %69, label %70, label %65, !llvm.loop !102

70:                                               ; preds = %33, %13, %65, %51, %26, %6, %57, %43, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !64
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !64
  %16 = load i64, ptr %6, align 8, !tbaa !74
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %19, ptr %0, align 8, !tbaa !103
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !64
  store i64 %21, ptr %14, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !74
  store i64 %23, ptr %6, align 8, !tbaa !74
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  store ptr %25, ptr %17, align 8, !tbaa !73
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i64 %15, ptr %20, align 8, !tbaa !64
  store i64 %16, ptr %22, align 8, !tbaa !74
  store ptr %18, ptr %24, align 8, !tbaa !73
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds ptr, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !64
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds ptr, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = getelementptr inbounds ptr, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !64
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !64
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !73
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv(ptr nocapture noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #10 align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  %7 = ptrtoint ptr %6 to i64
  %8 = ashr i64 %5, 2
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %35, !prof !104

10:                                               ; preds = %1
  %11 = shl nsw i64 %5, 3
  %12 = and i64 %11, -32
  %13 = getelementptr i8, ptr %3, i64 %12
  br label %14

14:                                               ; preds = %31, %10
  %15 = phi i64 [ %8, %10 ], [ %33, %31 ]
  %16 = phi ptr [ %3, %10 ], [ %32, %31 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds ptr, ptr %16, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds ptr, ptr %16, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds ptr, ptr %16, i64 3
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds ptr, ptr %16, i64 4
  %33 = add nsw i64 %15, -1
  %34 = icmp sgt i64 %15, 1
  br i1 %34, label %14, label %35, !prof !104, !llvm.loop !105

35:                                               ; preds = %31, %1
  %36 = phi ptr [ %3, %1 ], [ %13, %31 ]
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %7, %37
  %39 = ashr exact i64 %38, 3
  switch i64 %39, label %55 [
    i64 3, label %40
    i64 2, label %45
    i64 1, label %51
  ], !prof !106

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !67
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds ptr, ptr %36, i64 1
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %36, %35 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi ptr [ %50, %49 ], [ %36, %35 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55, !prof !107

55:                                               ; preds = %51, %35
  br label %62

56:                                               ; preds = %19
  %57 = getelementptr inbounds ptr, ptr %16, i64 1
  br label %62

58:                                               ; preds = %23
  %59 = getelementptr inbounds ptr, ptr %16, i64 2
  br label %62

60:                                               ; preds = %27
  %61 = getelementptr inbounds ptr, ptr %16, i64 3
  br label %62

62:                                               ; preds = %14, %56, %58, %60, %40, %45, %51, %55
  %63 = phi ptr [ %6, %55 ], [ %36, %40 ], [ %52, %51 ], [ %46, %45 ], [ %57, %56 ], [ %59, %58 ], [ %61, %60 ], [ %16, %14 ]
  %64 = icmp eq ptr %63, %6
  %65 = getelementptr inbounds ptr, ptr %63, i64 1
  %66 = icmp eq ptr %65, %6
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %79, label %68, !prof !107

68:                                               ; preds = %62, %75
  %69 = phi ptr [ %77, %75 ], [ %65, %62 ]
  %70 = phi ptr [ %76, %75 ], [ %63, %62 ]
  %71 = load ptr, ptr %69, align 8, !tbaa !67
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  store ptr %71, ptr %70, align 8, !tbaa !67
  %74 = getelementptr inbounds ptr, ptr %70, i64 1
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %70, %68 ], [ %74, %73 ]
  %77 = getelementptr inbounds ptr, ptr %69, i64 1
  %78 = icmp eq ptr %77, %6
  br i1 %78, label %79, label %68, !prof !108, !llvm.loop !109

79:                                               ; preds = %75, %62
  %80 = phi ptr [ %63, %62 ], [ %76, %75 ]
  %81 = load ptr, ptr %2, align 8, !tbaa !73
  %82 = getelementptr inbounds ptr, ptr %81, i64 %5
  %83 = icmp eq ptr %80, %82
  br i1 %83, label %91, label %84, !prof !110

84:                                               ; preds = %79
  %85 = ptrtoint ptr %82 to i64
  %86 = ptrtoint ptr %80 to i64
  %87 = sub i64 %85, %86
  %88 = ashr exact i64 %87, 3
  %89 = load i64, ptr %4, align 8, !tbaa !64
  %90 = sub i64 %89, %88
  store i64 %90, ptr %4, align 8, !tbaa !64
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i64, ptr %4, align 8, !tbaa !64
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96, !prof !107

94:                                               ; preds = %91
  %95 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 0, ptr %95, align 8, !tbaa !51
  br label %96

96:                                               ; preds = %94, %91
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr nocapture noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #11 align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  %7 = icmp ne i64 %5, 0
  %8 = getelementptr inbounds ptr, ptr %6, i64 -1
  %9 = icmp ult ptr %3, %8
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %19

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %17, %11 ], [ %8, %1 ]
  %13 = phi ptr [ %16, %11 ], [ %3, %1 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = load ptr, ptr %12, align 8, !tbaa !67
  store ptr %15, ptr %13, align 8, !tbaa !67
  store ptr %14, ptr %12, align 8, !tbaa !67
  %16 = getelementptr inbounds ptr, ptr %13, i64 1
  %17 = getelementptr inbounds ptr, ptr %12, i64 -1
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %11, label %19, !llvm.loop !111

19:                                               ; preds = %11, %1
  %20 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !51
  switch i32 %21, label %25 [
    i32 1, label %23
    i32 2, label %22
  ]

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %19, %22
  %24 = phi i32 [ 1, %22 ], [ 2, %19 ]
  store i32 %24, ptr %20, align 8, !tbaa !51
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

declare noundef ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1011NodeRefList7indexOfEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !60 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !74
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !113

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %13, ptr %12, align 8, !tbaa !67
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !64
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !115

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !103
  %24 = load i64, ptr %4, align 8, !tbaa !64
  %25 = load i64, ptr %6, align 8, !tbaa !74
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %28, ptr %0, align 8, !tbaa !103
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !64
  store i64 %30, ptr %4, align 8, !tbaa !64
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !74
  store i64 %32, ptr %6, align 8, !tbaa !74
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  store ptr %34, ptr %26, align 8, !tbaa !73
  store ptr %23, ptr %3, align 8, !tbaa !103
  store i64 %24, ptr %29, align 8, !tbaa !64
  store i64 %25, ptr %31, align 8, !tbaa !74
  store ptr %27, ptr %33, align 8, !tbaa !73
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !114

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !116

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !74
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = load ptr, ptr %3, align 8, !tbaa !103
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !64
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !118

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !74
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !119
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !73
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = load i64, ptr %9, align 8, !tbaa !64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !120

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !103
  %28 = load i64, ptr %6, align 8, !tbaa !64
  %29 = load i64, ptr %7, align 8, !tbaa !74
  %30 = load ptr, ptr %8, align 8, !tbaa !73
  %31 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %31, ptr %0, align 8, !tbaa !103
  %32 = load i64, ptr %14, align 8, !tbaa !64
  store i64 %32, ptr %6, align 8, !tbaa !64
  %33 = load i64, ptr %15, align 8, !tbaa !74
  store i64 %33, ptr %7, align 8, !tbaa !74
  %34 = load ptr, ptr %21, align 8, !tbaa !73
  store ptr %34, ptr %8, align 8, !tbaa !73
  store ptr %27, ptr %5, align 8, !tbaa !103
  store i64 %28, ptr %14, align 8, !tbaa !64
  store i64 %29, ptr %15, align 8, !tbaa !74
  store ptr %30, ptr %21, align 8, !tbaa !73
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !120

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !74
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !73
  %50 = load ptr, ptr %5, align 8, !tbaa !103
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !121

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !48
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !122
  store ptr %65, ptr %8, align 8, !tbaa !73
  store i64 %3, ptr %7, align 8, !tbaa !74
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !124

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !64
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !74
  br i1 %18, label %21, label %39, !prof !120

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !124

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !125

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !73
  %28 = load i64, ptr %12, align 8, !tbaa !64
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !67
  store ptr %34, ptr %32, align 8, !tbaa !67
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !126, !llvm.loop !127

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %42 = load ptr, ptr %0, align 8, !tbaa !103
  store ptr %42, ptr %5, align 8, !tbaa !103
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !74
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !48
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !73
  %51 = load i64, ptr %43, align 8, !tbaa !64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !73
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !73
  %56 = load i64, ptr %43, align 8, !tbaa !64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !73
  %60 = load i64, ptr %43, align 8, !tbaa !64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !73
  %63 = load i64, ptr %12, align 8, !tbaa !64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !103
  %67 = load i64, ptr %12, align 8, !tbaa !64
  %68 = load i64, ptr %19, align 8, !tbaa !74
  %69 = load ptr, ptr %15, align 8, !tbaa !73
  %70 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %70, ptr %0, align 8, !tbaa !103
  %71 = load i64, ptr %43, align 8, !tbaa !64
  store i64 %71, ptr %12, align 8, !tbaa !64
  %72 = load i64, ptr %44, align 8, !tbaa !74
  store i64 %72, ptr %19, align 8, !tbaa !74
  %73 = load ptr, ptr %50, align 8, !tbaa !73
  store ptr %73, ptr %15, align 8, !tbaa !73
  store ptr %66, ptr %5, align 8, !tbaa !103
  store i64 %67, ptr %43, align 8, !tbaa !64
  store i64 %68, ptr %44, align 8, !tbaa !74
  store ptr %69, ptr %50, align 8, !tbaa !73
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !48
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !74
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !73
  %89 = load ptr, ptr %5, align 8, !tbaa !103
  %90 = load ptr, ptr %89, align 8, !tbaa !48
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !128

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !129

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !130

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
  store i64 %36, ptr %12, align 8, !tbaa !64
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = load ptr, ptr %3, align 8, !tbaa !103
  store ptr %12, ptr %0, align 8, !tbaa !103
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !64
  store i64 %14, ptr %6, align 8, !tbaa !64
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !74
  store i64 %16, ptr %8, align 8, !tbaa !74
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  store ptr %18, ptr %10, align 8, !tbaa !73
  store ptr %5, ptr %3, align 8, !tbaa !103
  store i64 %7, ptr %13, align 8, !tbaa !64
  store i64 %9, ptr %15, align 8, !tbaa !74
  store ptr %11, ptr %17, align 8, !tbaa !73
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !132

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !48
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !133

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !64
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds ptr, ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !74
  br i1 %12, label %15, label %31, !prof !84

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !134

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #20
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i64, ptr %6, align 8, !tbaa !64
  %20 = icmp eq i64 %2, 0
  br i1 %20, label %141, label %21, !prof !135

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !73
  %23 = getelementptr inbounds ptr, ptr %22, i64 %19
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %21 ]
  %26 = phi i64 [ %29, %24 ], [ 0, %21 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !67
  store ptr %27, ptr %25, align 8, !tbaa !67
  %28 = getelementptr inbounds ptr, ptr %25, i64 1
  %29 = add nuw i64 %26, 1
  %30 = icmp eq i64 %29, %2
  br i1 %30, label %139, label %24, !prof !136, !llvm.loop !137

31:                                               ; preds = %4
  %32 = icmp ugt i64 %8, %14
  br i1 %32, label %33, label %89

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %34 = load ptr, ptr %0, align 8, !tbaa !103
  store ptr %34, ptr %5, align 8, !tbaa !103
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %35, align 8, !tbaa !64
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %36, align 8, !tbaa !74
  %37 = shl i64 %8, 3
  %38 = load ptr, ptr %34, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37)
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !73
  %43 = load i64, ptr %35, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %9, align 8, !tbaa !73
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %44, ptr noundef %45, ptr noundef %1)
          to label %46 unwind label %75

46:                                               ; preds = %33
  %47 = load ptr, ptr %42, align 8, !tbaa !73
  %48 = load i64, ptr %35, align 8, !tbaa !64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %50 unwind label %75

50:                                               ; preds = %46
  %51 = load ptr, ptr %42, align 8, !tbaa !73
  %52 = load i64, ptr %35, align 8, !tbaa !64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %9, align 8, !tbaa !73
  %55 = load i64, ptr %6, align 8, !tbaa !64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %53, ptr noundef %1, ptr noundef %56)
          to label %57 unwind label %75

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 8, !tbaa !103
  %59 = load i64, ptr %6, align 8, !tbaa !64
  %60 = load i64, ptr %13, align 8, !tbaa !74
  %61 = load ptr, ptr %9, align 8, !tbaa !73
  %62 = load ptr, ptr %5, align 8, !tbaa !103
  store ptr %62, ptr %0, align 8, !tbaa !103
  %63 = load i64, ptr %35, align 8, !tbaa !64
  store i64 %63, ptr %6, align 8, !tbaa !64
  %64 = load i64, ptr %36, align 8, !tbaa !74
  store i64 %64, ptr %13, align 8, !tbaa !74
  %65 = load ptr, ptr %42, align 8, !tbaa !73
  store ptr %65, ptr %9, align 8, !tbaa !73
  store ptr %58, ptr %5, align 8, !tbaa !103
  store i64 %59, ptr %35, align 8, !tbaa !64
  store i64 %60, ptr %36, align 8, !tbaa !74
  store ptr %61, ptr %42, align 8, !tbaa !73
  %66 = icmp eq i64 %60, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %57
  %68 = load ptr, ptr %58, align 8, !tbaa !48
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %61)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #17
  unreachable

74:                                               ; preds = %57, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %141

75:                                               ; preds = %50, %46, %33
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load i64, ptr %36, align 8, !tbaa !74
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %42, align 8, !tbaa !73
  %81 = load ptr, ptr %5, align 8, !tbaa !103
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80)
          to label %88 unwind label %85

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #17
  unreachable

88:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %76

89:                                               ; preds = %31
  %90 = ptrtoint ptr %11 to i64
  %91 = ptrtoint ptr %1 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = icmp ugt i64 %93, %2
  br i1 %94, label %115, label %95

95:                                               ; preds = %89
  %96 = sub i64 %2, %93
  %97 = icmp eq i64 %93, %2
  br i1 %97, label %98, label %100

98:                                               ; preds = %100, %95
  %99 = icmp eq ptr %11, %1
  br i1 %99, label %108, label %104

100:                                              ; preds = %95, %100
  %101 = phi i64 [ %102, %100 ], [ 0, %95 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %102 = add nuw i64 %101, 1
  %103 = icmp eq i64 %102, %96
  br i1 %103, label %98, label %100, !llvm.loop !138

104:                                              ; preds = %98, %104
  %105 = phi ptr [ %106, %104 ], [ %1, %98 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %105)
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  %107 = icmp eq ptr %106, %11
  br i1 %107, label %108, label %104, !llvm.loop !139

108:                                              ; preds = %104, %98
  %109 = load ptr, ptr %3, align 8, !tbaa !67
  %110 = icmp eq ptr %11, %1
  br i1 %110, label %141, label %111

111:                                              ; preds = %108, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %108 ]
  store ptr %109, ptr %112, align 8, !tbaa !67
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %11
  br i1 %114, label %141, label %111, !llvm.loop !140

115:                                              ; preds = %89
  %116 = sub i64 0, %2
  %117 = getelementptr inbounds ptr, ptr %11, i64 %116
  %118 = icmp eq i64 %2, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %120)
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  %122 = icmp eq ptr %121, %11
  br i1 %122, label %123, label %119, !llvm.loop !141

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %91
  %128 = ashr exact i64 %127, 3
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds ptr, ptr %11, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %130, ptr align 8 %1, i64 %127, i1 false)
  br label %131

131:                                              ; preds = %123, %125
  %132 = getelementptr inbounds ptr, ptr %1, i64 %2
  %133 = load ptr, ptr %3, align 8, !tbaa !67
  %134 = icmp eq i64 %2, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131, %135
  %136 = phi ptr [ %137, %135 ], [ %1, %131 ]
  store ptr %133, ptr %136, align 8, !tbaa !67
  %137 = getelementptr inbounds ptr, ptr %136, i64 1
  %138 = icmp eq ptr %137, %132
  br i1 %138, label %141, label %135, !llvm.loop !140

139:                                              ; preds = %24
  %140 = add i64 %19, %2
  store i64 %140, ptr %6, align 8, !tbaa !64
  br label %141

141:                                              ; preds = %111, %135, %108, %131, %18, %139, %74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_109XalanNodeEN9__gnu_cxx5__ops16_Iter_equals_valIKPKS1_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !60 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !67
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !142

34:                                               ; preds = %30, %3
  %35 = phi ptr [ %0, %3 ], [ %12, %30 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %4, %36
  %38 = ashr exact i64 %37, 3
  switch i64 %38, label %57 [
    i64 3, label %39
    i64 2, label %45
    i64 1, label %52
  ]

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !67
  %41 = load ptr, ptr %2, align 8, !tbaa !67
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = load ptr, ptr %2, align 8, !tbaa !67
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = load ptr, ptr %2, align 8, !tbaa !67
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %34
  br label %64

58:                                               ; preds = %18
  %59 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %64

60:                                               ; preds = %22
  %61 = getelementptr inbounds ptr, ptr %15, i64 2
  br label %64

62:                                               ; preds = %26
  %63 = getelementptr inbounds ptr, ptr %15, i64 3
  br label %64

64:                                               ; preds = %13, %58, %60, %62, %45, %52, %39, %57
  %65 = phi ptr [ %1, %57 ], [ %35, %39 ], [ %53, %52 ], [ %46, %45 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ], [ %15, %13 ]
  ret ptr %65
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014IndexPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %35, label %15

15:                                               ; preds = %9, %3
  %16 = load ptr, ptr %1, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = load ptr, ptr %2, align 8, !tbaa !48
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load ptr, ptr %1, align 8, !tbaa !48
  %27 = getelementptr inbounds ptr, ptr %26, i64 27
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i64 %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %30 = load ptr, ptr %2, align 8, !tbaa !48
  %31 = getelementptr inbounds ptr, ptr %30, i64 27
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i64 %32(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %34 = icmp ugt i64 %29, %33
  br label %35

35:                                               ; preds = %9, %15, %25
  %36 = phi i1 [ %34, %25 ], [ true, %15 ], [ true, %9 ]
  ret i1 %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025ExecutionContextPredicateclERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %31, label %15

15:                                               ; preds = %9, %3
  %16 = load ptr, ptr %1, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = load ptr, ptr %2, align 8, !tbaa !48
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load ptr, ptr %0, align 8, !tbaa !143
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %31

31:                                               ; preds = %9, %15, %25
  %32 = phi i1 [ %30, %25 ], [ true, %15 ], [ true, %9 ]
  ret i1 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { "function-inline-cost-multiplier"="2" }

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
!35 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefListC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011NodeRefListC2ERN11xercesc_2_713MemoryManagerE, i64 18}
!36 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1011NodeRefListD2Ev, i64 17}
!37 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefListaSERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE, i64 6851}
!38 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1827528}
!39 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, i64 127506}
!40 = !{ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 127506}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 179}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 179}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52643}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_mRKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 52480}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 18}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !59, i64 40}
!52 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !53, i64 0, !59, i64 40}
!53 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !54, i64 0, !55, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !56, i64 0, !58, i64 8, !58, i64 16, !56, i64 24}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !50, i64 0}
!58 = !{!"long", !57, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !57, i64 0}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!"function_entry_count", i64 17}
!62 = !{!"function_entry_count", i64 6851}
!63 = !{!"branch_weights", i32 0, i32 6851}
!64 = !{!55, !58, i64 8}
!65 = !{!"function_entry_count", i64 3187713}
!66 = !{!"branch_weights", i32 1914988, i32 1272725}
!67 = !{!56, !56, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!"function_entry_count", i64 1827528}
!72 = !{!"branch_weights", i32 0, i32 1827528}
!73 = !{!55, !56, i64 24}
!74 = !{!55, !58, i64 16}
!75 = !{!"branch_weights", i32 75026, i32 52480}
!76 = !{!"function_entry_count", i64 19395}
!77 = distinct !{!77, !69, !70}
!78 = distinct !{!78, !69, !70}
!79 = !{!"function_entry_count", i64 127506}
!80 = !{!"branch_weights", i32 0, i32 127506}
!81 = !{!"VP", i32 0, i64 127506, i64 5575636727286712827, i64 114578, i64 7640389117638268357, i64 12928}
!82 = !{!"VP", i32 0, i64 127506, i64 6698983096730517037, i64 114578, i64 -5023606105321788859, i64 12928}
!83 = !{!"VP", i32 0, i64 127506, i64 -3213810342358929555, i64 114578, i64 -3570013559313404675, i64 12928}
!84 = !{!"branch_weights", i32 127506, i32 0}
!85 = !{!"VP", i32 0, i64 127506, i64 -5813983425069296492, i64 114578, i64 -3339445804273407253, i64 12928}
!86 = distinct !{!86, !69, !70}
!87 = distinct !{!87, !69, !70}
!88 = !{!"function_entry_count", i64 97467}
!89 = !{!"branch_weights", i32 0, i32 0, i32 97467}
!90 = distinct !{!90, !69, !70}
!91 = !{!"branch_weights", i32 0, i32 97467}
!92 = !{!"branch_weights", i32 1, i32 97466}
!93 = !{!"branch_weights", i32 97466, i32 30040}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv: argument 0"}
!96 = distinct !{!96, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv"}
!97 = !{}
!98 = distinct !{!98, !69, !70}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv: argument 0"}
!101 = distinct !{!101, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv"}
!102 = distinct !{!102, !69, !70}
!103 = !{!55, !56, i64 0}
!104 = !{!"branch_weights", i32 0, i32 1}
!105 = distinct !{!105, !69, !70}
!106 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 19395}
!107 = !{!"branch_weights", i32 19395, i32 0}
!108 = !{!"branch_weights", i32 1, i32 0}
!109 = distinct !{!109, !69, !70}
!110 = !{!"branch_weights", i32 0, i32 19395}
!111 = distinct !{!111, !69, !70}
!112 = !{!"function_entry_count", i64 3517488}
!113 = !{!"branch_weights", i32 3517309, i32 179}
!114 = !{!"branch_weights", i32 16, i32 163}
!115 = !{!"branch_weights", i32 179, i32 0}
!116 = !{!"VP", i32 0, i64 163, i64 -7405368087501025645, i64 163}
!117 = !{!"function_entry_count", i64 52673}
!118 = !{!"branch_weights", i32 30, i32 52643}
!119 = !{!"VP", i32 0, i64 52643, i64 8345045103670217670, i64 52643}
!120 = !{!"branch_weights", i32 52643, i32 0}
!121 = !{!"branch_weights", i32 0, i32 30}
!122 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!123 = !{!"function_entry_count", i64 52643}
!124 = !{!"branch_weights", i32 0, i32 52643}
!125 = !{!"branch_weights", i32 1, i32 52642}
!126 = !{!"branch_weights", i32 52642, i32 298062848}
!127 = distinct !{!127, !69, !70}
!128 = distinct !{!128, !69, !70}
!129 = distinct !{!129, !69, !70}
!130 = distinct !{!130, !69, !70}
!131 = !{!"function_entry_count", i64 52494}
!132 = !{!"branch_weights", i32 4, i32 52490}
!133 = !{!"VP", i32 0, i64 52490, i64 -7405368087501025645, i64 52490}
!134 = !{!"branch_weights", i32 52480, i32 75026}
!135 = !{!"branch_weights", i32 1, i32 127505}
!136 = !{!"branch_weights", i32 127505, i32 1}
!137 = distinct !{!137, !69, !70}
!138 = distinct !{!138, !69, !70}
!139 = distinct !{!139, !69, !70}
!140 = distinct !{!140, !69, !70}
!141 = distinct !{!141, !69, !70}
!142 = distinct !{!142, !69, !70}
!143 = !{!144, !56, i64 0}
!144 = !{!"_ZTSN11xalanc_1_1025ExecutionContextPredicateE", !56, i64 0, !145, i64 8}
!145 = !{!"_ZTSN11xalanc_1_1017DocumentPredicateE"}

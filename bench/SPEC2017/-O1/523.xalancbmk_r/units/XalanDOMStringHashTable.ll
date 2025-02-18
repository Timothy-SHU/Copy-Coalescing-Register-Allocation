; ModuleID = 'XalanDOMStringHashTable.cpp'
source_filename = "XalanDOMStringHashTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1024XalanMemMngArrayAllocateINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE14allocateMemMgrEmRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm = comdat any

$_ZSt9__find_ifIPKPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_20equalsXalanDOMStringEEEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm = dso_local unnamed_addr alias void (ptr, ptr, i64, i64), ptr @_ZN11xalanc_1_1023XalanDOMStringHashTableC2ERN11xercesc_2_713MemoryManagerEmm

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanDOMStringHashTableC2ERN11xercesc_2_713MemoryManagerEmm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 align 2 !prof !49 {
  store i64 %2, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 1
  store i64 %3, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE14allocateMemMgrEmRN11xercesc_2_713MemoryManagerE(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr %1, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !61
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 2
  store i64 %2, ptr %9, align 8, !tbaa !62
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 3
  store i64 0, ptr %10, align 8, !tbaa !63
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE14allocateMemMgrEmRN11xercesc_2_713MemoryManagerE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = shl i64 %0, 5
  %5 = load ptr, ptr %1, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %4), !prof !67
  store ptr %1, ptr %3, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %3, i64 0, i32 2
  store i64 %0, ptr %10, align 8, !tbaa !62
  %11 = icmp eq i64 %0, 0
  br i1 %11, label %14, label %16, !prof !68

12:                                               ; preds = %16
  %13 = shl i64 %0, 1
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i64 [ %0, %2 ], [ %13, %12 ]
  store i64 %15, ptr %10, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %25 unwind label %22, !prof !70

16:                                               ; preds = %2, %16
  %17 = phi i64 [ %20, %16 ], [ 0, %2 ]
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 %17
  store ptr %1, ptr %18, align 8, !tbaa !71
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 %17, i32 1
  %20 = add nuw i64 %17, 1
  %21 = icmp eq i64 %20, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %21, label %12, label %16, !prof !73, !llvm.loop !74

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #11
  unreachable

25:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv(ptr nocapture noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #2 align 2 !prof !77 {
  %2 = load i64, ptr %0, align 8, !tbaa !50
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %7, label %4, !prof !78

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  br label %9

7:                                                ; preds = %15, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 3
  store i64 0, ptr %8, align 8, !tbaa !63
  ret void

9:                                                ; preds = %4, %15
  %10 = phi i64 [ 0, %4 ], [ %16, %15 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 %10, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !80
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14, !prof !81

14:                                               ; preds = %9
  store i64 0, ptr %11, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %14, %9
  %16 = add nuw i64 %10, 1
  %17 = icmp eq i64 %16, %2
  br i1 %17, label %7, label %9, !prof !82, !llvm.loop !83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1023XalanDOMStringHashTable15getBucketCountsERNS_11XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 !prof !84 {
  %3 = alloca i64, align 8
  %4 = load i64, ptr %0, align 8, !tbaa !50
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %14, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !79
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 %10, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !80
  store i64 %13, ptr %3, align 8, !tbaa !85
  call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %14 = add nuw i64 %10, 1
  %15 = load i64, ptr %0, align 8, !tbaa !50
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %9, label %8, !llvm.loop !86
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findERKNS_14XalanDOMStringEPm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !84 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !87
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %9, i32 noundef %11, ptr noundef %2)
  ret ptr %12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 align 2 !prof !91 {
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %6, label %17, !prof !92

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %1, %4 ]
  %8 = load i16, ptr %7, align 2, !tbaa !93
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %9, label %11, label %6, !llvm.loop !95

11:                                               ; preds = %6
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %4, %11
  %18 = phi i32 [ %16, %11 ], [ %2, %4 ]
  %19 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef %1, i32 noundef %18)
  %20 = zext i32 %19 to i64
  %21 = load i64, ptr %0, align 8, !tbaa !50
  %22 = urem i64 %20, %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = icmp eq ptr %3, null
  br i1 %25, label %27, label %26, !prof !92

26:                                               ; preds = %17
  store i64 %22, ptr %3, align 8, !tbaa !85
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %24, i64 %22, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %24, i64 %22, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !80
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = tail call noundef ptr @_ZSt9__find_ifIPKPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_20equalsXalanDOMStringEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %29, ptr noundef %32, ptr %1, i32 %18)
  %34 = load ptr, ptr %28, align 8, !tbaa !96
  %35 = load i64, ptr %30, align 8, !tbaa !80
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %40, label %38, !prof !97

38:                                               ; preds = %27
  %39 = load ptr, ptr %33, align 8, !tbaa !98
  br label %40

40:                                               ; preds = %27, %38
  %41 = phi ptr [ %39, %38 ], [ null, %27 ]
  ret ptr %41
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !84 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !87
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef %9, i32 noundef %11)
  %13 = zext i32 %12 to i64
  %14 = load i64, ptr %0, align 8, !tbaa !50
  %15 = urem i64 %13, %14
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 %15
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 %15, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !99
  %23 = icmp ult i64 %22, %20
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %20)
  br label %25

25:                                               ; preds = %2, %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %1, ptr %3, align 8, !tbaa !98
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !63
  %28 = add i64 %27, 1
  store i64 %28, ptr %26, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm(ptr nocapture noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %4 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 %2, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !99
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %14, label %39, !prof !101

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %15 = load ptr, ptr %8, align 8, !tbaa !71
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %10) #12
  %16 = load ptr, ptr %8, align 8, !tbaa !71
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 %2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !80
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 %2, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !99
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 %2, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = load ptr, ptr %4, align 8, !tbaa !71
  store ptr %23, ptr %8, align 8, !tbaa !71
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !80
  store i64 %25, ptr %17, align 8, !tbaa !80
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !99
  store i64 %27, ptr %19, align 8, !tbaa !99
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  store ptr %29, ptr %21, align 8, !tbaa !96
  store ptr %16, ptr %4, align 8, !tbaa !71
  store i64 %18, ptr %24, align 8, !tbaa !80
  store i64 %20, ptr %26, align 8, !tbaa !99
  store ptr %22, ptr %28, align 8, !tbaa !96
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %38, label %31, !prof !102

31:                                               ; preds = %14
  %32 = load ptr, ptr %16, align 8, !tbaa !65
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %22)
          to label %38 unwind label %35

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #11
  unreachable

38:                                               ; preds = %14, %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br label %39

39:                                               ; preds = %3, %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr %1, ptr %5, align 8, !tbaa !98
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringHashTable", ptr %0, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !63
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8, !tbaa !63
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false, !prof !104
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %7, i1 %10, i1 false, !prof !104
  br i1 %11, label %12, label %42, !prof !104

12:                                               ; preds = %1
  %13 = load i64, ptr %8, align 8, !tbaa !62
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21, !prof !68

15:                                               ; preds = %38, %12
  %16 = load ptr, ptr %0, align 8, !tbaa !60
  %17 = load ptr, ptr %4, align 8, !tbaa !61
  %18 = load ptr, ptr %16, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17), !prof !105
  br label %42

21:                                               ; preds = %12, %38
  %22 = phi i64 [ %39, %38 ], [ 0, %12 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !61
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 %22, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !99
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %38, label %27, !prof !106

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 %22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr %28, align 8, !tbaa !71
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35, !prof !107

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #11
  unreachable

38:                                               ; preds = %21, %27
  %39 = add nuw i64 %22, 1
  %40 = load i64, ptr %8, align 8, !tbaa !62
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %21, label %15, !prof !108, !llvm.loop !109

42:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !84 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !113
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !114

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = getelementptr inbounds i64, ptr %11, i64 %5
  %13 = load i64, ptr %1, align 8, !tbaa !85
  store i64 %13, ptr %12, align 8, !tbaa !85
  %14 = load i64, ptr %4, align 8, !tbaa !111
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !111
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %22 = load ptr, ptr %0, align 8, !tbaa !116
  call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !116
  %25 = load i64, ptr %4, align 8, !tbaa !111
  %26 = load i64, ptr %6, align 8, !tbaa !113
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %29, ptr %0, align 8, !tbaa !116
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !111
  store i64 %31, ptr %4, align 8, !tbaa !111
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !113
  store i64 %33, ptr %6, align 8, !tbaa !113
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !115
  store ptr %35, ptr %27, align 8, !tbaa !115
  store ptr %24, ptr %3, align 8, !tbaa !116
  store i64 %25, ptr %30, align 8, !tbaa !111
  store i64 %26, ptr %32, align 8, !tbaa !113
  store ptr %28, ptr %34, align 8, !tbaa !115
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !65
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #11
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !113
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = load ptr, ptr %3, align 8, !tbaa !116
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #11
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !116
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !111
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !117

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !116
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !111
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !113
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !118
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !115
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  %24 = load i64, ptr %9, align 8, !tbaa !111
  %25 = getelementptr inbounds i64, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !114

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !116
  %28 = load i64, ptr %6, align 8, !tbaa !111
  %29 = load i64, ptr %7, align 8, !tbaa !113
  %30 = load ptr, ptr %8, align 8, !tbaa !115
  %31 = load ptr, ptr %5, align 8, !tbaa !116
  store ptr %31, ptr %0, align 8, !tbaa !116
  %32 = load i64, ptr %14, align 8, !tbaa !111
  store i64 %32, ptr %6, align 8, !tbaa !111
  %33 = load i64, ptr %15, align 8, !tbaa !113
  store i64 %33, ptr %7, align 8, !tbaa !113
  %34 = load ptr, ptr %21, align 8, !tbaa !115
  store ptr %34, ptr %8, align 8, !tbaa !115
  store ptr %27, ptr %5, align 8, !tbaa !116
  store i64 %28, ptr %14, align 8, !tbaa !111
  store i64 %29, ptr %15, align 8, !tbaa !113
  store ptr %30, ptr %21, align 8, !tbaa !115
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !114

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #11
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !113
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !115
  %50 = load ptr, ptr %5, align 8, !tbaa !116
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #11
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !119

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !65
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !118
  store ptr %65, ptr %8, align 8, !tbaa !115
  store i64 %3, ptr %7, align 8, !tbaa !113
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %133, label %11, !prof !121

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !111
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds i64, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !113
  br i1 %18, label %21, label %39, !prof !122

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !123

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %133, label %26, !prof !124

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !115
  %28 = load i64, ptr %12, align 8, !tbaa !111
  %29 = getelementptr i64, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load i64, ptr %31, align 8, !tbaa !85
  store i64 %33, ptr %32, align 8, !tbaa !85
  %34 = getelementptr inbounds i64, ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !111
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !111
  %37 = getelementptr inbounds i64, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !125, !llvm.loop !126

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %42 = load ptr, ptr %0, align 8, !tbaa !116
  store ptr %42, ptr %5, align 8, !tbaa !116
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !111
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !113
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !115
  %51 = load i64, ptr %43, align 8, !tbaa !111
  %52 = getelementptr inbounds i64, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !115
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !115
  %56 = load i64, ptr %43, align 8, !tbaa !111
  %57 = getelementptr inbounds i64, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !115
  %60 = load i64, ptr %43, align 8, !tbaa !111
  %61 = getelementptr inbounds i64, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !115
  %63 = load i64, ptr %12, align 8, !tbaa !111
  %64 = getelementptr inbounds i64, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !116
  %67 = load i64, ptr %12, align 8, !tbaa !111
  %68 = load i64, ptr %19, align 8, !tbaa !113
  %69 = load ptr, ptr %15, align 8, !tbaa !115
  %70 = load ptr, ptr %5, align 8, !tbaa !116
  store ptr %70, ptr %0, align 8, !tbaa !116
  %71 = load i64, ptr %43, align 8, !tbaa !111
  store i64 %71, ptr %12, align 8, !tbaa !111
  %72 = load i64, ptr %44, align 8, !tbaa !113
  store i64 %72, ptr %19, align 8, !tbaa !113
  %73 = load ptr, ptr %50, align 8, !tbaa !115
  store ptr %73, ptr %15, align 8, !tbaa !115
  store ptr %66, ptr %5, align 8, !tbaa !116
  store i64 %67, ptr %43, align 8, !tbaa !111
  store i64 %68, ptr %44, align 8, !tbaa !113
  store ptr %69, ptr %50, align 8, !tbaa !115
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !65
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #11
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %133

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !113
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !115
  %89 = load ptr, ptr %5, align 8, !tbaa !116
  %90 = load ptr, ptr %89, align 8, !tbaa !65
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #11
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
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
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds i64, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !127

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds i64, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !128

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %133

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i64, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE10doPushBackERKm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds i64, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !129

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i64, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %133

133:                                              ; preds = %30, %24, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !116
  call void @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !116
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = load ptr, ptr %3, align 8, !tbaa !116
  store ptr %12, ptr %0, align 8, !tbaa !116
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !111
  store i64 %14, ptr %6, align 8, !tbaa !111
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !113
  store i64 %16, ptr %8, align 8, !tbaa !113
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  store ptr %18, ptr %10, align 8, !tbaa !115
  store ptr %5, ptr %3, align 8, !tbaa !116
  store i64 %7, ptr %13, align 8, !tbaa !111
  store i64 %9, ptr %15, align 8, !tbaa !113
  store ptr %11, ptr %17, align 8, !tbaa !115
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !114

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #11
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_20equalsXalanDOMStringEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2, i32 %3) local_unnamed_addr #1 comdat !prof !91 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %71, !prof !130

10:                                               ; preds = %4, %67
  %11 = phi i64 [ %69, %67 ], [ %8, %4 ]
  %12 = phi ptr [ %68, %67 ], [ %0, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !89
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %17, label %25, !prof !131

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %13, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !87
  %20 = icmp eq i64 %19, 0
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = select i1 %20, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22, !prof !132
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %23, i32 noundef %3)
  br i1 %24, label %128, label %25, !prof !133

25:                                               ; preds = %10, %17
  %26 = getelementptr inbounds ptr, ptr %12, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !89
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %39, !prof !134

31:                                               ; preds = %25
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %27, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !87
  %34 = icmp eq i64 %33, 0
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %27, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = select i1 %34, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36, !prof !135
  %38 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %37, i32 noundef %3)
  br i1 %38, label %122, label %39, !prof !136

39:                                               ; preds = %25, %31
  %40 = getelementptr inbounds ptr, ptr %12, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !89
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %45, label %53, !prof !137

45:                                               ; preds = %39
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %41, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !87
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %41, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50, !prof !138
  %52 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %51, i32 noundef %3)
  br i1 %52, label %124, label %53, !prof !139

53:                                               ; preds = %39, %45
  %54 = getelementptr inbounds ptr, ptr %12, i64 3
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !89
  %58 = icmp eq i32 %57, %3
  br i1 %58, label %59, label %67, !prof !140

59:                                               ; preds = %53
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %55, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !87
  %62 = icmp eq i64 %61, 0
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %55, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = select i1 %62, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %64, !prof !141
  %66 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %65, i32 noundef %3)
  br i1 %66, label %126, label %67, !prof !142

67:                                               ; preds = %53, %59
  %68 = getelementptr inbounds ptr, ptr %12, i64 4
  %69 = add nsw i64 %11, -1
  %70 = icmp sgt i64 %11, 1
  br i1 %70, label %10, label %71, !prof !143, !llvm.loop !144

71:                                               ; preds = %67, %4
  %72 = phi ptr [ %0, %4 ], [ %68, %67 ]
  %73 = ptrtoint ptr %72 to i64
  %74 = sub i64 %5, %73
  %75 = ashr exact i64 %74, 3
  switch i64 %75, label %121 [
    i64 3, label %76
    i64 2, label %91
    i64 1, label %107
  ], !prof !145

76:                                               ; preds = %71
  %77 = load ptr, ptr %72, align 8, !tbaa !98
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !89
  %80 = icmp eq i32 %79, %3
  br i1 %80, label %81, label %89, !prof !146

81:                                               ; preds = %76
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %77, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !87
  %84 = icmp eq i64 %83, 0
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %77, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8
  %87 = select i1 %84, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %86, !prof !147
  %88 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %87, i32 noundef %3)
  br i1 %88, label %128, label %89, !prof !148

89:                                               ; preds = %76, %81
  %90 = getelementptr inbounds ptr, ptr %72, i64 1
  br label %91

91:                                               ; preds = %71, %89
  %92 = phi ptr [ %72, %71 ], [ %90, %89 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !98
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !89
  %96 = icmp eq i32 %95, %3
  br i1 %96, label %97, label %105, !prof !149

97:                                               ; preds = %91
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %93, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !87
  %100 = icmp eq i64 %99, 0
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %93, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = select i1 %100, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %102, !prof !150
  %104 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %103, i32 noundef %3)
  br i1 %104, label %128, label %105, !prof !151

105:                                              ; preds = %97, %91
  %106 = getelementptr inbounds ptr, ptr %92, i64 1
  br label %107

107:                                              ; preds = %71, %105
  %108 = phi ptr [ %106, %105 ], [ %72, %71 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !98
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !89
  %112 = icmp eq i32 %111, %3
  br i1 %112, label %113, label %121, !prof !152

113:                                              ; preds = %107
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %109, i64 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !87
  %116 = icmp eq i64 %115, 0
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %109, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = select i1 %116, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %118, !prof !153
  %120 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef %119, i32 noundef %3)
  br i1 %120, label %128, label %121, !prof !154

121:                                              ; preds = %107, %113, %71
  br label %128

122:                                              ; preds = %31
  %123 = getelementptr inbounds ptr, ptr %12, i64 1
  br label %128

124:                                              ; preds = %45
  %125 = getelementptr inbounds ptr, ptr %12, i64 2
  br label %128

126:                                              ; preds = %59
  %127 = getelementptr inbounds ptr, ptr %12, i64 3
  br label %128

128:                                              ; preds = %17, %122, %124, %126, %113, %97, %81, %121
  %129 = phi ptr [ %1, %121 ], [ %72, %81 ], [ %92, %97 ], [ %108, %113 ], [ %123, %122 ], [ %125, %124 ], [ %127, %126 ], [ %12, %17 ]
  ret ptr %129
}

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !71
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !71
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !99
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = load ptr, ptr %3, align 8, !tbaa !71
  store ptr %12, ptr %0, align 8, !tbaa !71
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !80
  store i64 %14, ptr %6, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !99
  store i64 %16, ptr %8, align 8, !tbaa !99
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  store ptr %18, ptr %10, align 8, !tbaa !96
  store ptr %5, ptr %3, align 8, !tbaa !71
  store i64 %7, ptr %13, align 8, !tbaa !80
  store i64 %9, ptr %15, align 8, !tbaa !99
  store ptr %11, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !102

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #11
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !71
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !80
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !156

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !71
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !99
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !157
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !96
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = load i64, ptr %9, align 8, !tbaa !80
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !158

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !71
  %28 = load i64, ptr %6, align 8, !tbaa !80
  %29 = load i64, ptr %7, align 8, !tbaa !99
  %30 = load ptr, ptr %8, align 8, !tbaa !96
  %31 = load ptr, ptr %5, align 8, !tbaa !71
  store ptr %31, ptr %0, align 8, !tbaa !71
  %32 = load i64, ptr %14, align 8, !tbaa !80
  store i64 %32, ptr %6, align 8, !tbaa !80
  %33 = load i64, ptr %15, align 8, !tbaa !99
  store i64 %33, ptr %7, align 8, !tbaa !99
  %34 = load ptr, ptr %21, align 8, !tbaa !96
  store ptr %34, ptr %8, align 8, !tbaa !96
  store ptr %27, ptr %5, align 8, !tbaa !71
  store i64 %28, ptr %14, align 8, !tbaa !80
  store i64 %29, ptr %15, align 8, !tbaa !99
  store ptr %30, ptr %21, align 8, !tbaa !96
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !158

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #11
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !99
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !96
  %50 = load ptr, ptr %5, align 8, !tbaa !71
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #11
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !159

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !65
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !160
  store ptr %65, ptr %8, align 8, !tbaa !96
  store i64 %3, ptr %7, align 8, !tbaa !99
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !162

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !80
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !99
  br i1 %18, label %21, label %39, !prof !158

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !162

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !163

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !96
  %28 = load i64, ptr %12, align 8, !tbaa !80
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !98
  store ptr %34, ptr %32, align 8, !tbaa !98
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !164, !llvm.loop !165

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  %42 = load ptr, ptr %0, align 8, !tbaa !71
  store ptr %42, ptr %5, align 8, !tbaa !71
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !80
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !99
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !96
  %51 = load i64, ptr %43, align 8, !tbaa !80
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !96
  %56 = load i64, ptr %43, align 8, !tbaa !80
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !96
  %60 = load i64, ptr %43, align 8, !tbaa !80
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !96
  %63 = load i64, ptr %12, align 8, !tbaa !80
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !71
  %67 = load i64, ptr %12, align 8, !tbaa !80
  %68 = load i64, ptr %19, align 8, !tbaa !99
  %69 = load ptr, ptr %15, align 8, !tbaa !96
  %70 = load ptr, ptr %5, align 8, !tbaa !71
  store ptr %70, ptr %0, align 8, !tbaa !71
  %71 = load i64, ptr %43, align 8, !tbaa !80
  store i64 %71, ptr %12, align 8, !tbaa !80
  %72 = load i64, ptr %44, align 8, !tbaa !99
  store i64 %72, ptr %19, align 8, !tbaa !99
  %73 = load ptr, ptr %50, align 8, !tbaa !96
  store ptr %73, ptr %15, align 8, !tbaa !96
  store ptr %66, ptr %5, align 8, !tbaa !71
  store i64 %67, ptr %43, align 8, !tbaa !80
  store i64 %68, ptr %44, align 8, !tbaa !99
  store ptr %69, ptr %50, align 8, !tbaa !96
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !65
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #11
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !99
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !96
  %89 = load ptr, ptr %5, align 8, !tbaa !71
  %90 = load ptr, ptr %89, align 8, !tbaa !65
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #11
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !166

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !167

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !168

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
  store i64 %36, ptr %12, align 8, !tbaa !80
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !99
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !170

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %13, ptr %12, align 8, !tbaa !98
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !80
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !162
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %21 = load ptr, ptr %0, align 8, !tbaa !71
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !158

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !71
  %24 = load i64, ptr %4, align 8, !tbaa !80
  %25 = load i64, ptr %6, align 8, !tbaa !99
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !96
  %28 = load ptr, ptr %3, align 8, !tbaa !71
  store ptr %28, ptr %0, align 8, !tbaa !71
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !80
  store i64 %30, ptr %4, align 8, !tbaa !80
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !99
  store i64 %32, ptr %6, align 8, !tbaa !99
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  store ptr %34, ptr %26, align 8, !tbaa !96
  store ptr %23, ptr %3, align 8, !tbaa !71
  store i64 %24, ptr %29, align 8, !tbaa !80
  store i64 %25, ptr %31, align 8, !tbaa !99
  store ptr %27, ptr %33, align 8, !tbaa !96
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !162

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !171

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #11
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !99
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !96
  %52 = load ptr, ptr %3, align 8, !tbaa !71
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #11
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringHashTableC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE14allocateMemMgrEmRN11xercesc_2_713MemoryManagerE, i64 6}
!36 = !{ptr @_ZN11xalanc_1_1024XalanMemMngArrayAllocateINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE14allocateMemMgrEmRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv, i64 6}
!37 = !{ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm, ptr @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj, i64 3830499}
!38 = !{ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm, ptr @_ZSt9__find_ifIPKPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_20equalsXalanDOMStringEEEET_SB_SB_T0_St26random_access_iterator_tag, i64 3830499}
!39 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 1142}
!40 = !{ptr @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 35900}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_, i64 3}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE6insertEPmPKmS6_, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm, i64 2}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 3}
!44 = !{ptr @_ZSt9__find_ifIPKPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_20equalsXalanDOMStringEEEET_SB_SB_T0_St26random_access_iterator_tag, ptr @_ZN11xalanc_1_106equalsEPKtS1_j, i64 4592408}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_, i64 2226}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 2226}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 2226}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 6}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !52, i64 0, !52, i64 8, !55, i64 16, !52, i64 40, !58, i64 48}
!52 = !{!"long", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !56, i64 0}
!56 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !57, i64 0, !57, i64 8, !52, i64 16}
!57 = !{!"any pointer", !53, i64 0}
!58 = !{!"int", !53, i64 0}
!59 = !{!51, !52, i64 8}
!60 = !{!56, !57, i64 0}
!61 = !{!56, !57, i64 8}
!62 = !{!56, !52, i64 16}
!63 = !{!51, !52, i64 40}
!64 = !{!51, !58, i64 48}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !54, i64 0}
!67 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!68 = !{!"branch_weights", i32 1, i32 191}
!69 = !{!55, !52, i64 16}
!70 = !{!"branch_weights", i32 6, i32 0}
!71 = !{!72, !57, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !57, i64 0, !52, i64 8, !52, i64 16, !57, i64 24}
!73 = !{!"branch_weights", i32 191, i32 76545}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!"function_entry_count", i64 1}
!78 = !{!"branch_weights", i32 1, i32 127}
!79 = !{!55, !57, i64 8}
!80 = !{!72, !52, i64 8}
!81 = !{!"branch_weights", i32 13, i32 88}
!82 = !{!"branch_weights", i32 127, i32 12801}
!83 = distinct !{!83, !75, !76}
!84 = !{!"function_entry_count", i64 0}
!85 = !{!52, !52, i64 0}
!86 = distinct !{!86, !75, !76}
!87 = !{!88, !52, i64 8}
!88 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !57, i64 0, !52, i64 8, !52, i64 16, !57, i64 24}
!89 = !{!90, !58, i64 32}
!90 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !88, i64 0, !58, i64 32}
!91 = !{!"function_entry_count", i64 3830499}
!92 = !{!"branch_weights", i32 0, i32 3830499}
!93 = !{!94, !94, i64 0}
!94 = !{!"short", !53, i64 0}
!95 = distinct !{!95, !75, !76}
!96 = !{!72, !57, i64 24}
!97 = !{!"branch_weights", i32 35900, i32 3794599}
!98 = !{!57, !57, i64 0}
!99 = !{!72, !52, i64 16}
!100 = !{!"function_entry_count", i64 35900}
!101 = !{!"branch_weights", i32 1142, i32 34758}
!102 = !{!"branch_weights", i32 1142, i32 0}
!103 = !{!"function_entry_count", i64 12}
!104 = !{!"branch_weights", i32 6, i32 6}
!105 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!106 = !{!"branch_weights", i32 2108, i32 1142}
!107 = !{!"VP", i32 0, i64 1142, i64 -7405368087501025645, i64 1142}
!108 = !{!"branch_weights", i32 76545, i32 191}
!109 = distinct !{!109, !75, !76}
!110 = !{!"function_entry_count", i64 3}
!111 = !{!112, !52, i64 8}
!112 = !{!"_ZTSN11xalanc_1_1011XalanVectorImNS_31MemoryManagedConstructionTraitsImEEEE", !57, i64 0, !52, i64 8, !52, i64 16, !57, i64 24}
!113 = !{!112, !52, i64 16}
!114 = !{!"branch_weights", i32 3, i32 0}
!115 = !{!112, !57, i64 24}
!116 = !{!112, !57, i64 0}
!117 = !{!"branch_weights", i32 3, i32 3}
!118 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!119 = !{!"branch_weights", i32 0, i32 3}
!120 = !{!"function_entry_count", i64 5}
!121 = !{!"branch_weights", i32 0, i32 5}
!122 = !{!"branch_weights", i32 5, i32 0}
!123 = !{!"branch_weights", i32 2, i32 3}
!124 = !{!"branch_weights", i32 1, i32 159}
!125 = !{!"branch_weights", i32 159, i32 193}
!126 = distinct !{!126, !75, !76}
!127 = distinct !{!127, !75, !76}
!128 = distinct !{!128, !75, !76}
!129 = distinct !{!129, !75, !76}
!130 = !{!"branch_weights", i32 1792611, i32 847146}
!131 = !{!"branch_weights", i32 1107151, i32 685460}
!132 = !{!"branch_weights", i32 0, i32 1107151}
!133 = !{!"branch_weights", i32 952521, i32 154630}
!134 = !{!"branch_weights", i32 184272, i32 655818}
!135 = !{!"branch_weights", i32 0, i32 184272}
!136 = !{!"branch_weights", i32 61757, i32 122515}
!137 = !{!"branch_weights", i32 174133, i32 604200}
!138 = !{!"branch_weights", i32 0, i32 174133}
!139 = !{!"branch_weights", i32 64437, i32 109696}
!140 = !{!"branch_weights", i32 238195, i32 475701}
!141 = !{!"branch_weights", i32 0, i32 238195}
!142 = !{!"branch_weights", i32 112027, i32 126168}
!143 = !{!"branch_weights", i32 0, i32 1792611}
!144 = distinct !{!144, !75, !76}
!145 = !{!"branch_weights", i32 9420, i32 140943, i32 600267, i32 1889127}
!146 = !{!"branch_weights", i32 35661, i32 105282}
!147 = !{!"branch_weights", i32 0, i32 35661}
!148 = !{!"branch_weights", i32 31585, i32 4076}
!149 = !{!"branch_weights", i32 283258, i32 426367}
!150 = !{!"branch_weights", i32 0, i32 283258}
!151 = !{!"branch_weights", i32 241325, i32 41933}
!152 = !{!"branch_weights", i32 2342798, i32 14629}
!153 = !{!"branch_weights", i32 0, i32 2342798}
!154 = !{!"branch_weights", i32 2330947, i32 11851}
!155 = !{!"function_entry_count", i64 3368}
!156 = !{!"branch_weights", i32 1142, i32 2226}
!157 = !{!"VP", i32 0, i64 2226, i64 8345045103670217670, i64 2226}
!158 = !{!"branch_weights", i32 2226, i32 0}
!159 = !{!"branch_weights", i32 0, i32 1142}
!160 = !{!"VP", i32 0, i64 1142, i64 8345045103670217670, i64 1142}
!161 = !{!"function_entry_count", i64 2226}
!162 = !{!"branch_weights", i32 0, i32 2226}
!163 = !{!"branch_weights", i32 1, i32 2225}
!164 = !{!"branch_weights", i32 2225, i32 45474}
!165 = distinct !{!165, !75, !76}
!166 = distinct !{!166, !75, !76}
!167 = distinct !{!167, !75, !76}
!168 = distinct !{!168, !75, !76}
!169 = !{!"function_entry_count", i64 38126}
!170 = !{!"branch_weights", i32 35900, i32 2226}
!171 = !{!"VP", i32 0, i64 2226, i64 -7405368087501025645, i64 2226}

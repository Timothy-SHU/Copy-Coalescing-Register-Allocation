; ModuleID = 'XalanDOMStringPool.cpp'
source_filename = "XalanDOMStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv = comdat any

@_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1018XalanDOMStringPoolE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018XalanDOMStringPoolE, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD0Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, ptr @_ZNK11xalanc_1_1018XalanDOMStringPool4sizeEv, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018XalanDOMStringPoolE = dso_local constant [36 x i8] c"N11xalanc_1_1018XalanDOMStringPoolE\00", align 1
@_ZTIN11xalanc_1_1018XalanDOMStringPoolE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018XalanDOMStringPoolE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanDOMStringPool.cpp, ptr null }]

@_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm = dso_local unnamed_addr alias void (ptr, ptr, i64, i64, i64), ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm
@_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1018XalanDOMStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  store i64 0, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %3, i64 noundef %4)
          to label %9 unwind label %10, !prof !69

9:                                                ; preds = %5
  ret void

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  resume { ptr, i32 } %11
}

declare void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1018XalanDOMStringPool6createERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %5 = load ptr, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 112)
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3)
          to label %9 unwind label %10

9:                                                ; preds = %4
  ret ptr %8

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %8, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !54
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #13
  unreachable

20:                                               ; preds = %10, %13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1018XalanDOMStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3, i32 2
  invoke void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %6 unwind label %3, !prof !69

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %3)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  store i64 0, ptr %4, align 8, !tbaa !57
  ret void
}

declare void @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1018XalanDOMStringPool4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) unnamed_addr #7 align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !57
  ret i64 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #8 align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !72
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7, !prof !74
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = load ptr, ptr %0, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %8, i32 noundef %10), !prof !77
  ret ptr %14
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 align 2 !prof !78 {
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %36, label %6, !prof !79

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !80
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %36, label %9, !prof !82

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, -1
  br i1 %10, label %11, label %22, !prof !83

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %15, %11 ], [ %1, %9 ]
  %13 = load i16, ptr %12, align 2, !tbaa !80
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  br i1 %14, label %16, label %11, !prof !84, !llvm.loop !85

16:                                               ; preds = %11
  %17 = ptrtoint ptr %12 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %9, %16
  %23 = phi i32 [ %21, %16 ], [ %2, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 3
  %25 = call noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm(ptr noundef nonnull align 8 dereferenceable(52) %24, ptr noundef nonnull %1, i32 noundef %23, ptr noundef nonnull %4)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34, !prof !88

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 1
  %29 = call noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull %1, i32 noundef %23)
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringPool", ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !57
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !57
  %33 = load i64, ptr %4, align 8, !tbaa !89
  call void @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm(ptr noundef nonnull align 8 dereferenceable(52) %24, ptr noundef nonnull align 8 dereferenceable(36) %29, i64 noundef %33)
  br label %34

34:                                               ; preds = %22, %27
  %35 = phi ptr [ %29, %27 ], [ %25, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %36

36:                                               ; preds = %3, %6, %34
  %37 = phi ptr [ %35, %34 ], [ @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, %6 ], [ @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, %3 ]
  ret ptr %37
}

declare noundef ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = load ptr, ptr %0, align 8, !tbaa !94
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !95

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !52 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !97
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false, !prof !98
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %7, i1 %10, i1 false, !prof !98
  br i1 %11, label %12, label %42, !prof !98

12:                                               ; preds = %1
  %13 = load i64, ptr %8, align 8, !tbaa !99
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21, !prof !100

15:                                               ; preds = %38, %12
  %16 = load ptr, ptr %0, align 8, !tbaa !97
  %17 = load ptr, ptr %4, align 8, !tbaa !101
  %18 = load ptr, ptr %16, align 8, !tbaa !54
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17), !prof !102
  br label %42

21:                                               ; preds = %12, %38
  %22 = phi i64 [ %39, %38 ], [ 0, %12 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !101
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %23, i64 %22, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !103
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %38, label %27, !prof !105

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %23, i64 %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %23, i64 %22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = load ptr, ptr %28, align 8, !tbaa !107
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35, !prof !108

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #13
  unreachable

38:                                               ; preds = %21, %27
  %39 = add nuw i64 %22, 1
  %40 = load i64, ptr %8, align 8, !tbaa !99
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %21, label %15, !prof !109, !llvm.loop !110

42:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !112, !noalias !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !116

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !117, !noalias !113
  %8 = load ptr, ptr %7, align 8, !tbaa !54, !noalias !113
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !113
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !118, !noalias !113
  store ptr %11, ptr %3, align 8, !tbaa !112, !noalias !113
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !119, !noalias !113
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !121, !noalias !113
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !112, !noalias !122
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !119, !noalias !113
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !123

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !117, !noalias !124
  %21 = load ptr, ptr %20, align 8, !tbaa !54, !noalias !124
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !124
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !124
  store ptr %24, ptr %3, align 8, !tbaa !112, !noalias !124
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !119, !noalias !124
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !121, !noalias !124
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !112, !noalias !124
  %29 = load ptr, ptr %2, align 8, !tbaa !117
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %82, label %31, !prof !127

31:                                               ; preds = %27, %78
  %32 = phi ptr [ %80, %78 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35, !prof !129

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !130
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %39, !prof !133

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  br label %53

41:                                               ; preds = %70, %35
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !134
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45, !prof !129

45:                                               ; preds = %41
  %46 = load ptr, ptr %33, align 8, !tbaa !135
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %43)
          to label %74 unwind label %50, !prof !136

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #13
  unreachable

53:                                               ; preds = %70, %39
  %54 = phi i64 [ 0, %39 ], [ %71, %70 ]
  %55 = load ptr, ptr %40, align 8, !tbaa !134
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %55, i64 %54
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !91
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %70, label %60, !prof !92

60:                                               ; preds = %53
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !93
  %63 = load ptr, ptr %56, align 8, !tbaa !94
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %62)
          to label %70 unwind label %67, !prof !95

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  tail call void @__clang_call_terminate(ptr %69) #13
  unreachable

70:                                               ; preds = %60, %53
  %71 = add nuw i64 %54, 1
  %72 = load i64, ptr %36, align 8, !tbaa !130
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %53, label %41, !prof !137, !llvm.loop !138

74:                                               ; preds = %41, %45
  %75 = load ptr, ptr %29, align 8, !tbaa !54
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !136
  br label %78

78:                                               ; preds = %74, %31
  %79 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %32, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !119, !noalias !139
  %81 = icmp eq ptr %80, %28
  br i1 %81, label %82, label %31, !prof !142, !llvm.loop !143

82:                                               ; preds = %78, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !112, !noalias !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !123

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !117, !noalias !144
  %7 = load ptr, ptr %6, align 8, !tbaa !54, !noalias !144
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !144
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !144
  store ptr %10, ptr %2, align 8, !tbaa !112, !noalias !144
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !119, !noalias !144
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !121, !noalias !144
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !112, !noalias !144
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !119, !noalias !144
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !112, !noalias !147
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !150

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !117, !noalias !147
  %24 = load ptr, ptr %23, align 8, !tbaa !54, !noalias !147
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !147
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !147
  store ptr %27, ptr %2, align 8, !tbaa !112, !noalias !147
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !119, !noalias !147
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !121, !noalias !147
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !112, !noalias !147
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !151

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !121
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !119
  %39 = load ptr, ptr %34, align 8, !tbaa !119
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !121
  store ptr null, ptr %36, align 8, !tbaa !121
  %41 = load ptr, ptr %17, align 8, !tbaa !152
  store ptr %41, ptr %34, align 8, !tbaa !119
  store ptr %19, ptr %17, align 8, !tbaa !152
  br label %18, !llvm.loop !153

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanDOMStringPool.cpp() #11 section ".text.startup" !prof !70 !PGOFuncName !154 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1018XalanDOMStringPool13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 6}
!36 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC2ERN11xercesc_2_713MemoryManagerEmmm, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTableC1ERN11xercesc_2_713MemoryManagerEmm, i64 6}
!37 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayData10deallocateEv, i64 6}
!38 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD2Ev, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev, i64 6}
!39 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTable5clearEv, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, i64 837023}
!42 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZNK11xalanc_1_1023XalanDOMStringHashTable4findEPKtjPm, i64 3830499}
!43 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj, i64 35900}
!44 = !{ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, ptr @_ZN11xalanc_1_1023XalanDOMStringHashTable6insertERKNS_14XalanDOMStringEm, i64 35900}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!46 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @__clang_call_terminate, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5clearEv, i64 8}
!48 = !{ptr @_GLOBAL__sub_I_XalanDOMStringPool.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!49 = !{ptr @_GLOBAL__sub_I_XalanDOMStringPool.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!50 = !{ptr @_GLOBAL__sub_I_XalanDOMStringPool.cpp, ptr @__cxa_atexit, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!"function_entry_count", i64 6}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!58, !61, i64 48}
!58 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !59, i64 8, !61, i64 48, !65, i64 56}
!59 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !60, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !61, i64 8, !63, i64 16}
!61 = !{!"long", !62, i64 0}
!62 = !{!"omnipotent char", !56, i64 0}
!63 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"any pointer", !62, i64 0}
!65 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !61, i64 0, !61, i64 8, !66, i64 16, !61, i64 40, !68, i64 48}
!66 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !67, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !64, i64 0, !64, i64 8, !61, i64 16}
!68 = !{!"int", !62, i64 0}
!69 = !{!"branch_weights", i32 6, i32 0}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!"function_entry_count", i64 837023}
!72 = !{!73, !61, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !64, i64 0, !61, i64 8, !61, i64 16, !64, i64 24}
!74 = !{!"branch_weights", i32 832926, i32 4097}
!75 = !{!76, !68, i64 32}
!76 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !73, i64 0, !68, i64 32}
!77 = !{!"VP", i32 0, i64 837023, i64 -7593762394953346011, i64 837023}
!78 = !{!"function_entry_count", i64 4663425}
!79 = !{!"branch_weights", i32 0, i32 4663425}
!80 = !{!81, !81, i64 0}
!81 = !{!"short", !62, i64 0}
!82 = !{!"branch_weights", i32 832926, i32 3830499}
!83 = !{!"branch_weights", i32 2900799, i32 929700}
!84 = !{!"branch_weights", i32 2900799, i32 40041700}
!85 = distinct !{!85, !86, !87}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!"branch_weights", i32 35900, i32 3794599}
!89 = !{!61, !61, i64 0}
!90 = !{!"function_entry_count", i64 41814777}
!91 = !{!73, !61, i64 16}
!92 = !{!"branch_weights", i32 52000, i32 42418003}
!93 = !{!73, !64, i64 24}
!94 = !{!73, !64, i64 0}
!95 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!96 = !{!"function_entry_count", i64 12}
!97 = !{!67, !64, i64 0}
!98 = !{!"branch_weights", i32 6, i32 6}
!99 = !{!67, !61, i64 16}
!100 = !{!"branch_weights", i32 1, i32 191}
!101 = !{!67, !64, i64 8}
!102 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!103 = !{!104, !61, i64 16}
!104 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !64, i64 0, !61, i64 8, !61, i64 16, !64, i64 24}
!105 = !{!"branch_weights", i32 2108, i32 1142}
!106 = !{!104, !64, i64 24}
!107 = !{!104, !64, i64 0}
!108 = !{!"VP", i32 0, i64 1142, i64 -7405368087501025645, i64 1142}
!109 = !{!"branch_weights", i32 76545, i32 191}
!110 = distinct !{!110, !86, !87}
!111 = !{!"function_entry_count", i64 9}
!112 = !{!63, !64, i64 8}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv: argument 0"}
!115 = distinct !{!115, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv"}
!116 = !{!"branch_weights", i32 3, i32 6}
!117 = !{!63, !64, i64 0}
!118 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!119 = !{!120, !64, i64 16}
!120 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE4NodeE", !64, i64 0, !64, i64 8, !64, i64 16}
!121 = !{!120, !64, i64 8}
!122 = !{}
!123 = !{!"branch_weights", i32 0, i32 9}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!126 = distinct !{!126, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!127 = !{!"branch_weights", i32 1, i32 143}
!128 = !{!64, !64, i64 0}
!129 = !{!"branch_weights", i32 0, i32 20477}
!130 = !{!131, !61, i64 8}
!131 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEmEE", !132, i64 0, !61, i64 8, !61, i64 16, !64, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !64, i64 0}
!133 = !{!"branch_weights", i32 1, i32 20476}
!134 = !{!131, !64, i64 24}
!135 = !{!132, !64, i64 0}
!136 = !{!"VP", i32 0, i64 20477, i64 -7405368087501025645, i64 20477}
!137 = !{!"branch_weights", i32 634750, i32 20476}
!138 = distinct !{!138, !86, !87}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!141 = distinct !{!141, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!142 = !{!"branch_weights", i32 143, i32 327489}
!143 = distinct !{!143, !86, !87}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv: argument 0"}
!146 = distinct !{!146, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE5beginEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv: argument 0"}
!149 = distinct !{!149, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEE3endEv"}
!150 = !{!"branch_weights", i32 0, i32 20486}
!151 = !{!"branch_weights", i32 9, i32 20477}
!152 = !{!63, !64, i64 16}
!153 = distinct !{!153, !86, !87}
!154 = !{!"XalanDOMStringPool.cpp;_GLOBAL__sub_I_XalanDOMStringPool.cpp"}

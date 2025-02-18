; ModuleID = 'RangeTokenMap.cpp'
source_filename = "RangeTokenMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeTokenElemMap" = type { i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf.0" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.1" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.2" = type { ptr, ptr }

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE10initializeEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12RangeFactoryEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_17RangeTokenElemMapEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE9removeAllEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZN11xercesc_2_7L26rangeTokMapRegistryCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L26rangeTokMapInstanceCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_713RangeTokenMap9fInstanceE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [18 x i8] c"RangeTokenMap.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L13fgXMLCategoryE = internal constant [4 x i16] [i16 88, i16 77, i16 76, i16 0], align 2
@_ZN11xercesc_2_7L15fgASCIICategoryE = internal constant [6 x i16] [i16 65, i16 83, i16 67, i16 73, i16 73, i16 0], align 2
@_ZN11xercesc_2_7L17fgUnicodeCategoryE = internal constant [8 x i16] [i16 85, i16 78, i16 73, i16 67, i16 79, i16 68, i16 69, i16 0], align 16
@_ZN11xercesc_2_7L15fgBlockCategoryE = internal constant [6 x i16] [i16 66, i16 76, i16 79, i16 67, i16 75, i16 0], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L17sRangeTokMapMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RangeTokenMap.cpp, ptr null }]

@_ZN11xercesc_2_717RangeTokenElemMapC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN11xercesc_2_717RangeTokenElemMapC2Ej
@_ZN11xercesc_2_717RangeTokenElemMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717RangeTokenElemMapD2Ev
@_ZN11xercesc_2_713RangeTokenMapC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713RangeTokenMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713RangeTokenMapD2Ev

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer23initializeRangeTokenMapEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40)
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2)
          to label %3 unwind label %5

3:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L26rangeTokMapInstanceCleanupE, ptr noundef nonnull @_ZN11xercesc_2_713RangeTokenMap14reinitInstanceEv)
  %4 = load ptr, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_713RangeTokenMap16buildTokenRangesEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  ret void

5:                                                ; preds = %0
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %1) #12
  resume { ptr, i32 } %6
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap14reinitInstanceEv() #3 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %1 = load ptr, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !92

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %1, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #12
  br label %5

5:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap16buildTokenRangesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE)
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull %0)
  %8 = load ptr, ptr %2, align 8, !tbaa !93
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE)
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(10) %9, ptr noundef nonnull %0)
  %13 = load ptr, ptr %2, align 8, !tbaa !93
  %14 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE)
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(10) %14, ptr noundef nonnull %0)
  %18 = load ptr, ptr %2, align 8, !tbaa !93
  %19 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @_ZN11xercesc_2_7L15fgBlockCategoryE)
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(10) %19, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717RangeTokenElemMapC2Ej(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 align 2 !prof !86 {
  store i32 %1, ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenElemMap", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717RangeTokenElemMapD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !86 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  tail call void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1)
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1)
          to label %8 unwind label %19, !prof !101

8:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef 109, ptr noundef %1)
          to label %9 unwind label %21, !prof !101

9:                                                ; preds = %8
  store ptr %7, ptr %0, align 8, !tbaa !102
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1)
          to label %11 unwind label %19, !prof !101

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, i32 noundef 29, ptr noundef %1)
          to label %12 unwind label %23, !prof !101

12:                                               ; preds = %11
  store ptr %10, ptr %3, align 8, !tbaa !93
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
          to label %14 unwind label %19, !prof !101

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 109, ptr noundef %1)
          to label %15 unwind label %25, !prof !101

15:                                               ; preds = %14
  store ptr %13, ptr %4, align 8, !tbaa !103
  %16 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %1)
          to label %17 unwind label %19, !prof !101

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef %1)
          to label %18 unwind label %27, !prof !101

18:                                               ; preds = %17
  store ptr %16, ptr %5, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %39 unwind label %19, !prof !101

19:                                               ; preds = %18, %15, %12, %9, %2
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %29

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %1) #12
  br label %29

23:                                               ; preds = %11
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %1) #12
  br label %29

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %1) #12
  br label %29

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %1) #12
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %19
  %30 = phi { ptr, i32 } [ %20, %19 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ]
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = tail call ptr @__cxa_begin_catch(ptr %35) #12
  invoke void @__cxa_rethrow() #13
          to label %54 unwind label %37

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %40 unwind label %51

39:                                               ; preds = %18
  ret void

40:                                               ; preds = %37, %29
  %41 = phi ptr [ null, %37 ], [ @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv, %29 ]
  %42 = phi ptr [ null, %37 ], [ %0, %29 ]
  %43 = phi { ptr, i32 } [ %38, %37 ], [ %30, %29 ]
  %44 = icmp eq ptr %42, null
  %45 = or i1 %33, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %50 unwind label %47

47:                                               ; preds = %46
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  tail call void @__clang_call_terminate(ptr %49) #14
  unreachable

50:                                               ; preds = %40, %46
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  resume { ptr, i32 } %43

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #14
  unreachable

54:                                               ; preds = %34
  unreachable
}

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !92

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %8 unwind label %5, !prof !101

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #14
  unreachable

8:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #12
  br label %9

9:                                                ; preds = %8, %1
  store ptr null, ptr %0, align 8, !tbaa !102
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !92

13:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %17 unwind label %14, !prof !101

14:                                               ; preds = %13
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable

17:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #12
  br label %18

18:                                               ; preds = %17, %9
  store ptr null, ptr %10, align 8, !tbaa !93
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !92

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !96
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(40) %20) #12, !prof !105
  br label %26

26:                                               ; preds = %22, %18
  store ptr null, ptr %19, align 8, !tbaa !103
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !92

30:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %28) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %28) #12
  br label %31

31:                                               ; preds = %30, %26
  store ptr null, ptr %27, align 8, !tbaa !104
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  store ptr %2, ptr %0, align 8, !tbaa !106
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 1, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !113
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %9, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %10 = load ptr, ptr %0, align 8, !tbaa !106
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %10)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %13, !prof !101

12:                                               ; preds = %3
  store ptr %11, ptr %9, align 8, !tbaa !114
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #12
  resume { ptr, i32 } %14
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  store ptr %2, ptr %0, align 8, !tbaa !115
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  store i8 1, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !120
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  store ptr null, ptr %9, align 8, !tbaa !122
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %10 = load ptr, ptr %0, align 8, !tbaa !115
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %10)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %13, !prof !101

12:                                               ; preds = %3
  store ptr %11, ptr %9, align 8, !tbaa !122
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #12
  resume { ptr, i32 } %14
}

declare void @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE), !prof !123
  %8 = load ptr, ptr %2, align 8, !tbaa !103
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE), !prof !123
  %13 = load ptr, ptr %2, align 8, !tbaa !103
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE), !prof !123
  %18 = load ptr, ptr %2, align 8, !tbaa !103
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull @_ZN11xercesc_2_7L15fgBlockCategoryE), !prof !123
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  invoke void @_ZN11xercesc_2_715XMLRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10) %23)
          to label %24 unwind label %48, !prof !101

24:                                               ; preds = %1
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE, ptr noundef nonnull %23)
  %27 = load ptr, ptr %23, align 8, !tbaa !96
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(10) %23, ptr noundef nonnull %0), !prof !124
  %30 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  invoke void @_ZN11xercesc_2_717ASCIIRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10) %30)
          to label %31 unwind label %50, !prof !101

31:                                               ; preds = %24
  %32 = load ptr, ptr %25, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @_ZN11xercesc_2_7L15fgASCIICategoryE, ptr noundef nonnull %30)
  %33 = load ptr, ptr %30, align 8, !tbaa !96
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(10) %30, ptr noundef nonnull %0), !prof !125
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  invoke void @_ZN11xercesc_2_719UnicodeRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10) %36)
          to label %37 unwind label %52, !prof !101

37:                                               ; preds = %31
  %38 = load ptr, ptr %25, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull @_ZN11xercesc_2_7L17fgUnicodeCategoryE, ptr noundef nonnull %36)
  %39 = load ptr, ptr %36, align 8, !tbaa !96
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(10) %36, ptr noundef nonnull %0), !prof !126
  %42 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  invoke void @_ZN11xercesc_2_717BlockRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10) %42)
          to label %43 unwind label %54, !prof !101

43:                                               ; preds = %37
  %44 = load ptr, ptr %25, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull @_ZN11xercesc_2_7L15fgBlockCategoryE, ptr noundef nonnull %42)
  %45 = load ptr, ptr %42, align 8, !tbaa !96
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(10) %42, ptr noundef nonnull %0), !prof !127
  ret void

48:                                               ; preds = %1
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %56

50:                                               ; preds = %24
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %56

52:                                               ; preds = %31
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %56

54:                                               ; preds = %37
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %56

56:                                               ; preds = %54, %52, %50, %48
  %57 = phi ptr [ %42, %54 ], [ %36, %52 ], [ %30, %50 ], [ %23, %48 ]
  %58 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %57) #12
  resume { ptr, i32 } %58
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !86 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMapD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713RangeTokenMap8getRangeEPKtb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %4 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1)
  br i1 %6, label %7, label %63, !prof !129

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !102
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenElemMap", ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenElemMap", ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = select i1 %2, ptr %12, ptr %13, !prof !130
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %63, !prof !131

16:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 4
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %17)
  %18 = load ptr, ptr %10, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = select i1 %2, ptr %18, ptr %19, !prof !92
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %61, !prof !101

22:                                               ; preds = %16
  %23 = load i32, ptr %9, align 8, !tbaa !98
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = getelementptr inbounds ptr, ptr %26, i64 10
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %23)
          to label %30 unwind label %55, !prof !132

30:                                               ; preds = %22
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef %29)
          to label %34 unwind label %57, !prof !101

34:                                               ; preds = %30
  %35 = icmp eq ptr %33, null
  br i1 %35, label %61, label %36, !prof !92

36:                                               ; preds = %34
  %37 = load ptr, ptr %33, align 8, !tbaa !96
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(10) %33, ptr noundef nonnull %0)
          to label %40 unwind label %57, !prof !133

40:                                               ; preds = %36
  %41 = load ptr, ptr %10, align 8
  %42 = load ptr, ptr %11, align 8
  %43 = select i1 %2, ptr %41, ptr %42, !prof !92
  %44 = icmp eq ptr %43, null
  %45 = and i1 %44, %2
  br i1 %45, label %46, label %61, !prof !92

46:                                               ; preds = %40
  %47 = icmp eq ptr %42, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !104
  %51 = load ptr, ptr %0, align 8, !tbaa !102
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  %53 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %42, ptr noundef %50, ptr noundef %52)
          to label %54 unwind label %57

54:                                               ; preds = %48
  store ptr %53, ptr %10, align 8, !tbaa !134
  br label %61

55:                                               ; preds = %22
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %59

57:                                               ; preds = %48, %36, %30
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  resume { ptr, i32 } %60

61:                                               ; preds = %34, %46, %54, %40, %16
  %62 = phi ptr [ %20, %16 ], [ %43, %40 ], [ %53, %54 ], [ null, %46 ], [ null, %34 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %63

63:                                               ; preds = %7, %61, %3
  %64 = phi ptr [ null, %3 ], [ %14, %7 ], [ %62, %61 ]
  ret ptr %64
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !135 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !111
  %7 = load ptr, ptr %0, align 8, !tbaa !106
  %8 = load ptr, ptr %4, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !136
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38, !prof !137

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !114
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = load ptr, ptr %18, align 8, !tbaa !96
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20), !prof !140
  br i1 %24, label %38, label %25, !prof !141

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !prof !142, !llvm.loop !143

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !114
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = load ptr, ptr %31, align 8, !tbaa !96
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33), !prof !140
  br i1 %37, label %38, label %25, !prof !146, !llvm.loop !143

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !111
  %7 = load ptr, ptr %0, align 8, !tbaa !106
  %8 = load ptr, ptr %4, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !148
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !92

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !114
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = load ptr, ptr %19, align 8, !tbaa !96
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !149
  br i1 %25, label %30, label %26, !prof !150

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !151, !llvm.loop !152

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !151

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !153
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !119
  %7 = load ptr, ptr %0, align 8, !tbaa !115
  %8 = load ptr, ptr %4, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !154
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !92

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !122
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !155
  %22 = load ptr, ptr %19, align 8, !tbaa !96
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !157
  br i1 %25, label %30, label %26, !prof !101

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !92, !llvm.loop !158

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !92

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !159
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap11addCategoryEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap11addRangeMapEPKtPNS_12RangeFactoryE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !160 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !119
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !161

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = load i32, ptr %4, align 8, !tbaa !119
  %16 = load ptr, ptr %0, align 8, !tbaa !115
  %17 = load ptr, ptr %14, align 8, !tbaa !96
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !162
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !118
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !163

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !122
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  %31 = load ptr, ptr %28, align 8, !tbaa !96
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !157
  br i1 %34, label %39, label %35, !prof !92

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !101, !llvm.loop !158

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42, !prof !161

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !117, !range !164, !noundef !165
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !159
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !96
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(10) %47) #12
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !159
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !155
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !115
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24), !prof !166
  %61 = load ptr, ptr %20, align 8, !tbaa !118
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  store ptr %2, ptr %60, align 8, !tbaa !159
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !167
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !155
  store ptr %60, ptr %62, align 8, !tbaa !87
  %66 = load i32, ptr %8, align 8, !tbaa !121
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !121
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds ptr, ptr %6, i64 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %2), !prof !169
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !170

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !102
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 288, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #12
  resume { ptr, i32 } %17

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !102
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %1)
  %21 = load ptr, ptr %0, align 8, !tbaa !102
  br i1 %20, label %22, label %27, !prof !170

22:                                               ; preds = %18
  %23 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %1)
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  store i32 %9, ptr %23, align 8, !tbaa !98
  br label %30

27:                                               ; preds = %18
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store i32 %9, ptr %28, align 8, !tbaa !98
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenElemMap", ptr %28, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %1, ptr noundef nonnull %28)
  br label %30

30:                                               ; preds = %22, %26, %27
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !168 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !111
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !113
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !171

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = load i32, ptr %4, align 8, !tbaa !111
  %16 = load ptr, ptr %0, align 8, !tbaa !106
  %17 = load ptr, ptr %14, align 8, !tbaa !96
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !172
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !110
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !173

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !114
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !138
  %31 = load ptr, ptr %28, align 8, !tbaa !96
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !174
  br i1 %34, label %39, label %35, !prof !175

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !176, !llvm.loop !152

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !177

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !109, !range !164, !noundef !165
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !153
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #12
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !153
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !138
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !106
  %54 = load ptr, ptr %53, align 8, !tbaa !96
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !178
  %58 = load ptr, ptr %20, align 8, !tbaa !110
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  store ptr %2, ptr %57, align 8, !tbaa !153
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !179
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !138
  store ptr %57, ptr %59, align 8, !tbaa !87
  %63 = load i32, ptr %8, align 8, !tbaa !113
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !113
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1)
  br i1 %6, label %7, label %13, !prof !181

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !102
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenElemMap", ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenElemMap", ptr %9, i64 0, i32 1
  %12 = select i1 %3, ptr %10, ptr %11, !prof !182
  store ptr %2, ptr %12, align 8, !tbaa !87
  ret void

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %15 = load ptr, ptr %0, align 8, !tbaa !102
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 289, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #12
  resume { ptr, i32 } %19
}

declare void @_ZN11xercesc_2_715XMLRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #0

declare void @_ZN11xercesc_2_717ASCIIRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #0

declare void @_ZN11xercesc_2_719UnicodeRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #0

declare void @_ZN11xercesc_2_717BlockRangeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = load ptr, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %42, !prof !131

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %6 = load ptr, ptr @_ZN11xercesc_2_7L17sRangeTokMapMutexE, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %26, !prof !101

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !87
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %9)
  %10 = load ptr, ptr @_ZN11xercesc_2_7L17sRangeTokMapMutexE, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !101

12:                                               ; preds = %8
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %14 unwind label %17, !prof !101

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15)
          to label %16 unwind label %19, !prof !101

16:                                               ; preds = %14
  store ptr %13, ptr @_ZN11xercesc_2_7L17sRangeTokMapMutexE, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L26rangeTokMapRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L22reinitRangeTokMapMutexEv)
          to label %21 unwind label %17, !prof !101

17:                                               ; preds = %16, %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %24

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %13) #12
  br label %24

21:                                               ; preds = %16, %8
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  br label %26

22:                                               ; preds = %40, %24
  %23 = phi { ptr, i32 } [ %25, %24 ], [ %41, %40 ]
  resume { ptr, i32 } %23

24:                                               ; preds = %19, %17
  %25 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  br label %22

26:                                               ; preds = %5, %21
  %27 = load ptr, ptr @_ZN11xercesc_2_7L17sRangeTokMapMutexE, align 8, !tbaa !87
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %27)
  %28 = load ptr, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %39, !prof !101

30:                                               ; preds = %26
  %31 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40)
          to label %32 unwind label %35, !prof !101

32:                                               ; preds = %30
  %33 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef %33)
          to label %34 unwind label %37, !prof !101

34:                                               ; preds = %32
  store ptr %31, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L26rangeTokMapInstanceCleanupE, ptr noundef nonnull @_ZN11xercesc_2_713RangeTokenMap14reinitInstanceEv)
          to label %39 unwind label %35, !prof !101

35:                                               ; preds = %34, %30
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %40

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %31) #12
  br label %40

39:                                               ; preds = %34, %26
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %42

40:                                               ; preds = %37, %35
  %41 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %22

42:                                               ; preds = %39, %0
  %43 = load ptr, ptr @_ZN11xercesc_2_713RangeTokenMap9fInstanceE, align 8, !tbaa !87
  ret ptr %43
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !96
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L22reinitRangeTokMapMutexEv() #3 !prof !91 !PGOFuncName !186 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L17sRangeTokMapMutexE, align 8, !tbaa !87
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !92

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #12
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L17sRangeTokMapMutexE, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !92

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !106
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !106
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !111
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !187
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !110
  %21 = load i32, ptr %12, align 8, !tbaa !111
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !188

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !110
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !87
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !189, !llvm.loop !190
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !86 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !96
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !92

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !115
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !119
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !187
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !118
  %21 = load i32, ptr %12, align 8, !tbaa !119
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !188

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !118
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !87
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !191, !llvm.loop !192
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !119
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !115
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !96
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !115
  store ptr %12, ptr %2, align 8, !tbaa !193
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !119
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = load ptr, ptr %2, align 8, !tbaa !193
  store ptr null, ptr %2, align 8, !tbaa !193
  store ptr %23, ptr %21, align 8, !tbaa !118
  store i32 %5, ptr %3, align 8, !tbaa !119
  %24 = load ptr, ptr %0, align 8, !tbaa !115
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !118
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !167
  %38 = load ptr, ptr %19, align 8, !tbaa !122
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !155
  %41 = load ptr, ptr %0, align 8, !tbaa !115
  %42 = load ptr, ptr %38, align 8, !tbaa !96
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  store ptr %48, ptr %36, align 8, !tbaa !167
  store ptr %35, ptr %47, align 8, !tbaa !87
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !196

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !119
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !197

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12RangeFactoryEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12RangeFactoryEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12RangeFactoryEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !193
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !96
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #15
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.2", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !111
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !106
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !96
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8), !prof !187
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !106
  store ptr %12, ptr %2, align 8, !tbaa !198
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.2", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false), !prof !201
  %15 = load i32, ptr %3, align 8, !tbaa !111
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !188

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = load ptr, ptr %2, align 8, !tbaa !198
  store ptr null, ptr %2, align 8, !tbaa !198
  store ptr %23, ptr %21, align 8, !tbaa !110
  store i32 %5, ptr %3, align 8, !tbaa !111
  %24 = load ptr, ptr %0, align 8, !tbaa !106
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58, !prof !202

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !110
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34, !prof !203

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !179
  %38 = load ptr, ptr %19, align 8, !tbaa !114
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !138
  %41 = load ptr, ptr %0, align 8, !tbaa !106
  %42 = load ptr, ptr %38, align 8, !tbaa !96
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50, !prof !204

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  store ptr %48, ptr %36, align 8, !tbaa !179
  store ptr %35, ptr %47, align 8, !tbaa !87
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !prof !205, !llvm.loop !206

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !111
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !prof !207, !llvm.loop !208

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_17RangeTokenElemMapEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_17RangeTokenElemMapEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_17RangeTokenElemMapEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !198
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !101

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.2", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !96
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #15
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = load ptr, ptr %2, align 8, !tbaa !96
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !202
  store ptr null, ptr %3, align 8, !tbaa !110
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !92

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !96
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12, !prof !209
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !111
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !188

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !113
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !110
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !210

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = load i8, ptr %11, align 8, !tbaa !109, !range !164, !noundef !165
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !170

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !153
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !170

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #12
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !106
  %31 = load ptr, ptr %30, align 8, !tbaa !96
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !211
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !177, !llvm.loop !212

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !110
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !87
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !111
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !213, !llvm.loop !214

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !115
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = load ptr, ptr %2, align 8, !tbaa !96
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !202
  store ptr null, ptr %3, align 8, !tbaa !118
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !92

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !96
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12, !prof !209
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !119
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !188

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !121
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !118
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !215

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !167
  %23 = load i8, ptr %11, align 8, !tbaa !117, !range !164, !noundef !165
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !216

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !159
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !216

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !96
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(10) %26) #12, !prof !217
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !115
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !218
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !161, !llvm.loop !219

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !118
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !87
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !119
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !220, !llvm.loop !221

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_RangeTokenMap.cpp() #11 section ".text.startup" !prof !91 !PGOFuncName !222 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L26rangeTokMapRegistryCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L26rangeTokMapInstanceCleanupE)
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @_ZN11xercesc_2_713RangeTokenMap14reinitInstanceEv, ptr @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv, i64 1}
!36 = !{ptr @_ZN11xercesc_2_713RangeTokenMap14reinitInstanceEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_713RangeTokenMap14reinitInstanceEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 4}
!40 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, i64 1}
!45 = !{ptr @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE7cleanupEv, i64 1}
!46 = !{ptr @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!47 = !{ptr @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE7cleanupEv, i64 1}
!48 = !{ptr @_ZN11xercesc_2_713RangeTokenMap7cleanUpEv, ptr @_ZN11xercesc_2_712TokenFactoryD1Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE10initializeEj, i64 1}
!50 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 1}
!52 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE10initializeEj, i64 1}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!54 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 1}
!55 = !{ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 4}
!56 = !{ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, ptr @_ZN11xercesc_2_715XMLRangeFactoryC1Ev, i64 1}
!57 = !{ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3putEPvPS1_, i64 4}
!58 = !{ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, ptr @_ZN11xercesc_2_717ASCIIRangeFactoryC1Ev, i64 1}
!59 = !{ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, ptr @_ZN11xercesc_2_719UnicodeRangeFactoryC1Ev, i64 1}
!60 = !{ptr @_ZN11xercesc_2_713RangeTokenMap18initializeRegistryEv, ptr @_ZN11xercesc_2_717BlockRangeFactoryC1Ev, i64 1}
!61 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8getRangeEPKtb, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv, i64 12}
!62 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8getRangeEPKtb, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv, i64 12}
!63 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8getRangeEPKtb, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8getRangeEPKtb, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE3getEPKv, i64 1}
!65 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8getRangeEPKtb, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 1}
!66 = !{ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv, i64 146}
!67 = !{ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 146}
!68 = !{ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3putEPvPS1_, i64 146}
!69 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE6rehashEv, i64 1}
!70 = !{ptr @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE11containsKeyEPKv, i64 10}
!71 = !{ptr @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE3getEPKv, i64 10}
!72 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 2}
!73 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 2}
!74 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!75 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 2}
!76 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 2}
!77 = !{ptr @_ZN11xercesc_2_713RangeTokenMap8instanceEv, ptr @_ZN11xercesc_2_713RangeTokenMapC2EPNS_13MemoryManagerE, i64 1}
!78 = !{ptr @_ZN11xercesc_2_7L22reinitRangeTokMapMutexEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!79 = !{ptr @_ZN11xercesc_2_7L22reinitRangeTokMapMutexEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!80 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE6rehashEv, ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_17RangeTokenElemMapEEEED2Ev, i64 1}
!81 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE9removeAllEv, i64 1}
!82 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEE9removeAllEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 146}
!83 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEE9removeAllEv, i64 1}
!84 = !{ptr @_GLOBAL__sub_I_RangeTokenMap.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C++ TBAA"}
!91 = !{!"function_entry_count", i64 1}
!92 = !{!"branch_weights", i32 0, i32 1}
!93 = !{!94, !88, i64 8}
!94 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !95, i64 32}
!95 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !88, i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"vtable pointer", !90, i64 0}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSN11xercesc_2_717RangeTokenElemMapE", !100, i64 0, !88, i64 8, !88, i64 16}
!100 = !{!"int", !89, i64 0}
!101 = !{!"branch_weights", i32 1, i32 0}
!102 = !{!94, !88, i64 0}
!103 = !{!94, !88, i64 16}
!104 = !{!94, !88, i64 24}
!105 = !{!"VP", i32 0, i64 1, i64 -8039767228627002071, i64 1}
!106 = !{!107, !88, i64 0}
!107 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17RangeTokenElemMapEEE", !88, i64 0, !108, i64 8, !88, i64 16, !100, i64 24, !100, i64 28, !100, i64 32, !88, i64 40}
!108 = !{!"bool", !89, i64 0}
!109 = !{!107, !108, i64 8}
!110 = !{!107, !88, i64 16}
!111 = !{!107, !100, i64 24}
!112 = !{!107, !100, i64 28}
!113 = !{!107, !100, i64 32}
!114 = !{!107, !88, i64 40}
!115 = !{!116, !88, i64 0}
!116 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12RangeFactoryEEE", !88, i64 0, !108, i64 8, !88, i64 16, !100, i64 24, !100, i64 28, !100, i64 32, !88, i64 40}
!117 = !{!116, !108, i64 8}
!118 = !{!116, !88, i64 16}
!119 = !{!116, !100, i64 24}
!120 = !{!116, !100, i64 28}
!121 = !{!116, !100, i64 32}
!122 = !{!116, !88, i64 40}
!123 = !{!"VP", i32 0, i64 1, i64 8828421665688538749, i64 1}
!124 = !{!"VP", i32 0, i64 1, i64 8693174934150798426, i64 1}
!125 = !{!"VP", i32 0, i64 1, i64 5483182567398544724, i64 1}
!126 = !{!"VP", i32 0, i64 1, i64 3108586400200010962, i64 1}
!127 = !{!"VP", i32 0, i64 1, i64 -534451177922595326, i64 1}
!128 = !{!"function_entry_count", i64 12}
!129 = !{!"branch_weights", i32 12, i32 0}
!130 = !{!"branch_weights", i32 0, i32 12}
!131 = !{!"branch_weights", i32 1, i32 11}
!132 = !{!"VP", i32 0, i64 1, i64 4099110260104020874, i64 1}
!133 = !{!"VP", i32 0, i64 1, i64 -2248791954401010414, i64 1}
!134 = !{!99, !88, i64 16}
!135 = !{!"function_entry_count", i64 168}
!136 = !{!"VP", i32 0, i64 168, i64 3024540859536234746, i64 168}
!137 = !{!"branch_weights", i32 81, i32 65}
!138 = !{!139, !88, i64 16}
!139 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17RangeTokenElemMapEEE", !88, i64 0, !88, i64 8, !88, i64 16}
!140 = !{!"VP", i32 0, i64 81, i64 -1309333655503989351, i64 81}
!141 = !{!"branch_weights", i32 1, i32 175}
!142 = !{!"branch_weights", i32 0, i32 81}
!143 = distinct !{!143, !144, !145}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = !{!"branch_weights", i32 175, i32 297}
!147 = !{!"function_entry_count", i64 22}
!148 = !{!"VP", i32 0, i64 22, i64 3024540859536234746, i64 22}
!149 = !{!"VP", i32 0, i64 22, i64 -1309333655503989351, i64 22}
!150 = !{!"branch_weights", i32 22, i32 0}
!151 = !{!"branch_weights", i32 0, i32 22}
!152 = distinct !{!152, !144, !145}
!153 = !{!139, !88, i64 0}
!154 = !{!"VP", i32 0, i64 1, i64 3024540859536234746, i64 1}
!155 = !{!156, !88, i64 16}
!156 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12RangeFactoryEEE", !88, i64 0, !88, i64 8, !88, i64 16}
!157 = !{!"VP", i32 0, i64 1, i64 -1309333655503989351, i64 1}
!158 = distinct !{!158, !144, !145}
!159 = !{!156, !88, i64 0}
!160 = !{!"function_entry_count", i64 4}
!161 = !{!"branch_weights", i32 4, i32 0}
!162 = !{!"VP", i32 0, i64 4, i64 3024540859536234746, i64 4}
!163 = !{!"branch_weights", i32 3, i32 1}
!164 = !{i8 0, i8 2}
!165 = !{}
!166 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!167 = !{!156, !88, i64 8}
!168 = !{!"function_entry_count", i64 146}
!169 = !{!"VP", i32 0, i64 146, i64 -43095626630086639, i64 146}
!170 = !{!"branch_weights", i32 0, i32 146}
!171 = !{!"branch_weights", i32 145, i32 1}
!172 = !{!"VP", i32 0, i64 146, i64 3024540859536234746, i64 146}
!173 = !{!"branch_weights", i32 87, i32 59}
!174 = !{!"VP", i32 0, i64 59, i64 -1309333655503989351, i64 59}
!175 = !{!"branch_weights", i32 0, i32 59}
!176 = !{!"branch_weights", i32 59, i32 0}
!177 = !{!"branch_weights", i32 146, i32 0}
!178 = !{!"VP", i32 0, i64 146, i64 8345045103670217670, i64 146}
!179 = !{!139, !88, i64 8}
!180 = !{!"function_entry_count", i64 10}
!181 = !{!"branch_weights", i32 10, i32 0}
!182 = !{!"branch_weights", i32 5, i32 5}
!183 = !{!184, !88, i64 40}
!184 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !185, i64 8, !88, i64 16, !100, i64 24, !88, i64 32, !88, i64 40}
!185 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !89, i64 0}
!186 = !{!"RangeTokenMap.cpp;_ZN11xercesc_2_7L22reinitRangeTokMapMutexEv"}
!187 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!188 = !{!"branch_weights", i32 1, i32 127}
!189 = !{!"branch_weights", i32 127, i32 13825}
!190 = distinct !{!190, !144, !145}
!191 = !{!"branch_weights", i32 127, i32 3585}
!192 = distinct !{!192, !144, !145}
!193 = !{!194, !88, i64 0}
!194 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12RangeFactoryEEEEE", !88, i64 0, !88, i64 8}
!195 = !{!194, !88, i64 8}
!196 = distinct !{!196, !144, !145}
!197 = distinct !{!197, !144, !145}
!198 = !{!199, !88, i64 0}
!199 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_17RangeTokenElemMapEEEEE", !88, i64 0, !88, i64 8}
!200 = !{!199, !88, i64 8}
!201 = !{!"VP", i32 1, i64 1, i64 513, i64 1}
!202 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!203 = !{!"branch_weights", i32 28, i32 81}
!204 = !{!"VP", i32 0, i64 81, i64 3024540859536234746, i64 81}
!205 = !{!"branch_weights", i32 81, i32 0}
!206 = distinct !{!206, !144, !145}
!207 = !{!"branch_weights", i32 13825, i32 127}
!208 = distinct !{!208, !144, !145}
!209 = !{!"VP", i32 0, i64 1, i64 -5147776714887549805, i64 1}
!210 = !{!"branch_weights", i32 72, i32 146}
!211 = !{!"VP", i32 0, i64 146, i64 -7405368087501025645, i64 146}
!212 = distinct !{!212, !144, !145}
!213 = !{!"branch_weights", i32 27777, i32 127}
!214 = distinct !{!214, !144, !145}
!215 = !{!"branch_weights", i32 25, i32 4}
!216 = !{!"branch_weights", i32 0, i32 4}
!217 = !{!"VP", i32 0, i64 4, i64 3422469622447829683, i64 1, i64 -1413387391479504384, i64 1, i64 -1650289152188836006, i64 1}
!218 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!219 = distinct !{!219, !144, !145}
!220 = !{!"branch_weights", i32 3585, i32 127}
!221 = distinct !{!221, !144, !145}
!222 = !{!"RangeTokenMap.cpp;_GLOBAL__sub_I_RangeTokenMap.cpp"}

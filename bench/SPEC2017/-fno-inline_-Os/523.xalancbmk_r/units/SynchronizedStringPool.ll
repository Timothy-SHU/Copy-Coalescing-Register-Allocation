; ModuleID = 'SynchronizedStringPool.cpp'
source_filename = "SynchronizedStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLSynchronizedStringPool" = type { %"class.xercesc_2_7::XMLStringPool", ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool6existsEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_725XMLSynchronizedStringPoolE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_725XMLSynchronizedStringPoolE, ptr @_ZN11xercesc_2_725XMLSynchronizedStringPoolD2Ev, ptr @_ZN11xercesc_2_725XMLSynchronizedStringPoolD0Ev, ptr @_ZNK11xercesc_2_713XMLStringPool14isSerializableEv, ptr @_ZN11xercesc_2_713XMLStringPool9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713XMLStringPool12getProtoTypeEv, ptr @_ZN11xercesc_2_725XMLSynchronizedStringPool9addOrFindEPKt, ptr @_ZNK11xercesc_2_725XMLSynchronizedStringPool6existsEPKt, ptr @_ZNK11xercesc_2_725XMLSynchronizedStringPool6existsEj, ptr @_ZN11xercesc_2_725XMLSynchronizedStringPool8flushAllEv, ptr @_ZNK11xercesc_2_725XMLSynchronizedStringPool5getIdEPKt, ptr @_ZNK11xercesc_2_725XMLSynchronizedStringPool13getValueForIdEj, ptr @_ZNK11xercesc_2_725XMLSynchronizedStringPool14getStringCountEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_725XMLSynchronizedStringPoolE = dso_local constant [43 x i8] c"N11xercesc_2_725XMLSynchronizedStringPoolE\00", align 1
@_ZTIN11xercesc_2_713XMLStringPoolE = external constant ptr
@_ZTIN11xercesc_2_725XMLSynchronizedStringPoolE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725XMLSynchronizedStringPoolE, ptr @_ZTIN11xercesc_2_713XMLStringPoolE }, align 8
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/StringPool.hpp\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_725XMLSynchronizedStringPoolC1EPKNS_13XMLStringPoolEjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_725XMLSynchronizedStringPoolC2EPKNS_13XMLStringPoolEjPNS_13MemoryManagerE
@_ZN11xercesc_2_725XMLSynchronizedStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_725XMLSynchronizedStringPoolD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725XMLSynchronizedStringPoolC2EPKNS_13XMLStringPoolEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2, ptr noundef %3) #5
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_725XMLSynchronizedStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %3) #5
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725XMLSynchronizedStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 !prof !44 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_725XMLSynchronizedStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  tail call void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725XMLSynchronizedStringPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_725XMLSynchronizedStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_725XMLSynchronizedStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %12) #5
  %13 = invoke noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #5
          to label %14 unwind label %22

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !48
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds ptr, ptr %16, i64 11
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(40) %15) #5
          to label %20 unwind label %22

20:                                               ; preds = %14
  %21 = add i32 %19, %13
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %24

22:                                               ; preds = %14, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %23

24:                                               ; preds = %2, %20
  %25 = phi i32 [ %21, %20 ], [ %9, %2 ]
  ret i32 %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !59
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #5
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_725XMLSynchronizedStringPool6existsEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1) #5
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool6existsEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #5
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi i1 [ %10, %9 ], [ true, %2 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool6existsEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #5
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_725XMLSynchronizedStringPool6existsEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds ptr, ptr %9, i64 11
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(40) %8) #5
  %13 = add i32 %12, %6
  %14 = icmp ugt i32 %13, %1
  br label %15

15:                                               ; preds = %4, %2
  %16 = phi i1 [ false, %2 ], [ %14, %4 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725XMLSynchronizedStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_725XMLSynchronizedStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = tail call noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #5
  %12 = load ptr, ptr %3, align 8, !tbaa !48
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds ptr, ptr %13, i64 11
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(40) %12) #5
  %17 = add i32 %16, %11
  br label %18

18:                                               ; preds = %2, %10
  %19 = phi i32 [ %17, %10 ], [ %8, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !63

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_725XMLSynchronizedStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(40) %4) #5
  %9 = icmp ult i32 %8, %1
  %10 = load ptr, ptr %3, align 8, !tbaa !48
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  br i1 %9, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %11, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %1) #5
  br label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds ptr, ptr %11, i64 11
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(40) %10) #5
  %20 = sub i32 %1, %19
  %21 = tail call noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %20) #5
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi ptr [ %15, %12 ], [ %21, %16 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %15, label %8, !prof !65

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 89, ptr noundef %11) #5
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #7
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_725XMLSynchronizedStringPool14getStringCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLSynchronizedStringPool", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 11
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(40) %5) #5
  %10 = add i32 %3, -1
  %11 = add i32 %10, %9
  ret i32 %11
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLStringPool9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713XMLStringPool12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !70 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !71

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !72
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %9
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = load ptr, ptr %5, align 8, !tbaa !45
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #5
  store i32 %11, ptr %2, align 4, !tbaa !80
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !82

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = load ptr, ptr %20, align 8, !tbaa !45
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #5
  br i1 %26, label %31, label %27, !prof !84

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !85, !llvm.loop !86

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !44 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #5
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !44 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = load ptr, ptr %5, align 8, !tbaa !45
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #5
  store i32 %11, ptr %2, align 4, !tbaa !80
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = load ptr, ptr %20, align 8, !tbaa !45
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #5
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !88

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #5
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #5
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #5
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!43}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1706}
!36 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 291}
!37 = !{ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1796708}
!38 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_allocate_exception, i64 2}
!39 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!40 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_throw, i64 1}
!41 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_free_exception, i64 1}
!42 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 1798414}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !52, i64 40}
!49 = !{!"_ZTSN11xercesc_2_725XMLSynchronizedStringPoolE", !50, i64 0, !52, i64 40, !55, i64 48}
!50 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !51, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !54, i64 32, !54, i64 36}
!51 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !47, i64 0}
!54 = !{!"int", !53, i64 0}
!55 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !52, i64 0}
!56 = !{!"function_entry_count", i64 1706}
!57 = !{!50, !52, i64 24}
!58 = !{!"branch_weights", i32 291, i32 1417}
!59 = !{!60, !54, i64 0}
!60 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !54, i64 0, !52, i64 8}
!61 = !{!50, !54, i64 36}
!62 = !{!"function_entry_count", i64 1796708}
!63 = !{!"branch_weights", i32 1, i32 1796709}
!64 = !{!"function_entry_count", i64 2060280}
!65 = !{!"branch_weights", i32 -149696008, i32 4023}
!66 = !{!50, !52, i64 8}
!67 = !{!50, !52, i64 16}
!68 = !{!52, !52, i64 0}
!69 = !{!60, !52, i64 8}
!70 = !{!"function_entry_count", i64 1798414}
!71 = !{!"branch_weights", i32 291, i32 1798125}
!72 = !{!73, !52, i64 0}
!73 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!74 = !{!"function_entry_count", i64 1798704}
!75 = !{!76, !52, i64 40}
!76 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !52, i64 0, !77, i64 8, !52, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !52, i64 40}
!77 = !{!"bool", !53, i64 0}
!78 = !{!76, !54, i64 24}
!79 = !{!76, !52, i64 0}
!80 = !{!54, !54, i64 0}
!81 = !{!76, !52, i64 16}
!82 = !{!"branch_weights", i32 1, i32 580}
!83 = !{!73, !52, i64 16}
!84 = !{!"branch_weights", i32 1798125, i32 634}
!85 = !{!"branch_weights", i32 580, i32 1798178}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = distinct !{!88, !87}
!89 = !{!90, !52, i64 40}
!90 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !91, i64 8, !52, i64 16, !54, i64 24, !52, i64 32, !52, i64 40}
!91 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !53, i64 0}

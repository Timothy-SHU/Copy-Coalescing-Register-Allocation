; ModuleID = 'KVStringPair.cpp'
source_filename = "KVStringPair.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712KVStringPair3setEPKtS2_ = comdat any

$_ZN11xercesc_2_712KVStringPair6setKeyEPKt = comdat any

$_ZN11xercesc_2_712KVStringPair8setValueEPKtj = comdat any

$_ZN11xercesc_2_712KVStringPair6setKeyEPKtj = comdat any

$_ZN11xercesc_2_713XSerializableC2ERKS0_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZTVN11xercesc_2_712KVStringPairE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712KVStringPairE, ptr @_ZN11xercesc_2_712KVStringPairD2Ev, ptr @_ZN11xercesc_2_712KVStringPairD0Ev, ptr @_ZNK11xercesc_2_712KVStringPair14isSerializableEv, ptr @_ZN11xercesc_2_712KVStringPair9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_712KVStringPair12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"KVStringPair\00", align 1
@_ZN11xercesc_2_712KVStringPair17classKVStringPairE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_712KVStringPair12createObjectEPNS_13MemoryManagerE }, align 8
@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712KVStringPairE = dso_local constant [30 x i8] c"N11xercesc_2_712KVStringPairE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712KVStringPairE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712KVStringPairE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_712KVStringPairC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1EPKtS2_jPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i32, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2ERKS0_
@_ZN11xercesc_2_712KVStringPairD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712KVStringPairD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store ptr %3, ptr %6, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712KVStringPair3setEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) #10
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair3setEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !68 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #10
  tail call void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %4) #10
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #10
  tail call void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2, i32 noundef %5) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %6 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %4, ptr %7, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712KVStringPair6setKeyEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #10
          to label %8 unwind label %10

8:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2, i32 noundef %3) #10
          to label %9 unwind label %10

9:                                                ; preds = %8
  ret void

10:                                               ; preds = %8, %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair6setKeyEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !69 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #10
  tail call void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !70 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !71
  %7 = icmp ugt i64 %6, %4
  br i1 %7, label %8, label %14, !prof !72

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  br label %30

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load ptr, ptr %16, align 8, !tbaa !56
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #10
  %22 = add i32 %2, 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %5, align 8, !tbaa !71
  %24 = load ptr, ptr %15, align 8, !tbaa !59
  %25 = shl nuw nsw i64 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #10
  store ptr %29, ptr %17, align 8, !tbaa !73
  br label %30

30:                                               ; preds = %8, %14
  %31 = phi i64 [ %13, %8 ], [ %25, %14 ]
  %32 = phi ptr [ %10, %8 ], [ %29, %14 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %1, i64 %31, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  store ptr %5, ptr %8, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) #10
          to label %9 unwind label %11

9:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_712KVStringPair8setValueEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, i32 noundef %4) #10
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9, %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !70 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !75
  %7 = icmp ugt i64 %6, %4
  br i1 %7, label %8, label %14, !prof !76

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = add i32 %2, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  br label %30

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = load ptr, ptr %16, align 8, !tbaa !56
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18) #10
  %22 = add i32 %2, 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %5, align 8, !tbaa !75
  %24 = load ptr, ptr %15, align 8, !tbaa !59
  %25 = shl nuw nsw i64 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %25) #10
  store ptr %29, ptr %17, align 8, !tbaa !77
  br label %30

30:                                               ; preds = %8, %14
  %31 = phi i64 [ %13, %8 ], [ %25, %14 ]
  %32 = phi ptr [ %10, %8 ], [ %29, %14 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %1, i64 %31, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  tail call void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  store ptr %6, ptr %4, align 8, !tbaa !59
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_712KVStringPair3setEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %8, ptr noundef %10) #10
          to label %11 unwind label %12

11:                                               ; preds = %2
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !79 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = load ptr, ptr %3, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #10
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = load ptr, ptr %10, align 8, !tbaa !56
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #10
          to label %16 unwind label %17

16:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712KVStringPairD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %0) #10
  tail call void @_ZN11xercesc_2_712KVStringPairC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %0) #10
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712KVStringPair14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !55 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712KVStringPair12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_712KVStringPair17classKVStringPairE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPair9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #1 align 2 !prof !55 {
  %3 = alloca i32, align 4
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !75
  %10 = trunc i64 %9 to i32
  %11 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE, align 1, !tbaa !81, !range !83, !noundef !84
  %12 = icmp ne i8 %11, 0
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %7, i32 noundef %10, i1 noundef zeroext %12) #10
  %13 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !71
  %17 = trunc i64 %16 to i32
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %14, i32 noundef %17, i1 noundef zeroext %12) #10
  br label %25

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !tbaa !85
  %19 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %21 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE, align 1, !tbaa !81, !range !83, !noundef !84
  %22 = icmp ne i8 %21, 0
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(4) %20, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %22) #10
  %23 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %25

25:                                               ; preds = %18, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !55 {
  %2 = load i16, ptr %0, align 8, !tbaa !87
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !90 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !92

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !93
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !94

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !95, !llvm.loop !96

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 25}
!36 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 25}
!37 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712KVStringPair3setEPKtS2_, i64 25}
!38 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 120}
!39 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtS2_, ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj, i64 60}
!40 = !{ptr @_ZN11xercesc_2_712KVStringPair3setEPKtS2_, ptr @_ZN11xercesc_2_712KVStringPair8setValueEPKtj, i64 60}
!41 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 10}
!42 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!43 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKt, i64 10}
!44 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712KVStringPair8setValueEPKtj, i64 10}
!45 = !{ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 10}
!46 = !{ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKt, ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj, i64 10}
!47 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 7}
!48 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 7}
!49 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712KVStringPair6setKeyEPKtj, i64 7}
!50 = !{ptr @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712KVStringPair8setValueEPKtj, i64 7}
!51 = !{ptr @_ZN11xercesc_2_712KVStringPairC2ERKS0_, ptr @_ZN11xercesc_2_713XSerializableC2ERKS0_, i64 35}
!52 = !{ptr @_ZN11xercesc_2_712KVStringPairC2ERKS0_, ptr @_ZN11xercesc_2_712KVStringPair3setEPKtS2_, i64 35}
!53 = !{ptr @_ZN11xercesc_2_712KVStringPairD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 77}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!60, !64, i64 40}
!60 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !61, i64 0, !62, i64 8, !62, i64 16, !64, i64 24, !64, i64 32, !64, i64 40}
!61 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!62 = !{!"long", !63, i64 0}
!63 = !{!"omnipotent char", !58, i64 0}
!64 = !{!"any pointer", !63, i64 0}
!65 = !{!"function_entry_count", i64 1068727}
!66 = !{!"function_entry_count", i64 5836268}
!67 = !{!"function_entry_count", i64 25}
!68 = !{!"function_entry_count", i64 60}
!69 = !{!"function_entry_count", i64 10}
!70 = !{!"function_entry_count", i64 191885}
!71 = !{!60, !62, i64 16}
!72 = !{!"branch_weights", i32 191803, i32 84}
!73 = !{!60, !64, i64 32}
!74 = !{!"function_entry_count", i64 7}
!75 = !{!60, !62, i64 8}
!76 = !{!"branch_weights", i32 191806, i32 81}
!77 = !{!60, !64, i64 24}
!78 = !{!"function_entry_count", i64 35}
!79 = !{!"function_entry_count", i64 447}
!80 = !{!"function_entry_count", i64 77}
!81 = !{!82, !82, i64 0}
!82 = !{!"bool", !63, i64 0}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!86, !86, i64 0}
!86 = !{!"int", !63, i64 0}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !89, i64 0, !89, i64 2, !64, i64 8, !64, i64 16, !64, i64 24, !62, i64 32, !62, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !86, i64 96}
!89 = !{!"short", !63, i64 0}
!90 = !{!"function_entry_count", i64 1069174}
!91 = !{!"function_entry_count", i64 2453164456}
!92 = !{!"branch_weights", i32 1, i32 -1841802839}
!93 = !{!89, !89, i64 0}
!94 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!95 = !{!"branch_weights", i32 408669070, i32 -279908794}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}

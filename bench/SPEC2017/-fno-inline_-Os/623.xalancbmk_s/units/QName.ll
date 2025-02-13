; ModuleID = 'QName.cpp'
source_filename = "QName.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev = comdat any

$_ZN11xercesc_2_713XSerializableC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

$_ZNK11xercesc_2_75QName9getPrefixEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_75QNameE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_75QNameE, ptr @_ZN11xercesc_2_75QNameD2Ev, ptr @_ZN11xercesc_2_75QNameD0Ev, ptr @_ZNK11xercesc_2_75QName14isSerializableEv, ptr @_ZN11xercesc_2_75QName9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_75QName12getProtoTypeEv] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_75QNameE = dso_local constant [22 x i8] c"N11xercesc_2_75QNameE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_75QNameE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_75QNameE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_75QName10classQNameE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_75QName12createObjectEPNS_13MemoryManagerE }, align 8
@.str = private unnamed_addr constant [6 x i8] c"QName\00", align 1
@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = external local_unnamed_addr constant i8, align 1

@_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE
@_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_75QNameD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_75QNameD2Ev
@_ZN11xercesc_2_75QNameC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_75QNameC2ERKS0_

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75QNameD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_75QNameD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_75QName14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !88 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !88 {
  %3 = alloca i32, align 4
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  br i1 %4, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE, align 1, !tbaa !97, !range !99, !noundef !100
  %12 = icmp ne i8 %11, 0
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %8, i32 noundef %10, i1 noundef zeroext %12) #12
  %13 = load ptr, ptr %5, align 8, !tbaa !101
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !102
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13, i32 noundef %15, i1 noundef zeroext %12) #12
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !103
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17) #12
  br label %29

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !tbaa !104
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %22 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE, align 1, !tbaa !97, !range !99, !noundef !100
  %23 = icmp ne i8 %22, 0
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(4) %21, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %23) #12
  %24 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %23) #12
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  store i32 0, ptr %25, align 8, !tbaa !105
  %26 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  store ptr null, ptr %26, align 8, !tbaa !106
  %27 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %28 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %27) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %29

29:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_75QName12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !88 {
  ret ptr @_ZN11xercesc_2_75QName10classQNameE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !111 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !112 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %6 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  store ptr %4, ptr %8, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_75QName7cleanUpEv to i64), i64 0) #12
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #12
          to label %19 unwind label %9

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = call ptr @__cxa_begin_catch(ptr %15) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  invoke void @__cxa_rethrow() #15
          to label %25 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %22

19:                                               ; preds = %5
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret void

20:                                               ; preds = %17, %9
  %21 = phi { ptr, i32 } [ %10, %9 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %21

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #14
  unreachable

25:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) #2 align 2 !prof !115 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = load ptr, ptr %3, align 8, !tbaa !108
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
  %9 = load ptr, ptr %2, align 8, !tbaa !110
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = load ptr, ptr %9, align 8, !tbaa !108
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #12
  %15 = load ptr, ptr %2, align 8, !tbaa !110
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = load ptr, ptr %15, align 8, !tbaa !108
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !116 {
  store ptr %1, ptr %0, align 8, !tbaa !117
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !120 {
  tail call void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #12
  tail call void @_ZN11xercesc_2_75QName12setLocalPartEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %2) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !121

8:                                                ; preds = %4
  store i16 0, ptr %6, align 2, !tbaa !122
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %3, ptr %10, align 4, !tbaa !103
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !116 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !124

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !119
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !119
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !108
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !100
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(56) %11) #12
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store ptr %3, ptr %7, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_75QName7cleanUpEv to i64), i64 0) #12
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) #12
          to label %18 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  invoke void @__cxa_rethrow() #15
          to label %24 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

18:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void

19:                                               ; preds = %16, %8
  %20 = phi { ptr, i32 } [ %9, %8 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %20

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #14
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !125 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58) #12
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %36, !prof !126

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !105
  %10 = icmp eq i32 %9, 0
  %11 = icmp ugt i32 %4, %9
  %12 = or i1 %10, %11
  br i1 %12, label %16, label %13, !prof !127

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  br label %33

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = load ptr, ptr %18, align 8, !tbaa !108
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %20) #12
  %24 = add i32 %4, 8
  store i32 %24, ptr %8, align 8, !tbaa !105
  %25 = load ptr, ptr %17, align 8, !tbaa !110
  %26 = add i32 %4, 9
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 1
  %29 = load ptr, ptr %25, align 8, !tbaa !108
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %28) #12
  store ptr %32, ptr %19, align 8, !tbaa !106
  br label %33

33:                                               ; preds = %13, %16
  %34 = phi ptr [ %15, %13 ], [ %32, %16 ]
  %35 = add i32 %4, 1
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %34, ptr noundef %1, i32 noundef %35) #12
  tail call void @_ZN11xercesc_2_75QName10setNPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %5) #12
  br label %41

36:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #12
  %37 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !128

40:                                               ; preds = %36
  store i16 0, ptr %38, align 2, !tbaa !122
  br label %41

41:                                               ; preds = %36, %40, %33
  %42 = sext i32 %5 to i64
  %43 = getelementptr i16, ptr %1, i64 %42
  %44 = getelementptr i16, ptr %43, i64 1
  %45 = xor i32 %5, -1
  %46 = add i32 %4, %45
  tail call void @_ZN11xercesc_2_75QName13setNLocalPartEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %44, i32 noundef %46) #12
  %47 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %2, ptr %47, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75QNameD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_75QName7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QNameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  tail call void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75QNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  store ptr %7, ptr %5, align 8, !tbaa !110
  %8 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %8) #12
  %10 = add i32 %9, 8
  store i32 %10, ptr %4, align 4, !tbaa !102
  %11 = load ptr, ptr %5, align 8, !tbaa !110
  %12 = add i32 %9, 9
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 1
  %15 = load ptr, ptr %11, align 8, !tbaa !108
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %14) #12
          to label %19 unwind label %40

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  store ptr %18, ptr %20, align 8, !tbaa !101
  %21 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %22 = add i32 %9, 1
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %18, ptr noundef %21, i32 noundef %22) #12
  %23 = tail call noundef ptr @_ZNK11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %23) #12
  %25 = add i32 %24, 8
  store i32 %25, ptr %3, align 8, !tbaa !96
  %26 = load ptr, ptr %5, align 8, !tbaa !110
  %27 = add i32 %24, 9
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 1
  %30 = load ptr, ptr %26, align 8, !tbaa !108
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef %29) #12
          to label %34 unwind label %40

34:                                               ; preds = %19
  %35 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %36 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store ptr %33, ptr %35, align 8, !tbaa !89
  %37 = tail call noundef ptr @_ZNK11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %38 = add i32 %24, 1
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %33, ptr noundef %37, i32 noundef %38) #12
  %39 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  store i32 %39, ptr %36, align 4, !tbaa !103
  ret void

40:                                               ; preds = %19, %2
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !130 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !132

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !122
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !133

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !122
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !134, !llvm.loop !135

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !137 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !103
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !122
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = load i16, ptr %10, align 2, !tbaa !122
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !96
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !102
  %18 = add i32 %17, %15
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %19, %21
  %23 = select i1 %4, i1 true, i1 %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %3) #12
  store i32 %19, ptr %20, align 8, !tbaa !105
  %30 = load ptr, ptr %25, align 8, !tbaa !110
  %31 = add i32 %18, 2
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = load ptr, ptr %30, align 8, !tbaa !108
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %33) #12
  store ptr %37, ptr %2, align 8, !tbaa !106
  store i16 0, ptr %37, align 2, !tbaa !122
  %38 = load ptr, ptr %9, align 8, !tbaa !89
  br label %39

39:                                               ; preds = %13, %24
  %40 = phi ptr [ %10, %13 ], [ %38, %24 ]
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %40) #12
  %42 = load ptr, ptr %2, align 8, !tbaa !106
  %43 = load ptr, ptr %9, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %42, ptr noundef %43, i32 noundef %41) #12
  %44 = load ptr, ptr %2, align 8, !tbaa !106
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds i16, ptr %44, i64 %45
  store i16 58, ptr %46, align 2, !tbaa !122
  %47 = add i32 %41, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %44, i64 %48
  %50 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !101
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %49, ptr noundef %51) #12
  br label %54

52:                                               ; preds = %8
  %53 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  br label %54

54:                                               ; preds = %5, %39, %52
  %55 = phi ptr [ %53, %52 ], [ %2, %39 ], [ %2, %5 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !141
  ret ptr %56
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !143

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !122
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %54, !prof !144

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = load i16, ptr %10, align 2, !tbaa !122
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %52, label %13, !prof !145

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !96
  %16 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !102
  %18 = add i32 %17, %15
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %19, %21
  %23 = select i1 %4, i1 true, i1 %22
  br i1 %23, label %24, label %39, !prof !146

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %3) #12
  store i32 %19, ptr %20, align 8, !tbaa !105
  %30 = load ptr, ptr %25, align 8, !tbaa !110
  %31 = add i32 %18, 2
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = load ptr, ptr %30, align 8, !tbaa !108
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %33) #12
  store ptr %37, ptr %2, align 8, !tbaa !106
  store i16 0, ptr %37, align 2, !tbaa !122
  %38 = load ptr, ptr %9, align 8, !tbaa !89
  br label %39

39:                                               ; preds = %13, %24
  %40 = phi ptr [ %10, %13 ], [ %38, %24 ]
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %40) #12
  %42 = load ptr, ptr %2, align 8, !tbaa !106
  %43 = load ptr, ptr %9, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %42, ptr noundef %43, i32 noundef %41) #12
  %44 = load ptr, ptr %2, align 8, !tbaa !106
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds i16, ptr %44, i64 %45
  store i16 58, ptr %46, align 2, !tbaa !122
  %47 = add i32 %41, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %44, i64 %48
  %50 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !101
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %49, ptr noundef %51) #12
  br label %54

52:                                               ; preds = %8
  %53 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  br label %54

54:                                               ; preds = %5, %39, %52
  %55 = phi ptr [ %53, %52 ], [ %2, %39 ], [ %2, %5 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !141
  ret ptr %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !147 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp eq i32 %5, 0
  %7 = icmp ugt i32 %3, %5
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9, !prof !148

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  br label %29

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = load ptr, ptr %14, align 8, !tbaa !108
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #12
  %20 = add i32 %3, 8
  store i32 %20, ptr %4, align 8, !tbaa !96
  %21 = load ptr, ptr %13, align 8, !tbaa !110
  %22 = add i32 %3, 9
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = load ptr, ptr %21, align 8, !tbaa !108
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %24) #12
  store ptr %28, ptr %15, align 8, !tbaa !89
  br label %29

29:                                               ; preds = %9, %12
  %30 = phi ptr [ %11, %9 ], [ %28, %12 ]
  %31 = add i32 %3, 1
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %30, ptr noundef %1, i32 noundef %31) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName12setLocalPartEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !149 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !102
  %6 = icmp eq i32 %5, 0
  %7 = icmp ugt i32 %3, %5
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9, !prof !150

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  br label %29

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = load ptr, ptr %14, align 8, !tbaa !108
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #12
  %20 = add i32 %3, 8
  store i32 %20, ptr %4, align 4, !tbaa !102
  %21 = load ptr, ptr %13, align 8, !tbaa !110
  %22 = add i32 %3, 9
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = load ptr, ptr %21, align 8, !tbaa !108
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %24) #12
  store ptr %28, ptr %15, align 8, !tbaa !101
  br label %29

29:                                               ; preds = %9, %12
  %30 = phi ptr [ %11, %9 ], [ %28, %12 ]
  %31 = add i32 %3, 1
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %30, ptr noundef %1, i32 noundef %31) #12
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName10setNPrefixEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !151 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp eq i32 %5, 0
  %7 = icmp ult i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9, !prof !127

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  br label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = load ptr, ptr %14, align 8, !tbaa !108
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #12
  %20 = add i32 %2, 8
  store i32 %20, ptr %4, align 8, !tbaa !96
  %21 = load ptr, ptr %13, align 8, !tbaa !110
  %22 = add i32 %2, 9
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = load ptr, ptr %21, align 8, !tbaa !108
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %24) #12
  store ptr %28, ptr %15, align 8, !tbaa !89
  br label %29

29:                                               ; preds = %9, %12
  %30 = phi ptr [ %11, %9 ], [ %28, %12 ]
  %31 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %30, ptr noundef %1, i32 noundef %2) #12
  %32 = load ptr, ptr %31, align 8, !tbaa !89
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  store i16 0, ptr %34, align 2, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName13setNLocalPartEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !125 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !102
  %6 = icmp eq i32 %5, 0
  %7 = icmp ult i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9, !prof !152

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  br label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = load ptr, ptr %14, align 8, !tbaa !108
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #12
  %20 = add i32 %2, 8
  store i32 %20, ptr %4, align 4, !tbaa !102
  %21 = load ptr, ptr %13, align 8, !tbaa !110
  %22 = add i32 %2, 9
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = load ptr, ptr %21, align 8, !tbaa !108
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %24) #12
  store ptr %28, ptr %15, align 8, !tbaa !101
  br label %29

29:                                               ; preds = %9, %12
  %30 = phi ptr [ %11, %9 ], [ %28, %12 ]
  %31 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %30, ptr noundef %1, i32 noundef %2) #12
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  store i16 0, ptr %34, align 2, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75QName9setValuesERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 align 2 !prof !153 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  tail call void @_ZN11xercesc_2_75QName9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %3) #12
  %4 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  tail call void @_ZN11xercesc_2_75QName12setLocalPartEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %4) #12
  %5 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  tail call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !153 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_75QNameeqERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 align 2 !prof !154 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !103
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10, !prof !155

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #12
  %8 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %7, ptr noundef %8) #12
  br label %18

10:                                               ; preds = %2
  %11 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %12 = icmp eq i32 %4, %11
  br i1 %12, label %13, label %18, !prof !156

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = tail call noundef ptr @_ZNK11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #12
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %15, ptr noundef %16) #12
  br label %18

18:                                               ; preds = %10, %13, %6
  %19 = phi i1 [ %9, %6 ], [ false, %10 ], [ %17, %13 ]
  ret i1 %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !157 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !158

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !122
  %8 = load i16, ptr %1, align 2, !tbaa !122
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !159

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !160

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !122
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !161

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !162

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !122
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !163

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !164

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !122
  %28 = load i16, ptr %26, align 2, !tbaa !122
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !165, !llvm.loop !166

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75QName12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0) #12
  tail call void @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !88 {
  %2 = load i16, ptr %0, align 8, !tbaa !167
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!87}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!36 = !{ptr @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 110}
!37 = !{ptr @_ZN11xercesc_2_75QNameC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 110}
!38 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 946372}
!39 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 946372}
!40 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEEC2EPS1_MS1_FvvE, i64 946372}
!41 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 946372}
!42 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv, i64 946371}
!43 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev, i64 946372}
!44 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtS2_jPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, i64 1148147}
!46 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, ptr @_ZN11xercesc_2_75QName12setLocalPartEPKt, i64 1148147}
!47 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 47}
!48 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 47}
!49 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEEC2EPS1_MS1_FvvE, i64 47}
!50 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QName7setNameEPKtj, i64 47}
!51 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEE7releaseEv, i64 47}
!52 = !{ptr @_ZN11xercesc_2_75QNameC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_5QNameEED2Ev, i64 47}
!53 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 47}
!54 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 47}
!55 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 16}
!56 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_75QName10setNPrefixEPKtj, i64 16}
!57 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, i64 31}
!58 = !{ptr @_ZN11xercesc_2_75QName7setNameEPKtj, ptr @_ZN11xercesc_2_75QName13setNLocalPartEPKtj, i64 47}
!59 = !{ptr @_ZN11xercesc_2_75QNameD2Ev, ptr @_ZN11xercesc_2_75QName7cleanUpEv, i64 946784}
!60 = !{ptr @_ZN11xercesc_2_75QNameD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 946783}
!61 = !{ptr @_ZN11xercesc_2_75QNameD2Ev, ptr @__clang_call_terminate, i64 1}
!62 = !{ptr @_ZN11xercesc_2_75QNameC2ERKS0_, ptr @_ZN11xercesc_2_713XSerializableC2ERKS0_, i64 255}
!63 = !{ptr @_ZN11xercesc_2_75QNameC2ERKS0_, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 510}
!64 = !{ptr @_ZN11xercesc_2_75QNameC2ERKS0_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 510}
!65 = !{ptr @_ZN11xercesc_2_75QNameC2ERKS0_, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 510}
!66 = !{ptr @_ZN11xercesc_2_75QNameC2ERKS0_, ptr @_ZNK11xercesc_2_75QName9getPrefixEv, i64 510}
!67 = !{ptr @_ZN11xercesc_2_75QNameC2ERKS0_, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 255}
!68 = !{ptr @_ZN11xercesc_2_75QName10getRawNameEv, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 4}
!69 = !{ptr @_ZN11xercesc_2_75QName10getRawNameEv, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 4}
!70 = !{ptr @_ZN11xercesc_2_75QName10getRawNameEv, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 4}
!71 = !{ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1148254}
!72 = !{ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 1148254}
!73 = !{ptr @_ZN11xercesc_2_75QName12setLocalPartEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1148223}
!74 = !{ptr @_ZN11xercesc_2_75QName12setLocalPartEPKt, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 1148223}
!75 = !{ptr @_ZN11xercesc_2_75QName10setNPrefixEPKtj, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 16}
!76 = !{ptr @_ZN11xercesc_2_75QName13setNLocalPartEPKtj, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 47}
!77 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZNK11xercesc_2_75QName9getPrefixEv, i64 76}
!78 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZN11xercesc_2_75QName9setPrefixEPKt, i64 76}
!79 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 76}
!80 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZN11xercesc_2_75QName12setLocalPartEPKt, i64 76}
!81 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 76}
!82 = !{ptr @_ZN11xercesc_2_75QName9setValuesERKS0_, ptr @_ZN11xercesc_2_75QName6setURIEj, i64 76}
!83 = !{ptr @_ZNK11xercesc_2_75QNameeqERKS0_, ptr @_ZNK11xercesc_2_75QName10getRawNameEv, i64 2}
!84 = !{ptr @_ZNK11xercesc_2_75QNameeqERKS0_, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1105280}
!85 = !{ptr @_ZNK11xercesc_2_75QNameeqERKS0_, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 1105280}
!86 = !{ptr @_ZNK11xercesc_2_75QNameeqERKS0_, ptr @_ZNK11xercesc_2_75QName12getLocalPartEv, i64 1105279}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!90, !95, i64 24}
!90 = !{!"_ZTSN11xercesc_2_75QNameE", !91, i64 0, !92, i64 8, !92, i64 12, !92, i64 16, !92, i64 20, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48}
!91 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C++ TBAA"}
!95 = !{!"any pointer", !93, i64 0}
!96 = !{!90, !92, i64 8}
!97 = !{!98, !98, i64 0}
!98 = !{!"bool", !93, i64 0}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = !{!90, !95, i64 32}
!102 = !{!90, !92, i64 12}
!103 = !{!90, !92, i64 20}
!104 = !{!92, !92, i64 0}
!105 = !{!90, !92, i64 16}
!106 = !{!90, !95, i64 40}
!107 = !{!"function_entry_count", i64 110}
!108 = !{!109, !109, i64 0}
!109 = !{!"vtable pointer", !94, i64 0}
!110 = !{!90, !95, i64 48}
!111 = !{!"function_entry_count", i64 1068727}
!112 = !{!"function_entry_count", i64 5836268}
!113 = !{!"function_entry_count", i64 1069174}
!114 = !{!"function_entry_count", i64 946372}
!115 = !{!"function_entry_count", i64 946784}
!116 = !{!"function_entry_count", i64 946419}
!117 = !{!118, !95, i64 0}
!118 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_5QNameEEE", !95, i64 0, !93, i64 8}
!119 = !{!118, !93, i64 8}
!120 = !{!"function_entry_count", i64 1148147}
!121 = !{!"branch_weights", i32 1136752, i32 11397}
!122 = !{!123, !123, i64 0}
!123 = !{!"short", !93, i64 0}
!124 = !{!"branch_weights", i32 946420, i32 1}
!125 = !{!"function_entry_count", i64 47}
!126 = !{!"branch_weights", i32 17, i32 32}
!127 = !{!"branch_weights", i32 35, i32 1}
!128 = !{!"branch_weights", i32 32, i32 1}
!129 = !{!"function_entry_count", i64 255}
!130 = !{!"function_entry_count", i64 447}
!131 = !{!"function_entry_count", i64 2453164456}
!132 = !{!"branch_weights", i32 1, i32 -1841802839}
!133 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!134 = !{!"branch_weights", i32 408669070, i32 -279908792}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"function_entry_count", i64 6668307}
!138 = !{!"function_entry_count", i64 2499163}
!139 = !{!"function_entry_count", i64 586}
!140 = !{!"function_entry_count", i64 6553673}
!141 = !{!95, !95, i64 0}
!142 = !{!"function_entry_count", i64 2272349}
!143 = !{!"branch_weights", i32 2237404, i32 34947}
!144 = !{!"branch_weights", i32 34147, i32 801}
!145 = !{!"branch_weights", i32 2271547, i32 4}
!146 = !{!"branch_weights", i32 9, i32 1}
!147 = !{!"function_entry_count", i64 1148254}
!148 = !{!"branch_weights", i32 -1310934535, i32 636149284}
!149 = !{!"function_entry_count", i64 1148223}
!150 = !{!"branch_weights", i32 -1311032271, i32 636149284}
!151 = !{!"function_entry_count", i64 16}
!152 = !{!"branch_weights", i32 97, i32 1}
!153 = !{!"function_entry_count", i64 76}
!154 = !{!"function_entry_count", i64 1105281}
!155 = !{!"branch_weights", i32 1, i32 1105282}
!156 = !{!"branch_weights", i32 1105282, i32 1}
!157 = !{!"function_entry_count", i64 1231717351}
!158 = !{!"branch_weights", i32 621, i32 -1469098093}
!159 = !{!"branch_weights", i32 408901017, i32 1}
!160 = !{!"branch_weights", i32 267, i32 4}
!161 = !{!"branch_weights", i32 1, i32 4}
!162 = !{!"branch_weights", i32 156, i32 112}
!163 = !{!"branch_weights", i32 1, i32 112}
!164 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!165 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!166 = distinct !{!166, !136}
!167 = !{!168, !123, i64 0}
!168 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !123, i64 0, !123, i64 2, !95, i64 8, !95, i64 16, !95, i64 24, !169, i64 32, !169, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !92, i64 96}
!169 = !{!"long", !93, i64 0}

; ModuleID = 'XMLDTDDescriptionImpl.cpp'
source_filename = "XMLDTDDescriptionImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLDTDDescriptionImpl" = type { %"class.xercesc_2_7::XMLDTDDescription", ptr, ptr }
%"class.xercesc_2_7::XMLDTDDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XMLGrammarDescription" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZNK11xercesc_2_717XMLDTDDescription14getGrammarTypeEv = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

@_ZTVN11xercesc_2_721XMLDTDDescriptionImplE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721XMLDTDDescriptionImplE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD0Ev, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl14isSerializableEv, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl12getProtoTypeEv, ptr @_ZNK11xercesc_2_717XMLDTDDescription14getGrammarTypeEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl13getGrammarKeyEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getRootNameEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getSystemIdEv, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setRootNameEPKt, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setSystemIdEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721XMLDTDDescriptionImplE = dso_local constant [39 x i8] c"N11xercesc_2_721XMLDTDDescriptionImplE\00", align 1
@_ZTIN11xercesc_2_717XMLDTDDescriptionE = external constant ptr
@_ZTIN11xercesc_2_721XMLDTDDescriptionImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721XMLDTDDescriptionImplE, ptr @_ZTIN11xercesc_2_717XMLDTDDescriptionE }, align 8
@_ZN11xercesc_2_721XMLDTDDescriptionImpl26classXMLDTDDescriptionImplE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl12createObjectEPNS_13MemoryManagerE }, align 8
@.str = private unnamed_addr constant [22 x i8] c"XMLDTDDescriptionImpl\00", align 1

@_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev
@_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721XMLDTDDescriptionImpl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !42 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImpl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_717XMLDTDDescription9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  br i1 %3, label %6, label %9

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %8, i32 noundef 0, i1 noundef zeroext false) #11
  br label %28

9:                                                ; preds = %2
  %10 = icmp eq ptr %5, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %13 = load ptr, ptr %4, align 8, !tbaa !43
  %14 = load ptr, ptr %12, align 8, !tbaa !52
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %13) #11
  br label %17

17:                                               ; preds = %11, %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %23 = load ptr, ptr %18, align 8, !tbaa !51
  %24 = load ptr, ptr %22, align 8, !tbaa !52
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %23) #11
  br label %27

27:                                               ; preds = %21, %17
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %18) #11
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !42 {
  ret ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl26classXMLDTDDescriptionImplE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XMLDTDDescription14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !42 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl13getGrammarKeyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !54 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds ptr, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getRootNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setRootNameEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !51
  %9 = load ptr, ptr %7, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8) #11
  store ptr null, ptr %3, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %15) #11
  store ptr %16, ptr %3, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = load ptr, ptr %7, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8) #11
  store ptr null, ptr %3, align 8, !tbaa !43
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %15) #11
  store ptr %16, ptr %3, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2) #11
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %5, label %11, label %6, !prof !55

6:                                                ; preds = %3
  %7 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %2) #11
          to label %8 unwind label %9

8:                                                ; preds = %6
  store ptr %7, ptr %4, align 8, !tbaa !43
  br label %11

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  resume { ptr, i32 } %10

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !56 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !57

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #11
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !59

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !60
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !62

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !60
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !63, !llvm.loop !64

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !55

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !43
  %8 = load ptr, ptr %6, align 8, !tbaa !52
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7) #11
          to label %11 unwind label %22

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !66

15:                                               ; preds = %11
  %16 = tail call noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %17 = load ptr, ptr %12, align 8, !tbaa !51
  %18 = load ptr, ptr %16, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17) #11
          to label %21 unwind label %22

21:                                               ; preds = %15, %11
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void

22:                                               ; preds = %15, %5
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %0) #11
  invoke void @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %0) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #10
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717XMLDTDDescription9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !42 {
  %2 = load i16, ptr %0, align 8, !tbaa !69
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !42 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #11
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

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
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE, i64 6}
!37 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 5}
!38 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!39 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev, ptr @_ZNK11xercesc_2_721XMLGrammarDescription16getMemoryManagerEv, i64 6}
!40 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev, ptr @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev, i64 6}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !48, i64 16}
!44 = !{!"_ZTSN11xercesc_2_721XMLDTDDescriptionImplE", !45, i64 0, !48, i64 16, !48, i64 24}
!45 = !{!"_ZTSN11xercesc_2_717XMLDTDDescriptionE", !46, i64 0}
!46 = !{!"_ZTSN11xercesc_2_721XMLGrammarDescriptionE", !47, i64 0, !48, i64 8}
!47 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!44, !48, i64 24}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !50, i64 0}
!54 = !{!"function_entry_count", i64 6}
!55 = !{!"branch_weights", i32 1, i32 7}
!56 = !{!"function_entry_count", i64 558789}
!57 = !{!"branch_weights", i32 158605, i32 400186}
!58 = !{!"function_entry_count", i64 2453164456}
!59 = !{!"branch_weights", i32 1, i32 -1841802839}
!60 = !{!61, !61, i64 0}
!61 = !{!"short", !49, i64 0}
!62 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!63 = !{!"branch_weights", i32 408669070, i32 -279908792}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"branch_weights", i32 7, i32 1}
!67 = !{!"function_entry_count", i64 12}
!68 = !{!46, !48, i64 8}
!69 = !{!70, !61, i64 0}
!70 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !61, i64 0, !61, i64 2, !48, i64 8, !48, i64 16, !48, i64 24, !71, i64 32, !71, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !72, i64 96}
!71 = !{!"long", !49, i64 0}
!72 = !{!"int", !49, i64 0}

; ModuleID = 'XMLDTDDescriptionImpl.cpp'
source_filename = "XMLDTDDescriptionImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLDTDDescriptionImpl" = type { %"class.xercesc_2_7::XMLDTDDescription", ptr, ptr }
%"class.xercesc_2_7::XMLDTDDescription" = type { %"class.xercesc_2_7::XMLGrammarDescription" }
%"class.xercesc_2_7::XMLGrammarDescription" = type { %"class.xercesc_2_7::XSerializable", ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_717XMLDTDDescription14getGrammarTypeEv = comdat any

@_ZTVN11xercesc_2_721XMLDTDDescriptionImplE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721XMLDTDDescriptionImplE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD0Ev, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl14isSerializableEv, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl12getProtoTypeEv, ptr @_ZNK11xercesc_2_717XMLDTDDescription14getGrammarTypeEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl13getGrammarKeyEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getRootNameEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getSystemIdEv, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setRootNameEPKt, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setSystemIdEPKt] }, align 8
@.str = private unnamed_addr constant [22 x i8] c"XMLDTDDescriptionImpl\00", align 1
@_ZN11xercesc_2_721XMLDTDDescriptionImpl26classXMLDTDDescriptionImplE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721XMLDTDDescriptionImplE = dso_local constant [39 x i8] c"N11xercesc_2_721XMLDTDDescriptionImplE\00", align 1
@_ZTIN11xercesc_2_717XMLDTDDescriptionE = external constant ptr
@_ZTIN11xercesc_2_721XMLDTDDescriptionImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721XMLDTDDescriptionImplE, ptr @_ZTIN11xercesc_2_717XMLDTDDescriptionE }, align 8

@_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_721XMLDTDDescriptionImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev
@_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPNS_13MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %5, label %29, label %6, !prof !45

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !46
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9, !prof !45

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %1, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !46
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !prof !49, !llvm.loop !50

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 2
  %19 = and i64 %18, 8589934590
  br label %20

20:                                               ; preds = %14, %6
  %21 = phi i64 [ %19, %14 ], [ 2, %6 ]
  %22 = load ptr, ptr %2, align 8, !tbaa !42
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %21)
          to label %26 unwind label %27, !prof !53

26:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr nonnull align 2 %1, i64 %21, i1 false), !prof !54
  store ptr %25, ptr %4, align 8, !tbaa !55
  br label %29

27:                                               ; preds = %20
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  resume { ptr, i32 } %28

29:                                               ; preds = %26, %3
  ret void
}

declare void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !45

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3)
          to label %11 unwind label %22, !prof !62

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !64

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %13)
          to label %21 unwind label %22

21:                                               ; preds = %11, %15
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void

22:                                               ; preds = %15, %5
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #11
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !65 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl13getGrammarKeyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds ptr, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(32) %0), !prof !67
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getRootNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setRootNameEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4)
  store ptr null, ptr %3, align 8, !tbaa !63
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = load i16, ptr %1, align 2, !tbaa !46
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %14 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !46
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !50

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = add i64 %27, 2
  %29 = and i64 %28, 8589934590
  br label %30

30:                                               ; preds = %24, %14
  %31 = phi i64 [ %29, %24 ], [ 2, %14 ]
  %32 = load ptr, ptr %16, align 8, !tbaa !42
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %31)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr nonnull align 2 %1, i64 %31, i1 false)
  store ptr %35, ptr %3, align 8, !tbaa !63
  br label %36

36:                                               ; preds = %30, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImpl11setSystemIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4)
  store ptr null, ptr %3, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = load i16, ptr %1, align 2, !tbaa !46
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %14 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !46
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !50

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = add i64 %27, 2
  %29 = and i64 %28, 8589934590
  br label %30

30:                                               ; preds = %24, %14
  %31 = phi i64 [ %29, %24 ], [ 2, %14 ]
  %32 = load ptr, ptr %16, align 8, !tbaa !42
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %31)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr nonnull align 2 %1, i64 %31, i1 false)
  store ptr %35, ptr %3, align 8, !tbaa !55
  br label %36

36:                                               ; preds = %30, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %0)
  invoke void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %5

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret ptr %2

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #10
  resume { ptr, i32 } %6
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721XMLDTDDescriptionImpl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !65 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !65 {
  ret ptr @_ZN11xercesc_2_721XMLDTDDescriptionImpl26classXMLDTDDescriptionImplE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImpl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !65 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_717XMLDTDDescription9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %7 = load i16, ptr %1, align 8, !tbaa !68
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  br i1 %8, label %11, label %14

11:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %10, i32 noundef 0, i1 noundef zeroext false)
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13, i32 noundef 0, i1 noundef zeroext false)
  br label %33

14:                                               ; preds = %2
  %15 = icmp eq ptr %10, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %10)
  br label %22

22:                                               ; preds = %16, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarDescription", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  call void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %24)
  br label %32

32:                                               ; preds = %26, %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %33

33:                                               ; preds = %32, %11
  ret void
}

declare void @_ZN11xercesc_2_717XMLDTDDescription9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_721XMLDTDDescriptionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDTDDescriptionImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717XMLDTDDescription14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !65 {
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717XMLDTDDescriptionC2EPNS_13MemoryManagerE, i64 6}
!36 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev, ptr @_ZN11xercesc_2_717XMLDTDDescriptionD2Ev, i64 6}
!37 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD0Ev, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!39 = !{ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl13getGrammarKeyEv, ptr @_ZNK11xercesc_2_721XMLDTDDescriptionImpl11getSystemIdEv, i64 6}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 6}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"branch_weights", i32 0, i32 6}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !48, i64 0}
!48 = !{!"omnipotent char", !44, i64 0}
!49 = !{!"branch_weights", i32 6, i32 24}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!54 = !{!"VP", i32 1, i64 6, i64 9, i64 6}
!55 = !{!56, !60, i64 16}
!56 = !{!"_ZTSN11xercesc_2_721XMLDTDDescriptionImplE", !57, i64 0, !60, i64 16, !60, i64 24}
!57 = !{!"_ZTSN11xercesc_2_717XMLDTDDescriptionE", !58, i64 0}
!58 = !{!"_ZTSN11xercesc_2_721XMLGrammarDescriptionE", !59, i64 0, !60, i64 8}
!59 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!60 = !{!"any pointer", !48, i64 0}
!61 = !{!58, !60, i64 8}
!62 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!63 = !{!56, !60, i64 24}
!64 = !{!"branch_weights", i32 6, i32 0}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!"function_entry_count", i64 3}
!67 = !{!"VP", i32 0, i64 6, i64 752665028280804494, i64 6}
!68 = !{!69, !47, i64 0}
!69 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !47, i64 0, !47, i64 2, !60, i64 8, !60, i64 16, !60, i64 24, !70, i64 32, !70, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !71, i64 96}
!70 = !{!"long", !48, i64 0}
!71 = !{!"int", !48, i64 0}

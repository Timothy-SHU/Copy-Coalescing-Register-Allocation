; ModuleID = 'SAXParseException.cpp'
source_filename = "SAXParseException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712SAXExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712SAXExceptionaSERKS0_ = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_717SAXParseExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_717SAXParseExceptionD2Ev, ptr @_ZN11xercesc_2_717SAXParseExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717SAXParseExceptionE = dso_local constant [35 x i8] c"N11xercesc_2_717SAXParseExceptionE\00", align 1
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_717SAXParseExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717SAXParseExceptionE, ptr @_ZTIN11xercesc_2_712SAXExceptionE }, align 8
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8

@_ZN11xercesc_2_717SAXParseExceptionC1EPKtRKNS_7LocatorEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionC2EPKtRKNS_7LocatorEPNS_13MemoryManagerE
@_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, i64, ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionC2EPKtS2_S2_llPNS_13MemoryManagerE
@_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionC2ERKS0_
@_ZN11xercesc_2_717SAXParseExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717SAXParseExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionC2EPKtRKNS_7LocatorEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %3) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %5 = load ptr, ptr %2, align 8, !tbaa !44
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef i64 %7(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %9 unwind label %33

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  store i64 %8, ptr %10, align 8, !tbaa !46
  %11 = load ptr, ptr %2, align 8, !tbaa !44
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef i64 %13(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %15 unwind label %33

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  store i64 %14, ptr %16, align 8, !tbaa !49
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %2, align 8, !tbaa !44
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %22 unwind label %33

22:                                               ; preds = %15
  %23 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %3) #8
          to label %24 unwind label %33

24:                                               ; preds = %22
  store ptr %23, ptr %17, align 8, !tbaa !50
  %25 = load ptr, ptr %2, align 8, !tbaa !44
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %29 unwind label %33

29:                                               ; preds = %24
  %30 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %3) #8
          to label %31 unwind label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  store ptr %30, ptr %32, align 8, !tbaa !51
  ret void

33:                                               ; preds = %29, %24, %22, %15, %9, %4
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #8
  store ptr %5, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !52
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !53 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !54

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #8
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !55 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #8
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !57

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !58
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !60

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !58
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !61, !llvm.loop !62

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionC2EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712SAXExceptionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %6) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  store i64 %5, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  store i64 %4, ptr %9, align 8, !tbaa !49
  %10 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %6) #8
          to label %11 unwind label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  store ptr %10, ptr %12, align 8, !tbaa !50
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %6) #8
          to label %14 unwind label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  store ptr %13, ptr %15, align 8, !tbaa !51
  ret void

16:                                               ; preds = %11, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712SAXExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 1
  %5 = load <2 x i64>, ptr %4, align 8, !tbaa !64
  store <2 x i64> %5, ptr %3, align 8, !tbaa !64
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %10) #8
          to label %12 unwind label %19

12:                                               ; preds = %2
  store ptr %11, ptr %6, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = load ptr, ptr %9, align 8, !tbaa !52
  %16 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %15) #8
          to label %17 unwind label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  store ptr %16, ptr %18, align 8, !tbaa !51
  ret void

19:                                               ; preds = %12, %2
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %7) #8
  store ptr %8, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %6, align 8, !tbaa !52
  store ptr %10, ptr %9, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #8
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !52
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = load ptr, ptr %10, align 8, !tbaa !44
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #8
          to label %16 unwind label %17

16:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_717SAXParseExceptionaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 align 2 !prof !38 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8) #8
  %12 = load ptr, ptr %5, align 8, !tbaa !52
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = load ptr, ptr %12, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %14) #8
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_712SAXExceptionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  %21 = load <2 x i64>, ptr %19, align 8, !tbaa !64
  store <2 x i64> %21, ptr %20, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = load ptr, ptr %5, align 8, !tbaa !52
  %25 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %24) #8
  store ptr %25, ptr %7, align 8, !tbaa !50
  %26 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = load ptr, ptr %5, align 8, !tbaa !52
  %29 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %28) #8
  store ptr %29, ptr %13, align 8, !tbaa !51
  br label %30

30:                                               ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_712SAXExceptionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !38 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8) #8
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %15) #8
  store ptr %16, ptr %7, align 8, !tbaa !39
  %17 = load ptr, ptr %14, align 8, !tbaa !52
  store ptr %17, ptr %5, align 8, !tbaa !52
  br label %18

18:                                               ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAXParseException11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !49
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !46
  ret i64 %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!35 = distinct !{!36}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !41, i64 8, !41, i64 16}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !43, i64 0}
!46 = !{!47, !48, i64 24}
!47 = !{!"_ZTSN11xercesc_2_717SAXParseExceptionE", !40, i64 0, !48, i64 24, !48, i64 32, !41, i64 40, !41, i64 48}
!48 = !{!"long", !42, i64 0}
!49 = !{!47, !48, i64 32}
!50 = !{!47, !41, i64 40}
!51 = !{!47, !41, i64 48}
!52 = !{!40, !41, i64 16}
!53 = !{!"function_entry_count", i64 558789}
!54 = !{!"branch_weights", i32 158605, i32 400186}
!55 = !{!"function_entry_count", i64 5836268}
!56 = !{!"function_entry_count", i64 2453164456}
!57 = !{!"branch_weights", i32 1, i32 -1841802839}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !42, i64 0}
!60 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!61 = !{!"branch_weights", i32 408669070, i32 -279908792}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!48, !48, i64 0}

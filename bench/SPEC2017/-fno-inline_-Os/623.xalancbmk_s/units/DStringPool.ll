; ModuleID = 'DStringPool.cpp'
source_filename = "DStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DStringPool" = type { ptr, i32, ptr }
%"struct.xercesc_2_7::DStringPoolEntry" = type { ptr, %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::DOMString" = type { ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716DStringPoolEntryD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716DStringPoolEntryC2Ev = comdat any

@_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_711DStringPoolC2EiPNS_13MemoryManagerE
@_ZN11xercesc_2_711DStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DStringPoolD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DStringPoolC2EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  %4 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !36
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %6) #6
  store ptr %10, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !45
  %12 = load i32, ptr %4, align 8, !tbaa !36
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = zext nneg i32 %12 to i64
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %21, %17 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !44
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr null, ptr %20, align 8, !tbaa !46
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %16, label %17, !llvm.loop !47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DStringPoolD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !36
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %25, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %0, align 8, !tbaa !44
  %9 = load ptr, ptr %7, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8) #6
          to label %30 unwind label %31

12:                                               ; preds = %1, %25
  %13 = phi i32 [ %26, %25 ], [ %3, %1 ]
  %14 = phi i64 [ %27, %25 ], [ 0, %1 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %12 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_716DStringPoolEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %20) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %19, !llvm.loop !53

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 8, !tbaa !36
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i32 [ %24, %23 ], [ %13, %12 ]
  %27 = add nuw nsw i64 %14, 1
  %28 = sext i32 %26 to i64
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %12, label %5, !llvm.loop !54

30:                                               ; preds = %5
  store ptr null, ptr %0, align 8, !tbaa !44
  ret void

31:                                               ; preds = %5
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DStringPoolEntryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %7) #6
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %2, %22
  %15 = phi ptr [ %23, %22 ], [ %12, %2 ]
  %16 = phi ptr [ %19, %22 ], [ %11, %2 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %15, i64 0, i32 1
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1) #6
  %19 = load ptr, ptr %16, align 8, !tbaa !46
  br i1 %18, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %19, i64 0, i32 1
  br label %37

22:                                               ; preds = %14
  %23 = load ptr, ptr %19, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14, !llvm.loop !55

25:                                               ; preds = %22, %2
  %26 = phi ptr [ %11, %2 ], [ %19, %22 ]
  %27 = load ptr, ptr %6, align 8, !tbaa !45
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %27) #6
  invoke void @_ZN11xercesc_2_716DStringPoolEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #6
          to label %29 unwind label %33

29:                                               ; preds = %25
  store ptr %28, ptr %26, align 8, !tbaa !46
  store ptr null, ptr %28, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #6
  %30 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %28, i64 0, i32 1
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %32 unwind label %35

32:                                               ; preds = %29
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %37

33:                                               ; preds = %25
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #7
  br label %39

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %39

37:                                               ; preds = %32, %20
  %38 = phi ptr [ %21, %20 ], [ %30, %32 ]
  ret ptr %38

39:                                               ; preds = %35, %33
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  resume { ptr, i32 } %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !56 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !57

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !58
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !60

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !58
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !61

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !58
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !62, !llvm.loop !63

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DStringPoolEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  %2 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %6 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %4, i32 noundef %5, i32 noundef %7, ptr noundef %9) #6
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %2, %24
  %17 = phi ptr [ %25, %24 ], [ %14, %2 ]
  %18 = phi ptr [ %21, %24 ], [ %13, %2 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %17, i64 0, i32 1
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  br i1 %20, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %21, i64 0, i32 1
  br label %39

24:                                               ; preds = %16
  %25 = load ptr, ptr %21, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %16, !llvm.loop !64

27:                                               ; preds = %24, %2
  %28 = phi ptr [ %13, %2 ], [ %21, %24 ]
  %29 = load ptr, ptr %8, align 8, !tbaa !45
  %30 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %29) #6
  invoke void @_ZN11xercesc_2_716DStringPoolEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #6
          to label %31 unwind label %35

31:                                               ; preds = %27
  store ptr %30, ptr %28, align 8, !tbaa !46
  store ptr null, ptr %30, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %32 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %30, i64 0, i32 1
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %34 unwind label %37

34:                                               ; preds = %31
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %39

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #7
  br label %41

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %41

39:                                               ; preds = %34, %22
  %40 = phi ptr [ %23, %22 ], [ %32, %34 ]
  ret ptr %40

41:                                               ; preds = %37, %35
  %42 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %42
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = load ptr, ptr %1, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #6
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %0) #6
          to label %9 unwind label %13

9:                                                ; preds = %7
  %10 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef null) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #7
  br label %16

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %8) #7
  resume { ptr, i32 } %14

15:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2) #6
  br label %16

16:                                               ; preds = %15, %12, %4
  %17 = load ptr, ptr %1, align 8, !tbaa !46
  ret ptr %17
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !41, i64 8}
!37 = !{!"_ZTSN11xercesc_2_711DStringPoolE", !38, i64 0, !41, i64 8, !38, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !40, i64 0}
!44 = !{!37, !38, i64 0}
!45 = !{!37, !38, i64 16}
!46 = !{!38, !38, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"function_entry_count", i64 5836268}
!50 = !{!51, !38, i64 0}
!51 = !{!"_ZTSN11xercesc_2_716DStringPoolEntryE", !38, i64 0, !52, i64 8}
!52 = !{!"_ZTSN11xercesc_2_79DOMStringE", !38, i64 0}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = !{!"function_entry_count", i64 4646679}
!57 = !{!"branch_weights", i32 1, i32 4646680}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !39, i64 0}
!60 = !{!"branch_weights", i32 1216534, i32 3430147}
!61 = !{!"branch_weights", i32 1, i32 3430146}
!62 = !{!"branch_weights", i32 3430146, i32 42249130}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}

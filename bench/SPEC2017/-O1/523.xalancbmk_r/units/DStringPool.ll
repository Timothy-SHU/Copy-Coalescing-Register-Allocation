; ModuleID = 'DStringPool.cpp'
source_filename = "DStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DStringPool" = type { ptr, i32, ptr }
%"struct.xercesc_2_7::DStringPoolEntry" = type { ptr, %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::DOMString" = type { ptr }

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_711DStringPoolC2EiPNS_13MemoryManagerE
@_ZN11xercesc_2_711DStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DStringPoolD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DStringPoolC2EiPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !35
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = load ptr, ptr %2, align 8, !tbaa !41
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %6)
  store ptr %10, ptr %0, align 8, !tbaa !43
  %11 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !44
  %12 = load i32, ptr %4, align 8, !tbaa !35
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = zext nneg i32 %12 to i64
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %21, %17 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !43
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr null, ptr %20, align 8, !tbaa !45
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %16, label %17, !llvm.loop !46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711DStringPoolD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !35
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %23, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = load ptr, ptr %7, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8)
          to label %28 unwind label %29

12:                                               ; preds = %1, %23
  %13 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !43
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %20, %18 ], [ %16, %12 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %19, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %19) #6
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %18, !llvm.loop !52

23:                                               ; preds = %18, %12
  %24 = add nuw nsw i64 %13, 1
  %25 = load i32, ptr %2, align 8, !tbaa !35
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %12, label %5, !llvm.loop !53

28:                                               ; preds = %5
  store ptr null, ptr %0, align 8, !tbaa !43
  ret void

29:                                               ; preds = %5
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #7
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = load i16, ptr %1, align 2, !tbaa !54
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = zext i16 %9 to i32
  %13 = getelementptr inbounds i16, ptr %1, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !54
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11, %16
  %17 = phi i16 [ %26, %16 ], [ %14, %11 ]
  %18 = phi ptr [ %25, %16 ], [ %13, %11 ]
  %19 = phi i32 [ %24, %16 ], [ %12, %11 ]
  %20 = mul i32 %19, 38
  %21 = lshr i32 %19, 24
  %22 = add i32 %20, %21
  %23 = zext i16 %17 to i32
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds i16, ptr %18, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !54
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !56

28:                                               ; preds = %16, %11
  %29 = phi i32 [ %12, %11 ], [ %24, %16 ]
  %30 = urem i32 %29, %5
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %2, %8, %28
  %33 = phi i64 [ %31, %28 ], [ 0, %8 ], [ 0, %2 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !43
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %32, %46
  %39 = phi ptr [ %47, %46 ], [ %36, %32 ]
  %40 = phi ptr [ %43, %46 ], [ %35, %32 ]
  %41 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %39, i64 0, i32 1
  %42 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %1)
  %43 = load ptr, ptr %40, align 8, !tbaa !45
  br i1 %42, label %44, label %46

44:                                               ; preds = %38
  %45 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %43, i64 0, i32 1
  br label %61

46:                                               ; preds = %38
  %47 = load ptr, ptr %43, align 8, !tbaa !45
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %38, !llvm.loop !57

49:                                               ; preds = %46, %32
  %50 = phi ptr [ %35, %32 ], [ %43, %46 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !44
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %51)
  %53 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %52, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %54 unwind label %57

54:                                               ; preds = %49
  store ptr %52, ptr %50, align 8, !tbaa !45
  store ptr null, ptr %52, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %56 unwind label %59

56:                                               ; preds = %54
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %61

57:                                               ; preds = %49
  %58 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %51) #6
  br label %63

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %63

61:                                               ; preds = %56, %44
  %62 = phi ptr [ %45, %44 ], [ %53, %56 ]
  ret ptr %62

63:                                               ; preds = %59, %57
  %64 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  resume { ptr, i32 } %64
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DStringPool", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %4, i32 noundef %5, i32 noundef %7, ptr noundef %9)
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %2, %24
  %17 = phi ptr [ %25, %24 ], [ %14, %2 ]
  %18 = phi ptr [ %21, %24 ], [ %13, %2 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %17, i64 0, i32 1
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %21 = load ptr, ptr %18, align 8, !tbaa !45
  br i1 %20, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %21, i64 0, i32 1
  br label %39

24:                                               ; preds = %16
  %25 = load ptr, ptr %21, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %16, !llvm.loop !58

27:                                               ; preds = %24, %2
  %28 = phi ptr [ %13, %2 ], [ %21, %24 ]
  %29 = load ptr, ptr %8, align 8, !tbaa !44
  %30 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %29)
  %31 = getelementptr inbounds %"struct.xercesc_2_7::DStringPoolEntry", ptr %30, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %32 unwind label %35

32:                                               ; preds = %27
  store ptr %30, ptr %28, align 8, !tbaa !45
  store ptr null, ptr %30, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %34 unwind label %37

34:                                               ; preds = %32
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %39

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #6
  br label %41

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %41

39:                                               ; preds = %34, %22
  %40 = phi ptr [ %23, %22 ], [ %31, %34 ]
  ret ptr %40

41:                                               ; preds = %37, %35
  %42 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %42
}

declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %0)
          to label %9 unwind label %13

9:                                                ; preds = %7
  %10 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef null)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #6
  br label %16

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %8) #6
  resume { ptr, i32 } %14

15:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2)
  br label %16

16:                                               ; preds = %15, %12, %4
  %17 = load ptr, ptr %1, align 8, !tbaa !45
  ret ptr %17
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !40, i64 8}
!36 = !{!"_ZTSN11xercesc_2_711DStringPoolE", !37, i64 0, !40, i64 8, !37, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !39, i64 0}
!43 = !{!36, !37, i64 0}
!44 = !{!36, !37, i64 16}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !37, i64 0}
!50 = !{!"_ZTSN11xercesc_2_716DStringPoolEntryE", !37, i64 0, !51, i64 8}
!51 = !{!"_ZTSN11xercesc_2_79DOMStringE", !37, i64 0}
!52 = distinct !{!52, !47, !48}
!53 = distinct !{!53, !47, !48}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !38, i64 0}
!56 = distinct !{!56, !47, !48}
!57 = distinct !{!57, !47, !48}
!58 = distinct !{!58, !47, !48}

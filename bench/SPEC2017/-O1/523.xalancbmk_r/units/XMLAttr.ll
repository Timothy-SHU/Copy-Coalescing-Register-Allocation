; ModuleID = 'XMLAttr.cpp'
source_filename = "XMLAttr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8

@_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_77XMLAttrC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, i32, i1, ptr, ptr, i1), ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb
@_ZN11xercesc_2_77XMLAttrC1EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, i32, i1, ptr, ptr, i1), ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttrC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store i8 0, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 0, ptr %8, align 8, !tbaa !53
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %1)
  %10 = load ptr, ptr %6, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %10)
          to label %11 unwind label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  store ptr %9, ptr %12, align 8, !tbaa !54
  ret void

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %1) #9
  resume { ptr, i32 } %14
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %11 = zext i1 %6 to i8
  %12 = zext i1 %9 to i8
  store i8 %11, ptr %0, align 8, !tbaa !41
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store ptr %7, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %8, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %12, ptr %19, align 8, !tbaa !53
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %7)
          to label %21 unwind label %24, !prof !56

21:                                               ; preds = %10
  %22 = load ptr, ptr %17, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef %3, ptr noundef %2, i32 noundef %1, ptr noundef %22)
          to label %23 unwind label %26, !prof !56

23:                                               ; preds = %21
  store ptr %20, ptr %16, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4)
          to label %38 unwind label %24, !prof !56

24:                                               ; preds = %23, %10
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %28

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %7) #9
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %25, %24 ], [ %27, %26 ]
  %30 = extractvalue { ptr, i32 } %29, 1
  %31 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #9
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = extractvalue { ptr, i32 } %29, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #9
  invoke void @__cxa_rethrow() #10
          to label %53 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %50

38:                                               ; preds = %23
  ret void

39:                                               ; preds = %36, %28
  %40 = phi ptr [ null, %36 ], [ @_ZN11xercesc_2_77XMLAttr7cleanUpEv, %28 ]
  %41 = phi ptr [ null, %36 ], [ %0, %28 ]
  %42 = phi { ptr, i32 } [ %37, %36 ], [ %29, %28 ]
  %43 = icmp eq ptr %41, null
  %44 = or i1 %32, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(49) %41)
          to label %49 unwind label %46

46:                                               ; preds = %45
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #11
  unreachable

49:                                               ; preds = %39, %45
  resume { ptr, i32 } %42

50:                                               ; preds = %36
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #11
  unreachable

53:                                               ; preds = %33
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #0 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !57

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #9, !prof !60
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = load ptr, ptr %11, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13), !prof !62
  ret void
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !63 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !64

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !65
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !67

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !65
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !68, !llvm.loop !69

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i32 %21, 0
  %23 = icmp ugt i32 %19, %21
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %42, !prof !72

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = load ptr, ptr %27, align 8, !tbaa !58
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29), !prof !73
  %33 = add i32 %19, 8
  store i32 %33, ptr %20, align 8, !tbaa !50
  %34 = load ptr, ptr %26, align 8, !tbaa !51
  %35 = add i32 %19, 9
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %34, align 8, !tbaa !58
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37), !prof !74
  store ptr %41, ptr %28, align 8, !tbaa !61
  br label %42

42:                                               ; preds = %18, %25
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = add i32 %19, 1
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr align 2 %1, i64 %47, i1 false), !prof !75
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %10 = zext i1 %5 to i8
  %11 = zext i1 %8 to i8
  store i8 %10, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %4, ptr %12, align 4, !tbaa !49
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  store i32 0, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %6, ptr %16, align 8, !tbaa !51
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %7, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %11, ptr %18, align 8, !tbaa !53
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %6)
          to label %20 unwind label %23

20:                                               ; preds = %9
  %21 = load ptr, ptr %16, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef %2, i32 noundef %1, ptr noundef %21)
          to label %22 unwind label %25

22:                                               ; preds = %20
  store ptr %19, ptr %15, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %3)
          to label %37 unwind label %23

23:                                               ; preds = %22, %9
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %6) #9
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %26, %25 ]
  %29 = extractvalue { ptr, i32 } %28, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #9
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = extractvalue { ptr, i32 } %28, 0
  %34 = tail call ptr @__cxa_begin_catch(ptr %33) #9
  invoke void @__cxa_rethrow() #10
          to label %52 unwind label %35

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %38 unwind label %49

37:                                               ; preds = %22
  ret void

38:                                               ; preds = %35, %27
  %39 = phi ptr [ null, %35 ], [ @_ZN11xercesc_2_77XMLAttr7cleanUpEv, %27 ]
  %40 = phi ptr [ null, %35 ], [ %0, %27 ]
  %41 = phi { ptr, i32 } [ %36, %35 ], [ %28, %27 ]
  %42 = icmp eq ptr %40, null
  %43 = or i1 %31, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(49) %40)
          to label %48 unwind label %45

45:                                               ; preds = %44
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #11
  unreachable

48:                                               ; preds = %38, %44
  resume { ptr, i32 } %41

49:                                               ; preds = %35
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #11
  unreachable

52:                                               ; preds = %32
  unreachable
}

declare void @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #3 align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr7setNameEjPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !40 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %3, ptr noundef %2, i32 noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 10}
!37 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 10}
!38 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 604058}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !43, i64 0, !46, i64 4, !47, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !43, i64 48}
!43 = !{!"bool", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !44, i64 0}
!47 = !{!"int", !44, i64 0}
!48 = !{!"any pointer", !44, i64 0}
!49 = !{!42, !46, i64 4}
!50 = !{!42, !47, i64 8}
!51 = !{!42, !48, i64 32}
!52 = !{!42, !48, i64 40}
!53 = !{!42, !43, i64 48}
!54 = !{!42, !48, i64 24}
!55 = !{!"function_entry_count", i64 10}
!56 = !{!"branch_weights", i32 10, i32 0}
!57 = !{!"branch_weights", i32 0, i32 10}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !45, i64 0}
!60 = !{!"VP", i32 0, i64 10, i64 7173745605608799217, i64 10}
!61 = !{!42, !48, i64 16}
!62 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!63 = !{!"function_entry_count", i64 202007}
!64 = !{!"branch_weights", i32 0, i32 202007}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !44, i64 0}
!67 = !{!"branch_weights", i32 222, i32 201785}
!68 = !{!"branch_weights", i32 201785, i32 1911421}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"branch_weights", i32 17, i32 201990}
!73 = !{!"VP", i32 0, i64 17, i64 -7405368087501025645, i64 17}
!74 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!75 = !{!"VP", i32 1, i64 202007, i64 17, i64 156453, i64 33, i64 26142, i64 6, i64 9757, i64 32, i64 4904}
!76 = !{!"function_entry_count", i64 604058}
!77 = !{!78, !47, i64 20}
!78 = !{!"_ZTSN11xercesc_2_75QNameE", !79, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48}
!79 = !{!"_ZTSN11xercesc_2_713XSerializableE"}

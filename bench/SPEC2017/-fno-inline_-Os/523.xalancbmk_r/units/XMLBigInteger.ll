; ModuleID = 'XMLBigInteger.cpp'
source_filename = "XMLBigInteger.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBigInteger" = type { i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_713XMLBigInteger7getSignEv = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTVN11xercesc_2_721NumberFormatExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"XMLBigInteger.cpp\00", align 1
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721NumberFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv, ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16

@_ZN11xercesc_2_713XMLBigIntegerC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713XMLBigIntegerC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_713XMLBigIntegerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLBigIntegerD2Ev
@_ZN11xercesc_2_713XMLBigIntegerC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713XMLBigIntegerC2ERKS0_

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca i32, align 4
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #10
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 1
  %10 = load ptr, ptr %1, align 8, !tbaa !41
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %9) #10
          to label %14 unwind label %20

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %13, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !tbaa !44
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef %15) #10
          to label %16 unwind label %22

16:                                               ; preds = %14
  %17 = load i32, ptr %5, align 4, !tbaa !44
  switch i32 %17, label %37 [
    i32 0, label %18
    i32 -1, label %24
  ]

18:                                               ; preds = %16
  store i16 48, ptr %13, align 2, !tbaa !49
  %19 = getelementptr inbounds i16, ptr %13, i64 1
  store i16 0, ptr %19, align 2, !tbaa !49
  br label %37

20:                                               ; preds = %3
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %43

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %41

24:                                               ; preds = %16
  %25 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %13) #10
  %26 = add i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 1
  %29 = load ptr, ptr %1, align 8, !tbaa !41
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %28) #10
          to label %33 unwind label %35

33:                                               ; preds = %24
  store i16 45, ptr %32, align 2, !tbaa !49
  %34 = getelementptr inbounds i16, ptr %32, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %34, ptr noundef %13) #10
          to label %39 unwind label %35

35:                                               ; preds = %33, %24
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %41

37:                                               ; preds = %16, %18
  %38 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorItE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  br label %39

39:                                               ; preds = %33, %37
  %40 = phi ptr [ %13, %37 ], [ %32, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %51

41:                                               ; preds = %35, %22
  %42 = phi { ptr, i32 } [ %36, %35 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %43

43:                                               ; preds = %41, %20
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %21, %20 ]
  %45 = extractvalue { ptr, i32 } %44, 1
  %46 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #11
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = extractvalue { ptr, i32 } %44, 0
  %50 = call ptr @__cxa_begin_catch(ptr %49) #11
  call void @__cxa_end_catch()
  br label %51

51:                                               ; preds = %48, %39
  %52 = phi ptr [ %40, %39 ], [ null, %48 ]
  ret ptr %52

53:                                               ; preds = %43
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !52

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !49
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !53

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !54, !llvm.loop !55

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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %0, align 2, !tbaa !49
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6, %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 261, ptr noundef %3) #10
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %67

14:                                               ; preds = %6, %14
  %15 = phi ptr [ %18, %14 ], [ %0, %6 ]
  %16 = load i16, ptr %15, align 2, !tbaa !49
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %16) #10
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  br i1 %17, label %14, label %19, !llvm.loop !61

19:                                               ; preds = %14
  %20 = load i16, ptr %15, align 2, !tbaa !49
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 262, ptr noundef %3) #10
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %67

27:                                               ; preds = %19
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i16, ptr %0, i64 %29
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %30, %27 ], [ %33, %31 ]
  %33 = getelementptr inbounds i16, ptr %32, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !49
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %34) #10
  br i1 %35, label %31, label %36, !llvm.loop !62

36:                                               ; preds = %31
  store i32 1, ptr %2, align 4, !tbaa !44
  %37 = load i16, ptr %15, align 2, !tbaa !49
  switch i16 %37, label %40 [
    i16 45, label %38
    i16 43, label %39
  ]

38:                                               ; preds = %36
  store i32 -1, ptr %2, align 4, !tbaa !44
  br label %40

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %36, %39, %38
  %41 = phi ptr [ %15, %36 ], [ %18, %39 ], [ %18, %38 ]
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %46, %42 ], [ %41, %40 ]
  %44 = load i16, ptr %43, align 2, !tbaa !49
  %45 = icmp eq i16 %44, 48
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  br i1 %45, label %42, label %47, !llvm.loop !63

47:                                               ; preds = %42
  %48 = icmp ult ptr %43, %32
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  store i32 0, ptr %2, align 4, !tbaa !44
  br label %66

50:                                               ; preds = %47, %61
  %51 = phi ptr [ %62, %61 ], [ %1, %47 ]
  %52 = phi ptr [ %63, %61 ], [ %43, %47 ]
  %53 = load i16, ptr %52, align 2, !tbaa !49
  %54 = add i16 %53, -58
  %55 = icmp ult i16 %54, -10
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 264, ptr noundef %3) #10
          to label %58 unwind label %59

58:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

59:                                               ; preds = %56
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %67

61:                                               ; preds = %50
  store i16 %53, ptr %51, align 2, !tbaa !49
  %62 = getelementptr inbounds i16, ptr %51, i64 1
  %63 = getelementptr inbounds i16, ptr %52, i64 1
  %64 = icmp ult ptr %63, %32
  br i1 %64, label %50, label %65, !llvm.loop !64

65:                                               ; preds = %61
  store i16 0, ptr %62, align 2, !tbaa !49
  br label %66

66:                                               ; preds = %65, %49
  ret void

67:                                               ; preds = %25, %59, %12
  %68 = phi ptr [ %23, %25 ], [ %57, %59 ], [ %10, %12 ]
  %69 = phi { ptr, i32 } [ %26, %25 ], [ %60, %59 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %68) #11
  resume { ptr, i32 } %69
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorItE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  store ptr null, ptr %0, align 8, !tbaa !58
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #2 comdat align 2 !prof !66 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !67
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigIntegerC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store i32 0, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !70
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %10 = load ptr, ptr %6, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 261, ptr noundef %10) #10
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #11
  br label %41

14:                                               ; preds = %3
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #10
  %16 = add i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 1
  %19 = load ptr, ptr %2, align 8, !tbaa !41
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %18) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %23 = load ptr, ptr %6, align 8, !tbaa !70
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %22, ptr noundef %23) #10
  %24 = load ptr, ptr %6, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %22, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %24) #10
          to label %25 unwind label %31

25:                                               ; preds = %14
  %26 = load i32, ptr %0, align 8, !tbaa !68
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %6, align 8, !tbaa !70
  br i1 %27, label %29, label %33

29:                                               ; preds = %25
  %30 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %28) #10
          to label %35 unwind label %31

31:                                               ; preds = %35, %33, %29, %14
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %41

33:                                               ; preds = %25
  %34 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %28) #10
          to label %35 unwind label %31

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %30, %29 ], [ %34, %33 ]
  store ptr %36, ptr %5, align 8, !tbaa !71
  %37 = load ptr, ptr %6, align 8, !tbaa !70
  %38 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %37) #10
          to label %39 unwind label %31

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 2
  store ptr %38, ptr %40, align 8, !tbaa !72
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void

41:                                               ; preds = %31, %12
  %42 = phi { ptr, i32 } [ %32, %31 ], [ %13, %12 ]
  resume { ptr, i32 } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !73 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !75

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigIntegerD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = load ptr, ptr %3, align 8, !tbaa !41
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #10
          to label %9 unwind label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !70
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %11) #10
          to label %18 unwind label %19

18:                                               ; preds = %13, %9
  ret void

19:                                               ; preds = %13, %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigIntegerC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 !prof !40 {
  %3 = load i32, ptr %1, align 8, !tbaa !68
  store i32 %3, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  store ptr %8, ptr %6, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %8) #10
  store ptr %11, ptr %4, align 8, !tbaa !71
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load ptr, ptr %6, align 8, !tbaa !70
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %14) #10
  store ptr %15, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 265, ptr noundef %2) #10
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  %13 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigInteger7getSignEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %14 = tail call noundef i32 @_ZNK11xercesc_2_713XMLBigInteger7getSignEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i32 %13, %14
  %18 = select i1 %17, i32 1, i32 -1
  br label %50

19:                                               ; preds = %12
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %23) #10
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %26) #10
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = icmp slt i32 %13, 1
  %31 = select i1 %30, i32 -1, i32 1
  br label %50

32:                                               ; preds = %21
  %33 = icmp slt i32 %24, %27
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = icmp slt i32 %13, 1
  %36 = select i1 %35, i32 1, i32 -1
  br label %50

37:                                               ; preds = %32
  %38 = load ptr, ptr %22, align 8, !tbaa !71
  %39 = load ptr, ptr %25, align 8, !tbaa !71
  %40 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %38, ptr noundef %39) #10
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = icmp slt i32 %13, 1
  %44 = select i1 %43, i32 -1, i32 1
  br label %50

45:                                               ; preds = %37
  %46 = icmp slt i32 %40, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = icmp slt i32 %13, 1
  %49 = select i1 %48, i32 1, i32 -1
  br label %50

50:                                               ; preds = %29, %34, %45, %47, %42, %19, %16
  %51 = phi i32 [ %18, %16 ], [ 0, %19 ], [ %31, %29 ], [ %36, %34 ], [ %44, %42 ], [ %49, %47 ], [ 0, %45 ]
  ret i32 %51
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigInteger7getSignEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !68
  ret i32 %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %1, ptr noundef %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 265, ptr noundef %4) #10
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %5
  %15 = load i32, ptr %1, align 4, !tbaa !44
  %16 = load i32, ptr %3, align 4, !tbaa !44
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i32 %15, %16
  %20 = select i1 %19, i32 1, i32 -1
  br label %50

21:                                               ; preds = %14
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %21
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %2) #10
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, ptr %1, align 4, !tbaa !44
  %29 = icmp slt i32 %28, 1
  %30 = select i1 %29, i32 -1, i32 1
  br label %50

31:                                               ; preds = %23
  %32 = icmp slt i32 %24, %25
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load i32, ptr %1, align 4, !tbaa !44
  %35 = icmp slt i32 %34, 1
  %36 = select i1 %35, i32 1, i32 -1
  br label %50

37:                                               ; preds = %31
  %38 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, ptr %1, align 4, !tbaa !44
  %42 = icmp slt i32 %41, 1
  %43 = select i1 %42, i32 -1, i32 1
  br label %50

44:                                               ; preds = %37
  %45 = icmp slt i32 %38, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load i32, ptr %1, align 4, !tbaa !44
  %48 = icmp slt i32 %47, 1
  %49 = select i1 %48, i32 1, i32 -1
  br label %50

50:                                               ; preds = %27, %33, %44, %46, %40, %21, %18
  %51 = phi i32 [ %20, %18 ], [ 0, %21 ], [ %30, %27 ], [ %36, %33 ], [ %43, %40 ], [ %49, %46 ], [ 0, %44 ]
  ret i32 %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigInteger8multiplyEj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !40 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %6) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = add i32 %1, 1
  %11 = add i32 %10, %7
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  %14 = load ptr, ptr %9, align 8, !tbaa !41
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %13) #10
  %18 = load ptr, ptr %5, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %17, ptr noundef %18, i32 noundef %7) #10
  %19 = zext i32 %1 to i64
  br label %20

20:                                               ; preds = %4, %20
  %21 = phi i64 [ 0, %4 ], [ %26, %20 ]
  %22 = trunc i64 %21 to i32
  %23 = add i32 %7, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i16, ptr %17, i64 %24
  store i16 48, ptr %25, align 2, !tbaa !49
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %20, !llvm.loop !76

28:                                               ; preds = %20
  %29 = add i32 %7, %1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i16, ptr %17, i64 %30
  store i16 0, ptr %31, align 2, !tbaa !49
  %32 = load ptr, ptr %8, align 8, !tbaa !70
  %33 = load ptr, ptr %5, align 8, !tbaa !71
  %34 = load ptr, ptr %32, align 8, !tbaa !41
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %33) #10
  store ptr %17, ptr %5, align 8, !tbaa !71
  br label %37

37:                                               ; preds = %2, %28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !77 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigInteger6divideEj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !40 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %6) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = sub i32 %7, %1
  %11 = add i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  %14 = load ptr, ptr %9, align 8, !tbaa !41
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %13) #10
  %18 = load ptr, ptr %5, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %17, ptr noundef %18, i32 noundef %10) #10
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds i16, ptr %17, i64 %19
  store i16 0, ptr %20, align 2, !tbaa !49
  %21 = load ptr, ptr %8, align 8, !tbaa !70
  %22 = load ptr, ptr %5, align 8, !tbaa !71
  %23 = load ptr, ptr %21, align 8, !tbaa !41
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %22) #10
  store ptr %17, ptr %5, align 8, !tbaa !71
  br label %26

26:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigInteger8intValueEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !40 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %6) #10
  %8 = load i32, ptr %2, align 4, !tbaa !44
  %9 = call noundef i32 @_ZNK11xercesc_2_713XMLBigInteger7getSignEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %10 = mul i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %10
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !81

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !82

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !41
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #15
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !60
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!36 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!37 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !43, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !46, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !46, i64 0}
!51 = !{!"function_entry_count", i64 2453164456}
!52 = !{!"branch_weights", i32 1, i32 -1841802839}
!53 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!54 = !{!"branch_weights", i32 408669070, i32 -279908794}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"function_entry_count", i64 52059}
!58 = !{!59, !48, i64 0}
!59 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !48, i64 0, !48, i64 8}
!60 = !{!59, !48, i64 8}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !56}
!63 = distinct !{!63, !56}
!64 = distinct !{!64, !56}
!65 = !{!"function_entry_count", i64 243874}
!66 = !{!"function_entry_count", i64 196710}
!67 = !{!46, !46, i64 0}
!68 = !{!69, !45, i64 0}
!69 = !{!"_ZTSN11xercesc_2_713XMLBigIntegerE", !45, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!70 = !{!69, !48, i64 24}
!71 = !{!69, !48, i64 8}
!72 = !{!69, !48, i64 16}
!73 = !{!"function_entry_count", i64 5836268}
!74 = !{!"function_entry_count", i64 558789}
!75 = !{!"branch_weights", i32 158605, i32 400186}
!76 = distinct !{!76, !56}
!77 = !{!"function_entry_count", i64 2499163}
!78 = !{!79, !48, i64 40}
!79 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !80, i64 8, !48, i64 16, !45, i64 24, !48, i64 32, !48, i64 40}
!80 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
!81 = !{!"branch_weights", i32 191816, i32 52060}
!82 = !{!"branch_weights", i32 1, i32 52060}

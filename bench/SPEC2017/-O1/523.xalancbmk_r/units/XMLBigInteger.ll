; ModuleID = 'XMLBigInteger.cpp'
source_filename = "XMLBigInteger.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBigInteger" = type { i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %0, align 2, !tbaa !35
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %0, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !39

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = add i64 %18, 4
  %20 = and i64 %19, 8589934590
  br label %21

21:                                               ; preds = %3, %7, %15
  %22 = phi i64 [ %20, %15 ], [ 4, %7 ], [ 4, %3 ]
  %23 = load ptr, ptr %1, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %22)
          to label %27 unwind label %34

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  store ptr %26, ptr %4, align 8, !tbaa !44
  %28 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !48
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %26, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef %29)
          to label %30 unwind label %36

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4, !tbaa !48
  switch i32 %31, label %64 [
    i32 0, label %32
    i32 -1, label %38
  ]

32:                                               ; preds = %30
  store i16 48, ptr %26, align 2, !tbaa !35
  %33 = getelementptr inbounds i16, ptr %26, i64 1
  store i16 0, ptr %33, align 2, !tbaa !35
  br label %64

34:                                               ; preds = %21
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %69

36:                                               ; preds = %27
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %67

38:                                               ; preds = %30
  %39 = icmp eq ptr %26, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %38
  %41 = load i16, ptr %26, align 2, !tbaa !35
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40, %43
  %44 = phi ptr [ %45, %43 ], [ %26, %40 ]
  %45 = getelementptr inbounds i16, ptr %44, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !35
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %43, !llvm.loop !39

48:                                               ; preds = %43
  %49 = ptrtoint ptr %45 to i64
  %50 = ptrtoint ptr %26 to i64
  %51 = sub i64 %49, %50
  %52 = add i64 %51, 4
  %53 = and i64 %52, 8589934590
  br label %54

54:                                               ; preds = %38, %40, %48
  %55 = phi i64 [ %53, %48 ], [ 4, %40 ], [ 4, %38 ]
  %56 = load ptr, ptr %1, align 8, !tbaa !42
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %55)
          to label %60 unwind label %62

60:                                               ; preds = %54
  store i16 45, ptr %59, align 2, !tbaa !35
  %61 = getelementptr inbounds i16, ptr %59, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %61, ptr noundef %26)
          to label %65 unwind label %62

62:                                               ; preds = %60, %54
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %67

64:                                               ; preds = %30, %32
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %65

65:                                               ; preds = %60, %64
  %66 = phi ptr [ %26, %64 ], [ %59, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %77

67:                                               ; preds = %62, %36
  %68 = phi { ptr, i32 } [ %63, %62 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %69

69:                                               ; preds = %67, %34
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %35, %34 ]
  %71 = extractvalue { ptr, i32 } %70, 1
  %72 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #12
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = extractvalue { ptr, i32 } %70, 0
  %76 = call ptr @__cxa_begin_catch(ptr %75) #12
  call void @__cxa_end_catch()
  br label %77

77:                                               ; preds = %74, %65
  %78 = phi ptr [ %66, %65 ], [ null, %74 ]
  ret ptr %78

79:                                               ; preds = %69
  resume { ptr, i32 } %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %0, align 2, !tbaa !35
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6, %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 261, ptr noundef %3)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %81

14:                                               ; preds = %6, %14
  %15 = phi ptr [ %21, %14 ], [ %0, %6 ]
  %16 = load i16, ptr %15, align 2, !tbaa !35
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !51
  %20 = icmp slt i8 %19, 0
  %21 = getelementptr inbounds i16, ptr %15, i64 1
  br i1 %20, label %14, label %22, !llvm.loop !52

22:                                               ; preds = %14
  %23 = icmp eq i16 %16, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 262, ptr noundef %3)
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %81

29:                                               ; preds = %22, %29
  %30 = phi ptr [ %31, %29 ], [ %0, %22 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !35
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %29, !llvm.loop !39

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %0 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 1
  %39 = and i64 %38, 4294967295
  %40 = getelementptr inbounds i16, ptr %0, i64 %39
  br label %41

41:                                               ; preds = %41, %34
  %42 = phi ptr [ %40, %34 ], [ %43, %41 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 -1
  %44 = load i16, ptr %43, align 2, !tbaa !35
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = icmp slt i8 %47, 0
  br i1 %48, label %41, label %49, !llvm.loop !53

49:                                               ; preds = %41
  store i32 1, ptr %2, align 4, !tbaa !48
  switch i16 %16, label %54 [
    i16 45, label %50
    i16 43, label %52
  ]

50:                                               ; preds = %49
  store i32 -1, ptr %2, align 4, !tbaa !48
  %51 = getelementptr inbounds i16, ptr %15, i64 1
  br label %54

52:                                               ; preds = %49
  %53 = getelementptr inbounds i16, ptr %15, i64 1
  br label %54

54:                                               ; preds = %49, %52, %50
  %55 = phi ptr [ %15, %49 ], [ %53, %52 ], [ %51, %50 ]
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %60, %56 ], [ %55, %54 ]
  %58 = load i16, ptr %57, align 2, !tbaa !35
  %59 = icmp eq i16 %58, 48
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  br i1 %59, label %56, label %61, !llvm.loop !54

61:                                               ; preds = %56
  %62 = icmp ult ptr %57, %42
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  store i32 0, ptr %2, align 4, !tbaa !48
  br label %80

64:                                               ; preds = %61, %75
  %65 = phi ptr [ %76, %75 ], [ %1, %61 ]
  %66 = phi ptr [ %77, %75 ], [ %57, %61 ]
  %67 = load i16, ptr %66, align 2, !tbaa !35
  %68 = add i16 %67, -58
  %69 = icmp ult i16 %68, -10
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 264, ptr noundef %3)
          to label %72 unwind label %73

72:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

73:                                               ; preds = %70
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %81

75:                                               ; preds = %64
  store i16 %67, ptr %65, align 2, !tbaa !35
  %76 = getelementptr inbounds i16, ptr %65, i64 1
  %77 = getelementptr inbounds i16, ptr %66, i64 1
  %78 = icmp ult ptr %77, %42
  br i1 %78, label %64, label %79, !llvm.loop !55

79:                                               ; preds = %75
  store i16 0, ptr %76, align 2, !tbaa !35
  br label %80

80:                                               ; preds = %79, %63
  ret void

81:                                               ; preds = %27, %73, %12
  %82 = phi ptr [ %25, %27 ], [ %71, %73 ], [ %10, %12 ]
  %83 = phi { ptr, i32 } [ %28, %27 ], [ %74, %73 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %82) #12
  resume { ptr, i32 } %83
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !57

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !58

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !59

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #14
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigIntegerC2EPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store i32 0, ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !62
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %10 = load ptr, ptr %6, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 261, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #12
  br label %108

14:                                               ; preds = %3
  %15 = load i16, ptr %1, align 2, !tbaa !35
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !35
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !39

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %14, %22
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %29)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %34 = load ptr, ptr %6, align 8, !tbaa !62
  store ptr %33, ptr %4, align 8, !tbaa !44
  %35 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %33, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %34)
          to label %36 unwind label %59

36:                                               ; preds = %28
  %37 = load i32, ptr %0, align 8, !tbaa !60
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %6, align 8, !tbaa !62
  br i1 %38, label %40, label %61

40:                                               ; preds = %36
  %41 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !35
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40, %43
  %44 = phi ptr [ %45, %43 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %40 ]
  %45 = getelementptr inbounds i16, ptr %44, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !35
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %43, !llvm.loop !39

48:                                               ; preds = %43
  %49 = ptrtoint ptr %45 to i64
  %50 = add i64 %49, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE to i64)), i64 2)
  %51 = and i64 %50, 8589934590
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i64 [ %51, %48 ], [ 2, %40 ]
  %54 = load ptr, ptr %39, align 8, !tbaa !42
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %53)
          to label %58 unwind label %59

58:                                               ; preds = %52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %57, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i64 %53, i1 false)
  br label %84

59:                                               ; preds = %100, %77, %52, %28
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %108

61:                                               ; preds = %36
  %62 = icmp eq ptr %33, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %61
  %64 = load i16, ptr %33, align 2, !tbaa !35
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %68, %66 ], [ %33, %63 ]
  %68 = getelementptr inbounds i16, ptr %67, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !35
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %66, !llvm.loop !39

71:                                               ; preds = %66
  %72 = ptrtoint ptr %68 to i64
  %73 = ptrtoint ptr %33 to i64
  %74 = sub i64 %72, %73
  %75 = add i64 %74, 2
  %76 = and i64 %75, 8589934590
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi i64 [ %76, %71 ], [ 2, %63 ]
  %79 = load ptr, ptr %39, align 8, !tbaa !42
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %78)
          to label %83 unwind label %59

83:                                               ; preds = %77
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %82, ptr nonnull align 2 %33, i64 %78, i1 false)
  br label %84

84:                                               ; preds = %83, %61, %58
  %85 = phi ptr [ %57, %58 ], [ %82, %83 ], [ null, %61 ]
  store ptr %85, ptr %5, align 8, !tbaa !63
  %86 = load ptr, ptr %6, align 8, !tbaa !62
  %87 = load i16, ptr %1, align 2, !tbaa !35
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %84, %89
  %90 = phi ptr [ %91, %89 ], [ %1, %84 ]
  %91 = getelementptr inbounds i16, ptr %90, i64 1
  %92 = load i16, ptr %91, align 2, !tbaa !35
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %89, !llvm.loop !39

94:                                               ; preds = %89
  %95 = ptrtoint ptr %91 to i64
  %96 = ptrtoint ptr %1 to i64
  %97 = sub i64 %95, %96
  %98 = add i64 %97, 2
  %99 = and i64 %98, 8589934590
  br label %100

100:                                              ; preds = %94, %84
  %101 = phi i64 [ %99, %94 ], [ 2, %84 ]
  %102 = load ptr, ptr %86, align 8, !tbaa !42
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %86, i64 noundef %101)
          to label %106 unwind label %59

106:                                              ; preds = %100
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %105, ptr nonnull align 2 %1, i64 %101, i1 false)
  store ptr %105, ptr %107, align 8, !tbaa !64
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void

108:                                              ; preds = %59, %12
  %109 = phi { ptr, i32 } [ %60, %59 ], [ %13, %12 ]
  resume { ptr, i32 } %109
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigIntegerD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !62
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %11)
          to label %18 unwind label %19

18:                                               ; preds = %13, %9
  ret void

19:                                               ; preds = %13, %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #15
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigIntegerC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load i32, ptr %1, align 8, !tbaa !60
  store i32 %3, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  store ptr %7, ptr %5, align 8, !tbaa !62
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = load i16, ptr %9, align 2, !tbaa !35
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !35
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !39

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %9 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 2
  %24 = and i64 %23, 8589934590
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi i64 [ %24, %19 ], [ 2, %11 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %26)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %30, ptr nonnull align 2 %9, i64 %26, i1 false)
  br label %31

31:                                               ; preds = %2, %25
  %32 = phi ptr [ %30, %25 ], [ null, %2 ]
  store ptr %32, ptr %4, align 8, !tbaa !63
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = load ptr, ptr %5, align 8, !tbaa !62
  %36 = icmp eq ptr %34, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %31
  %38 = load i16, ptr %34, align 2, !tbaa !35
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %42, %40 ], [ %34, %37 ]
  %42 = getelementptr inbounds i16, ptr %41, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !35
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %40, !llvm.loop !39

45:                                               ; preds = %40
  %46 = ptrtoint ptr %42 to i64
  %47 = ptrtoint ptr %34 to i64
  %48 = sub i64 %46, %47
  %49 = add i64 %48, 2
  %50 = and i64 %49, 8589934590
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i64 [ %50, %45 ], [ 2, %37 ]
  %53 = load ptr, ptr %35, align 8, !tbaa !42
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %52)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %56, ptr nonnull align 2 %34, i64 %52, i1 false)
  br label %57

57:                                               ; preds = %31, %51
  %58 = phi ptr [ %56, %51 ], [ null, %31 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 265, ptr noundef %2)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  %13 = load i32, ptr %0, align 8, !tbaa !60
  %14 = load i32, ptr %1, align 8, !tbaa !60
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i32 %13, %14
  %18 = select i1 %17, i32 1, i32 -1
  br label %80

19:                                               ; preds = %12
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %80, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %23, align 2, !tbaa !35
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %23, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !35
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !39

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %23 to i64
  %36 = sub i64 %34, %35
  %37 = lshr exact i64 %36, 1
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %21, %25, %33
  %40 = phi i32 [ %38, %33 ], [ 0, %25 ], [ 0, %21 ]
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = load i16, ptr %42, align 2, !tbaa !35
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %49, %47 ], [ %42, %44 ]
  %49 = getelementptr inbounds i16, ptr %48, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !35
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %47, !llvm.loop !39

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i64
  %54 = ptrtoint ptr %42 to i64
  %55 = sub i64 %53, %54
  %56 = lshr exact i64 %55, 1
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %39, %44, %52
  %59 = phi i32 [ %57, %52 ], [ 0, %44 ], [ 0, %39 ]
  %60 = icmp sgt i32 %40, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = icmp slt i32 %13, 1
  %63 = select i1 %62, i32 -1, i32 1
  br label %80

64:                                               ; preds = %58
  %65 = icmp slt i32 %40, %59
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = icmp slt i32 %13, 1
  %68 = select i1 %67, i32 1, i32 -1
  br label %80

69:                                               ; preds = %64
  %70 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %23, ptr noundef %42)
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = icmp slt i32 %13, 1
  %74 = select i1 %73, i32 -1, i32 1
  br label %80

75:                                               ; preds = %69
  %76 = icmp slt i32 %70, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = icmp slt i32 %13, 1
  %79 = select i1 %78, i32 1, i32 -1
  br label %80

80:                                               ; preds = %61, %66, %75, %77, %72, %19, %16
  %81 = phi i32 [ %18, %16 ], [ 0, %19 ], [ %63, %61 ], [ %68, %66 ], [ %74, %72 ], [ %79, %77 ], [ 0, %75 ]
  ret i32 %81
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %1, ptr noundef %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 265, ptr noundef %4)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %5
  %15 = load i32, ptr %1, align 4, !tbaa !48
  %16 = load i32, ptr %3, align 4, !tbaa !48
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i32 %15, %16
  %20 = select i1 %19, i32 1, i32 -1
  br label %76

21:                                               ; preds = %14
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %21
  %24 = load i16, ptr %0, align 2, !tbaa !35
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %28, %26 ], [ %0, %23 ]
  %28 = getelementptr inbounds i16, ptr %27, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !35
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %26, !llvm.loop !39

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i64
  %33 = ptrtoint ptr %0 to i64
  %34 = sub i64 %32, %33
  %35 = lshr exact i64 %34, 1
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %31, %23
  %38 = phi i32 [ %36, %31 ], [ 0, %23 ]
  %39 = load i16, ptr %2, align 2, !tbaa !35
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %43, %41 ], [ %2, %37 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  %44 = load i16, ptr %43, align 2, !tbaa !35
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %41, !llvm.loop !39

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i64
  %48 = ptrtoint ptr %2 to i64
  %49 = sub i64 %47, %48
  %50 = lshr exact i64 %49, 1
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %37, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %37 ]
  %54 = icmp sgt i32 %38, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = icmp slt i32 %15, 1
  %57 = select i1 %56, i32 -1, i32 1
  br label %76

58:                                               ; preds = %52
  %59 = icmp slt i32 %38, %53
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = icmp slt i32 %15, 1
  %62 = select i1 %61, i32 1, i32 -1
  br label %76

63:                                               ; preds = %58
  %64 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, ptr %1, align 4, !tbaa !48
  %68 = icmp slt i32 %67, 1
  %69 = select i1 %68, i32 -1, i32 1
  br label %76

70:                                               ; preds = %63
  %71 = icmp slt i32 %64, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = load i32, ptr %1, align 4, !tbaa !48
  %74 = icmp slt i32 %73, 1
  %75 = select i1 %74, i32 1, i32 -1
  br label %76

76:                                               ; preds = %55, %60, %70, %72, %66, %21, %18
  %77 = phi i32 [ %20, %18 ], [ 0, %21 ], [ %57, %55 ], [ %62, %60 ], [ %69, %66 ], [ %75, %72 ], [ 0, %70 ]
  ret i32 %77
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigInteger8multiplyEj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %57, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %6, align 2, !tbaa !35
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %6, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !35
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !39

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %6 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %4, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %4 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = add i32 %1, 1
  %27 = add i32 %26, %23
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 1
  %30 = load ptr, ptr %25, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %29)
  %34 = load ptr, ptr %5, align 8, !tbaa !63
  %35 = zext i32 %23 to i64
  %36 = shl nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr align 2 %34, i64 %36, i1 false)
  %37 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %22, %39
  %40 = phi i64 [ 0, %22 ], [ %45, %39 ]
  %41 = trunc i64 %40 to i32
  %42 = add i32 %23, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %33, i64 %43
  store i16 48, ptr %44, align 2, !tbaa !35
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %47, label %39, !llvm.loop !65

47:                                               ; preds = %39
  %48 = trunc i64 %45 to i32
  %49 = add i32 %23, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %33, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !35
  %52 = load ptr, ptr %24, align 8, !tbaa !62
  %53 = load ptr, ptr %5, align 8, !tbaa !63
  %54 = load ptr, ptr %52, align 8, !tbaa !42
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %53)
  store ptr %33, ptr %5, align 8, !tbaa !63
  br label %57

57:                                               ; preds = %2, %47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLBigInteger6divideEj(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %6, align 2, !tbaa !35
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %6, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !35
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !39

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %6 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %4, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %4 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = sub i32 %23, %1
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 1
  %30 = load ptr, ptr %25, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %29)
  %34 = load ptr, ptr %5, align 8, !tbaa !63
  %35 = zext i32 %26 to i64
  %36 = shl nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr align 2 %34, i64 %36, i1 false)
  %37 = getelementptr inbounds i16, ptr %33, i64 %35
  store i16 0, ptr %37, align 2, !tbaa !35
  %38 = load ptr, ptr %24, align 8, !tbaa !62
  %39 = load ptr, ptr %5, align 8, !tbaa !63
  %40 = load ptr, ptr %38, align 8, !tbaa !42
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %39)
  store ptr %33, ptr %5, align 8, !tbaa !63
  br label %43

43:                                               ; preds = %2, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigInteger8intValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBigInteger", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %6)
  %8 = load i32, ptr %2, align 4, !tbaa !48
  %9 = load i32, ptr %0, align 8, !tbaa !60
  %10 = mul i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %10
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !38, i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !46, i64 0, !46, i64 8}
!46 = !{!"any pointer", !37, i64 0}
!47 = !{!45, !46, i64 8}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !37, i64 0}
!50 = !{!46, !46, i64 0}
!51 = !{!37, !37, i64 0}
!52 = distinct !{!52, !40, !41}
!53 = distinct !{!53, !40, !41}
!54 = distinct !{!54, !40, !41}
!55 = distinct !{!55, !40, !41}
!56 = !{!"function_entry_count", i64 243874}
!57 = !{!"branch_weights", i32 191815, i32 52059}
!58 = !{!"branch_weights", i32 0, i32 52059}
!59 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!60 = !{!61, !49, i64 0}
!61 = !{!"_ZTSN11xercesc_2_713XMLBigIntegerE", !49, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!62 = !{!61, !46, i64 24}
!63 = !{!61, !46, i64 8}
!64 = !{!61, !46, i64 16}
!65 = distinct !{!65, !40, !41}
!66 = !{!67, !46, i64 40}
!67 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !68, i64 8, !46, i64 16, !49, i64 24, !46, i64 32, !46, i64 40}
!68 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !37, i64 0}

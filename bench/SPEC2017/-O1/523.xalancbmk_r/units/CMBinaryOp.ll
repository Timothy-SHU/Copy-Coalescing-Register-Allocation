; ModuleID = 'CMBinaryOp.cpp'
source_filename = "CMBinaryOp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::CMBinaryOp" = type { %"class.xercesc_2_7::CMNode.base", ptr, ptr }
%"class.xercesc_2_7::CMNode.base" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::CMStateSet" = type { i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_76CMNodeD0Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710CMStateSetaSERKS0_ = comdat any

$_ZN11xercesc_2_76CMNodeD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE = comdat any

$_ZTVN11xercesc_2_76CMNodeE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_76CMNodeE = comdat any

$_ZTIN11xercesc_2_76CMNodeE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN11xercesc_2_76CMNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMNodeE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_76CMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_710CMBinaryOpE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710CMBinaryOpE, ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, ptr @_ZN11xercesc_2_710CMBinaryOpD0Ev, ptr @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv, ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"CMBinaryOp.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMNodeE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_710CMBinaryOpE = dso_local constant [28 x i8] c"N11xercesc_2_710CMBinaryOpE\00", align 1
@_ZTIN11xercesc_2_710CMBinaryOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710CMBinaryOpE, ptr @_ZTIN11xercesc_2_76CMNodeE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [43 x i8] c"./xercesc/validators/common/CMStateSet.hpp\00", align 1

@_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE
@_ZN11xercesc_2_710CMBinaryOpD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 -1, ptr %10, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710CMBinaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !64
  %13 = and i32 %1, 14
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %22, label %15, !prof !65

15:                                               ; preds = %5
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 16, ptr noundef %4)
          to label %17 unwind label %18

17:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %59 unwind label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #10
  br label %23

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %23

22:                                               ; preds = %5
  ret void

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %25 = load ptr, ptr %8, align 8, !tbaa !66
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %25, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %25, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %29)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #9
  unreachable

40:                                               ; preds = %31, %27
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #10
  br label %41

41:                                               ; preds = %40, %23
  %42 = load ptr, ptr %9, align 8, !tbaa !70
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %42, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %42, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull %46)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #9
  unreachable

57:                                               ; preds = %48, %44
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %42) #10
  br label %58

58:                                               ; preds = %41, %57
  resume { ptr, i32 } %24

59:                                               ; preds = %17
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710CMBinaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !71

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(44) %3) #10, !prof !72
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !71

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !51
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(44) %11) #10, !prof !73
  br label %17

17:                                               ; preds = %13, %9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21, !prof !71

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25, !prof !65

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %19, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %23)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #9
  unreachable

34:                                               ; preds = %25, %21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %19) #10
  br label %35

35:                                               ; preds = %34, %17
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39, !prof !74

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %37, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43, !prof !75

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %37, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull %41)
          to label %52 unwind label %49

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #9
  unreachable

52:                                               ; preds = %43, %39
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %37) #10
  br label %53

53:                                               ; preds = %35, %52
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_710CMBinaryOpD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710CMBinaryOp7getLeftEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710CMBinaryOp8getRightEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = and i32 %3, 15
  %5 = icmp eq i32 %4, 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(44) %7)
  br i1 %5, label %12, label %13, !prof !78

12:                                               ; preds = %1
  br i1 %11, label %21, label %14

13:                                               ; preds = %1
  br i1 %11, label %14, label %21, !prof !79

14:                                               ; preds = %13, %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(44) %16), !prof !80
  br label %21

21:                                               ; preds = %14, %13, %12
  %22 = phi i1 [ true, %12 ], [ false, %13 ], [ %20, %14 ]
  ret i1 %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = and i32 %4, 15
  switch i32 %5, label %154 [
    i32 4, label %6
    i32 5, label %72
  ], !prof !81

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %27, !prof !82

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %8, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = load ptr, ptr %13, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %17, ptr noundef %18)
          to label %19 unwind label %25, !prof !82

19:                                               ; preds = %12
  store ptr %15, ptr %9, align 8, !tbaa !66
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull align 8 dereferenceable(32) %15), !prof !83
  br label %27

23:                                               ; preds = %116, %89, %46, %25
  %24 = phi { ptr, i32 } [ %26, %25 ], [ %47, %46 ], [ %90, %89 ], [ %117, %116 ]
  resume { ptr, i32 } %24

25:                                               ; preds = %12
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #10
  br label %23

27:                                               ; preds = %6, %19
  %28 = load ptr, ptr %9, align 8, !tbaa !66
  %29 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %28)
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %48, !prof !82

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %37)
  %39 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %31, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !61
  %41 = load ptr, ptr %36, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef %40, ptr noundef %41)
          to label %42 unwind label %46, !prof !82

42:                                               ; preds = %35
  store ptr %38, ptr %32, align 8, !tbaa !66
  %43 = load ptr, ptr %31, align 8, !tbaa !51
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(44) %31, ptr noundef nonnull align 8 dereferenceable(32) %38), !prof !84
  br label %48

46:                                               ; preds = %35
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %38, ptr noundef %37) #10
  br label %23

48:                                               ; preds = %27, %42
  %49 = load ptr, ptr %32, align 8, !tbaa !66
  %50 = load i32, ptr %1, align 8, !tbaa !85
  %51 = icmp ult i32 %50, 65
  br i1 %51, label %142, label %52, !prof !82

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !86
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %154, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %49, i64 0, i32 4
  %58 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ 0, %56 ], [ %68, %59 ]
  %61 = load ptr, ptr %57, align 8, !tbaa !67
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  %63 = load i8, ptr %62, align 1, !tbaa !87
  %64 = load ptr, ptr %58, align 8, !tbaa !67
  %65 = getelementptr inbounds i8, ptr %64, i64 %60
  %66 = load i8, ptr %65, align 1, !tbaa !87
  %67 = or i8 %66, %63
  store i8 %67, ptr %65, align 1, !tbaa !87
  %68 = add nuw nsw i64 %60, 1
  %69 = load i32, ptr %53, align 4, !tbaa !86
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %59, label %154, !llvm.loop !88

72:                                               ; preds = %2
  %73 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !66
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %91, !prof !91

78:                                               ; preds = %72
  %79 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  %81 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %80)
  %82 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %74, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !61
  %84 = load ptr, ptr %79, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef %83, ptr noundef %84)
          to label %85 unwind label %89, !prof !92

85:                                               ; preds = %78
  store ptr %81, ptr %75, align 8, !tbaa !66
  %86 = load ptr, ptr %74, align 8, !tbaa !51
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(44) %74, ptr noundef nonnull align 8 dereferenceable(32) %81), !prof !93
  br label %91

89:                                               ; preds = %78
  %90 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %81, ptr noundef %80) #10
  br label %23

91:                                               ; preds = %72, %85
  %92 = load ptr, ptr %75, align 8, !tbaa !66
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %92)
  %94 = load ptr, ptr %73, align 8, !tbaa !62
  %95 = load ptr, ptr %94, align 8, !tbaa !51
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef zeroext i1 %97(ptr noundef nonnull align 8 dereferenceable(44) %94), !prof !94
  br i1 %98, label %99, label %154, !prof !95

99:                                               ; preds = %91
  %100 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !64
  %102 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !66
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %118, !prof !96

105:                                              ; preds = %99
  %106 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !54
  %108 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %107)
  %109 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %101, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !61
  %111 = load ptr, ptr %106, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %108, i32 noundef %110, ptr noundef %111)
          to label %112 unwind label %116

112:                                              ; preds = %105
  store ptr %108, ptr %102, align 8, !tbaa !66
  %113 = load ptr, ptr %101, align 8, !tbaa !51
  %114 = getelementptr inbounds ptr, ptr %113, i64 3
  %115 = load ptr, ptr %114, align 8
  tail call void %115(ptr noundef nonnull align 8 dereferenceable(44) %101, ptr noundef nonnull align 8 dereferenceable(32) %108)
  br label %118

116:                                              ; preds = %105
  %117 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %108, ptr noundef %107) #10
  br label %23

118:                                              ; preds = %99, %112
  %119 = load ptr, ptr %102, align 8, !tbaa !66
  %120 = load i32, ptr %1, align 8, !tbaa !85
  %121 = icmp ult i32 %120, 65
  br i1 %121, label %142, label %122, !prof !97

122:                                              ; preds = %118
  %123 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !86
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %119, i64 0, i32 4
  %128 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  br label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ 0, %126 ], [ %138, %129 ]
  %131 = load ptr, ptr %127, align 8, !tbaa !67
  %132 = getelementptr inbounds i8, ptr %131, i64 %130
  %133 = load i8, ptr %132, align 1, !tbaa !87
  %134 = load ptr, ptr %128, align 8, !tbaa !67
  %135 = getelementptr inbounds i8, ptr %134, i64 %130
  %136 = load i8, ptr %135, align 1, !tbaa !87
  %137 = or i8 %136, %133
  store i8 %137, ptr %135, align 1, !tbaa !87
  %138 = add nuw nsw i64 %130, 1
  %139 = load i32, ptr %123, align 4, !tbaa !86
  %140 = zext i32 %139 to i64
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %129, label %154, !llvm.loop !88

142:                                              ; preds = %118, %48
  %143 = phi ptr [ %49, %48 ], [ %119, %118 ]
  %144 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !98
  %146 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !98
  %148 = or i32 %147, %145
  store i32 %148, ptr %146, align 8, !tbaa !98
  %149 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %143, i64 0, i32 3
  %150 = load i32, ptr %149, align 4, !tbaa !99
  %151 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !99
  %153 = or i32 %152, %150
  store i32 %153, ptr %151, align 4, !tbaa !99
  br label %154

154:                                              ; preds = %129, %59, %142, %122, %52, %2, %91
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %42, label %4, !prof !101

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !85
  %6 = load i32, ptr %1, align 8, !tbaa !85
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %15, label %8, !prof !102

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 12, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #10
  resume { ptr, i32 } %14

15:                                               ; preds = %4
  %16 = icmp ult i32 %5, 65
  br i1 %16, label %24, label %17, !prof !102

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !86
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %31

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !98
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !99
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !99
  br label %42

31:                                               ; preds = %21, %31
  %32 = phi i64 [ 0, %21 ], [ %38, %31 ]
  %33 = load ptr, ptr %22, align 8, !tbaa !67
  %34 = getelementptr inbounds i8, ptr %33, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !87
  %36 = load ptr, ptr %23, align 8, !tbaa !67
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  store i8 %35, ptr %37, align 1, !tbaa !87
  %38 = add nuw nsw i64 %32, 1
  %39 = load i32, ptr %18, align 4, !tbaa !86
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %31, label %42, !llvm.loop !103

42:                                               ; preds = %31, %17, %24, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = and i32 %4, 15
  switch i32 %5, label %154 [
    i32 4, label %6
    i32 5, label %72
  ], !prof !105

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %27, !prof !82

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %8, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = load ptr, ptr %13, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %17, ptr noundef %18)
          to label %19 unwind label %25, !prof !82

19:                                               ; preds = %12
  store ptr %15, ptr %9, align 8, !tbaa !70
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(44) %8, ptr noundef nonnull align 8 dereferenceable(32) %15), !prof !106
  br label %27

23:                                               ; preds = %116, %89, %46, %25
  %24 = phi { ptr, i32 } [ %26, %25 ], [ %47, %46 ], [ %90, %89 ], [ %117, %116 ]
  resume { ptr, i32 } %24

25:                                               ; preds = %12
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #10
  br label %23

27:                                               ; preds = %6, %19
  %28 = load ptr, ptr %9, align 8, !tbaa !70
  %29 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %28)
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %48, !prof !82

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %37)
  %39 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %31, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !61
  %41 = load ptr, ptr %36, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef %40, ptr noundef %41)
          to label %42 unwind label %46, !prof !82

42:                                               ; preds = %35
  store ptr %38, ptr %32, align 8, !tbaa !70
  %43 = load ptr, ptr %31, align 8, !tbaa !51
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(44) %31, ptr noundef nonnull align 8 dereferenceable(32) %38), !prof !107
  br label %48

46:                                               ; preds = %35
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %38, ptr noundef %37) #10
  br label %23

48:                                               ; preds = %27, %42
  %49 = load ptr, ptr %32, align 8, !tbaa !70
  %50 = load i32, ptr %1, align 8, !tbaa !85
  %51 = icmp ult i32 %50, 65
  br i1 %51, label %142, label %52, !prof !82

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !86
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %154, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %49, i64 0, i32 4
  %58 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ 0, %56 ], [ %68, %59 ]
  %61 = load ptr, ptr %57, align 8, !tbaa !67
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  %63 = load i8, ptr %62, align 1, !tbaa !87
  %64 = load ptr, ptr %58, align 8, !tbaa !67
  %65 = getelementptr inbounds i8, ptr %64, i64 %60
  %66 = load i8, ptr %65, align 1, !tbaa !87
  %67 = or i8 %66, %63
  store i8 %67, ptr %65, align 1, !tbaa !87
  %68 = add nuw nsw i64 %60, 1
  %69 = load i32, ptr %53, align 4, !tbaa !86
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %59, label %154, !llvm.loop !88

72:                                               ; preds = %2
  %73 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  %75 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %74, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !70
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %91, !prof !108

78:                                               ; preds = %72
  %79 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  %81 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %80)
  %82 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %74, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !61
  %84 = load ptr, ptr %79, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef %83, ptr noundef %84)
          to label %85 unwind label %89, !prof !109

85:                                               ; preds = %78
  store ptr %81, ptr %75, align 8, !tbaa !70
  %86 = load ptr, ptr %74, align 8, !tbaa !51
  %87 = getelementptr inbounds ptr, ptr %86, i64 4
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(44) %74, ptr noundef nonnull align 8 dereferenceable(32) %81), !prof !110
  br label %91

89:                                               ; preds = %78
  %90 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %81, ptr noundef %80) #10
  br label %23

91:                                               ; preds = %72, %85
  %92 = load ptr, ptr %75, align 8, !tbaa !70
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %92)
  %94 = load ptr, ptr %73, align 8, !tbaa !64
  %95 = load ptr, ptr %94, align 8, !tbaa !51
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef zeroext i1 %97(ptr noundef nonnull align 8 dereferenceable(44) %94), !prof !111
  br i1 %98, label %99, label %154, !prof !112

99:                                               ; preds = %91
  %100 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !62
  %102 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !70
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %118, !prof !113

105:                                              ; preds = %99
  %106 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !54
  %108 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %107)
  %109 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %101, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !61
  %111 = load ptr, ptr %106, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %108, i32 noundef %110, ptr noundef %111)
          to label %112 unwind label %116

112:                                              ; preds = %105
  store ptr %108, ptr %102, align 8, !tbaa !70
  %113 = load ptr, ptr %101, align 8, !tbaa !51
  %114 = getelementptr inbounds ptr, ptr %113, i64 4
  %115 = load ptr, ptr %114, align 8
  tail call void %115(ptr noundef nonnull align 8 dereferenceable(44) %101, ptr noundef nonnull align 8 dereferenceable(32) %108)
  br label %118

116:                                              ; preds = %105
  %117 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %108, ptr noundef %107) #10
  br label %23

118:                                              ; preds = %99, %112
  %119 = load ptr, ptr %102, align 8, !tbaa !70
  %120 = load i32, ptr %1, align 8, !tbaa !85
  %121 = icmp ult i32 %120, 65
  br i1 %121, label %142, label %122, !prof !114

122:                                              ; preds = %118
  %123 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !86
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %119, i64 0, i32 4
  %128 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  br label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ 0, %126 ], [ %138, %129 ]
  %131 = load ptr, ptr %127, align 8, !tbaa !67
  %132 = getelementptr inbounds i8, ptr %131, i64 %130
  %133 = load i8, ptr %132, align 1, !tbaa !87
  %134 = load ptr, ptr %128, align 8, !tbaa !67
  %135 = getelementptr inbounds i8, ptr %134, i64 %130
  %136 = load i8, ptr %135, align 1, !tbaa !87
  %137 = or i8 %136, %133
  store i8 %137, ptr %135, align 1, !tbaa !87
  %138 = add nuw nsw i64 %130, 1
  %139 = load i32, ptr %123, align 4, !tbaa !86
  %140 = zext i32 %139 to i64
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %129, label %154, !llvm.loop !88

142:                                              ; preds = %118, %48
  %143 = phi ptr [ %49, %48 ], [ %119, %118 ]
  %144 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !98
  %146 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !98
  %148 = or i32 %147, %145
  store i32 %148, ptr %146, align 8, !tbaa !98
  %149 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %143, i64 0, i32 3
  %150 = load i32, ptr %149, align 4, !tbaa !99
  %151 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !99
  %153 = or i32 %152, %150
  store i32 %153, ptr %151, align 4, !tbaa !99
  br label %154

154:                                              ; preds = %129, %59, %142, %122, %52, %2, %91
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %7)
          to label %18 unwind label %15

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #9
  unreachable

18:                                               ; preds = %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #10
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %21, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %25)
          to label %36 unwind label %33

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #9
  unreachable

36:                                               ; preds = %23, %27
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #10
  br label %37

37:                                               ; preds = %36, %19
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !49 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !51
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !118 {
  store i32 %1, ptr %0, align 8, !tbaa !85
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !69
  %6 = icmp ugt i32 %1, 64
  br i1 %6, label %7, label %19, !prof !119

7:                                                ; preds = %3
  %8 = lshr i32 %1, 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = and i32 %1, 7
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %8, %12
  store i32 %13, ptr %9, align 4, !tbaa !86
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !51
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14)
  store ptr %18, ptr %4, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %7, %3
  %20 = load i32, ptr %0, align 8, !tbaa !85
  %21 = icmp ult i32 %20, 65
  br i1 %21, label %26, label %22, !prof !120

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !86
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !98
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %28, align 4, !tbaa !99
  br label %37

29:                                               ; preds = %22, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %22 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !67
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  store i8 0, ptr %32, align 1, !tbaa !87
  %33 = add nuw nsw i64 %30, 1
  %34 = load i32, ptr %23, align 4, !tbaa !86
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %29, label %37, !llvm.loop !121

37:                                               ; preds = %29, %22, %26
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, ptr @_ZN11xercesc_2_710CMBinaryOpD0Ev, i64 53}
!36 = !{ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 119}
!37 = !{ptr @_ZN11xercesc_2_710CMBinaryOpD0Ev, ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, i64 65}
!38 = !{ptr @_ZN11xercesc_2_710CMBinaryOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 65}
!39 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 65}
!40 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 65}
!41 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, i64 53}
!42 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 65}
!43 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv, i64 52}
!44 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 54}
!45 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 54}
!46 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, i64 1}
!47 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 54}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!"function_entry_count", i64 65}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!55, !56, i64 8}
!55 = !{!"_ZTSN11xercesc_2_76CMNodeE", !56, i64 8, !58, i64 16, !56, i64 24, !56, i64 32, !59, i64 40}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !53, i64 0}
!58 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !57, i64 0}
!59 = !{!"int", !57, i64 0}
!60 = !{!55, !58, i64 16}
!61 = !{!55, !59, i64 40}
!62 = !{!63, !56, i64 48}
!63 = !{!"_ZTSN11xercesc_2_710CMBinaryOpE", !55, i64 0, !56, i64 48, !56, i64 56}
!64 = !{!63, !56, i64 56}
!65 = !{!"branch_weights", i32 65, i32 0}
!66 = !{!55, !56, i64 24}
!67 = !{!68, !56, i64 16}
!68 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !56, i64 16, !56, i64 24}
!69 = !{!68, !56, i64 24}
!70 = !{!55, !56, i64 32}
!71 = !{!"branch_weights", i32 0, i32 65}
!72 = !{!"VP", i32 0, i64 65, i64 -6195330049133800025, i64 53, i64 6977671972959571951, i64 10, i64 -7683359726817745911, i64 2}
!73 = !{!"VP", i32 0, i64 65, i64 6977671972959571951, i64 51, i64 -7683359726817745911, i64 14}
!74 = !{!"branch_weights", i32 11, i32 54}
!75 = !{!"branch_weights", i32 54, i32 0}
!76 = !{!"function_entry_count", i64 193}
!77 = !{!"function_entry_count", i64 241}
!78 = !{!"branch_weights", i32 0, i32 241}
!79 = !{!"branch_weights", i32 12, i32 229}
!80 = !{!"VP", i32 0, i64 12, i64 -171872773832646926, i64 9, i64 1807130293161702614, i64 3}
!81 = !{!"branch_weights", i32 0, i32 2, i32 63}
!82 = !{!"branch_weights", i32 2, i32 0}
!83 = !{!"VP", i32 0, i64 2, i64 -4273712280559351836, i64 1, i64 8664271339341851308, i64 1}
!84 = !{!"VP", i32 0, i64 2, i64 8664271339341851308, i64 2}
!85 = !{!68, !59, i64 0}
!86 = !{!68, !59, i64 4}
!87 = !{!57, !57, i64 0}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!"branch_weights", i32 61, i32 2}
!92 = !{!"branch_weights", i32 61, i32 0}
!93 = !{!"VP", i32 0, i64 61, i64 -4273712280559351836, i64 52, i64 8664271339341851308, i64 9}
!94 = !{!"VP", i32 0, i64 63, i64 4116827858891658780, i64 52, i64 1807130293161702614, i64 9, i64 -171872773832646926, i64 2}
!95 = !{!"branch_weights", i32 4, i32 59}
!96 = !{!"branch_weights", i32 0, i32 4}
!97 = !{!"branch_weights", i32 4, i32 0}
!98 = !{!68, !59, i64 8}
!99 = !{!68, !59, i64 12}
!100 = !{!"function_entry_count", i64 151}
!101 = !{!"branch_weights", i32 0, i32 151}
!102 = !{!"branch_weights", i32 151, i32 0}
!103 = distinct !{!103, !89, !90}
!104 = !{!"function_entry_count", i64 54}
!105 = !{!"branch_weights", i32 0, i32 2, i32 52}
!106 = !{!"VP", i32 0, i64 2, i64 3129422713079703786, i64 1, i64 8485140935668277144, i64 1}
!107 = !{!"VP", i32 0, i64 2, i64 8485140935668277144, i64 2}
!108 = !{!"branch_weights", i32 50, i32 2}
!109 = !{!"branch_weights", i32 50, i32 0}
!110 = !{!"VP", i32 0, i64 50, i64 8485140935668277144, i64 38, i64 -1811503911290508545, i64 12}
!111 = !{!"VP", i32 0, i64 52, i64 1807130293161702614, i64 38, i64 -171872773832646926, i64 14}
!112 = !{!"branch_weights", i32 13, i32 39}
!113 = !{!"branch_weights", i32 0, i32 13}
!114 = !{!"branch_weights", i32 13, i32 0}
!115 = !{!116, !56, i64 40}
!116 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !117, i64 8, !56, i64 16, !59, i64 24, !56, i64 32, !56, i64 40}
!117 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !57, i64 0}
!118 = !{!"function_entry_count", i64 441}
!119 = !{!"branch_weights", i32 0, i32 441}
!120 = !{!"branch_weights", i32 441, i32 0}
!121 = distinct !{!121, !89, !90}

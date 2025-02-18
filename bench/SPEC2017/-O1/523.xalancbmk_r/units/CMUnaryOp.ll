; ModuleID = 'CMUnaryOp.cpp'
source_filename = "CMUnaryOp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::CMUnaryOp" = type { %"class.xercesc_2_7::CMNode.base", ptr }
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
@_ZTVN11xercesc_2_79CMUnaryOpE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79CMUnaryOpE, ptr @_ZN11xercesc_2_79CMUnaryOpD2Ev, ptr @_ZN11xercesc_2_79CMUnaryOpD0Ev, ptr @_ZNK11xercesc_2_79CMUnaryOp10isNullableEv, ptr @_ZNK11xercesc_2_79CMUnaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_79CMUnaryOp11calcLastPosERNS_10CMStateSetE] }, align 8
@.str = private unnamed_addr constant [14 x i8] c"CMUnaryOp.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMNodeE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_79CMUnaryOpE = dso_local constant [26 x i8] c"N11xercesc_2_79CMUnaryOpE\00", align 1
@_ZTIN11xercesc_2_79CMUnaryOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79CMUnaryOpE, ptr @_ZTIN11xercesc_2_76CMNodeE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [43 x i8] c"./xercesc/validators/common/CMStateSet.hpp\00", align 1

@_ZN11xercesc_2_79CMUnaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN11xercesc_2_79CMUnaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE
@_ZN11xercesc_2_79CMUnaryOpD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79CMUnaryOpD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 !prof !45 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79CMUnaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i32 -1, ptr %9, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_79CMUnaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !58
  %11 = add i32 %1, -4
  %12 = icmp ult i32 %11, -3
  br i1 %12, label %13, label %20, !prof !60

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 20, ptr noundef %3)
          to label %15 unwind label %16

15:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %57 unwind label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #10
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %23 = load ptr, ptr %7, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %23, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %23, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %27)
          to label %38 unwind label %35

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #9
  unreachable

38:                                               ; preds = %29, %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #10
  br label %39

39:                                               ; preds = %38, %21
  %40 = load ptr, ptr %8, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %40, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull %44)
          to label %55 unwind label %52

52:                                               ; preds = %46
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #9
  unreachable

55:                                               ; preds = %46, %42
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %40) #10
  br label %56

56:                                               ; preds = %39, %55
  resume { ptr, i32 } %22

57:                                               ; preds = %15
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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
define dso_local void @_ZN11xercesc_2_79CMUnaryOpD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_79CMUnaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !60

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(44) %3) #10, !prof !66
  br label %9

9:                                                ; preds = %5, %1
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13, !prof !60

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !67

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %11, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %15)
          to label %26 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #9
  unreachable

26:                                               ; preds = %17, %13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #10
  br label %27

27:                                               ; preds = %26, %9
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !60

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %29, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35, !prof !67

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %29, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %33)
          to label %44 unwind label %41

41:                                               ; preds = %35
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #9
  unreachable

44:                                               ; preds = %35, %31
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %29) #10
  br label %45

45:                                               ; preds = %27, %44
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79CMUnaryOpD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_79CMUnaryOpD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79CMUnaryOp8getChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79CMUnaryOp8getChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #5 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79CMUnaryOp10isNullableEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %12, !prof !70

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(44) %7), !prof !71
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i1 [ %11, %5 ], [ true, %1 ]
  ret i1 %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79CMUnaryOp12calcFirstPosERNS_10CMStateSetE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %21, !prof !67

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %10)
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = load ptr, ptr %9, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %13, ptr noundef %14)
          to label %15 unwind label %19, !prof !67

15:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !61
  %16 = load ptr, ptr %4, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(32) %11), !prof !72
  br label %21

19:                                               ; preds = %8
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #10
  resume { ptr, i32 } %20

21:                                               ; preds = %2, %15
  %22 = load ptr, ptr %5, align 8, !tbaa !61
  %23 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %42, label %4, !prof !74

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !75
  %6 = load i32, ptr %1, align 8, !tbaa !75
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %15, label %8, !prof !76

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !64
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
  br i1 %16, label %24, label %17, !prof !76

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !77
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %31

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !78
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !78
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !79
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !79
  br label %42

31:                                               ; preds = %21, %31
  %32 = phi i64 [ 0, %21 ], [ %38, %31 ]
  %33 = load ptr, ptr %22, align 8, !tbaa !62
  %34 = getelementptr inbounds i8, ptr %33, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !80
  %36 = load ptr, ptr %23, align 8, !tbaa !62
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  store i8 %35, ptr %37, align 1, !tbaa !80
  %38 = add nuw nsw i64 %32, 1
  %39 = load i32, ptr %18, align 4, !tbaa !77
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %31, label %42, !llvm.loop !81

42:                                               ; preds = %31, %17, %24, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79CMUnaryOp11calcLastPosERNS_10CMStateSetE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMUnaryOp", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %21, !prof !67

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %10)
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %4, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = load ptr, ptr %9, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %13, ptr noundef %14)
          to label %15 unwind label %19, !prof !67

15:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !65
  %16 = load ptr, ptr %4, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(32) %11), !prof !84
  br label %21

19:                                               ; preds = %8
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #10
  resume { ptr, i32 } %20

21:                                               ; preds = %2, %15
  %22 = load ptr, ptr %5, align 8, !tbaa !65
  %23 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = load ptr, ptr %11, align 8, !tbaa !47
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
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %21, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = load ptr, ptr %29, align 8, !tbaa !47
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
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !45 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
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
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !88 {
  store i32 %1, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !64
  %6 = icmp ugt i32 %1, 64
  br i1 %6, label %7, label %19, !prof !89

7:                                                ; preds = %3
  %8 = lshr i32 %1, 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = and i32 %1, 7
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %8, %12
  store i32 %13, ptr %9, align 4, !tbaa !77
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14)
  store ptr %18, ptr %4, align 8, !tbaa !62
  br label %19

19:                                               ; preds = %7, %3
  %20 = load i32, ptr %0, align 8, !tbaa !75
  %21 = icmp ult i32 %20, 65
  br i1 %21, label %26, label %22, !prof !90

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !77
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !78
  %28 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %28, align 4, !tbaa !79
  br label %37

29:                                               ; preds = %22, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %22 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !62
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  store i8 0, ptr %32, align 1, !tbaa !80
  %33 = add nuw nsw i64 %30, 1
  %34 = load i32, ptr %23, align 4, !tbaa !77
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %29, label %37, !llvm.loop !91

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
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_79CMUnaryOpD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 32}
!36 = !{ptr @_ZN11xercesc_2_79CMUnaryOpD0Ev, ptr @_ZN11xercesc_2_79CMUnaryOpD2Ev, i64 16}
!37 = !{ptr @_ZN11xercesc_2_79CMUnaryOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 16}
!38 = !{ptr @_ZNK11xercesc_2_79CMUnaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 16}
!39 = !{ptr @_ZNK11xercesc_2_79CMUnaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 16}
!40 = !{ptr @_ZNK11xercesc_2_79CMUnaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 16}
!41 = !{ptr @_ZNK11xercesc_2_79CMUnaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 16}
!42 = !{ptr @_ZNK11xercesc_2_79CMUnaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 16}
!43 = !{ptr @_ZNK11xercesc_2_79CMUnaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 16}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!"function_entry_count", i64 16}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !52, i64 8}
!51 = !{!"_ZTSN11xercesc_2_76CMNodeE", !52, i64 8, !54, i64 16, !52, i64 24, !52, i64 32, !55, i64 40}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !49, i64 0}
!54 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !53, i64 0}
!55 = !{!"int", !53, i64 0}
!56 = !{!51, !54, i64 16}
!57 = !{!51, !55, i64 40}
!58 = !{!59, !52, i64 48}
!59 = !{!"_ZTSN11xercesc_2_79CMUnaryOpE", !51, i64 0, !52, i64 48}
!60 = !{!"branch_weights", i32 0, i32 16}
!61 = !{!51, !52, i64 24}
!62 = !{!63, !52, i64 16}
!63 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !52, i64 16, !52, i64 24}
!64 = !{!63, !52, i64 24}
!65 = !{!51, !52, i64 32}
!66 = !{!"VP", i32 0, i64 16, i64 6977671972959571951, i64 15, i64 -6195330049133800025, i64 1}
!67 = !{!"branch_weights", i32 16, i32 0}
!68 = !{!"function_entry_count", i64 32}
!69 = !{!"function_entry_count", i64 31}
!70 = !{!"branch_weights", i32 1, i32 30}
!71 = !{!"VP", i32 0, i64 1, i64 1807130293161702614, i64 1}
!72 = !{!"VP", i32 0, i64 16, i64 8664271339341851308, i64 15, i64 -4273712280559351836, i64 1}
!73 = !{!"function_entry_count", i64 151}
!74 = !{!"branch_weights", i32 0, i32 151}
!75 = !{!63, !55, i64 0}
!76 = !{!"branch_weights", i32 151, i32 0}
!77 = !{!63, !55, i64 4}
!78 = !{!63, !55, i64 8}
!79 = !{!63, !55, i64 12}
!80 = !{!53, !53, i64 0}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"VP", i32 0, i64 16, i64 8485140935668277144, i64 15, i64 3129422713079703786, i64 1}
!85 = !{!86, !52, i64 40}
!86 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !87, i64 8, !52, i64 16, !55, i64 24, !52, i64 32, !52, i64 40}
!87 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !53, i64 0}
!88 = !{!"function_entry_count", i64 441}
!89 = !{!"branch_weights", i32 0, i32 441}
!90 = !{!"branch_weights", i32 441, i32 0}
!91 = distinct !{!91, !82, !83}

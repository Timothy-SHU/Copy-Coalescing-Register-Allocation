; ModuleID = 'CMBinaryOp.cpp'
source_filename = "CMBinaryOp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::CMBinaryOp" = type { %"class.xercesc_2_7::CMNode.base", ptr, ptr }
%"class.xercesc_2_7::CMNode.base" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::CMStateSet" = type { i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_76CMNodeD2Ev = comdat any

$_ZN11xercesc_2_76CMNodeD0Ev = comdat any

$_ZN11xercesc_2_710CMStateSetD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_76CMNode7getTypeEv = comdat any

$_ZNK11xercesc_2_76CMNode11getFirstPosEv = comdat any

$_ZN11xercesc_2_710CMStateSetaSERKS0_ = comdat any

$_ZN11xercesc_2_710CMStateSetoRERKS0_ = comdat any

$_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710CMStateSet8zeroBitsEv = comdat any

$_ZNK11xercesc_2_76CMNode10getLastPosEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_76CMNodeE = comdat any

$_ZTSN11xercesc_2_76CMNodeE = comdat any

$_ZTIN11xercesc_2_76CMNodeE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_76CMNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMNodeE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_76CMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMNodeE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_710CMBinaryOpE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710CMBinaryOpE, ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, ptr @_ZN11xercesc_2_710CMBinaryOpD0Ev, ptr @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv, ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE] }, align 8
@_ZTSN11xercesc_2_710CMBinaryOpE = dso_local constant [28 x i8] c"N11xercesc_2_710CMBinaryOpE\00", align 1
@_ZTIN11xercesc_2_710CMBinaryOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710CMBinaryOpE, ptr @_ZTIN11xercesc_2_76CMNodeE }, align 8
@.str = private unnamed_addr constant [15 x i8] c"CMBinaryOp.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [43 x i8] c"./xercesc/validators/common/CMStateSet.hpp\00", align 1

@_ZN11xercesc_2_710CMBinaryOpC1ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE
@_ZN11xercesc_2_710CMBinaryOpD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #8
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_710CMBinaryOpD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #10
  %3 = and i32 %2, 15
  %4 = icmp eq i32 %3, 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(44) %6) #10
  br i1 %4, label %11, label %12, !prof !76

11:                                               ; preds = %1
  br i1 %10, label %20, label %13

12:                                               ; preds = %1
  br i1 %10, label %13, label %20, !prof !77

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(44) %15) #10
  br label %20

20:                                               ; preds = %13, %12, %11
  %21 = phi i1 [ true, %11 ], [ false, %12 ], [ %19, %13 ]
  ret i1 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 align 2 !prof !79 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #10
  %4 = and i32 %3, 15
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %11, !prof !80

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %8) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  br label %25

11:                                               ; preds = %2
  %12 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #10
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %29, !prof !81

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %17) #10
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %18) #10
  %20 = load ptr, ptr %16, align 8, !tbaa !74
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(44) %20) #10
  br i1 %24, label %25, label %29, !prof !82

25:                                               ; preds = %15, %6
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %27) #10
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %28) #10
  br label %29

29:                                               ; preds = %25, %11, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 align 2 !prof !83 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #10
  %4 = and i32 %3, 15
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %12, !prof !84

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %8) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  br label %28

12:                                               ; preds = %2
  %13 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #10
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %32, !prof !85

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %18) #10
  %20 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %19) #10
  %21 = load ptr, ptr %17, align 8, !tbaa !78
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(44) %21) #10
  br i1 %25, label %26, label %32, !prof !86

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  br label %28

28:                                               ; preds = %6, %26
  %29 = phi ptr [ %27, %26 ], [ %11, %6 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %30) #10
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %31) #10
  br label %32

32:                                               ; preds = %28, %12, %16
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !91

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #9
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710CMBinaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !78
  %8 = and i32 %1, 14
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %17, label %10, !prof !93

10:                                               ; preds = %5
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 16, ptr noundef %4) #10
          to label %12 unwind label %13

12:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
          to label %20 unwind label %15

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #11
  br label %18

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %18

17:                                               ; preds = %5
  ret void

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  resume { ptr, i32 } %19

20:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 -1, ptr %7, align 8, !tbaa !96
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !98 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !97 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !79 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710CMBinaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !63
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(44) %3) #8
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !63
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(44) %11) #8
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710CMBinaryOp7getLeftEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #6 align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #6 align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710CMBinaryOp8getRightEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #6 align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #6 align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !95
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19, !prof !105

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #10
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = load ptr, ptr %6, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %10, ptr noundef %11) #10
          to label %12 unwind label %17

12:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !66
  %13 = load ptr, ptr %0, align 8, !tbaa !63
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %16 = load ptr, ptr %2, align 8, !tbaa !66
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #8
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %16, %12 ], [ %3, %1 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %39, label %4, !prof !107

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !108
  %6 = load i32, ptr %1, align 8, !tbaa !108
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %15, label %8, !prof !109

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 12, ptr noundef %11) #10
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #11
  resume { ptr, i32 } %14

15:                                               ; preds = %4
  %16 = icmp ult i32 %5, 65
  br i1 %16, label %24, label %17, !prof !109

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !110
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %27 = load <2 x i32>, ptr %25, align 8, !tbaa !111
  store <2 x i32> %27, ptr %26, align 8, !tbaa !111
  br label %39

28:                                               ; preds = %21, %28
  %29 = phi i64 [ 0, %21 ], [ %35, %28 ]
  %30 = load ptr, ptr %22, align 8, !tbaa !89
  %31 = getelementptr inbounds i8, ptr %30, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !112
  %33 = load ptr, ptr %23, align 8, !tbaa !89
  %34 = getelementptr inbounds i8, ptr %33, i64 %29
  store i8 %32, ptr %34, align 1, !tbaa !112
  %35 = add nuw nsw i64 %29, 1
  %36 = load i32, ptr %18, align 4, !tbaa !110
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %28, label %39, !llvm.loop !113

39:                                               ; preds = %28, %17, %24, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = load i32, ptr %0, align 8, !tbaa !108
  %4 = icmp ult i32 %3, 65
  br i1 %4, label %12, label %5, !prof !116

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !110
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !111
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !111
  %17 = or <2 x i32> %16, %15
  store <2 x i32> %17, ptr %14, align 8, !tbaa !111
  br label %31

18:                                               ; preds = %9, %18
  %19 = phi i64 [ 0, %9 ], [ %27, %18 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !89
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !112
  %23 = load ptr, ptr %11, align 8, !tbaa !89
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !112
  %26 = or i8 %25, %22
  store i8 %26, ptr %24, align 1, !tbaa !112
  %27 = add nuw nsw i64 %19, 1
  %28 = load i32, ptr %6, align 4, !tbaa !110
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %18, label %31, !llvm.loop !117

31:                                               ; preds = %18, %5, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !118 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store i32 %1, ptr %0, align 8, !tbaa !108
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !89
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !92
  %6 = icmp ugt i32 %1, 64
  br i1 %6, label %7, label %19, !prof !119

7:                                                ; preds = %3
  %8 = lshr i32 %1, 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = and i32 %1, 7
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %8, %12
  store i32 %13, ptr %9, align 4, !tbaa !110
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !63
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14) #10
  store ptr %18, ptr %4, align 8, !tbaa !89
  br label %19

19:                                               ; preds = %7, %3
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !120 {
  %2 = load i32, ptr %0, align 8, !tbaa !108
  %3 = icmp ult i32 %2, 65
  br i1 %3, label %10, label %4, !prof !121

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !110
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !122
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 4, !tbaa !123
  br label %21

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %17, %13 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !89
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !112
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %5, align 4, !tbaa !110
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !124

21:                                               ; preds = %13, %4, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19, !prof !126

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #10
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = load ptr, ptr %6, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %10, ptr noundef %11) #10
          to label %12 unwind label %17

12:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !72
  %13 = load ptr, ptr %0, align 8, !tbaa !63
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %16 = load ptr, ptr %2, align 8, !tbaa !72
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #8
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %16, %12 ], [ %3, %1 ]
  ret ptr %20
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!61}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!36 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_710CMStateSetD2Ev, i64 292}
!37 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 292}
!38 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 241}
!39 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 127}
!40 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, i64 72}
!41 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 64}
!42 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetoRERKS0_, i64 8}
!43 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 105}
!44 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, i64 69}
!45 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 53}
!46 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetoRERKS0_, i64 16}
!47 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, i64 65}
!48 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, i64 1}
!51 = !{ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 233}
!52 = !{ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, ptr @_ZN11xercesc_2_76CMNodeD2Ev, i64 65}
!53 = !{ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 156}
!54 = !{ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 156}
!55 = !{ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, ptr @__cxa_allocate_exception, i64 1}
!56 = !{ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 441}
!58 = !{ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710CMStateSet8zeroBitsEv, i64 441}
!59 = !{ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 134}
!60 = !{ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 134}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 233}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!67, !68, i64 24}
!67 = !{!"_ZTSN11xercesc_2_76CMNodeE", !68, i64 8, !70, i64 16, !68, i64 24, !68, i64 32, !71, i64 40}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !65, i64 0}
!70 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !69, i64 0}
!71 = !{!"int", !69, i64 0}
!72 = !{!67, !68, i64 32}
!73 = !{!"function_entry_count", i64 241}
!74 = !{!75, !68, i64 48}
!75 = !{!"_ZTSN11xercesc_2_710CMBinaryOpE", !67, i64 0, !68, i64 48, !68, i64 56}
!76 = !{!"branch_weights", i32 1, i32 242}
!77 = !{!"branch_weights", i32 13, i32 230}
!78 = !{!75, !68, i64 56}
!79 = !{!"function_entry_count", i64 65}
!80 = !{!"branch_weights", i32 3, i32 64}
!81 = !{!"branch_weights", i32 64, i32 1}
!82 = !{!"branch_weights", i32 5, i32 60}
!83 = !{!"function_entry_count", i64 54}
!84 = !{!"branch_weights", i32 3, i32 53}
!85 = !{!"branch_weights", i32 53, i32 1}
!86 = !{!"branch_weights", i32 14, i32 40}
!87 = !{!68, !68, i64 0}
!88 = !{!"function_entry_count", i64 452}
!89 = !{!90, !68, i64 16}
!90 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !68, i64 16, !68, i64 24}
!91 = !{!"branch_weights", i32 453, i32 1}
!92 = !{!90, !68, i64 24}
!93 = !{!"branch_weights", i32 4291, i32 64}
!94 = !{!67, !68, i64 8}
!95 = !{!67, !70, i64 16}
!96 = !{!67, !71, i64 40}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!"function_entry_count", i64 5836268}
!99 = !{!100, !68, i64 40}
!100 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !101, i64 8, !68, i64 16, !71, i64 24, !68, i64 32, !68, i64 40}
!101 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !69, i64 0}
!102 = !{!"function_entry_count", i64 193}
!103 = !{!"function_entry_count", i64 820}
!104 = !{!"function_entry_count", i64 165}
!105 = !{!"branch_weights", i32 158, i32 9}
!106 = !{!"function_entry_count", i64 151}
!107 = !{!"branch_weights", i32 1, i32 152}
!108 = !{!90, !71, i64 0}
!109 = !{!"branch_weights", i32 152, i32 1}
!110 = !{!90, !71, i64 4}
!111 = !{!71, !71, i64 0}
!112 = !{!69, !69, i64 0}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"function_entry_count", i64 236}
!116 = !{!"branch_weights", i32 237, i32 1}
!117 = distinct !{!117, !114}
!118 = !{!"function_entry_count", i64 441}
!119 = !{!"branch_weights", i32 1, i32 442}
!120 = !{!"function_entry_count", i64 938}
!121 = !{!"branch_weights", i32 939, i32 1}
!122 = !{!90, !71, i64 8}
!123 = !{!90, !71, i64 12}
!124 = distinct !{!124, !114}
!125 = !{!"function_entry_count", i64 152}
!126 = !{!"branch_weights", i32 136, i32 18}

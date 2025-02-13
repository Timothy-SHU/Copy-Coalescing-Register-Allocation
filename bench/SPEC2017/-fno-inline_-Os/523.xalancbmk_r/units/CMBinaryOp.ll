; ModuleID = 'CMBinaryOp.cpp'
source_filename = "CMBinaryOp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMStateSet" = type { i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::CMBinaryOp" = type { %"class.xercesc_2_7::CMNode.base", ptr, ptr }
%"class.xercesc_2_7::CMNode.base" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_710CMStateSetD2Ev = comdat any

$_ZN11xercesc_2_76CMNodeD0Ev = comdat any

$_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_76CMNode7getTypeEv = comdat any

$_ZNK11xercesc_2_76CMNode11getFirstPosEv = comdat any

$_ZN11xercesc_2_710CMStateSetaSERKS0_ = comdat any

$_ZN11xercesc_2_710CMStateSetoRERKS0_ = comdat any

$_ZNK11xercesc_2_76CMNode10getLastPosEv = comdat any

$_ZN11xercesc_2_76CMNodeD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710CMStateSet8zeroBitsEv = comdat any

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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !68

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #8
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710CMBinaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !73
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !77
  %8 = and i32 %1, 14
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %17, label %10, !prof !78

10:                                               ; preds = %5
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 16, ptr noundef %4) #8
          to label %12 unwind label %13

12:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %20 unwind label %15

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #10
  br label %18

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %18

17:                                               ; preds = %5
  ret void

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #12
  resume { ptr, i32 } %19

20:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 -1, ptr %7, align 8, !tbaa !82
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !72 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710CMBinaryOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(44) %3) #12
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !70
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(44) %11) #12
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710CMBinaryOpD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_710CMBinaryOpD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710CMBinaryOp7getLeftEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710CMBinaryOp7getLeftEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710CMBinaryOp8getRightEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710CMBinaryOp8getRightEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #4 align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 !prof !85 {
  %2 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  %3 = and i32 %2, 15
  %4 = icmp eq i32 %3, 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(44) %6) #8
  br i1 %4, label %11, label %12, !prof !86

11:                                               ; preds = %1
  br i1 %10, label %20, label %13

12:                                               ; preds = %1
  br i1 %10, label %13, label %20, !prof !87

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(44) %15) #8
  br label %20

20:                                               ; preds = %13, %12, %11
  %21 = phi i1 [ true, %11 ], [ false, %12 ], [ %19, %13 ]
  ret i1 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #2 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !81
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 !prof !72 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  %4 = and i32 %3, 15
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %11, !prof !89

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %8) #8
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9) #8
  br label %25

11:                                               ; preds = %2
  %12 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %29, !prof !90

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %17) #8
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %18) #8
  %20 = load ptr, ptr %16, align 8, !tbaa !73
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(44) %20) #8
  br i1 %24, label %25, label %29, !prof !91

25:                                               ; preds = %15, %6
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %27) #8
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %28) #8
  br label %29

29:                                               ; preds = %25, %11, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19, !prof !94

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #8
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !82
  %11 = load ptr, ptr %6, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %10, ptr noundef %11) #8
          to label %12 unwind label %17

12:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !93
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  %16 = load ptr, ptr %2, align 8, !tbaa !93
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %16, %12 ], [ %3, %1 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %39, label %4, !prof !96

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !97
  %6 = load i32, ptr %1, align 8, !tbaa !97
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %15, label %8, !prof !98

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 12, ptr noundef %11) #8
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
  br i1 %16, label %24, label %17, !prof !98

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %27 = load <2 x i32>, ptr %25, align 8, !tbaa !100
  store <2 x i32> %27, ptr %26, align 8, !tbaa !100
  br label %39

28:                                               ; preds = %21, %28
  %29 = phi i64 [ 0, %21 ], [ %35, %28 ]
  %30 = load ptr, ptr %22, align 8, !tbaa !62
  %31 = getelementptr inbounds i8, ptr %30, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !101
  %33 = load ptr, ptr %23, align 8, !tbaa !62
  %34 = getelementptr inbounds i8, ptr %33, i64 %29
  store i8 %32, ptr %34, align 1, !tbaa !101
  %35 = add nuw nsw i64 %29, 1
  %36 = load i32, ptr %18, align 4, !tbaa !99
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %28, label %39, !llvm.loop !102

39:                                               ; preds = %28, %17, %24, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !104 {
  %3 = load i32, ptr %0, align 8, !tbaa !97
  %4 = icmp ult i32 %3, 65
  br i1 %4, label %12, label %5, !prof !105

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !100
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !100
  %17 = or <2 x i32> %16, %15
  store <2 x i32> %17, ptr %14, align 8, !tbaa !100
  br label %31

18:                                               ; preds = %9, %18
  %19 = phi i64 [ 0, %9 ], [ %27, %18 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !62
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !101
  %23 = load ptr, ptr %11, align 8, !tbaa !62
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !101
  %26 = or i8 %25, %22
  store i8 %26, ptr %24, align 1, !tbaa !101
  %27 = add nuw nsw i64 %19, 1
  %28 = load i32, ptr %6, align 4, !tbaa !99
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %18, label %31, !llvm.loop !106

31:                                               ; preds = %18, %5, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 !prof !107 {
  %3 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  %4 = and i32 %3, 15
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %12, !prof !108

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %8) #8
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9) #8
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  br label %28

12:                                               ; preds = %2
  %13 = tail call noundef i32 @_ZNK11xercesc_2_76CMNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #8
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %32, !prof !109

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %18) #8
  %20 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %19) #8
  %21 = load ptr, ptr %17, align 8, !tbaa !77
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(44) %21) #8
  br i1 %25, label %26, label %32, !prof !110

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"class.xercesc_2_7::CMBinaryOp", ptr %0, i64 0, i32 1
  br label %28

28:                                               ; preds = %6, %26
  %29 = phi ptr [ %27, %26 ], [ %11, %6 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %30) #8
  tail call void @_ZN11xercesc_2_710CMStateSetoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %31) #8
  br label %32

32:                                               ; preds = %28, %12, %16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19, !prof !114

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #8
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !82
  %11 = load ptr, ptr %6, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %10, ptr noundef %11) #8
          to label %12 unwind label %17

12:                                               ; preds = %5
  store ptr %8, ptr %2, align 8, !tbaa !113
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #8
  %16 = load ptr, ptr %2, align 8, !tbaa !113
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %16, %12 ], [ %3, %1 ]
  ret ptr %20
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 !prof !79 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !115 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !83 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !83 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store i32 %1, ptr %0, align 8, !tbaa !97
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  store ptr %2, ptr %5, align 8, !tbaa !69
  %6 = icmp ugt i32 %1, 64
  br i1 %6, label %7, label %19, !prof !120

7:                                                ; preds = %3
  %8 = lshr i32 %1, 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %10 = and i32 %1, 7
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %8, %12
  store i32 %13, ptr %9, align 4, !tbaa !99
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !70
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14) #8
  store ptr %18, ptr %4, align 8, !tbaa !62
  br label %19

19:                                               ; preds = %7, %3
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = load i32, ptr %0, align 8, !tbaa !97
  %3 = icmp ult i32 %2, 65
  br i1 %3, label %10, label %4, !prof !122

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !123
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 4, !tbaa !124
  br label %21

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %17, %13 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !62
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !101
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %5, align 4, !tbaa !99
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !125

21:                                               ; preds = %13, %4, %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, i64 65}
!36 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_710CMBinaryOpC2ENS_15ContentSpecNode9NodeTypesEPNS_6CMNodeES4_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 233}
!40 = !{ptr @_ZN11xercesc_2_710CMBinaryOpD2Ev, ptr @_ZN11xercesc_2_76CMNodeD2Ev, i64 65}
!41 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp10isNullableEv, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 241}
!42 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 127}
!43 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, i64 72}
!44 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 64}
!45 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp12calcFirstPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetoRERKS0_, i64 8}
!46 = !{ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 156}
!47 = !{ptr @_ZNK11xercesc_2_76CMNode11getFirstPosEv, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 156}
!48 = !{ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode7getTypeEv, i64 105}
!51 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, i64 69}
!52 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetaSERKS0_, i64 53}
!53 = !{ptr @_ZNK11xercesc_2_710CMBinaryOp11calcLastPosERNS_10CMStateSetE, ptr @_ZN11xercesc_2_710CMStateSetoRERKS0_, i64 16}
!54 = !{ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 134}
!55 = !{ptr @_ZNK11xercesc_2_76CMNode10getLastPosEv, ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, i64 134}
!56 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_710CMStateSetD2Ev, i64 292}
!57 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 292}
!58 = !{ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 441}
!59 = !{ptr @_ZN11xercesc_2_710CMStateSetC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710CMStateSet8zeroBitsEv, i64 441}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 452}
!62 = !{!63, !67, i64 16}
!63 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !67, i64 16, !67, i64 24}
!64 = !{!"int", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"any pointer", !65, i64 0}
!68 = !{!"branch_weights", i32 453, i32 1}
!69 = !{!63, !67, i64 24}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !66, i64 0}
!72 = !{!"function_entry_count", i64 65}
!73 = !{!74, !67, i64 48}
!74 = !{!"_ZTSN11xercesc_2_710CMBinaryOpE", !75, i64 0, !67, i64 48, !67, i64 56}
!75 = !{!"_ZTSN11xercesc_2_76CMNodeE", !67, i64 8, !76, i64 16, !67, i64 24, !67, i64 32, !64, i64 40}
!76 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !65, i64 0}
!77 = !{!74, !67, i64 56}
!78 = !{!"branch_weights", i32 4291, i32 64}
!79 = !{!"function_entry_count", i64 233}
!80 = !{!75, !67, i64 8}
!81 = !{!75, !76, i64 16}
!82 = !{!75, !64, i64 40}
!83 = !{!"function_entry_count", i64 0}
!84 = !{!"function_entry_count", i64 193}
!85 = !{!"function_entry_count", i64 241}
!86 = !{!"branch_weights", i32 1, i32 242}
!87 = !{!"branch_weights", i32 13, i32 230}
!88 = !{!"function_entry_count", i64 820}
!89 = !{!"branch_weights", i32 3, i32 64}
!90 = !{!"branch_weights", i32 64, i32 1}
!91 = !{!"branch_weights", i32 5, i32 60}
!92 = !{!"function_entry_count", i64 165}
!93 = !{!75, !67, i64 24}
!94 = !{!"branch_weights", i32 158, i32 9}
!95 = !{!"function_entry_count", i64 151}
!96 = !{!"branch_weights", i32 1, i32 152}
!97 = !{!63, !64, i64 0}
!98 = !{!"branch_weights", i32 152, i32 1}
!99 = !{!63, !64, i64 4}
!100 = !{!64, !64, i64 0}
!101 = !{!65, !65, i64 0}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"function_entry_count", i64 236}
!105 = !{!"branch_weights", i32 237, i32 1}
!106 = distinct !{!106, !103}
!107 = !{!"function_entry_count", i64 54}
!108 = !{!"branch_weights", i32 3, i32 53}
!109 = !{!"branch_weights", i32 53, i32 1}
!110 = !{!"branch_weights", i32 14, i32 40}
!111 = !{!67, !67, i64 0}
!112 = !{!"function_entry_count", i64 152}
!113 = !{!75, !67, i64 32}
!114 = !{!"branch_weights", i32 136, i32 18}
!115 = !{!"function_entry_count", i64 5836268}
!116 = !{!117, !67, i64 40}
!117 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !118, i64 8, !67, i64 16, !64, i64 24, !67, i64 32, !67, i64 40}
!118 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !65, i64 0}
!119 = !{!"function_entry_count", i64 441}
!120 = !{!"branch_weights", i32 1, i32 442}
!121 = !{!"function_entry_count", i64 938}
!122 = !{!"branch_weights", i32 939, i32 1}
!123 = !{!63, !64, i64 8}
!124 = !{!63, !64, i64 12}
!125 = distinct !{!125, !103}

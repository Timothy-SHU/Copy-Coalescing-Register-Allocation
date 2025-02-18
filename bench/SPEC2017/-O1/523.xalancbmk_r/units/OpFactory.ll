; ModuleID = 'OpFactory.cpp'
source_filename = "OpFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::OpFactory" = type { ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::Op" = type { ptr, ptr, i16, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_2OpEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_2OpEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711RefVectorOfINS_2OpEEE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_711RefVectorOfINS_2OpEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_2OpEEE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_2OpEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_2OpEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79OpFactoryC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_79OpFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79OpFactoryD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79OpFactoryC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  store ptr null, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !67
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
  %5 = load ptr, ptr %3, align 8, !tbaa !67
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 1
  store i8 1, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !74
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 3
  store i32 16, ptr %8, align 8, !tbaa !75
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  store ptr %5, ptr %10, align 8, !tbaa !77
  %11 = load ptr, ptr %5, align 8, !tbaa !68
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 128)
          to label %15 unwind label %23, !prof !78

15:                                               ; preds = %2
  store ptr %14, ptr %9, align 8, !tbaa !76
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ 0, %15 ], [ %20, %16 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !76
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  store ptr null, ptr %19, align 8, !tbaa !79
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %22, label %16, !prof !80, !llvm.loop !81

22:                                               ; preds = %16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !68
  store ptr %4, ptr %0, align 8, !tbaa !62
  ret void

23:                                               ; preds = %2
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef %1) #7
  resume { ptr, i32 } %24
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79OpFactoryD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !61 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !84

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !68
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(40) %2) #7, !prof !85
  br label %8

8:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_72OpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, i16 noundef signext 0, ptr noundef %5)
          to label %6 unwind label %15, !prof !87

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  store ptr %4, ptr %13, align 8, !tbaa !79
  %14 = add i32 %11, 1
  store i32 %14, ptr %10, align 4, !tbaa !74
  ret ptr %4

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %16
}

declare void @_ZN11xercesc_2_72OpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), i16 noundef signext, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, i16 noundef signext 1, i32 noundef %1, ptr noundef %6)
          to label %7 unwind label %16, !prof !89

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

declare void @_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i16 noundef signext, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory14createAnchorOpEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, i16 noundef signext 5, i32 noundef %1, ptr noundef %6)
          to label %7 unwind label %16

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, i16 noundef signext 15, i32 noundef %1, ptr noundef %7)
          to label %8 unwind label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !91
  %10 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1)
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  store ptr %6, ptr %16, align 8, !tbaa !79
  %17 = add i32 %14, 1
  store i32 %17, ptr %13, align 4, !tbaa !74
  ret ptr %6

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #7
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_77UnionOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef signext 11, i32 noundef %1, ptr noundef %6)
          to label %7 unwind label %16, !prof !95

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

declare void @_ZN11xercesc_2_77UnionOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_710ModifierOpC1EsiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, i16 noundef signext 7, i32 noundef %1, i32 noundef -1, ptr noundef %6)
          to label %7 unwind label %16, !prof !97

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

declare void @_ZN11xercesc_2_710ModifierOpC1EsiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory24createNonGreedyClosureOpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef signext 8, ptr noundef %5)
          to label %6 unwind label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  store ptr %4, ptr %13, align 8, !tbaa !79
  %14 = add i32 %11, 1
  store i32 %14, ptr %10, align 4, !tbaa !74
  ret ptr %4

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %16
}

declare void @_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = select i1 %1, i16 10, i16 9, !prof !99
  %7 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef signext %6, ptr noundef %7)
          to label %8 unwind label %17, !prof !100

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !74
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  store ptr %5, ptr %15, align 8, !tbaa !79
  %16 = add i32 %13, 1
  store i32 %16, ptr %12, align 4, !tbaa !74
  ret ptr %5

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_77RangeOpC1EsPKNS_5TokenEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef signext 3, ptr noundef %1, ptr noundef %6)
          to label %7 unwind label %16, !prof !102

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

declare void @_ZN11xercesc_2_77RangeOpC1EsPKNS_5TokenEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %6)
  %8 = load ptr, ptr %5, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %7, i16 noundef signext %1, ptr noundef %8)
          to label %9 unwind label %19

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %7, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %3)
  %11 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1)
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !74
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %7, ptr %17, align 8, !tbaa !79
  %18 = add i32 %15, 1
  store i32 %18, ptr %14, align 4, !tbaa !74
  ret ptr %7

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #7
  resume { ptr, i32 } %20
}

declare void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory21createBackReferenceOpEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, i16 noundef signext 16, i32 noundef %1, ptr noundef %6)
          to label %7 unwind label %16

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_78StringOpC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef signext 6, ptr noundef %1, ptr noundef %6)
          to label %7 unwind label %16, !prof !104

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %5, ptr %14, align 8, !tbaa !79
  %15 = add i32 %12, 1
  store i32 %15, ptr %11, align 4, !tbaa !74
  ret ptr %5

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #7
  resume { ptr, i32 } %17
}

declare void @_ZN11xercesc_2_78StringOpC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory19createIndependentOpEPKNS_2OpES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %6, i16 noundef signext 24, ptr noundef %7)
          to label %8 unwind label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %6, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %2)
  %10 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1)
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  store ptr %6, ptr %16, align 8, !tbaa !79
  %17 = add i32 %14, 1
  store i32 %17, ptr %13, align 4, !tbaa !74
  ret ptr %6

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #7
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory16createModifierOpEPKNS_2OpES3_ii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7)
  %9 = load ptr, ptr %6, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_710ModifierOpC1EsiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i16 noundef signext 25, i32 noundef %3, i32 noundef %4, ptr noundef %9)
          to label %10 unwind label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %8, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %2)
  ret ptr %8

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #7
  resume { ptr, i32 } %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79OpFactory17createConditionOpEPKNS_2OpEiS3_S3_S3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::OpFactory", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %8)
  %10 = load ptr, ptr %7, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_711ConditionOpC1EsiPKNS_2OpES3_S3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %9, i16 noundef signext 26, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %10)
          to label %11 unwind label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %9, i64 0, i32 3
  store ptr %1, ptr %12, align 8, !tbaa !91
  ret ptr %9

13:                                               ; preds = %6
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #7
  resume { ptr, i32 } %14
}

declare void @_ZN11xercesc_2_711ConditionOpC1EsiPKNS_2OpES3_S3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef signext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !70, !range !105, !noundef !106
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !107

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !108

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !109

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #7, !prof !110
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !111, !llvm.loop !112

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !68
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !113

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #8
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !88 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #7
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !70, !range !105, !noundef !106
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !68
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(32) %23) #7
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !74
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !70, !range !105, !noundef !106
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !68
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(32) %18) #7
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !76
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !79
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !74
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !114
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #7
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !70, !range !105, !noundef !106
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !68
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(32) %22) #7
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !74
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !76
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !79
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !115

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !79
  store i32 %30, ptr %3, align 4, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !70, !range !105, !noundef !106
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #7
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !70, !range !105, !noundef !106
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #7
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !116

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !68
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !90 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !68
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !120 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !75
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !121

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !122
  %21 = load i32, ptr %3, align 4, !tbaa !74
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !123

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !124

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !79
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !76
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !79
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !125, !llvm.loop !126

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !77
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = load ptr, ptr %49, align 8, !tbaa !68
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !127
  store ptr %20, ptr %50, align 8, !tbaa !76
  store i32 %12, ptr %6, align 8, !tbaa !75
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @_ZN11xercesc_2_79OpFactoryC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xercesc_2_79OpFactoryD2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, i64 10}
!37 = !{ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 12}
!38 = !{ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv, ptr @_ZN11xercesc_2_72OpC1EsPNS_13MemoryManagerE, i64 12}
!39 = !{ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 12}
!40 = !{ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 13}
!41 = !{ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi, ptr @_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE, i64 13}
!42 = !{ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 13}
!43 = !{ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!44 = !{ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi, ptr @_ZN11xercesc_2_77UnionOpC1EsiPNS_13MemoryManagerE, i64 3}
!45 = !{ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 3}
!46 = !{ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 11}
!47 = !{ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi, ptr @_ZN11xercesc_2_710ModifierOpC1EsiiPNS_13MemoryManagerE, i64 11}
!48 = !{ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 11}
!49 = !{ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!50 = !{ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb, ptr @_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE, i64 5}
!51 = !{ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 5}
!52 = !{ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 51}
!53 = !{ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE, ptr @_ZN11xercesc_2_77RangeOpC1EsPKNS_5TokenEPNS_13MemoryManagerE, i64 51}
!54 = !{ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 51}
!55 = !{ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 8}
!56 = !{ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt, ptr @_ZN11xercesc_2_78StringOpC1EsPKtPNS_13MemoryManagerE, i64 8}
!57 = !{ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 8}
!58 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, i64 13}
!59 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 13}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 10}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSN11xercesc_2_79OpFactoryE", !64, i64 0, !64, i64 8}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!63, !64, i64 8}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !66, i64 0}
!70 = !{!71, !72, i64 8}
!71 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE", !72, i64 8, !73, i64 12, !73, i64 16, !64, i64 24, !64, i64 32}
!72 = !{!"bool", !65, i64 0}
!73 = !{!"int", !65, i64 0}
!74 = !{!71, !73, i64 12}
!75 = !{!71, !73, i64 16}
!76 = !{!71, !64, i64 24}
!77 = !{!71, !64, i64 32}
!78 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!79 = !{!64, !64, i64 0}
!80 = !{!"branch_weights", i32 10, i32 150}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"branch_weights", i32 0, i32 10}
!85 = !{!"VP", i32 0, i64 10, i64 -3199985362539024492, i64 10}
!86 = !{!"function_entry_count", i64 12}
!87 = !{!"branch_weights", i32 12, i32 0}
!88 = !{!"function_entry_count", i64 13}
!89 = !{!"branch_weights", i32 13, i32 0}
!90 = !{!"function_entry_count", i64 0}
!91 = !{!92, !64, i64 24}
!92 = !{!"_ZTSN11xercesc_2_72OpE", !64, i64 8, !93, i64 16, !64, i64 24}
!93 = !{!"short", !65, i64 0}
!94 = !{!"function_entry_count", i64 3}
!95 = !{!"branch_weights", i32 3, i32 0}
!96 = !{!"function_entry_count", i64 11}
!97 = !{!"branch_weights", i32 11, i32 0}
!98 = !{!"function_entry_count", i64 5}
!99 = !{!"branch_weights", i32 0, i32 5}
!100 = !{!"branch_weights", i32 5, i32 0}
!101 = !{!"function_entry_count", i64 51}
!102 = !{!"branch_weights", i32 51, i32 0}
!103 = !{!"function_entry_count", i64 8}
!104 = !{!"branch_weights", i32 8, i32 0}
!105 = !{i8 0, i8 2}
!106 = !{}
!107 = !{!"branch_weights", i32 3, i32 10}
!108 = !{!"branch_weights", i32 1, i32 159}
!109 = !{!"branch_weights", i32 0, i32 103}
!110 = !{!"VP", i32 0, i64 103, i64 7020667758663806520, i64 51, i64 8178861124270919882, i64 13, i64 9018798547152831900, i64 12}
!111 = !{!"branch_weights", i32 1489, i32 159}
!112 = distinct !{!112, !82, !83}
!113 = !{!"VP", i32 0, i64 13, i64 -7405368087501025645, i64 13}
!114 = distinct !{!114, !82, !83}
!115 = distinct !{!115, !82, !83}
!116 = distinct !{!116, !82, !83}
!117 = !{!118, !64, i64 40}
!118 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !119, i64 8, !64, i64 16, !73, i64 24, !64, i64 32, !64, i64 40}
!119 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !65, i64 0}
!120 = !{!"function_entry_count", i64 110}
!121 = !{!"branch_weights", i32 3, i32 107}
!122 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!123 = !{!"branch_weights", i32 1, i32 191}
!124 = !{!"branch_weights", i32 191, i32 1}
!125 = !{!"branch_weights", i32 191, i32 2881}
!126 = distinct !{!126, !82, !83}
!127 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}

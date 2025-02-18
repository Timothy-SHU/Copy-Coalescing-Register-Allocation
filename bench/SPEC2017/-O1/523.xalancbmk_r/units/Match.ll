; ModuleID = 'Match.cpp'
source_filename = "Match.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Match" = type { ptr, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_75Match11setStartPosEii = comdat any

$_ZNK11xercesc_2_75Match11getStartPosEi = comdat any

$_ZN11xercesc_2_75Match9setEndPosEii = comdat any

$_ZNK11xercesc_2_75Match9getEndPosEi = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_75MatchE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_75MatchE, ptr @_ZN11xercesc_2_75MatchD2Ev, ptr @_ZN11xercesc_2_75MatchD0Ev] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_75MatchE = dso_local constant [22 x i8] c"N11xercesc_2_75MatchE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_75MatchE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_75MatchE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/regx/Match.hpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_75MatchC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_75MatchC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_75MatchC2ERKS0_
@_ZN11xercesc_2_75MatchD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_75MatchD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_75MatchC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_75MatchE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75MatchC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_75MatchE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  tail call void @_ZN11xercesc_2_75Match10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75Match10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 282, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %7)
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %18, %15
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i32 [ %22, %18 ], [ 0, %15 ]
  %20 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %19)
  tail call void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %19, i32 noundef %20)
  %21 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %19)
  tail call void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %19, i32 noundef %21)
  %22 = add nuw nsw i32 %19, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %17, label %18, !llvm.loop !44
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_75MatchaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_75Match10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_75MatchD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_75MatchE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = load ptr, ptr %10, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75Match7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = load ptr, ptr %2, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_75MatchD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_75MatchD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp slt i32 %4, 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, %1
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %14)
  %18 = load ptr, ptr %11, align 8, !tbaa !38
  %19 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %20)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store i32 %1, ptr %6, align 4, !tbaa !49
  %24 = load ptr, ptr %11, align 8, !tbaa !38
  %25 = sext i32 %1 to i64
  %26 = shl nsw i64 %25, 2
  %27 = load ptr, ptr %24, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %26)
  store ptr %30, ptr %13, align 8, !tbaa !47
  %31 = load ptr, ptr %11, align 8, !tbaa !38
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %26)
  store ptr %35, ptr %19, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %2, %10
  store i32 %1, ptr %3, align 8, !tbaa !43
  %37 = load i32, ptr %6, align 4, !tbaa !49
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  br label %45

44:                                               ; preds = %45, %36
  ret void

45:                                               ; preds = %39, %45
  %46 = phi i64 [ 0, %39 ], [ %49, %45 ]
  %47 = getelementptr inbounds i32, ptr %41, i64 %46
  store i32 -1, ptr %47, align 4, !tbaa !50
  %48 = getelementptr inbounds i32, ptr %43, i64 %46
  store i32 -1, ptr %48, align 4, !tbaa !50
  %49 = add nuw nsw i64 %46, 1
  %50 = load i32, ptr %6, align 4, !tbaa !49
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %45, label %44, !llvm.loop !51
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 282, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %30

14:                                               ; preds = %3
  %15 = icmp sgt i32 %1, -1
  %16 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, %1
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 6, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !50
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #8
  resume { ptr, i32 } %32
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 282, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %30

13:                                               ; preds = %2
  %14 = icmp sgt i32 %1, -1
  %15 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, %1
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 6, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #8
  resume { ptr, i32 } %32
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 282, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %30

14:                                               ; preds = %3
  %15 = icmp sgt i32 %1, -1
  %16 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, %1
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 6, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !50
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #8
  resume { ptr, i32 } %32
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 282, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %30

13:                                               ; preds = %2
  %14 = icmp sgt i32 %1, -1
  %15 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, %1
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 6, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #8
  resume { ptr, i32 } %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

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
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !42, i64 32}
!39 = !{!"_ZTSN11xercesc_2_75MatchE", !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 24, !42, i64 32}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"any pointer", !41, i64 0}
!43 = !{!39, !40, i64 8}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!39, !42, i64 16}
!48 = !{!39, !42, i64 24}
!49 = !{!39, !40, i64 12}
!50 = !{!40, !40, i64 0}
!51 = distinct !{!51, !45, !46}
!52 = !{!53, !42, i64 40}
!53 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !54, i64 8, !42, i64 16, !40, i64 24, !42, i64 32, !42, i64 40}
!54 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}

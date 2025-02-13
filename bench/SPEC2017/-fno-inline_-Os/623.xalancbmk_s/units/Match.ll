; ModuleID = 'Match.cpp'
source_filename = "Match.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Match" = type { ptr, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_75Match11getNoGroupsEv = comdat any

$_ZN11xercesc_2_75Match11setStartPosEii = comdat any

$_ZNK11xercesc_2_75Match11getStartPosEi = comdat any

$_ZN11xercesc_2_75Match9setEndPosEii = comdat any

$_ZNK11xercesc_2_75Match9getEndPosEi = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_75MatchE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_75MatchE, ptr @_ZN11xercesc_2_75MatchD2Ev, ptr @_ZN11xercesc_2_75MatchD0Ev] }, align 8
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75MatchD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_75MatchD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75MatchC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_75MatchE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75MatchC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_75MatchE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  tail call void @_ZN11xercesc_2_75Match10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75Match10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !39
  %6 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getNoGroupsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
  tail call void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %6) #7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %11 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %10) #7
  tail call void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %10, i32 noundef %11) #7
  %12 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %10) #7
  tail call void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %10, i32 noundef %12) #7
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %8, label %9, !llvm.loop !45
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_75MatchaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_75Match10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #7
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75MatchD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_75MatchE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_75Match7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75Match7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = load ptr, ptr %3, align 8, !tbaa !36
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #7
  %9 = load ptr, ptr %2, align 8, !tbaa !39
  %10 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = load ptr, ptr %9, align 8, !tbaa !36
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = icmp slt i32 %4, 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, %1
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_75Match7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  store i32 %1, ptr %6, align 4, !tbaa !50
  %11 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = sext i32 %1 to i64
  %14 = shl nsw i64 %13, 2
  %15 = load ptr, ptr %12, align 8, !tbaa !36
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14) #7
  %19 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !47
  %20 = load ptr, ptr %11, align 8, !tbaa !39
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %14) #7
  %25 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !48
  %26 = load i32, ptr %6, align 4, !tbaa !50
  br label %27

27:                                               ; preds = %2, %10
  %28 = phi i32 [ %7, %2 ], [ %26, %10 ]
  store i32 %1, ptr %3, align 8, !tbaa !49
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  br label %36

35:                                               ; preds = %36, %27
  ret void

36:                                               ; preds = %30, %36
  %37 = phi i64 [ 0, %30 ], [ %40, %36 ]
  %38 = getelementptr inbounds i32, ptr %32, i64 %37
  store i32 -1, ptr %38, align 4, !tbaa !51
  %39 = getelementptr inbounds i32, ptr %34, i64 %37
  store i32 -1, ptr %39, align 4, !tbaa !51
  %40 = add nuw nsw i64 %37, 1
  %41 = load i32, ptr %6, align 4, !tbaa !50
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %36, label %35, !llvm.loop !52
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match11getNoGroupsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !49
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 282, ptr noundef %8) #7
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 282, ptr noundef %10) #7
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
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
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 6, ptr noundef %23) #7
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !51
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #9
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 282, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
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
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 6, ptr noundef %22) #7
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !51
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #9
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 282, ptr noundef %10) #7
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
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
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 6, ptr noundef %23) #7
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !51
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #9
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 282, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
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
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 6, ptr noundef %22) #7
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !51
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #9
  resume { ptr, i32 } %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !43, i64 32}
!40 = !{!"_ZTSN11xercesc_2_75MatchE", !41, i64 8, !41, i64 12, !43, i64 16, !43, i64 24, !43, i64 32}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !38, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"function_entry_count", i64 5836268}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!40, !43, i64 16}
!48 = !{!40, !43, i64 24}
!49 = !{!40, !41, i64 8}
!50 = !{!40, !41, i64 12}
!51 = !{!41, !41, i64 0}
!52 = distinct !{!52, !46}
!53 = !{!54, !43, i64 40}
!54 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !55, i64 8, !43, i64 16, !41, i64 24, !43, i64 32, !43, i64 40}
!55 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}

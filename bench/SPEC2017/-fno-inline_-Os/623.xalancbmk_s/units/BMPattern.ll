; ModuleID = 'BMPattern.cpp'
source_filename = "BMPattern.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::BMPattern" = type { i8, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8

@_ZN11xercesc_2_79BMPatternC1EPKtbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr), ptr @_ZN11xercesc_2_79BMPatternC2EPKtbPNS_13MemoryManagerE
@_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i1, ptr), ptr @_ZN11xercesc_2_79BMPatternC2EPKtibPNS_13MemoryManagerE
@_ZN11xercesc_2_79BMPatternD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79BMPatternD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79BMPatternC2EPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %6, ptr %0, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  store i32 256, ptr %7, align 4, !tbaa !49
  %8 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79BMPattern7cleanUpEv to i64), i64 0) #9
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #9
          to label %12 unwind label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_79BMPattern10initializeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
          to label %24 unwind label %14

14:                                               ; preds = %12, %4
  %15 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %16 = extractvalue { ptr, i32 } %15, 1
  %17 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = extractvalue { ptr, i32 } %15, 0
  %21 = call ptr @__cxa_begin_catch(ptr %20) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9
  invoke void @__cxa_rethrow() #11
          to label %30 unwind label %22

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %27

24:                                               ; preds = %12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void

25:                                               ; preds = %22, %14
  %26 = phi { ptr, i32 } [ %15, %14 ], [ %23, %22 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  resume { ptr, i32 } %26

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #13
  unreachable

30:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !52 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79BMPattern7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) #0 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %3, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = load ptr, ptr %9, align 8, !tbaa !53
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #9
  %15 = load ptr, ptr %2, align 8, !tbaa !50
  %16 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = load ptr, ptr %15, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 comdat align 2 !prof !41 {
  store ptr %1, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !61

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #9
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !53
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79BMPattern10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 !prof !41 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %4) #9
  %6 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = load ptr, ptr %7, align 8, !tbaa !53
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %11) #9
  %16 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !56
  %17 = load i8, ptr %0, align 8, !tbaa !42, !range !62, !noundef !63
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr %3, align 8, !tbaa !51
  %21 = load ptr, ptr %6, align 8, !tbaa !50
  %22 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %21) #9
  %23 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !55
  %24 = load ptr, ptr %3, align 8, !tbaa !51
  %25 = load ptr, ptr %6, align 8, !tbaa !50
  %26 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %25) #9
  %27 = load ptr, ptr %23, align 8, !tbaa !55
  tail call void @_ZN11xercesc_2_79XMLString9upperCaseEPt(ptr noundef %27) #9
  tail call void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef %26) #9
  br label %28

28:                                               ; preds = %19, %1
  %29 = phi ptr [ %26, %19 ], [ null, %1 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %30 = load ptr, ptr %6, align 8, !tbaa !50
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %29, ptr noundef %30) #9
  %31 = load i32, ptr %8, align 4, !tbaa !49
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %16, align 8, !tbaa !56
  br label %44

35:                                               ; preds = %44, %28
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %3, align 8, !tbaa !51
  %39 = load ptr, ptr %16, align 8, !tbaa !56
  %40 = load i8, ptr %0, align 8, !tbaa !42, !range !62, !noundef !63
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %43 = zext i32 %5 to i64
  br label %52

44:                                               ; preds = %33, %44
  %45 = phi i64 [ 0, %33 ], [ %47, %44 ]
  %46 = getelementptr inbounds i32, ptr %34, i64 %45
  store i32 %5, ptr %46, align 4, !tbaa !64
  %47 = add nuw nsw i64 %45, 1
  %48 = load i32, ptr %8, align 4, !tbaa !49
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %44, label %35, !llvm.loop !65

51:                                               ; preds = %83, %35
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void

52:                                               ; preds = %37, %83
  %53 = phi i64 [ 0, %37 ], [ %84, %83 ]
  %54 = getelementptr inbounds i16, ptr %38, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !67
  %56 = trunc i64 %53 to i32
  %57 = xor i32 %56, -1
  %58 = add i32 %5, %57
  %59 = zext i16 %55 to i32
  %60 = load i32, ptr %8, align 4, !tbaa !49
  %61 = urem i32 %59, %60
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %39, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !64
  %65 = icmp slt i32 %58, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i32 %58, ptr %63, align 4, !tbaa !64
  br label %67

67:                                               ; preds = %66, %52
  br i1 %41, label %83, label %68

68:                                               ; preds = %67, %82
  %69 = phi i1 [ false, %82 ], [ true, %67 ]
  %70 = load ptr, ptr %42, align 8
  %71 = select i1 %69, ptr %70, ptr %29
  %72 = getelementptr inbounds i16, ptr %71, i64 %53
  %73 = load i16, ptr %72, align 2, !tbaa !67
  %74 = zext i16 %73 to i32
  %75 = load i32, ptr %8, align 4, !tbaa !49
  %76 = urem i32 %74, %75
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %39, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !64
  %80 = icmp slt i32 %58, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 %58, ptr %78, align 4, !tbaa !64
  br label %82

82:                                               ; preds = %68, %81
  br i1 %69, label %68, label %83, !llvm.loop !69

83:                                               ; preds = %82, %67
  %84 = add nuw nsw i64 %53, 1
  %85 = icmp eq i64 %84, %43
  br i1 %85, label %51, label %52, !llvm.loop !70
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !41 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !53
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !63
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(40) %11) #9
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !71 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !72

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !67
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !73

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !67
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !74, !llvm.loop !75

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79BMPatternC2EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %6 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %7 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %7, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  store i32 %2, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %4, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_79BMPattern7cleanUpEv to i64), i64 0) #9
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11) #9
          to label %13 unwind label %15

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  store ptr %12, ptr %14, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_79BMPattern10initializeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
          to label %25 unwind label %15

15:                                               ; preds = %13, %5
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %17 = extractvalue { ptr, i32 } %16, 1
  %18 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = extractvalue { ptr, i32 } %16, 0
  %22 = call ptr @__cxa_begin_catch(ptr %21) #10
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  invoke void @__cxa_rethrow() #11
          to label %31 unwind label %23

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %28

25:                                               ; preds = %13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret void

26:                                               ; preds = %23, %15
  %27 = phi { ptr, i32 } [ %16, %15 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  resume { ptr, i32 } %27

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #13
  unreachable

31:                                               ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79BMPatternD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  invoke void @_ZN11xercesc_2_79BMPattern7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !41 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %78, label %10

10:                                               ; preds = %4
  %11 = load i8, ptr %0, align 8, !tbaa !42, !range !62, !noundef !63
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %15) #9
  tail call void @_ZN11xercesc_2_79XMLString9upperCaseEPt(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %16, %13 ], [ null, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %19 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %18, ptr noundef %20) #9
  %21 = add i32 %8, %2
  %22 = icmp sgt i32 %21, %3
  br i1 %22, label %76, label %23

23:                                               ; preds = %17
  %24 = icmp sgt i32 %8, 0
  %25 = load ptr, ptr %6, align 8
  %26 = load i8, ptr %0, align 8, !range !62
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"class.xercesc_2_7::BMPattern", ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %8 to i64
  br label %35

35:                                               ; preds = %23, %62
  %36 = phi i32 [ %21, %23 ], [ %72, %62 ]
  %37 = add i32 %36, 1
  br i1 %24, label %38, label %62

38:                                               ; preds = %35
  %39 = sext i32 %36 to i64
  br label %40

40:                                               ; preds = %57, %38
  %41 = phi i64 [ %39, %38 ], [ %43, %57 ]
  %42 = phi i64 [ %34, %38 ], [ %46, %57 ]
  %43 = add nsw i64 %41, -1
  %44 = getelementptr inbounds i16, ptr %1, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !67
  %46 = add nsw i64 %42, -1
  %47 = getelementptr inbounds i16, ptr %25, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !67
  %49 = icmp eq i16 %45, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  br i1 %27, label %59, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds i16, ptr %29, i64 %46
  %53 = load i16, ptr %52, align 2, !tbaa !67
  %54 = getelementptr inbounds i16, ptr %18, i64 %43
  %55 = load i16, ptr %54, align 2, !tbaa !67
  %56 = icmp eq i16 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %40
  %58 = icmp eq i64 %46, 0
  br i1 %58, label %74, label %40, !llvm.loop !76

59:                                               ; preds = %51, %50
  %60 = trunc i64 %43 to i32
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %59, %35
  %63 = phi i32 [ %61, %59 ], [ %37, %35 ]
  %64 = phi i16 [ %45, %59 ], [ 0, %35 ]
  %65 = zext i16 %64 to i32
  %66 = urem i32 %65, %33
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %31, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !64
  %70 = add i32 %63, %69
  %71 = icmp sgt i32 %70, %36
  %72 = select i1 %71, i32 %70, i32 %37
  %73 = icmp sgt i32 %72, %3
  br i1 %73, label %76, label %35, !llvm.loop !77

74:                                               ; preds = %57
  %75 = trunc i64 %43 to i32
  br label %76

76:                                               ; preds = %62, %74, %17
  %77 = phi i32 [ -1, %17 ], [ %75, %74 ], [ -1, %62 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %78

78:                                               ; preds = %4, %76
  %79 = phi i32 [ %77, %76 ], [ %2, %4 ]
  ret i32 %79
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9upperCaseEPt(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !78 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !82 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !83

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !84

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !53
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #9
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !79
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !81
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(none) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN11xercesc_2_79BMPatternE", !44, i64 0, !47, i64 4, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32}
!44 = !{!"bool", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"int", !45, i64 0}
!48 = !{!"any pointer", !45, i64 0}
!49 = !{!43, !47, i64 4}
!50 = !{!43, !48, i64 32}
!51 = !{!43, !48, i64 16}
!52 = !{!"function_entry_count", i64 5836268}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !46, i64 0}
!55 = !{!43, !48, i64 24}
!56 = !{!43, !48, i64 8}
!57 = !{!58, !48, i64 0}
!58 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_9BMPatternEEE", !48, i64 0, !45, i64 8}
!59 = !{!58, !45, i64 8}
!60 = !{!"function_entry_count", i64 558789}
!61 = !{!"branch_weights", i32 158605, i32 400186}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!47, !47, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !45, i64 0}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = !{!"function_entry_count", i64 2453164456}
!72 = !{!"branch_weights", i32 1, i32 -1841802839}
!73 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!74 = !{!"branch_weights", i32 408669070, i32 -279908792}
!75 = distinct !{!75, !66}
!76 = distinct !{!76, !66}
!77 = distinct !{!77, !66}
!78 = !{!"function_entry_count", i64 52059}
!79 = !{!80, !48, i64 0}
!80 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !48, i64 0, !48, i64 8}
!81 = !{!80, !48, i64 8}
!82 = !{!"function_entry_count", i64 243874}
!83 = !{!"branch_weights", i32 191816, i32 52060}
!84 = !{!"branch_weights", i32 1, i32 52060}

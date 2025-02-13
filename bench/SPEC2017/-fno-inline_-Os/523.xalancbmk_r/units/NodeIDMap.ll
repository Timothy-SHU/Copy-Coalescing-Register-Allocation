; ModuleID = 'NodeIDMap.cpp'
source_filename = "NodeIDMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NodeIDMap" = type { ptr, ptr, i32, i32, i32, i32, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN11xercesc_2_79NodeIDMapE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79NodeIDMapE, ptr @_ZN11xercesc_2_79NodeIDMapD2Ev, ptr @_ZN11xercesc_2_79NodeIDMapD0Ev] }, align 8
@_ZN11xercesc_2_7L7gPrimesE = internal unnamed_addr constant [5 x i32] [i32 997, i32 9973, i32 99991, i32 999983, i32 0], align 16
@.str = private unnamed_addr constant [14 x i8] c"NodeIDMap.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79NodeIDMapE = dso_local constant [26 x i8] c"N11xercesc_2_79NodeIDMapE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_79NodeIDMapE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79NodeIDMapE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_79NodeIDMapC2EiPNS_13MemoryManagerE
@_ZN11xercesc_2_79NodeIDMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79NodeIDMapD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMapC2EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_79NodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  store ptr %2, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 2
  %6 = icmp sgt i32 %1, 997
  br i1 %6, label %7, label %23

7:                                                ; preds = %3, %16
  %8 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  store i32 3, ptr %5, align 8, !tbaa !43
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 376, ptr noundef %12) #6
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #7
  resume { ptr, i32 } %15

16:                                               ; preds = %7
  %17 = add nuw nsw i64 %8, 1
  %18 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !44
  %20 = icmp slt i32 %19, %1
  br i1 %20, label %7, label %21, !llvm.loop !45

21:                                               ; preds = %16
  %22 = trunc i64 %17 to i32
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %25 = phi i32 [ 997, %3 ], [ %19, %21 ]
  store i32 %24, ptr %5, align 8, !tbaa !43
  %26 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  store i32 %25, ptr %26, align 4, !tbaa !47
  %27 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 4
  store i32 0, ptr %27, align 8, !tbaa !48
  %28 = uitofp i32 %25 to float
  %29 = fmul float %28, 0x3FE99999A0000000
  %30 = fptoui float %29 to i64
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 4, !tbaa !49
  %33 = zext i32 %25 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = load ptr, ptr %2, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %34) #6
  %39 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !50
  %40 = load i32, ptr %26, align 4, !tbaa !47
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %23
  %43 = zext i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %48, %44 ]
  %46 = load ptr, ptr %39, align 8, !tbaa !50
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  store ptr null, ptr %47, align 8, !tbaa !51
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, %43
  br i1 %49, label %50, label %44, !llvm.loop !52

50:                                               ; preds = %44, %23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !53 {
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #6
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMapD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_79NodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #6
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #10
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMapD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_79NodeIDMapD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79NodeIDMap9growTableEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %10 = load i32, ptr %4, align 8, !tbaa !48
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %5, %2 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %14 = load ptr, ptr %1, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 49
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  %17 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %18 unwind label %38

18:                                               ; preds = %11
  %19 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %20 unwind label %38

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !47
  %23 = add i32 %22, -1
  %24 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = invoke noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %17, i32 noundef %19, i32 noundef %23, ptr noundef %25) #6
          to label %27 unwind label %38

27:                                               ; preds = %20
  %28 = add i32 %26, 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = load i32, ptr %21, align 4
  br label %32

32:                                               ; preds = %43, %27
  %33 = phi i32 [ %28, %27 ], [ %44, %43 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %30, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = ptrtoint ptr %36 to i64
  switch i64 %37, label %40 [
    i64 -1, label %47
    i64 0, label %47
  ]

38:                                               ; preds = %20, %18, %11
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %39

40:                                               ; preds = %32
  %41 = add i32 %33, %28
  %42 = icmp ult i32 %41, %31
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %45
  %44 = phi i32 [ %46, %45 ], [ %41, %40 ]
  br label %32

45:                                               ; preds = %40
  %46 = urem i32 %41, %31
  br label %43

47:                                               ; preds = %32, %32
  %48 = getelementptr inbounds ptr, ptr %30, i64 %34
  store ptr %1, ptr %48, align 8, !tbaa !51
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMap9growTableEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !43
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !44
  store i32 %11, ptr %4, align 4, !tbaa !47
  %12 = icmp eq i32 %8, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  store i32 %7, ptr %6, align 8, !tbaa !43
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %15 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 376, ptr noundef %16) #6
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #7
  resume { ptr, i32 } %19

20:                                               ; preds = %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = zext i32 %11 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = load ptr, ptr %22, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %24) #6
  store ptr %28, ptr %2, align 8, !tbaa !50
  %29 = load i32, ptr %4, align 4, !tbaa !47
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = zext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %37, %33 ]
  %35 = load ptr, ptr %2, align 8, !tbaa !50
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr null, ptr %36, align 8, !tbaa !51
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !54

39:                                               ; preds = %33, %20
  %40 = uitofp i32 %29 to float
  %41 = fmul float %40, 0x3FE99999A0000000
  %42 = fptoui float %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 5
  store i32 %43, ptr %44, align 4, !tbaa !49
  %45 = icmp eq i32 %5, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %39
  %47 = zext i32 %5 to i64
  br label %48

48:                                               ; preds = %46, %54
  %49 = phi i64 [ 0, %46 ], [ %55, %54 ]
  %50 = getelementptr inbounds ptr, ptr %3, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = ptrtoint ptr %51 to i64
  switch i64 %52, label %53 [
    i64 0, label %54
    i64 -1, label %54
  ]

53:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %51) #6
  br label %54

54:                                               ; preds = %48, %48, %53
  %55 = add nuw nsw i64 %49, 1
  %56 = icmp eq i64 %55, %47
  br i1 %56, label %57, label %48, !llvm.loop !55

57:                                               ; preds = %54, %39
  %58 = load ptr, ptr %21, align 8, !tbaa !38
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %3) #6
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 49
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  %7 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %8 unwind label %28

8:                                                ; preds = %2
  %9 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %10 unwind label %28

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = add i32 %12, -1
  %14 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = invoke noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %7, i32 noundef %9, i32 noundef %13, ptr noundef %15) #6
          to label %17 unwind label %28

17:                                               ; preds = %10
  %18 = add i32 %16, 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %11, align 4
  %27 = icmp eq ptr %23, %1
  br i1 %27, label %32, label %35

28:                                               ; preds = %10, %8, %2
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %29

30:                                               ; preds = %41
  %31 = icmp eq ptr %45, %1
  br i1 %31, label %32, label %35, !llvm.loop !56

32:                                               ; preds = %30, %25
  %33 = phi i64 [ %21, %25 ], [ %43, %30 ]
  %34 = getelementptr inbounds ptr, ptr %20, i64 %33
  store ptr inttoptr (i64 -1 to ptr), ptr %34, align 8, !tbaa !51
  br label %47

35:                                               ; preds = %25, %30
  %36 = phi i32 [ %42, %30 ], [ %18, %25 ]
  %37 = add i32 %36, %18
  %38 = icmp ult i32 %37, %26
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = urem i32 %37, %26
  br label %41

41:                                               ; preds = %35, %39
  %42 = phi i32 [ %40, %39 ], [ %37, %35 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %20, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %30, !llvm.loop !56

47:                                               ; preds = %41, %17, %32
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79NodeIDMap4findERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %4, i32 noundef %5, i32 noundef %8, ptr noundef %10) #6
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %33, %2
  %15 = phi i32 [ %12, %2 ], [ %34, %33 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !50
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = ptrtoint ptr %19 to i64
  switch i64 %20, label %21 [
    i64 0, label %37
    i64 -1, label %29
  ]

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %22 = load ptr, ptr %19, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 49
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %19) #6
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %26 unwind label %27

26:                                               ; preds = %21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br i1 %25, label %37, label %29

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %28

29:                                               ; preds = %14, %26
  %30 = add i32 %15, %12
  %31 = load i32, ptr %6, align 4, !tbaa !47
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %35
  %34 = phi i32 [ %36, %35 ], [ %30, %29 ]
  br label %14, !llvm.loop !57

35:                                               ; preds = %29
  %36 = urem i32 %30, %31
  br label %33

37:                                               ; preds = %14, %26
  ret ptr %19
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 32}
!39 = !{!"_ZTSN11xercesc_2_79NodeIDMapE", !40, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!39, !42, i64 16}
!44 = !{!42, !42, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!39, !42, i64 20}
!48 = !{!39, !42, i64 24}
!49 = !{!39, !42, i64 28}
!50 = !{!39, !40, i64 8}
!51 = !{!40, !40, i64 0}
!52 = distinct !{!52, !46}
!53 = !{!"function_entry_count", i64 5836268}
!54 = distinct !{!54, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = distinct !{!57, !46}
!58 = !{!59, !40, i64 40}
!59 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !60, i64 8, !40, i64 16, !42, i64 24, !40, i64 32, !40, i64 40}
!60 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}

; ModuleID = 'NodeIDMap.cpp'
source_filename = "NodeIDMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NodeIDMap" = type { ptr, ptr, i32, i32, i32, i32, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMapC2EiPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
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
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 376, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #6
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
  store i32 %25, ptr %26, align 4, !tbaa !48
  %27 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 4
  store i32 0, ptr %27, align 8, !tbaa !49
  %28 = uitofp i32 %25 to float
  %29 = fmul float %28, 0x3FE99999A0000000
  %30 = fptoui float %29 to i64
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 5
  store i32 %31, ptr %32, align 4, !tbaa !50
  %33 = zext i32 %25 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = load ptr, ptr %2, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %34)
  %39 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !51
  %40 = load i32, ptr %26, align 4, !tbaa !48
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %23
  %43 = zext i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %48, %44 ]
  %46 = load ptr, ptr %39, align 8, !tbaa !51
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  store ptr null, ptr %47, align 8, !tbaa !52
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, %43
  br i1 %49, label %50, label %44, !llvm.loop !53

50:                                               ; preds = %44, %23
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMapD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_79NodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #8
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMapD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_79NodeIDMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #8
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79NodeIDMap9growTableEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, ptr %4, align 8, !tbaa !49
  %12 = add i32 %11, 1
  store i32 %12, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %13 = load ptr, ptr %1, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 49
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %16 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %37

17:                                               ; preds = %10
  %18 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %19 unwind label %37

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = add i32 %21, -1
  %23 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = invoke noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %16, i32 noundef %18, i32 noundef %22, ptr noundef %24)
          to label %26 unwind label %37

26:                                               ; preds = %19
  %27 = add i32 %25, 1
  %28 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = load i32, ptr %20, align 4
  br label %31

31:                                               ; preds = %44, %26
  %32 = phi i32 [ %27, %26 ], [ %45, %44 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = ptrtoint ptr %35 to i64
  switch i64 %36, label %39 [
    i64 -1, label %44
    i64 0, label %44
  ]

37:                                               ; preds = %19, %17, %10
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  %40 = add i32 %32, %27
  %41 = icmp ult i32 %40, %30
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = urem i32 %40, %30
  br label %44

44:                                               ; preds = %31, %31, %39, %42
  %45 = phi i32 [ %43, %42 ], [ %40, %39 ], [ %32, %31 ], [ %32, %31 ]
  %46 = phi i1 [ true, %42 ], [ true, %39 ], [ false, %31 ], [ false, %31 ]
  br i1 %46, label %31, label %47

47:                                               ; preds = %44
  %48 = zext i32 %45 to i64
  %49 = getelementptr inbounds ptr, ptr %29, i64 %48
  store ptr %1, ptr %49, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMap9growTableEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !43
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [5 x i32], ptr @_ZN11xercesc_2_7L7gPrimesE, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !44
  store i32 %11, ptr %4, align 4, !tbaa !48
  %12 = icmp eq i32 %8, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  store i32 %7, ptr %6, align 8, !tbaa !43
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  %15 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 376, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #6
  resume { ptr, i32 } %19

20:                                               ; preds = %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = zext i32 %11 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = load ptr, ptr %22, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %24)
  store ptr %28, ptr %2, align 8, !tbaa !51
  %29 = load i32, ptr %4, align 4, !tbaa !48
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = zext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %37, %33 ]
  %35 = load ptr, ptr %2, align 8, !tbaa !51
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr null, ptr %36, align 8, !tbaa !52
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !54

39:                                               ; preds = %33, %20
  %40 = uitofp i32 %29 to float
  %41 = fmul float %40, 0x3FE99999A0000000
  %42 = fptoui float %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 5
  store i32 %43, ptr %44, align 4, !tbaa !50
  %45 = icmp eq i32 %5, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %39
  %47 = zext i32 %5 to i64
  br label %48

48:                                               ; preds = %46, %54
  %49 = phi i64 [ 0, %46 ], [ %55, %54 ]
  %50 = getelementptr inbounds ptr, ptr %3, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = ptrtoint ptr %51 to i64
  switch i64 %52, label %53 [
    i64 0, label %54
    i64 -1, label %54
  ]

53:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %51)
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
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %3)
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 49
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %7 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %28

8:                                                ; preds = %2
  %9 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %28

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = add i32 %12, -1
  %14 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = invoke noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %7, i32 noundef %9, i32 noundef %13, ptr noundef %15)
          to label %17 unwind label %28

17:                                               ; preds = %10
  %18 = add i32 %16, 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  %20 = load i32, ptr %11, align 4
  br label %21

21:                                               ; preds = %38, %17
  %22 = phi i32 [ %18, %17 ], [ %39, %38 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !51
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %30

28:                                               ; preds = %10, %8, %2
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  resume { ptr, i32 } %29

30:                                               ; preds = %21
  %31 = icmp eq ptr %26, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store ptr inttoptr (i64 -1 to ptr), ptr %25, align 8, !tbaa !52
  br label %38

33:                                               ; preds = %30
  %34 = add i32 %22, %18
  %35 = icmp ult i32 %34, %20
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = urem i32 %34, %20
  br label %38

38:                                               ; preds = %21, %33, %36, %32
  %39 = phi i32 [ %22, %32 ], [ %37, %36 ], [ %34, %33 ], [ %22, %21 ]
  %40 = phi i1 [ false, %32 ], [ true, %36 ], [ true, %33 ], [ false, %21 ]
  br i1 %40, label %21, label %41, !llvm.loop !56

41:                                               ; preds = %38
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79NodeIDMap4findERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString5hashNEPKtjjPNS_13MemoryManagerE(ptr noundef %4, i32 noundef %5, i32 noundef %8, ptr noundef %10)
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeIDMap", ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %41, %2
  %15 = phi i32 [ %12, %2 ], [ %42, %41 ]
  %16 = phi ptr [ undef, %2 ], [ %44, %41 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !51
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %14
  %23 = icmp eq ptr %20, inttoptr (i64 -1 to ptr)
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %25 = load ptr, ptr %20, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 49
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %20)
  %28 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %29 unwind label %33

29:                                               ; preds = %24, %22
  %30 = phi i1 [ %28, %24 ], [ false, %22 ]
  br i1 %23, label %32, label %31

31:                                               ; preds = %29
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %32

32:                                               ; preds = %29, %31
  br i1 %30, label %41, label %35

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  resume { ptr, i32 } %34

35:                                               ; preds = %32
  %36 = add i32 %15, %12
  %37 = load i32, ptr %6, align 4, !tbaa !48
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = urem i32 %36, %37
  br label %41

41:                                               ; preds = %14, %35, %39, %32
  %42 = phi i32 [ %15, %32 ], [ %40, %39 ], [ %36, %35 ], [ %15, %14 ]
  %43 = phi i1 [ false, %32 ], [ true, %39 ], [ true, %35 ], [ false, %14 ]
  %44 = phi ptr [ %20, %32 ], [ %16, %39 ], [ %16, %35 ], [ null, %14 ]
  br i1 %43, label %14, label %45, !llvm.loop !57

45:                                               ; preds = %41
  ret ptr %44
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { noreturn nounwind }

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
!38 = !{!39, !40, i64 32}
!39 = !{!"_ZTSN11xercesc_2_79NodeIDMapE", !40, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!39, !42, i64 16}
!44 = !{!42, !42, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!39, !42, i64 20}
!49 = !{!39, !42, i64 24}
!50 = !{!39, !42, i64 28}
!51 = !{!39, !40, i64 8}
!52 = !{!40, !40, i64 0}
!53 = distinct !{!53, !46, !47}
!54 = distinct !{!54, !46, !47}
!55 = distinct !{!55, !46, !47}
!56 = distinct !{!56, !46, !47}
!57 = distinct !{!57, !46, !47}
!58 = !{!59, !40, i64 40}
!59 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !60, i64 8, !40, i64 16, !42, i64 24, !40, i64 32, !40, i64 40}
!60 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}

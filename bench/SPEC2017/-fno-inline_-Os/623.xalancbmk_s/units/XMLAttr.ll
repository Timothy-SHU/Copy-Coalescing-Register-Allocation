; ModuleID = 'XMLAttr.cpp'
source_filename = "XMLAttr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

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

@_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_77XMLAttrC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, i32, i1, ptr, ptr, i1), ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb
@_ZN11xercesc_2_77XMLAttrC1EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr, i32, i1, ptr, ptr, i1), ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttrC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 0, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !56
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 0, ptr %8, align 8, !tbaa !60
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %1) #9
  %10 = load ptr, ptr %6, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %10) #9
          to label %11 unwind label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  store ptr %9, ptr %12, align 8, !tbaa !61
  ret void

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %1) #10
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %11 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %12 = zext i1 %6 to i8
  %13 = zext i1 %9 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %12, ptr %0, align 8, !tbaa !48
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %5, ptr %14, align 4, !tbaa !56
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store ptr %7, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %8, ptr %19, align 8, !tbaa !59
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %13, ptr %20, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv to i64), i64 0) #9
  %21 = load ptr, ptr %18, align 8, !tbaa !58
  %22 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %21) #9
          to label %23 unwind label %26

23:                                               ; preds = %10
  %24 = load ptr, ptr %18, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef %3, ptr noundef %2, i32 noundef %1, ptr noundef %24) #9
          to label %25 unwind label %28

25:                                               ; preds = %23
  store ptr %22, ptr %17, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %4) #9
          to label %40 unwind label %26

26:                                               ; preds = %25, %10
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %30

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #10
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = call ptr @__cxa_begin_catch(ptr %36) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9
  invoke void @__cxa_rethrow() #12
          to label %46 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %41 unwind label %43

40:                                               ; preds = %25
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  ret void

41:                                               ; preds = %38, %30
  %42 = phi { ptr, i32 } [ %31, %30 ], [ %39, %38 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  resume { ptr, i32 } %42

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #13
  unreachable

46:                                               ; preds = %35
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) #0 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !64
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = load ptr, ptr %11, align 8, !tbaa !64
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #1 comdat align 2 !prof !63 {
  store ptr %1, ptr %0, align 8, !tbaa !67
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !70 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  %7 = icmp ugt i32 %3, %5
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9, !prof !71

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  br label %29

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = load ptr, ptr %14, align 8, !tbaa !64
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16) #9
  %20 = add i32 %3, 8
  store i32 %20, ptr %4, align 8, !tbaa !57
  %21 = load ptr, ptr %13, align 8, !tbaa !58
  %22 = add i32 %3, 9
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = load ptr, ptr %21, align 8, !tbaa !64
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %24) #9
  store ptr %28, ptr %15, align 8, !tbaa !66
  br label %29

29:                                               ; preds = %9, %12
  %30 = phi ptr [ %11, %9 ], [ %28, %12 ]
  %31 = add i32 %3, 1
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %30, ptr noundef %1, i32 noundef %31) #9
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !72

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !69
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !64
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !73
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(49) %11) #9
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %10 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %11 = zext i1 %5 to i8
  %12 = zext i1 %8 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i8 %11, ptr %0, align 8, !tbaa !48
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  store i32 %4, ptr %13, align 4, !tbaa !56
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store ptr %6, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 8
  store ptr %7, ptr %18, align 8, !tbaa !59
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 9
  store i8 %12, ptr %19, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv to i64), i64 0) #9
  %20 = load ptr, ptr %17, align 8, !tbaa !58
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %20) #9
          to label %22 unwind label %25

22:                                               ; preds = %9
  %23 = load ptr, ptr %17, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef %2, i32 noundef %1, ptr noundef %23) #9
          to label %24 unwind label %27

24:                                               ; preds = %22
  store ptr %21, ptr %16, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %3) #9
          to label %39 unwind label %25

25:                                               ; preds = %24, %9
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %29

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #10
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %26, %25 ], [ %28, %27 ]
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = call ptr @__cxa_begin_catch(ptr %35) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #9
  invoke void @__cxa_rethrow() #12
          to label %45 unwind label %37

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %40 unwind label %42

39:                                               ; preds = %24
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #9
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  ret void

40:                                               ; preds = %37, %29
  %41 = phi { ptr, i32 } [ %30, %29 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  resume { ptr, i32 } %41

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #13
  unreachable

45:                                               ; preds = %34
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #0 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr7setNameEjPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !47 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %3, ptr noundef %2, i32 noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !80

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !81
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !83

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !81
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !84, !llvm.loop !85

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!46}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!36 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!37 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEEC2EPS1_MS1_FvvE, i64 10}
!38 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!39 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 10}
!40 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 10}
!41 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEE7releaseEv, i64 10}
!42 = !{ptr @_ZN11xercesc_2_77XMLAttrC2EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEED2Ev, i64 10}
!43 = !{ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 202007}
!44 = !{ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, ptr @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj, i64 202007}
!45 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 604058}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !50, i64 0, !53, i64 4, !54, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !50, i64 48}
!50 = !{!"bool", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !51, i64 0}
!54 = !{!"int", !51, i64 0}
!55 = !{!"any pointer", !51, i64 0}
!56 = !{!49, !53, i64 4}
!57 = !{!49, !54, i64 8}
!58 = !{!49, !55, i64 32}
!59 = !{!49, !55, i64 40}
!60 = !{!49, !50, i64 48}
!61 = !{!49, !55, i64 24}
!62 = !{!"function_entry_count", i64 5836268}
!63 = !{!"function_entry_count", i64 10}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !52, i64 0}
!66 = !{!49, !55, i64 16}
!67 = !{!68, !55, i64 0}
!68 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_7XMLAttrEEE", !55, i64 0, !51, i64 8}
!69 = !{!68, !51, i64 8}
!70 = !{!"function_entry_count", i64 202007}
!71 = !{!"branch_weights", i32 239873, i32 -1744856170}
!72 = !{!"branch_weights", i32 11, i32 1}
!73 = !{}
!74 = !{!"function_entry_count", i64 604058}
!75 = !{!"function_entry_count", i64 76}
!76 = !{!77, !54, i64 20}
!77 = !{!"_ZTSN11xercesc_2_75QNameE", !78, i64 0, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48}
!78 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!79 = !{!"function_entry_count", i64 2453164456}
!80 = !{!"branch_weights", i32 1, i32 -1841802839}
!81 = !{!82, !82, i64 0}
!82 = !{!"short", !51, i64 0}
!83 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!84 = !{!"branch_weights", i32 408669070, i32 -279908792}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"function_entry_count", i64 2499163}

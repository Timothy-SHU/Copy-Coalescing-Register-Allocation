; ModuleID = 'DeepNodeListImpl.cpp'
source_filename = "DeepNodeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DeepNodeListImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, %"class.xercesc_2_7::DOMString", i8, [3 x i8], i32, ptr, %"class.xercesc_2_7::DOMString", i8, i8, [6 x i8] }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

@_ZN11xercesc_2_7L12kAstrCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_716DeepNodeListImplE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716DeepNodeListImplE, ptr @_ZN11xercesc_2_716DeepNodeListImplD2Ev, ptr @_ZN11xercesc_2_716DeepNodeListImplD0Ev, ptr @_ZN11xercesc_2_714RefCountedImpl10referencedEv, ptr @_ZN11xercesc_2_716DeepNodeListImpl12unreferencedEv, ptr @_ZN11xercesc_2_716DeepNodeListImpl4itemEj, ptr @_ZN11xercesc_2_716DeepNodeListImpl9getLengthEv, ptr @_ZN11xercesc_2_716DeepNodeListImpl24nextMatchingElementAfterEPNS_8NodeImplE] }, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@_ZN11xercesc_2_7L5kAstrE = internal global ptr null, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716DeepNodeListImplE = dso_local constant [34 x i8] c"N11xercesc_2_716DeepNodeListImplE\00", align 1
@_ZTIN11xercesc_2_712NodeListImplE = external constant ptr
@_ZTIN11xercesc_2_716DeepNodeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716DeepNodeListImplE, ptr @_ZTIN11xercesc_2_712NodeListImplE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DeepNodeListImpl.cpp, ptr null }]

@_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DeepNodeListImplC2EPNS_8NodeImplERKNS_9DOMStringE
@_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DeepNodeListImplC2EPNS_8NodeImplERKNS_9DOMStringES5_
@_ZN11xercesc_2_716DeepNodeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716DeepNodeListImplD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplC2EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716DeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
          to label %5 unwind label %32

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %7 unwind label %34

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 6
  store i32 0, ptr %8, align 4, !tbaa !38
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !47
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
          to label %11 unwind label %36

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 46
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(26) %1) #6
          to label %16 unwind label %38

16:                                               ; preds = %11
  %17 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %15) #6
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %17) #6
          to label %19 unwind label %38

19:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef %17) #6
          to label %20 unwind label %40

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  store ptr %18, ptr %21, align 8, !tbaa !48
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE, ptr noundef nonnull @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE) #6
          to label %23 unwind label %38

23:                                               ; preds = %20
  %24 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %22) #6
          to label %25 unwind label %38

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  %27 = zext i1 %24 to i8
  store i8 %27, ptr %26, align 8, !tbaa !49
  %28 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #6
          to label %29 unwind label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %30, align 8, !tbaa !50
  %31 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 10
  store i8 0, ptr %31, align 1, !tbaa !51
  ret void

32:                                               ; preds = %3
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %46

34:                                               ; preds = %5
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %44

36:                                               ; preds = %7
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %42

38:                                               ; preds = %25, %23, %20, %16, %11
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %19
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #7
  br label %42

42:                                               ; preds = %38, %40, %36
  %43 = phi { ptr, i32 } [ %37, %36 ], [ %39, %38 ], [ %41, %40 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %35, %34 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %33, %32 ]
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %47
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv() #4 align 2 !prof !34 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L5kAstrE, align 8, !tbaa !58
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #7
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L5kAstrE, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplC2EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716DeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
          to label %6 unwind label %38

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %8 unwind label %40

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 6
  store i32 0, ptr %9, align 4, !tbaa !38
  %10 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !47
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %12 unwind label %42

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 46
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %1) #6
          to label %17 unwind label %44

17:                                               ; preds = %12
  %18 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %16) #6
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %18) #6
          to label %20 unwind label %44

20:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %18) #6
          to label %21 unwind label %46

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  store ptr %19, ptr %22, align 8, !tbaa !48
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE, ptr noundef nonnull @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE) #6
          to label %24 unwind label %44

24:                                               ; preds = %21
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %23) #6
          to label %26 unwind label %44

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  %28 = zext i1 %25 to i8
  store i8 %28, ptr %27, align 8, !tbaa !49
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
          to label %30 unwind label %44

30:                                               ; preds = %26
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE, ptr noundef nonnull @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE) #6
          to label %32 unwind label %44

32:                                               ; preds = %30
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %31) #6
          to label %34 unwind label %44

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 9
  %36 = zext i1 %33 to i8
  store i8 %36, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 10
  store i8 1, ptr %37, align 1, !tbaa !51
  ret void

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %52

40:                                               ; preds = %6
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %50

42:                                               ; preds = %8
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %48

44:                                               ; preds = %32, %30, %26, %24, %21, %17, %12
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %20
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #7
  br label %48

48:                                               ; preds = %44, %46, %42
  %49 = phi { ptr, i32 } [ %43, %42 ], [ %45, %44 ], [ %47, %46 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %41, %40 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %39, %38 ]
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716DeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_716DeepNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716DeepNodeListImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #2 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef 2147483647) #6
  %6 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #6
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DeepNodeListImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(26) %4) #6
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_710NodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #6
  %15 = load ptr, ptr %3, align 8, !tbaa !47
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 15
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(26) %15) #6
  store i32 %19, ptr %9, align 4, !tbaa !38
  br label %20

20:                                               ; preds = %12, %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %22) #6
  %24 = icmp ugt i32 %23, %1
  %25 = load ptr, ptr %21, align 8, !tbaa !48
  br i1 %24, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef %1) #6
  br label %55

28:                                               ; preds = %20
  %29 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %25) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !tbaa !47
  br label %36

33:                                               ; preds = %28
  %34 = load ptr, ptr %21, align 8, !tbaa !48
  %35 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector11lastElementEv(ptr noundef nonnull align 8 dereferenceable(24) %34) #6
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %32, %31 ], [ %35, %33 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %21, align 8, !tbaa !48
  %41 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %40) #6
  %42 = icmp ugt i32 %41, %1
  br i1 %42, label %55, label %43

43:                                               ; preds = %39, %50
  %44 = phi ptr [ %48, %50 ], [ %37, %39 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 6
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull %44) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %21, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull %48) #6
  %52 = load ptr, ptr %21, align 8, !tbaa !48
  %53 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %52) #6
  %54 = icmp ugt i32 %53, %1
  br i1 %54, label %55, label %43

55:                                               ; preds = %50, %43, %39, %36, %26
  %56 = phi ptr [ %27, %26 ], [ null, %36 ], [ %37, %39 ], [ null, %43 ], [ %48, %50 ]
  ret ptr %56
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710NodeVector11lastElementEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DeepNodeListImpl24nextMatchingElementAfterEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %102, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %7, %100
  %13 = phi ptr [ %1, %7 ], [ %52, %100 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 30
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(26) %13) #6
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %13) #6
  br label %51

23:                                               ; preds = %12
  %24 = load ptr, ptr %8, align 8, !tbaa !47
  %25 = icmp eq ptr %13, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %13, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 22
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(26) %13) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !tbaa !47
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi ptr [ %33, %32 ], [ %13, %23 ]
  %36 = icmp eq ptr %13, %35
  br i1 %36, label %102, label %37

37:                                               ; preds = %34, %44
  %38 = phi ptr [ %48, %44 ], [ %13, %34 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 22
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(26) %38) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 27
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(26) %38) #6
  %49 = load ptr, ptr %8, align 8, !tbaa !47
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %102, label %37, !llvm.loop !59

51:                                               ; preds = %37, %26, %18
  %52 = phi ptr [ %22, %18 ], [ %30, %26 ], [ %42, %37 ]
  %53 = icmp eq ptr %52, null
  %54 = load ptr, ptr %8, align 8
  %55 = icmp eq ptr %52, %54
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %100, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %52, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 11
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef zeroext i1 %60(ptr noundef nonnull align 8 dereferenceable(26) %52) #6
  br i1 %61, label %62, label %100

62:                                               ; preds = %57
  %63 = load i8, ptr %9, align 1, !tbaa !51, !range !61, !noundef !62
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i8, ptr %10, align 8, !tbaa !49, !range !61, !noundef !62
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %69 = load ptr, ptr %52, align 8, !tbaa !35
  %70 = getelementptr inbounds ptr, ptr %69, i64 50
  %71 = load ptr, ptr %70, align 8
  call void %71(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %52) #6
  %72 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %73 unwind label %74

73:                                               ; preds = %68
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br i1 %72, label %102, label %100

74:                                               ; preds = %68
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %104

76:                                               ; preds = %62
  %77 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 9
  %78 = load i8, ptr %77, align 8, !tbaa !50, !range !61, !noundef !62
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %82 = load ptr, ptr %52, align 8, !tbaa !35
  %83 = getelementptr inbounds ptr, ptr %82, i64 40
  %84 = load ptr, ptr %83, align 8
  call void %84(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %52) #6
  %85 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %81) #6
          to label %86 unwind label %87

86:                                               ; preds = %80
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %85, label %89, label %100

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %104

89:                                               ; preds = %76, %86
  %90 = load i8, ptr %10, align 8, !tbaa !49, !range !61, !noundef !62
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %93 = load ptr, ptr %52, align 8, !tbaa !35
  %94 = getelementptr inbounds ptr, ptr %93, i64 42
  %95 = load ptr, ptr %94, align 8
  call void %95(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %52) #6
  %96 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %97 unwind label %98

97:                                               ; preds = %92
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br i1 %96, label %102, label %100

98:                                               ; preds = %92
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %104

100:                                              ; preds = %51, %57, %97, %73, %86
  %101 = icmp eq ptr %52, null
  br i1 %101, label %102, label %12, !llvm.loop !63

102:                                              ; preds = %34, %73, %97, %100, %65, %89, %44, %2
  %103 = phi ptr [ null, %2 ], [ null, %44 ], [ null, %34 ], [ %52, %89 ], [ %52, %65 ], [ null, %100 ], [ %52, %97 ], [ %52, %73 ]
  ret ptr %103

104:                                              ; preds = %98, %87, %74
  %105 = phi { ptr, i32 } [ %99, %98 ], [ %88, %87 ], [ %75, %74 ]
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(58) %0) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DeepNodeListImpl.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

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
!38 = !{!39, !42, i64 36}
!39 = !{!"_ZTSN11xercesc_2_716DeepNodeListImplE", !40, i64 0, !44, i64 16, !45, i64 24, !46, i64 32, !42, i64 36, !44, i64 40, !45, i64 48, !46, i64 56, !46, i64 57}
!40 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !41, i64 0}
!41 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !42, i64 8}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"any pointer", !43, i64 0}
!45 = !{!"_ZTSN11xercesc_2_79DOMStringE", !44, i64 0}
!46 = !{!"bool", !43, i64 0}
!47 = !{!39, !44, i64 16}
!48 = !{!39, !44, i64 40}
!49 = !{!39, !46, i64 32}
!50 = !{!39, !46, i64 56}
!51 = !{!39, !46, i64 57}
!52 = !{!53, !44, i64 160}
!53 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !54, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !42, i64 152, !46, i64 156, !44, i64 160}
!54 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !55, i64 0, !44, i64 48, !44, i64 56, !42, i64 64, !44, i64 72, !42, i64 80}
!55 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !56, i64 0, !44, i64 32, !44, i64 40}
!56 = !{!"_ZTSN11xercesc_2_78NodeImplE", !40, i64 0, !44, i64 16, !57, i64 24}
!57 = !{!"short", !43, i64 0}
!58 = !{!44, !44, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, !60}

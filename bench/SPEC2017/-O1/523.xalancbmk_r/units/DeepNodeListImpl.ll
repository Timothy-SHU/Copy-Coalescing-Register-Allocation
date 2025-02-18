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

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplC2EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716DeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %5 unwind label %33

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %35

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 6
  store i32 0, ptr %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !50
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %11 unwind label %37

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 46
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %16 unwind label %39

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %15, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %18)
          to label %20 unwind label %39

20:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %18)
          to label %21 unwind label %41

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  store ptr %19, ptr %22, align 8, !tbaa !57
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE, ptr noundef nonnull @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE)
          to label %24 unwind label %39

24:                                               ; preds = %21
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %26 unwind label %39

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  %28 = zext i1 %25 to i8
  store i8 %28, ptr %27, align 8, !tbaa !58
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %30 unwind label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %31, align 8, !tbaa !59
  %32 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 10
  store i8 0, ptr %32, align 1, !tbaa !60
  ret void

33:                                               ; preds = %3
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %47

35:                                               ; preds = %5
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %45

37:                                               ; preds = %7
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %43

39:                                               ; preds = %26, %24, %21, %16, %11
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %43

41:                                               ; preds = %20
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #6
  br label %43

43:                                               ; preds = %39, %41, %37
  %44 = phi { ptr, i32 } [ %38, %37 ], [ %40, %39 ], [ %42, %41 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %36, %35 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %34, %33 ]
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  resume { ptr, i32 } %48
}

declare void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #0

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv() #4 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L5kAstrE, align 8, !tbaa !61
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #6
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L5kAstrE, align 8, !tbaa !61
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplC2EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716DeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %39

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %8 unwind label %41

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 6
  store i32 0, ptr %9, align 4, !tbaa !41
  %10 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !50
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %43

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 46
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %17 unwind label %45

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %16, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %19)
          to label %21 unwind label %45

21:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef %19)
          to label %22 unwind label %47

22:                                               ; preds = %21
  %23 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  store ptr %20, ptr %23, align 8, !tbaa !57
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE, ptr noundef nonnull @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE)
          to label %25 unwind label %45

25:                                               ; preds = %22
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %27 unwind label %45

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  %29 = zext i1 %26 to i8
  store i8 %29, ptr %28, align 8, !tbaa !58
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %31 unwind label %45

31:                                               ; preds = %27
  %32 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE, ptr noundef nonnull @_ZN11xercesc_2_716DeepNodeListImpl22reinitDeepNodeListImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE)
          to label %33 unwind label %45

33:                                               ; preds = %31
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %35 unwind label %45

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 9
  %37 = zext i1 %34 to i8
  store i8 %37, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 10
  store i8 1, ptr %38, align 1, !tbaa !60
  ret void

39:                                               ; preds = %4
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %53

41:                                               ; preds = %6
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %51

43:                                               ; preds = %8
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %49

45:                                               ; preds = %33, %31, %27, %25, %22, %17, %12
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %49

47:                                               ; preds = %21
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #6
  br label %49

49:                                               ; preds = %45, %47, %43
  %50 = phi { ptr, i32 } [ %44, %43 ], [ %46, %45 ], [ %48, %47 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %51

51:                                               ; preds = %49, %41
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %42, %41 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %53

53:                                               ; preds = %51, %39
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  resume { ptr, i32 } %54
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716DeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %8 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_716DeepNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716DeepNodeListImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef 2147483647)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  ret i32 %8
}

declare noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DeepNodeListImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(58) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(26) %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_710NodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
  %15 = load ptr, ptr %3, align 8, !tbaa !50
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 15
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(26) %15)
  store i32 %19, ptr %9, align 4, !tbaa !41
  br label %20

20:                                               ; preds = %12, %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %22)
  %24 = icmp ugt i32 %23, %1
  %25 = load ptr, ptr %21, align 8, !tbaa !57
  br i1 %24, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef %1)
  br label %55

28:                                               ; preds = %20
  %29 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %25)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !tbaa !50
  br label %36

33:                                               ; preds = %28
  %34 = load ptr, ptr %21, align 8, !tbaa !57
  %35 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector11lastElementEv(ptr noundef nonnull align 8 dereferenceable(24) %34)
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %32, %31 ], [ %35, %33 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %21, align 8, !tbaa !57
  %41 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %40)
  %42 = icmp ugt i32 %41, %1
  br i1 %42, label %55, label %43

43:                                               ; preds = %39, %50
  %44 = phi ptr [ %48, %50 ], [ %37, %39 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 6
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull %44)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %21, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull %48)
  %52 = load ptr, ptr %21, align 8, !tbaa !57
  %53 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %52)
  %54 = icmp ugt i32 %53, %1
  br i1 %54, label %55, label %43

55:                                               ; preds = %50, %43, %39, %36, %26
  %56 = phi ptr [ %27, %26 ], [ %37, %36 ], [ %37, %39 ], [ %48, %43 ], [ %48, %50 ]
  ret ptr %56
}

declare void @_ZN11xercesc_2_710NodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710NodeVector11lastElementEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DeepNodeListImpl24nextMatchingElementAfterEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %114, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %7, %112
  %16 = phi ptr [ %1, %7 ], [ %53, %112 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 30
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(26) %16)
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 20
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %52

26:                                               ; preds = %15
  %27 = load ptr, ptr %8, align 8, !tbaa !50
  %28 = icmp eq ptr %16, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %16, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 22
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(26) %16)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %29, %26
  %36 = load ptr, ptr %8, align 8, !tbaa !50
  %37 = icmp eq ptr %16, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %35, %45
  %39 = phi ptr [ %49, %45 ], [ %16, %35 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds ptr, ptr %40, i64 22
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(26) %39)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 27
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(26) %39)
  %50 = load ptr, ptr %8, align 8, !tbaa !50
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %38, !llvm.loop !62

52:                                               ; preds = %38, %45, %35, %29, %21
  %53 = phi ptr [ %25, %21 ], [ %33, %29 ], [ null, %35 ], [ null, %45 ], [ %43, %38 ]
  %54 = icmp eq ptr %53, null
  %55 = load ptr, ptr %9, align 8
  %56 = icmp eq ptr %53, %55
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %112, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 8, !tbaa !38
  %60 = getelementptr inbounds ptr, ptr %59, i64 11
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(26) %53)
  br i1 %62, label %63, label %112

63:                                               ; preds = %58
  %64 = load i8, ptr %10, align 1, !tbaa !60, !range !65, !noundef !66
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i8, ptr %14, align 8, !tbaa !58, !range !65, !noundef !66
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %71 = load ptr, ptr %53, align 8, !tbaa !38
  %72 = getelementptr inbounds ptr, ptr %71, i64 50
  %73 = load ptr, ptr %72, align 8
  call void %73(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %53)
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %75 unwind label %79

75:                                               ; preds = %69, %66
  %76 = phi i1 [ true, %66 ], [ %74, %69 ]
  br i1 %68, label %77, label %78

77:                                               ; preds = %75
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %78

78:                                               ; preds = %75, %77
  br i1 %76, label %114, label %112

79:                                               ; preds = %69
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %116

81:                                               ; preds = %63
  %82 = load i8, ptr %11, align 8, !tbaa !59, !range !65, !noundef !66
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %85 = load ptr, ptr %53, align 8, !tbaa !38
  %86 = getelementptr inbounds ptr, ptr %85, i64 40
  %87 = load ptr, ptr %86, align 8
  call void %87(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %53)
  %88 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %89 unwind label %95

89:                                               ; preds = %84
  %90 = xor i1 %88, true
  br label %91

91:                                               ; preds = %89, %81
  %92 = phi i1 [ false, %81 ], [ %90, %89 ]
  br i1 %83, label %93, label %94

93:                                               ; preds = %91
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %94

94:                                               ; preds = %91, %93
  br i1 %92, label %112, label %97

95:                                               ; preds = %84
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %116

97:                                               ; preds = %94
  %98 = load i8, ptr %13, align 8, !tbaa !58, !range !65, !noundef !66
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = getelementptr inbounds %"class.xercesc_2_7::DeepNodeListImpl", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %102 = load ptr, ptr %53, align 8, !tbaa !38
  %103 = getelementptr inbounds ptr, ptr %102, i64 42
  %104 = load ptr, ptr %103, align 8
  call void %104(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %53)
  %105 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %101)
          to label %106 unwind label %110

106:                                              ; preds = %100, %97
  %107 = phi i1 [ true, %97 ], [ %105, %100 ]
  br i1 %99, label %108, label %109

108:                                              ; preds = %106
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %109

109:                                              ; preds = %106, %108
  br i1 %107, label %114, label %112

110:                                              ; preds = %100
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %116

112:                                              ; preds = %52, %58, %109, %78, %94
  %113 = icmp eq ptr %53, null
  br i1 %113, label %114, label %15, !llvm.loop !67

114:                                              ; preds = %78, %112, %109, %2
  %115 = phi ptr [ null, %2 ], [ %53, %78 ], [ null, %112 ], [ %53, %109 ]
  ret ptr %115

116:                                              ; preds = %110, %95, %79
  %117 = phi { ptr, i32 } [ %111, %110 ], [ %96, %95 ], [ %80, %79 ]
  resume { ptr, i32 } %117
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DeepNodeListImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(58) %0) #6
  ret void
}

declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DeepNodeListImpl.cpp() #5 section ".text.startup" !prof !68 !PGOFuncName !69 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L12kAstrCleanupE)
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_GLOBAL__sub_I_DeepNodeListImpl.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !45, i64 36}
!42 = !{!"_ZTSN11xercesc_2_716DeepNodeListImplE", !43, i64 0, !47, i64 16, !48, i64 24, !49, i64 32, !45, i64 36, !47, i64 40, !48, i64 48, !49, i64 56, !49, i64 57}
!43 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !45, i64 8}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !40, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!"_ZTSN11xercesc_2_79DOMStringE", !47, i64 0}
!49 = !{!"bool", !46, i64 0}
!50 = !{!42, !47, i64 16}
!51 = !{!52, !47, i64 160}
!52 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !53, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !45, i64 152, !49, i64 156, !47, i64 160}
!53 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !54, i64 0, !47, i64 48, !47, i64 56, !45, i64 64, !47, i64 72, !45, i64 80}
!54 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !55, i64 0, !47, i64 32, !47, i64 40}
!55 = !{!"_ZTSN11xercesc_2_78NodeImplE", !43, i64 0, !47, i64 16, !56, i64 24}
!56 = !{!"short", !46, i64 0}
!57 = !{!42, !47, i64 40}
!58 = !{!42, !49, i64 32}
!59 = !{!42, !49, i64 56}
!60 = !{!42, !49, i64 57}
!61 = !{!47, !47, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = distinct !{!67, !63, !64}
!68 = !{!"function_entry_count", i64 1}
!69 = !{!"DeepNodeListImpl.cpp;_GLOBAL__sub_I_DeepNodeListImpl.cpp"}

; ModuleID = 'FormatterTreeWalker.cpp'
source_filename = "FormatterTreeWalker.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FormatterTreeWalker" = type { %"class.xalanc_1_10::TreeWalker", ptr, ptr }
%"class.xalanc_1_10::TreeWalker" = type { ptr }
%"class.xalanc_1_10::NamedNodeMapAttributeList" = type { %"class.xercesc_2_7::AttributeList", ptr, i32, ptr }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

@_ZTVN11xalanc_1_1019FormatterTreeWalkerE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019FormatterTreeWalkerE, ptr @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev, ptr @_ZN11xalanc_1_1019FormatterTreeWalkerD0Ev, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019FormatterTreeWalkerE = dso_local constant [37 x i8] c"N11xalanc_1_1019FormatterTreeWalkerE\00", align 1
@_ZTIN11xalanc_1_1010TreeWalkerE = external constant ptr
@_ZTIN11xalanc_1_1019FormatterTreeWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019FormatterTreeWalkerE, ptr @_ZTIN11xalanc_1_1010TreeWalkerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1019FormatterTreeWalkerC1ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1019FormatterTreeWalkerC2ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019FormatterTreeWalkerC2ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1019FormatterTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019FormatterTreeWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::NamedNodeMapAttributeList", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  switch i32 %7, label %98 [
    i32 8, label %8
    i32 5, label %87
    i32 9, label %19
    i32 1, label %25
    i32 7, label %47
    i32 4, label %63
    i32 3, label %75
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = load ptr, ptr %1, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %15 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %14) #6
  %16 = load ptr, ptr %10, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %15) #6
  br label %98

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 9
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(24) %21) #6
  br label %98

25:                                               ; preds = %2
  %26 = load ptr, ptr %1, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 11
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1025NamedNodeMapAttributeListC1ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %31) #6
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = load ptr, ptr %1, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %38 unwind label %45

38:                                               ; preds = %25
  %39 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %37) #6
          to label %40 unwind label %45

40:                                               ; preds = %38
  %41 = load ptr, ptr %33, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef %39, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %44 unwind label %45

44:                                               ; preds = %40
  call void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %98

45:                                               ; preds = %40, %38, %25
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  resume { ptr, i32 } %46

47:                                               ; preds = %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  %50 = load ptr, ptr %1, align 8, !tbaa !46
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef nonnull align 8 dereferenceable(36) ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %54 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %53) #6
  %55 = load ptr, ptr %1, align 8, !tbaa !46
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef nonnull align 8 dereferenceable(36) ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %59 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %58) #6
  %60 = load ptr, ptr %49, align 8, !tbaa !46
  %61 = getelementptr inbounds ptr, ptr %60, i64 6
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef %54, ptr noundef %59) #6
  br label %98

63:                                               ; preds = %2
  %64 = load ptr, ptr %1, align 8, !tbaa !46
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef nonnull align 8 dereferenceable(36) ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %67) #6
  %71 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %67) #6
  %72 = load ptr, ptr %69, align 8, !tbaa !46
  %73 = getelementptr inbounds ptr, ptr %72, i64 13
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef %70, i32 noundef %71) #6
  br label %98

75:                                               ; preds = %2
  %76 = load ptr, ptr %1, align 8, !tbaa !46
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef nonnull align 8 dereferenceable(36) ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %80 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %79) #6
  %83 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %79) #6
  %84 = load ptr, ptr %81, align 8, !tbaa !46
  %85 = getelementptr inbounds ptr, ptr %84, i64 2
  %86 = load ptr, ptr %85, align 8
  tail call void %86(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef %82, i32 noundef %83) #6
  br label %98

87:                                               ; preds = %2
  %88 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !52
  %90 = load ptr, ptr %1, align 8, !tbaa !46
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef nonnull align 8 dereferenceable(36) ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %94 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %93) #6
  %95 = load ptr, ptr %89, align 8, !tbaa !46
  %96 = getelementptr inbounds ptr, ptr %95, i64 14
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef %94) #6
  br label %98

98:                                               ; preds = %2, %87, %75, %63, %47, %44, %19, %8
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !56 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025NamedNodeMapAttributeListC1ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !57 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !45 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #6
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !45 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  switch i32 %6, label %24 [
    i32 9, label %7
    i32 1, label %13
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9) #6
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = load ptr, ptr %1, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %20 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %19) #6
  %21 = load ptr, ptr %15, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %20) #6
  br label %24

24:                                               ; preds = %2, %13, %7
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !45 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #6
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !58 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  br i1 %2, label %5, label %3, !prof !59

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #6
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !60 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !61 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !69 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !70
  ret i32 %3
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!36 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!37 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!40 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!42 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!43 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !48, i64 0}
!52 = !{!53, !50, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1019FormatterTreeWalkerE", !54, i64 0, !50, i64 8, !50, i64 16}
!54 = !{!"_ZTSN11xalanc_1_1010TreeWalkerE"}
!55 = !{!53, !50, i64 16}
!56 = !{!"function_entry_count", i64 12093723}
!57 = !{!"function_entry_count", i64 66708619}
!58 = !{!"function_entry_count", i64 967143541}
!59 = !{!"branch_weights", i32 403628487, i32 563515056}
!60 = !{!"function_entry_count", i64 3070433834}
!61 = !{!"function_entry_count", i64 1083116306}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !50, i64 0, !64, i64 8, !64, i64 16, !50, i64 24}
!64 = !{!"long", !51, i64 0}
!65 = !{!"function_entry_count", i64 565220908}
!66 = !{!63, !50, i64 24}
!67 = !{!"function_entry_count", i64 6521798493}
!68 = !{!"function_entry_count", i64 230527004}
!69 = !{!"function_entry_count", i64 1414337980}
!70 = !{!71, !72, i64 32}
!71 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !63, i64 0, !72, i64 32}
!72 = !{!"int", !51, i64 0}

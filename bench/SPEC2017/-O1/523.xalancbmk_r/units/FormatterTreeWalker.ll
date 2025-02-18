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

@_ZTVN11xalanc_1_1019FormatterTreeWalkerE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1019FormatterTreeWalkerE, ptr @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev, ptr @_ZN11xalanc_1_1019FormatterTreeWalkerD0Ev, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1019FormatterTreeWalkerE = dso_local constant [37 x i8] c"N11xalanc_1_1019FormatterTreeWalkerE\00", align 1
@_ZTIN11xalanc_1_1010TreeWalkerE = external constant ptr
@_ZTIN11xalanc_1_1019FormatterTreeWalkerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1019FormatterTreeWalkerE, ptr @_ZTIN11xalanc_1_1010TreeWalkerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1019FormatterTreeWalkerC1ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1019FormatterTreeWalkerC2ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1019FormatterTreeWalkerC2ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1019FormatterTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !38
  ret void
}

declare void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019FormatterTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1019FormatterTreeWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::NamedNodeMapAttributeList", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i32 %7, label %134 [
    i32 8, label %8
    i32 5, label %118
    i32 9, label %24
    i32 1, label %30
    i32 7, label %56
    i32 4, label %82
    i32 3, label %100
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19
  %21 = load ptr, ptr %10, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %20)
  br label %134

24:                                               ; preds = %2
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %26)
  br label %134

30:                                               ; preds = %2
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  call void @_ZN11xalanc_1_1025NamedNodeMapAttributeListC1ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %36)
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = load ptr, ptr %1, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %43 unwind label %54

43:                                               ; preds = %30
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %42, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !44
  %46 = icmp eq i64 %45, 0
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %42, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = select i1 %46, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %48
  %50 = load ptr, ptr %38, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 10
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef %49, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %53 unwind label %54

53:                                               ; preds = %43
  call void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br label %134

54:                                               ; preds = %43, %30
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  resume { ptr, i32 } %55

56:                                               ; preds = %2
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = load ptr, ptr %1, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef nonnull align 8 dereferenceable(36) ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !44
  %65 = icmp eq i64 %64, 0
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = select i1 %65, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %67
  %69 = load ptr, ptr %1, align 8, !tbaa !35
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef nonnull align 8 dereferenceable(36) ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !44
  %75 = icmp eq i64 %74, 0
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = select i1 %75, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %77
  %79 = load ptr, ptr %58, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 6
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef %68, ptr noundef %78)
  br label %134

82:                                               ; preds = %2
  %83 = load ptr, ptr %1, align 8, !tbaa !35
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef nonnull align 8 dereferenceable(36) ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %87 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !41
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %86, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !44
  %91 = icmp eq i64 %90, 0
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %86, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = select i1 %91, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %93
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %86, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !48
  %97 = load ptr, ptr %88, align 8, !tbaa !35
  %98 = getelementptr inbounds ptr, ptr %97, i64 13
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(24) %88, ptr noundef %94, i32 noundef %96)
  br label %134

100:                                              ; preds = %2
  %101 = load ptr, ptr %1, align 8, !tbaa !35
  %102 = getelementptr inbounds ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef nonnull align 8 dereferenceable(36) ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %105 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !41
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %104, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !44
  %109 = icmp eq i64 %108, 0
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %104, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = select i1 %109, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %111
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %104, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !48
  %115 = load ptr, ptr %106, align 8, !tbaa !35
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  tail call void %117(ptr noundef nonnull align 8 dereferenceable(24) %106, ptr noundef %112, i32 noundef %114)
  br label %134

118:                                              ; preds = %2
  %119 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !41
  %121 = load ptr, ptr %1, align 8, !tbaa !35
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef nonnull align 8 dereferenceable(36) ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %124, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !44
  %127 = icmp eq i64 %126, 0
  %128 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %124, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = select i1 %127, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %129
  %131 = load ptr, ptr %120, align 8, !tbaa !35
  %132 = getelementptr inbounds ptr, ptr %131, i64 14
  %133 = load ptr, ptr %132, align 8
  tail call void %133(ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef %130)
  br label %134

134:                                              ; preds = %2, %118, %100, %82, %56, %53, %24, %8
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1025NamedNodeMapAttributeListC1ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker9startNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i32 %6, label %29 [
    i32 9, label %7
    i32 1, label %13
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %29

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterTreeWalker", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = load ptr, ptr %1, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !44
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = select i1 %22, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24
  %26 = load ptr, ptr %15, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %25)
  br label %29

29:                                               ; preds = %2, %13, %7
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019FormatterTreeWalker7endNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
  ret i1 %6
}

declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1019FormatterTreeWalkerE", !43, i64 0, !39, i64 8, !39, i64 16}
!43 = !{!"_ZTSN11xalanc_1_1010TreeWalkerE"}
!44 = !{!45, !46, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !39, i64 0, !46, i64 8, !46, i64 16, !39, i64 24}
!46 = !{!"long", !40, i64 0}
!47 = !{!42, !39, i64 16}
!48 = !{!49, !50, i64 32}
!49 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !45, i64 0, !50, i64 32}
!50 = !{!"int", !40, i64 0}

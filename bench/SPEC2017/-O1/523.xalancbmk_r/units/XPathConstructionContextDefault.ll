; ModuleID = 'XPathConstructionContextDefault.cpp'
source_filename = "XPathConstructionContextDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.0", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.0" = type { ptr, i16, %"class.xalanc_1_10::XalanList.1" }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1031XPathConstructionContextDefaultE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XPathConstructionContextDefaultE, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD0Ev, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringEPKtj, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getCachedStringEv, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1031XPathConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1031XPathConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE] }, align 8
@_ZTIN11xalanc_1_1020XPathParserExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE = dso_local constant [49 x i8] c"N11xalanc_1_1031XPathConstructionContextDefaultE\00", align 1
@_ZTIN11xalanc_1_1024XPathConstructionContextE = external constant ptr
@_ZTIN11xalanc_1_1031XPathConstructionContextDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE, ptr @_ZTIN11xalanc_1_1024XPathConstructionContextE }, align 8

@_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xalanc_1_1024XPathConstructionContextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1031XPathConstructionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15)
          to label %4 unwind label %7, !prof !48

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 100)
          to label %6 unwind label %9, !prof !48

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %11

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  tail call void @_ZN11xalanc_1_1024XPathConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  resume { ptr, i32 } %12
}

declare void @_ZN11xalanc_1_1024XPathConstructionContextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1024XPathConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 248)
  invoke void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret ptr %5

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %17 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #9
  unreachable

17:                                               ; preds = %7, %10
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1031XPathConstructionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %3 unwind label %5, !prof !48

3:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #8
  tail call void @_ZN11xalanc_1_1024XPathConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #9
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  ret void
}

declare void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringEPKtj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !49 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %1, i32 noundef %2)
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getCachedStringEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1031XPathConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_1031XPathConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture readnone %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp eq ptr %3, null
  %8 = tail call ptr @__cxa_allocate_exception(i64 112) #8
  br i1 %7, label %13, label %9

9:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %10 unwind label %11

10:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xalanc_1_1020XPathParserExceptionE, ptr nonnull @_ZN11xalanc_1_1020XPathParserExceptionD1Ev) #11
  unreachable

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %17

13:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %14 unwind label %15

14:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xalanc_1_1020XPathParserExceptionE, ptr nonnull @_ZN11xalanc_1_1020XPathParserExceptionD1Ev) #11
  unreachable

15:                                               ; preds = %13
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi { ptr, i32 } [ %12, %11 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %8) #8
  resume { ptr, i32 } %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020XPathParserExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK11xalanc_1_1031XPathConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #7 align 2 !prof !49 {
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XPathConstructionContextC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1024XPathConstructionContextD2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, i64 2}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"branch_weights", i32 1, i32 0}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!"function_entry_count", i64 2}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !53, i64 8}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !47, i64 0}

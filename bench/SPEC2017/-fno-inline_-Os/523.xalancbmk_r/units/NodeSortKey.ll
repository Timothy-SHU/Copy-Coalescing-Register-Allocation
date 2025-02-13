; ModuleID = 'NodeSortKey.cpp'
source_filename = "NodeSortKey.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeSortKey" = type { ptr, ptr, i8, i8, i32, ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_NodeSortKey.cpp, ptr null }]

@_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1, i32, ptr, ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyC2ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE
@_ZN11xalanc_1_1011NodeSortKeyC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyC2Ev
@_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyC2ERKS0_
@_ZN11xalanc_1_1011NodeSortKeyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #10
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyC2ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 1 %7) unnamed_addr #4 align 2 !prof !48 {
  %9 = zext i1 %3 to i8
  %10 = zext i1 %4 to i8
  store ptr %1, ptr %0, align 8, !tbaa !49
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 2
  store i8 %9, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 3
  store i8 %10, ptr %13, align 1, !tbaa !58
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  store i32 %5, ptr %14, align 4, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  store ptr %7, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 6
  store ptr %6, ptr %16, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !59
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  store ptr null, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  store ptr @_ZN11xalanc_1_10L13s_emptyStringE, ptr %4, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) unnamed_addr #5 align 2 !prof !48 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !63
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !57, !range !64, !noundef !65
  store i8 %6, ptr %4, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !58, !range !64, !noundef !65
  store i8 %9, ptr %7, align 1, !tbaa !58
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !59
  store i32 %12, ptr %10, align 4, !tbaa !59
  %13 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %15 = load <2 x ptr>, ptr %14, align 8, !tbaa !63
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #5 align 2 !prof !62 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load <2 x ptr>, ptr %1, align 8, !tbaa !63
  store <2 x ptr> %5, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !57, !range !64, !noundef !65
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 2
  store i8 %7, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !58, !range !64, !noundef !65
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 3
  store i8 %10, ptr %11, align 1, !tbaa !58
  %12 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  store i32 %13, ptr %14, align 4, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  %17 = load <2 x ptr>, ptr %15, align 8, !tbaa !63
  store <2 x ptr> %17, ptr %16, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !71

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #10
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !73 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !74 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !75

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !76, !llvm.loop !77

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !79 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 !prof !80 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !81
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !84 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_NodeSortKey.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 43398227}
!48 = !{!"function_entry_count", i64 20523}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1011NodeSortKeyE", !51, i64 0, !51, i64 8, !54, i64 16, !54, i64 17, !55, i64 20, !51, i64 24, !51, i64 32}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"bool", !52, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1022XalanCollationServices10eCaseOrderE", !52, i64 0}
!56 = !{!50, !51, i64 8}
!57 = !{!50, !54, i64 16}
!58 = !{!50, !54, i64 17}
!59 = !{!50, !55, i64 20}
!60 = !{!50, !51, i64 24}
!61 = !{!50, !51, i64 32}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!51, !51, i64 0}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"function_entry_count", i64 41046}
!67 = !{!"function_entry_count", i64 128698679}
!68 = !{!69, !70, i64 16}
!69 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !51, i64 0, !70, i64 8, !70, i64 16, !51, i64 24}
!70 = !{!"long", !52, i64 0}
!71 = !{!"branch_weights", i32 43398290, i32 85300391}
!72 = !{!69, !51, i64 24}
!73 = !{!"function_entry_count", i64 6521798493}
!74 = !{!"function_entry_count", i64 85300390}
!75 = !{!"branch_weights", i32 1, i32 12185770}
!76 = !{!"branch_weights", i32 12185770, i32 -193930396}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"function_entry_count", i64 227375739}
!80 = !{!"function_entry_count", i64 568333389}
!81 = !{!69, !51, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"vtable pointer", !53, i64 0}
!84 = !{!"function_entry_count", i64 30137156660}
!85 = !{!"function_entry_count", i64 825654971}
!86 = !{!69, !70, i64 8}

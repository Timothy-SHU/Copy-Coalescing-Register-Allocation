; ModuleID = 'NodeSortKey.cpp'
source_filename = "NodeSortKey.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeSortKey" = type { ptr, ptr, i8, i8, i32, ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_NodeSortKey.cpp, ptr null }]

@_ZN11xalanc_1_1011NodeSortKeyC1ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1, i32, ptr, ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyC2ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE
@_ZN11xalanc_1_1011NodeSortKeyC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyC2Ev
@_ZN11xalanc_1_1011NodeSortKeyC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyC2ERKS0_
@_ZN11xalanc_1_1011NodeSortKeyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011NodeSortKeyD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyC2ERNS_16ExecutionContextEPKNS_5XPathEbbNS_22XalanCollationServices10eCaseOrderERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 1 %7) unnamed_addr #3 align 2 !prof !41 {
  %9 = zext i1 %3 to i8
  %10 = zext i1 %4 to i8
  store ptr %1, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 2
  store i8 %9, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 3
  store i8 %10, ptr %13, align 1, !tbaa !51
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  store i32 %5, ptr %14, align 4, !tbaa !52
  %15 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  store ptr %7, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 6
  store ptr %6, ptr %16, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !52
  %3 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  store ptr null, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  store ptr @_ZN11xalanc_1_10L13s_emptyStringE, ptr %4, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) unnamed_addr #5 align 2 !prof !41 {
  %3 = load ptr, ptr %1, align 8, !tbaa !42
  store ptr %3, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %6, ptr %4, align 8, !tbaa !49
  %7 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !50, !range !55, !noundef !56
  store i8 %9, ptr %7, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !51, !range !55, !noundef !56
  store i8 %12, ptr %10, align 1, !tbaa !51
  %13 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !52
  store i32 %15, ptr %13, align 4, !tbaa !52
  %16 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  store ptr %18, ptr %16, align 8, !tbaa !53
  %19 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  store ptr %21, ptr %19, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1011NodeSortKeyD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !57 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeSortKeyaSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #7 align 2 !prof !40 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  store ptr %5, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !50, !range !55, !noundef !56
  %11 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 2
  store i8 %10, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !51, !range !55, !noundef !56
  %14 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 3
  store i8 %13, ptr %14, align 1, !tbaa !51
  %15 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 4
  store i32 %16, ptr %17, align 4, !tbaa !52
  %18 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %"class.xalanc_1_10::NodeSortKey", ptr %0, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !54
  br label %24

24:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !62

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !67

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_NodeSortKey.cpp() #10 section ".text.startup" !prof !68 !PGOFuncName !69 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{ptr @_GLOBAL__sub_I_NodeSortKey.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_NodeSortKey.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_NodeSortKey.cpp, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!"function_entry_count", i64 20523}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN11xalanc_1_1011NodeSortKeyE", !44, i64 0, !44, i64 8, !47, i64 16, !47, i64 17, !48, i64 20, !44, i64 24, !44, i64 32}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"bool", !45, i64 0}
!48 = !{!"_ZTSN11xalanc_1_1022XalanCollationServices10eCaseOrderE", !45, i64 0}
!49 = !{!43, !44, i64 8}
!50 = !{!43, !47, i64 16}
!51 = !{!43, !47, i64 17}
!52 = !{!43, !48, i64 20}
!53 = !{!43, !44, i64 24}
!54 = !{!43, !44, i64 32}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!"function_entry_count", i64 41046}
!58 = !{!"function_entry_count", i64 42470003}
!59 = !{!60, !61, i64 16}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !44, i64 0, !61, i64 8, !61, i64 16, !44, i64 24}
!61 = !{!"long", !45, i64 0}
!62 = !{!"branch_weights", i32 52000, i32 42418003}
!63 = !{!60, !44, i64 24}
!64 = !{!60, !44, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !46, i64 0}
!67 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!68 = !{!"function_entry_count", i64 1}
!69 = !{!"NodeSortKey.cpp;_GLOBAL__sub_I_NodeSortKey.cpp"}

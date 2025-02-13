; ModuleID = 'PSVIElement.cpp'
source_filename = "PSVIElement.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::PSVIElement" = type { %"class.xercesc_2_7::PSVIItem", ptr, ptr, ptr }
%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_78PSVIItemD2Ev = comdat any

$_ZTSN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78PSVIItemE = comdat any

@_ZTVN11xercesc_2_711PSVIElementE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711PSVIElementE, ptr @_ZN11xercesc_2_711PSVIElementD2Ev, ptr @_ZN11xercesc_2_711PSVIElementD0Ev, ptr @_ZN11xercesc_2_711PSVIElement17getTypeDefinitionEv, ptr @_ZN11xercesc_2_711PSVIElement23getMemberTypeDefinitionEv, ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78PSVIItemE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78PSVIItemE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_711PSVIElementE = dso_local constant [29 x i8] c"N11xercesc_2_711PSVIElementE\00", align 1
@_ZTIN11xercesc_2_711PSVIElementE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711PSVIElementE, ptr @_ZTIN11xercesc_2_78PSVIItemE }, align 8

@_ZN11xercesc_2_711PSVIElementC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711PSVIElementC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_711PSVIElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711PSVIElementD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711PSVIElementC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711PSVIElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIElement", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711PSVIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711PSVIElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #7
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_78PSVIItemD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #8
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #9
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711PSVIElementD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_711PSVIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711PSVIElement17getTypeDefinitionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711PSVIElement23getMemberTypeDefinitionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 align 2 !prof !50 {
  %14 = zext i1 %4 to i8
  %15 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %1, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  store i32 %2, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 8
  store i8 %14, ptr %18, align 8, !tbaa !56
  %19 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  store ptr %6, ptr %19, align 8, !tbaa !51
  %20 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 10
  store ptr %7, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.xercesc_2_7::PSVIElement", ptr %0, i64 0, i32 1
  store ptr %5, ptr %21, align 8, !tbaa !57
  %22 = getelementptr inbounds %"class.xercesc_2_7::PSVIElement", ptr %0, i64 0, i32 2
  store ptr %12, ptr %22, align 8, !tbaa !59
  %23 = getelementptr inbounds %"class.xercesc_2_7::PSVIElement", ptr %0, i64 0, i32 3
  store ptr %8, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 4
  store ptr %9, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  store ptr %10, ptr %25, align 8, !tbaa !62
  %26 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = load ptr, ptr %27, align 8, !tbaa !39
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #7
  store ptr %11, ptr %28, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78PSVIItemD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_711PSVIElementC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_711PSVIElementD2Ev, ptr @_ZN11xercesc_2_78PSVIItemD2Ev, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 3}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !46, i64 48, !47, i64 52, !48, i64 56, !44, i64 64, !44, i64 72}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !45, i64 0}
!47 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !45, i64 0}
!48 = !{!"bool", !45, i64 0}
!49 = !{!43, !44, i64 40}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!43, !44, i64 64}
!52 = !{!43, !44, i64 72}
!53 = !{!43, !44, i64 16}
!54 = !{!43, !46, i64 48}
!55 = !{!43, !47, i64 52}
!56 = !{!43, !48, i64 56}
!57 = !{!58, !44, i64 80}
!58 = !{!"_ZTSN11xercesc_2_711PSVIElementE", !43, i64 0, !44, i64 80, !44, i64 88, !44, i64 96}
!59 = !{!58, !44, i64 88}
!60 = !{!58, !44, i64 96}
!61 = !{!43, !44, i64 32}
!62 = !{!43, !44, i64 24}

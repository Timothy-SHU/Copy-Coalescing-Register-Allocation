; ModuleID = 'PSVIAttribute.cpp'
source_filename = "PSVIAttribute.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::PSVIItem" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%"class.xercesc_2_7::PSVIAttribute" = type { %"class.xercesc_2_7::PSVIItem", ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713PSVIAttributeD0Ev = comdat any

$_ZN11xercesc_2_713PSVIAttributeD2Ev = comdat any

$_ZN11xercesc_2_78PSVIItemD2Ev = comdat any

$_ZN11xercesc_2_713PSVIAttribute17getTypeDefinitionEv = comdat any

$_ZN11xercesc_2_713PSVIAttribute23getMemberTypeDefinitionEv = comdat any

$_ZTVN11xercesc_2_713PSVIAttributeE = comdat any

$_ZTSN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78PSVIItemE = comdat any

$_ZTSN11xercesc_2_713PSVIAttributeE = comdat any

$_ZTIN11xercesc_2_713PSVIAttributeE = comdat any

@_ZTVN11xercesc_2_713PSVIAttributeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713PSVIAttributeE, ptr @_ZN11xercesc_2_713PSVIAttributeD2Ev, ptr @_ZN11xercesc_2_713PSVIAttributeD0Ev, ptr @_ZN11xercesc_2_713PSVIAttribute17getTypeDefinitionEv, ptr @_ZN11xercesc_2_713PSVIAttribute23getMemberTypeDefinitionEv, ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78PSVIItemE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78PSVIItemE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78PSVIItemE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_713PSVIAttributeE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713PSVIAttributeE\00", comdat, align 1
@_ZTIN11xercesc_2_713PSVIAttributeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713PSVIAttributeE, ptr @_ZTIN11xercesc_2_78PSVIItemE }, comdat, align 8

@_ZN11xercesc_2_713PSVIAttributeC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713PSVIAttributeC2EPNS_13MemoryManagerE

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713PSVIAttributeD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713PSVIAttributeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713PSVIAttributeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713PSVIAttributeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #9
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_78PSVIItemD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #8
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #7
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713PSVIAttributeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713PSVIAttributeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttribute", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78PSVIItemC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713PSVIAttribute5resetEPKtNS_8PSVIItem14VALIDITY_STATEENS3_15ASSESSMENT_TYPEEPNS_22XSSimpleTypeDefinitionES7_S2_bPNS_22XSAttributeDeclarationEPNS_17DatatypeValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #3 align 2 !prof !34 {
  %11 = zext i1 %7 to i8
  %12 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  store i32 %2, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 7
  store i32 %3, ptr %14, align 4, !tbaa !48
  %15 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  store ptr %4, ptr %15, align 8, !tbaa !49
  %16 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 10
  store ptr %5, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 4
  store ptr %6, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 8
  store i8 %11, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = load ptr, ptr %20, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %22) #9
  store ptr null, ptr %21, align 8, !tbaa !45
  %26 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttribute", ptr %0, i64 0, i32 1
  store ptr %8, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttribute", ptr %0, i64 0, i32 2
  store ptr %9, ptr %28, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713PSVIAttribute8setValueEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttribute", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = icmp ne ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = load ptr, ptr %7, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %1, ptr noundef %15, i1 noundef zeroext false) #9
  %20 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %4, %13, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78PSVIItemD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !57 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_78PSVIItem14getActualValueEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713PSVIAttribute17getTypeDefinitionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713PSVIAttribute23getMemberTypeDefinitionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::PSVIItem", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!38 = !{!39, !40, i64 8}
!39 = !{!"_ZTSN11xercesc_2_78PSVIItemE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !42, i64 48, !43, i64 52, !44, i64 56, !40, i64 64, !40, i64 72}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"_ZTSN11xercesc_2_78PSVIItem14VALIDITY_STATEE", !41, i64 0}
!43 = !{!"_ZTSN11xercesc_2_78PSVIItem15ASSESSMENT_TYPEE", !41, i64 0}
!44 = !{!"bool", !41, i64 0}
!45 = !{!39, !40, i64 40}
!46 = !{!39, !40, i64 16}
!47 = !{!39, !42, i64 48}
!48 = !{!39, !43, i64 52}
!49 = !{!39, !40, i64 64}
!50 = !{!39, !40, i64 72}
!51 = !{!39, !40, i64 32}
!52 = !{!39, !44, i64 56}
!53 = !{!39, !40, i64 24}
!54 = !{!55, !40, i64 80}
!55 = !{!"_ZTSN11xercesc_2_713PSVIAttributeE", !39, i64 0, !40, i64 80, !40, i64 88}
!56 = !{!55, !40, i64 88}
!57 = !{!"function_entry_count", i64 3}

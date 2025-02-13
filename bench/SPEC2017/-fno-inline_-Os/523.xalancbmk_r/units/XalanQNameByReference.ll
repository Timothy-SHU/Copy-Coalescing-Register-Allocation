; ModuleID = 'XalanQNameByReference.cpp'
source_filename = "XalanQNameByReference.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }

$_ZN11xalanc_1_1010XalanQNameC2Ev = comdat any

$_ZN11xalanc_1_1010XalanQNameD2Ev = comdat any

$_ZN11xalanc_1_1010XalanQNameD0Ev = comdat any

$_ZTSN11xalanc_1_1010XalanQNameE = comdat any

$_ZTIN11xalanc_1_1010XalanQNameE = comdat any

$_ZTVN11xalanc_1_1010XalanQNameE = comdat any

@_ZTVN11xalanc_1_1021XalanQNameByReferenceE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanQNameByReferenceE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD0Ev, ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getLocalPartEv, ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getNamespaceEv] }, align 8
@_ZN11xalanc_1_1010XalanQName13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XalanQNameByReferenceE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanQNameByReferenceE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local constant [28 x i8] c"N11xalanc_1_1010XalanQNameE\00", comdat, align 1
@_ZTIN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010XalanQNameE }, comdat, align 8
@_ZTIN11xalanc_1_1021XalanQNameByReferenceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanQNameByReferenceE, ptr @_ZTIN11xalanc_1_1010XalanQNameE }, align 8
@_ZTVN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010XalanQNameE, ptr @_ZN11xalanc_1_1010XalanQNameD2Ev, ptr @_ZN11xalanc_1_1010XalanQNameD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xalanc_1_1021XalanQNameByReferenceC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2Ev
@_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringES3_
@_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_10XalanQNameE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_10XalanQNameE
@_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1010XalanQNameC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr %2, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanQNameC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1010XalanQNameE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1010XalanQNameC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1010XalanQNameC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN11xalanc_1_1010XalanQNameC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %3 = load ptr, ptr %1, align 8, !tbaa !41
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !44
  %9 = load ptr, ptr %1, align 8, !tbaa !41
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %13 unwind label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  store ptr %12, ptr %14, align 8, !tbaa !49
  ret void

15:                                               ; preds = %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1010XalanQNameD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  resume { ptr, i32 } %16
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1010XalanQNameD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanQNameByReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getLocalPartEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanQNameByReference12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanQNameD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !57 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanQNameD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #8
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2Ev, ptr @_ZN11xalanc_1_1010XalanQNameC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1010XalanQNameC2Ev, i64 111850948}
!37 = !{ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC2ERKNS_10XalanQNameE, ptr @_ZN11xalanc_1_1010XalanQNameC2Ev, i64 26}
!38 = !{ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD2Ev, ptr @_ZN11xalanc_1_1010XalanQNameD2Ev, i64 111850982}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !47, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1021XalanQNameByReferenceE", !46, i64 0, !47, i64 8, !47, i64 16}
!46 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !43, i64 0}
!49 = !{!45, !47, i64 16}
!50 = !{!"function_entry_count", i64 111851007}
!51 = !{!"function_entry_count", i64 111850948}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!"function_entry_count", i64 26}
!54 = !{!"function_entry_count", i64 111850982}
!55 = !{!"function_entry_count", i64 201224936}
!56 = !{!"function_entry_count", i64 111850989}
!57 = !{!"function_entry_count", i64 111851010}

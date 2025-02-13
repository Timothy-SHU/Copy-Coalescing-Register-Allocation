; ModuleID = 'DOMLocatorImpl.cpp'
source_filename = "DOMLocatorImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMLocatorImpl" = type { %"class.xercesc_2_7::DOMLocator", i64, i64, i64, ptr, ptr }
%"class.xercesc_2_7::DOMLocator" = type { ptr }

$_ZN11xercesc_2_710DOMLocatorC2Ev = comdat any

$_ZNK11xercesc_2_714DOMLocatorImpl13getLineNumberEv = comdat any

$_ZNK11xercesc_2_714DOMLocatorImpl15getColumnNumberEv = comdat any

$_ZNK11xercesc_2_714DOMLocatorImpl9getOffsetEv = comdat any

$_ZNK11xercesc_2_714DOMLocatorImpl12getErrorNodeEv = comdat any

$_ZNK11xercesc_2_714DOMLocatorImpl6getURIEv = comdat any

$_ZN11xercesc_2_714DOMLocatorImpl13setLineNumberEl = comdat any

$_ZN11xercesc_2_714DOMLocatorImpl15setColumnNumberEl = comdat any

$_ZN11xercesc_2_714DOMLocatorImpl9setOffsetEl = comdat any

$_ZN11xercesc_2_714DOMLocatorImpl12setErrorNodeEPNS_7DOMNodeE = comdat any

$_ZN11xercesc_2_714DOMLocatorImpl6setURIEPKt = comdat any

$_ZN11xercesc_2_710DOMLocatorD2Ev = comdat any

$_ZN11xercesc_2_710DOMLocatorD0Ev = comdat any

$_ZTSN11xercesc_2_710DOMLocatorE = comdat any

$_ZTIN11xercesc_2_710DOMLocatorE = comdat any

$_ZTVN11xercesc_2_710DOMLocatorE = comdat any

@_ZTVN11xercesc_2_714DOMLocatorImplE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DOMLocatorImplE, ptr @_ZN11xercesc_2_714DOMLocatorImplD2Ev, ptr @_ZN11xercesc_2_714DOMLocatorImplD0Ev, ptr @_ZNK11xercesc_2_714DOMLocatorImpl13getLineNumberEv, ptr @_ZNK11xercesc_2_714DOMLocatorImpl15getColumnNumberEv, ptr @_ZNK11xercesc_2_714DOMLocatorImpl9getOffsetEv, ptr @_ZNK11xercesc_2_714DOMLocatorImpl12getErrorNodeEv, ptr @_ZNK11xercesc_2_714DOMLocatorImpl6getURIEv, ptr @_ZN11xercesc_2_714DOMLocatorImpl13setLineNumberEl, ptr @_ZN11xercesc_2_714DOMLocatorImpl15setColumnNumberEl, ptr @_ZN11xercesc_2_714DOMLocatorImpl9setOffsetEl, ptr @_ZN11xercesc_2_714DOMLocatorImpl12setErrorNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMLocatorImpl6setURIEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714DOMLocatorImplE = dso_local constant [32 x i8] c"N11xercesc_2_714DOMLocatorImplE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710DOMLocatorE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710DOMLocatorE\00", comdat, align 1
@_ZTIN11xercesc_2_710DOMLocatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DOMLocatorE }, comdat, align 8
@_ZTIN11xercesc_2_714DOMLocatorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DOMLocatorImplE, ptr @_ZTIN11xercesc_2_710DOMLocatorE }, align 8
@_ZTVN11xercesc_2_710DOMLocatorE = linkonce_odr dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DOMLocatorE, ptr @_ZN11xercesc_2_710DOMLocatorD2Ev, ptr @_ZN11xercesc_2_710DOMLocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_714DOMLocatorImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMLocatorImplC2Ev
@_ZN11xercesc_2_714DOMLocatorImplC1EllPNS_7DOMNodeEPKtl = dso_local unnamed_addr alias void (ptr, i64, i64, ptr, ptr, i64), ptr @_ZN11xercesc_2_714DOMLocatorImplC2EllPNS_7DOMNodeEPKtl
@_ZN11xercesc_2_714DOMLocatorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMLocatorImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMLocatorImplC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710DOMLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #4
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMLocatorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 -1, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_710DOMLocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMLocatorImplC2EllPNS_7DOMNodeEPKtl(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710DOMLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #4
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMLocatorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 1
  store i64 %1, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 2
  store i64 %2, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 3
  store i64 %5, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 5
  store ptr %4, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMLocatorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710DOMLocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMLocatorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_714DOMLocatorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZdlPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_714DOMLocatorImpl13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !38
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_714DOMLocatorImpl15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !44
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_714DOMLocatorImpl9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !45
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMLocatorImpl12getErrorNodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DOMLocatorImpl6getURIEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMLocatorImpl13setLineNumberEl(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 1
  store i64 %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMLocatorImpl15setColumnNumberEl(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 2
  store i64 %1, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMLocatorImpl9setOffsetEl(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 3
  store i64 %1, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMLocatorImpl12setErrorNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMLocatorImpl6setURIEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMLocatorImpl", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMLocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMLocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #7
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { builtin nounwind optsize }
attributes #7 = { noreturn nounwind }

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
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_714DOMLocatorImplE", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !43, i64 32, !43, i64 40}
!40 = !{!"_ZTSN11xercesc_2_710DOMLocatorE"}
!41 = !{!"long", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!39, !41, i64 16}
!45 = !{!39, !41, i64 24}
!46 = !{!39, !43, i64 32}
!47 = !{!39, !43, i64 40}

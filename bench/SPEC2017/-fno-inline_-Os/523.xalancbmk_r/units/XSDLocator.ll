; ModuleID = 'XSDLocator.cpp'
source_filename = "XSDLocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSDLocator" = type { %"class.xercesc_2_7::Locator", i64, i64, ptr, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }

$_ZNK11xercesc_2_710XSDLocator11getPublicIdEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_77LocatorC2Ev = comdat any

$_ZN11xercesc_2_77LocatorD2Ev = comdat any

$_ZN11xercesc_2_710XSDLocatorD0Ev = comdat any

$_ZNK11xercesc_2_710XSDLocator11getSystemIdEv = comdat any

$_ZNK11xercesc_2_710XSDLocator13getLineNumberEv = comdat any

$_ZNK11xercesc_2_710XSDLocator15getColumnNumberEv = comdat any

$_ZN11xercesc_2_77LocatorD0Ev = comdat any

$_ZTVN11xercesc_2_710XSDLocatorE = comdat any

$_ZTSN11xercesc_2_710XSDLocatorE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xercesc_2_710XSDLocatorE = comdat any

$_ZTVN11xercesc_2_77LocatorE = comdat any

@_ZTVN11xercesc_2_710XSDLocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XSDLocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xercesc_2_710XSDLocatorD0Ev, ptr @_ZNK11xercesc_2_710XSDLocator11getPublicIdEv, ptr @_ZNK11xercesc_2_710XSDLocator11getSystemIdEv, ptr @_ZNK11xercesc_2_710XSDLocator13getLineNumberEv, ptr @_ZNK11xercesc_2_710XSDLocator15getColumnNumberEv] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XSDLocatorE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710XSDLocatorE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_77LocatorE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77LocatorE\00", comdat, align 1
@_ZTIN11xercesc_2_77LocatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xercesc_2_710XSDLocatorE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XSDLocatorE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_77LocatorE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_77LocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77LocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xercesc_2_77LocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_710XSDLocatorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710XSDLocatorC2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XSDLocator11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710XSDLocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #5
  tail call void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_710XSDLocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_77LocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710XSDLocator9setValuesEPKtS2_ll(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 2 !prof !38 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 2
  store i64 %4, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSDLocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XSDLocator11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_710XSDLocator13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !51
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_710XSDLocator15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSDLocator", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !52
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #7
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_710XSDLocatorC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!36 = !{ptr @_ZN11xercesc_2_710XSDLocatorC2Ev, ptr @_ZN11xercesc_2_77LocatorC2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !45, i64 32}
!40 = !{!"_ZTSN11xercesc_2_710XSDLocatorE", !41, i64 0, !42, i64 8, !42, i64 16, !45, i64 24, !45, i64 32}
!41 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!42 = !{!"long", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"any pointer", !43, i64 0}
!46 = !{!"function_entry_count", i64 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !44, i64 0}
!49 = !{!"function_entry_count", i64 5836268}
!50 = !{!"function_entry_count", i64 855}
!51 = !{!40, !42, i64 8}
!52 = !{!40, !42, i64 16}
!53 = !{!40, !45, i64 24}

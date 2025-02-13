; ModuleID = 'blender/intern/ghost/intern/SPEC_SystemPathsSelect.cpp'
source_filename = "blender/intern/ghost/intern/SPEC_SystemPathsSelect.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN17GHOST_SystemPathsC2Ev = comdat any

$_ZN18GHOST_ISystemPathsC2Ev = comdat any

$_ZN18GHOST_ISystemPathsD2Ev = comdat any

$_ZN17GHOST_SystemPathsD0Ev = comdat any

$_ZN18GHOST_ISystemPathsD0Ev = comdat any

$_ZTS17GHOST_SystemPaths = comdat any

$_ZTS18GHOST_ISystemPaths = comdat any

$_ZTI18GHOST_ISystemPaths = comdat any

$_ZTI17GHOST_SystemPaths = comdat any

$_ZTV17GHOST_SystemPaths = comdat any

$_ZTV18GHOST_ISystemPaths = comdat any

@_ZTV20GHOST_SystemPathsX11 = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI20GHOST_SystemPathsX11, ptr @_ZN20GHOST_SystemPathsX11D2Ev, ptr @_ZN20GHOST_SystemPathsX11D0Ev, ptr @_ZNK20GHOST_SystemPathsX1112getSystemDirEiPKc, ptr @_ZNK20GHOST_SystemPathsX1110getUserDirEiPKc, ptr @_ZNK20GHOST_SystemPathsX1112getBinaryDirEv, ptr @_ZNK20GHOST_SystemPathsX1122addToSystemRecentFilesEPKc] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS20GHOST_SystemPathsX11 = dso_local constant [23 x i8] c"20GHOST_SystemPathsX11\00", align 1
@_ZTS17GHOST_SystemPaths = linkonce_odr dso_local constant [20 x i8] c"17GHOST_SystemPaths\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS18GHOST_ISystemPaths = linkonce_odr dso_local constant [21 x i8] c"18GHOST_ISystemPaths\00", comdat, align 1
@_ZTI18GHOST_ISystemPaths = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS18GHOST_ISystemPaths }, comdat, align 8
@_ZTI17GHOST_SystemPaths = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17GHOST_SystemPaths, ptr @_ZTI18GHOST_ISystemPaths }, comdat, align 8
@_ZTI20GHOST_SystemPathsX11 = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20GHOST_SystemPathsX11, ptr @_ZTI17GHOST_SystemPaths }, align 8
@_ZTV17GHOST_SystemPaths = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI17GHOST_SystemPaths, ptr @_ZN18GHOST_ISystemPathsD2Ev, ptr @_ZN17GHOST_SystemPathsD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV18GHOST_ISystemPaths = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI18GHOST_ISystemPaths, ptr @_ZN18GHOST_ISystemPathsD2Ev, ptr @_ZN18GHOST_ISystemPathsD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN20GHOST_SystemPathsX11C1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20GHOST_SystemPathsX11C2Ev
@_ZN20GHOST_SystemPathsX11D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20GHOST_SystemPathsX11D2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN20GHOST_SystemPathsX11C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN17GHOST_SystemPathsC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV20GHOST_SystemPathsX11, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17GHOST_SystemPathsC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN18GHOST_ISystemPathsC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV17GHOST_SystemPaths, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN20GHOST_SystemPathsX11D2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN18GHOST_ISystemPathsD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN20GHOST_SystemPathsX11D0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN20GHOST_SystemPathsX11D2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK20GHOST_SystemPathsX1112getSystemDirEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
  ret ptr null
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK20GHOST_SystemPathsX1110getUserDirEiPKc(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK20GHOST_SystemPathsX1112getBinaryDirEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZNK20GHOST_SystemPathsX1122addToSystemRecentFilesEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18GHOST_ISystemPathsC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV18GHOST_ISystemPaths, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18GHOST_ISystemPathsD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17GHOST_SystemPathsD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #8
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18GHOST_ISystemPathsD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #8
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}

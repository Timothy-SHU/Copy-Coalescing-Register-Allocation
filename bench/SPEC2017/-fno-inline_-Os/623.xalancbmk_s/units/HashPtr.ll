; ModuleID = 'HashPtr.cpp'
source_filename = "HashPtr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_78HashBaseC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_78HashBaseD2Ev = comdat any

$_ZN11xercesc_2_78HashBaseD0Ev = comdat any

$_ZTSN11xercesc_2_78HashBaseE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78HashBaseE = comdat any

$_ZTVN11xercesc_2_78HashBaseE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_77HashPtrE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77HashPtrE, ptr @_ZN11xercesc_2_77HashPtr10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77HashPtr6equalsEPKvS2_, ptr @_ZN11xercesc_2_77HashPtrD2Ev, ptr @_ZN11xercesc_2_77HashPtrD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77HashPtrE = dso_local constant [24 x i8] c"N11xercesc_2_77HashPtrE\00", align 1
@_ZTSN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78HashBaseE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78HashBaseE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_77HashPtrE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77HashPtrE, ptr @_ZTIN11xercesc_2_78HashBaseE }, align 8
@_ZTVN11xercesc_2_78HashBaseE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78HashBaseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78HashBaseD2Ev, ptr @_ZN11xercesc_2_78HashBaseD0Ev] }, comdat, align 8

@_ZN11xercesc_2_77HashPtrC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_77HashPtrC2Ev
@_ZN11xercesc_2_77HashPtrD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_77HashPtrD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_77HashPtr10getHashValEPKvjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 !prof !40 {
  %5 = ptrtoint ptr %1 to i64
  %6 = zext i32 %2 to i64
  %7 = urem i64 %5, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77HashPtr6equalsEPKvS2_(ptr nocapture nonnull readnone align 8 %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #0 align 2 !prof !41 {
  %4 = icmp eq ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77HashPtrD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_77HashPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77HashPtrC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_78HashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_77HashPtrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_78HashBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #7
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77HashPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_ZN11xercesc_2_77HashPtrC2Ev, ptr @_ZN11xercesc_2_78HashBaseC2Ev, i64 832927}
!37 = !{ptr @_ZN11xercesc_2_78HashBaseC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 833054}
!38 = !{ptr @_ZN11xercesc_2_77HashPtrD2Ev, ptr @_ZN11xercesc_2_78HashBaseD2Ev, i64 832927}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1343711}
!41 = !{!"function_entry_count", i64 1815576}
!42 = !{!"function_entry_count", i64 832927}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"function_entry_count", i64 833054}
!47 = !{!"function_entry_count", i64 5836268}

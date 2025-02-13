; ModuleID = 'MemBufInputSource.cpp'
source_filename = "MemBufInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::MemBufInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, i32, i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

$_ZNK11xercesc_2_711InputSource16getMemoryManagerEv = comdat any

@_ZTVN11xercesc_2_717MemBufInputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717MemBufInputSourceE, ptr @_ZN11xercesc_2_717MemBufInputSourceD2Ev, ptr @_ZN11xercesc_2_717MemBufInputSourceD0Ev, ptr @_ZNK11xercesc_2_717MemBufInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv, ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_711InputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_711InputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717MemBufInputSourceE = dso_local constant [35 x i8] c"N11xercesc_2_717MemBufInputSourceE\00", align 1
@_ZTIN11xercesc_2_711InputSourceE = external constant ptr
@_ZTIN11xercesc_2_717MemBufInputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717MemBufInputSourceE, ptr @_ZTIN11xercesc_2_711InputSourceE }, align 8

@_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKtbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i1, ptr), ptr @_ZN11xercesc_2_717MemBufInputSourceC2EPKhjPKtbPNS_13MemoryManagerE
@_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i1, ptr), ptr @_ZN11xercesc_2_717MemBufInputSourceC2EPKhjPKcbPNS_13MemoryManagerE
@_ZN11xercesc_2_717MemBufInputSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717MemBufInputSourceD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717MemBufInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717MemBufInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717MemBufInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %2) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !45, !range !46, !noundef !47
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 2, i32 1
  %12 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  invoke void @_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %5, i32 noundef %7, i32 noundef %11, ptr noundef %12) #7
          to label %13 unwind label %14

13:                                               ; preds = %1
  ret ptr %3

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %2) #6
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !54, !range !46, !noundef !47
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 !prof !55 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717MemBufInputSourceC2EPKhjPKtbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 align 2 !prof !35 {
  %7 = zext i1 %4 to i8
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3, ptr noundef %5) #7
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_717MemBufInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 1
  store i8 %7, ptr %8, align 1, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 3
  store i8 1, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 4
  store ptr %1, ptr %11, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717MemBufInputSourceC2EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 align 2 !prof !35 {
  %7 = zext i1 %4 to i8
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3, ptr noundef %5) #7
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_717MemBufInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 1
  store i8 %7, ptr %8, align 1, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 3
  store i8 1, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 4
  store ptr %1, ptr %11, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717MemBufInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_717MemBufInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !58, !range !46, !noundef !47
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717MemBufInputSource22resetMemBufInputSourceEPKhj(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 2
  store i32 %2, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds %"class.xercesc_2_7::MemBufInputSource", ptr %0, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !39, i64 56}
!37 = !{!"_ZTSN11xercesc_2_717MemBufInputSourceE", !38, i64 0, !42, i64 41, !43, i64 44, !42, i64 48, !39, i64 56}
!38 = !{!"_ZTSN11xercesc_2_711InputSourceE", !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !42, i64 40}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"bool", !40, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = !{!37, !43, i64 44}
!45 = !{!37, !42, i64 48}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!"function_entry_count", i64 3}
!49 = !{!38, !39, i64 16}
!50 = !{!38, !39, i64 24}
!51 = !{!"function_entry_count", i64 13}
!52 = !{!38, !39, i64 32}
!53 = !{!"function_entry_count", i64 1}
!54 = !{!38, !42, i64 40}
!55 = !{!"function_entry_count", i64 2}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !41, i64 0}
!58 = !{!37, !42, i64 41}
!59 = !{!"function_entry_count", i64 4}
!60 = !{!38, !39, i64 8}

; ModuleID = 'StdInInputSource.cpp'
source_filename = "StdInInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }

$_ZNK11xercesc_2_711InputSource16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716StdInInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #4
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %2) #4
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #4
  %5 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openStdInHandleEPNS_13MemoryManagerE(ptr noundef %4) #4
          to label %6 unwind label %14

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !36
  invoke void @_ZN11xercesc_2_718BinFileInputStreamC1EPvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %7) #4
          to label %8 unwind label %14

8:                                                ; preds = %6
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #4
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 8, !tbaa !40
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %3) #5
  br label %16

14:                                               ; preds = %6, %1
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %2) #5
  resume { ptr, i32 } %15

16:                                               ; preds = %8, %10
  %17 = phi ptr [ null, %10 ], [ %3, %8 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #1 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openStdInHandleEPNS_13MemoryManagerE(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718BinFileInputStreamC1EPvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

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
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !39, i64 0}
!42 = !{!"function_entry_count", i64 4}
!43 = !{!44, !37, i64 8}
!44 = !{!"_ZTSN11xercesc_2_711InputSourceE", !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !45, i64 40}
!45 = !{!"bool", !38, i64 0}
!46 = !{!"function_entry_count", i64 3}
!47 = !{!48, !37, i64 8}
!48 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !49, i64 0, !37, i64 8, !37, i64 16}
!49 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}

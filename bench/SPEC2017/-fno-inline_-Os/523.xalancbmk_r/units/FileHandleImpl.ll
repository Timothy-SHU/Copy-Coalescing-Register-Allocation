; ModuleID = 'FileHandleImpl.cpp'
source_filename = "FileHandleImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::FileHandleImpl" = type { ptr, ptr, i32, i32, i8, i32, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_714FileHandleImplC1EP8_IO_FILEibiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i1, i32, ptr), ptr @_ZN11xercesc_2_714FileHandleImplC2EP8_IO_FILEibiPNS_13MemoryManagerE
@_ZN11xercesc_2_714FileHandleImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714FileHandleImplD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714FileHandleImplC2EP8_IO_FILEibiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !34 {
  %7 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #3
  store ptr %1, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 4
  store i8 %7, ptr %9, align 8, !tbaa !43
  %10 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 5
  store i32 %4, ptr %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 6
  store ptr %5, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !47
  %14 = icmp ne i32 %2, 0
  %15 = xor i1 %3, true
  %16 = or i1 %14, %15
  %17 = icmp eq i32 %4, 0
  %18 = or i1 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = sext i32 %4 to i64
  %21 = load ptr, ptr %5, align 8, !tbaa !48
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %20) #3
  store ptr %24, ptr %12, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !50 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714FileHandleImplD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::FileHandleImpl", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #3
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #4
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #4
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_714FileHandleImplE", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !41, i64 24, !40, i64 28, !37, i64 32}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"bool", !38, i64 0}
!42 = !{!36, !40, i64 20}
!43 = !{!36, !41, i64 24}
!44 = !{!36, !40, i64 28}
!45 = !{!36, !37, i64 32}
!46 = !{!36, !37, i64 8}
!47 = !{!36, !40, i64 16}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !39, i64 0}
!50 = !{!"function_entry_count", i64 5836268}

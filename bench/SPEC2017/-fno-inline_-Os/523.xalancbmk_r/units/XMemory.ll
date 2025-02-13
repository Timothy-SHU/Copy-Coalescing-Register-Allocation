; ModuleID = 'XMemory.cpp'
source_filename = "XMemory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef %0) local_unnamed_addr #0 align 2 !prof !40 {
  %2 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8) #4
  %3 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !41
  %4 = add i64 %2, %0
  %5 = load ptr, ptr %3, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4) #4
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !41
  store ptr %9, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds i8, ptr %8, i64 %2
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef %0) local_unnamed_addr #1 comdat align 2 !prof !47 {
  %2 = and i64 %0, 7
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %7, label %4, !prof !48

4:                                                ; preds = %1
  %5 = and i64 %0, -8
  %6 = add i64 %5, 8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %6, %4 ], [ %0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !49 {
  %3 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8) #4
  %4 = add i64 %3, %0
  %5 = load ptr, ptr %1, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %4) #4
  store ptr %1, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds i8, ptr %8, i64 %3
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XMemorynwEmPv(i64 noundef %0, ptr noundef readnone returned %1) local_unnamed_addr #2 align 2 !prof !50 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !52

3:                                                ; preds = %1
  %4 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8) #4
  %5 = sub i64 0, %4
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %6) #4
          to label %11 unwind label %12

11:                                               ; preds = %3, %1
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #5
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8) #4
  %6 = sub i64 0, %5
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %7) #4
          to label %12 unwind label %13

12:                                               ; preds = %4, %2
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #5
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_77XMemorydlEPvS1_(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 align 2 !prof !50 {
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_77XMemorynwEm, ptr @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm, i64 309}
!36 = !{ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm, i64 2899753}
!37 = !{ptr @_ZN11xercesc_2_77XMemorydlEPv, ptr @_ZN11xercesc_2_716XMLPlatformUtils33alignPointerForNewBlockAllocationEm, i64 2900061}
!38 = !{ptr @_ZN11xercesc_2_77XMemorydlEPv, ptr @__clang_call_terminate, i64 3}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 309}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !44, i64 0}
!47 = !{!"function_entry_count", i64 5805450}
!48 = !{!"branch_weights", i32 5804944, i32 508}
!49 = !{!"function_entry_count", i64 2899753}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!"function_entry_count", i64 2900062}
!52 = !{!"branch_weights", i32 1, i32 2900063}

; ModuleID = 'DomMemDebug.cpp'
source_filename = "DomMemDebug.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DomMemDebug" = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_79DOMString23gTotalStringHandleCountE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_79DOMString20gLiveStringDataCountE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_79DOMString21gTotalStringDataCountE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE = external local_unnamed_addr global i32, align 4
@_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [300 x i8] c"DOM reference counted memory alloction statistics:\0A    live  string handles:   %d\0A    total string handles:   %d\0A    live  string buffers:   %d\0A    total string buffers:   %d\0A    live  nodeImpls:        %d\0A    total nodeImpls:        %d\0A    live  NamedNodeMaps:    %d\0A    total NamedNodeMaps:    %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"   %d StringHandles.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"   %d StringBuffers.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"   %d NodeImpls.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"   %d NamedNodeMaps.\00", align 1

@_ZN11xercesc_2_711DomMemDebugC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DomMemDebugC2Ev
@_ZN11xercesc_2_711DomMemDebugD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DomMemDebugD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebugC2Ev(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = load i32, ptr @_ZN11xercesc_2_79DOMString22gLiveStringHandleCountE, align 4, !tbaa !35
  store i32 %2, ptr %0, align 4, !tbaa !39
  %3 = load i32, ptr @_ZN11xercesc_2_79DOMString23gTotalStringHandleCountE, align 4, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 1
  store i32 %3, ptr %4, align 4, !tbaa !41
  %5 = load i32, ptr @_ZN11xercesc_2_79DOMString20gLiveStringDataCountE, align 4, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 2
  store i32 %5, ptr %6, align 4, !tbaa !42
  %7 = load i32, ptr @_ZN11xercesc_2_79DOMString21gTotalStringDataCountE, align 4, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 3
  store i32 %7, ptr %8, align 4, !tbaa !43
  %9 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !35
  %10 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 4
  store i32 %9, ptr %10, align 4, !tbaa !44
  %11 = load i32, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !35
  %12 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 5
  store i32 %11, ptr %12, align 4, !tbaa !45
  %13 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !35
  %14 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 6
  store i32 %13, ptr %14, align 4, !tbaa !46
  %15 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE, align 4, !tbaa !35
  %16 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 7
  store i32 %15, ptr %16, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebugD2Ev(ptr nocapture nonnull readnone align 4 %0) unnamed_addr #1 align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711DomMemDebugeqERKS0_(ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !44
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = icmp eq i32 %20, %22
  br label %24

24:                                               ; preds = %18, %12, %6, %2
  %25 = phi i1 [ false, %12 ], [ false, %6 ], [ false, %2 ], [ %23, %18 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711DomMemDebugneERKS0_(ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_711DomMemDebugeqERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebugaSERKS0_(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = load <4 x i32>, ptr %1, align 4, !tbaa !35
  store <4 x i32> %3, ptr %0, align 4, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 4
  %6 = load <4 x i32>, ptr %4, align 4, !tbaa !35
  store <4 x i32> %6, ptr %5, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebug5printEv(ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = load i32, ptr %0, align 4, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #7
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebug15printDifferenceERKS0_(ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = sub nsw i32 %3, %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !42
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = sub nsw i32 %11, %13
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %16) #7
  br label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !44
  %21 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !44
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %22
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %25) #7
  br label %27

27:                                               ; preds = %24, %18
  %28 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = sub nsw i32 %29, %31
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %34) #7
  br label %36

36:                                               ; preds = %33, %27
  %37 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { optsize }

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
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !36, i64 0}
!40 = !{!"_ZTSN11xercesc_2_711DomMemDebugE", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!41 = !{!40, !36, i64 4}
!42 = !{!40, !36, i64 8}
!43 = !{!40, !36, i64 12}
!44 = !{!40, !36, i64 16}
!45 = !{!40, !36, i64 20}
!46 = !{!40, !36, i64 24}
!47 = !{!40, !36, i64 28}

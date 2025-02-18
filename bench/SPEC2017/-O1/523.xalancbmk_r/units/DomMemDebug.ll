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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebugD2Ev(ptr nocapture nonnull readnone align 4 %0) unnamed_addr #1 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711DomMemDebugneERKS0_(ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #2 align 2 !prof !34 {
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
  %23 = icmp ne i32 %20, %22
  br label %24

24:                                               ; preds = %2, %6, %12, %18
  %25 = phi i1 [ true, %12 ], [ true, %6 ], [ true, %2 ], [ %23, %18 ]
  ret i1 %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebugaSERKS0_(ptr nocapture noundef nonnull writeonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = load i32, ptr %1, align 4, !tbaa !39
  store i32 %3, ptr %0, align 4, !tbaa !39
  %4 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !42
  %10 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !44
  %16 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !45
  %18 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !45
  %19 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 6
  store i32 %20, ptr %21, align 4, !tbaa !46
  %22 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %1, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !47
  %24 = getelementptr inbounds %"class.xercesc_2_7::DomMemDebug", ptr %0, i64 0, i32 7
  store i32 %23, ptr %24, align 4, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
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
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN11xercesc_2_711DomMemDebug15printDifferenceERKS0_(ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(32) %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = sub nsw i32 %3, %4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
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
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %16)
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
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %25)
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
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
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

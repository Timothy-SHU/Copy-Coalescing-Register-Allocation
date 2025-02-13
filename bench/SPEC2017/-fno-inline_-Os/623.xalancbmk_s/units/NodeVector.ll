; ModuleID = 'NodeVector.cpp'
source_filename = "NodeVector.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NodeVector" = type { ptr, i32, i32, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710NodeVectorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_710NodeVectorC2EjPNS_13MemoryManagerE
@_ZN11xercesc_2_710NodeVectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710NodeVectorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVectorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !36
  tail call void @_ZN11xercesc_2_710NodeVector4initEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 10) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !42 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector4initEj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = zext i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = load ptr, ptr %4, align 8, !tbaa !43
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %6) #9
  store ptr %10, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVectorC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 3
  store ptr %2, ptr %4, align 8, !tbaa !36
  tail call void @_ZN11xercesc_2_710NodeVector4initEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVectorD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = load ptr, ptr %3, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #9
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #10
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_710NodeVector10checkSpaceEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  store ptr %1, ptr %7, align 8, !tbaa !48
  %8 = add i32 %5, 1
  store i32 %8, ptr %4, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector10checkSpaceEv(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = lshr i32 %3, 1
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 50)
  %10 = add i32 %9, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = load ptr, ptr %12, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14) #9
  %19 = load i32, ptr %4, align 8, !tbaa !46
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = zext i32 %19 to i64
  br label %29

23:                                               ; preds = %29, %7
  %24 = load ptr, ptr %11, align 8, !tbaa !36
  %25 = load ptr, ptr %0, align 8, !tbaa !45
  %26 = load ptr, ptr %24, align 8, !tbaa !43
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %25) #9
  store i32 %10, ptr %4, align 8, !tbaa !46
  store ptr %18, ptr %0, align 8, !tbaa !45
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ 0, %21 ], [ %35, %29 ]
  %31 = load ptr, ptr %0, align 8, !tbaa !45
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds ptr, ptr %18, i64 %30
  store ptr %33, ptr %34, align 8, !tbaa !48
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %22
  br i1 %36, label %23, label %29, !llvm.loop !49

37:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !47
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !45
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710NodeVector11lastElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !47
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = add i32 %3, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_710NodeVector10checkSpaceEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = zext i32 %2 to i64
  br label %20

9:                                                ; preds = %3
  %10 = zext i32 %5 to i64
  %11 = zext i32 %2 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %10, %9 ], [ %15, %12 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = add nsw i64 %13, -1
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %14, i64 %13
  store ptr %17, ptr %18, align 8, !tbaa !48
  %19 = icmp ugt i64 %15, %11
  br i1 %19, label %12, label %20, !llvm.loop !51

20:                                               ; preds = %12, %7
  %21 = phi i64 [ %8, %7 ], [ %11, %12 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  store ptr %1, ptr %23, align 8, !tbaa !48
  %24 = add i32 %5, 1
  store i32 %24, ptr %4, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !47
  %5 = add i32 %4, -1
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = zext i32 %5 to i64
  br label %11

10:                                               ; preds = %11, %2
  store i32 %5, ptr %3, align 4, !tbaa !47
  ret void

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %8, %7 ], [ %14, %11 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !45
  %14 = add nuw nsw i64 %12, 1
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %13, i64 %12
  store ptr %16, ptr %17, align 8, !tbaa !48
  %18 = icmp eq i64 %14, %9
  br i1 %18, label %10, label %11, !llvm.loop !52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector5resetEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #7 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeVector", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !47
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

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
!36 = !{!37, !38, i64 16}
!37 = !{!"_ZTSN11xercesc_2_710NodeVectorE", !38, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"function_entry_count", i64 5836268}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !40, i64 0}
!45 = !{!37, !38, i64 0}
!46 = !{!37, !41, i64 8}
!47 = !{!37, !41, i64 12}
!48 = !{!38, !38, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}

; ModuleID = 'HashXMLCh.cpp'
source_filename = "HashXMLCh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTSN11xercesc_2_78HashBaseE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78HashBaseE = comdat any

@_ZTVN11xercesc_2_79HashXMLChE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79HashXMLChE, ptr @_ZN11xercesc_2_79HashXMLCh10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLCh6equalsEPKvS2_, ptr @_ZN11xercesc_2_79HashXMLChD2Ev, ptr @_ZN11xercesc_2_79HashXMLChD0Ev] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79HashXMLChE = dso_local constant [26 x i8] c"N11xercesc_2_79HashXMLChE\00", align 1
@_ZTSN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78HashBaseE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78HashBaseE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_79HashXMLChE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79HashXMLChE, ptr @_ZTIN11xercesc_2_78HashBaseE }, align 8

@_ZN11xercesc_2_79HashXMLChC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79HashXMLChC2Ev
@_ZN11xercesc_2_79HashXMLChD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79HashXMLChD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79HashXMLChC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79HashXMLChE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79HashXMLChD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !41 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79HashXMLChD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79HashXMLCh10getHashValEPKvjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) unnamed_addr #4 align 2 !prof !42 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %29, label %6, !prof !43

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !44
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %29, label %9, !prof !47

9:                                                ; preds = %6
  %10 = zext i16 %7 to i32
  %11 = getelementptr inbounds i16, ptr %1, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !44
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14, !prof !48

14:                                               ; preds = %9, %14
  %15 = phi i16 [ %24, %14 ], [ %12, %9 ]
  %16 = phi ptr [ %23, %14 ], [ %11, %9 ]
  %17 = phi i32 [ %22, %14 ], [ %10, %9 ]
  %18 = mul i32 %17, 38
  %19 = lshr i32 %17, 24
  %20 = add i32 %18, %19
  %21 = zext i16 %15 to i32
  %22 = add i32 %20, %21
  %23 = getelementptr inbounds i16, ptr %16, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !44
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %14, !prof !49, !llvm.loop !50

26:                                               ; preds = %14, %9
  %27 = phi i32 [ %10, %9 ], [ %22, %14 ]
  %28 = urem i32 %27, %2
  br label %29

29:                                               ; preds = %4, %6, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %6 ], [ 0, %4 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79HashXMLCh6equalsEPKvS2_(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #4 align 2 !prof !53 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %11, label %7, !prof !54

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !44
  %9 = load i16, ptr %2, align 2, !tbaa !44
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %20, label %31, !prof !55

11:                                               ; preds = %3
  br i1 %4, label %15, label %12

12:                                               ; preds = %11
  %13 = load i16, ptr %1, align 2, !tbaa !44
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12, %11
  br i1 %5, label %19, label %16

16:                                               ; preds = %15
  %17 = load i16, ptr %2, align 2, !tbaa !44
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16, %15
  br label %31

20:                                               ; preds = %7, %25
  %21 = phi i16 [ %28, %25 ], [ %8, %7 ]
  %22 = phi ptr [ %27, %25 ], [ %2, %7 ]
  %23 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %24 = icmp eq i16 %21, 0
  br i1 %24, label %31, label %25, !prof !56

25:                                               ; preds = %20
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = getelementptr inbounds i16, ptr %22, i64 1
  %28 = load i16, ptr %26, align 2, !tbaa !44
  %29 = load i16, ptr %27, align 2, !tbaa !44
  %30 = icmp eq i16 %28, %29
  br i1 %30, label %20, label %31, !prof !57, !llvm.loop !58

31:                                               ; preds = %20, %25, %7, %12, %16, %19
  %32 = phi i1 [ true, %19 ], [ false, %16 ], [ false, %12 ], [ false, %7 ], [ %24, %25 ], [ %24, %20 ]
  ret i1 %32
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_79HashXMLChD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 116}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 116}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!"function_entry_count", i64 4641793}
!43 = !{!"branch_weights", i32 0, i32 4641793}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !46, i64 0}
!46 = !{!"omnipotent char", !40, i64 0}
!47 = !{!"branch_weights", i32 1216533, i32 3425260}
!48 = !{!"branch_weights", i32 1, i32 3425259}
!49 = !{!"branch_weights", i32 3425259, i32 42208487}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"function_entry_count", i64 3677472}
!54 = !{!"branch_weights", i32 0, i32 3677472}
!55 = !{!"branch_weights", i32 199191, i32 1}
!56 = !{!"branch_weights", i32 3478280, i32 41086960}
!57 = !{!"branch_weights", i32 44366049, i32 199191}
!58 = distinct !{!58, !51, !52}

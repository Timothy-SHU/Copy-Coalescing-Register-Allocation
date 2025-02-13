; ModuleID = 'HashXMLCh.cpp'
source_filename = "HashXMLCh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_78HashBaseC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_78HashBaseD2Ev = comdat any

$_ZN11xercesc_2_78HashBaseD0Ev = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZTSN11xercesc_2_78HashBaseE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_78HashBaseE = comdat any

$_ZTVN11xercesc_2_78HashBaseE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_79HashXMLChE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79HashXMLChE, ptr @_ZN11xercesc_2_79HashXMLCh10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLCh6equalsEPKvS2_, ptr @_ZN11xercesc_2_79HashXMLChD2Ev, ptr @_ZN11xercesc_2_79HashXMLChD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79HashXMLChE = dso_local constant [26 x i8] c"N11xercesc_2_79HashXMLChE\00", align 1
@_ZTSN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78HashBaseE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_78HashBaseE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78HashBaseE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_79HashXMLChE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79HashXMLChE, ptr @_ZTIN11xercesc_2_78HashBaseE }, align 8
@_ZTVN11xercesc_2_78HashBaseE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78HashBaseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78HashBaseD2Ev, ptr @_ZN11xercesc_2_78HashBaseD0Ev] }, comdat, align 8

@_ZN11xercesc_2_79HashXMLChC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79HashXMLChC2Ev
@_ZN11xercesc_2_79HashXMLChD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79HashXMLChD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79HashXMLCh10getHashValEPKvjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !42 {
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79HashXMLCh6equalsEPKvS2_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !43 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %2) #4
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79HashXMLChD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_79HashXMLChD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79HashXMLChC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_78HashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #4
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79HashXMLChE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #4
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_78HashBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !49 {
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78HashBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #6
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79HashXMLChD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_78HashBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !50 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !51

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !52
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !55

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !52
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !56

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !52
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !57, !llvm.loop !58

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !61

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !52
  %8 = load i16, ptr %1, align 2, !tbaa !52
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !62

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !63

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !52
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !64

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !65

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !52
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !66

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !67

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !52
  %28 = load i16, ptr %26, align 2, !tbaa !52
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !68, !llvm.loop !69

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

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
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_ZN11xercesc_2_79HashXMLCh10getHashValEPKvjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 4641793}
!37 = !{ptr @_ZN11xercesc_2_79HashXMLCh6equalsEPKvS2_, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 3677472}
!38 = !{ptr @_ZN11xercesc_2_79HashXMLChC2Ev, ptr @_ZN11xercesc_2_78HashBaseC2Ev, i64 116}
!39 = !{ptr @_ZN11xercesc_2_78HashBaseC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 833054}
!40 = !{ptr @_ZN11xercesc_2_79HashXMLChD2Ev, ptr @_ZN11xercesc_2_78HashBaseD2Ev, i64 116}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 4641793}
!43 = !{!"function_entry_count", i64 3677472}
!44 = !{!"function_entry_count", i64 116}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"function_entry_count", i64 833054}
!49 = !{!"function_entry_count", i64 5836268}
!50 = !{!"function_entry_count", i64 4646679}
!51 = !{!"branch_weights", i32 1, i32 4646680}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !54, i64 0}
!54 = !{!"omnipotent char", !47, i64 0}
!55 = !{!"branch_weights", i32 1216534, i32 3430147}
!56 = !{!"branch_weights", i32 1, i32 3430146}
!57 = !{!"branch_weights", i32 3430146, i32 42249130}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"function_entry_count", i64 1231717351}
!61 = !{!"branch_weights", i32 621, i32 -1469098093}
!62 = !{!"branch_weights", i32 408901017, i32 1}
!63 = !{!"branch_weights", i32 267, i32 4}
!64 = !{!"branch_weights", i32 1, i32 4}
!65 = !{!"branch_weights", i32 156, i32 112}
!66 = !{!"branch_weights", i32 1, i32 112}
!67 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!68 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!69 = distinct !{!69, !59}

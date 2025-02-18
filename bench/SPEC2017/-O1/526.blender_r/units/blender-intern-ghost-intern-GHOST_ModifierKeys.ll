; ModuleID = 'blender/intern/ghost/intern/GHOST_ModifierKeys.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_ModifierKeys.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GHOST_ModifierKeys = type <{ ptr, i8, [7 x i8] }>

@_ZTV18GHOST_ModifierKeys = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI18GHOST_ModifierKeys, ptr @_ZN18GHOST_ModifierKeysD2Ev, ptr @_ZN18GHOST_ModifierKeysD0Ev, ptr @_ZNK18GHOST_ModifierKeys3getE22GHOST_TModifierKeyMask, ptr @_ZN18GHOST_ModifierKeys3setE22GHOST_TModifierKeyMaskb, ptr @_ZN18GHOST_ModifierKeys5clearEv, ptr @_ZNK18GHOST_ModifierKeys6equalsERKS_] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS18GHOST_ModifierKeys = dso_local constant [21 x i8] c"18GHOST_ModifierKeys\00", align 1
@_ZTI18GHOST_ModifierKeys = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS18GHOST_ModifierKeys }, align 8
@switch.table._ZN18GHOST_ModifierKeys18getModifierKeyCodeE22GHOST_TModifierKeyMask = private unnamed_addr constant [7 x i32] [i32 256, i32 257, i32 260, i32 261, i32 258, i32 259, i32 262], align 4

@_ZN18GHOST_ModifierKeysC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_ModifierKeysC2Ev
@_ZN18GHOST_ModifierKeysD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_ModifierKeysD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18GHOST_ModifierKeysC2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV18GHOST_ModifierKeys, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, -128
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN18GHOST_ModifierKeysD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 {
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN18GHOST_ModifierKeysD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #2 align 2 {
  tail call void @_ZdlPv(ptr noundef %0) #5
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN18GHOST_ModifierKeys18getModifierKeyCodeE22GHOST_TModifierKeyMask(i32 noundef %0) local_unnamed_addr #1 align 2 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [7 x i32], ptr @switch.table._ZN18GHOST_ModifierKeys18getModifierKeyCodeE22GHOST_TModifierKeyMask, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -1, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK18GHOST_ModifierKeys3getE22GHOST_TModifierKeyMask(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0, i32 noundef %1) unnamed_addr #4 align 2 {
  switch i32 %1, label %38 [
    i32 0, label %3
    i32 1, label %8
    i32 2, label %13
    i32 3, label %18
    i32 4, label %23
    i32 5, label %28
    i32 6, label %33
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  br label %38

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 2
  %12 = icmp ne i8 %11, 0
  br label %38

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 4
  %17 = icmp ne i8 %16, 0
  br label %38

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 8
  %22 = icmp ne i8 %21, 0
  br label %38

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, 16
  %27 = icmp ne i8 %26, 0
  br label %38

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %30 = load i8, ptr %29, align 8
  %31 = and i8 %30, 32
  %32 = icmp ne i8 %31, 0
  br label %38

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %35 = load i8, ptr %34, align 8
  %36 = and i8 %35, 64
  %37 = icmp ne i8 %36, 0
  br label %38

38:                                               ; preds = %2, %33, %28, %23, %18, %13, %8, %3
  %39 = phi i1 [ %37, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %8 ], [ %7, %3 ], [ false, %2 ]
  ret i1 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18GHOST_ModifierKeys3setE22GHOST_TModifierKeyMaskb(ptr nocapture noundef nonnull align 8 dereferenceable(9) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
  switch i32 %1, label %46 [
    i32 0, label %4
    i32 1, label %10
    i32 2, label %16
    i32 3, label %22
    i32 4, label %28
    i32 5, label %34
    i32 6, label %40
  ]

4:                                                ; preds = %3
  %5 = zext i1 %2 to i8
  %6 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, -2
  %9 = or disjoint i8 %8, %5
  store i8 %9, ptr %6, align 8
  br label %46

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = select i1 %2, i8 2, i8 0
  %14 = and i8 %12, -3
  %15 = or disjoint i8 %14, %13
  store i8 %15, ptr %11, align 8
  br label %46

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8
  %19 = select i1 %2, i8 4, i8 0
  %20 = and i8 %18, -5
  %21 = or disjoint i8 %20, %19
  store i8 %21, ptr %17, align 8
  br label %46

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %24 = load i8, ptr %23, align 8
  %25 = select i1 %2, i8 8, i8 0
  %26 = and i8 %24, -9
  %27 = or disjoint i8 %26, %25
  store i8 %27, ptr %23, align 8
  br label %46

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %30 = load i8, ptr %29, align 8
  %31 = select i1 %2, i8 16, i8 0
  %32 = and i8 %30, -17
  %33 = or disjoint i8 %32, %31
  store i8 %33, ptr %29, align 8
  br label %46

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %36 = load i8, ptr %35, align 8
  %37 = select i1 %2, i8 32, i8 0
  %38 = and i8 %36, -33
  %39 = or disjoint i8 %38, %37
  store i8 %39, ptr %35, align 8
  br label %46

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %42 = load i8, ptr %41, align 8
  %43 = select i1 %2, i8 64, i8 0
  %44 = and i8 %42, -65
  %45 = or disjoint i8 %44, %43
  store i8 %45, ptr %41, align 8
  br label %46

46:                                               ; preds = %3, %40, %34, %28, %22, %16, %10, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18GHOST_ModifierKeys5clearEv(ptr nocapture noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, -128
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK18GHOST_ModifierKeys6equalsERKS_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %1) unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8
  %5 = getelementptr inbounds %struct.GHOST_ModifierKeys, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 8
  %7 = xor i8 %6, %4
  %8 = and i8 %7, 127
  %9 = icmp eq i8 %8, 0
  ret i1 %9
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}

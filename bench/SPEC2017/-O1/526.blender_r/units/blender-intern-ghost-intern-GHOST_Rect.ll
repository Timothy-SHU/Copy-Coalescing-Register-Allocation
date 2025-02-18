; ModuleID = 'blender/intern/ghost/intern/GHOST_Rect.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_Rect.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_Rect = type { ptr, i32, i32, i32, i32 }

$_ZN10GHOST_RectD2Ev = comdat any

$_ZN10GHOST_RectD0Ev = comdat any

$_ZNK10GHOST_Rect8getWidthEv = comdat any

$_ZNK10GHOST_Rect9getHeightEv = comdat any

$_ZN10GHOST_Rect3setEiiii = comdat any

$_ZNK10GHOST_Rect7isEmptyEv = comdat any

$_ZNK10GHOST_Rect7isValidEv = comdat any

$_ZN10GHOST_Rect9unionRectERKS_ = comdat any

$_ZN10GHOST_Rect10unionPointEii = comdat any

$_ZN10GHOST_Rect9wrapPointERiS0_i = comdat any

$_ZNK10GHOST_Rect8isInsideEii = comdat any

@_ZTV10GHOST_Rect = dso_local unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTI10GHOST_Rect, ptr @_ZN10GHOST_RectD2Ev, ptr @_ZN10GHOST_RectD0Ev, ptr @_ZNK10GHOST_Rect8getWidthEv, ptr @_ZNK10GHOST_Rect9getHeightEv, ptr @_ZN10GHOST_Rect3setEiiii, ptr @_ZNK10GHOST_Rect7isEmptyEv, ptr @_ZNK10GHOST_Rect7isValidEv, ptr @_ZN10GHOST_Rect5insetEi, ptr @_ZN10GHOST_Rect9unionRectERKS_, ptr @_ZN10GHOST_Rect10unionPointEii, ptr @_ZN10GHOST_Rect9wrapPointERiS0_i, ptr @_ZNK10GHOST_Rect8isInsideEii, ptr @_ZNK10GHOST_Rect13getVisibilityERS_, ptr @_ZN10GHOST_Rect9setCenterEii, ptr @_ZN10GHOST_Rect9setCenterEiiii, ptr @_ZNK10GHOST_Rect4clipERS_] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS10GHOST_Rect = dso_local constant [13 x i8] c"10GHOST_Rect\00", align 1
@_ZTI10GHOST_Rect = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS10GHOST_Rect }, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10GHOST_Rect5insetEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = sub nsw i32 %6, %1
  store i32 %7, ptr %5, align 8, !tbaa !34
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = add nsw i32 %9, %1
  store i32 %10, ptr %8, align 8, !tbaa !39
  %11 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = sub nsw i32 %12, %1
  store i32 %13, ptr %11, align 4, !tbaa !40
  %14 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = add nsw i32 %15, %1
  store i32 %16, ptr %14, align 4, !tbaa !41
  br label %58

17:                                               ; preds = %2
  %18 = icmp slt i32 %1, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %17
  %20 = shl nsw i32 %1, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %25 = icmp sgt i32 %24, %20
  %26 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !34
  br i1 %25, label %28, label %33

28:                                               ; preds = %19
  %29 = add nsw i32 %27, %1
  store i32 %29, ptr %26, align 8, !tbaa !34
  %30 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !39
  %32 = sub nsw i32 %31, %1
  store i32 %32, ptr %30, align 8, !tbaa !39
  br label %39

33:                                               ; preds = %19
  %34 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !39
  %36 = sub nsw i32 %35, %27
  %37 = sdiv i32 %36, 2
  %38 = add nsw i32 %37, %27
  store i32 %38, ptr %26, align 8, !tbaa !34
  store i32 %38, ptr %34, align 8, !tbaa !39
  br label %39

39:                                               ; preds = %33, %28
  %40 = load ptr, ptr %0, align 8, !tbaa !42
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %44 = icmp sgt i32 %43, %20
  %45 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !40
  br i1 %44, label %47, label %52

47:                                               ; preds = %39
  %48 = add nsw i32 %46, %1
  store i32 %48, ptr %45, align 4, !tbaa !40
  %49 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !41
  %51 = sub nsw i32 %50, %1
  store i32 %51, ptr %49, align 4, !tbaa !41
  br label %58

52:                                               ; preds = %39
  %53 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !41
  %55 = sub nsw i32 %54, %46
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 %56, %46
  store i32 %57, ptr %45, align 4, !tbaa !40
  store i32 %57, ptr %53, align 4, !tbaa !41
  br label %58

58:                                               ; preds = %47, %52, %17, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK10GHOST_Rect13getVisibilityERS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 11
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %4, i32 noundef %6)
  %11 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = load i32, ptr %5, align 4, !tbaa !40
  %14 = load ptr, ptr %0, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %14, i64 11
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %12, i32 noundef %13)
  %18 = load i32, ptr %3, align 8, !tbaa !34
  %19 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = load ptr, ptr %0, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %21, i64 11
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %18, i32 noundef %20)
  %25 = load i32, ptr %11, align 8, !tbaa !39
  %26 = load i32, ptr %19, align 4, !tbaa !41
  %27 = load ptr, ptr %0, align 8, !tbaa !42
  %28 = getelementptr inbounds ptr, ptr %27, i64 11
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %25, i32 noundef %26)
  %31 = and i1 %10, %17
  %32 = and i1 %31, %24
  %33 = and i1 %32, %30
  br i1 %33, label %59, label %34

34:                                               ; preds = %2
  %35 = or i1 %10, %17
  %36 = or i1 %35, %24
  %37 = or i1 %36, %30
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %3, align 8, !tbaa !34
  %40 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !34
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32, ptr %5, align 4, !tbaa !40
  %45 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !40
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, ptr %11, align 8, !tbaa !39
  %50 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !39
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, ptr %19, align 4, !tbaa !41
  %55 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !41
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %48, %43, %38
  br label %59

59:                                               ; preds = %34, %53, %2, %58
  %60 = phi i32 [ 0, %58 ], [ 2, %2 ], [ 1, %53 ], [ 1, %34 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10GHOST_Rect9setCenterEii(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = sub nsw i32 %7, %5
  %9 = sdiv i32 %8, -2
  %10 = sub i32 %1, %5
  %11 = add i32 %10, %9
  %12 = add i32 %9, %1
  store i32 %12, ptr %4, align 8, !tbaa !34
  %13 = add nsw i32 %11, %7
  store i32 %13, ptr %6, align 8, !tbaa !39
  %14 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !40
  %16 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = sub nsw i32 %17, %15
  %19 = sdiv i32 %18, -2
  %20 = sub i32 %2, %15
  %21 = add i32 %20, %19
  %22 = add i32 %19, %2
  store i32 %22, ptr %14, align 4, !tbaa !40
  %23 = add nsw i32 %21, %17
  store i32 %23, ptr %16, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10GHOST_Rect9setCenterEiiii(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 align 2 {
  %6 = ashr i32 %3, 1
  %7 = ashr i32 %4, 1
  %8 = sub i32 %1, %6
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !34
  %10 = sub i32 %2, %7
  %11 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  store i32 %10, ptr %11, align 4, !tbaa !40
  %12 = add nsw i32 %8, %3
  %13 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  store i32 %12, ptr %13, align 8, !tbaa !39
  %14 = add nsw i32 %10, %4
  %15 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK10GHOST_Rect4clipERS_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 %6, ptr %3, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 %13, ptr %10, align 4, !tbaa !40
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i1 [ true, %15 ], [ %7, %9 ]
  %18 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !39
  %20 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !39
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 %21, ptr %18, align 8, !tbaa !39
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i1 [ true, %23 ], [ %17, %16 ]
  %26 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !41
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 %29, ptr %26, align 4, !tbaa !41
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i1 [ true, %31 ], [ %25, %24 ]
  ret i1 %33
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10GHOST_RectD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10GHOST_Rect8getWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10GHOST_Rect9getHeightEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10GHOST_Rect3setEiiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 comdat align 2 {
  %6 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  store i32 %2, ptr %7, align 4, !tbaa !40
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  store i32 %3, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  store i32 %4, ptr %9, align 4, !tbaa !41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10GHOST_Rect7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ true, %1 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10GHOST_Rect7isValidEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp sle i32 %3, %5
  %7 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp sle i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false
  ret i1 %12
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10GHOST_Rect9unionRectERKS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 %4, ptr %5, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !39
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 %11, ptr %12, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 %18, ptr %19, align 4, !tbaa !40
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 %25, ptr %26, align 4, !tbaa !41
  br label %30

30:                                               ; preds = %29, %23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10GHOST_Rect10unionPointEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !39
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 %1, ptr %9, align 8, !tbaa !39
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !40
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 %2, ptr %14, align 4, !tbaa !40
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = icmp slt i32 %20, %2
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 %2, ptr %19, align 4, !tbaa !41
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN10GHOST_Rect9wrapPointERiS0_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) unnamed_addr #5 comdat align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %9 = load ptr, ptr %0, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %13 = shl nsw i32 %3, 1
  %14 = sub nsw i32 %8, %13
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %67, label %16

16:                                               ; preds = %4
  %17 = sub nsw i32 %12, %13
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %67, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %1, align 4, !tbaa !44
  %22 = sub nsw i32 %21, %3
  %23 = load i32, ptr %20, align 8, !tbaa !34
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %31, %19
  %26 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %2, align 4, !tbaa !44
  %28 = sub nsw i32 %27, %3
  %29 = load i32, ptr %26, align 4, !tbaa !40
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %43, label %37

31:                                               ; preds = %19, %31
  %32 = phi i32 [ %33, %31 ], [ %21, %19 ]
  %33 = add nsw i32 %32, %14
  store i32 %33, ptr %1, align 4, !tbaa !44
  %34 = sub nsw i32 %33, %3
  %35 = load i32, ptr %20, align 8, !tbaa !34
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %31, label %25, !llvm.loop !45

37:                                               ; preds = %43, %25
  %38 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %1, align 4, !tbaa !44
  %40 = add nsw i32 %39, %3
  %41 = load i32, ptr %38, align 8, !tbaa !39
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %55, label %49

43:                                               ; preds = %25, %43
  %44 = phi i32 [ %45, %43 ], [ %27, %25 ]
  %45 = add nsw i32 %44, %17
  store i32 %45, ptr %2, align 4, !tbaa !44
  %46 = sub nsw i32 %45, %3
  %47 = load i32, ptr %26, align 4, !tbaa !40
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %43, label %37, !llvm.loop !48

49:                                               ; preds = %55, %37
  %50 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %51 = load i32, ptr %2, align 4, !tbaa !44
  %52 = add nsw i32 %51, %3
  %53 = load i32, ptr %50, align 4, !tbaa !41
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %61, label %67

55:                                               ; preds = %37, %55
  %56 = phi i32 [ %57, %55 ], [ %39, %37 ]
  %57 = sub nsw i32 %56, %14
  store i32 %57, ptr %1, align 4, !tbaa !44
  %58 = add nsw i32 %57, %3
  %59 = load i32, ptr %38, align 8, !tbaa !39
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %55, label %49, !llvm.loop !49

61:                                               ; preds = %49, %61
  %62 = phi i32 [ %63, %61 ], [ %51, %49 ]
  %63 = sub nsw i32 %62, %17
  store i32 %63, ptr %2, align 4, !tbaa !44
  %64 = add nsw i32 %63, %3
  %65 = load i32, ptr %50, align 4, !tbaa !41
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %61, label %67, !llvm.loop !50

67:                                               ; preds = %61, %49, %4, %16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10GHOST_Rect8isInsideEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp sgt i32 %5, %1
  %7 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp slt i32 %8, %1
  %10 = select i1 %6, i1 true, i1 %9
  %11 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %2
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = icmp sge i32 %17, %2
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ]
  ret i1 %20
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin nounwind }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"_ZTS10GHOST_Rect", !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!35, !36, i64 16}
!40 = !{!35, !36, i64 12}
!41 = !{!35, !36, i64 20}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !38, i64 0}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !46, !47}
!50 = distinct !{!50, !46, !47}

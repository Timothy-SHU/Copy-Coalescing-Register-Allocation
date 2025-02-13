; ModuleID = 'blender/source/blender/imbuf/intern/rectop.c'
source_filename = "blender/source/blender/imbuf/intern/rectop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_blend_color_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %3, label %29 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 17, label %21
    i32 16, label %22
    i32 18, label %23
    i32 19, label %24
    i32 23, label %25
    i32 20, label %26
    i32 21, label %27
    i32 22, label %28
  ]

5:                                                ; preds = %4
  tail call void @blend_color_mix_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

6:                                                ; preds = %4
  tail call void @blend_color_add_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

7:                                                ; preds = %4
  tail call void @blend_color_sub_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

8:                                                ; preds = %4
  tail call void @blend_color_mul_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

9:                                                ; preds = %4
  tail call void @blend_color_lighten_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

10:                                               ; preds = %4
  tail call void @blend_color_darken_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

11:                                               ; preds = %4
  tail call void @blend_color_erase_alpha_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

12:                                               ; preds = %4
  tail call void @blend_color_add_alpha_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

13:                                               ; preds = %4
  tail call void @blend_color_overlay_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

14:                                               ; preds = %4
  tail call void @blend_color_hardlight_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

15:                                               ; preds = %4
  tail call void @blend_color_burn_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

16:                                               ; preds = %4
  tail call void @blend_color_linearburn_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

17:                                               ; preds = %4
  tail call void @blend_color_dodge_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

18:                                               ; preds = %4
  tail call void @blend_color_screen_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

19:                                               ; preds = %4
  tail call void @blend_color_softlight_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

20:                                               ; preds = %4
  tail call void @blend_color_pinlight_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

21:                                               ; preds = %4
  tail call void @blend_color_linearlight_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

22:                                               ; preds = %4
  tail call void @blend_color_vividlight_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

23:                                               ; preds = %4
  tail call void @blend_color_difference_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

24:                                               ; preds = %4
  tail call void @blend_color_exclusion_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

25:                                               ; preds = %4
  tail call void @blend_color_color_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

26:                                               ; preds = %4
  tail call void @blend_color_hue_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

27:                                               ; preds = %4
  tail call void @blend_color_saturation_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

28:                                               ; preds = %4
  tail call void @blend_color_luminosity_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

29:                                               ; preds = %4
  %30 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %30, ptr %0, align 1, !tbaa !34
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %1, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %1, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %38, ptr %39, align 1, !tbaa !34
  br label %40

40:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mix_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !37 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %9, %12
  %14 = load i8, ptr %1, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = mul nuw nsw i32 %13, %15
  %17 = mul nuw nsw i32 %8, 255
  %18 = load i8, ptr %2, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %17, %19
  %21 = add nuw nsw i32 %20, %16
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %13, %24
  %26 = getelementptr inbounds i8, ptr %2, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %17, %28
  %30 = add nuw nsw i32 %29, %25
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %13, %33
  %35 = getelementptr inbounds i8, ptr %2, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %17, %37
  %39 = add nuw nsw i32 %38, %34
  %40 = add nuw nsw i32 %13, %17
  %41 = tail call fastcc i32 @divide_round_i(i32 noundef %21, i32 noundef %40) #10, !range !38
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %0, align 1, !tbaa !34
  %43 = tail call fastcc i32 @divide_round_i(i32 noundef %30, i32 noundef %40) #10, !range !38
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = tail call fastcc i32 @divide_round_i(i32 noundef %39, i32 noundef %40) #10, !range !38
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !34
  %49 = tail call fastcc i32 @divide_round_i(i32 noundef %40, i32 noundef 255) #10, !range !38
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %50, ptr %51, align 1, !tbaa !34
  br label %53

52:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %53

53:                                               ; preds = %52, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !39 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 255
  %12 = load i8, ptr %2, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, %8
  %15 = add nuw nsw i32 %14, %11
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 255
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, %8
  %24 = add nuw nsw i32 %23, %19
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, 255
  %29 = getelementptr inbounds i8, ptr %2, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, %8
  %33 = add nuw nsw i32 %32, %28
  %34 = tail call fastcc i32 @divide_round_i(i32 noundef %15, i32 noundef 255) #10, !range !38
  %35 = tail call fastcc i32 @min_ii(i32 noundef %34, i32 noundef 255) #10
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %0, align 1, !tbaa !34
  %37 = tail call fastcc i32 @divide_round_i(i32 noundef %24, i32 noundef 255) #10, !range !38
  %38 = tail call fastcc i32 @min_ii(i32 noundef %37, i32 noundef 255) #10
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = tail call fastcc i32 @divide_round_i(i32 noundef %33, i32 noundef 255) #10, !range !38
  %42 = tail call fastcc i32 @min_ii(i32 noundef %41, i32 noundef 255) #10
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %1, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %46, ptr %47, align 1, !tbaa !34
  br label %49

48:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %49

49:                                               ; preds = %48, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_sub_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !40 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 255
  %12 = load i8, ptr %2, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, %8
  %15 = sub nsw i32 %11, %14
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 255
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, %8
  %24 = sub nsw i32 %19, %23
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, 255
  %29 = getelementptr inbounds i8, ptr %2, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, %8
  %33 = sub nsw i32 %28, %32
  %34 = tail call fastcc i32 @divide_round_i(i32 noundef %15, i32 noundef 255) #10, !range !38
  %35 = tail call fastcc i32 @max_ii(i32 noundef %34, i32 noundef 0) #10, !range !41
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %0, align 1, !tbaa !34
  %37 = tail call fastcc i32 @divide_round_i(i32 noundef %24, i32 noundef 255) #10, !range !38
  %38 = tail call fastcc i32 @max_ii(i32 noundef %37, i32 noundef 0) #10, !range !41
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = tail call fastcc i32 @divide_round_i(i32 noundef %33, i32 noundef 255) #10, !range !38
  %42 = tail call fastcc i32 @max_ii(i32 noundef %41, i32 noundef 0) #10, !range !41
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %1, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %46, ptr %47, align 1, !tbaa !34
  br label %49

48:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %49

49:                                               ; preds = %48, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mul_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !42 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = load i8, ptr %1, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %9, 255
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %14, %8
  %16 = add nuw nsw i32 %15, %12
  %17 = mul nuw nsw i32 %16, %11
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = zext i8 %22 to i32
  %24 = mul nuw nsw i32 %23, %8
  %25 = add nuw nsw i32 %24, %12
  %26 = mul nuw nsw i32 %25, %20
  %27 = getelementptr inbounds i8, ptr %1, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %2, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %32, %8
  %34 = add nuw nsw i32 %33, %12
  %35 = mul nuw nsw i32 %34, %29
  %36 = tail call fastcc i32 @divide_round_i(i32 noundef %17, i32 noundef 65025) #10, !range !38
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %0, align 1, !tbaa !34
  %38 = tail call fastcc i32 @divide_round_i(i32 noundef %26, i32 noundef 65025) #10, !range !38
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = tail call fastcc i32 @divide_round_i(i32 noundef %35, i32 noundef 65025) #10, !range !38
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %42, ptr %43, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %1, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !34
  br label %48

47:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %48

48:                                               ; preds = %47, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_lighten_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !43 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = load i8, ptr %1, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %9, %11
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = tail call fastcc i32 @max_ii(i32 noundef %11, i32 noundef %14) #10, !range !41
  %16 = mul nsw i32 %15, %8
  %17 = add nsw i32 %16, %12
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %9, %20
  %22 = getelementptr inbounds i8, ptr %2, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = tail call fastcc i32 @max_ii(i32 noundef %20, i32 noundef %24) #10, !range !41
  %26 = mul nsw i32 %25, %8
  %27 = add nsw i32 %26, %21
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %9, %30
  %32 = getelementptr inbounds i8, ptr %2, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = tail call fastcc i32 @max_ii(i32 noundef %30, i32 noundef %34) #10, !range !41
  %36 = mul nsw i32 %35, %8
  %37 = add nsw i32 %36, %31
  %38 = tail call fastcc i32 @divide_round_i(i32 noundef %17, i32 noundef 255) #10, !range !38
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %0, align 1, !tbaa !34
  %40 = tail call fastcc i32 @divide_round_i(i32 noundef %27, i32 noundef 255) #10, !range !38
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !34
  %43 = tail call fastcc i32 @divide_round_i(i32 noundef %37, i32 noundef 255) #10, !range !38
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %1, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %47, ptr %48, align 1, !tbaa !34
  br label %50

49:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %50

50:                                               ; preds = %49, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_darken_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !44 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = load i8, ptr %1, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %9, %11
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = tail call fastcc i32 @min_ii(i32 noundef %11, i32 noundef %14) #10
  %16 = mul nsw i32 %15, %8
  %17 = add nsw i32 %16, %12
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %9, %20
  %22 = getelementptr inbounds i8, ptr %2, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = tail call fastcc i32 @min_ii(i32 noundef %20, i32 noundef %24) #10
  %26 = mul nsw i32 %25, %8
  %27 = add nsw i32 %26, %21
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %9, %30
  %32 = getelementptr inbounds i8, ptr %2, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = tail call fastcc i32 @min_ii(i32 noundef %30, i32 noundef %34) #10
  %36 = mul nsw i32 %35, %8
  %37 = add nsw i32 %36, %31
  %38 = tail call fastcc i32 @divide_round_i(i32 noundef %17, i32 noundef 255) #10, !range !38
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %0, align 1, !tbaa !34
  %40 = tail call fastcc i32 @divide_round_i(i32 noundef %27, i32 noundef 255) #10, !range !38
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !34
  %43 = tail call fastcc i32 @divide_round_i(i32 noundef %37, i32 noundef 255) #10, !range !38
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %1, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %47, ptr %48, align 1, !tbaa !34
  br label %50

49:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %50

50:                                               ; preds = %49, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_erase_alpha_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !45 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %9, ptr %0, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %14, ptr %15, align 1, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %4, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %8
  %22 = tail call fastcc i32 @divide_round_i(i32 noundef %21, i32 noundef 255) #10, !range !38
  %23 = sub nsw i32 %18, %22
  %24 = tail call fastcc i32 @max_ii(i32 noundef %23, i32 noundef 0) #10, !range !41
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %25, ptr %26, align 1, !tbaa !34
  br label %28

27:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %28

28:                                               ; preds = %27, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_alpha_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !46 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %9, ptr %0, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %14, ptr %15, align 1, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %4, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %8
  %22 = tail call fastcc i32 @divide_round_i(i32 noundef %21, i32 noundef 255) #10, !range !38
  %23 = add nsw i32 %22, %18
  %24 = tail call fastcc i32 @min_ii(i32 noundef %23, i32 noundef 255) #10
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %25, ptr %26, align 1, !tbaa !34
  br label %28

27:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %28

28:                                               ; preds = %27, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_overlay_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !47 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i64 [ 2, %8 ], [ %41, %32 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = shl nuw nsw i32 %14, 1
  br i1 %15, label %17, label %26

17:                                               ; preds = %10
  %18 = sub nsw i32 509, %16
  %19 = getelementptr inbounds i8, ptr %2, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = xor i8 %20, -1
  %22 = zext i8 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = sdiv i32 %23, -255
  %25 = add nsw i32 %24, 255
  br label %32

26:                                               ; preds = %10
  %27 = getelementptr inbounds i8, ptr %2, i64 %11
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %16, %29
  %31 = lshr i32 %30, 8
  br label %32

32:                                               ; preds = %26, %17
  %33 = phi i32 [ %25, %17 ], [ %31, %26 ]
  %34 = mul nuw nsw i32 %33, %6
  %35 = mul nuw nsw i32 %9, %14
  %36 = add nuw nsw i32 %34, %35
  %37 = udiv i32 %36, 255
  %38 = tail call fastcc i32 @min_ii(i32 noundef %37, i32 noundef 255) #10
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = add nsw i64 %11, -1
  %42 = icmp eq i64 %11, 0
  br i1 %42, label %44, label %10, !llvm.loop !48

43:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %44

44:                                               ; preds = %32, %43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_hardlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !50 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %33
  %11 = phi i64 [ 2, %8 ], [ %43, %33 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = shl nuw nsw i32 %14, 1
  br i1 %15, label %17, label %27

17:                                               ; preds = %10
  %18 = sub nsw i32 509, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = xor i8 %20, -1
  %22 = zext i8 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = sdiv i32 %23, -255
  %25 = add nsw i32 %24, 255
  %26 = zext i8 %20 to i32
  br label %33

27:                                               ; preds = %10
  %28 = getelementptr inbounds i8, ptr %1, i64 %11
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %16, %30
  %32 = lshr i32 %31, 8
  br label %33

33:                                               ; preds = %27, %17
  %34 = phi i32 [ %30, %27 ], [ %26, %17 ]
  %35 = phi i32 [ %32, %27 ], [ %25, %17 ]
  %36 = mul nuw nsw i32 %35, %6
  %37 = mul nuw nsw i32 %9, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = udiv i32 %38, 255
  %40 = tail call fastcc i32 @min_ii(i32 noundef %39, i32 noundef 255) #10
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %41, ptr %42, align 1, !tbaa !34
  %43 = add nsw i64 %11, -1
  %44 = icmp eq i64 %11, 0
  br i1 %44, label %46, label %10, !llvm.loop !51

45:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %46

46:                                               ; preds = %33, %45
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_burn_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !52 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %26
  %11 = phi i64 [ 2, %8 ], [ %35, %26 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds i8, ptr %1, i64 %11
  %16 = load i8, ptr %15, align 1, !tbaa !34
  br i1 %14, label %26, label %17

17:                                               ; preds = %10
  %18 = xor i8 %16, -1
  %19 = zext i8 %18 to i16
  %20 = mul nuw i16 %19, 255
  %21 = zext i8 %13 to i16
  %22 = udiv i16 %20, %21
  %23 = zext i16 %22 to i32
  %24 = sub nsw i32 255, %23
  %25 = tail call fastcc i32 @max_ii(i32 noundef %24, i32 noundef 0) #10, !range !41
  br label %26

26:                                               ; preds = %10, %17
  %27 = phi i32 [ %25, %17 ], [ 0, %10 ]
  %28 = mul nsw i32 %27, %6
  %29 = zext i8 %16 to i32
  %30 = mul nuw nsw i32 %9, %29
  %31 = add nsw i32 %30, %28
  %32 = sdiv i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %33, ptr %34, align 1, !tbaa !34
  %35 = add nsw i64 %11, -1
  %36 = icmp eq i64 %11, 0
  br i1 %36, label %38, label %10, !llvm.loop !53

37:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %38

38:                                               ; preds = %26, %37
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_linearburn_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !54 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds i8, ptr %2, i64 %12
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %15, -255
  %20 = add nsw i32 %19, %18
  %21 = tail call fastcc i32 @max_ii(i32 noundef %20, i32 noundef 0) #10, !range !41
  %22 = mul nsw i32 %21, %6
  %23 = mul nuw nsw i32 %9, %15
  %24 = add nsw i32 %22, %23
  %25 = sdiv i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %26, ptr %27, align 1, !tbaa !34
  %28 = icmp eq i64 %12, 0
  br i1 %28, label %30, label %10, !llvm.loop !55

29:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %30

30:                                               ; preds = %10, %29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_dodge_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !56 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi i64 [ 2, %8 ], [ %34, %25 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, -1
  %15 = getelementptr inbounds i8, ptr %1, i64 %11
  %16 = load i8, ptr %15, align 1, !tbaa !34
  br i1 %14, label %25, label %17

17:                                               ; preds = %10
  %18 = zext i8 %16 to i16
  %19 = mul nuw i16 %18, 255
  %20 = xor i8 %13, -1
  %21 = zext i8 %20 to i16
  %22 = udiv i16 %19, %21
  %23 = zext i16 %22 to i32
  %24 = tail call fastcc i32 @min_ii(i32 noundef %23, i32 noundef 255) #10
  br label %25

25:                                               ; preds = %10, %17
  %26 = phi i32 [ %24, %17 ], [ 255, %10 ]
  %27 = mul nsw i32 %26, %6
  %28 = zext i8 %16 to i32
  %29 = mul nuw nsw i32 %9, %28
  %30 = add nsw i32 %29, %27
  %31 = sdiv i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %32, ptr %33, align 1, !tbaa !34
  %34 = add nsw i64 %11, -1
  %35 = icmp eq i64 %11, 0
  br i1 %35, label %37, label %10, !llvm.loop !57

36:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %37

37:                                               ; preds = %25, %36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_screen_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !58 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = xor i8 %14, -1
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds i8, ptr %2, i64 %12
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = xor i8 %18, -1
  %20 = zext i8 %19 to i16
  %21 = mul nuw i16 %20, %16
  %22 = udiv i16 %21, 255
  %23 = zext nneg i16 %22 to i32
  %24 = sub nuw nsw i32 255, %23
  %25 = tail call fastcc i32 @max_ii(i32 noundef %24, i32 noundef 0) #10, !range !41
  %26 = mul nsw i32 %25, %6
  %27 = zext i8 %14 to i32
  %28 = mul nuw nsw i32 %9, %27
  %29 = add nsw i32 %26, %28
  %30 = sdiv i32 %29, 255
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = icmp eq i64 %12, 0
  br i1 %33, label %35, label %10, !llvm.loop !59

34:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %35

35:                                               ; preds = %10, %34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_softlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !60 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i64 [ 2, %8 ], [ %40, %32 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp ult i8 %13, 127
  %16 = getelementptr inbounds i8, ptr %2, i64 %11
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = lshr i8 %17, 1
  %19 = shl nuw nsw i32 %14, 1
  br i1 %15, label %20, label %25

20:                                               ; preds = %10
  %21 = add nuw i8 %18, 64
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %19, %22
  %24 = udiv i32 %23, 255
  br label %32

25:                                               ; preds = %10
  %26 = sub nuw i8 -65, %18
  %27 = zext i8 %26 to i32
  %28 = xor i32 %19, 510
  %29 = mul nuw nsw i32 %28, %27
  %30 = udiv i32 %29, 255
  %31 = sub nsw i32 255, %30
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i32 [ %24, %20 ], [ %31, %25 ]
  %34 = mul nuw nsw i32 %33, %6
  %35 = mul nuw nsw i32 %9, %14
  %36 = add nuw nsw i32 %34, %35
  %37 = udiv i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %38, ptr %39, align 1, !tbaa !34
  %40 = add nsw i64 %11, -1
  %41 = icmp eq i64 %11, 0
  br i1 %41, label %43, label %10, !llvm.loop !61

42:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %43

43:                                               ; preds = %32, %42
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_pinlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !62 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ 2, %8 ], [ %37, %28 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = shl nuw nsw i32 %14, 1
  br i1 %15, label %17, label %23

17:                                               ; preds = %10
  %18 = add nsw i32 %16, -254
  %19 = getelementptr inbounds i8, ptr %1, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = tail call fastcc i32 @max_ii(i32 noundef %18, i32 noundef %21) #10, !range !41
  br label %28

23:                                               ; preds = %10
  %24 = getelementptr inbounds i8, ptr %1, i64 %11
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = tail call fastcc i32 @min_ii(i32 noundef %16, i32 noundef %26) #10
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i32 [ %26, %23 ], [ %21, %17 ]
  %30 = phi i32 [ %27, %23 ], [ %22, %17 ]
  %31 = mul nsw i32 %30, %6
  %32 = mul nuw nsw i32 %9, %29
  %33 = add nsw i32 %32, %31
  %34 = sdiv i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = add nsw i64 %11, -1
  %38 = icmp eq i64 %11, 0
  br i1 %38, label %40, label %10, !llvm.loop !63

39:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %40

40:                                               ; preds = %28, %39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_linearlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !64 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ 2, %8 ], [ %36, %28 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = getelementptr inbounds i8, ptr %1, i64 %11
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %14, 1
  br i1 %15, label %20, label %24

20:                                               ; preds = %10
  %21 = add nsw i32 %19, -254
  %22 = add nuw nsw i32 %21, %18
  %23 = tail call fastcc i32 @min_ii(i32 noundef %22, i32 noundef 255) #10
  br label %28

24:                                               ; preds = %10
  %25 = or disjoint i32 %19, -255
  %26 = add nsw i32 %25, %18
  %27 = tail call fastcc i32 @max_ii(i32 noundef %26, i32 noundef 0) #10, !range !41
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %27, %24 ], [ %23, %20 ]
  %30 = mul nsw i32 %29, %6
  %31 = mul nuw nsw i32 %9, %18
  %32 = add nsw i32 %31, %30
  %33 = sdiv i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = add nsw i64 %11, -1
  %37 = icmp eq i64 %11, 0
  br i1 %37, label %39, label %10, !llvm.loop !65

38:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %39

39:                                               ; preds = %28, %38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_vividlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !66 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %38
  %11 = phi i64 [ 2, %8 ], [ %49, %38 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i16
  switch i8 %13, label %16 [
    i8 -1, label %38
    i8 0, label %15
  ]

15:                                               ; preds = %10
  br label %38

16:                                               ; preds = %10
  %17 = icmp slt i8 %13, 0
  %18 = getelementptr inbounds i8, ptr %1, i64 %11
  %19 = load i8, ptr %18, align 1, !tbaa !34
  br i1 %17, label %20, label %28

20:                                               ; preds = %16
  %21 = zext i8 %19 to i16
  %22 = mul nuw i16 %21, 255
  %23 = shl nuw nsw i16 %14, 1
  %24 = xor i16 %23, 510
  %25 = udiv i16 %22, %24
  %26 = zext i16 %25 to i32
  %27 = tail call fastcc i32 @min_ii(i32 noundef %26, i32 noundef 255) #10
  br label %38

28:                                               ; preds = %16
  %29 = xor i8 %19, -1
  %30 = zext i8 %29 to i16
  %31 = mul nuw i16 %30, 255
  %32 = shl nuw i8 %13, 1
  %33 = zext i8 %32 to i16
  %34 = udiv i16 %31, %33
  %35 = zext nneg i16 %34 to i32
  %36 = sub nsw i32 255, %35
  %37 = tail call fastcc i32 @max_ii(i32 noundef %36, i32 noundef 0) #10, !range !41
  br label %38

38:                                               ; preds = %10, %15, %28, %20
  %39 = phi i32 [ 0, %15 ], [ %27, %20 ], [ %37, %28 ], [ 255, %10 ]
  %40 = mul nsw i32 %39, %6
  %41 = getelementptr inbounds i8, ptr %1, i64 %11
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %9, %43
  %45 = add nsw i32 %44, %40
  %46 = sdiv i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %47, ptr %48, align 1, !tbaa !34
  %49 = add nsw i64 %11, -1
  %50 = icmp eq i64 %11, 0
  br i1 %50, label %52, label %10, !llvm.loop !67

51:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %52

52:                                               ; preds = %38, %51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_difference_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !68 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds i8, ptr %2, i64 %12
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 %15, %18
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = mul nuw nsw i32 %20, %6
  %22 = mul nuw nsw i32 %9, %15
  %23 = add nuw nsw i32 %21, %22
  %24 = udiv i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %25, ptr %26, align 1, !tbaa !34
  %27 = icmp eq i64 %12, 0
  br i1 %27, label %29, label %10, !llvm.loop !69

28:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %29

29:                                               ; preds = %10, %28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_exclusion_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !70 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 1
  %17 = add nsw i32 %16, -254
  %18 = getelementptr inbounds i8, ptr %2, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, -127
  %22 = mul nsw i32 %17, %21
  %23 = sdiv i32 %22, -255
  %24 = add nsw i32 %23, 127
  %25 = mul nsw i32 %24, %6
  %26 = mul nuw nsw i32 %9, %15
  %27 = add nsw i32 %25, %26
  %28 = sdiv i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %29, ptr %30, align 1, !tbaa !34
  %31 = icmp eq i64 %12, 0
  br i1 %31, label %33, label %10, !llvm.loop !71

32:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %33

33:                                               ; preds = %10, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_color_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !72 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = xor i32 %17, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %41 = load float, ptr %7, align 4, !tbaa !73
  store float %41, ptr %4, align 4, !tbaa !73
  %42 = load float, ptr %8, align 4, !tbaa !73
  store float %42, ptr %5, align 4, !tbaa !73
  %43 = load float, ptr %6, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %41, float noundef %42, float noundef %43, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %44 = load float, ptr %10, align 4, !tbaa !73
  %45 = fmul float %44, 2.550000e+02
  %46 = fptosi float %45 to i32
  %47 = mul nsw i32 %46, %17
  %48 = load i8, ptr %1, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %18, %49
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %0, align 1, !tbaa !34
  %54 = load float, ptr %11, align 4, !tbaa !73
  %55 = fmul float %54, 2.550000e+02
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %56, %17
  %58 = load i8, ptr %22, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %18, %59
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = load float, ptr %12, align 4, !tbaa !73
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  %68 = mul nsw i32 %67, %17
  %69 = load i8, ptr %26, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %18, %70
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %77

76:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %77

77:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_hue_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !75 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = xor i32 %17, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %41 = load float, ptr %7, align 4, !tbaa !73
  store float %41, ptr %4, align 4, !tbaa !73
  %42 = load float, ptr %5, align 4, !tbaa !73
  %43 = load float, ptr %6, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %41, float noundef %42, float noundef %43, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %44 = load float, ptr %10, align 4, !tbaa !73
  %45 = fmul float %44, 2.550000e+02
  %46 = fptosi float %45 to i32
  %47 = mul nsw i32 %46, %17
  %48 = load i8, ptr %1, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %18, %49
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %0, align 1, !tbaa !34
  %54 = load float, ptr %11, align 4, !tbaa !73
  %55 = fmul float %54, 2.550000e+02
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %56, %17
  %58 = load i8, ptr %22, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %18, %59
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = load float, ptr %12, align 4, !tbaa !73
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  %68 = mul nsw i32 %67, %17
  %69 = load i8, ptr %26, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %18, %70
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %77

76:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %77

77:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_saturation_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !76 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %81, label %17

17:                                               ; preds = %3
  %18 = xor i32 %15, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %41 = load float, ptr %5, align 4, !tbaa !73
  %42 = fcmp ogt float %41, 0x3F40624DE0000000
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = load float, ptr %8, align 4, !tbaa !73
  store float %44, ptr %5, align 4, !tbaa !73
  br label %45

45:                                               ; preds = %43, %17
  %46 = phi float [ %44, %43 ], [ %41, %17 ]
  %47 = load float, ptr %4, align 4, !tbaa !73
  %48 = load float, ptr %6, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %47, float noundef %46, float noundef %48, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %49 = load float, ptr %10, align 4, !tbaa !73
  %50 = fmul float %49, 2.550000e+02
  %51 = fptosi float %50 to i32
  %52 = mul nsw i32 %51, %15
  %53 = load i8, ptr %1, align 1, !tbaa !34
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %18, %54
  %56 = add nsw i32 %52, %55
  %57 = sdiv i32 %56, 255
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %0, align 1, !tbaa !34
  %59 = load float, ptr %11, align 4, !tbaa !73
  %60 = fmul float %59, 2.550000e+02
  %61 = fptosi float %60 to i32
  %62 = mul nsw i32 %61, %15
  %63 = load i8, ptr %22, align 1, !tbaa !34
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %18, %64
  %66 = add nsw i32 %62, %65
  %67 = sdiv i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !34
  %70 = load float, ptr %12, align 4, !tbaa !73
  %71 = fmul float %70, 2.550000e+02
  %72 = fptosi float %71 to i32
  %73 = mul nsw i32 %72, %15
  %74 = load i8, ptr %26, align 1, !tbaa !34
  %75 = zext i8 %74 to i32
  %76 = mul nuw nsw i32 %18, %75
  %77 = add nsw i32 %73, %76
  %78 = sdiv i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %79, ptr %80, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %82

81:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %82

82:                                               ; preds = %81, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_luminosity_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !77 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = xor i32 %17, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %41 = load float, ptr %9, align 4, !tbaa !73
  store float %41, ptr %6, align 4, !tbaa !73
  %42 = load float, ptr %4, align 4, !tbaa !73
  %43 = load float, ptr %5, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %42, float noundef %43, float noundef %41, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %44 = load float, ptr %10, align 4, !tbaa !73
  %45 = fmul float %44, 2.550000e+02
  %46 = fptosi float %45 to i32
  %47 = mul nsw i32 %46, %17
  %48 = load i8, ptr %1, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %18, %49
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %0, align 1, !tbaa !34
  %54 = load float, ptr %11, align 4, !tbaa !73
  %55 = fmul float %54, 2.550000e+02
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %56, %17
  %58 = load i8, ptr %22, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %18, %59
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = load float, ptr %12, align 4, !tbaa !73
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  %68 = mul nsw i32 %67, %17
  %69 = load i8, ptr %26, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %18, %70
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %77

76:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4_char(ptr noundef %0, ptr noundef %1) #10
  br label %77

77:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_blend_color_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %3, label %29 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 17, label %21
    i32 16, label %22
    i32 18, label %23
    i32 19, label %24
    i32 23, label %25
    i32 20, label %26
    i32 21, label %27
    i32 22, label %28
  ]

5:                                                ; preds = %4
  tail call void @blend_color_mix_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

6:                                                ; preds = %4
  tail call void @blend_color_add_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

7:                                                ; preds = %4
  tail call void @blend_color_sub_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

8:                                                ; preds = %4
  tail call void @blend_color_mul_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

9:                                                ; preds = %4
  tail call void @blend_color_lighten_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

10:                                               ; preds = %4
  tail call void @blend_color_darken_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

11:                                               ; preds = %4
  tail call void @blend_color_erase_alpha_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

12:                                               ; preds = %4
  tail call void @blend_color_add_alpha_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

13:                                               ; preds = %4
  tail call void @blend_color_overlay_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

14:                                               ; preds = %4
  tail call void @blend_color_hardlight_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

15:                                               ; preds = %4
  tail call void @blend_color_burn_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

16:                                               ; preds = %4
  tail call void @blend_color_linearburn_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

17:                                               ; preds = %4
  tail call void @blend_color_dodge_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

18:                                               ; preds = %4
  tail call void @blend_color_screen_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

19:                                               ; preds = %4
  tail call void @blend_color_softlight_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

20:                                               ; preds = %4
  tail call void @blend_color_pinlight_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

21:                                               ; preds = %4
  tail call void @blend_color_linearlight_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

22:                                               ; preds = %4
  tail call void @blend_color_vividlight_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

23:                                               ; preds = %4
  tail call void @blend_color_difference_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

24:                                               ; preds = %4
  tail call void @blend_color_exclusion_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

25:                                               ; preds = %4
  tail call void @blend_color_color_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

26:                                               ; preds = %4
  tail call void @blend_color_hue_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

27:                                               ; preds = %4
  tail call void @blend_color_saturation_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

28:                                               ; preds = %4
  tail call void @blend_color_luminosity_float(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %40

29:                                               ; preds = %4
  %30 = load float, ptr %1, align 4, !tbaa !73
  store float %30, ptr %0, align 4, !tbaa !73
  %31 = getelementptr inbounds float, ptr %1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !73
  %33 = getelementptr inbounds float, ptr %0, i64 1
  store float %32, ptr %33, align 4, !tbaa !73
  %34 = getelementptr inbounds float, ptr %1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !73
  %36 = getelementptr inbounds float, ptr %0, i64 2
  store float %35, ptr %36, align 4, !tbaa !73
  %37 = getelementptr inbounds float, ptr %1, i64 3
  %38 = load float, ptr %37, align 4, !tbaa !73
  %39 = getelementptr inbounds float, ptr %0, i64 3
  store float %38, ptr %39, align 4, !tbaa !73
  br label %40

40:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mix_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !78 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !73
  %10 = load float, ptr %2, align 4, !tbaa !73
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %10)
  store float %11, ptr %0, align 4, !tbaa !73
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !73
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %15)
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !73
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !73
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !73
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !73
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !73
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %5)
  %27 = getelementptr inbounds float, ptr %0, i64 3
  store float %26, ptr %27, align 4, !tbaa !73
  br label %29

28:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %29

29:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !79 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load float, ptr %1, align 4, !tbaa !73
  %9 = load float, ptr %2, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %8)
  store float %12, ptr %0, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = load float, ptr %10, align 4, !tbaa !73
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %14)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !73
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !73
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !73
  %24 = load float, ptr %10, align 4, !tbaa !73
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %21)
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !73
  %27 = load float, ptr %10, align 4, !tbaa !73
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !73
  br label %30

29:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %30

30:                                               ; preds = %29, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_sub_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !80 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = load float, ptr %1, align 4, !tbaa !73
  %9 = load float, ptr %2, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fneg float %9
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %11, float %8)
  %14 = tail call fastcc float @max_ff(float noundef %13, float noundef 0.000000e+00) #10
  store float %14, ptr %0, align 4, !tbaa !73
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !73
  %19 = load float, ptr %10, align 4, !tbaa !73
  %20 = fneg float %18
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float %16)
  %22 = tail call fastcc float @max_ff(float noundef %21, float noundef 0.000000e+00) #10
  %23 = getelementptr inbounds float, ptr %0, i64 1
  store float %22, ptr %23, align 4, !tbaa !73
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !73
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = load float, ptr %10, align 4, !tbaa !73
  %29 = fneg float %27
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %28, float %25)
  %31 = tail call fastcc float @max_ff(float noundef %30, float noundef 0.000000e+00) #10
  %32 = getelementptr inbounds float, ptr %0, i64 2
  store float %31, ptr %32, align 4, !tbaa !73
  %33 = load float, ptr %10, align 4, !tbaa !73
  %34 = getelementptr inbounds float, ptr %0, i64 3
  store float %33, ptr %34, align 4, !tbaa !73
  br label %36

35:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %36

36:                                               ; preds = %35, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !81 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !73
  %10 = load float, ptr %2, align 4, !tbaa !73
  %11 = fmul float %9, %10
  %12 = getelementptr inbounds float, ptr %1, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !73
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %14)
  store float %15, ptr %0, align 4, !tbaa !73
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !73
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !73
  %20 = fmul float %17, %19
  %21 = load float, ptr %12, align 4, !tbaa !73
  %22 = fmul float %20, %21
  %23 = tail call float @llvm.fmuladd.f32(float %8, float %17, float %22)
  %24 = getelementptr inbounds float, ptr %0, i64 1
  store float %23, ptr %24, align 4, !tbaa !73
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !73
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !73
  %29 = fmul float %26, %28
  %30 = load float, ptr %12, align 4, !tbaa !73
  %31 = fmul float %29, %30
  %32 = tail call float @llvm.fmuladd.f32(float %8, float %26, float %31)
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !73
  %34 = load float, ptr %12, align 4, !tbaa !73
  %35 = getelementptr inbounds float, ptr %0, i64 3
  store float %34, ptr %35, align 4, !tbaa !73
  br label %37

36:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %37

37:                                               ; preds = %36, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_lighten_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !82 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = getelementptr inbounds float, ptr %1, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fdiv float %10, %5
  %12 = load float, ptr %1, align 4, !tbaa !73
  %13 = load float, ptr %2, align 4, !tbaa !73
  %14 = fmul float %11, %13
  %15 = tail call fastcc float @max_ff(float noundef %12, float noundef %14) #10
  %16 = fmul float %5, %15
  %17 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %16)
  store float %17, ptr %0, align 4, !tbaa !73
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !73
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !73
  %22 = fmul float %11, %21
  %23 = tail call fastcc float @max_ff(float noundef %19, float noundef %22) #10
  %24 = fmul float %5, %23
  %25 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !73
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !73
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = fmul float %11, %30
  %32 = tail call fastcc float @max_ff(float noundef %28, float noundef %31) #10
  %33 = fmul float %5, %32
  %34 = tail call float @llvm.fmuladd.f32(float %8, float %28, float %33)
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !73
  %36 = load float, ptr %9, align 4, !tbaa !73
  %37 = getelementptr inbounds float, ptr %0, i64 3
  store float %36, ptr %37, align 4, !tbaa !73
  br label %39

38:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %39

39:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_darken_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !83 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = getelementptr inbounds float, ptr %1, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fdiv float %10, %5
  %12 = load float, ptr %1, align 4, !tbaa !73
  %13 = load float, ptr %2, align 4, !tbaa !73
  %14 = fmul float %11, %13
  %15 = tail call fastcc float @min_ff(float noundef %12, float noundef %14) #10
  %16 = fmul float %5, %15
  %17 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %16)
  store float %17, ptr %0, align 4, !tbaa !73
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !73
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !73
  %22 = fmul float %11, %21
  %23 = tail call fastcc float @min_ff(float noundef %19, float noundef %22) #10
  %24 = fmul float %5, %23
  %25 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !73
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !73
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = fmul float %11, %30
  %32 = tail call fastcc float @min_ff(float noundef %28, float noundef %31) #10
  %33 = fmul float %5, %32
  %34 = tail call float @llvm.fmuladd.f32(float %8, float %28, float %33)
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !73
  %36 = load float, ptr %9, align 4, !tbaa !73
  %37 = getelementptr inbounds float, ptr %0, i64 3
  store float %36, ptr %37, align 4, !tbaa !73
  br label %39

38:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %39

39:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_erase_alpha_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !84 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = fsub float %9, %5
  %13 = tail call fastcc float @max_ff(float noundef %12, float noundef 0.000000e+00) #10
  %14 = fcmp ugt float %13, 0x3F40624DE0000000
  %15 = select i1 %14, float %13, float 0.000000e+00
  %16 = fdiv float %15, %9
  %17 = load float, ptr %1, align 4, !tbaa !73
  %18 = fmul float %17, %16
  store float %18, ptr %0, align 4, !tbaa !73
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = fmul float %20, %16
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !73
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !73
  %25 = fmul float %16, %24
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !73
  %27 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %27, align 4, !tbaa !73
  br label %29

28:                                               ; preds = %7, %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %29

29:                                               ; preds = %28, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_alpha_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !85 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = fcmp olt float %9, 1.000000e+00
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = fadd float %5, %9
  %13 = tail call fastcc float @min_ff(float noundef %12, float noundef 1.000000e+00) #10
  %14 = fcmp ult float %13, 0x3FEFFBE760000000
  %15 = select i1 %14, float %13, float 1.000000e+00
  %16 = fcmp ogt float %9, 0.000000e+00
  %17 = fdiv float %15, %9
  %18 = select i1 %16, float %17, float 1.000000e+00
  %19 = load float, ptr %1, align 4, !tbaa !73
  %20 = fmul float %19, %18
  store float %20, ptr %0, align 4, !tbaa !73
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = fmul float %22, %18
  %24 = getelementptr inbounds float, ptr %0, i64 1
  store float %23, ptr %24, align 4, !tbaa !73
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !73
  %27 = fmul float %18, %26
  %28 = getelementptr inbounds float, ptr %0, i64 2
  store float %27, ptr %28, align 4, !tbaa !73
  %29 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %29, align 4, !tbaa !73
  br label %31

30:                                               ; preds = %7, %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %31

31:                                               ; preds = %30, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_overlay_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !86 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 2, %9 ], [ %35, %29 ]
  %13 = getelementptr inbounds float, ptr %1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = fadd float %14, -5.000000e-01
  %18 = tail call float @llvm.fmuladd.f32(float %17, float -2.000000e+00, float 1.000000e+00)
  %19 = getelementptr inbounds float, ptr %2, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = fsub float 1.000000e+00, %20
  %22 = fneg float %18
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %21, float 1.000000e+00)
  br label %29

24:                                               ; preds = %11
  %25 = fmul float %14, 2.000000e+00
  %26 = getelementptr inbounds float, ptr %2, i64 %12
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = fmul float %25, %27
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi float [ %23, %16 ], [ %28, %24 ]
  %31 = fmul float %10, %14
  %32 = tail call float @llvm.fmuladd.f32(float %30, float %5, float %31)
  %33 = tail call fastcc float @min_ff(float noundef %32, float noundef 1.000000e+00) #10
  %34 = getelementptr inbounds float, ptr %0, i64 %12
  store float %33, ptr %34, align 4, !tbaa !73
  %35 = add nsw i64 %12, -1
  %36 = icmp eq i64 %12, 0
  br i1 %36, label %38, label %11, !llvm.loop !87

37:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %38

38:                                               ; preds = %29, %37
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_hardlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !88 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 2, %9 ], [ %36, %29 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = fadd float %14, -5.000000e-01
  %18 = tail call float @llvm.fmuladd.f32(float %17, float -2.000000e+00, float 1.000000e+00)
  %19 = getelementptr inbounds float, ptr %1, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = fsub float 1.000000e+00, %20
  %22 = fneg float %18
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %21, float 1.000000e+00)
  br label %29

24:                                               ; preds = %11
  %25 = fmul float %14, 2.000000e+00
  %26 = getelementptr inbounds float, ptr %1, i64 %12
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = fmul float %25, %27
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi float [ %20, %16 ], [ %27, %24 ]
  %31 = phi float [ %23, %16 ], [ %28, %24 ]
  %32 = fmul float %10, %30
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %5, float %32)
  %34 = tail call fastcc float @min_ff(float noundef %33, float noundef 1.000000e+00) #10
  %35 = getelementptr inbounds float, ptr %0, i64 %12
  store float %34, ptr %35, align 4, !tbaa !73
  %36 = add nsw i64 %12, -1
  %37 = icmp eq i64 %12, 0
  br i1 %37, label %39, label %11, !llvm.loop !89

38:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %39

39:                                               ; preds = %29, %38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_burn_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !90 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i64 [ 2, %9 ], [ %28, %23 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = getelementptr inbounds float, ptr %1, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !73
  br i1 %15, label %23, label %18

18:                                               ; preds = %11
  %19 = fsub float 1.000000e+00, %17
  %20 = fdiv float %19, %14
  %21 = fsub float 1.000000e+00, %20
  %22 = tail call fastcc float @max_ff(float noundef %21, float noundef 0.000000e+00) #10
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi float [ %22, %18 ], [ 0.000000e+00, %11 ]
  %25 = fmul float %10, %17
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %5, float %25)
  %27 = getelementptr inbounds float, ptr %0, i64 %12
  store float %26, ptr %27, align 4, !tbaa !73
  %28 = add nsw i64 %12, -1
  %29 = icmp eq i64 %12, 0
  br i1 %29, label %31, label %11, !llvm.loop !91

30:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %31

31:                                               ; preds = %23, %30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_linearburn_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !92 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = getelementptr inbounds float, ptr %2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !73
  %18 = fadd float %15, %17
  %19 = fadd float %18, -1.000000e+00
  %20 = tail call fastcc float @max_ff(float noundef %19, float noundef 0.000000e+00) #10
  %21 = fmul float %10, %15
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %5, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 %13
  store float %22, ptr %23, align 4, !tbaa !73
  %24 = icmp eq i64 %13, 0
  br i1 %24, label %26, label %11, !llvm.loop !93

25:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %26

26:                                               ; preds = %11, %25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_dodge_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !94 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 2, %9 ], [ %27, %22 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp ult float %14, 1.000000e+00
  %16 = getelementptr inbounds float, ptr %1, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !73
  br i1 %15, label %18, label %22

18:                                               ; preds = %11
  %19 = fsub float 1.000000e+00, %14
  %20 = fdiv float %17, %19
  %21 = tail call fastcc float @min_ff(float noundef %20, float noundef 1.000000e+00) #10
  br label %22

22:                                               ; preds = %11, %18
  %23 = phi float [ %21, %18 ], [ 1.000000e+00, %11 ]
  %24 = fmul float %10, %17
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %5, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 %12
  store float %25, ptr %26, align 4, !tbaa !73
  %27 = add nsw i64 %12, -1
  %28 = icmp eq i64 %12, 0
  br i1 %28, label %30, label %11, !llvm.loop !95

29:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %30

30:                                               ; preds = %22, %29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_screen_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !96 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = fsub float 1.000000e+00, %15
  %17 = getelementptr inbounds float, ptr %2, i64 %13
  %18 = load float, ptr %17, align 4, !tbaa !73
  %19 = fsub float 1.000000e+00, %18
  %20 = fneg float %16
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float 1.000000e+00)
  %22 = tail call fastcc float @max_ff(float noundef %21, float noundef 0.000000e+00) #10
  %23 = fmul float %10, %15
  %24 = tail call float @llvm.fmuladd.f32(float %22, float %5, float %23)
  %25 = getelementptr inbounds float, ptr %0, i64 %13
  store float %24, ptr %25, align 4, !tbaa !73
  %26 = icmp eq i64 %13, 0
  br i1 %26, label %28, label %11, !llvm.loop !97

27:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %28

28:                                               ; preds = %11, %27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_softlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !98 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %26
  %12 = phi i64 [ 2, %9 ], [ %31, %26 ]
  %13 = getelementptr inbounds float, ptr %1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp olt float %14, 5.000000e-01
  %16 = getelementptr inbounds float, ptr %2, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !73
  %18 = fadd float %17, 5.000000e-01
  br i1 %15, label %19, label %21

19:                                               ; preds = %11
  %20 = fmul float %14, %18
  br label %26

21:                                               ; preds = %11
  %22 = fsub float 1.000000e+00, %18
  %23 = fsub float 1.000000e+00, %14
  %24 = fneg float %22
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float 1.000000e+00)
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi float [ %20, %19 ], [ %25, %21 ]
  %28 = fmul float %10, %14
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %5, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 %12
  store float %29, ptr %30, align 4, !tbaa !73
  %31 = add nsw i64 %12, -1
  %32 = icmp eq i64 %12, 0
  br i1 %32, label %34, label %11, !llvm.loop !99

33:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %34

34:                                               ; preds = %26, %33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_pinlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !100 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %27
  %12 = phi i64 [ 2, %9 ], [ %33, %27 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = fadd float %14, -5.000000e-01
  %18 = fmul float %17, 2.000000e+00
  %19 = getelementptr inbounds float, ptr %1, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = tail call fastcc float @max_ff(float noundef %18, float noundef %20) #10
  br label %27

22:                                               ; preds = %11
  %23 = fmul float %14, 2.000000e+00
  %24 = getelementptr inbounds float, ptr %1, i64 %12
  %25 = load float, ptr %24, align 4, !tbaa !73
  %26 = tail call fastcc float @min_ff(float noundef %23, float noundef %25) #10
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi float [ %20, %16 ], [ %25, %22 ]
  %29 = phi float [ %21, %16 ], [ %26, %22 ]
  %30 = fmul float %10, %28
  %31 = tail call float @llvm.fmuladd.f32(float %29, float %5, float %30)
  %32 = getelementptr inbounds float, ptr %0, i64 %12
  store float %31, ptr %32, align 4, !tbaa !73
  %33 = add nsw i64 %12, -1
  %34 = icmp eq i64 %12, 0
  br i1 %34, label %36, label %11, !llvm.loop !101

35:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %36

36:                                               ; preds = %27, %35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_linearlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !102 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %26
  %12 = phi i64 [ 2, %9 ], [ %31, %26 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp ogt float %14, 5.000000e-01
  %16 = getelementptr inbounds float, ptr %1, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !73
  br i1 %15, label %18, label %22

18:                                               ; preds = %11
  %19 = fadd float %14, -5.000000e-01
  %20 = tail call float @llvm.fmuladd.f32(float %19, float 2.000000e+00, float %17)
  %21 = tail call fastcc float @min_ff(float noundef %20, float noundef 1.000000e+00) #10
  br label %26

22:                                               ; preds = %11
  %23 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float %17)
  %24 = fadd float %23, -1.000000e+00
  %25 = tail call fastcc float @max_ff(float noundef %24, float noundef 0.000000e+00) #10
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi float [ %21, %18 ], [ %25, %22 ]
  %28 = fmul float %10, %17
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %5, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 %12
  store float %29, ptr %30, align 4, !tbaa !73
  %31 = add nsw i64 %12, -1
  %32 = icmp eq i64 %12, 0
  br i1 %32, label %34, label %11, !llvm.loop !103

33:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %34

34:                                               ; preds = %26, %33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_vividlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !104 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %33
  %12 = phi i64 [ 2, %9 ], [ %40, %33 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp oeq float %14, 1.000000e+00
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  %17 = fcmp oeq float %14, 0.000000e+00
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  %19 = fcmp ogt float %14, 5.000000e-01
  %20 = getelementptr inbounds float, ptr %1, i64 %12
  %21 = load float, ptr %20, align 4, !tbaa !73
  br i1 %19, label %22, label %27

22:                                               ; preds = %18
  %23 = fsub float 1.000000e+00, %14
  %24 = fmul float %23, 2.000000e+00
  %25 = fdiv float %21, %24
  %26 = tail call fastcc float @min_ff(float noundef %25, float noundef 1.000000e+00) #10
  br label %33

27:                                               ; preds = %18
  %28 = fsub float 1.000000e+00, %21
  %29 = fmul float %14, 2.000000e+00
  %30 = fdiv float %28, %29
  %31 = fsub float 1.000000e+00, %30
  %32 = tail call fastcc float @max_ff(float noundef %31, float noundef 0.000000e+00) #10
  br label %33

33:                                               ; preds = %16, %11, %27, %22
  %34 = phi float [ %26, %22 ], [ %32, %27 ], [ 1.000000e+00, %11 ], [ 0.000000e+00, %16 ]
  %35 = getelementptr inbounds float, ptr %1, i64 %12
  %36 = load float, ptr %35, align 4, !tbaa !73
  %37 = fmul float %10, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %5, float %37)
  %39 = getelementptr inbounds float, ptr %0, i64 %12
  store float %38, ptr %39, align 4, !tbaa !73
  %40 = add nsw i64 %12, -1
  %41 = icmp eq i64 %12, 0
  br i1 %41, label %43, label %11, !llvm.loop !105

42:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %43

43:                                               ; preds = %33, %42
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_difference_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !106 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = getelementptr inbounds float, ptr %2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !73
  %18 = fsub float %15, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fmul float %10, %15
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %5, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 %13
  store float %21, ptr %22, align 4, !tbaa !73
  %23 = icmp eq i64 %13, 0
  br i1 %23, label %25, label %11, !llvm.loop !107

24:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %25

25:                                               ; preds = %11, %24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @blend_color_exclusion_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !108 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = fadd float %15, -5.000000e-01
  %17 = getelementptr inbounds float, ptr %2, i64 %13
  %18 = load float, ptr %17, align 4, !tbaa !73
  %19 = fadd float %18, -5.000000e-01
  %20 = fmul float %16, -2.000000e+00
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float 5.000000e-01)
  %22 = fmul float %10, %15
  %23 = tail call float @llvm.fmuladd.f32(float %21, float %5, float %22)
  %24 = getelementptr inbounds float, ptr %0, i64 %13
  store float %23, ptr %24, align 4, !tbaa !73
  %25 = icmp eq i64 %13, 0
  br i1 %25, label %27, label %11, !llvm.loop !109

26:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %27

27:                                               ; preds = %11, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_color_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !110 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !73
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %25 = load float, ptr %2, align 4, !tbaa !73
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %30 = load float, ptr %7, align 4, !tbaa !73
  store float %30, ptr %4, align 4, !tbaa !73
  %31 = load float, ptr %8, align 4, !tbaa !73
  store float %31, ptr %5, align 4, !tbaa !73
  %32 = load float, ptr %6, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %30, float noundef %31, float noundef %32, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %33 = load float, ptr %10, align 4, !tbaa !73
  %34 = load float, ptr %1, align 4, !tbaa !73
  %35 = fmul float %19, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %14, float %35)
  store float %36, ptr %0, align 4, !tbaa !73
  %37 = load float, ptr %11, align 4, !tbaa !73
  %38 = load float, ptr %21, align 4, !tbaa !73
  %39 = fmul float %19, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %14, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !73
  %42 = load float, ptr %12, align 4, !tbaa !73
  %43 = load float, ptr %23, align 4, !tbaa !73
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %48

47:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %48

48:                                               ; preds = %47, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_hue_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !111 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !73
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %25 = load float, ptr %2, align 4, !tbaa !73
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %30 = load float, ptr %7, align 4, !tbaa !73
  store float %30, ptr %4, align 4, !tbaa !73
  %31 = load float, ptr %5, align 4, !tbaa !73
  %32 = load float, ptr %6, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %30, float noundef %31, float noundef %32, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %33 = load float, ptr %10, align 4, !tbaa !73
  %34 = load float, ptr %1, align 4, !tbaa !73
  %35 = fmul float %19, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %14, float %35)
  store float %36, ptr %0, align 4, !tbaa !73
  %37 = load float, ptr %11, align 4, !tbaa !73
  %38 = load float, ptr %21, align 4, !tbaa !73
  %39 = fmul float %19, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %14, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !73
  %42 = load float, ptr %12, align 4, !tbaa !73
  %43 = load float, ptr %23, align 4, !tbaa !73
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %48

47:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %48

48:                                               ; preds = %47, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_saturation_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !112 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !73
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %25 = load float, ptr %2, align 4, !tbaa !73
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %30 = load float, ptr %5, align 4, !tbaa !73
  %31 = fcmp ogt float %30, 0x3F40624DE0000000
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load float, ptr %8, align 4, !tbaa !73
  store float %33, ptr %5, align 4, !tbaa !73
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi float [ %33, %32 ], [ %30, %18 ]
  %36 = load float, ptr %4, align 4, !tbaa !73
  %37 = load float, ptr %6, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %36, float noundef %35, float noundef %37, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %38 = load float, ptr %10, align 4, !tbaa !73
  %39 = load float, ptr %1, align 4, !tbaa !73
  %40 = fmul float %19, %39
  %41 = call float @llvm.fmuladd.f32(float %38, float %14, float %40)
  store float %41, ptr %0, align 4, !tbaa !73
  %42 = load float, ptr %11, align 4, !tbaa !73
  %43 = load float, ptr %21, align 4, !tbaa !73
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !73
  %47 = load float, ptr %12, align 4, !tbaa !73
  %48 = load float, ptr %23, align 4, !tbaa !73
  %49 = fmul float %19, %48
  %50 = call float @llvm.fmuladd.f32(float %47, float %14, float %49)
  %51 = getelementptr inbounds float, ptr %0, i64 2
  store float %50, ptr %51, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %53

52:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %53

53:                                               ; preds = %52, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blend_color_luminosity_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !113 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !73
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %25 = load float, ptr %2, align 4, !tbaa !73
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !73
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !73
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %30 = load float, ptr %9, align 4, !tbaa !73
  store float %30, ptr %6, align 4, !tbaa !73
  %31 = load float, ptr %4, align 4, !tbaa !73
  %32 = load float, ptr %5, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %31, float noundef %32, float noundef %30, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #12
  %33 = load float, ptr %10, align 4, !tbaa !73
  %34 = load float, ptr %1, align 4, !tbaa !73
  %35 = fmul float %19, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %14, float %35)
  store float %36, ptr %0, align 4, !tbaa !73
  %37 = load float, ptr %11, align 4, !tbaa !73
  %38 = load float, ptr %21, align 4, !tbaa !73
  %39 = fmul float %19, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %14, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !73
  %42 = load float, ptr %12, align 4, !tbaa !73
  %43 = load float, ptr %23, align 4, !tbaa !73
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %48

47:                                               ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef %1) #10
  br label %48

48:                                               ; preds = %47, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @IMB_rectclip(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #1 {
  %9 = icmp eq ptr %0, null
  br i1 %9, label %89, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %2, align 4, !tbaa !114
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4, !tbaa !114
  %15 = sub nsw i32 %14, %11
  store i32 %15, ptr %4, align 4, !tbaa !114
  %16 = load i32, ptr %2, align 4, !tbaa !114
  %17 = load i32, ptr %6, align 4, !tbaa !114
  %18 = add nsw i32 %17, %16
  store i32 %18, ptr %6, align 4, !tbaa !114
  store i32 0, ptr %2, align 4, !tbaa !114
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i32 [ 0, %13 ], [ %11, %10 ]
  %21 = load i32, ptr %4, align 4, !tbaa !114
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = sub nsw i32 %20, %21
  store i32 %24, ptr %2, align 4, !tbaa !114
  %25 = load i32, ptr %4, align 4, !tbaa !114
  %26 = load i32, ptr %6, align 4, !tbaa !114
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %6, align 4, !tbaa !114
  store i32 0, ptr %4, align 4, !tbaa !114
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, ptr %3, align 4, !tbaa !114
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, ptr %5, align 4, !tbaa !114
  %33 = sub nsw i32 %32, %29
  store i32 %33, ptr %5, align 4, !tbaa !114
  %34 = load i32, ptr %3, align 4, !tbaa !114
  %35 = load i32, ptr %7, align 4, !tbaa !114
  %36 = add nsw i32 %35, %34
  store i32 %36, ptr %7, align 4, !tbaa !114
  store i32 0, ptr %3, align 4, !tbaa !114
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i32 [ 0, %31 ], [ %29, %28 ]
  %39 = load i32, ptr %5, align 4, !tbaa !114
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = sub nsw i32 %38, %39
  store i32 %42, ptr %3, align 4, !tbaa !114
  %43 = load i32, ptr %5, align 4, !tbaa !114
  %44 = load i32, ptr %7, align 4, !tbaa !114
  %45 = add nsw i32 %44, %43
  store i32 %45, ptr %7, align 4, !tbaa !114
  store i32 0, ptr %5, align 4, !tbaa !114
  br label %46

46:                                               ; preds = %41, %37
  %47 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !116
  %49 = load i32, ptr %2, align 4, !tbaa !114
  %50 = sub nsw i32 %48, %49
  %51 = load i32, ptr %6, align 4, !tbaa !114
  %52 = icmp sgt i32 %51, %50
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 %50, ptr %6, align 4, !tbaa !114
  br label %54

54:                                               ; preds = %53, %46
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !121
  %57 = load i32, ptr %3, align 4, !tbaa !114
  %58 = sub nsw i32 %56, %57
  %59 = load i32, ptr %7, align 4, !tbaa !114
  %60 = icmp sgt i32 %59, %58
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 %58, ptr %7, align 4, !tbaa !114
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi i32 [ %58, %61 ], [ %59, %54 ]
  %64 = icmp eq ptr %1, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !116
  %68 = load i32, ptr %4, align 4, !tbaa !114
  %69 = sub nsw i32 %67, %68
  %70 = load i32, ptr %6, align 4, !tbaa !114
  %71 = icmp sgt i32 %70, %69
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  store i32 %69, ptr %6, align 4, !tbaa !114
  %73 = load i32, ptr %7, align 4, !tbaa !114
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi i32 [ %73, %72 ], [ %63, %65 ]
  %76 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !121
  %78 = load i32, ptr %5, align 4, !tbaa !114
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 %79, ptr %7, align 4, !tbaa !114
  br label %82

82:                                               ; preds = %62, %74, %81
  %83 = phi i32 [ %75, %74 ], [ %79, %81 ], [ %63, %62 ]
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %6, align 4, !tbaa !114
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %82
  store i32 0, ptr %6, align 4, !tbaa !114
  store i32 0, ptr %7, align 4, !tbaa !114
  br label %89

89:                                               ; preds = %85, %88, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_rectcpy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  tail call void @IMB_rectblend(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 1000, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_rectblend(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, float noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i8 noundef zeroext %16) local_unnamed_addr #0 {
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [4 x i8], align 1
  %27 = alloca [4 x i8], align 1
  %28 = alloca [4 x float], align 16
  %29 = alloca [4 x float], align 16
  store i32 %7, ptr %18, align 4, !tbaa !114
  store i32 %8, ptr %19, align 4, !tbaa !114
  store i32 %9, ptr %20, align 4, !tbaa !114
  store i32 %10, ptr %21, align 4, !tbaa !114
  store i32 %11, ptr %22, align 4, !tbaa !114
  store i32 %12, ptr %23, align 4, !tbaa !114
  store i32 %13, ptr %24, align 4, !tbaa !114
  store i32 %14, ptr %25, align 4, !tbaa !114
  %30 = icmp eq ptr %0, null
  %31 = icmp eq ptr %1, null
  %32 = or i1 %30, %31
  br i1 %32, label %729, label %33

33:                                               ; preds = %17
  call fastcc void @imb_rectclip3(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #10
  %34 = load i32, ptr %24, align 4
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %25, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %729, label %39

39:                                               ; preds = %33
  %40 = icmp eq ptr %2, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !122
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %49, label %729

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !122
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %138, label %729

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !122
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %729

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !123
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !123
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !123
  %64 = icmp ne ptr %63, null
  br label %65

65:                                               ; preds = %61, %57, %53
  %66 = phi i1 [ %64, %61 ], [ false, %53 ], [ false, %57 ]
  %67 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !124
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !124
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !124
  %77 = icmp ne ptr %76, null
  br i1 %66, label %79, label %108

78:                                               ; preds = %70, %65
  br i1 %66, label %79, label %138

79:                                               ; preds = %74, %78
  %80 = phi i1 [ %77, %74 ], [ false, %78 ]
  %81 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !123
  %83 = load i32, ptr %19, align 4, !tbaa !114
  %84 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !116
  %86 = mul nsw i32 %85, %83
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %82, i64 %87
  %89 = load i32, ptr %18, align 4, !tbaa !114
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %88, i64 %90
  %92 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !123
  %94 = load i32, ptr %21, align 4, !tbaa !114
  %95 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !116
  %97 = mul nsw i32 %96, %94
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %93, i64 %98
  %100 = load i32, ptr %20, align 4, !tbaa !114
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %99, i64 %101
  br i1 %80, label %103, label %138

103:                                              ; preds = %79
  %104 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !124
  %106 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !124
  br label %120

108:                                              ; preds = %74
  br i1 %77, label %109, label %138

109:                                              ; preds = %108
  %110 = load i32, ptr %19, align 4, !tbaa !114
  %111 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !116
  %113 = load i32, ptr %18, align 4, !tbaa !114
  %114 = load i32, ptr %21, align 4, !tbaa !114
  %115 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !116
  %117 = load i32, ptr %20, align 4, !tbaa !114
  %118 = mul nsw i32 %112, %110
  %119 = mul nsw i32 %116, %114
  br label %120

120:                                              ; preds = %109, %103
  %121 = phi i32 [ %119, %109 ], [ %97, %103 ]
  %122 = phi i32 [ %118, %109 ], [ %86, %103 ]
  %123 = phi i32 [ %117, %109 ], [ %100, %103 ]
  %124 = phi ptr [ %76, %109 ], [ %107, %103 ]
  %125 = phi i32 [ %113, %109 ], [ %89, %103 ]
  %126 = phi ptr [ %72, %109 ], [ %105, %103 ]
  %127 = phi ptr [ null, %109 ], [ %91, %103 ]
  %128 = phi ptr [ undef, %109 ], [ %102, %103 ]
  %129 = phi i1 [ false, %109 ], [ true, %103 ]
  %130 = add nsw i32 %122, %125
  %131 = shl nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, ptr %126, i64 %132
  %134 = add nsw i32 %121, %123
  %135 = shl nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr %124, i64 %136
  br label %138

138:                                              ; preds = %45, %78, %79, %120, %108
  %139 = phi ptr [ %127, %120 ], [ null, %108 ], [ %91, %79 ], [ null, %78 ], [ null, %45 ]
  %140 = phi ptr [ %128, %120 ], [ undef, %108 ], [ %102, %79 ], [ undef, %78 ], [ undef, %45 ]
  %141 = phi i1 [ %129, %120 ], [ false, %108 ], [ true, %79 ], [ false, %78 ], [ false, %45 ]
  %142 = phi i1 [ true, %120 ], [ false, %108 ], [ false, %79 ], [ false, %78 ], [ false, %45 ]
  %143 = phi ptr [ %137, %120 ], [ undef, %108 ], [ undef, %79 ], [ undef, %78 ], [ undef, %45 ]
  %144 = phi ptr [ %133, %120 ], [ null, %108 ], [ null, %79 ], [ null, %78 ], [ null, %45 ]
  %145 = icmp eq ptr %3, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !116
  br label %158

149:                                              ; preds = %138
  %150 = load i32, ptr %21, align 4, !tbaa !114
  %151 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !116
  %153 = mul nsw i32 %152, %150
  %154 = load i32, ptr %20, align 4, !tbaa !114
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, ptr %3, i64 %156
  br label %158

158:                                              ; preds = %146, %149
  %159 = phi i32 [ %152, %149 ], [ %148, %146 ]
  %160 = phi ptr [ %157, %149 ], [ null, %146 ]
  %161 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !116
  br i1 %40, label %214, label %163

163:                                              ; preds = %158
  br i1 %141, label %164, label %176

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %166 = load ptr, ptr %165, align 8, !tbaa !123
  %167 = load i32, ptr %23, align 4, !tbaa !114
  %168 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !116
  %170 = mul nsw i32 %169, %167
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %166, i64 %171
  %173 = load i32, ptr %22, align 4, !tbaa !114
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %172, i64 %174
  br label %176

176:                                              ; preds = %164, %163
  %177 = phi ptr [ %175, %164 ], [ null, %163 ]
  br i1 %142, label %181, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %180 = load i32, ptr %179, align 8, !tbaa !116
  br label %193

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !124
  %184 = load i32, ptr %23, align 4, !tbaa !114
  %185 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %186 = load i32, ptr %185, align 8, !tbaa !116
  %187 = mul nsw i32 %186, %184
  %188 = load i32, ptr %22, align 4, !tbaa !114
  %189 = add nsw i32 %187, %188
  %190 = shl nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, ptr %183, i64 %191
  br label %193

193:                                              ; preds = %178, %181
  %194 = phi i32 [ %186, %181 ], [ %180, %178 ]
  %195 = phi ptr [ %192, %181 ], [ null, %178 ]
  %196 = icmp eq ptr %4, null
  br i1 %196, label %204, label %197

197:                                              ; preds = %193
  %198 = load i32, ptr %23, align 4, !tbaa !114
  %199 = mul nsw i32 %198, %194
  %200 = load i32, ptr %22, align 4, !tbaa !114
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i16, ptr %4, i64 %202
  br label %204

204:                                              ; preds = %197, %193
  %205 = phi ptr [ %203, %197 ], [ null, %193 ]
  %206 = icmp eq ptr %5, null
  br i1 %206, label %214, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %23, align 4, !tbaa !114
  %209 = mul nsw i32 %208, %194
  %210 = load i32, ptr %22, align 4, !tbaa !114
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i16, ptr %5, i64 %212
  br label %214

214:                                              ; preds = %158, %204, %207
  %215 = phi ptr [ %195, %207 ], [ %195, %204 ], [ %144, %158 ]
  %216 = phi ptr [ %205, %207 ], [ %205, %204 ], [ %4, %158 ]
  %217 = phi ptr [ %213, %207 ], [ null, %204 ], [ %5, %158 ]
  %218 = phi i32 [ %194, %207 ], [ %194, %204 ], [ %162, %158 ]
  %219 = phi ptr [ %177, %207 ], [ %177, %204 ], [ %139, %158 ]
  switch i32 %15, label %408 [
    i32 1000, label %220
    i32 1001, label %252
    i32 1002, label %327
    i32 0, label %384
    i32 1, label %385
    i32 2, label %386
    i32 3, label %387
    i32 4, label %388
    i32 5, label %389
    i32 6, label %390
    i32 7, label %391
    i32 8, label %392
    i32 9, label %393
    i32 10, label %394
    i32 11, label %395
    i32 12, label %396
    i32 13, label %397
    i32 14, label %398
    i32 15, label %399
    i32 17, label %400
    i32 16, label %401
    i32 18, label %402
    i32 19, label %403
    i32 23, label %404
    i32 20, label %405
    i32 21, label %406
    i32 22, label %407
  ]

220:                                              ; preds = %214
  %221 = icmp sgt i32 %36, 0
  br i1 %221, label %222, label %729

222:                                              ; preds = %220
  %223 = sext i32 %34 to i64
  %224 = shl nsw i64 %223, 2
  %225 = sext i32 %162 to i64
  %226 = sext i32 %218 to i64
  %227 = shl nsw i64 %223, 4
  %228 = shl nsw i32 %162, 2
  %229 = sext i32 %228 to i64
  %230 = shl nsw i32 %218, 2
  %231 = sext i32 %230 to i64
  br label %232

232:                                              ; preds = %222, %247
  %233 = phi ptr [ %139, %222 ], [ %243, %247 ]
  %234 = phi ptr [ %219, %222 ], [ %242, %247 ]
  %235 = phi ptr [ %144, %222 ], [ %249, %247 ]
  %236 = phi ptr [ %215, %222 ], [ %248, %247 ]
  %237 = phi i32 [ %36, %222 ], [ %250, %247 ]
  br i1 %141, label %238, label %241

238:                                              ; preds = %232
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %233, ptr align 4 %234, i64 %224, i1 false)
  %239 = getelementptr inbounds i32, ptr %233, i64 %225
  %240 = getelementptr inbounds i32, ptr %234, i64 %226
  br label %241

241:                                              ; preds = %238, %232
  %242 = phi ptr [ %240, %238 ], [ %234, %232 ]
  %243 = phi ptr [ %239, %238 ], [ %233, %232 ]
  br i1 %142, label %244, label %247

244:                                              ; preds = %241
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %235, ptr align 4 %236, i64 %227, i1 false)
  %245 = getelementptr inbounds float, ptr %235, i64 %229
  %246 = getelementptr inbounds float, ptr %236, i64 %231
  br label %247

247:                                              ; preds = %241, %244
  %248 = phi ptr [ %246, %244 ], [ %236, %241 ]
  %249 = phi ptr [ %245, %244 ], [ %235, %241 ]
  %250 = add nsw i32 %237, -1
  %251 = icmp sgt i32 %237, 1
  br i1 %251, label %232, label %729, !llvm.loop !125

252:                                              ; preds = %214
  %253 = icmp sgt i32 %36, 0
  br i1 %253, label %254, label %729

254:                                              ; preds = %252
  %255 = sext i32 %162 to i64
  %256 = sext i32 %218 to i64
  %257 = shl nsw i32 %162, 2
  %258 = sext i32 %257 to i64
  %259 = shl nsw i32 %218, 2
  %260 = sext i32 %259 to i64
  br label %261

261:                                              ; preds = %254, %321
  %262 = phi ptr [ %139, %254 ], [ %289, %321 ]
  %263 = phi ptr [ %219, %254 ], [ %288, %321 ]
  %264 = phi ptr [ %144, %254 ], [ %323, %321 ]
  %265 = phi ptr [ %215, %254 ], [ %322, %321 ]
  br i1 %141, label %266, label %287

266:                                              ; preds = %261
  %267 = load i32, ptr %24, align 4, !tbaa !114
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %266, %269
  %270 = phi i32 [ %280, %269 ], [ %267, %266 ]
  %271 = phi ptr [ %281, %269 ], [ %262, %266 ]
  %272 = phi ptr [ %282, %269 ], [ %263, %266 ]
  %273 = load i8, ptr %272, align 1, !tbaa !34
  store i8 %273, ptr %271, align 1, !tbaa !34
  %274 = getelementptr inbounds i8, ptr %272, i64 1
  %275 = load i8, ptr %274, align 1, !tbaa !34
  %276 = getelementptr inbounds i8, ptr %271, i64 1
  store i8 %275, ptr %276, align 1, !tbaa !34
  %277 = getelementptr inbounds i8, ptr %272, i64 2
  %278 = load i8, ptr %277, align 1, !tbaa !34
  %279 = getelementptr inbounds i8, ptr %271, i64 2
  store i8 %278, ptr %279, align 1, !tbaa !34
  %280 = add nsw i32 %270, -1
  %281 = getelementptr inbounds i32, ptr %271, i64 1
  %282 = getelementptr inbounds i32, ptr %272, i64 1
  %283 = icmp ugt i32 %270, 1
  br i1 %283, label %269, label %284, !llvm.loop !126

284:                                              ; preds = %269, %266
  %285 = getelementptr inbounds i32, ptr %262, i64 %255
  %286 = getelementptr inbounds i32, ptr %263, i64 %256
  br label %287

287:                                              ; preds = %284, %261
  %288 = phi ptr [ %286, %284 ], [ %263, %261 ]
  %289 = phi ptr [ %285, %284 ], [ %262, %261 ]
  br i1 %142, label %290, label %321

290:                                              ; preds = %287
  %291 = load i32, ptr %24, align 4, !tbaa !114
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %318

293:                                              ; preds = %290, %293
  %294 = phi i32 [ %314, %293 ], [ %291, %290 ]
  %295 = phi ptr [ %316, %293 ], [ %265, %290 ]
  %296 = phi ptr [ %315, %293 ], [ %264, %290 ]
  %297 = getelementptr inbounds float, ptr %295, i64 3
  %298 = load float, ptr %297, align 4, !tbaa !73
  %299 = fcmp oeq float %298, 0.000000e+00
  %300 = getelementptr inbounds float, ptr %296, i64 3
  %301 = load float, ptr %300, align 4, !tbaa !73
  %302 = select i1 %299, float 1.000000e+00, float %298
  %303 = fdiv float %301, %302
  %304 = load float, ptr %295, align 4, !tbaa !73
  %305 = fmul float %303, %304
  store float %305, ptr %296, align 4, !tbaa !73
  %306 = getelementptr inbounds float, ptr %295, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !73
  %308 = fmul float %303, %307
  %309 = getelementptr inbounds float, ptr %296, i64 1
  store float %308, ptr %309, align 4, !tbaa !73
  %310 = getelementptr inbounds float, ptr %295, i64 2
  %311 = load float, ptr %310, align 4, !tbaa !73
  %312 = fmul float %303, %311
  %313 = getelementptr inbounds float, ptr %296, i64 2
  store float %312, ptr %313, align 4, !tbaa !73
  %314 = add nsw i32 %294, -1
  %315 = getelementptr inbounds float, ptr %296, i64 4
  %316 = getelementptr inbounds float, ptr %295, i64 4
  %317 = icmp sgt i32 %294, 1
  br i1 %317, label %293, label %318, !llvm.loop !127

318:                                              ; preds = %293, %290
  %319 = getelementptr inbounds float, ptr %264, i64 %258
  %320 = getelementptr inbounds float, ptr %265, i64 %260
  br label %321

321:                                              ; preds = %287, %318
  %322 = phi ptr [ %320, %318 ], [ %265, %287 ]
  %323 = phi ptr [ %319, %318 ], [ %264, %287 ]
  %324 = load i32, ptr %25, align 4, !tbaa !114
  %325 = add nsw i32 %324, -1
  store i32 %325, ptr %25, align 4, !tbaa !114
  %326 = icmp sgt i32 %324, 1
  br i1 %326, label %261, label %729, !llvm.loop !128

327:                                              ; preds = %214
  %328 = icmp sgt i32 %36, 0
  br i1 %328, label %329, label %729

329:                                              ; preds = %327
  %330 = sext i32 %162 to i64
  %331 = sext i32 %218 to i64
  %332 = shl nsw i32 %162, 2
  %333 = sext i32 %332 to i64
  %334 = shl nsw i32 %218, 2
  %335 = sext i32 %334 to i64
  br label %336

336:                                              ; preds = %329, %378
  %337 = phi ptr [ %139, %329 ], [ %360, %378 ]
  %338 = phi ptr [ %219, %329 ], [ %359, %378 ]
  %339 = phi ptr [ %144, %329 ], [ %380, %378 ]
  %340 = phi ptr [ %215, %329 ], [ %379, %378 ]
  br i1 %141, label %341, label %358

341:                                              ; preds = %336
  %342 = load i32, ptr %24, align 4, !tbaa !114
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %355

344:                                              ; preds = %341, %344
  %345 = phi i32 [ %351, %344 ], [ %342, %341 ]
  %346 = phi ptr [ %352, %344 ], [ %337, %341 ]
  %347 = phi ptr [ %353, %344 ], [ %338, %341 ]
  %348 = getelementptr inbounds i8, ptr %347, i64 3
  %349 = load i8, ptr %348, align 1, !tbaa !34
  %350 = getelementptr inbounds i8, ptr %346, i64 3
  store i8 %349, ptr %350, align 1, !tbaa !34
  %351 = add nsw i32 %345, -1
  %352 = getelementptr inbounds i32, ptr %346, i64 1
  %353 = getelementptr inbounds i32, ptr %347, i64 1
  %354 = icmp ugt i32 %345, 1
  br i1 %354, label %344, label %355, !llvm.loop !129

355:                                              ; preds = %344, %341
  %356 = getelementptr inbounds i32, ptr %337, i64 %330
  %357 = getelementptr inbounds i32, ptr %338, i64 %331
  br label %358

358:                                              ; preds = %355, %336
  %359 = phi ptr [ %357, %355 ], [ %338, %336 ]
  %360 = phi ptr [ %356, %355 ], [ %337, %336 ]
  br i1 %142, label %361, label %378

361:                                              ; preds = %358
  %362 = load i32, ptr %24, align 4, !tbaa !114
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %375

364:                                              ; preds = %361, %364
  %365 = phi i32 [ %371, %364 ], [ %362, %361 ]
  %366 = phi ptr [ %373, %364 ], [ %340, %361 ]
  %367 = phi ptr [ %372, %364 ], [ %339, %361 ]
  %368 = getelementptr inbounds float, ptr %366, i64 3
  %369 = load float, ptr %368, align 4, !tbaa !73
  %370 = getelementptr inbounds float, ptr %367, i64 3
  store float %369, ptr %370, align 4, !tbaa !73
  %371 = add nsw i32 %365, -1
  %372 = getelementptr inbounds float, ptr %367, i64 4
  %373 = getelementptr inbounds float, ptr %366, i64 4
  %374 = icmp ugt i32 %365, 1
  br i1 %374, label %364, label %375, !llvm.loop !130

375:                                              ; preds = %364, %361
  %376 = getelementptr inbounds float, ptr %339, i64 %333
  %377 = getelementptr inbounds float, ptr %340, i64 %335
  br label %378

378:                                              ; preds = %358, %375
  %379 = phi ptr [ %377, %375 ], [ %340, %358 ]
  %380 = phi ptr [ %376, %375 ], [ %339, %358 ]
  %381 = load i32, ptr %25, align 4, !tbaa !114
  %382 = add nsw i32 %381, -1
  store i32 %382, ptr %25, align 4, !tbaa !114
  %383 = icmp sgt i32 %381, 1
  br i1 %383, label %336, label %729, !llvm.loop !131

384:                                              ; preds = %214
  br label %408

385:                                              ; preds = %214
  br label %408

386:                                              ; preds = %214
  br label %408

387:                                              ; preds = %214
  br label %408

388:                                              ; preds = %214
  br label %408

389:                                              ; preds = %214
  br label %408

390:                                              ; preds = %214
  br label %408

391:                                              ; preds = %214
  br label %408

392:                                              ; preds = %214
  br label %408

393:                                              ; preds = %214
  br label %408

394:                                              ; preds = %214
  br label %408

395:                                              ; preds = %214
  br label %408

396:                                              ; preds = %214
  br label %408

397:                                              ; preds = %214
  br label %408

398:                                              ; preds = %214
  br label %408

399:                                              ; preds = %214
  br label %408

400:                                              ; preds = %214
  br label %408

401:                                              ; preds = %214
  br label %408

402:                                              ; preds = %214
  br label %408

403:                                              ; preds = %214
  br label %408

404:                                              ; preds = %214
  br label %408

405:                                              ; preds = %214
  br label %408

406:                                              ; preds = %214
  br label %408

407:                                              ; preds = %214
  br label %408

408:                                              ; preds = %214, %407, %406, %405, %404, %403, %402, %401, %400, %399, %398, %397, %396, %395, %394, %393, %392, %391, %390, %389, %388, %387, %386, %385, %384
  %409 = phi ptr [ @blend_color_luminosity_byte, %407 ], [ @blend_color_saturation_byte, %406 ], [ @blend_color_hue_byte, %405 ], [ @blend_color_color_byte, %404 ], [ @blend_color_exclusion_byte, %403 ], [ @blend_color_difference_byte, %402 ], [ @blend_color_vividlight_byte, %401 ], [ @blend_color_linearlight_byte, %400 ], [ @blend_color_pinlight_byte, %399 ], [ @blend_color_softlight_byte, %398 ], [ @blend_color_screen_byte, %397 ], [ @blend_color_dodge_byte, %396 ], [ @blend_color_linearburn_byte, %395 ], [ @blend_color_burn_byte, %394 ], [ @blend_color_hardlight_byte, %393 ], [ @blend_color_overlay_byte, %392 ], [ @blend_color_add_alpha_byte, %391 ], [ @blend_color_erase_alpha_byte, %390 ], [ @blend_color_darken_byte, %389 ], [ @blend_color_lighten_byte, %388 ], [ @blend_color_mul_byte, %387 ], [ @blend_color_sub_byte, %386 ], [ @blend_color_add_byte, %385 ], [ @blend_color_mix_byte, %384 ], [ null, %214 ]
  %410 = phi ptr [ @blend_color_luminosity_float, %407 ], [ @blend_color_saturation_float, %406 ], [ @blend_color_hue_float, %405 ], [ @blend_color_color_float, %404 ], [ @blend_color_exclusion_float, %403 ], [ @blend_color_difference_float, %402 ], [ @blend_color_vividlight_float, %401 ], [ @blend_color_linearlight_float, %400 ], [ @blend_color_pinlight_float, %399 ], [ @blend_color_softlight_float, %398 ], [ @blend_color_screen_float, %397 ], [ @blend_color_dodge_float, %396 ], [ @blend_color_linearburn_float, %395 ], [ @blend_color_burn_float, %394 ], [ @blend_color_hardlight_float, %393 ], [ @blend_color_overlay_float, %392 ], [ @blend_color_add_alpha_float, %391 ], [ @blend_color_erase_alpha_float, %390 ], [ @blend_color_darken_float, %389 ], [ @blend_color_lighten_float, %388 ], [ @blend_color_mul_float, %387 ], [ @blend_color_sub_float, %386 ], [ @blend_color_add_float, %385 ], [ @blend_color_mix_float, %384 ], [ null, %214 ]
  %411 = icmp sgt i32 %36, 0
  br i1 %411, label %412, label %729

412:                                              ; preds = %408
  %413 = icmp eq i8 %16, 0
  %414 = getelementptr inbounds [4 x i8], ptr %26, i64 0, i64 1
  %415 = getelementptr inbounds [4 x i8], ptr %26, i64 0, i64 2
  %416 = getelementptr inbounds [4 x i8], ptr %26, i64 0, i64 3
  %417 = sext i32 %159 to i64
  %418 = getelementptr inbounds [4 x i8], ptr %27, i64 0, i64 1
  %419 = getelementptr inbounds [4 x i8], ptr %27, i64 0, i64 2
  %420 = getelementptr inbounds [4 x i8], ptr %27, i64 0, i64 3
  %421 = sext i32 %218 to i64
  %422 = sext i32 %162 to i64
  %423 = shl nsw i32 %162, 2
  %424 = sext i32 %423 to i64
  %425 = shl nsw i32 %159, 2
  %426 = sext i32 %425 to i64
  %427 = shl nsw i32 %218, 2
  %428 = sext i32 %427 to i64
  br label %429

429:                                              ; preds = %412, %719
  %430 = phi ptr [ %139, %412 ], [ %589, %719 ]
  %431 = phi ptr [ %140, %412 ], [ %588, %719 ]
  %432 = phi ptr [ %219, %412 ], [ %587, %719 ]
  %433 = phi ptr [ %144, %412 ], [ %725, %719 ]
  %434 = phi ptr [ %217, %412 ], [ %724, %719 ]
  %435 = phi ptr [ %160, %412 ], [ %723, %719 ]
  %436 = phi ptr [ %216, %412 ], [ %722, %719 ]
  %437 = phi ptr [ %215, %412 ], [ %721, %719 ]
  %438 = phi ptr [ %143, %412 ], [ %720, %719 ]
  br i1 %141, label %439, label %583

439:                                              ; preds = %429
  %440 = icmp eq ptr %436, null
  br i1 %440, label %558, label %441

441:                                              ; preds = %439
  %442 = icmp eq ptr %435, null
  %443 = load i32, ptr %24, align 4, !tbaa !114
  %444 = icmp sgt i32 %443, 0
  br i1 %442, label %506, label %445

445:                                              ; preds = %441
  br i1 %444, label %446, label %504

446:                                              ; preds = %445
  %447 = icmp eq ptr %434, null
  br label %448

448:                                              ; preds = %446, %496
  %449 = phi i32 [ %443, %446 ], [ %497, %496 ]
  %450 = phi ptr [ %430, %446 ], [ %498, %496 ]
  %451 = phi ptr [ %431, %446 ], [ %499, %496 ]
  %452 = phi ptr [ %432, %446 ], [ %500, %496 ]
  %453 = phi ptr [ %434, %446 ], [ %466, %496 ]
  %454 = phi ptr [ %435, %446 ], [ %501, %496 ]
  %455 = phi ptr [ %436, %446 ], [ %502, %496 ]
  %456 = load i16, ptr %455, align 2, !tbaa !132
  %457 = uitofp i16 %456 to float
  %458 = fmul float %457, %6
  br i1 %447, label %465, label %459

459:                                              ; preds = %448
  %460 = getelementptr inbounds i16, ptr %453, i64 1
  %461 = load i16, ptr %453, align 2, !tbaa !132
  %462 = uitofp i16 %461 to float
  %463 = fdiv float %462, 6.553500e+04
  %464 = fmul float %458, %463
  br label %465

465:                                              ; preds = %459, %448
  %466 = phi ptr [ %460, %459 ], [ %453, %448 ]
  %467 = phi float [ %464, %459 ], [ %458, %448 ]
  %468 = getelementptr inbounds i8, ptr %452, i64 3
  %469 = load i8, ptr %468, align 1, !tbaa !34
  %470 = icmp ne i8 %469, 0
  %471 = fcmp une float %467, 0.000000e+00
  %472 = select i1 %470, i1 %471, i1 false
  br i1 %472, label %473, label %496

473:                                              ; preds = %465
  %474 = load i16, ptr %454, align 2, !tbaa !132
  %475 = uitofp i16 %474 to float
  %476 = fadd float %467, %475
  %477 = fdiv float %457, 6.553500e+04
  %478 = fneg float %475
  %479 = call float @llvm.fmuladd.f32(float %478, float %477, float %476)
  %480 = select i1 %413, float %479, float %476
  %481 = call fastcc float @min_ff(float noundef %480, float noundef 6.553500e+04) #10
  %482 = fcmp ogt float %481, %475
  br i1 %482, label %483, label %496

483:                                              ; preds = %473
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #11
  %484 = fptoui float %481 to i16
  store i16 %484, ptr %454, align 2, !tbaa !132
  %485 = load i8, ptr %452, align 1, !tbaa !34
  store i8 %485, ptr %26, align 1, !tbaa !34
  %486 = getelementptr inbounds i8, ptr %452, i64 1
  %487 = load i8, ptr %486, align 1, !tbaa !34
  store i8 %487, ptr %414, align 1, !tbaa !34
  %488 = getelementptr inbounds i8, ptr %452, i64 2
  %489 = load i8, ptr %488, align 1, !tbaa !34
  store i8 %489, ptr %415, align 1, !tbaa !34
  %490 = load i8, ptr %468, align 1, !tbaa !34
  %491 = uitofp i8 %490 to float
  %492 = fmul float %481, %491
  %493 = fptosi float %492 to i32
  %494 = call fastcc i32 @divide_round_i(i32 noundef %493, i32 noundef 65535) #10, !range !38
  %495 = trunc i32 %494 to i8
  store i8 %495, ptr %416, align 1, !tbaa !34
  call void %409(ptr noundef %450, ptr noundef %451, ptr noundef nonnull %26) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #11
  br label %496

496:                                              ; preds = %473, %483, %465
  %497 = add nsw i32 %449, -1
  %498 = getelementptr inbounds i32, ptr %450, i64 1
  %499 = getelementptr inbounds i32, ptr %451, i64 1
  %500 = getelementptr inbounds i32, ptr %452, i64 1
  %501 = getelementptr inbounds i16, ptr %454, i64 1
  %502 = getelementptr inbounds i16, ptr %455, i64 1
  %503 = icmp sgt i32 %449, 1
  br i1 %503, label %448, label %504, !llvm.loop !134

504:                                              ; preds = %496, %445
  %505 = getelementptr inbounds i16, ptr %435, i64 %417
  br label %552

506:                                              ; preds = %441
  br i1 %444, label %507, label %552

507:                                              ; preds = %506
  %508 = icmp eq ptr %434, null
  br label %509

509:                                              ; preds = %507, %545
  %510 = phi i32 [ %443, %507 ], [ %546, %545 ]
  %511 = phi ptr [ %430, %507 ], [ %547, %545 ]
  %512 = phi ptr [ %431, %507 ], [ %548, %545 ]
  %513 = phi ptr [ %432, %507 ], [ %549, %545 ]
  %514 = phi ptr [ %434, %507 ], [ %526, %545 ]
  %515 = phi ptr [ %436, %507 ], [ %550, %545 ]
  %516 = load i16, ptr %515, align 2, !tbaa !132
  %517 = uitofp i16 %516 to float
  %518 = fmul float %517, %6
  br i1 %508, label %525, label %519

519:                                              ; preds = %509
  %520 = getelementptr inbounds i16, ptr %514, i64 1
  %521 = load i16, ptr %514, align 2, !tbaa !132
  %522 = uitofp i16 %521 to float
  %523 = fdiv float %522, 6.553500e+04
  %524 = fmul float %518, %523
  br label %525

525:                                              ; preds = %519, %509
  %526 = phi ptr [ %520, %519 ], [ %514, %509 ]
  %527 = phi float [ %524, %519 ], [ %518, %509 ]
  %528 = call fastcc float @min_ff(float noundef %527, float noundef 6.553500e+04) #10
  %529 = getelementptr inbounds i8, ptr %513, i64 3
  %530 = load i8, ptr %529, align 1, !tbaa !34
  %531 = icmp ne i8 %530, 0
  %532 = fcmp ogt float %528, 0.000000e+00
  %533 = and i1 %532, %531
  br i1 %533, label %534, label %545

534:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #11
  %535 = load i8, ptr %513, align 1, !tbaa !34
  store i8 %535, ptr %27, align 1, !tbaa !34
  %536 = getelementptr inbounds i8, ptr %513, i64 1
  %537 = load i8, ptr %536, align 1, !tbaa !34
  store i8 %537, ptr %418, align 1, !tbaa !34
  %538 = getelementptr inbounds i8, ptr %513, i64 2
  %539 = load i8, ptr %538, align 1, !tbaa !34
  store i8 %539, ptr %419, align 1, !tbaa !34
  %540 = uitofp i8 %530 to float
  %541 = fmul float %528, %540
  %542 = fptosi float %541 to i32
  %543 = call fastcc i32 @divide_round_i(i32 noundef %542, i32 noundef 65535) #10, !range !38
  %544 = trunc i32 %543 to i8
  store i8 %544, ptr %420, align 1, !tbaa !34
  call void %409(ptr noundef %511, ptr noundef %512, ptr noundef nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #11
  br label %545

545:                                              ; preds = %534, %525
  %546 = add nsw i32 %510, -1
  %547 = getelementptr inbounds i32, ptr %511, i64 1
  %548 = getelementptr inbounds i32, ptr %512, i64 1
  %549 = getelementptr inbounds i32, ptr %513, i64 1
  %550 = getelementptr inbounds i16, ptr %515, i64 1
  %551 = icmp sgt i32 %510, 1
  br i1 %551, label %509, label %552, !llvm.loop !135

552:                                              ; preds = %545, %506, %504
  %553 = phi ptr [ %505, %504 ], [ null, %506 ], [ null, %545 ]
  %554 = getelementptr inbounds i16, ptr %436, i64 %421
  %555 = icmp eq ptr %434, null
  %556 = getelementptr inbounds i16, ptr %434, i64 %421
  %557 = select i1 %555, ptr null, ptr %556
  br label %576

558:                                              ; preds = %439
  %559 = load i32, ptr %24, align 4, !tbaa !114
  %560 = icmp sgt i32 %559, 0
  br i1 %560, label %561, label %576

561:                                              ; preds = %558, %570
  %562 = phi i32 [ %571, %570 ], [ %559, %558 ]
  %563 = phi ptr [ %572, %570 ], [ %430, %558 ]
  %564 = phi ptr [ %573, %570 ], [ %431, %558 ]
  %565 = phi ptr [ %574, %570 ], [ %432, %558 ]
  %566 = getelementptr inbounds i8, ptr %565, i64 3
  %567 = load i8, ptr %566, align 1, !tbaa !34
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %570, label %569

569:                                              ; preds = %561
  call void %409(ptr noundef %563, ptr noundef %564, ptr noundef nonnull %565) #12
  br label %570

570:                                              ; preds = %561, %569
  %571 = add nsw i32 %562, -1
  %572 = getelementptr inbounds i32, ptr %563, i64 1
  %573 = getelementptr inbounds i32, ptr %564, i64 1
  %574 = getelementptr inbounds i32, ptr %565, i64 1
  %575 = icmp sgt i32 %562, 1
  br i1 %575, label %561, label %576, !llvm.loop !136

576:                                              ; preds = %570, %558, %552
  %577 = phi ptr [ %554, %552 ], [ null, %558 ], [ null, %570 ]
  %578 = phi ptr [ %553, %552 ], [ %435, %558 ], [ %435, %570 ]
  %579 = phi ptr [ %557, %552 ], [ %434, %558 ], [ %434, %570 ]
  %580 = getelementptr inbounds i32, ptr %430, i64 %422
  %581 = getelementptr inbounds i32, ptr %431, i64 %417
  %582 = getelementptr inbounds i32, ptr %432, i64 %421
  br label %583

583:                                              ; preds = %576, %429
  %584 = phi ptr [ %577, %576 ], [ %436, %429 ]
  %585 = phi ptr [ %578, %576 ], [ %435, %429 ]
  %586 = phi ptr [ %579, %576 ], [ %434, %429 ]
  %587 = phi ptr [ %582, %576 ], [ %432, %429 ]
  %588 = phi ptr [ %581, %576 ], [ %431, %429 ]
  %589 = phi ptr [ %580, %576 ], [ %430, %429 ]
  br i1 %142, label %590, label %719

590:                                              ; preds = %583
  %591 = icmp eq ptr %584, null
  br i1 %591, label %694, label %592

592:                                              ; preds = %590
  %593 = icmp eq ptr %585, null
  %594 = load i32, ptr %24, align 4, !tbaa !114
  %595 = icmp sgt i32 %594, 0
  br i1 %593, label %651, label %596

596:                                              ; preds = %592
  br i1 %595, label %597, label %649

597:                                              ; preds = %596
  %598 = icmp eq ptr %586, null
  br label %599

599:                                              ; preds = %597, %641
  %600 = phi i32 [ %594, %597 ], [ %642, %641 ]
  %601 = phi ptr [ %586, %597 ], [ %617, %641 ]
  %602 = phi ptr [ %585, %597 ], [ %646, %641 ]
  %603 = phi ptr [ %584, %597 ], [ %647, %641 ]
  %604 = phi ptr [ %437, %597 ], [ %645, %641 ]
  %605 = phi ptr [ %438, %597 ], [ %644, %641 ]
  %606 = phi ptr [ %433, %597 ], [ %643, %641 ]
  %607 = load i16, ptr %603, align 2, !tbaa !132
  %608 = uitofp i16 %607 to float
  %609 = fmul float %608, %6
  br i1 %598, label %616, label %610

610:                                              ; preds = %599
  %611 = getelementptr inbounds i16, ptr %601, i64 1
  %612 = load i16, ptr %601, align 2, !tbaa !132
  %613 = uitofp i16 %612 to float
  %614 = fdiv float %613, 6.553500e+04
  %615 = fmul float %609, %614
  br label %616

616:                                              ; preds = %610, %599
  %617 = phi ptr [ %611, %610 ], [ %601, %599 ]
  %618 = phi float [ %615, %610 ], [ %609, %599 ]
  %619 = getelementptr inbounds float, ptr %604, i64 3
  %620 = load float, ptr %619, align 4, !tbaa !73
  %621 = fcmp une float %620, 0.000000e+00
  %622 = fcmp une float %618, 0.000000e+00
  %623 = select i1 %621, i1 %622, i1 false
  br i1 %623, label %624, label %641

624:                                              ; preds = %616
  %625 = load i16, ptr %602, align 2, !tbaa !132
  %626 = uitofp i16 %625 to float
  %627 = fadd float %618, %626
  br i1 %413, label %630, label %628

628:                                              ; preds = %624
  %629 = call fastcc float @min_ff(float noundef %627, float noundef 6.553500e+04) #10
  br label %634

630:                                              ; preds = %624
  %631 = fdiv float %608, 6.553500e+04
  %632 = fneg float %626
  %633 = call float @llvm.fmuladd.f32(float %632, float %631, float %627)
  br label %634

634:                                              ; preds = %630, %628
  %635 = phi float [ %633, %630 ], [ %629, %628 ]
  %636 = call fastcc float @min_ff(float noundef %635, float noundef 6.553500e+04) #10
  %637 = fcmp ogt float %636, %626
  br i1 %637, label %638, label %641

638:                                              ; preds = %634
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #11
  %639 = fptoui float %636 to i16
  store i16 %639, ptr %602, align 2, !tbaa !132
  %640 = fdiv float %636, 6.553500e+04
  call fastcc void @mul_v4_v4fl(ptr noundef nonnull %28, ptr noundef nonnull %604, float noundef %640) #10
  call void %410(ptr noundef %606, ptr noundef %605, ptr noundef nonnull %28) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #11
  br label %641

641:                                              ; preds = %634, %638, %616
  %642 = add nsw i32 %600, -1
  %643 = getelementptr inbounds float, ptr %606, i64 4
  %644 = getelementptr inbounds float, ptr %605, i64 4
  %645 = getelementptr inbounds float, ptr %604, i64 4
  %646 = getelementptr inbounds i16, ptr %602, i64 1
  %647 = getelementptr inbounds i16, ptr %603, i64 1
  %648 = icmp sgt i32 %600, 1
  br i1 %648, label %599, label %649, !llvm.loop !137

649:                                              ; preds = %641, %596
  %650 = getelementptr inbounds i16, ptr %585, i64 %417
  br label %688

651:                                              ; preds = %592
  br i1 %595, label %652, label %688

652:                                              ; preds = %651
  %653 = icmp eq ptr %586, null
  br label %654

654:                                              ; preds = %652, %681
  %655 = phi i32 [ %594, %652 ], [ %682, %681 ]
  %656 = phi ptr [ %586, %652 ], [ %671, %681 ]
  %657 = phi ptr [ %584, %652 ], [ %686, %681 ]
  %658 = phi ptr [ %437, %652 ], [ %685, %681 ]
  %659 = phi ptr [ %438, %652 ], [ %684, %681 ]
  %660 = phi ptr [ %433, %652 ], [ %683, %681 ]
  %661 = load i16, ptr %657, align 2, !tbaa !132
  %662 = uitofp i16 %661 to float
  %663 = fmul float %662, %6
  br i1 %653, label %670, label %664

664:                                              ; preds = %654
  %665 = getelementptr inbounds i16, ptr %656, i64 1
  %666 = load i16, ptr %656, align 2, !tbaa !132
  %667 = uitofp i16 %666 to float
  %668 = fdiv float %667, 6.553500e+04
  %669 = fmul float %663, %668
  br label %670

670:                                              ; preds = %664, %654
  %671 = phi ptr [ %665, %664 ], [ %656, %654 ]
  %672 = phi float [ %669, %664 ], [ %663, %654 ]
  %673 = call fastcc float @min_ff(float noundef %672, float noundef 6.553500e+04) #10
  %674 = getelementptr inbounds float, ptr %658, i64 3
  %675 = load float, ptr %674, align 4, !tbaa !73
  %676 = fcmp une float %675, 0.000000e+00
  %677 = fcmp ogt float %673, 0.000000e+00
  %678 = and i1 %677, %676
  br i1 %678, label %679, label %681

679:                                              ; preds = %670
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #11
  %680 = fdiv float %673, 6.553500e+04
  call fastcc void @mul_v4_v4fl(ptr noundef nonnull %29, ptr noundef nonnull %658, float noundef %680) #10
  call void %410(ptr noundef %660, ptr noundef %659, ptr noundef nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #11
  br label %681

681:                                              ; preds = %679, %670
  %682 = add nsw i32 %655, -1
  %683 = getelementptr inbounds float, ptr %660, i64 4
  %684 = getelementptr inbounds float, ptr %659, i64 4
  %685 = getelementptr inbounds float, ptr %658, i64 4
  %686 = getelementptr inbounds i16, ptr %657, i64 1
  %687 = icmp sgt i32 %655, 1
  br i1 %687, label %654, label %688, !llvm.loop !138

688:                                              ; preds = %681, %651, %649
  %689 = phi ptr [ %650, %649 ], [ null, %651 ], [ null, %681 ]
  %690 = getelementptr inbounds i16, ptr %584, i64 %421
  %691 = icmp eq ptr %586, null
  %692 = getelementptr inbounds i16, ptr %586, i64 %421
  %693 = select i1 %691, ptr null, ptr %692
  br label %712

694:                                              ; preds = %590
  %695 = load i32, ptr %24, align 4, !tbaa !114
  %696 = icmp sgt i32 %695, 0
  br i1 %696, label %697, label %712

697:                                              ; preds = %694, %706
  %698 = phi i32 [ %707, %706 ], [ %695, %694 ]
  %699 = phi ptr [ %710, %706 ], [ %437, %694 ]
  %700 = phi ptr [ %709, %706 ], [ %438, %694 ]
  %701 = phi ptr [ %708, %706 ], [ %433, %694 ]
  %702 = getelementptr inbounds float, ptr %699, i64 3
  %703 = load float, ptr %702, align 4, !tbaa !73
  %704 = fcmp une float %703, 0.000000e+00
  br i1 %704, label %705, label %706

705:                                              ; preds = %697
  call void %410(ptr noundef %701, ptr noundef %700, ptr noundef nonnull %699) #12
  br label %706

706:                                              ; preds = %697, %705
  %707 = add nsw i32 %698, -1
  %708 = getelementptr inbounds float, ptr %701, i64 4
  %709 = getelementptr inbounds float, ptr %700, i64 4
  %710 = getelementptr inbounds float, ptr %699, i64 4
  %711 = icmp sgt i32 %698, 1
  br i1 %711, label %697, label %712, !llvm.loop !139

712:                                              ; preds = %706, %694, %688
  %713 = phi ptr [ %690, %688 ], [ null, %694 ], [ null, %706 ]
  %714 = phi ptr [ %689, %688 ], [ %585, %694 ], [ %585, %706 ]
  %715 = phi ptr [ %693, %688 ], [ %586, %694 ], [ %586, %706 ]
  %716 = getelementptr inbounds float, ptr %433, i64 %424
  %717 = getelementptr inbounds float, ptr %438, i64 %426
  %718 = getelementptr inbounds float, ptr %437, i64 %428
  br label %719

719:                                              ; preds = %583, %712
  %720 = phi ptr [ %717, %712 ], [ %438, %583 ]
  %721 = phi ptr [ %718, %712 ], [ %437, %583 ]
  %722 = phi ptr [ %713, %712 ], [ %584, %583 ]
  %723 = phi ptr [ %714, %712 ], [ %585, %583 ]
  %724 = phi ptr [ %715, %712 ], [ %586, %583 ]
  %725 = phi ptr [ %716, %712 ], [ %433, %583 ]
  %726 = load i32, ptr %25, align 4, !tbaa !114
  %727 = add nsw i32 %726, -1
  store i32 %727, ptr %25, align 4, !tbaa !114
  %728 = icmp sgt i32 %726, 1
  br i1 %728, label %429, label %729, !llvm.loop !140

729:                                              ; preds = %378, %321, %247, %719, %220, %327, %252, %408, %49, %45, %41, %33, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @imb_rectclip3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef %9, ptr nocapture noundef %10) unnamed_addr #1 !PGOFuncName !141 {
  %12 = load i32, ptr %3, align 4, !tbaa !114
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4, !tbaa !114
  %16 = sub nsw i32 %15, %12
  store i32 %16, ptr %7, align 4, !tbaa !114
  %17 = load i32, ptr %3, align 4, !tbaa !114
  %18 = load i32, ptr %5, align 4, !tbaa !114
  %19 = sub nsw i32 %18, %17
  store i32 %19, ptr %5, align 4, !tbaa !114
  %20 = load i32, ptr %3, align 4, !tbaa !114
  %21 = load i32, ptr %9, align 4, !tbaa !114
  %22 = add nsw i32 %21, %20
  store i32 %22, ptr %9, align 4, !tbaa !114
  store i32 0, ptr %3, align 4, !tbaa !114
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi i32 [ 0, %14 ], [ %12, %11 ]
  %25 = load i32, ptr %5, align 4, !tbaa !114
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = sub nsw i32 %24, %25
  store i32 %28, ptr %3, align 4, !tbaa !114
  %29 = load i32, ptr %5, align 4, !tbaa !114
  %30 = load i32, ptr %7, align 4, !tbaa !114
  %31 = sub nsw i32 %30, %29
  store i32 %31, ptr %7, align 4, !tbaa !114
  %32 = load i32, ptr %5, align 4, !tbaa !114
  %33 = load i32, ptr %9, align 4, !tbaa !114
  %34 = add nsw i32 %33, %32
  store i32 %34, ptr %9, align 4, !tbaa !114
  store i32 0, ptr %5, align 4, !tbaa !114
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i32, ptr %7, align 4, !tbaa !114
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 4, !tbaa !114
  %40 = sub nsw i32 %39, %36
  store i32 %40, ptr %3, align 4, !tbaa !114
  %41 = load i32, ptr %7, align 4, !tbaa !114
  %42 = load i32, ptr %5, align 4, !tbaa !114
  %43 = sub nsw i32 %42, %41
  store i32 %43, ptr %5, align 4, !tbaa !114
  %44 = load i32, ptr %7, align 4, !tbaa !114
  %45 = load i32, ptr %9, align 4, !tbaa !114
  %46 = add nsw i32 %45, %44
  store i32 %46, ptr %9, align 4, !tbaa !114
  store i32 0, ptr %7, align 4, !tbaa !114
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, ptr %4, align 4, !tbaa !114
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, ptr %8, align 4, !tbaa !114
  %52 = sub nsw i32 %51, %48
  store i32 %52, ptr %8, align 4, !tbaa !114
  %53 = load i32, ptr %4, align 4, !tbaa !114
  %54 = load i32, ptr %6, align 4, !tbaa !114
  %55 = sub nsw i32 %54, %53
  store i32 %55, ptr %6, align 4, !tbaa !114
  %56 = load i32, ptr %4, align 4, !tbaa !114
  %57 = load i32, ptr %10, align 4, !tbaa !114
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr %10, align 4, !tbaa !114
  store i32 0, ptr %4, align 4, !tbaa !114
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi i32 [ 0, %50 ], [ %48, %47 ]
  %61 = load i32, ptr %6, align 4, !tbaa !114
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = sub nsw i32 %60, %61
  store i32 %64, ptr %4, align 4, !tbaa !114
  %65 = load i32, ptr %6, align 4, !tbaa !114
  %66 = load i32, ptr %8, align 4, !tbaa !114
  %67 = sub nsw i32 %66, %65
  store i32 %67, ptr %8, align 4, !tbaa !114
  %68 = load i32, ptr %6, align 4, !tbaa !114
  %69 = load i32, ptr %10, align 4, !tbaa !114
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr %10, align 4, !tbaa !114
  store i32 0, ptr %6, align 4, !tbaa !114
  br label %71

71:                                               ; preds = %63, %59
  %72 = load i32, ptr %8, align 4, !tbaa !114
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, ptr %4, align 4, !tbaa !114
  %76 = sub nsw i32 %75, %72
  store i32 %76, ptr %4, align 4, !tbaa !114
  %77 = load i32, ptr %8, align 4, !tbaa !114
  %78 = load i32, ptr %6, align 4, !tbaa !114
  %79 = sub nsw i32 %78, %77
  store i32 %79, ptr %6, align 4, !tbaa !114
  %80 = load i32, ptr %8, align 4, !tbaa !114
  %81 = load i32, ptr %10, align 4, !tbaa !114
  %82 = add nsw i32 %81, %80
  store i32 %82, ptr %10, align 4, !tbaa !114
  store i32 0, ptr %8, align 4, !tbaa !114
  br label %83

83:                                               ; preds = %74, %71
  %84 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !116
  %86 = load i32, ptr %3, align 4, !tbaa !114
  %87 = sub nsw i32 %85, %86
  %88 = load i32, ptr %9, align 4, !tbaa !114
  %89 = icmp sgt i32 %88, %87
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 %87, ptr %9, align 4, !tbaa !114
  br label %91

91:                                               ; preds = %90, %83
  %92 = phi i32 [ %87, %90 ], [ %88, %83 ]
  %93 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !121
  %95 = load i32, ptr %4, align 4, !tbaa !114
  %96 = sub nsw i32 %94, %95
  %97 = load i32, ptr %10, align 4, !tbaa !114
  %98 = icmp sgt i32 %97, %96
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  store i32 %96, ptr %10, align 4, !tbaa !114
  %100 = load i32, ptr %9, align 4, !tbaa !114
  br label %101

101:                                              ; preds = %91, %99
  %102 = phi i32 [ %97, %91 ], [ %96, %99 ]
  %103 = phi i32 [ %92, %91 ], [ %100, %99 ]
  %104 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !116
  %106 = load i32, ptr %5, align 4, !tbaa !114
  %107 = sub nsw i32 %105, %106
  %108 = icmp sgt i32 %103, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  store i32 %107, ptr %9, align 4, !tbaa !114
  %110 = load i32, ptr %10, align 4, !tbaa !114
  br label %111

111:                                              ; preds = %109, %101
  %112 = phi i32 [ %110, %109 ], [ %102, %101 ]
  %113 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !121
  %115 = load i32, ptr %6, align 4, !tbaa !114
  %116 = sub nsw i32 %114, %115
  %117 = icmp sgt i32 %112, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 %116, ptr %10, align 4, !tbaa !114
  br label %119

119:                                              ; preds = %111, %118
  %120 = phi i32 [ %112, %111 ], [ %116, %118 ]
  %121 = icmp eq ptr %2, null
  br i1 %121, label %139, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !116
  %125 = load i32, ptr %7, align 4, !tbaa !114
  %126 = sub nsw i32 %124, %125
  %127 = load i32, ptr %9, align 4, !tbaa !114
  %128 = icmp sgt i32 %127, %126
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  store i32 %126, ptr %9, align 4, !tbaa !114
  %130 = load i32, ptr %10, align 4, !tbaa !114
  br label %131

131:                                              ; preds = %129, %122
  %132 = phi i32 [ %130, %129 ], [ %120, %122 ]
  %133 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !121
  %135 = load i32, ptr %8, align 4, !tbaa !114
  %136 = sub nsw i32 %134, %135
  %137 = icmp sgt i32 %132, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 %136, ptr %10, align 4, !tbaa !114
  br label %139

139:                                              ; preds = %119, %131, %138
  %140 = phi i32 [ %132, %131 ], [ %136, %138 ], [ %120, %119 ]
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr %9, align 4, !tbaa !114
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %139
  store i32 0, ptr %9, align 4, !tbaa !114
  store i32 0, ptr %10, align 4, !tbaa !114
  br label %146

146:                                              ; preds = %142, %145
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !142 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @divide_round_i(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !143 {
  %3 = shl nsw i32 %0, 1
  %4 = add nsw i32 %3, %1
  %5 = shl nuw nsw i32 %1, 1
  %6 = sdiv i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v4_v4fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #1 !PGOFuncName !144 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !73
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = fmul float %15, %2
  %17 = getelementptr inbounds float, ptr %0, i64 3
  store float %16, ptr %17, align 4, !tbaa !73
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_rectfill(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !121
  %11 = mul nsw i32 %10, %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %6
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !73
  %16 = fmul float %15, 2.550000e+02
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !73
  %20 = fmul float %19, 2.550000e+02
  %21 = fptosi float %20 to i32
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !73
  %24 = fmul float %23, 2.550000e+02
  %25 = fptosi float %24 to i32
  %26 = load float, ptr %1, align 4, !tbaa !73
  %27 = fmul float %26, 2.550000e+02
  %28 = fptosi float %27 to i32
  %29 = shl i32 %17, 24
  %30 = shl i32 %21, 16
  %31 = and i32 %30, 16711680
  %32 = or disjoint i32 %29, %31
  %33 = shl i32 %25, 8
  %34 = and i32 %33, 65280
  %35 = or disjoint i32 %32, %34
  %36 = and i32 %28, 255
  %37 = or disjoint i32 %35, %36
  br label %38

38:                                               ; preds = %13, %38
  %39 = phi i32 [ %11, %13 ], [ %42, %38 ]
  %40 = phi ptr [ %4, %13 ], [ %41, %38 ]
  %41 = getelementptr inbounds i32, ptr %40, i64 1
  store i32 %37, ptr %40, align 4, !tbaa !114
  %42 = add nsw i32 %39, -1
  %43 = icmp ugt i32 %39, 1
  br i1 %43, label %38, label %44, !llvm.loop !145

44:                                               ; preds = %38, %6, %2
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !124
  %47 = icmp eq ptr %46, null
  br i1 %47, label %72, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !116
  %51 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !121
  %53 = mul nsw i32 %52, %50
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = getelementptr inbounds float, ptr %1, i64 1
  %57 = getelementptr inbounds float, ptr %1, i64 2
  %58 = getelementptr inbounds float, ptr %1, i64 3
  br label %59

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %46, %55 ], [ %69, %59 ]
  %61 = phi i32 [ %53, %55 ], [ %70, %59 ]
  %62 = load float, ptr %1, align 4, !tbaa !73
  %63 = getelementptr inbounds float, ptr %60, i64 1
  store float %62, ptr %60, align 4, !tbaa !73
  %64 = load float, ptr %56, align 4, !tbaa !73
  %65 = getelementptr inbounds float, ptr %60, i64 2
  store float %64, ptr %63, align 4, !tbaa !73
  %66 = load float, ptr %57, align 4, !tbaa !73
  %67 = getelementptr inbounds float, ptr %60, i64 3
  store float %66, ptr %65, align 4, !tbaa !73
  %68 = load float, ptr %58, align 4, !tbaa !73
  %69 = getelementptr inbounds float, ptr %60, i64 4
  store float %68, ptr %67, align 4, !tbaa !73
  %70 = add nsw i32 %61, -1
  %71 = icmp ugt i32 %61, 1
  br i1 %71, label %59, label %72, !llvm.loop !146

72:                                               ; preds = %59, %48, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buf_rectfill_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [4 x float], align 16
  %12 = icmp ne ptr %0, null
  %13 = icmp ne ptr %1, null
  %14 = or i1 %12, %13
  %15 = icmp ne ptr %4, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %212

17:                                               ; preds = %10
  %18 = getelementptr inbounds float, ptr %4, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !73
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %212, label %21

21:                                               ; preds = %17
  %22 = icmp slt i32 %6, 0
  %23 = tail call i32 @llvm.smin.i32(i32 %6, i32 %2)
  %24 = select i1 %22, i32 0, i32 %23
  %25 = icmp slt i32 %8, 0
  %26 = tail call i32 @llvm.smin.i32(i32 %8, i32 %2)
  %27 = select i1 %25, i32 0, i32 %26
  %28 = icmp slt i32 %7, 0
  %29 = tail call i32 @llvm.smin.i32(i32 %7, i32 %3)
  %30 = select i1 %28, i32 0, i32 %29
  %31 = icmp slt i32 %9, 0
  %32 = tail call i32 @llvm.smin.i32(i32 %9, i32 %3)
  %33 = select i1 %31, i32 0, i32 %32
  %34 = tail call i32 @llvm.smax.i32(i32 %24, i32 %27)
  %35 = tail call i32 @llvm.smin.i32(i32 %24, i32 %27)
  %36 = tail call i32 @llvm.smax.i32(i32 %30, i32 %33)
  %37 = tail call i32 @llvm.smin.i32(i32 %30, i32 %33)
  %38 = icmp eq i32 %35, %34
  %39 = icmp eq i32 %37, %36
  %40 = or i1 %38, %39
  br i1 %40, label %212, label %41

41:                                               ; preds = %21
  %42 = fsub float 1.000000e+00, %19
  %43 = fdiv float %42, 2.550000e+02
  br i1 %12, label %44, label %156

44:                                               ; preds = %41
  %45 = fcmp ugt float %19, 0.000000e+00
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  %48 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %49 = select i1 %47, float 2.550000e+02, float %48
  %50 = fptoui float %49 to i8
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %44, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %44 ]
  %54 = fcmp oeq float %19, 1.000000e+00
  %55 = load float, ptr %4, align 4, !tbaa !73
  br i1 %54, label %56, label %83

56:                                               ; preds = %52
  %57 = fcmp ugt float %55, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = fcmp ogt float %55, 0x3FEFEFEFE0000000
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = tail call float @llvm.fmuladd.f32(float %55, float 2.550000e+02, float 5.000000e-01)
  %62 = fptoui float %61 to i8
  br label %63

63:                                               ; preds = %60, %58, %56
  %64 = phi i8 [ 0, %56 ], [ %62, %60 ], [ -1, %58 ]
  %65 = getelementptr inbounds float, ptr %4, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !73
  %67 = fcmp ugt float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = fcmp ogt float %66, 0x3FEFEFEFE0000000
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = tail call float @llvm.fmuladd.f32(float %66, float 2.550000e+02, float 5.000000e-01)
  %72 = fptoui float %71 to i8
  br label %73

73:                                               ; preds = %70, %68, %63
  %74 = phi i8 [ 0, %63 ], [ %72, %70 ], [ -1, %68 ]
  %75 = getelementptr inbounds float, ptr %4, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !73
  %77 = fcmp ugt float %76, 0.000000e+00
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = fcmp ogt float %76, 0x3FEFEFEFE0000000
  br i1 %79, label %90, label %80

80:                                               ; preds = %78
  %81 = tail call float @llvm.fmuladd.f32(float %76, float 2.550000e+02, float 5.000000e-01)
  %82 = fptoui float %81 to i8
  br label %90

83:                                               ; preds = %52
  %84 = fmul float %19, %55
  %85 = getelementptr inbounds float, ptr %4, i64 1
  %86 = load <2 x float>, ptr %85, align 4, !tbaa !73
  %87 = insertelement <2 x float> poison, float %19, i64 0
  %88 = shufflevector <2 x float> %87, <2 x float> poison, <2 x i32> zeroinitializer
  %89 = fmul <2 x float> %88, %86
  br label %90

90:                                               ; preds = %73, %78, %80, %83
  %91 = phi i8 [ 0, %83 ], [ %64, %80 ], [ %64, %78 ], [ %64, %73 ]
  %92 = phi i8 [ 0, %83 ], [ %74, %80 ], [ %74, %78 ], [ %74, %73 ]
  %93 = phi i8 [ 0, %83 ], [ %82, %80 ], [ -1, %78 ], [ 0, %73 ]
  %94 = phi float [ %84, %83 ], [ 0.000000e+00, %80 ], [ 0.000000e+00, %78 ], [ 0.000000e+00, %73 ]
  %95 = phi <2 x float> [ %89, %83 ], [ zeroinitializer, %80 ], [ zeroinitializer, %78 ], [ zeroinitializer, %73 ]
  %96 = sub nsw i32 %36, %37
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %156

98:                                               ; preds = %90
  %99 = sub nsw i32 %34, %35
  %100 = icmp sgt i32 %99, 0
  %101 = mul nsw i32 %3, %2
  %102 = zext nneg i32 %99 to i64
  %103 = extractelement <2 x float> %95, i64 0
  %104 = extractelement <2 x float> %95, i64 1
  br label %105

105:                                              ; preds = %98, %153
  %106 = phi i32 [ 0, %98 ], [ %154, %153 ]
  br i1 %100, label %107, label %153

107:                                              ; preds = %105
  %108 = add nsw i32 %106, %37
  %109 = mul nsw i32 %108, %2
  %110 = add i32 %109, %35
  br label %111

111:                                              ; preds = %107, %150
  %112 = phi i64 [ 0, %107 ], [ %151, %150 ]
  %113 = trunc i64 %112 to i32
  %114 = add i32 %110, %113
  %115 = shl nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %0, i64 %116
  %118 = icmp sgt i32 %114, -1
  %119 = icmp slt i32 %114, %101
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %150

121:                                              ; preds = %111
  br i1 %54, label %122, label %126

122:                                              ; preds = %121
  store i8 %91, ptr %117, align 1, !tbaa !34
  %123 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %92, ptr %123, align 1, !tbaa !34
  %124 = getelementptr inbounds i8, ptr %117, i64 2
  store i8 %93, ptr %124, align 1, !tbaa !34
  %125 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 -1, ptr %125, align 1, !tbaa !34
  br label %150

126:                                              ; preds = %121
  %127 = load i8, ptr %117, align 1, !tbaa !34
  %128 = uitofp i8 %127 to float
  %129 = tail call float @llvm.fmuladd.f32(float %128, float %43, float %94)
  %130 = fmul float %129, 2.550000e+02
  %131 = fptoui float %130 to i8
  store i8 %131, ptr %117, align 1, !tbaa !34
  %132 = getelementptr inbounds i8, ptr %117, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !34
  %134 = uitofp i8 %133 to float
  %135 = tail call float @llvm.fmuladd.f32(float %134, float %43, float %103)
  %136 = fmul float %135, 2.550000e+02
  %137 = fptoui float %136 to i8
  store i8 %137, ptr %132, align 1, !tbaa !34
  %138 = getelementptr inbounds i8, ptr %117, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !34
  %140 = uitofp i8 %139 to float
  %141 = tail call float @llvm.fmuladd.f32(float %140, float %43, float %104)
  %142 = fmul float %141, 2.550000e+02
  %143 = fptoui float %142 to i8
  store i8 %143, ptr %138, align 1, !tbaa !34
  %144 = getelementptr inbounds i8, ptr %117, i64 3
  %145 = load i8, ptr %144, align 1, !tbaa !34
  %146 = zext i8 %145 to i32
  %147 = add nuw nsw i32 %53, %146
  %148 = tail call i32 @llvm.umin.i32(i32 %147, i32 255)
  %149 = trunc i32 %148 to i8
  store i8 %149, ptr %144, align 1, !tbaa !34
  br label %150

150:                                              ; preds = %111, %126, %122
  %151 = add nuw nsw i64 %112, 1
  %152 = icmp eq i64 %151, %102
  br i1 %152, label %153, label %111, !llvm.loop !147

153:                                              ; preds = %150, %105
  %154 = add nuw nsw i32 %106, 1
  %155 = icmp eq i32 %154, %96
  br i1 %155, label %156, label %105, !llvm.loop !148

156:                                              ; preds = %153, %90, %41
  br i1 %13, label %157, label %212

157:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  %158 = icmp eq ptr %5, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %157
  call fastcc void @copy_v4_v4(ptr noundef nonnull %11, ptr noundef nonnull %4) #10
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #12
  br label %161

160:                                              ; preds = %157
  call fastcc void @srgb_to_linearrgb_v4(ptr noundef nonnull %11, ptr noundef nonnull %4) #10
  br label %161

161:                                              ; preds = %160, %159
  %162 = sub nsw i32 %36, %37
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %211

164:                                              ; preds = %161
  %165 = sub nsw i32 %34, %35
  %166 = icmp sgt i32 %165, 0
  %167 = fcmp oeq float %19, 1.000000e+00
  %168 = load <2 x float>, ptr %11, align 16
  %169 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %170 = load float, ptr %169, align 8
  %171 = zext nneg i32 %165 to i64
  %172 = insertelement <2 x float> poison, float %19, i64 0
  %173 = shufflevector <2 x float> %172, <2 x float> poison, <2 x i32> zeroinitializer
  %174 = insertelement <2 x float> poison, float %42, i64 0
  %175 = shufflevector <2 x float> %174, <2 x float> poison, <2 x i32> zeroinitializer
  br label %176

176:                                              ; preds = %164, %208
  %177 = phi i32 [ 0, %164 ], [ %209, %208 ]
  br i1 %166, label %178, label %208

178:                                              ; preds = %176
  %179 = add nsw i32 %177, %37
  %180 = mul nsw i32 %179, %2
  %181 = add i32 %180, %35
  br label %182

182:                                              ; preds = %178, %205
  %183 = phi i64 [ 0, %178 ], [ %206, %205 ]
  %184 = trunc i64 %183 to i32
  %185 = add i32 %181, %184
  %186 = shl nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, ptr %1, i64 %187
  br i1 %167, label %189, label %192

189:                                              ; preds = %182
  store <2 x float> %168, ptr %188, align 4, !tbaa !73
  %190 = getelementptr inbounds float, ptr %188, i64 2
  store float %170, ptr %190, align 4, !tbaa !73
  %191 = getelementptr inbounds float, ptr %188, i64 3
  store float 1.000000e+00, ptr %191, align 4, !tbaa !73
  br label %205

192:                                              ; preds = %182
  %193 = load <2 x float>, ptr %188, align 4, !tbaa !73
  %194 = fmul <2 x float> %175, %193
  %195 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %168, <2 x float> %173, <2 x float> %194)
  store <2 x float> %195, ptr %188, align 4, !tbaa !73
  %196 = getelementptr inbounds float, ptr %188, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !73
  %198 = fmul float %42, %197
  %199 = call float @llvm.fmuladd.f32(float %170, float %19, float %198)
  store float %199, ptr %196, align 4, !tbaa !73
  %200 = getelementptr inbounds float, ptr %188, i64 3
  %201 = load float, ptr %200, align 4, !tbaa !73
  %202 = fadd float %19, %201
  %203 = fcmp olt float %202, 1.000000e+00
  %204 = select i1 %203, float %202, float 1.000000e+00
  store float %204, ptr %200, align 4, !tbaa !73
  br label %205

205:                                              ; preds = %189, %192
  %206 = add nuw nsw i64 %183, 1
  %207 = icmp eq i64 %206, %171
  br i1 %207, label %208, label %182, !llvm.loop !149

208:                                              ; preds = %205, %176
  %209 = add nuw nsw i32 %177, 1
  %210 = icmp eq i32 %209, %162
  br i1 %210, label %211, label %176, !llvm.loop !150

211:                                              ; preds = %208, %161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %212

212:                                              ; preds = %156, %211, %21, %17, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !151 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  store float %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !152 {
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_rectfill_area(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !121
  tail call void @buf_rectfill_area(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %1, ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #10
  br label %18

18:                                               ; preds = %7, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_rectfill_alpha(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !122
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !116
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !121
  %15 = mul nsw i32 %14, %12
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds float, ptr %4, i64 3
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %22, %19 ], [ %15, %17 ]
  %21 = phi ptr [ %23, %19 ], [ %18, %17 ]
  store float %1, ptr %21, align 4, !tbaa !73
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds float, ptr %21, i64 4
  %24 = icmp ugt i32 %20, 1
  br i1 %24, label %19, label %25, !llvm.loop !153

25:                                               ; preds = %19, %10, %6, %2
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = fmul float %1, 2.550000e+02
  %31 = fptoui float %30 to i8
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !116
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !121
  %36 = mul nsw i32 %35, %33
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = getelementptr inbounds i8, ptr %27, i64 3
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %44, %40 ], [ %39, %38 ]
  %42 = phi i32 [ %43, %40 ], [ %36, %38 ]
  store i8 %31, ptr %41, align 1, !tbaa !34
  %43 = add nsw i32 %42, -1
  %44 = getelementptr inbounds i8, ptr %41, i64 4
  %45 = icmp ugt i32 %42, 1
  br i1 %45, label %40, label %46, !llvm.loop !154

46:                                               ; preds = %40, %29, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !155 {
  %3 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %3, ptr %0, align 1, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !156 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !157 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !158 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !159 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #12
  store float %4, ptr %0, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #12
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #12
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!"rectop.c:blend_color_mix_byte"}
!38 = !{i32 -4210752, i32 4210753}
!39 = !{!"rectop.c:blend_color_add_byte"}
!40 = !{!"rectop.c:blend_color_sub_byte"}
!41 = !{i32 -4210752, i32 4211008}
!42 = !{!"rectop.c:blend_color_mul_byte"}
!43 = !{!"rectop.c:blend_color_lighten_byte"}
!44 = !{!"rectop.c:blend_color_darken_byte"}
!45 = !{!"rectop.c:blend_color_erase_alpha_byte"}
!46 = !{!"rectop.c:blend_color_add_alpha_byte"}
!47 = !{!"rectop.c:blend_color_overlay_byte"}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"rectop.c:blend_color_hardlight_byte"}
!51 = distinct !{!51, !49}
!52 = !{!"rectop.c:blend_color_burn_byte"}
!53 = distinct !{!53, !49}
!54 = !{!"rectop.c:blend_color_linearburn_byte"}
!55 = distinct !{!55, !49}
!56 = !{!"rectop.c:blend_color_dodge_byte"}
!57 = distinct !{!57, !49}
!58 = !{!"rectop.c:blend_color_screen_byte"}
!59 = distinct !{!59, !49}
!60 = !{!"rectop.c:blend_color_softlight_byte"}
!61 = distinct !{!61, !49}
!62 = !{!"rectop.c:blend_color_pinlight_byte"}
!63 = distinct !{!63, !49}
!64 = !{!"rectop.c:blend_color_linearlight_byte"}
!65 = distinct !{!65, !49}
!66 = !{!"rectop.c:blend_color_vividlight_byte"}
!67 = distinct !{!67, !49}
!68 = !{!"rectop.c:blend_color_difference_byte"}
!69 = distinct !{!69, !49}
!70 = !{!"rectop.c:blend_color_exclusion_byte"}
!71 = distinct !{!71, !49}
!72 = !{!"rectop.c:blend_color_color_byte"}
!73 = !{!74, !74, i64 0}
!74 = !{!"float", !35, i64 0}
!75 = !{!"rectop.c:blend_color_hue_byte"}
!76 = !{!"rectop.c:blend_color_saturation_byte"}
!77 = !{!"rectop.c:blend_color_luminosity_byte"}
!78 = !{!"rectop.c:blend_color_mix_float"}
!79 = !{!"rectop.c:blend_color_add_float"}
!80 = !{!"rectop.c:blend_color_sub_float"}
!81 = !{!"rectop.c:blend_color_mul_float"}
!82 = !{!"rectop.c:blend_color_lighten_float"}
!83 = !{!"rectop.c:blend_color_darken_float"}
!84 = !{!"rectop.c:blend_color_erase_alpha_float"}
!85 = !{!"rectop.c:blend_color_add_alpha_float"}
!86 = !{!"rectop.c:blend_color_overlay_float"}
!87 = distinct !{!87, !49}
!88 = !{!"rectop.c:blend_color_hardlight_float"}
!89 = distinct !{!89, !49}
!90 = !{!"rectop.c:blend_color_burn_float"}
!91 = distinct !{!91, !49}
!92 = !{!"rectop.c:blend_color_linearburn_float"}
!93 = distinct !{!93, !49}
!94 = !{!"rectop.c:blend_color_dodge_float"}
!95 = distinct !{!95, !49}
!96 = !{!"rectop.c:blend_color_screen_float"}
!97 = distinct !{!97, !49}
!98 = !{!"rectop.c:blend_color_softlight_float"}
!99 = distinct !{!99, !49}
!100 = !{!"rectop.c:blend_color_pinlight_float"}
!101 = distinct !{!101, !49}
!102 = !{!"rectop.c:blend_color_linearlight_float"}
!103 = distinct !{!103, !49}
!104 = !{!"rectop.c:blend_color_vividlight_float"}
!105 = distinct !{!105, !49}
!106 = !{!"rectop.c:blend_color_difference_float"}
!107 = distinct !{!107, !49}
!108 = !{!"rectop.c:blend_color_exclusion_float"}
!109 = distinct !{!109, !49}
!110 = !{!"rectop.c:blend_color_color_float"}
!111 = !{!"rectop.c:blend_color_hue_float"}
!112 = !{!"rectop.c:blend_color_saturation_float"}
!113 = !{!"rectop.c:blend_color_luminosity_float"}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !35, i64 0}
!116 = !{!117, !115, i64 16}
!117 = !{!"ImBuf", !118, i64 0, !118, i64 8, !115, i64 16, !115, i64 20, !35, i64 24, !115, i64 28, !115, i64 32, !115, i64 36, !118, i64 40, !118, i64 48, !35, i64 56, !115, i64 72, !115, i64 76, !115, i64 80, !115, i64 84, !118, i64 88, !118, i64 96, !118, i64 104, !74, i64 112, !35, i64 120, !115, i64 280, !115, i64 284, !115, i64 288, !115, i64 292, !118, i64 296, !118, i64 304, !115, i64 312, !35, i64 316, !35, i64 1340, !118, i64 2368, !115, i64 2376, !118, i64 2384, !115, i64 2392, !115, i64 2396, !118, i64 2400, !118, i64 2408, !118, i64 2416, !118, i64 2424, !115, i64 2432, !119, i64 2436, !120, i64 2456}
!118 = !{!"any pointer", !35, i64 0}
!119 = !{!"rcti", !115, i64 0, !115, i64 4, !115, i64 8, !115, i64 12}
!120 = !{!"DDSData", !115, i64 0, !115, i64 4, !118, i64 8, !115, i64 16}
!121 = !{!117, !115, i64 20}
!122 = !{!117, !115, i64 28}
!123 = !{!117, !118, i64 40}
!124 = !{!117, !118, i64 48}
!125 = distinct !{!125, !49}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !49}
!130 = distinct !{!130, !49}
!131 = distinct !{!131, !49}
!132 = !{!133, !133, i64 0}
!133 = !{!"short", !35, i64 0}
!134 = distinct !{!134, !49}
!135 = distinct !{!135, !49}
!136 = distinct !{!136, !49}
!137 = distinct !{!137, !49}
!138 = distinct !{!138, !49}
!139 = distinct !{!139, !49}
!140 = distinct !{!140, !49}
!141 = !{!"rectop.c:imb_rectclip3"}
!142 = !{!"rectop.c:min_ff"}
!143 = !{!"rectop.c:divide_round_i"}
!144 = !{!"rectop.c:mul_v4_v4fl"}
!145 = distinct !{!145, !49}
!146 = distinct !{!146, !49}
!147 = distinct !{!147, !49}
!148 = distinct !{!148, !49}
!149 = distinct !{!149, !49}
!150 = distinct !{!150, !49}
!151 = !{!"rectop.c:copy_v4_v4"}
!152 = !{!"rectop.c:srgb_to_linearrgb_v4"}
!153 = distinct !{!153, !49}
!154 = distinct !{!154, !49}
!155 = !{!"rectop.c:copy_v4_v4_char"}
!156 = !{!"rectop.c:min_ii"}
!157 = !{!"rectop.c:max_ii"}
!158 = !{!"rectop.c:max_ff"}
!159 = !{!"rectop.c:srgb_to_linearrgb_v3_v3"}

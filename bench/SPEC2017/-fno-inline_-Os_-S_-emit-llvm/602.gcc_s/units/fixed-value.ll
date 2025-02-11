; ModuleID = 'fixed-value.c'
source_filename = "fixed-value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.real_value = type { i32, [3 x i64] }

@mode_fbit = external local_unnamed_addr constant [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [68 x i8] c"large fixed-point constant implicitly truncated to fixed-point type\00", align 1
@mode_ibit = external local_unnamed_addr constant [87 x i8], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fixed-value.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @fixed_identical(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i64, ptr %0, align 8, !tbaa !14
  %16 = load i64, ptr %1, align 8, !tbaa !14
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi i8 [ 0, %8 ], [ 0, %2 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @fixed_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !13
  %5 = xor i64 %4, %2
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixed_from_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !6
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = zext i8 %10 to i32
  %12 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef %1) #8
  %13 = load i32, ptr %7, align 8, !tbaa !6
  %14 = call fastcc i32 @check_real_for_fixed_mode(ptr noundef nonnull %4, i32 noundef %13) #9, !range !16
  %15 = add nsw i32 %14, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = icmp eq i32 %14, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load i32, ptr %7, align 8, !tbaa !6
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !15
  switch i8 %23, label %26 [
    i8 6, label %24
    i8 15, label %24
    i8 7, label %24
    i8 16, label %24
  ]

24:                                               ; preds = %19, %19, %19, %19, %3
  %25 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 151, ptr noundef nonnull @.str) #8
  br label %26

26:                                               ; preds = %19, %24, %17
  call void @real_2expN(ptr noundef nonnull %6, i32 noundef %11, i32 noundef %2) #8
  %27 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %5, i32 noundef 65, ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %28 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  call void @real_to_integer2(ptr noundef nonnull %0, ptr noundef nonnull %28, ptr noundef nonnull %5) #8
  %29 = icmp eq i32 %14, 3
  %30 = load i32, ptr %7, align 8, !tbaa !6
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  br i1 %29, label %34, label %44

34:                                               ; preds = %26
  switch i8 %33, label %45 [
    i8 4, label %35
    i8 13, label %35
    i8 5, label %35
    i8 14, label %35
    i8 6, label %48
  ]

35:                                               ; preds = %34, %34, %34, %34
  %36 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %31
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, %38
  %43 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %42, i8 noundef zeroext 1) #8
  br label %66

44:                                               ; preds = %26
  switch i8 %33, label %45 [
    i8 4, label %48
    i8 13, label %48
    i8 6, label %48
  ]

45:                                               ; preds = %34, %44
  %46 = icmp eq i8 %33, 15
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %34, %44, %44, %44, %45
  %49 = phi i32 [ 1, %44 ], [ %47, %45 ], [ 1, %44 ], [ 1, %44 ], [ 1, %34 ]
  %50 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %31
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %49, %52
  %54 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %31
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %53, %56
  switch i8 %33, label %58 [
    i8 5, label %61
    i8 14, label %61
    i8 7, label %61
  ]

58:                                               ; preds = %48
  %59 = icmp eq i8 %33, 16
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %48, %48, %48, %58
  %62 = phi i8 [ 1, %48 ], [ %60, %58 ], [ 1, %48 ], [ 1, %48 ]
  %63 = load i64, ptr %0, align 8
  %64 = load i64, ptr %28, align 8
  %65 = call { i64, i64 } @double_int_ext(i64 %63, i64 %64, i32 noundef %57, i8 noundef zeroext %62) #8
  br label %66

66:                                               ; preds = %61, %35
  %67 = phi { i64, i64 } [ %65, %61 ], [ %43, %35 ]
  %68 = extractvalue { i64, i64 } %67, 0
  store i64 %68, ptr %0, align 8
  %69 = extractvalue { i64, i64 } %67, 1
  store i64 %69, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @check_real_for_fixed_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = zext i8 %8 to i32
  call void @real_2expN(ptr noundef nonnull %3, i32 noundef %9, i32 noundef %1) #8
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %6
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 0, %12
  call void @real_2expN(ptr noundef nonnull %5, i32 noundef %13, i32 noundef %1) #8
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %15 = load i8, ptr %14, align 1, !tbaa !15
  switch i8 %15, label %17 [
    i8 4, label %16
    i8 13, label %16
    i8 6, label %16
    i8 15, label %16
  ]

16:                                               ; preds = %2, %2, %2, %2
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %4, i32 noundef 79, ptr noundef nonnull %3, ptr noundef null) #8
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #8
  br label %19

19:                                               ; preds = %17, %16
  %20 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef %0, ptr noundef nonnull %4) #8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %0, ptr noundef nonnull %3) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  %27 = call zeroext i8 @real_compare(i32 noundef 99, ptr noundef %0, ptr noundef nonnull %3) #8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 0, i32 2
  br label %30

30:                                               ; preds = %25, %22, %19
  %31 = phi i32 [ 1, %19 ], [ 3, %22 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret i32 %31
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_2expN(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare { i64, i64 } @double_int_ext(i64, i64, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @real_arithmetic2(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixed_to_decimal(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  call void @real_2expN(ptr noundef nonnull %5, i32 noundef %12, i32 noundef %8) #8
  %13 = load i64, ptr %1, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = load i32, ptr %7, align 8, !tbaa !6
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !15
  switch i8 %19, label %20 [
    i8 5, label %23
    i8 14, label %23
    i8 7, label %23
  ]

20:                                               ; preds = %3
  %21 = icmp eq i8 %19, 16
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %3, %3, %3, %20
  %24 = phi i32 [ 1, %3 ], [ %22, %20 ], [ 1, %3 ], [ 1, %3 ]
  call void @real_from_integer(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %13, i64 noundef %15, i32 noundef %24) #8
  %25 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 75, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @real_to_decimal(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %2, i64 noundef 0, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret void
}

; Function Attrs: optsize
declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @fixed_arithmetic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  switch i32 %1, label %48 [
    i32 79, label %6
    i32 63, label %8
    i32 64, label %17
    i32 65, label %26
    i32 67, label %35
    i32 83, label %44
    i32 84, label %46
  ]

6:                                                ; preds = %5
  %7 = tail call fastcc zeroext i8 @do_fixed_neg(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %4) #9, !range !17
  br label %49

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 747, ptr noundef nonnull @.str.3) #8
  br label %15

15:                                               ; preds = %8, %14
  %16 = tail call fastcc zeroext i8 @do_fixed_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext %4) #9, !range !17
  br label %49

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !6
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 752, ptr noundef nonnull @.str.3) #8
  br label %24

24:                                               ; preds = %17, %23
  %25 = tail call fastcc zeroext i8 @do_fixed_add(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext %4) #9, !range !17
  br label %49

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !6
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 757, ptr noundef nonnull @.str.3) #8
  br label %33

33:                                               ; preds = %26, %32
  %34 = tail call fastcc zeroext i8 @do_fixed_multiply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext %4) #9, !range !17
  br label %49

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.fixed_value, ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !6
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 762, ptr noundef nonnull @.str.3) #8
  br label %42

42:                                               ; preds = %35, %41
  %43 = tail call fastcc zeroext i8 @do_fixed_divide(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext %4) #9, !range !17
  br label %49

44:                                               ; preds = %5
  %45 = tail call fastcc zeroext i8 @do_fixed_shift(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4) #9, !range !17
  br label %49

46:                                               ; preds = %5
  %47 = tail call fastcc zeroext i8 @do_fixed_shift(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %4) #9, !range !17
  br label %49

48:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 775, ptr noundef nonnull @.str.3) #8
  br label %49

49:                                               ; preds = %48, %46, %44, %42, %33, %24, %15, %6
  %50 = phi i8 [ 0, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %34, %33 ], [ %25, %24 ], [ %16, %15 ], [ %7, %6 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_fixed_neg(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !15
  switch i8 %8, label %9 [
    i8 5, label %12
    i8 14, label %12
    i8 7, label %12
  ]

9:                                                ; preds = %3
  %10 = icmp eq i8 %8, 16
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %3, %3, %3, %9
  %13 = phi i8 [ 1, %3 ], [ %11, %9 ], [ 1, %3 ], [ 1, %3 ]
  %14 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %6
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %6
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %19, %16
  %21 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %5, ptr %21, align 8, !tbaa !6
  %22 = load i64, ptr %1, align 8
  %23 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = tail call { i64, i64 } @double_int_neg(i64 %22, i64 %24) #8
  %26 = extractvalue { i64, i64 } %25, 0
  %27 = extractvalue { i64, i64 } %25, 1
  store i64 %26, ptr %0, align 8, !tbaa.struct !18
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %27, ptr %28, align 8, !tbaa.struct !20
  %29 = icmp eq i8 %13, 0
  %30 = xor i8 %13, 1
  %31 = zext nneg i8 %30 to i32
  %32 = add nuw nsw i32 %20, %31
  %33 = tail call { i64, i64 } @double_int_ext(i64 %26, i64 %27, i32 noundef %32, i8 noundef zeroext %13) #8
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = extractvalue { i64, i64 } %33, 1
  store i64 %34, ptr %0, align 8, !tbaa.struct !18
  store i64 %35, ptr %28, align 8, !tbaa.struct !20
  br i1 %29, label %43, label %36

36:                                               ; preds = %12
  %37 = icmp eq i64 %34, 0
  %38 = icmp eq i64 %35, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = icmp eq i8 %2, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %59

43:                                               ; preds = %12
  %44 = icmp eq i64 %35, 0
  %45 = icmp eq i64 %34, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %23, align 8, !tbaa !13
  %49 = icmp eq i64 %35, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i64, ptr %1, align 8, !tbaa !14
  %52 = icmp eq i64 %34, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = icmp eq i8 %2, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %56 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %20, i8 noundef zeroext 1) #8
  %57 = extractvalue { i64, i64 } %56, 0
  %58 = extractvalue { i64, i64 } %56, 1
  store i64 %57, ptr %0, align 8, !tbaa.struct !18
  store i64 %58, ptr %28, align 8, !tbaa.struct !20
  br label %59

59:                                               ; preds = %43, %53, %40, %36, %47, %50, %55, %42
  %60 = phi i8 [ 0, %42 ], [ 0, %55 ], [ 0, %50 ], [ 0, %47 ], [ 0, %36 ], [ 1, %40 ], [ 1, %53 ], [ 0, %43 ]
  ret i8 %60
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_fixed_add(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = icmp eq i8 %3, 0
  %7 = load i64, ptr %2, align 8
  br i1 %6, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call { i64, i64 } @double_int_neg(i64 %7, i64 %10) #8
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !20
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %12, %8 ], [ %7, %14 ]
  %19 = phi i64 [ %13, %8 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !6
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !15
  switch i8 %24, label %25 [
    i8 5, label %28
    i8 14, label %28
    i8 7, label %28
  ]

25:                                               ; preds = %17
  %26 = icmp eq i8 %24, 16
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %17, %17, %17, %25
  %29 = phi i8 [ 1, %17 ], [ %27, %25 ], [ 1, %17 ], [ 1, %17 ]
  %30 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %22
  %31 = load i8, ptr %30, align 1, !tbaa !15
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %22
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, %32
  %37 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %21, ptr %37, align 8, !tbaa !6
  %38 = load i64, ptr %1, align 8
  %39 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = tail call { i64, i64 } @double_int_add(i64 %38, i64 %40, i64 %18, i64 %19) #8
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  store i64 %42, ptr %0, align 8, !tbaa.struct !18
  %44 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %43, ptr %44, align 8, !tbaa.struct !20
  %45 = icmp eq i8 %29, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %28
  br i1 %6, label %58, label %47

47:                                               ; preds = %46
  %48 = load i64, ptr %1, align 8
  %49 = load i64, ptr %39, align 8
  %50 = load i64, ptr %2, align 8
  %51 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %52 = load i64, ptr %51, align 8
  %53 = tail call i32 @double_int_cmp(i64 %48, i64 %49, i64 %50, i64 %52, i8 noundef zeroext 1) #8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %111

55:                                               ; preds = %47
  %56 = icmp eq i8 %4, 0
  br i1 %56, label %111, label %57

57:                                               ; preds = %55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %111

58:                                               ; preds = %46
  %59 = tail call { i64, i64 } @double_int_ext(i64 %42, i64 %43, i32 noundef %36, i8 noundef zeroext 1) #8
  %60 = extractvalue { i64, i64 } %59, 0
  %61 = extractvalue { i64, i64 } %59, 1
  store i64 %60, ptr %0, align 8, !tbaa.struct !18
  store i64 %61, ptr %44, align 8, !tbaa.struct !20
  %62 = load i64, ptr %1, align 8
  %63 = load i64, ptr %39, align 8
  %64 = tail call i32 @double_int_cmp(i64 %60, i64 %61, i64 %62, i64 %63, i8 noundef zeroext 1) #8
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load i64, ptr %0, align 8
  %68 = load i64, ptr %44, align 8
  %69 = load i64, ptr %2, align 8
  %70 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = tail call i32 @double_int_cmp(i64 %67, i64 %68, i64 %69, i64 %71, i8 noundef zeroext 1) #8
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %111

74:                                               ; preds = %66, %58
  %75 = icmp eq i8 %4, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %111

77:                                               ; preds = %28
  %78 = load i64, ptr %1, align 8
  %79 = load i64, ptr %39, align 8
  %80 = tail call fastcc i32 @get_fixed_sign_bit(i64 %78, i64 %79, i32 noundef %36) #9, !range !21
  %81 = load i64, ptr %2, align 8
  %82 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %83 = load i64, ptr %82, align 8
  %84 = tail call fastcc i32 @get_fixed_sign_bit(i64 %81, i64 %83, i32 noundef %36) #9, !range !21
  %85 = icmp eq i32 %80, %84
  br i1 %6, label %86, label %90

86:                                               ; preds = %77
  br i1 %85, label %87, label %111

87:                                               ; preds = %86
  %88 = tail call fastcc i32 @get_fixed_sign_bit(i64 %42, i64 %43, i32 noundef %36) #9, !range !21
  %89 = icmp eq i32 %80, %88
  br i1 %89, label %111, label %94

90:                                               ; preds = %77
  br i1 %85, label %111, label %91

91:                                               ; preds = %90
  %92 = tail call fastcc i32 @get_fixed_sign_bit(i64 %42, i64 %43, i32 noundef %36) #9, !range !21
  %93 = icmp eq i32 %80, %92
  br i1 %93, label %111, label %94

94:                                               ; preds = %91, %87
  %95 = icmp eq i8 %4, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %94
  store i64 1, ptr %0, align 8, !tbaa !14
  store i64 0, ptr %44, align 8, !tbaa !13
  %97 = zext nneg i32 %36 to i64
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %97, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %44, i32 noundef 1) #8
  %98 = load i64, ptr %1, align 8
  %99 = load i64, ptr %39, align 8
  %100 = tail call fastcc i32 @get_fixed_sign_bit(i64 %98, i64 %99, i32 noundef %36) #9, !range !21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = tail call { i64, i64 } @double_int_neg(i64 1, i64 0) #8
  %104 = extractvalue { i64, i64 } %103, 0
  %105 = extractvalue { i64, i64 } %103, 1
  %106 = load i64, ptr %0, align 8
  %107 = load i64, ptr %44, align 8
  %108 = tail call { i64, i64 } @double_int_add(i64 %106, i64 %107, i64 %104, i64 %105) #8
  %109 = extractvalue { i64, i64 } %108, 0
  %110 = extractvalue { i64, i64 } %108, 1
  store i64 %109, ptr %0, align 8, !tbaa.struct !18
  store i64 %110, ptr %44, align 8, !tbaa.struct !20
  br label %111

111:                                              ; preds = %86, %87, %94, %74, %55, %90, %91, %96, %102, %57, %47, %76, %66
  %112 = phi i8 [ 0, %57 ], [ 0, %47 ], [ 0, %76 ], [ 0, %66 ], [ 0, %102 ], [ 0, %96 ], [ 0, %91 ], [ 0, %90 ], [ 1, %55 ], [ 1, %74 ], [ 1, %94 ], [ 0, %87 ], [ 0, %86 ]
  %113 = xor i8 %29, 1
  %114 = zext nneg i8 %113 to i32
  %115 = add nuw nsw i32 %36, %114
  %116 = load i64, ptr %0, align 8
  %117 = load i64, ptr %44, align 8
  %118 = tail call { i64, i64 } @double_int_ext(i64 %116, i64 %117, i32 noundef %115, i8 noundef zeroext %29) #8
  %119 = extractvalue { i64, i64 } %118, 0
  %120 = extractvalue { i64, i64 } %118, 1
  store i64 %119, ptr %0, align 8, !tbaa.struct !18
  store i64 %120, ptr %44, align 8, !tbaa.struct !20
  ret i8 %112
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_fixed_multiply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 16
  %7 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !15
  switch i8 %11, label %12 [
    i8 5, label %15
    i8 14, label %15
    i8 7, label %15
  ]

12:                                               ; preds = %4
  %13 = icmp eq i8 %11, 16
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %4, %4, %12
  %16 = phi i8 [ 1, %4 ], [ %14, %12 ], [ 1, %4 ], [ 1, %4 ]
  %17 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %9
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %8, ptr %21, align 8, !tbaa !6
  %22 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %9
  %23 = load i16, ptr %22, align 2, !tbaa !22
  %24 = icmp ult i16 %23, 65
  br i1 %24, label %25, label %48

25:                                               ; preds = %15
  %26 = load i64, ptr %1, align 8
  %27 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %2, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = tail call { i64, i64 } @double_int_mul(i64 %26, i64 %28, i64 %29, i64 %31) #8
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  store i64 %33, ptr %0, align 8, !tbaa.struct !18
  %35 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %34, ptr %35, align 8, !tbaa.struct !20
  %36 = load i32, ptr %21, align 8, !tbaa !6
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = zext i8 %39 to i64
  %41 = sub nsw i64 0, %40
  %42 = xor i8 %16, 1
  %43 = zext nneg i8 %42 to i32
  tail call void @lshift_double(i64 noundef %33, i64 noundef %34, i64 noundef %41, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %35, i32 noundef %43) #8
  %44 = load i32, ptr %21, align 8, !tbaa !6
  %45 = load i64, ptr %0, align 8
  %46 = load i64, ptr %35, align 8
  %47 = tail call fastcc zeroext i8 @fixed_saturate1(i32 noundef %44, i64 %45, i64 %46, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %176

48:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %49 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !13
  %51 = load i64, ptr %1, align 8, !tbaa !14
  %52 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !13
  %54 = load i64, ptr %2, align 8, !tbaa !14
  %55 = tail call { i64, i64 } @double_int_mul(i64 %51, i64 0, i64 %54, i64 0) #8
  %56 = extractvalue { i64, i64 } %55, 0
  %57 = extractvalue { i64, i64 } %55, 1
  %58 = tail call { i64, i64 } @double_int_mul(i64 %51, i64 0, i64 %53, i64 0) #8
  %59 = extractvalue { i64, i64 } %58, 0
  %60 = extractvalue { i64, i64 } %58, 1
  %61 = tail call { i64, i64 } @double_int_mul(i64 %50, i64 0, i64 %54, i64 0) #8
  %62 = extractvalue { i64, i64 } %61, 0
  %63 = extractvalue { i64, i64 } %61, 1
  %64 = tail call { i64, i64 } @double_int_mul(i64 %50, i64 0, i64 %53, i64 0) #8
  %65 = extractvalue { i64, i64 } %64, 0
  %66 = extractvalue { i64, i64 } %64, 1
  %67 = tail call { i64, i64 } @double_int_add(i64 %56, i64 %57, i64 0, i64 %62) #8
  %68 = extractvalue { i64, i64 } %67, 0
  %69 = extractvalue { i64, i64 } %67, 1
  %70 = getelementptr inbounds i8, ptr %6, i64 8
  %71 = tail call i32 @double_int_cmp(i64 %68, i64 %69, i64 %56, i64 %57, i8 noundef zeroext 1) #8
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %76, label %73

73:                                               ; preds = %48
  %74 = tail call i32 @double_int_cmp(i64 %68, i64 %69, i64 0, i64 %62, i8 noundef zeroext 1) #8
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %48
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ 1, %76 ], [ 0, %73 ]
  %79 = tail call { i64, i64 } @double_int_add(i64 %68, i64 %69, i64 0, i64 %59) #8
  %80 = extractvalue { i64, i64 } %79, 0
  %81 = extractvalue { i64, i64 } %79, 1
  store i64 %80, ptr %6, align 16, !tbaa.struct !18
  store i64 %81, ptr %70, align 8, !tbaa.struct !20
  %82 = tail call i32 @double_int_cmp(i64 %80, i64 %81, i64 %68, i64 %69, i8 noundef zeroext 1) #8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = tail call i32 @double_int_cmp(i64 %80, i64 %81, i64 0, i64 %59, i8 noundef zeroext 1) #8
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %77
  %88 = add nuw nsw i32 %78, 1
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %88, %87 ], [ %78, %84 ]
  %91 = tail call { i64, i64 } @double_int_add(i64 %65, i64 %66, i64 %63, i64 0) #8
  %92 = extractvalue { i64, i64 } %91, 0
  %93 = extractvalue { i64, i64 } %91, 1
  %94 = getelementptr inbounds i8, ptr %5, i64 8
  %95 = tail call { i64, i64 } @double_int_add(i64 %92, i64 %93, i64 %60, i64 0) #8
  %96 = extractvalue { i64, i64 } %95, 0
  %97 = extractvalue { i64, i64 } %95, 1
  %98 = zext nneg i32 %90 to i64
  %99 = tail call { i64, i64 } @double_int_add(i64 %96, i64 %97, i64 %98, i64 0) #8
  %100 = extractvalue { i64, i64 } %99, 0
  %101 = extractvalue { i64, i64 } %99, 1
  store i64 %100, ptr %5, align 8, !tbaa.struct !18
  store i64 %101, ptr %94, align 8, !tbaa.struct !20
  %102 = icmp eq i8 %16, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %89
  %104 = load i64, ptr %49, align 8, !tbaa !13
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i64, ptr %2, align 8
  %108 = load i64, ptr %52, align 8
  %109 = tail call { i64, i64 } @double_int_neg(i64 %107, i64 %108) #8
  %110 = extractvalue { i64, i64 } %109, 0
  %111 = extractvalue { i64, i64 } %109, 1
  %112 = tail call { i64, i64 } @double_int_add(i64 %100, i64 %101, i64 %110, i64 %111) #8
  %113 = extractvalue { i64, i64 } %112, 0
  %114 = extractvalue { i64, i64 } %112, 1
  store i64 %113, ptr %5, align 8, !tbaa.struct !18
  store i64 %114, ptr %94, align 8, !tbaa.struct !20
  br label %115

115:                                              ; preds = %103, %106
  %116 = phi i64 [ %101, %103 ], [ %114, %106 ]
  %117 = phi i64 [ %100, %103 ], [ %113, %106 ]
  %118 = load i64, ptr %52, align 8, !tbaa !13
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i64, ptr %1, align 8
  %122 = load i64, ptr %49, align 8
  %123 = tail call { i64, i64 } @double_int_neg(i64 %121, i64 %122) #8
  %124 = extractvalue { i64, i64 } %123, 0
  %125 = extractvalue { i64, i64 } %123, 1
  %126 = tail call { i64, i64 } @double_int_add(i64 %117, i64 %116, i64 %124, i64 %125) #8
  %127 = extractvalue { i64, i64 } %126, 0
  %128 = extractvalue { i64, i64 } %126, 1
  store i64 %127, ptr %5, align 8, !tbaa.struct !18
  store i64 %128, ptr %94, align 8, !tbaa.struct !20
  br label %129

129:                                              ; preds = %89, %120, %115
  %130 = phi i64 [ %101, %89 ], [ %128, %120 ], [ %116, %115 ]
  %131 = phi i64 [ %100, %89 ], [ %127, %120 ], [ %117, %115 ]
  %132 = load i32, ptr %21, align 8, !tbaa !6
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !15
  %136 = icmp eq i8 %135, -128
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  store i64 %131, ptr %6, align 16, !tbaa !24
  store i64 %130, ptr %70, align 8, !tbaa !25
  %138 = sext i1 %102 to i64
  store i64 %138, ptr %5, align 8, !tbaa !24
  store i64 %138, ptr %94, align 8, !tbaa !25
  store i64 %131, ptr %0, align 8, !tbaa !14
  %139 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  store i64 %130, ptr %139, align 8, !tbaa !13
  %140 = xor i8 %16, 1
  %141 = zext nneg i8 %140 to i32
  br label %168

142:                                              ; preds = %129
  %143 = zext i8 %135 to i64
  %144 = sub nsw i64 0, %143
  call void @lshift_double(i64 noundef %80, i64 noundef %81, i64 noundef %144, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %70, i32 noundef 0) #8
  %145 = load i32, ptr %21, align 8, !tbaa !6
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i64
  %150 = sub nsw i64 128, %149
  %151 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  call void @lshift_double(i64 noundef %131, i64 noundef %130, i64 noundef %150, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %151, i32 noundef 0) #8
  %152 = load <2 x i64>, ptr %0, align 8, !tbaa !19
  %153 = load <2 x i64>, ptr %6, align 16, !tbaa !19
  %154 = or <2 x i64> %153, %152
  store <2 x i64> %154, ptr %0, align 8, !tbaa !19
  store <2 x i64> %154, ptr %6, align 16, !tbaa !19
  %155 = load i32, ptr %21, align 8, !tbaa !6
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !15
  %159 = zext i8 %158 to i64
  %160 = sub nsw i64 0, %159
  %161 = xor i8 %16, 1
  %162 = zext nneg i8 %161 to i32
  call void @lshift_double(i64 noundef %131, i64 noundef %130, i64 noundef %160, i32 noundef 128, ptr noundef nonnull %5, ptr noundef nonnull %94, i32 noundef %162) #8
  %163 = load i32, ptr %21, align 8, !tbaa !6
  %164 = load i64, ptr %5, align 8
  %165 = load i64, ptr %94, align 8
  %166 = load i64, ptr %6, align 16
  %167 = load i64, ptr %70, align 8
  br label %168

168:                                              ; preds = %142, %137
  %169 = phi i32 [ %162, %142 ], [ %141, %137 ]
  %170 = phi i64 [ %167, %142 ], [ %130, %137 ]
  %171 = phi i64 [ %166, %142 ], [ %131, %137 ]
  %172 = phi i64 [ %165, %142 ], [ %138, %137 ]
  %173 = phi i64 [ %164, %142 ], [ %138, %137 ]
  %174 = phi i32 [ %163, %142 ], [ %132, %137 ]
  %175 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %174, i64 %173, i64 %172, i64 %171, i64 %170, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %176

176:                                              ; preds = %168, %25
  %177 = phi i32 [ %169, %168 ], [ %43, %25 ]
  %178 = phi i8 [ %175, %168 ], [ %47, %25 ]
  %179 = zext i8 %18 to i32
  %180 = zext i8 %20 to i32
  %181 = add nuw nsw i32 %177, %179
  %182 = add nuw nsw i32 %181, %180
  %183 = load i64, ptr %0, align 8
  %184 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %185 = load i64, ptr %184, align 8
  %186 = call { i64, i64 } @double_int_ext(i64 %183, i64 %185, i32 noundef %182, i8 noundef zeroext %16) #8
  %187 = extractvalue { i64, i64 } %186, 0
  %188 = extractvalue { i64, i64 } %186, 1
  store i64 %187, ptr %0, align 8, !tbaa.struct !18
  store i64 %188, ptr %184, align 8, !tbaa.struct !20
  ret i8 %178
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_fixed_divide(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  %8 = alloca %struct.double_int, align 8
  %9 = alloca %struct.double_int, align 8
  %10 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !15
  switch i8 %14, label %15 [
    i8 5, label %18
    i8 14, label %18
    i8 7, label %18
  ]

15:                                               ; preds = %4
  %16 = icmp eq i8 %14, 16
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %4, %4, %4, %15
  %19 = phi i8 [ 1, %4 ], [ %17, %15 ], [ 1, %4 ], [ 1, %4 ]
  %20 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %12
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %12
  %23 = load i8, ptr %22, align 1, !tbaa !15
  %24 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %11, ptr %24, align 8, !tbaa !6
  %25 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %12
  %26 = load i16, ptr %25, align 2, !tbaa !22
  %27 = icmp ult i16 %26, 65
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load i64, ptr %1, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !13
  %32 = zext i8 %23 to i64
  %33 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %34 = xor i8 %19, 1
  %35 = zext nneg i8 %34 to i32
  tail call void @lshift_double(i64 noundef %29, i64 noundef %31, i64 noundef %32, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %33, i32 noundef %35) #8
  %36 = load i64, ptr %0, align 8
  %37 = load i64, ptr %33, align 8
  %38 = load i64, ptr %2, align 8
  %39 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = tail call { i64, i64 } @double_int_div(i64 %36, i64 %37, i64 %38, i64 %40, i8 noundef zeroext %19, i32 noundef 67) #8
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = extractvalue { i64, i64 } %41, 1
  store i64 %42, ptr %0, align 8, !tbaa.struct !18
  store i64 %43, ptr %33, align 8, !tbaa.struct !20
  %44 = load i32, ptr %24, align 8, !tbaa !6
  %45 = tail call fastcc zeroext i8 @fixed_saturate1(i32 noundef %44, i64 %42, i64 %43, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %182

46:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  %47 = icmp eq i8 %19, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = icmp slt i64 %50, 0
  %52 = load i64, ptr %1, align 8
  br i1 %51, label %53, label %63

53:                                               ; preds = %48
  %54 = tail call { i64, i64 } @double_int_neg(i64 %52, i64 %50) #8
  %55 = extractvalue { i64, i64 } %54, 0
  %56 = extractvalue { i64, i64 } %54, 1
  br label %63

57:                                               ; preds = %46
  %58 = load i64, ptr %1, align 8, !tbaa.struct !18
  %59 = getelementptr inbounds i8, ptr %1, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa.struct !20
  %61 = getelementptr inbounds i8, ptr %2, i64 8
  %62 = load i64, ptr %61, align 8, !tbaa.struct !20
  br label %76

63:                                               ; preds = %48, %53
  %64 = phi i64 [ %56, %53 ], [ %50, %48 ]
  %65 = phi i64 [ %55, %53 ], [ %52, %48 ]
  %66 = phi i32 [ 1, %53 ], [ 0, %48 ]
  %67 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i64, ptr %2, align 8
  %72 = tail call { i64, i64 } @double_int_neg(i64 %71, i64 %68) #8
  %73 = extractvalue { i64, i64 } %72, 0
  %74 = extractvalue { i64, i64 } %72, 1
  %75 = add nuw nsw i32 %66, 1
  br label %82

76:                                               ; preds = %57, %63
  %77 = phi i64 [ %68, %63 ], [ %62, %57 ]
  %78 = phi i64 [ %64, %63 ], [ %60, %57 ]
  %79 = phi i64 [ %65, %63 ], [ %58, %57 ]
  %80 = phi i32 [ %66, %63 ], [ 0, %57 ]
  %81 = load i64, ptr %2, align 8, !tbaa.struct !18
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i64 [ %78, %76 ], [ %64, %70 ]
  %84 = phi i64 [ %79, %76 ], [ %65, %70 ]
  %85 = phi i32 [ %80, %76 ], [ %75, %70 ]
  %86 = phi i64 [ %81, %76 ], [ %73, %70 ]
  %87 = phi i64 [ %77, %76 ], [ %74, %70 ]
  %88 = load i32, ptr %24, align 8, !tbaa !6
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = icmp eq i8 %91, -128
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  store i64 %84, ptr %5, align 8, !tbaa.struct !18
  %94 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %83, ptr %94, align 8, !tbaa.struct !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %107

95:                                               ; preds = %82
  %96 = zext i8 %91 to i64
  %97 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  call void @lshift_double(i64 noundef %84, i64 noundef %83, i64 noundef %96, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %97, i32 noundef 0) #8
  %98 = load i32, ptr %24, align 8, !tbaa !6
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !15
  %102 = zext i8 %101 to i64
  %103 = add nsw i64 %102, -128
  %104 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  call void @lshift_double(i64 noundef %84, i64 noundef %83, i64 noundef %103, i32 noundef 128, ptr noundef nonnull %5, ptr noundef nonnull %104, i32 noundef 0) #8
  %105 = load i64, ptr %5, align 8, !tbaa !24
  %106 = load i64, ptr %104, align 8, !tbaa !25
  br label %107

107:                                              ; preds = %95, %93
  %108 = phi i64 [ %106, %95 ], [ %83, %93 ]
  %109 = phi i64 [ %105, %95 ], [ %84, %93 ]
  %110 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %111 = getelementptr inbounds %struct.double_int, ptr %9, i64 0, i32 1
  %112 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %109, i64 noundef %108, i64 noundef %86, i64 noundef %87, ptr noundef nonnull %7, ptr noundef nonnull %110, ptr noundef nonnull %9, ptr noundef nonnull %111) #8
  %113 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  %114 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %115

115:                                              ; preds = %107, %144
  %116 = phi i32 [ 0, %107 ], [ %147, %144 ]
  %117 = load i64, ptr %111, align 8, !tbaa !25
  %118 = icmp slt i64 %117, 0
  %119 = load i64, ptr %9, align 8, !tbaa !24
  call void @lshift_double(i64 noundef %119, i64 noundef %117, i64 noundef 1, i32 noundef 128, ptr noundef nonnull %9, ptr noundef nonnull %111, i32 noundef 0) #8
  %120 = load i64, ptr %114, align 8, !tbaa !25
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i64, ptr %9, align 8, !tbaa !24
  %124 = add i64 %123, 1
  store i64 %124, ptr %9, align 8, !tbaa !24
  br label %125

125:                                              ; preds = %122, %115
  %126 = load i64, ptr %8, align 8, !tbaa !24
  %127 = load i64, ptr %113, align 8, !tbaa !25
  call void @lshift_double(i64 noundef %126, i64 noundef %127, i64 noundef 1, i32 noundef 128, ptr noundef nonnull %8, ptr noundef nonnull %113, i32 noundef 0) #8
  %128 = call { i64, i64 } @double_int_neg(i64 %86, i64 %87) #8
  %129 = extractvalue { i64, i64 } %128, 0
  %130 = extractvalue { i64, i64 } %128, 1
  %131 = load i64, ptr %9, align 8
  %132 = load i64, ptr %111, align 8
  %133 = call { i64, i64 } @double_int_add(i64 %131, i64 %132, i64 %129, i64 %130) #8
  %134 = extractvalue { i64, i64 } %133, 0
  %135 = extractvalue { i64, i64 } %133, 1
  br i1 %118, label %141, label %136

136:                                              ; preds = %125
  %137 = load i64, ptr %9, align 8
  %138 = load i64, ptr %111, align 8
  %139 = call i32 @double_int_cmp(i64 %137, i64 %138, i64 %86, i64 %87, i8 noundef zeroext 1) #8
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %144, label %141

141:                                              ; preds = %136, %125
  %142 = load i64, ptr %8, align 8, !tbaa !24
  %143 = add i64 %142, 1
  store i64 %143, ptr %8, align 8, !tbaa !24
  store i64 %134, ptr %9, align 8, !tbaa.struct !18
  store i64 %135, ptr %111, align 8, !tbaa.struct !20
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i64, ptr %6, align 8, !tbaa !24
  %146 = load i64, ptr %114, align 8, !tbaa !25
  call void @lshift_double(i64 noundef %145, i64 noundef %146, i64 noundef 1, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %114, i32 noundef 0) #8
  %147 = add nuw nsw i32 %116, 1
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %149, label %115, !llvm.loop !26

149:                                              ; preds = %144
  %150 = icmp eq i32 %85, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %149
  %152 = load i64, ptr %7, align 8
  %153 = load i64, ptr %110, align 8
  br label %173

154:                                              ; preds = %149
  %155 = load i64, ptr %8, align 8
  %156 = load i64, ptr %113, align 8
  %157 = call { i64, i64 } @double_int_neg(i64 %155, i64 %156) #8
  %158 = extractvalue { i64, i64 } %157, 0
  %159 = extractvalue { i64, i64 } %157, 1
  store i64 %158, ptr %8, align 8, !tbaa.struct !18
  store i64 %159, ptr %113, align 8, !tbaa.struct !20
  %160 = icmp eq i64 %159, 0
  %161 = icmp eq i64 %158, 0
  %162 = select i1 %160, i1 %161, i1 false
  %163 = load i64, ptr %7, align 8
  br i1 %162, label %164, label %169

164:                                              ; preds = %154
  %165 = load i64, ptr %110, align 8
  %166 = call { i64, i64 } @double_int_neg(i64 %163, i64 %165) #8
  %167 = extractvalue { i64, i64 } %166, 0
  %168 = extractvalue { i64, i64 } %166, 1
  store i64 %167, ptr %7, align 8, !tbaa.struct !18
  store i64 %168, ptr %110, align 8, !tbaa.struct !20
  br label %173

169:                                              ; preds = %154
  %170 = xor i64 %163, -1
  store i64 %170, ptr %7, align 8, !tbaa !24
  %171 = load i64, ptr %110, align 8, !tbaa !25
  %172 = xor i64 %171, -1
  store i64 %172, ptr %110, align 8, !tbaa !25
  br label %173

173:                                              ; preds = %151, %164, %169
  %174 = phi i64 [ %153, %151 ], [ %168, %164 ], [ %172, %169 ]
  %175 = phi i64 [ %152, %151 ], [ %167, %164 ], [ %170, %169 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !18
  %176 = load i32, ptr %24, align 8, !tbaa !6
  %177 = load i64, ptr %8, align 8
  %178 = load i64, ptr %113, align 8
  %179 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %176, i64 %175, i64 %174, i64 %177, i64 %178, ptr noundef %0, i8 noundef zeroext %3) #9, !range !17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %180 = xor i8 %19, 1
  %181 = zext nneg i8 %180 to i32
  br label %182

182:                                              ; preds = %173, %28
  %183 = phi i32 [ %181, %173 ], [ %35, %28 ]
  %184 = phi i8 [ %179, %173 ], [ %45, %28 ]
  %185 = zext i8 %21 to i32
  %186 = zext i8 %23 to i32
  %187 = add nuw nsw i32 %183, %185
  %188 = add nuw nsw i32 %187, %186
  %189 = load i64, ptr %0, align 8
  %190 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %191 = load i64, ptr %190, align 8
  %192 = call { i64, i64 } @double_int_ext(i64 %189, i64 %191, i32 noundef %188, i8 noundef zeroext %19) #8
  %193 = extractvalue { i64, i64 } %192, 0
  %194 = extractvalue { i64, i64 } %192, 1
  store i64 %193, ptr %0, align 8, !tbaa.struct !18
  store i64 %194, ptr %190, align 8, !tbaa.struct !20
  ret i8 %184
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_fixed_shift(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  %8 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !15
  switch i8 %12, label %13 [
    i8 5, label %16
    i8 14, label %16
    i8 7, label %16
  ]

13:                                               ; preds = %5
  %14 = icmp eq i8 %12, 16
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %5, %5, %5, %13
  %17 = phi i8 [ 1, %5 ], [ %15, %13 ], [ 1, %5 ], [ 1, %5 ]
  %18 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %10
  %19 = load i8, ptr %18, align 1, !tbaa !15
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %10
  %22 = load i8, ptr %21, align 1, !tbaa !15
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %9, ptr %24, align 8, !tbaa !6
  %25 = load i64, ptr %2, align 8, !tbaa !14
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  br label %103

28:                                               ; preds = %16
  %29 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %10
  %30 = load i16, ptr %29, align 2, !tbaa !22
  %31 = icmp ugt i16 %30, 64
  %32 = icmp ne i8 %3, 0
  %33 = and i1 %32, %31
  br i1 %33, label %49, label %34

34:                                               ; preds = %28
  %35 = load i64, ptr %1, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !13
  %38 = icmp eq i8 %3, 0
  %39 = sub i64 0, %25
  %40 = select i1 %38, i64 %39, i64 %25
  %41 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %42 = xor i8 %17, 1
  %43 = zext nneg i8 %42 to i32
  tail call void @lshift_double(i64 noundef %35, i64 noundef %37, i64 noundef %40, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %41, i32 noundef %43) #8
  br i1 %32, label %44, label %92

44:                                               ; preds = %34
  %45 = load i32, ptr %24, align 8, !tbaa !6
  %46 = load i64, ptr %0, align 8
  %47 = load i64, ptr %41, align 8
  %48 = tail call fastcc zeroext i8 @fixed_saturate1(i32 noundef %45, i64 %46, i64 %47, ptr noundef nonnull %0, i8 noundef zeroext %4) #9, !range !17
  br label %92

49:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %50 = icmp eq i64 %25, 128
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %64

52:                                               ; preds = %49
  %53 = load i64, ptr %1, align 8, !tbaa !14
  %54 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !13
  %56 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %57 = xor i8 %17, 1
  %58 = zext nneg i8 %57 to i32
  call void @lshift_double(i64 noundef %53, i64 noundef %55, i64 noundef %25, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %56, i32 noundef %58) #8
  %59 = load i64, ptr %1, align 8, !tbaa !14
  %60 = load i64, ptr %54, align 8, !tbaa !13
  %61 = load i64, ptr %2, align 8, !tbaa !14
  %62 = add i64 %61, -128
  %63 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  call void @lshift_double(i64 noundef %59, i64 noundef %60, i64 noundef %62, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %63, i32 noundef 0) #8
  br label %64

64:                                               ; preds = %52, %51
  %65 = icmp eq i8 %17, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = load i64, ptr %6, align 8
  br label %81

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.double_int, ptr %1, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !13
  %71 = icmp slt i64 %70, 0
  %72 = load i64, ptr %6, align 8
  br i1 %71, label %73, label %81

73:                                               ; preds = %68
  %74 = load i64, ptr %2, align 8, !tbaa !14
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = call { i64, i64 } @double_int_ext(i64 %72, i64 %77, i32 noundef %75, i8 noundef zeroext 0) #8
  %79 = extractvalue { i64, i64 } %78, 0
  %80 = extractvalue { i64, i64 } %78, 1
  store i64 %79, ptr %6, align 8, !tbaa.struct !18
  store i64 %80, ptr %76, align 8, !tbaa.struct !20
  br label %81

81:                                               ; preds = %66, %73, %68
  %82 = phi i64 [ %67, %66 ], [ %79, %73 ], [ %72, %68 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !18
  %83 = load i32, ptr %24, align 8, !tbaa !6
  %84 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  %85 = load i64, ptr %84, align 8
  %86 = load i64, ptr %7, align 8
  %87 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %83, i64 %82, i64 %85, i64 %86, i64 %88, ptr noundef nonnull %0, i8 noundef zeroext %4) #9, !range !17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %90 = xor i8 %17, 1
  %91 = zext nneg i8 %90 to i32
  br label %92

92:                                               ; preds = %34, %44, %81
  %93 = phi i32 [ %43, %34 ], [ %43, %44 ], [ %91, %81 ]
  %94 = phi i8 [ 0, %34 ], [ %48, %44 ], [ %89, %81 ]
  %95 = add nuw nsw i32 %93, %20
  %96 = add nuw nsw i32 %95, %23
  %97 = load i64, ptr %0, align 8
  %98 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %99 = load i64, ptr %98, align 8
  %100 = call { i64, i64 } @double_int_ext(i64 %97, i64 %99, i32 noundef %96, i8 noundef zeroext %17) #8
  %101 = extractvalue { i64, i64 } %100, 0
  %102 = extractvalue { i64, i64 } %100, 1
  store i64 %101, ptr %0, align 8, !tbaa.struct !18
  store i64 %102, ptr %98, align 8, !tbaa.struct !20
  br label %103

103:                                              ; preds = %92, %27
  %104 = phi i8 [ 0, %27 ], [ %94, %92 ]
  ret i8 %104
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #3

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @double_int_cmp(i64, i64, i64, i64, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_fixed_sign_bit(i64 %0, i64 %1, i32 noundef %2) unnamed_addr #5 {
  %4 = icmp slt i32 %2, 64
  %5 = zext nneg i32 %2 to i64
  %6 = lshr i64 %0, %5
  %7 = add nsw i32 %2, -64
  %8 = zext nneg i32 %7 to i64
  %9 = lshr i64 %1, %8
  %10 = select i1 %4, i64 %6, i64 %9
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: optsize
declare void @lshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fixed_saturate1(i32 noundef %0, i64 %1, i64 %2, ptr nocapture noundef writeonly %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca %struct.double_int, align 8
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  switch i8 %9, label %27 [
    i8 5, label %10
    i8 14, label %10
    i8 7, label %10
    i8 16, label %10
  ]

10:                                               ; preds = %5, %5, %5, %5
  %11 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %7
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %7
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %16, %13
  %18 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %17, i8 noundef zeroext 1) #8
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  %21 = tail call i32 @double_int_cmp(i64 %1, i64 %2, i64 %19, i64 %20, i8 noundef zeroext 1) #8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %62

23:                                               ; preds = %10
  %24 = icmp eq i8 %4, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %23
  store i64 %19, ptr %3, align 8, !tbaa.struct !18
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %20, ptr %26, align 8, !tbaa.struct !20
  br label %62

27:                                               ; preds = %5
  %28 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %7
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %7
  %32 = load i8, ptr %31, align 1, !tbaa !15
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %33, %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %35 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %34, i8 noundef zeroext 1) #8
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  %38 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  store i64 0, ptr %38, align 8, !tbaa !25
  store i64 1, ptr %6, align 8, !tbaa !24
  %39 = zext nneg i32 %34 to i64
  call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %39, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %38, i32 noundef 1) #8
  %40 = add nuw nsw i32 %34, 1
  %41 = load i64, ptr %6, align 8
  %42 = load i64, ptr %38, align 8
  %43 = call { i64, i64 } @double_int_ext(i64 %41, i64 %42, i32 noundef %40, i8 noundef zeroext 0) #8
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  store i64 %44, ptr %6, align 8, !tbaa.struct !18
  store i64 %45, ptr %38, align 8, !tbaa.struct !20
  %46 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 %36, i64 %37, i8 noundef zeroext 0) #8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = icmp eq i8 %4, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %48
  store i64 %36, ptr %3, align 8, !tbaa.struct !18
  %51 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %37, ptr %51, align 8, !tbaa.struct !20
  br label %60

52:                                               ; preds = %27
  %53 = load i64, ptr %6, align 8
  %54 = load i64, ptr %38, align 8
  %55 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 %53, i64 %54, i8 noundef zeroext 0) #8
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = icmp eq i8 %4, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !18
  br label %60

60:                                               ; preds = %57, %48, %52, %59, %50
  %61 = phi i8 [ 0, %50 ], [ 0, %59 ], [ 0, %52 ], [ 1, %48 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %62

62:                                               ; preds = %10, %25, %23, %60
  %63 = phi i8 [ %61, %60 ], [ 0, %25 ], [ 0, %10 ], [ 1, %23 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fixed_saturate2(i32 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nocapture noundef writeonly %5, i8 noundef zeroext %6) unnamed_addr #1 {
  %8 = alloca %struct.double_int, align 8
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !15
  switch i8 %11, label %35 [
    i8 5, label %12
    i8 14, label %12
    i8 7, label %12
    i8 16, label %12
  ]

12:                                               ; preds = %7, %7, %7, %7
  %13 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %9
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = zext i8 %17 to i32
  %19 = add nuw nsw i32 %18, %15
  %20 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %19, i8 noundef zeroext 1) #8
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = extractvalue { i64, i64 } %20, 1
  %23 = tail call i32 @double_int_cmp(i64 %1, i64 %2, i64 0, i64 0, i8 noundef zeroext 1) #8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %1, i64 %2, i64 0, i64 0) #9, !range !17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %82, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @double_int_cmp(i64 %3, i64 %4, i64 %21, i64 %22, i8 noundef zeroext 1) #8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %82

31:                                               ; preds = %28, %12
  %32 = icmp eq i8 %6, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %31
  store i64 %21, ptr %5, align 8, !tbaa.struct !18
  %34 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %22, ptr %34, align 8, !tbaa.struct !20
  br label %82

35:                                               ; preds = %7
  %36 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %9
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %43 = tail call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %42, i8 noundef zeroext 1) #8
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  %46 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  store i64 0, ptr %46, align 8, !tbaa !25
  store i64 1, ptr %8, align 8, !tbaa !24
  %47 = zext nneg i32 %42 to i64
  call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %47, i32 noundef 128, ptr noundef nonnull %8, ptr noundef nonnull %46, i32 noundef 1) #8
  %48 = add nuw nsw i32 %42, 1
  %49 = load i64, ptr %8, align 8
  %50 = load i64, ptr %46, align 8
  %51 = call { i64, i64 } @double_int_ext(i64 %49, i64 %50, i32 noundef %48, i8 noundef zeroext 0) #8
  %52 = extractvalue { i64, i64 } %51, 0
  %53 = extractvalue { i64, i64 } %51, 1
  store i64 %52, ptr %8, align 8, !tbaa.struct !18
  store i64 %53, ptr %46, align 8, !tbaa.struct !20
  %54 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 0, i64 0, i8 noundef zeroext 0) #8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %62, label %56

56:                                               ; preds = %35
  %57 = call fastcc zeroext i8 @double_int_equal_p(i64 %1, i64 %2, i64 0, i64 0) #9, !range !17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = call i32 @double_int_cmp(i64 %3, i64 %4, i64 %44, i64 %45, i8 noundef zeroext 1) #8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %35
  %63 = icmp eq i8 %6, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %62
  store i64 %44, ptr %5, align 8, !tbaa.struct !18
  %65 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %45, ptr %65, align 8, !tbaa.struct !20
  br label %80

66:                                               ; preds = %59, %56
  %67 = call i32 @double_int_cmp(i64 %1, i64 %2, i64 -1, i64 -1, i8 noundef zeroext 0) #8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = call fastcc zeroext i8 @double_int_equal_p(i64 %1, i64 %2, i64 -1, i64 -1) #9, !range !17
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr %8, align 8
  %74 = load i64, ptr %46, align 8
  %75 = call i32 @double_int_cmp(i64 %3, i64 %4, i64 %73, i64 %74, i8 noundef zeroext 1) #8
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %66
  %78 = icmp eq i8 %6, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !18
  br label %80

80:                                               ; preds = %77, %62, %69, %72, %79, %64
  %81 = phi i8 [ 0, %64 ], [ 0, %79 ], [ 0, %72 ], [ 0, %69 ], [ 1, %62 ], [ 1, %77 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %82

82:                                               ; preds = %25, %28, %33, %31, %80
  %83 = phi i8 [ %81, %80 ], [ 0, %33 ], [ 0, %28 ], [ 0, %25 ], [ 1, %31 ]
  ret i8 %83
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #5 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_div(i64, i64, i64, i64, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @fixed_compare(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fixed_value, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 788, ptr noundef nonnull @.str.3) #8
  br label %10

10:                                               ; preds = %3, %9
  switch i32 %0, label %104 [
    i32 102, label %11
    i32 101, label %20
    i32 97, label %28
    i32 98, label %47
    i32 99, label %66
    i32 100, label %85
  ]

11:                                               ; preds = %10
  %12 = load i64, ptr %1, align 8
  %13 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %2, align 8
  %16 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %12, i64 %14, i64 %15, i64 %17) #9, !range !17
  %19 = xor i8 %18, 1
  br label %105

20:                                               ; preds = %10
  %21 = load i64, ptr %1, align 8
  %22 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = load i64, ptr %2, align 8
  %25 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %21, i64 %23, i64 %24, i64 %26) #9, !range !17
  br label %105

28:                                               ; preds = %10
  %29 = load i32, ptr %4, align 8, !tbaa !6
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !15
  switch i8 %32, label %33 [
    i8 5, label %36
    i8 14, label %36
    i8 7, label %36
  ]

33:                                               ; preds = %28
  %34 = icmp eq i8 %32, 16
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %28, %28, %28, %33
  %37 = phi i8 [ 1, %28 ], [ %35, %33 ], [ 1, %28 ], [ 1, %28 ]
  %38 = load i64, ptr %1, align 8
  %39 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = load i64, ptr %2, align 8
  %42 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = tail call i32 @double_int_cmp(i64 %38, i64 %40, i64 %41, i64 %43, i8 noundef zeroext %37) #8
  %45 = icmp eq i32 %44, -1
  %46 = zext i1 %45 to i8
  br label %105

47:                                               ; preds = %10
  %48 = load i32, ptr %4, align 8, !tbaa !6
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  switch i8 %51, label %52 [
    i8 5, label %55
    i8 14, label %55
    i8 7, label %55
  ]

52:                                               ; preds = %47
  %53 = icmp eq i8 %51, 16
  %54 = zext i1 %53 to i8
  br label %55

55:                                               ; preds = %47, %47, %47, %52
  %56 = phi i8 [ 1, %47 ], [ %54, %52 ], [ 1, %47 ], [ 1, %47 ]
  %57 = load i64, ptr %1, align 8
  %58 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %2, align 8
  %61 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = tail call i32 @double_int_cmp(i64 %57, i64 %59, i64 %60, i64 %62, i8 noundef zeroext %56) #8
  %64 = icmp ne i32 %63, 1
  %65 = zext i1 %64 to i8
  br label %105

66:                                               ; preds = %10
  %67 = load i32, ptr %4, align 8, !tbaa !6
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  switch i8 %70, label %71 [
    i8 5, label %74
    i8 14, label %74
    i8 7, label %74
  ]

71:                                               ; preds = %66
  %72 = icmp eq i8 %70, 16
  %73 = zext i1 %72 to i8
  br label %74

74:                                               ; preds = %66, %66, %66, %71
  %75 = phi i8 [ 1, %66 ], [ %73, %71 ], [ 1, %66 ], [ 1, %66 ]
  %76 = load i64, ptr %1, align 8
  %77 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %78 = load i64, ptr %77, align 8
  %79 = load i64, ptr %2, align 8
  %80 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %81 = load i64, ptr %80, align 8
  %82 = tail call i32 @double_int_cmp(i64 %76, i64 %78, i64 %79, i64 %81, i8 noundef zeroext %75) #8
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i8
  br label %105

85:                                               ; preds = %10
  %86 = load i32, ptr %4, align 8, !tbaa !6
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  switch i8 %89, label %90 [
    i8 5, label %93
    i8 14, label %93
    i8 7, label %93
  ]

90:                                               ; preds = %85
  %91 = icmp eq i8 %89, 16
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %85, %85, %85, %90
  %94 = phi i8 [ 1, %85 ], [ %92, %90 ], [ 1, %85 ], [ 1, %85 ]
  %95 = load i64, ptr %1, align 8
  %96 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %97 = load i64, ptr %96, align 8
  %98 = load i64, ptr %2, align 8
  %99 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %100 = load i64, ptr %99, align 8
  %101 = tail call i32 @double_int_cmp(i64 %95, i64 %97, i64 %98, i64 %100, i8 noundef zeroext %94) #8
  %102 = icmp ne i32 %101, -1
  %103 = zext i1 %102 to i8
  br label %105

104:                                              ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 815, ptr noundef nonnull @.str.3) #8
  br label %105

105:                                              ; preds = %104, %93, %74, %55, %36, %20, %11
  %106 = phi i8 [ 0, %104 ], [ %103, %93 ], [ %84, %74 ], [ %65, %55 ], [ %46, %36 ], [ %27, %20 ], [ %19, %11 ]
  ret i8 %106
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @fixed_convert(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = alloca %struct.double_int, align 8
  %6 = alloca %struct.double_int, align 8
  %7 = alloca %struct.double_int, align 8
  %8 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !28
  br label %212

12:                                               ; preds = %4
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i32 %9 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp ugt i8 %15, %18
  br i1 %19, label %20, label %111

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %21 = zext i8 %15 to i32
  %22 = zext i8 %18 to i32
  %23 = sub nsw i32 %21, %22
  %24 = load i64, ptr %2, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds %struct.double_int, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %30 = load i8, ptr %29, align 1, !tbaa !15
  switch i8 %30, label %31 [
    i8 4, label %32
    i8 13, label %32
    i8 6, label %32
    i8 15, label %32
  ]

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %20, %20, %20, %20, %31
  %33 = phi i32 [ 1, %20 ], [ 0, %31 ], [ 1, %20 ], [ 1, %20 ], [ 1, %20 ]
  call void @lshift_double(i64 noundef %24, i64 noundef %26, i64 noundef %27, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %28, i32 noundef %33) #8
  %34 = load i64, ptr %2, align 8, !tbaa !14
  %35 = load i64, ptr %25, align 8, !tbaa !13
  %36 = add nsw i32 %23, -128
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.double_int, ptr %5, i64 0, i32 1
  call void @lshift_double(i64 noundef %34, i64 noundef %35, i64 noundef %37, i32 noundef 128, ptr noundef nonnull %5, ptr noundef nonnull %38, i32 noundef 0) #8
  %39 = load i32, ptr %8, align 8, !tbaa !6
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !15
  switch i8 %42, label %52 [
    i8 4, label %43
    i8 13, label %43
    i8 6, label %43
    i8 15, label %43
  ]

43:                                               ; preds = %32, %32, %32, %32
  %44 = load i64, ptr %25, align 8, !tbaa !13
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, ptr %5, align 8
  %48 = load i64, ptr %38, align 8
  %49 = call { i64, i64 } @double_int_ext(i64 %47, i64 %48, i32 noundef %23, i8 noundef zeroext 0) #8
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = extractvalue { i64, i64 } %49, 1
  store i64 %50, ptr %5, align 8, !tbaa.struct !18
  store i64 %51, ptr %38, align 8, !tbaa.struct !20
  br label %52

52:                                               ; preds = %32, %46, %43
  %53 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %53, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !18
  %54 = load i32, ptr %8, align 8, !tbaa !6
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !15
  switch i8 %57, label %58 [
    i8 4, label %61
    i8 13, label %61
    i8 6, label %61
  ]

58:                                               ; preds = %52
  %59 = icmp eq i8 %57, 15
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %52, %52, %52, %58
  %62 = phi i32 [ 1, %52 ], [ %60, %58 ], [ 1, %52 ], [ 1, %52 ]
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %64 = load i8, ptr %63, align 1, !tbaa !15
  switch i8 %64, label %65 [
    i8 4, label %68
    i8 13, label %68
    i8 6, label %68
  ]

65:                                               ; preds = %61
  %66 = icmp eq i8 %64, 15
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %61, %61, %61, %65
  %69 = phi i32 [ 1, %61 ], [ %67, %65 ], [ 1, %61 ], [ 1, %61 ]
  %70 = icmp eq i32 %62, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64, ptr %5, align 8
  %73 = load i64, ptr %38, align 8
  %74 = load i64, ptr %6, align 8
  %75 = load i64, ptr %28, align 8
  %76 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %72, i64 %73, i64 %74, i64 %75, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %109

77:                                               ; preds = %68
  switch i8 %57, label %90 [
    i8 4, label %78
    i8 13, label %78
    i8 6, label %78
    i8 15, label %78
  ]

78:                                               ; preds = %77, %77, %77, %77
  %79 = load i64, ptr %25, align 8, !tbaa !13
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = icmp eq i8 %3, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %109

84:                                               ; preds = %78
  %85 = load i64, ptr %5, align 8
  %86 = load i64, ptr %38, align 8
  %87 = load i64, ptr %6, align 8
  %88 = load i64, ptr %28, align 8
  %89 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %85, i64 %86, i64 %87, i64 %88, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %109

90:                                               ; preds = %77
  %91 = load i64, ptr %38, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = icmp eq i8 %3, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %97 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %98 = load i8, ptr %97, align 1, !tbaa !15
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %99, %21
  %101 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %100, i8 noundef zeroext 1) #8
  %102 = extractvalue { i64, i64 } %101, 0
  %103 = extractvalue { i64, i64 } %101, 1
  store i64 %102, ptr %0, align 8, !tbaa.struct !18
  store i64 %103, ptr %96, align 8, !tbaa.struct !20
  br label %109

104:                                              ; preds = %90
  %105 = load i64, ptr %5, align 8
  %106 = load i64, ptr %6, align 8
  %107 = load i64, ptr %28, align 8
  %108 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %105, i64 %91, i64 %106, i64 %107, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %109

109:                                              ; preds = %93, %81, %83, %84, %95, %104, %71
  %110 = phi i8 [ %76, %71 ], [ 0, %83 ], [ %89, %84 ], [ 0, %95 ], [ %108, %104 ], [ 1, %81 ], [ 1, %93 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %181

111:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %112 = load i64, ptr %2, align 8, !tbaa !14
  %113 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !13
  %115 = zext i8 %15 to i64
  %116 = zext i8 %18 to i64
  %117 = sub nsw i64 %115, %116
  %118 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %119 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %120 = load i8, ptr %119, align 1, !tbaa !15
  switch i8 %120, label %121 [
    i8 4, label %122
    i8 13, label %122
    i8 6, label %122
    i8 15, label %122
  ]

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %111, %111, %111, %111, %121
  %123 = phi i32 [ 1, %111 ], [ 0, %121 ], [ 1, %111 ], [ 1, %111 ], [ 1, %111 ]
  call void @lshift_double(i64 noundef %112, i64 noundef %114, i64 noundef %117, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %118, i32 noundef %123) #8
  %124 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %124, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !18
  %125 = load i32, ptr %8, align 8, !tbaa !6
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !15
  switch i8 %128, label %129 [
    i8 4, label %132
    i8 13, label %132
    i8 6, label %132
  ]

129:                                              ; preds = %122
  %130 = icmp eq i8 %128, 15
  %131 = zext i1 %130 to i32
  br label %132

132:                                              ; preds = %122, %122, %122, %129
  %133 = phi i32 [ 1, %122 ], [ %131, %129 ], [ 1, %122 ], [ 1, %122 ]
  %134 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %135 = load i8, ptr %134, align 1, !tbaa !15
  switch i8 %135, label %136 [
    i8 4, label %139
    i8 13, label %139
    i8 6, label %139
  ]

136:                                              ; preds = %132
  %137 = icmp eq i8 %135, 15
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %132, %132, %132, %136
  %140 = phi i32 [ 1, %132 ], [ %138, %136 ], [ 1, %132 ], [ 1, %132 ]
  %141 = icmp eq i32 %133, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i64, ptr %0, align 8
  %144 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %145 = load i64, ptr %144, align 8
  %146 = call fastcc zeroext i8 @fixed_saturate1(i32 noundef %1, i64 %143, i64 %145, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %179

147:                                              ; preds = %139
  switch i8 %128, label %159 [
    i8 4, label %148
    i8 13, label %148
    i8 6, label %148
    i8 15, label %148
  ]

148:                                              ; preds = %147, %147, %147, %147
  %149 = load i64, ptr %113, align 8, !tbaa !13
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = icmp eq i8 %3, 0
  br i1 %152, label %179, label %153

153:                                              ; preds = %151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %179

154:                                              ; preds = %148
  %155 = load i64, ptr %0, align 8
  %156 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %157 = load i64, ptr %156, align 8
  %158 = call fastcc zeroext i8 @fixed_saturate1(i32 noundef %1, i64 %155, i64 %157, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %179

159:                                              ; preds = %147
  %160 = load i64, ptr %118, align 8, !tbaa !25
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = icmp eq i8 %3, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %166 = zext i8 %15 to i32
  %167 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %168 = load i8, ptr %167, align 1, !tbaa !15
  %169 = zext i8 %168 to i32
  %170 = add nuw nsw i32 %169, %166
  %171 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %170, i8 noundef zeroext 1) #8
  %172 = extractvalue { i64, i64 } %171, 0
  %173 = extractvalue { i64, i64 } %171, 1
  store i64 %172, ptr %0, align 8, !tbaa.struct !18
  store i64 %173, ptr %165, align 8, !tbaa.struct !20
  br label %179

174:                                              ; preds = %159
  %175 = load i64, ptr %0, align 8
  %176 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %177 = load i64, ptr %176, align 8
  %178 = call fastcc zeroext i8 @fixed_saturate1(i32 noundef %1, i64 %175, i64 %177, ptr noundef nonnull %0, i8 noundef zeroext %3) #9, !range !17
  br label %179

179:                                              ; preds = %162, %151, %153, %154, %164, %174, %142
  %180 = phi i8 [ %146, %142 ], [ 0, %153 ], [ %158, %154 ], [ 0, %164 ], [ %178, %174 ], [ 1, %151 ], [ 1, %162 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %181

181:                                              ; preds = %179, %109
  %182 = phi i8 [ %110, %109 ], [ %180, %179 ]
  %183 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !6
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !15
  switch i8 %187, label %188 [
    i8 4, label %191
    i8 13, label %191
    i8 6, label %191
  ]

188:                                              ; preds = %181
  %189 = icmp eq i8 %187, 15
  %190 = zext i1 %189 to i32
  br label %191

191:                                              ; preds = %181, %181, %181, %188
  %192 = phi i32 [ 1, %181 ], [ %190, %188 ], [ 1, %181 ], [ 1, %181 ]
  %193 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %185
  %194 = load i8, ptr %193, align 1, !tbaa !15
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %192, %195
  %197 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %185
  %198 = load i8, ptr %197, align 1, !tbaa !15
  %199 = zext i8 %198 to i32
  %200 = add nuw nsw i32 %196, %199
  switch i8 %187, label %201 [
    i8 5, label %204
    i8 14, label %204
    i8 7, label %204
  ]

201:                                              ; preds = %191
  %202 = icmp eq i8 %187, 16
  %203 = zext i1 %202 to i8
  br label %204

204:                                              ; preds = %191, %191, %191, %201
  %205 = phi i8 [ 1, %191 ], [ %203, %201 ], [ 1, %191 ], [ 1, %191 ]
  %206 = load i64, ptr %0, align 8
  %207 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %208 = load i64, ptr %207, align 8
  %209 = call { i64, i64 } @double_int_ext(i64 %206, i64 %208, i32 noundef %200, i8 noundef zeroext %205) #8
  %210 = extractvalue { i64, i64 } %209, 0
  %211 = extractvalue { i64, i64 } %209, 1
  store i64 %210, ptr %0, align 8, !tbaa.struct !18
  store i64 %211, ptr %207, align 8, !tbaa.struct !20
  br label %212

212:                                              ; preds = %204, %11
  %213 = phi i8 [ 0, %11 ], [ %182, %204 ]
  ret i8 %213
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @fixed_convert_from_int(ptr nocapture noundef %0, i32 noundef %1, i64 %2, i64 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
  %7 = alloca %struct.double_int, align 8
  %8 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, -128
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  store i64 %2, ptr %7, align 8, !tbaa.struct !18
  %15 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 %3, ptr %15, align 8, !tbaa.struct !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %22

16:                                               ; preds = %6
  %17 = zext i8 %11 to i64
  %18 = getelementptr inbounds %struct.double_int, ptr %8, i64 0, i32 1
  call void @lshift_double(i64 noundef %2, i64 noundef %3, i64 noundef %17, i32 noundef 128, ptr noundef nonnull %8, ptr noundef nonnull %18, i32 noundef 0) #8
  %19 = add nsw i32 %12, -128
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  call void @lshift_double(i64 noundef %2, i64 noundef %3, i64 noundef %20, i32 noundef 128, ptr noundef nonnull %7, ptr noundef nonnull %21, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %16, %14
  %23 = icmp eq i8 %4, 0
  %24 = icmp slt i64 %3, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64, ptr %7, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = call { i64, i64 } @double_int_ext(i64 %27, i64 %29, i32 noundef %12, i8 noundef zeroext 0) #8
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  store i64 %31, ptr %7, align 8, !tbaa.struct !18
  store i64 %32, ptr %28, align 8, !tbaa.struct !20
  br label %33

33:                                               ; preds = %26, %22
  %34 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %34, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !18
  %35 = zext i8 %4 to i32
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %37 = load i8, ptr %36, align 1, !tbaa !15
  switch i8 %37, label %38 [
    i8 5, label %41
    i8 14, label %41
    i8 7, label %41
  ]

38:                                               ; preds = %33
  %39 = icmp eq i8 %37, 16
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %33, %33, %33, %38
  %42 = phi i32 [ 1, %33 ], [ %40, %38 ], [ 1, %33 ], [ 1, %33 ]
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64, ptr %7, align 8
  %46 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = load i64, ptr %8, align 8
  %49 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %45, i64 %47, i64 %48, i64 %50, ptr noundef nonnull %0, i8 noundef zeroext %5) #9, !range !17
  br label %86

52:                                               ; preds = %41
  br i1 %23, label %53, label %65

53:                                               ; preds = %52
  br i1 %24, label %54, label %57

54:                                               ; preds = %53
  %55 = icmp eq i8 %5, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %86

57:                                               ; preds = %53
  %58 = load i64, ptr %7, align 8
  %59 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %8, align 8
  %62 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %58, i64 %60, i64 %61, i64 %63, ptr noundef nonnull %0, i8 noundef zeroext %5) #9, !range !17
  br label %86

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.double_int, ptr %7, i64 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = icmp eq i8 %5, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  %73 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %75, %12
  %77 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %76, i8 noundef zeroext 1) #8
  %78 = extractvalue { i64, i64 } %77, 0
  %79 = extractvalue { i64, i64 } %77, 1
  store i64 %78, ptr %0, align 8, !tbaa.struct !18
  store i64 %79, ptr %72, align 8, !tbaa.struct !20
  br label %86

80:                                               ; preds = %65
  %81 = load i64, ptr %7, align 8
  %82 = load i64, ptr %8, align 8
  %83 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %84 = load i64, ptr %83, align 8
  %85 = call fastcc zeroext i8 @fixed_saturate2(i32 noundef %1, i64 %81, i64 %67, i64 %82, i64 %84, ptr noundef nonnull %0, i8 noundef zeroext %5) #9, !range !17
  br label %86

86:                                               ; preds = %69, %54, %56, %57, %71, %80, %44
  %87 = phi i8 [ %51, %44 ], [ 0, %71 ], [ %85, %80 ], [ 0, %56 ], [ %64, %57 ], [ 1, %54 ], [ 1, %69 ]
  %88 = load i32, ptr %34, align 8, !tbaa !6
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  switch i8 %91, label %92 [
    i8 4, label %95
    i8 13, label %95
    i8 6, label %95
  ]

92:                                               ; preds = %86
  %93 = icmp eq i8 %91, 15
  %94 = zext i1 %93 to i32
  br label %95

95:                                               ; preds = %86, %86, %86, %92
  %96 = phi i32 [ 1, %86 ], [ %94, %92 ], [ 1, %86 ], [ 1, %86 ]
  %97 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %89
  %98 = load i8, ptr %97, align 1, !tbaa !15
  %99 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %89
  %100 = load i8, ptr %99, align 1, !tbaa !15
  switch i8 %91, label %101 [
    i8 5, label %104
    i8 14, label %104
    i8 7, label %104
  ]

101:                                              ; preds = %95
  %102 = icmp eq i8 %91, 16
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %95, %95, %95, %101
  %105 = phi i8 [ 1, %95 ], [ %103, %101 ], [ 1, %95 ], [ 1, %95 ]
  %106 = zext i8 %98 to i32
  %107 = add nuw nsw i32 %96, %106
  %108 = zext i8 %100 to i32
  %109 = add nuw nsw i32 %107, %108
  %110 = load i64, ptr %0, align 8
  %111 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %112 = load i64, ptr %111, align 8
  %113 = call { i64, i64 } @double_int_ext(i64 %110, i64 %112, i32 noundef %109, i8 noundef zeroext %105) #8
  %114 = extractvalue { i64, i64 } %113, 0
  %115 = extractvalue { i64, i64 } %113, 1
  store i64 %114, ptr %0, align 8, !tbaa.struct !18
  store i64 %115, ptr %111, align 8, !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @fixed_convert_from_real(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  switch i8 %10, label %11 [
    i8 5, label %14
    i8 14, label %14
    i8 7, label %14
  ]

11:                                               ; preds = %4
  %12 = icmp eq i8 %10, 16
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %4, %4, %4, %11
  %15 = phi i8 [ 1, %4 ], [ %13, %11 ], [ 1, %4 ], [ 1, %4 ]
  %16 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %8
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !30
  %23 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  store i32 %1, ptr %23, align 8, !tbaa !6
  call void @real_2expN(ptr noundef nonnull %7, i32 noundef %21, i32 noundef %1) #8
  %24 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 65, ptr noundef nonnull %5, ptr noundef nonnull %7) #8
  %25 = getelementptr inbounds %struct.double_int, ptr %0, i64 0, i32 1
  call void @real_to_integer2(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %6) #8
  %26 = call fastcc i32 @check_real_for_fixed_mode(ptr noundef nonnull %5, i32 noundef %1) #9, !range !16
  switch i32 %26, label %40 [
    i32 1, label %27
    i32 0, label %46
  ]

27:                                               ; preds = %14
  %28 = icmp eq i8 %3, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %27
  %30 = icmp eq i8 %15, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %46

32:                                               ; preds = %29
  store i64 1, ptr %0, align 8, !tbaa !14
  store i64 0, ptr %25, align 8, !tbaa !13
  %33 = zext nneg i32 %22 to i64
  call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %33, i32 noundef 128, ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef 1) #8
  %34 = add nuw nsw i32 %22, 1
  %35 = load i64, ptr %0, align 8
  %36 = load i64, ptr %25, align 8
  %37 = call { i64, i64 } @double_int_ext(i64 %35, i64 %36, i32 noundef %34, i8 noundef zeroext 0) #8
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  store i64 %38, ptr %0, align 8, !tbaa.struct !18
  store i64 %39, ptr %25, align 8, !tbaa.struct !20
  br label %46

40:                                               ; preds = %14
  %41 = icmp eq i8 %3, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %43 = call { i64, i64 } @double_int_ext(i64 -1, i64 -1, i32 noundef %22, i8 noundef zeroext 1) #8
  %44 = extractvalue { i64, i64 } %43, 0
  %45 = extractvalue { i64, i64 } %43, 1
  store i64 %44, ptr %0, align 8, !tbaa.struct !18
  store i64 %45, ptr %25, align 8, !tbaa.struct !20
  br label %46

46:                                               ; preds = %40, %14, %27, %42, %32, %31
  %47 = phi i8 [ 0, %31 ], [ 0, %32 ], [ 0, %42 ], [ 1, %27 ], [ 0, %14 ], [ 1, %40 ]
  %48 = xor i8 %15, 1
  %49 = zext nneg i8 %48 to i32
  %50 = add nuw nsw i32 %22, %49
  %51 = load i64, ptr %0, align 8
  %52 = load i64, ptr %25, align 8
  %53 = call { i64, i64 } @double_int_ext(i64 %51, i64 %52, i32 noundef %50, i8 noundef zeroext %15) #8
  %54 = extractvalue { i64, i64 } %53, 0
  %55 = extractvalue { i64, i64 } %53, 1
  store i64 %54, ptr %0, align 8, !tbaa.struct !18
  store i64 %55, ptr %25, align 8, !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_convert_from_fixed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.fixed_value, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  call void @real_2expN(ptr noundef nonnull %4, i32 noundef %12, i32 noundef %8) #8
  %13 = load i64, ptr %2, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.double_int, ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = load i32, ptr %7, align 8, !tbaa !6
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !15
  switch i8 %19, label %20 [
    i8 5, label %23
    i8 14, label %23
    i8 7, label %23
  ]

20:                                               ; preds = %3
  %21 = icmp eq i8 %19, 16
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %3, %3, %3, %20
  %24 = phi i32 [ 1, %3 ], [ %22, %20 ], [ 1, %3 ], [ 1, %3 ]
  call void @real_from_integer(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %13, i64 noundef %15, i32 noundef %24) #8
  %25 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 75, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  call void @real_convert(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret void
}

; Function Attrs: optsize
declare void @real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @fixed_isneg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fixed_value, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !15
  switch i8 %6, label %20 [
    i8 4, label %7
    i8 13, label %7
    i8 6, label %7
    i8 15, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %4
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %4
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, %10
  %15 = load i64, ptr %0, align 8
  %16 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = tail call fastcc i32 @get_fixed_sign_bit(i64 %15, i64 %17, i32 noundef %14) #9, !range !21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7, %1
  br label %21

21:                                               ; preds = %7, %20
  %22 = phi i8 [ 1, %7 ], [ 0, %20 ]
  ret i8 %22
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 16}
!7 = !{!"fixed_value", !8, i64 0, !12, i64 16}
!8 = !{!"", !9, i64 0, !9, i64 8}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!7, !9, i64 8}
!14 = !{!7, !9, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{i32 0, i32 4}
!17 = !{i8 0, i8 2}
!18 = !{i64 0, i64 8, !19, i64 8, i64 8, !19}
!19 = !{!9, !9, i64 0}
!20 = !{i64 0, i64 8, !19}
!21 = !{i32 0, i32 2}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !10, i64 0}
!24 = !{!8, !9, i64 0}
!25 = !{!8, !9, i64 8}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 4, !29}
!29 = !{!12, !12, i64 0}
!30 = !{i64 0, i64 4, !29, i64 0, i64 4, !29, i64 0, i64 4, !29, i64 0, i64 4, !29, i64 0, i64 4, !29, i64 0, i64 4, !29, i64 8, i64 24, !15}

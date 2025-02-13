; ModuleID = 'libpng/pngerror.c'
source_filename = "libpng/pngerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }

@png_format_number.digits = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@png_formatted_warning.valid_parameters = internal unnamed_addr constant [10 x i8] c"123456789\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"fixed point overflow in \00", align 1
@png_digit = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"libpng error: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"libpng warning: %s\00", align 1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @png_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %9

9:                                                ; preds = %8, %4, %2
  tail call fastcc void @png_default_error(ptr noundef %0, ptr noundef %1) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal fastcc void @png_default_error(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !46 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !47
  %4 = icmp eq ptr %1, null
  %5 = select i1 %4, ptr @.str.2, ptr %1
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #17
  %7 = load ptr, ptr @stderr, align 8, !tbaa !47
  %8 = tail call i32 @fputc(i32 10, ptr %7)
  tail call void @png_longjmp(ptr noundef %0, i32 noundef 1) #16
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @png_safecat(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, ptr noundef readonly %3) local_unnamed_addr #1 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ult i64 %2, %1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %8
  %11 = add i64 %1, -1
  %12 = load i8, ptr %3, align 1, !tbaa !48
  %13 = icmp ne i8 %12, 0
  %14 = icmp ugt i64 %11, %2
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10, %16
  %17 = phi i8 [ %23, %16 ], [ %12, %10 ]
  %18 = phi ptr [ %20, %16 ], [ %3, %10 ]
  %19 = phi i64 [ %21, %16 ], [ %2, %10 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 1
  %21 = add nuw i64 %19, 1
  %22 = getelementptr inbounds i8, ptr %0, i64 %19
  store i8 %17, ptr %22, align 1, !tbaa !48
  %23 = load i8, ptr %20, align 1, !tbaa !48
  %24 = icmp ne i8 %23, 0
  %25 = icmp ult i64 %21, %11
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %16, label %27, !llvm.loop !49

27:                                               ; preds = %16, %10, %8
  %28 = phi i64 [ %2, %8 ], [ %2, %10 ], [ %21, %16 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !48
  br label %30

30:                                               ; preds = %27, %4
  %31 = phi i64 [ %28, %27 ], [ %2, %4 ]
  ret i64 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @png_format_number(ptr noundef readnone %0, ptr noundef writeonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 0, ptr %5, align 1, !tbaa !48
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %78

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 5
  br label %9

9:                                                ; preds = %7, %71
  %10 = phi i32 [ 0, %7 ], [ %73, %71 ]
  %11 = phi i32 [ 1, %7 ], [ %74, %71 ]
  %12 = phi i32 [ 0, %7 ], [ %72, %71 ]
  %13 = phi i64 [ %3, %7 ], [ %75, %71 ]
  %14 = phi ptr [ %5, %7 ], [ %76, %71 ]
  %15 = icmp ne i64 %13, 0
  %16 = icmp slt i32 %12, %11
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %78

18:                                               ; preds = %9
  switch i32 %2, label %53 [
    i32 5, label %19
    i32 2, label %32
    i32 1, label %33
    i32 4, label %40
    i32 3, label %41
  ]

19:                                               ; preds = %18
  %20 = icmp eq i32 %10, 0
  %21 = urem i64 %13, 10
  %22 = icmp eq i64 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %21
  %26 = load i8, ptr %25, align 1, !tbaa !48
  %27 = getelementptr inbounds i8, ptr %14, i64 -1
  store i8 %26, ptr %27, align 1, !tbaa !48
  br label %28

28:                                               ; preds = %19, %24
  %29 = phi ptr [ %27, %24 ], [ %14, %19 ]
  %30 = phi i32 [ 1, %24 ], [ 0, %19 ]
  %31 = udiv i64 %13, 10
  br label %53

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %18, %32
  %34 = phi i32 [ %11, %18 ], [ 2, %32 ]
  %35 = urem i64 %13, 10
  %36 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !48
  %38 = getelementptr inbounds i8, ptr %14, i64 -1
  store i8 %37, ptr %38, align 1, !tbaa !48
  %39 = udiv i64 %13, 10
  br label %48

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %18, %40
  %42 = phi i32 [ %11, %18 ], [ 2, %40 ]
  %43 = and i64 %13, 15
  %44 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !48
  %46 = getelementptr inbounds i8, ptr %14, i64 -1
  store i8 %45, ptr %46, align 1, !tbaa !48
  %47 = lshr i64 %13, 4
  br label %48

48:                                               ; preds = %41, %33
  %49 = phi ptr [ %38, %33 ], [ %46, %41 ]
  %50 = phi i64 [ %39, %33 ], [ %47, %41 ]
  %51 = phi i32 [ %34, %33 ], [ %42, %41 ]
  %52 = add nuw nsw i32 %12, 1
  br label %71

53:                                               ; preds = %18, %28
  %54 = phi ptr [ %29, %28 ], [ %14, %18 ]
  %55 = phi i64 [ %31, %28 ], [ 0, %18 ]
  %56 = phi i32 [ 5, %28 ], [ %11, %18 ]
  %57 = phi i32 [ %30, %28 ], [ %10, %18 ]
  %58 = add nuw nsw i32 %12, 1
  %59 = icmp eq i32 %58, 5
  %60 = select i1 %8, i1 %59, i1 false
  %61 = icmp ugt ptr %54, %0
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = icmp eq i32 %57, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds i8, ptr %54, i64 -1
  store i8 46, ptr %66, align 1, !tbaa !48
  br label %71

67:                                               ; preds = %63
  %68 = icmp eq i64 %55, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, ptr %54, i64 -1
  store i8 48, ptr %70, align 1, !tbaa !48
  br label %71

71:                                               ; preds = %48, %65, %69, %67, %53
  %72 = phi i32 [ 5, %65 ], [ 5, %69 ], [ 5, %67 ], [ %58, %53 ], [ %52, %48 ]
  %73 = phi i32 [ %57, %65 ], [ 0, %69 ], [ 0, %67 ], [ %57, %53 ], [ %10, %48 ]
  %74 = phi i32 [ %56, %65 ], [ %56, %69 ], [ %56, %67 ], [ %56, %53 ], [ %51, %48 ]
  %75 = phi i64 [ %55, %65 ], [ 0, %69 ], [ %55, %67 ], [ %55, %53 ], [ %50, %48 ]
  %76 = phi ptr [ %66, %65 ], [ %70, %69 ], [ %54, %67 ], [ %54, %53 ], [ %49, %48 ]
  %77 = icmp ugt ptr %76, %0
  br i1 %77, label %9, label %78, !llvm.loop !51

78:                                               ; preds = %9, %71, %4
  %79 = phi ptr [ %5, %4 ], [ %76, %71 ], [ %14, %9 ]
  ret ptr %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_warning(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !48
  %6 = icmp eq i8 %5, 35
  br i1 %6, label %7, label %17

7:                                                ; preds = %4, %12
  %8 = phi i64 [ %13, %12 ], [ 1, %4 ]
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !48
  %11 = icmp eq i8 %10, 32
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 15
  br i1 %14, label %17, label %7, !llvm.loop !52

15:                                               ; preds = %7
  %16 = trunc i64 %8 to i32
  br label %17

17:                                               ; preds = %12, %15, %4
  %18 = phi i32 [ 0, %4 ], [ %16, %15 ], [ 15, %12 ]
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = zext nneg i32 %18 to i64
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  tail call void %20(ptr noundef nonnull %0, ptr noundef nonnull %24) #15
  br label %29

25:                                               ; preds = %2, %17
  %26 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  tail call fastcc void @png_default_warning(ptr noundef %28) #18
  br label %29

29:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @png_default_warning(ptr noundef %0) unnamed_addr #5 !PGOFuncName !54 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !47
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %0) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !47
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_warning_parameter(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr [32 x i8], ptr %0, i64 %7
  %9 = getelementptr [32 x i8], ptr %8, i64 -1
  %10 = tail call i64 @png_safecat(ptr noundef %9, i64 noundef 32, i64 noundef 0, ptr noundef %2) #18
  br label %11

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_warning_parameter_unsigned(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
  %5 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %7 = call ptr @png_format_number(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %2, i64 noundef %3) #18
  call void @png_warning_parameter(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_warning_parameter_signed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %6 = icmp slt i32 %3, 0
  %7 = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  %10 = call ptr @png_format_number(ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef %2, i64 noundef %8) #18
  %11 = icmp ugt ptr %10, %5
  %12 = select i1 %6, i1 %11, i1 false
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds i8, ptr %10, i64 -1
  store i8 45, ptr %14, align 1, !tbaa !48
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ %14, %13 ], [ %10, %4 ]
  call void @png_warning_parameter(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_formatted_warning(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #19
  %5 = icmp ne ptr %1, null
  br label %6

6:                                                ; preds = %3, %56
  %7 = phi ptr [ %2, %3 ], [ %58, %56 ]
  %8 = phi i64 [ 0, %3 ], [ %57, %56 ]
  %9 = load i8, ptr %7, align 1, !tbaa !48
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %6
  %12 = icmp eq i8 %9, 64
  %13 = and i1 %5, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !48
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %14 ]
  %20 = getelementptr inbounds [10 x i8], ptr @png_formatted_warning.valid_parameters, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !48
  %22 = icmp eq i8 %21, %16
  %23 = icmp eq i64 %19, 9
  %24 = or i1 %23, %22
  %25 = add nuw nsw i64 %19, 1
  br i1 %24, label %26, label %18, !llvm.loop !55

26:                                               ; preds = %18
  %27 = and i64 %19, 4294967288
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = getelementptr inbounds [32 x i8], ptr %1, i64 %19
  %31 = icmp ult i64 %8, 191
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = sub nuw nsw i64 191, %8
  br label %34

34:                                               ; preds = %32, %42
  %35 = phi i64 [ %43, %42 ], [ 0, %32 ]
  %36 = phi i64 [ %44, %42 ], [ %8, %32 ]
  %37 = getelementptr inbounds i8, ptr %30, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !48
  %39 = icmp ne i8 %38, 0
  %40 = icmp ult i64 %35, 32
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = add nuw nsw i64 %35, 1
  %44 = add nuw nsw i64 %36, 1
  %45 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %36
  store i8 %38, ptr %45, align 1, !tbaa !48
  %46 = icmp eq i64 %43, %33
  br i1 %46, label %47, label %34, !llvm.loop !56

47:                                               ; preds = %34, %42, %29
  %48 = phi i64 [ %8, %29 ], [ 191, %42 ], [ %36, %34 ]
  %49 = getelementptr inbounds i8, ptr %7, i64 2
  br label %56

50:                                               ; preds = %26, %14, %11
  %51 = phi i8 [ 64, %14 ], [ %9, %11 ], [ %16, %26 ]
  %52 = phi ptr [ %7, %14 ], [ %7, %11 ], [ %15, %26 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = add nuw nsw i64 %8, 1
  %55 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %8
  store i8 %51, ptr %55, align 1, !tbaa !48
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i64 [ %48, %47 ], [ %54, %50 ]
  %58 = phi ptr [ %49, %47 ], [ %53, %50 ]
  %59 = icmp ult i64 %57, 191
  br i1 %59, label %6, label %60, !llvm.loop !57

60:                                               ; preds = %56, %6
  %61 = phi i64 [ %57, %56 ], [ %8, %6 ]
  %62 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %61
  store i8 0, ptr %62, align 1, !tbaa !48
  call void @png_warning(ptr noundef %0, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_benign_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef %1) #18
  ret void

8:                                                ; preds = %2
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %1) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @png_chunk_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [82 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @png_error(ptr noundef null, ptr noundef %1) #16
  unreachable

6:                                                ; preds = %2
  call fastcc void @png_format_buffer(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #18
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %3) #16
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @png_format_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) unnamed_addr #7 !PGOFuncName !59 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %5 = load i32, ptr %4, align 8, !tbaa !60
  br label %6

6:                                                ; preds = %3, %38
  %7 = phi i32 [ 0, %3 ], [ %39, %38 ]
  %8 = phi i32 [ 24, %3 ], [ %11, %38 ]
  %9 = lshr i32 %5, %8
  %10 = and i32 %9, 255
  %11 = add nsw i32 %8, -8
  %12 = add nsw i32 %10, -123
  %13 = icmp ult i32 %12, -58
  %14 = add nsw i32 %10, -91
  %15 = icmp ult i32 %14, 6
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %6
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  store i8 91, ptr %19, align 1, !tbaa !48
  %20 = lshr i32 %9, 4
  %21 = and i32 %20, 15
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [16 x i8], ptr @png_digit, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !48
  %25 = getelementptr i8, ptr %19, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !48
  %26 = and i32 %9, 15
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8], ptr @png_digit, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !48
  %30 = getelementptr i8, ptr %19, i64 2
  store i8 %29, ptr %30, align 1, !tbaa !48
  %31 = add nsw i32 %7, 4
  %32 = getelementptr i8, ptr %19, i64 3
  store i8 93, ptr %32, align 1, !tbaa !48
  br label %38

33:                                               ; preds = %6
  %34 = trunc i32 %9 to i8
  %35 = add nsw i32 %7, 1
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds i8, ptr %1, i64 %36
  store i8 %34, ptr %37, align 1, !tbaa !48
  br label %38

38:                                               ; preds = %33, %17
  %39 = phi i32 [ %31, %17 ], [ %35, %33 ]
  %40 = icmp eq i32 %8, 0
  br i1 %40, label %41, label %6, !llvm.loop !61

41:                                               ; preds = %38
  %42 = icmp eq ptr %2, null
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds i8, ptr %1, i64 %43
  br i1 %42, label %67, label %45

45:                                               ; preds = %41
  store i8 58, ptr %44, align 1, !tbaa !48
  %46 = add i32 %39, 2
  %47 = getelementptr i8, ptr %44, i64 1
  store i8 32, ptr %47, align 1, !tbaa !48
  %48 = sext i32 %46 to i64
  %49 = add i32 %39, 65
  br label %50

50:                                               ; preds = %45, %56
  %51 = phi i64 [ %48, %45 ], [ %58, %56 ]
  %52 = phi i64 [ 0, %45 ], [ %57, %56 ]
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !48
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = add nuw nsw i64 %52, 1
  %58 = add nsw i64 %51, 1
  %59 = getelementptr inbounds i8, ptr %1, i64 %51
  store i8 %54, ptr %59, align 1, !tbaa !48
  %60 = icmp eq i64 %57, 63
  br i1 %60, label %63, label %50, !llvm.loop !62

61:                                               ; preds = %50
  %62 = trunc i64 %51 to i32
  br label %63

63:                                               ; preds = %56, %61
  %64 = phi i32 [ %62, %61 ], [ %49, %56 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  br label %67

67:                                               ; preds = %41, %63
  %68 = phi ptr [ %66, %63 ], [ %44, %41 ]
  store i8 0, ptr %68, align 1, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_chunk_warning(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [82 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @png_warning(ptr noundef null, ptr noundef %1) #18
  br label %7

6:                                                ; preds = %2
  call fastcc void @png_format_buffer(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #18
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %3) #18
  br label %7

7:                                                ; preds = %6, %5
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_chunk_benign_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef %1) #18
  ret void

8:                                                ; preds = %2
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef %1) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @png_fixed_error(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) @.str, i64 24, i1 false)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %10
  %6 = phi i64 [ %13, %10 ], [ 0, %2 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i64 %6, 24
  %12 = getelementptr inbounds [88 x i8], ptr %3, i64 0, i64 %11
  store i8 %8, ptr %12, align 1, !tbaa !48
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, 63
  br i1 %14, label %15, label %5

15:                                               ; preds = %10, %5
  %16 = phi i64 [ 63, %10 ], [ %6, %5 ]
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = add nsw i64 %18, 24
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i64 [ 24, %2 ], [ %19, %15 ]
  %22 = getelementptr inbounds [88 x i8], ptr %3, i64 0, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !48
  call void @png_error(ptr noundef %0, ptr noundef nonnull %3) #16
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @png_set_longjmp_fn(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ne i64 %2, 200
  %6 = or i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !63
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %0, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @png_longjmp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(ptr noundef nonnull %0, i32 noundef %1) #15
  br label %9

9:                                                ; preds = %8, %4, %2
  tail call void @abort() #20
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_set_error_fn(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !53
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_error_ptr(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn optsize }
attributes #17 = { cold optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind optsize }

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
!34 = !{!35, !38, i64 208}
!35 = !{!"png_struct_def", !36, i64 0, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !36, i64 280, !36, i64 281, !39, i64 284, !39, i64 288, !39, i64 292, !40, i64 296, !38, i64 408, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !41, i64 480, !39, i64 488, !39, i64 492, !39, i64 496, !38, i64 504, !38, i64 512, !38, i64 520, !38, i64 528, !38, i64 536, !38, i64 544, !41, i64 552, !39, i64 560, !39, i64 564, !38, i64 568, !42, i64 576, !39, i64 580, !42, i64 584, !36, i64 586, !36, i64 587, !36, i64 588, !36, i64 589, !36, i64 590, !36, i64 591, !36, i64 592, !36, i64 593, !36, i64 594, !36, i64 595, !36, i64 596, !36, i64 597, !36, i64 598, !36, i64 599, !36, i64 600, !42, i64 606, !36, i64 608, !39, i64 612, !43, i64 616, !43, i64 626, !38, i64 640, !39, i64 648, !39, i64 652, !39, i64 656, !39, i64 660, !39, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !38, i64 704, !38, i64 712, !44, i64 720, !44, i64 725, !38, i64 736, !43, i64 744, !38, i64 760, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !38, i64 800, !38, i64 808, !38, i64 816, !38, i64 824, !39, i64 832, !39, i64 836, !41, i64 840, !41, i64 848, !41, i64 856, !41, i64 864, !39, i64 872, !39, i64 876, !38, i64 880, !38, i64 888, !38, i64 896, !36, i64 904, !36, i64 905, !38, i64 912, !38, i64 920, !38, i64 928, !38, i64 936, !38, i64 944, !36, i64 952, !39, i64 984, !38, i64 992, !38, i64 1000, !39, i64 1008, !38, i64 1016, !36, i64 1024, !36, i64 1025, !36, i64 1026, !42, i64 1028, !42, i64 1030, !39, i64 1032, !36, i64 1036, !38, i64 1040, !38, i64 1048, !38, i64 1056, !38, i64 1064, !38, i64 1072, !38, i64 1080, !38, i64 1088, !36, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !41, i64 1112, !45, i64 1120, !41, i64 1152, !38, i64 1160, !39, i64 1168, !38, i64 1176, !36, i64 1184}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"z_stream_s", !38, i64 0, !39, i64 8, !41, i64 16, !38, i64 24, !39, i64 32, !41, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !41, i64 96, !41, i64 104}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"png_color_16_struct", !36, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !42, i64 8}
!44 = !{!"png_color_8_struct", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4}
!45 = !{!"png_unknown_chunk_t", !36, i64 0, !38, i64 8, !41, i64 16, !36, i64 24}
!46 = !{!"pngerror.c:png_default_error"}
!47 = !{!38, !38, i64 0}
!48 = !{!36, !36, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = !{!35, !38, i64 216}
!54 = !{!"pngerror.c:png_default_warning"}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = distinct !{!57, !50}
!58 = !{!35, !39, i64 288}
!59 = !{!"pngerror.c:png_format_buffer"}
!60 = !{!35, !39, i64 496}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
!63 = !{!35, !38, i64 200}
!64 = !{!35, !38, i64 224}

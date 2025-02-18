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

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %9

9:                                                ; preds = %8, %4, %2
  tail call fastcc void @png_default_error(ptr noundef %0, ptr noundef %1) #15
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @png_default_error(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !46
  %4 = icmp eq ptr %1, null
  %5 = select i1 %4, ptr @.str.2, ptr %1
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !46
  %8 = tail call i32 @fputc(i32 10, ptr %7)
  tail call void @png_longjmp(ptr noundef %0, i32 noundef 1) #15
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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
  %12 = load i8, ptr %3, align 1, !tbaa !47
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
  store i8 %17, ptr %22, align 1, !tbaa !47
  %23 = load i8, ptr %20, align 1, !tbaa !47
  %24 = icmp ne i8 %23, 0
  %25 = icmp ult i64 %21, %11
  %26 = and i1 %24, %25
  br i1 %26, label %16, label %27, !llvm.loop !48

27:                                               ; preds = %16, %10, %8
  %28 = phi i64 [ %2, %8 ], [ %2, %10 ], [ %21, %16 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !47
  br label %30

30:                                               ; preds = %27, %4
  %31 = phi i64 [ %28, %27 ], [ %2, %4 ]
  ret i64 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @png_format_number(ptr noundef readnone %0, ptr noundef writeonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 0, ptr %5, align 1, !tbaa !47
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %69

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 5
  br label %9

9:                                                ; preds = %7, %66
  %10 = phi i32 [ 0, %7 ], [ %52, %66 ]
  %11 = phi i32 [ 1, %7 ], [ %51, %66 ]
  %12 = phi i32 [ 0, %7 ], [ %53, %66 ]
  %13 = phi i64 [ %3, %7 ], [ %50, %66 ]
  %14 = phi ptr [ %5, %7 ], [ %67, %66 ]
  %15 = icmp ne i64 %13, 0
  %16 = icmp slt i32 %12, %11
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %9
  switch i32 %2, label %48 [
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
  %26 = load i8, ptr %25, align 1, !tbaa !47
  %27 = getelementptr inbounds i8, ptr %14, i64 -1
  store i8 %26, ptr %27, align 1, !tbaa !47
  br label %28

28:                                               ; preds = %19, %24
  %29 = phi ptr [ %27, %24 ], [ %14, %19 ]
  %30 = phi i32 [ 1, %24 ], [ 0, %19 ]
  %31 = udiv i64 %13, 10
  br label %48

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %18, %32
  %34 = phi i32 [ %11, %18 ], [ 2, %32 ]
  %35 = urem i64 %13, 10
  %36 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !47
  %38 = getelementptr inbounds i8, ptr %14, i64 -1
  store i8 %37, ptr %38, align 1, !tbaa !47
  %39 = udiv i64 %13, 10
  br label %48

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %18, %40
  %42 = phi i32 [ %11, %18 ], [ 2, %40 ]
  %43 = and i64 %13, 15
  %44 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !47
  %46 = getelementptr inbounds i8, ptr %14, i64 -1
  store i8 %45, ptr %46, align 1, !tbaa !47
  %47 = lshr i64 %13, 4
  br label %48

48:                                               ; preds = %18, %41, %33, %28
  %49 = phi ptr [ %46, %41 ], [ %38, %33 ], [ %29, %28 ], [ %14, %18 ]
  %50 = phi i64 [ %47, %41 ], [ %39, %33 ], [ %31, %28 ], [ 0, %18 ]
  %51 = phi i32 [ %42, %41 ], [ %34, %33 ], [ 5, %28 ], [ %11, %18 ]
  %52 = phi i32 [ %10, %41 ], [ %10, %33 ], [ %30, %28 ], [ %10, %18 ]
  %53 = add nuw nsw i32 %12, 1
  %54 = icmp eq i32 %53, 5
  %55 = select i1 %8, i1 %54, i1 false
  %56 = icmp ugt ptr %49, %0
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = icmp eq i32 %52, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds i8, ptr %49, i64 -1
  store i8 46, ptr %61, align 1, !tbaa !47
  br label %66

62:                                               ; preds = %58
  %63 = icmp eq i64 %50, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = getelementptr inbounds i8, ptr %49, i64 -1
  store i8 48, ptr %65, align 1, !tbaa !47
  br label %66

66:                                               ; preds = %60, %64, %62, %48
  %67 = phi ptr [ %61, %60 ], [ %65, %64 ], [ %49, %62 ], [ %49, %48 ]
  %68 = icmp ugt ptr %67, %0
  br i1 %68, label %9, label %69, !llvm.loop !51

69:                                               ; preds = %9, %66, %4
  %70 = phi ptr [ %5, %4 ], [ %14, %9 ], [ %67, %66 ]
  ret ptr %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @png_warning(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !47
  %6 = icmp eq i8 %5, 35
  br i1 %6, label %7, label %18

7:                                                ; preds = %4, %12
  %8 = phi i64 [ %13, %12 ], [ 1, %4 ]
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !47
  %11 = icmp eq i8 %10, 32
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 15
  br i1 %14, label %15, label %7, !llvm.loop !52

15:                                               ; preds = %12, %7
  %16 = phi i64 [ %8, %7 ], [ 15, %12 ]
  %17 = and i64 %16, 4294967295
  br label %18

18:                                               ; preds = %15, %4, %2
  %19 = phi i64 [ 0, %4 ], [ 0, %2 ], [ %17, %15 ]
  br i1 %3, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %1, i64 %19
  tail call void %22(ptr noundef nonnull %0, ptr noundef %25) #14
  br label %32

26:                                               ; preds = %20, %18
  %27 = getelementptr inbounds i8, ptr %1, i64 %19
  %28 = load ptr, ptr @stderr, align 8, !tbaa !46
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.4, ptr noundef %27) #16
  %30 = load ptr, ptr @stderr, align 8, !tbaa !46
  %31 = tail call i32 @fputc(i32 10, ptr %30)
  br label %32

32:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_warning_parameter(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #1 {
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr [32 x i8], ptr %0, i64 %7
  %9 = getelementptr [32 x i8], ptr %8, i64 -1
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %2, align 1, !tbaa !47
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13, %16
  %17 = phi i8 [ %23, %16 ], [ %14, %13 ]
  %18 = phi ptr [ %20, %16 ], [ %2, %13 ]
  %19 = phi i64 [ %21, %16 ], [ 0, %13 ]
  %20 = getelementptr inbounds i8, ptr %18, i64 1
  %21 = add nuw nsw i64 %19, 1
  %22 = getelementptr inbounds i8, ptr %9, i64 %19
  store i8 %17, ptr %22, align 1, !tbaa !47
  %23 = load i8, ptr %20, align 1, !tbaa !47
  %24 = icmp ne i8 %23, 0
  %25 = icmp ult i64 %19, 30
  %26 = and i1 %24, %25
  br i1 %26, label %16, label %27, !llvm.loop !48

27:                                               ; preds = %16, %13, %11
  %28 = phi i64 [ 0, %11 ], [ 0, %13 ], [ %21, %16 ]
  %29 = getelementptr inbounds i8, ptr %9, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !47
  br label %30

30:                                               ; preds = %27, %6, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_warning_parameter_unsigned(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = getelementptr inbounds i8, ptr %5, i64 23
  store i8 0, ptr %6, align 1, !tbaa !47
  %7 = icmp eq i32 %2, 5
  br label %8

8:                                                ; preds = %65, %4
  %9 = phi i32 [ 0, %4 ], [ %51, %65 ]
  %10 = phi i32 [ 1, %4 ], [ %50, %65 ]
  %11 = phi i32 [ 0, %4 ], [ %52, %65 ]
  %12 = phi i64 [ %3, %4 ], [ %49, %65 ]
  %13 = phi ptr [ %6, %4 ], [ %66, %65 ]
  %14 = icmp ne i64 %12, 0
  %15 = icmp slt i32 %11, %10
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %8
  switch i32 %2, label %47 [
    i32 5, label %18
    i32 2, label %31
    i32 1, label %32
    i32 4, label %39
    i32 3, label %40
  ]

18:                                               ; preds = %17
  %19 = icmp eq i32 %9, 0
  %20 = urem i64 %12, 10
  %21 = icmp eq i64 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %20
  %25 = load i8, ptr %24, align 1, !tbaa !47
  %26 = getelementptr inbounds i8, ptr %13, i64 -1
  store i8 %25, ptr %26, align 1, !tbaa !47
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi ptr [ %26, %23 ], [ %13, %18 ]
  %29 = phi i32 [ 1, %23 ], [ 0, %18 ]
  %30 = udiv i64 %12, 10
  br label %47

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %17
  %33 = phi i32 [ %10, %17 ], [ 2, %31 ]
  %34 = urem i64 %12, 10
  %35 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !47
  %37 = getelementptr inbounds i8, ptr %13, i64 -1
  store i8 %36, ptr %37, align 1, !tbaa !47
  %38 = udiv i64 %12, 10
  br label %47

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %17
  %41 = phi i32 [ %10, %17 ], [ 2, %39 ]
  %42 = and i64 %12, 15
  %43 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !47
  %45 = getelementptr inbounds i8, ptr %13, i64 -1
  store i8 %44, ptr %45, align 1, !tbaa !47
  %46 = lshr i64 %12, 4
  br label %47

47:                                               ; preds = %40, %32, %27, %17
  %48 = phi ptr [ %45, %40 ], [ %37, %32 ], [ %28, %27 ], [ %13, %17 ]
  %49 = phi i64 [ %46, %40 ], [ %38, %32 ], [ %30, %27 ], [ 0, %17 ]
  %50 = phi i32 [ %41, %40 ], [ %33, %32 ], [ 5, %27 ], [ %10, %17 ]
  %51 = phi i32 [ %9, %40 ], [ %9, %32 ], [ %29, %27 ], [ %9, %17 ]
  %52 = add nuw nsw i32 %11, 1
  %53 = icmp eq i32 %52, 5
  %54 = select i1 %7, i1 %53, i1 false
  %55 = icmp ugt ptr %48, %5
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = icmp eq i32 %51, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %48, i64 -1
  store i8 46, ptr %60, align 1, !tbaa !47
  br label %65

61:                                               ; preds = %57
  %62 = icmp eq i64 %49, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = getelementptr inbounds i8, ptr %48, i64 -1
  store i8 48, ptr %64, align 1, !tbaa !47
  br label %65

65:                                               ; preds = %63, %61, %59, %47
  %66 = phi ptr [ %60, %59 ], [ %64, %63 ], [ %48, %61 ], [ %48, %47 ]
  %67 = icmp ugt ptr %66, %5
  br i1 %67, label %8, label %68, !llvm.loop !51

68:                                               ; preds = %8, %65
  %69 = phi ptr [ %13, %8 ], [ %66, %65 ]
  %70 = add i32 %1, -1
  %71 = icmp ult i32 %70, 8
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = zext nneg i32 %1 to i64
  %74 = getelementptr [32 x i8], ptr %0, i64 %73
  %75 = getelementptr [32 x i8], ptr %74, i64 -1
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %72
  %78 = icmp eq ptr %69, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %77
  %80 = load i8, ptr %69, align 1, !tbaa !47
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79, %82
  %83 = phi i8 [ %89, %82 ], [ %80, %79 ]
  %84 = phi ptr [ %86, %82 ], [ %69, %79 ]
  %85 = phi i64 [ %87, %82 ], [ 0, %79 ]
  %86 = getelementptr inbounds i8, ptr %84, i64 1
  %87 = add nuw nsw i64 %85, 1
  %88 = getelementptr inbounds i8, ptr %75, i64 %85
  store i8 %83, ptr %88, align 1, !tbaa !47
  %89 = load i8, ptr %86, align 1, !tbaa !47
  %90 = icmp ne i8 %89, 0
  %91 = icmp ult i64 %85, 30
  %92 = and i1 %90, %91
  br i1 %92, label %82, label %93, !llvm.loop !48

93:                                               ; preds = %82, %79, %77
  %94 = phi i64 [ 0, %77 ], [ 0, %79 ], [ %87, %82 ]
  %95 = getelementptr inbounds i8, ptr %75, i64 %94
  store i8 0, ptr %95, align 1, !tbaa !47
  br label %96

96:                                               ; preds = %68, %72, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_warning_parameter_signed(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = icmp slt i32 %3, 0
  %7 = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 23
  store i8 0, ptr %9, align 1, !tbaa !47
  %10 = icmp eq i32 %2, 5
  br label %11

11:                                               ; preds = %68, %4
  %12 = phi i32 [ 0, %4 ], [ %54, %68 ]
  %13 = phi i32 [ 1, %4 ], [ %53, %68 ]
  %14 = phi i32 [ 0, %4 ], [ %55, %68 ]
  %15 = phi i64 [ %8, %4 ], [ %52, %68 ]
  %16 = phi ptr [ %9, %4 ], [ %69, %68 ]
  %17 = icmp ne i64 %15, 0
  %18 = icmp slt i32 %14, %13
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %11
  switch i32 %2, label %50 [
    i32 5, label %21
    i32 2, label %34
    i32 1, label %35
    i32 4, label %42
    i32 3, label %43
  ]

21:                                               ; preds = %20
  %22 = icmp eq i32 %12, 0
  %23 = urem i64 %15, 10
  %24 = icmp eq i64 %23, 0
  %25 = and i1 %22, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !47
  %29 = getelementptr inbounds i8, ptr %16, i64 -1
  store i8 %28, ptr %29, align 1, !tbaa !47
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi ptr [ %29, %26 ], [ %16, %21 ]
  %32 = phi i32 [ 1, %26 ], [ 0, %21 ]
  %33 = udiv i64 %15, 10
  br label %50

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %20
  %36 = phi i32 [ %13, %20 ], [ 2, %34 ]
  %37 = urem i64 %15, 10
  %38 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !47
  %40 = getelementptr inbounds i8, ptr %16, i64 -1
  store i8 %39, ptr %40, align 1, !tbaa !47
  %41 = udiv i64 %15, 10
  br label %50

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %20
  %44 = phi i32 [ %13, %20 ], [ 2, %42 ]
  %45 = and i64 %15, 15
  %46 = getelementptr inbounds [17 x i8], ptr @png_format_number.digits, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !47
  %48 = getelementptr inbounds i8, ptr %16, i64 -1
  store i8 %47, ptr %48, align 1, !tbaa !47
  %49 = lshr i64 %15, 4
  br label %50

50:                                               ; preds = %43, %35, %30, %20
  %51 = phi ptr [ %48, %43 ], [ %40, %35 ], [ %31, %30 ], [ %16, %20 ]
  %52 = phi i64 [ %49, %43 ], [ %41, %35 ], [ %33, %30 ], [ 0, %20 ]
  %53 = phi i32 [ %44, %43 ], [ %36, %35 ], [ 5, %30 ], [ %13, %20 ]
  %54 = phi i32 [ %12, %43 ], [ %12, %35 ], [ %32, %30 ], [ %12, %20 ]
  %55 = add nuw nsw i32 %14, 1
  %56 = icmp eq i32 %55, 5
  %57 = select i1 %10, i1 %56, i1 false
  %58 = icmp ugt ptr %51, %5
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds i8, ptr %51, i64 -1
  store i8 46, ptr %63, align 1, !tbaa !47
  br label %68

64:                                               ; preds = %60
  %65 = icmp eq i64 %52, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = getelementptr inbounds i8, ptr %51, i64 -1
  store i8 48, ptr %67, align 1, !tbaa !47
  br label %68

68:                                               ; preds = %66, %64, %62, %50
  %69 = phi ptr [ %63, %62 ], [ %67, %66 ], [ %51, %64 ], [ %51, %50 ]
  %70 = icmp ugt ptr %69, %5
  br i1 %70, label %11, label %71, !llvm.loop !51

71:                                               ; preds = %11, %68
  %72 = phi ptr [ %16, %11 ], [ %69, %68 ]
  %73 = icmp ugt ptr %72, %5
  %74 = and i1 %6, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %72, i64 -1
  store i8 45, ptr %76, align 1, !tbaa !47
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %76, %75 ], [ %72, %71 ]
  %79 = add i32 %1, -1
  %80 = icmp ult i32 %79, 8
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = zext nneg i32 %1 to i64
  %83 = getelementptr [32 x i8], ptr %0, i64 %82
  %84 = getelementptr [32 x i8], ptr %83, i64 -1
  %85 = icmp eq ptr %84, null
  br i1 %85, label %105, label %86

86:                                               ; preds = %81
  %87 = icmp eq ptr %78, null
  br i1 %87, label %102, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %78, align 1, !tbaa !47
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88, %91
  %92 = phi i8 [ %98, %91 ], [ %89, %88 ]
  %93 = phi ptr [ %95, %91 ], [ %78, %88 ]
  %94 = phi i64 [ %96, %91 ], [ 0, %88 ]
  %95 = getelementptr inbounds i8, ptr %93, i64 1
  %96 = add nuw nsw i64 %94, 1
  %97 = getelementptr inbounds i8, ptr %84, i64 %94
  store i8 %92, ptr %97, align 1, !tbaa !47
  %98 = load i8, ptr %95, align 1, !tbaa !47
  %99 = icmp ne i8 %98, 0
  %100 = icmp ult i64 %94, 30
  %101 = and i1 %99, %100
  br i1 %101, label %91, label %102, !llvm.loop !48

102:                                              ; preds = %91, %88, %86
  %103 = phi i64 [ 0, %86 ], [ 0, %88 ], [ %96, %91 ]
  %104 = getelementptr inbounds i8, ptr %84, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !47
  br label %105

105:                                              ; preds = %77, %81, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_formatted_warning(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #14
  %5 = icmp ne ptr %1, null
  br label %6

6:                                                ; preds = %3, %60
  %7 = phi ptr [ %2, %3 ], [ %62, %60 ]
  %8 = phi i64 [ 0, %3 ], [ %61, %60 ]
  %9 = load i8, ptr %7, align 1, !tbaa !47
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %64, label %11

11:                                               ; preds = %6
  %12 = icmp eq i8 %9, 64
  %13 = and i1 %5, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !47
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %14 ]
  %20 = getelementptr inbounds [10 x i8], ptr @png_formatted_warning.valid_parameters, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !47
  %22 = icmp eq i8 %21, %16
  %23 = icmp eq i64 %19, 9
  %24 = or i1 %23, %22
  %25 = add nuw nsw i64 %19, 1
  br i1 %24, label %26, label %18, !llvm.loop !54

26:                                               ; preds = %18
  %27 = and i64 %19, 4294967288
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = getelementptr inbounds [32 x i8], ptr %1, i64 %19
  %31 = icmp ult i64 %8, 191
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = sub nsw i64 191, %8
  br label %34

34:                                               ; preds = %32, %42
  %35 = phi i64 [ %43, %42 ], [ 0, %32 ]
  %36 = phi i64 [ %44, %42 ], [ %8, %32 ]
  %37 = getelementptr inbounds i8, ptr %30, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !47
  %39 = icmp ne i8 %38, 0
  %40 = icmp ult i64 %35, 32
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = add nuw nsw i64 %35, 1
  %44 = add nuw nsw i64 %36, 1
  %45 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %36
  store i8 %38, ptr %45, align 1, !tbaa !47
  %46 = icmp eq i64 %43, %33
  br i1 %46, label %47, label %34, !llvm.loop !55

47:                                               ; preds = %42, %34, %29
  %48 = phi i64 [ %8, %29 ], [ 191, %42 ], [ %36, %34 ]
  %49 = getelementptr inbounds i8, ptr %7, i64 2
  br label %50

50:                                               ; preds = %26, %47
  %51 = phi i64 [ %48, %47 ], [ %8, %26 ]
  %52 = phi ptr [ %49, %47 ], [ %15, %26 ]
  br i1 %28, label %60, label %53

53:                                               ; preds = %50, %14, %11
  %54 = phi i64 [ %51, %50 ], [ %8, %14 ], [ %8, %11 ]
  %55 = phi ptr [ %52, %50 ], [ %7, %14 ], [ %7, %11 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !47
  %58 = add i64 %54, 1
  %59 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %54
  store i8 %57, ptr %59, align 1, !tbaa !47
  br label %60

60:                                               ; preds = %53, %50
  %61 = phi i64 [ %51, %50 ], [ %58, %53 ]
  %62 = phi ptr [ %52, %50 ], [ %56, %53 ]
  %63 = icmp ult i64 %61, 191
  br i1 %63, label %6, label %64, !llvm.loop !56

64:                                               ; preds = %60, %6
  %65 = phi i64 [ %61, %60 ], [ %8, %6 ]
  %66 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !47
  %67 = icmp ne ptr %0, null
  %68 = load i8, ptr %4, align 16
  %69 = icmp eq i8 %68, 35
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %82

71:                                               ; preds = %64, %76
  %72 = phi i64 [ %77, %76 ], [ 1, %64 ]
  %73 = getelementptr inbounds i8, ptr %4, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !47
  %75 = icmp eq i8 %74, 32
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, 15
  br i1 %78, label %79, label %71, !llvm.loop !52

79:                                               ; preds = %76, %71
  %80 = phi i64 [ %72, %71 ], [ 15, %76 ]
  %81 = and i64 %80, 4294967295
  br label %82

82:                                               ; preds = %79, %64
  %83 = phi i64 [ 0, %64 ], [ %81, %79 ]
  br i1 %67, label %84, label %90

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !53
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %4, i64 %83
  call void %86(ptr noundef nonnull %0, ptr noundef nonnull %89) #14
  br label %96

90:                                               ; preds = %84, %82
  %91 = getelementptr inbounds i8, ptr %4, i64 %83
  %92 = load ptr, ptr @stderr, align 8, !tbaa !46
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.4, ptr noundef nonnull %91) #16
  %94 = load ptr, ptr @stderr, align 8, !tbaa !46
  %95 = call i32 @fputc(i32 10, ptr %94)
  br label %96

96:                                               ; preds = %88, %90
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_benign_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %0, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1, !tbaa !47
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %23

12:                                               ; preds = %9, %17
  %13 = phi i64 [ %18, %17 ], [ 1, %9 ]
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !47
  %16 = icmp eq i8 %15, 32
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 15
  br i1 %19, label %20, label %12, !llvm.loop !52

20:                                               ; preds = %17, %12
  %21 = phi i64 [ %13, %12 ], [ 15, %17 ]
  %22 = and i64 %21, 4294967295
  br label %23

23:                                               ; preds = %20, %9, %7
  %24 = phi i64 [ 0, %9 ], [ 0, %7 ], [ %22, %20 ]
  br i1 %8, label %31, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %1, i64 %24
  tail call void %27(ptr noundef nonnull %0, ptr noundef %30) #14
  br label %37

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds i8, ptr %1, i64 %24
  %33 = load ptr, ptr @stderr, align 8, !tbaa !46
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef %32) #16
  %35 = load ptr, ptr @stderr, align 8, !tbaa !46
  %36 = tail call i32 @fputc(i32 10, ptr %35)
  br label %37

37:                                               ; preds = %29, %31
  ret void

38:                                               ; preds = %2
  tail call void @png_error(ptr noundef %0, ptr noundef %1) #15
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_chunk_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [82 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @png_error(ptr noundef null, ptr noundef %1) #15
  unreachable

6:                                                ; preds = %2
  call fastcc void @png_format_buffer(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1)
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @png_format_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %5 = load i32, ptr %4, align 8, !tbaa !58
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
  store i8 91, ptr %19, align 1, !tbaa !47
  %20 = lshr i32 %9, 4
  %21 = and i32 %20, 15
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [16 x i8], ptr @png_digit, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !47
  %25 = getelementptr i8, ptr %19, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !47
  %26 = and i32 %9, 15
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8], ptr @png_digit, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !47
  %30 = getelementptr i8, ptr %19, i64 2
  store i8 %29, ptr %30, align 1, !tbaa !47
  %31 = add nsw i32 %7, 4
  %32 = getelementptr i8, ptr %19, i64 3
  store i8 93, ptr %32, align 1, !tbaa !47
  br label %38

33:                                               ; preds = %6
  %34 = trunc i32 %9 to i8
  %35 = add nsw i32 %7, 1
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds i8, ptr %1, i64 %36
  store i8 %34, ptr %37, align 1, !tbaa !47
  br label %38

38:                                               ; preds = %33, %17
  %39 = phi i32 [ %31, %17 ], [ %35, %33 ]
  %40 = icmp eq i32 %8, 0
  br i1 %40, label %41, label %6, !llvm.loop !59

41:                                               ; preds = %38
  %42 = icmp eq ptr %2, null
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds i8, ptr %1, i64 %43
  br i1 %42, label %67, label %45

45:                                               ; preds = %41
  store i8 58, ptr %44, align 1, !tbaa !47
  %46 = add i32 %39, 2
  %47 = getelementptr i8, ptr %44, i64 1
  store i8 32, ptr %47, align 1, !tbaa !47
  %48 = sext i32 %46 to i64
  %49 = add i32 %39, 65
  br label %50

50:                                               ; preds = %45, %56
  %51 = phi i64 [ %48, %45 ], [ %58, %56 ]
  %52 = phi i64 [ 0, %45 ], [ %57, %56 ]
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !47
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = add nuw nsw i64 %52, 1
  %58 = add nsw i64 %51, 1
  %59 = getelementptr inbounds i8, ptr %1, i64 %51
  store i8 %54, ptr %59, align 1, !tbaa !47
  %60 = icmp eq i64 %57, 63
  br i1 %60, label %63, label %50, !llvm.loop !60

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
  store i8 0, ptr %68, align 1, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_chunk_warning(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [82 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !46
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  %8 = load ptr, ptr @stderr, align 8, !tbaa !46
  %9 = tail call i32 @fputc(i32 10, ptr %8)
  br label %101

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %12 = load i32, ptr %11, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %45, %10
  %14 = phi i32 [ 0, %10 ], [ %46, %45 ]
  %15 = phi i32 [ 24, %10 ], [ %18, %45 ]
  %16 = lshr i32 %12, %15
  %17 = and i32 %16, 255
  %18 = add nsw i32 %15, -8
  %19 = add nsw i32 %17, -123
  %20 = icmp ult i32 %19, -58
  %21 = add nsw i32 %17, -91
  %22 = icmp ult i32 %21, 6
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %13
  %25 = sext i32 %14 to i64
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  store i8 91, ptr %26, align 1, !tbaa !47
  %27 = lshr i32 %16, 4
  %28 = and i32 %27, 15
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [16 x i8], ptr @png_digit, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !47
  %32 = getelementptr i8, ptr %26, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !47
  %33 = and i32 %16, 15
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8], ptr @png_digit, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !47
  %37 = getelementptr i8, ptr %26, i64 2
  store i8 %36, ptr %37, align 1, !tbaa !47
  %38 = add nsw i32 %14, 4
  %39 = getelementptr i8, ptr %26, i64 3
  store i8 93, ptr %39, align 1, !tbaa !47
  br label %45

40:                                               ; preds = %13
  %41 = trunc i32 %16 to i8
  %42 = add nsw i32 %14, 1
  %43 = sext i32 %14 to i64
  %44 = getelementptr inbounds i8, ptr %3, i64 %43
  store i8 %41, ptr %44, align 1, !tbaa !47
  br label %45

45:                                               ; preds = %40, %24
  %46 = phi i32 [ %38, %24 ], [ %42, %40 ]
  %47 = icmp eq i32 %15, 0
  br i1 %47, label %48, label %13, !llvm.loop !59

48:                                               ; preds = %45
  %49 = icmp eq ptr %1, null
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds i8, ptr %3, i64 %50
  br i1 %49, label %74, label %52

52:                                               ; preds = %48
  store i8 58, ptr %51, align 1, !tbaa !47
  %53 = add i32 %46, 2
  %54 = getelementptr i8, ptr %51, i64 1
  store i8 32, ptr %54, align 1, !tbaa !47
  %55 = sext i32 %53 to i64
  %56 = add i32 %46, 65
  br label %57

57:                                               ; preds = %63, %52
  %58 = phi i64 [ %55, %52 ], [ %65, %63 ]
  %59 = phi i64 [ 0, %52 ], [ %64, %63 ]
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !47
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = add nuw nsw i64 %59, 1
  %65 = add nsw i64 %58, 1
  %66 = getelementptr inbounds i8, ptr %3, i64 %58
  store i8 %61, ptr %66, align 1, !tbaa !47
  %67 = icmp eq i64 %64, 63
  br i1 %67, label %70, label %57, !llvm.loop !60

68:                                               ; preds = %57
  %69 = trunc i64 %58 to i32
  br label %70

70:                                               ; preds = %63, %68
  %71 = phi i32 [ %69, %68 ], [ %56, %63 ]
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %3, i64 %72
  br label %74

74:                                               ; preds = %48, %70
  %75 = phi ptr [ %73, %70 ], [ %51, %48 ]
  store i8 0, ptr %75, align 1, !tbaa !47
  %76 = load i8, ptr %3, align 16, !tbaa !47
  %77 = icmp eq i8 %76, 35
  br i1 %77, label %78, label %89

78:                                               ; preds = %74, %83
  %79 = phi i64 [ %84, %83 ], [ 1, %74 ]
  %80 = getelementptr inbounds i8, ptr %3, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !47
  %82 = icmp eq i8 %81, 32
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = add nuw nsw i64 %79, 1
  %85 = icmp eq i64 %84, 15
  br i1 %85, label %86, label %78, !llvm.loop !52

86:                                               ; preds = %83, %78
  %87 = phi i64 [ %79, %78 ], [ 15, %83 ]
  %88 = and i64 %87, 4294967295
  br label %89

89:                                               ; preds = %74, %86
  %90 = phi i64 [ 0, %74 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !53
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds i8, ptr %3, i64 %90
  br i1 %93, label %96, label %95

95:                                               ; preds = %89
  call void %92(ptr noundef nonnull %0, ptr noundef nonnull %94) #14
  br label %101

96:                                               ; preds = %89
  %97 = load ptr, ptr @stderr, align 8, !tbaa !46
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.4, ptr noundef nonnull %94) #16
  %99 = load ptr, ptr @stderr, align 8, !tbaa !46
  %100 = call i32 @fputc(i32 10, ptr %99)
  br label %101

101:                                              ; preds = %96, %95, %5
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_chunk_benign_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @png_chunk_warning(ptr noundef %0, ptr noundef %1)
  ret void

8:                                                ; preds = %2
  tail call void @png_chunk_error(ptr noundef %0, ptr noundef %1) #15
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_fixed_error(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) @.str, i64 24, i1 false)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %10
  %6 = phi i64 [ %13, %10 ], [ 0, %2 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !47
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i64 %6, 24
  %12 = getelementptr inbounds [88 x i8], ptr %3, i64 0, i64 %11
  store i8 %8, ptr %12, align 1, !tbaa !47
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
  store i8 0, ptr %22, align 1, !tbaa !47
  call void @png_error(ptr noundef %0, ptr noundef nonnull %3) #15
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @png_set_longjmp_fn(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ne i64 %2, 200
  %6 = or i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !61
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %0, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @png_longjmp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(ptr noundef nonnull %0, i32 noundef %1) #14
  br label %9

9:                                                ; preds = %8, %4, %2
  tail call void @abort() #17
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_error_fn(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !53
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_error_ptr(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

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
!46 = !{!38, !38, i64 0}
!47 = !{!36, !36, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = distinct !{!52, !49, !50}
!53 = !{!35, !38, i64 216}
!54 = distinct !{!54, !49, !50}
!55 = distinct !{!55, !49, !50}
!56 = distinct !{!56, !49, !50}
!57 = !{!35, !39, i64 288}
!58 = !{!35, !39, i64 496}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = !{!35, !38, i64 200}
!62 = !{!35, !38, i64 224}

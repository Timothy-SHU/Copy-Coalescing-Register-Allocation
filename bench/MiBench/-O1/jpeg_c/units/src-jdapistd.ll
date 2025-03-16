; ModuleID = 'src/jdapistd.c'
source_filename = "src/jdapistd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_start_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 202
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  tail call void @jinit_master_decompress(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i32 207, ptr %2, align 4, !tbaa !5
  br label %63

10:                                               ; preds = %5
  store i32 203, ptr %2, align 4, !tbaa !5
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, ptr %2, align 4, !tbaa !5
  switch i32 %12, label %55 [
    i32 203, label %13
    i32 204, label %61
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.jpeg_input_controller, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  br label %22

22:                                               ; preds = %19, %49
  %23 = load ptr, ptr %20, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !18
  tail call void %26(ptr noundef %0) #4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %14, align 8, !tbaa !14
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = tail call i32 %29(ptr noundef %0) #4
  switch i32 %30, label %32 [
    i32 0, label %49
    i32 2, label %31
  ]

31:                                               ; preds = %27
  br label %49

32:                                               ; preds = %27
  %33 = load ptr, ptr %20, align 8, !tbaa !17
  %34 = icmp ne ptr %33, null
  %35 = and i32 %30, -3
  %36 = icmp eq i32 %35, 1
  %37 = and i1 %36, %34
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !22
  %41 = add nsw i64 %40, 1
  store i64 %41, ptr %39, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %33, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !23
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, ptr %21, align 8, !tbaa !24
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  store i64 %48, ptr %42, align 8, !tbaa !23
  br label %49

49:                                               ; preds = %32, %45, %38, %27, %31
  %50 = phi i32 [ 2, %31 ], [ 1, %27 ], [ 0, %38 ], [ 0, %45 ], [ 0, %32 ]
  switch i32 %50, label %65 [
    i32 0, label %22
    i32 1, label %63
    i32 2, label %51
  ], !llvm.loop !25

51:                                               ; preds = %49, %13
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %53 = load i32, ptr %52, align 4, !tbaa !27
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  store i32 %53, ptr %54, align 4, !tbaa !28
  br label %61

55:                                               ; preds = %11
  %56 = load ptr, ptr %0, align 8, !tbaa !29
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 18, ptr %57, align 8, !tbaa !30
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %12, ptr %58, align 4, !tbaa !32
  %59 = load ptr, ptr %0, align 8, !tbaa !29
  %60 = load ptr, ptr %59, align 8, !tbaa !33
  tail call void %60(ptr noundef nonnull %0) #4
  br label %61

61:                                               ; preds = %11, %55, %51
  %62 = tail call fastcc i32 @output_pass_setup(ptr noundef %0)
  br label %63

63:                                               ; preds = %49, %61, %9
  %64 = phi i32 [ 1, %9 ], [ %62, %61 ], [ 0, %49 ]
  ret i32 %64

65:                                               ; preds = %49
  unreachable
}

declare void @jinit_master_decompress(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @output_pass_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 204
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call void %8(ptr noundef %0) #4
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  store i32 0, ptr %9, align 8, !tbaa !37
  store i32 204, ptr %2, align 4, !tbaa !5
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  br label %21

21:                                               ; preds = %41, %16
  %22 = load i32, ptr %17, align 8, !tbaa !37
  %23 = load i32, ptr %18, align 4, !tbaa !39
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = zext i32 %22 to i64
  %30 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !22
  %31 = zext i32 %23 to i64
  %32 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 2
  store i64 %31, ptr %32, align 8, !tbaa !23
  %33 = load ptr, ptr %26, align 8, !tbaa !18
  tail call void %33(ptr noundef %0) #4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, ptr %17, align 8, !tbaa !37
  %36 = load ptr, ptr %20, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  tail call void %38(ptr noundef %0, ptr noundef null, ptr noundef nonnull %17, i32 noundef 0) #4
  %39 = load i32, ptr %17, align 8, !tbaa !37
  %40 = icmp eq i32 %39, %35
  br i1 %40, label %57, label %41

41:                                               ; preds = %34, %42
  br label %21, !llvm.loop !43

42:                                               ; preds = %21
  %43 = load ptr, ptr %11, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  tail call void %45(ptr noundef %0) #4
  %46 = load ptr, ptr %11, align 8, !tbaa !34
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  tail call void %47(ptr noundef %0) #4
  store i32 0, ptr %17, align 8, !tbaa !37
  %48 = load ptr, ptr %11, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !38
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %41

52:                                               ; preds = %42, %10
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %54 = load i32, ptr %53, align 4, !tbaa !45
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 205, i32 206
  store i32 %56, ptr %2, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %34, %52
  %58 = phi i32 [ 1, %52 ], [ 0, %34 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_read_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 205
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 18, ptr %10, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %6, ptr %11, align 4, !tbaa !32
  %12 = load ptr, ptr %0, align 8, !tbaa !29
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  tail call void %13(ptr noundef nonnull %0) #4
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  %16 = load i32, ptr %15, align 8, !tbaa !37
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 119, ptr %22, align 8, !tbaa !30
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  tail call void %24(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %43

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !22
  %32 = zext i32 %18 to i64
  %33 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %27, i64 0, i32 2
  store i64 %32, ptr %33, align 8, !tbaa !23
  %34 = load ptr, ptr %27, align 8, !tbaa !18
  tail call void %34(ptr noundef %0) #4
  br label %35

35:                                               ; preds = %29, %25
  store i32 0, ptr %4, align 4, !tbaa !47
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  call void %39(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %2) #4
  %40 = load i32, ptr %4, align 4, !tbaa !47
  %41 = load i32, ptr %15, align 8, !tbaa !37
  %42 = add i32 %41, %40
  store i32 %42, ptr %15, align 8, !tbaa !37
  br label %43

43:                                               ; preds = %35, %20
  %44 = phi i32 [ 0, %20 ], [ %40, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_read_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 206
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 18, ptr %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %5, ptr %10, align 4, !tbaa !32
  %11 = load ptr, ptr %0, align 8, !tbaa !29
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  %15 = load i32, ptr %14, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %17 = load i32, ptr %16, align 4, !tbaa !39
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 119, ptr %21, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  tail call void %23(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %55

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = zext i32 %15 to i64
  %30 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !22
  %31 = zext i32 %17 to i64
  %32 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %26, i64 0, i32 2
  store i64 %31, ptr %32, align 8, !tbaa !23
  %33 = load ptr, ptr %26, align 8, !tbaa !18
  tail call void %33(ptr noundef %0) #4
  br label %34

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = mul nsw i32 %38, %36
  %40 = icmp ugt i32 %39, %2
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 21, ptr %43, align 8, !tbaa !30
  %44 = load ptr, ptr %42, align 8, !tbaa !33
  tail call void %44(ptr noundef nonnull %0) #4
  br label %45

45:                                               ; preds = %41, %34
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  %50 = tail call i32 %49(ptr noundef %0, ptr noundef %1) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %14, align 8, !tbaa !37
  %54 = add i32 %53, %39
  store i32 %54, ptr %14, align 8, !tbaa !37
  br label %55

55:                                               ; preds = %45, %52, %19
  %56 = phi i32 [ 0, %19 ], [ %39, %52 ], [ 0, %45 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_start_output(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !5
  switch i32 %4, label %5 [
    i32 207, label %11
    i32 204, label %11
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 18, ptr %7, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %4, ptr %8, align 4, !tbaa !32
  %9 = load ptr, ptr %0, align 8, !tbaa !29
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  tail call void %10(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %2, %2, %5
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.jpeg_input_controller, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %20 = load i32, ptr %19, align 4, !tbaa !27
  %21 = tail call i32 @llvm.smin.i32(i32 %12, i32 %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %12, %11 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  store i32 %23, ptr %24, align 4, !tbaa !28
  %25 = tail call fastcc i32 @output_pass_setup(ptr noundef %0)
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_finish_output(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = add i32 %3, -205
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void %14(ptr noundef %0) #4
  store i32 208, ptr %2, align 4, !tbaa !5
  br label %23

15:                                               ; preds = %1, %6
  %16 = icmp eq i32 %3, 208
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 18, ptr %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %3, ptr %20, align 4, !tbaa !32
  %21 = load ptr, ptr %0, align 8, !tbaa !29
  %22 = load ptr, ptr %21, align 8, !tbaa !33
  tail call void %22(ptr noundef nonnull %0) #4
  br label %23

23:                                               ; preds = %15, %17, %10
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  br label %27

27:                                               ; preds = %36, %23
  %28 = load i32, ptr %24, align 4, !tbaa !27
  %29 = load i32, ptr %25, align 4, !tbaa !28
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %26, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.jpeg_input_controller, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !21
  %38 = tail call i32 %37(ptr noundef %0) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %27, !llvm.loop !54

40:                                               ; preds = %27, %31
  store i32 207, ptr %2, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %36, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %36 ]
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !10, i64 80}
!14 = !{!6, !7, i64 560}
!15 = !{!16, !10, i64 32}
!16 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!17 = !{!6, !7, i64 16}
!18 = !{!19, !7, i64 0}
!19 = !{!"jpeg_progress_mgr", !7, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !10, i64 28}
!20 = !{!"long", !8, i64 0}
!21 = !{!16, !7, i64 0}
!22 = !{!19, !20, i64 8}
!23 = !{!19, !20, i64 16}
!24 = !{!6, !10, i64 400}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!6, !10, i64 164}
!28 = !{!6, !10, i64 172}
!29 = !{!6, !7, i64 0}
!30 = !{!31, !10, i64 40}
!31 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !20, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!32 = !{!8, !8, i64 0}
!33 = !{!31, !7, i64 0}
!34 = !{!6, !7, i64 528}
!35 = !{!36, !7, i64 0}
!36 = !{!"jpeg_decomp_master", !7, i64 0, !7, i64 8, !10, i64 16}
!37 = !{!6, !10, i64 160}
!38 = !{!36, !10, i64 16}
!39 = !{!6, !10, i64 132}
!40 = !{!6, !7, i64 536}
!41 = !{!42, !7, i64 8}
!42 = !{!"jpeg_d_main_controller", !7, i64 0, !7, i64 8}
!43 = distinct !{!43, !26}
!44 = !{!36, !7, i64 8}
!45 = !{!6, !10, i64 84}
!46 = !{!31, !7, i64 8}
!47 = !{!10, !10, i64 0}
!48 = !{!6, !10, i64 392}
!49 = !{!6, !10, i64 396}
!50 = !{!6, !7, i64 544}
!51 = !{!52, !7, i64 24}
!52 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!53 = !{!16, !10, i64 36}
!54 = distinct !{!54, !26}

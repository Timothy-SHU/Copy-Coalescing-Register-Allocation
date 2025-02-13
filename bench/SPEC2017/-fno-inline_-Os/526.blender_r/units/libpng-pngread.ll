; ModuleID = 'libpng/pngread.c'
source_filename = "libpng/pngread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }
%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.6\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"zlib memory error\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"zlib stream error\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"zlib version error\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Unknown zlib error\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Invalid attempt to read row data\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Not enough image data\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Decompression error\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"sequential row overflow\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"internal sequential row size calculation error\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"Interlace handling should be turned on when using png_read_image\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Read palette index exceeding num_palette\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Too many IDATs found\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Image is too high to process with png_read_png()\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @png_create_read_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @png_create_read_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null) #9
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @png_create_read_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store volatile i32 0, ptr %9, align 4, !tbaa !34
  %10 = call noalias ptr @png_create_struct_2(i32 noundef 1, ptr noundef %5, ptr noundef %4) #10
  store volatile ptr %10, ptr %8, align 8, !tbaa !38
  %11 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %98, label %13

13:                                               ; preds = %7
  %14 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %14, i64 0, i32 135
  store i32 2147483647, ptr %15, align 4, !tbaa !40
  %16 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %16, i64 0, i32 136
  store i32 2147483647, ptr %17, align 8, !tbaa !48
  %18 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %18, i64 0, i32 137
  store i32 0, ptr %19, align 4, !tbaa !49
  %20 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %20, i64 0, i32 138
  store i64 0, ptr %21, align 8, !tbaa !50
  %22 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %23 = call ptr @png_set_longjmp_fn(ptr noundef %22, ptr noundef nonnull @longjmp, i64 noundef 200) #10
  %24 = call i32 @_setjmp(ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  call void @abort() #12
  unreachable

27:                                               ; preds = %13
  %28 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_set_mem_fn(ptr noundef %28, ptr noundef %4, ptr noundef %5, ptr noundef %6) #10
  %29 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_set_error_fn(ptr noundef %29, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  %30 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %31 = call i32 @png_user_version_check(ptr noundef %30, ptr noundef %0) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %33, %27
  %35 = load volatile i32, ptr %9, align 4, !tbaa !34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %38, i64 0, i32 18
  store i32 8192, ptr %39, align 8, !tbaa !51
  %40 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %41 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %41, i64 0, i32 18
  %43 = load i32, ptr %42, align 8, !tbaa !51
  %44 = zext i32 %43 to i64
  %45 = call noalias ptr @png_malloc_warn(ptr noundef %40, i64 noundef %44) #10
  %46 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %46, i64 0, i32 17
  store ptr %45, ptr %47, align 8, !tbaa !52
  %48 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %53

53:                                               ; preds = %37, %52, %34
  %54 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %54, i64 0, i32 16, i32 8
  store ptr @png_zalloc, ptr %55, align 8, !tbaa !53
  %56 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %56, i64 0, i32 16, i32 9
  store ptr @png_zfree, ptr %57, align 8, !tbaa !54
  %58 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %59 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %59, i64 0, i32 16, i32 10
  store ptr %58, ptr %60, align 8, !tbaa !55
  %61 = load volatile i32, ptr %9, align 4, !tbaa !34
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %64, i64 0, i32 16
  %66 = call i32 @inflateInit_(ptr noundef nonnull %65, ptr noundef nonnull @.str, i32 noundef 112) #10
  switch i32 %66, label %73 [
    i32 0, label %75
    i32 -4, label %67
    i32 -2, label %69
    i32 -6, label %71
  ]

67:                                               ; preds = %63
  %68 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %68, ptr noundef nonnull @.str.1) #10
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

69:                                               ; preds = %63
  %70 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %70, ptr noundef nonnull @.str.2) #10
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

71:                                               ; preds = %63
  %72 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %72, ptr noundef nonnull @.str.3) #10
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

73:                                               ; preds = %63
  %74 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %74, ptr noundef nonnull @.str.4) #10
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %63, %67, %69, %71, %73, %53
  %76 = load volatile i32, ptr %9, align 4, !tbaa !34
  %77 = icmp eq i32 %76, 0
  %78 = load volatile ptr, ptr %8, align 8, !tbaa !38
  br i1 %77, label %86, label %79

79:                                               ; preds = %75
  %80 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %80, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  call void @png_free(ptr noundef %78, ptr noundef %82) #10
  %83 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct.png_struct_def, ptr %83, i64 0, i32 17
  store ptr null, ptr %84, align 8, !tbaa !52
  %85 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_destroy_struct_2(ptr noundef %85, ptr noundef %6, ptr noundef %4) #10
  br label %98

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.png_struct_def, ptr %78, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !52
  %89 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %89, i64 0, i32 16, i32 3
  store ptr %88, ptr %90, align 8, !tbaa !56
  %91 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %91, i64 0, i32 18
  %93 = load i32, ptr %92, align 8, !tbaa !51
  %94 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %95 = getelementptr inbounds %struct.png_struct_def, ptr %94, i64 0, i32 16, i32 4
  store i32 %93, ptr %95, align 8, !tbaa !57
  %96 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_set_read_fn(ptr noundef %96, ptr noundef null, ptr noundef null) #10
  %97 = load volatile ptr, ptr %8, align 8, !tbaa !38
  br label %98

98:                                               ; preds = %7, %86, %79
  %99 = phi ptr [ null, %79 ], [ %97, %86 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  ret ptr %99
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noalias ptr @png_create_struct_2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @longjmp(ptr noundef, i32 noundef) #4

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_set_mem_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_user_version_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noalias ptr @png_zalloc(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare void @png_zfree(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_destroy_struct_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %82, label %6

6:                                                ; preds = %2
  tail call void @png_read_sig(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  br label %9

9:                                                ; preds = %29, %6
  %10 = tail call i32 @png_read_chunk_header(ptr noundef nonnull %0) #10
  %11 = load i32, ptr %7, align 8, !tbaa !58
  switch i32 %11, label %24 [
    i32 1229209940, label %12
    i32 1229472850, label %18
    i32 1229278788, label %19
  ]

12:                                               ; preds = %9
  %13 = load i32, ptr %8, align 4, !tbaa !59
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = or i32 %13, 8192
  store i32 %17, ptr %8, align 4, !tbaa !59
  br label %20

18:                                               ; preds = %9
  tail call void @png_handle_IHDR(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

19:                                               ; preds = %9
  tail call void @png_handle_IEND(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

20:                                               ; preds = %16, %12
  %21 = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef 1229209940) #10
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %8, align 4, !tbaa !59
  br i1 %22, label %49, label %33

24:                                               ; preds = %9
  %25 = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %11) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  tail call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  %28 = icmp eq i32 %11, 1347179589
  br i1 %28, label %30, label %29

29:                                               ; preds = %27, %18, %30, %65, %67, %69, %71, %73, %75, %77, %79, %81, %80, %78, %76, %74, %72, %70, %68, %66, %64, %48, %19
  br label %9

30:                                               ; preds = %27
  %31 = load i32, ptr %8, align 4, !tbaa !59
  %32 = or i32 %31, 2
  store i32 %32, ptr %8, align 4, !tbaa !59
  br label %29

33:                                               ; preds = %20
  %34 = or i32 %23, 4
  store i32 %34, ptr %8, align 4, !tbaa !59
  tail call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  %35 = load i32, ptr %8, align 4, !tbaa !59
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #12
  unreachable

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %41 = load i8, ptr %40, align 1, !tbaa !60
  %42 = icmp eq i8 %41, 3
  %43 = and i32 %35, 2
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %44, %42
  br i1 %45, label %46, label %82

46:                                               ; preds = %39
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  unreachable

47:                                               ; preds = %24
  switch i32 %11, label %81 [
    i32 1347179589, label %48
    i32 1649100612, label %64
    i32 1665684045, label %65
    i32 1732332865, label %66
    i32 1749635924, label %67
    i32 1866876531, label %68
    i32 1883455820, label %69
    i32 1933787468, label %70
    i32 1883789683, label %71
    i32 1933723988, label %72
    i32 1934772034, label %73
    i32 1766015824, label %74
    i32 1934642260, label %75
    i32 1950701684, label %76
    i32 1950960965, label %77
    i32 1951551059, label %78
    i32 2052348020, label %79
    i32 1767135348, label %80
  ]

48:                                               ; preds = %47
  tail call void @png_handle_PLTE(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

49:                                               ; preds = %20
  %50 = and i32 %23, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #12
  unreachable

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %55 = load i8, ptr %54, align 1, !tbaa !60
  %56 = icmp eq i8 %55, 3
  %57 = and i32 %23, 2
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %56
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  unreachable

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  store i32 %10, ptr %62, align 8, !tbaa !61
  %63 = or i32 %23, 4
  store i32 %63, ptr %8, align 4, !tbaa !59
  br label %82

64:                                               ; preds = %47
  tail call void @png_handle_bKGD(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

65:                                               ; preds = %47
  tail call void @png_handle_cHRM(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

66:                                               ; preds = %47
  tail call void @png_handle_gAMA(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

67:                                               ; preds = %47
  tail call void @png_handle_hIST(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

68:                                               ; preds = %47
  tail call void @png_handle_oFFs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

69:                                               ; preds = %47
  tail call void @png_handle_pCAL(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

70:                                               ; preds = %47
  tail call void @png_handle_sCAL(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

71:                                               ; preds = %47
  tail call void @png_handle_pHYs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

72:                                               ; preds = %47
  tail call void @png_handle_sBIT(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

73:                                               ; preds = %47
  tail call void @png_handle_sRGB(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

74:                                               ; preds = %47
  tail call void @png_handle_iCCP(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

75:                                               ; preds = %47
  tail call void @png_handle_sPLT(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

76:                                               ; preds = %47
  tail call void @png_handle_tEXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

77:                                               ; preds = %47
  tail call void @png_handle_tIME(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

78:                                               ; preds = %47
  tail call void @png_handle_tRNS(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

79:                                               ; preds = %47
  tail call void @png_handle_zTXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

80:                                               ; preds = %47
  tail call void @png_handle_iTXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

81:                                               ; preds = %47
  tail call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %10) #10
  br label %29

82:                                               ; preds = %39, %61, %2
  ret void
}

; Function Attrs: optsize
declare void @png_read_sig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_read_chunk_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_IHDR(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_IEND(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_unknown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_PLTE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_bKGD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_cHRM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_gAMA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_hIST(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_oFFs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_pCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_sCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_pHYs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_sBIT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_sRGB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_iCCP(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_sPLT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_tEXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_tIME(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_tRNS(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_zTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_handle_iTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_update_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @png_read_start_row(ptr noundef nonnull %0) #10
  tail call void @png_read_transform_info(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: optsize
declare void @png_read_start_row(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_read_transform_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_start_read_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @png_read_start_row(ptr noundef nonnull %0) #10
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_row(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.png_row_info_struct, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = icmp eq ptr %0, null
  br i1 %5, label %283, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @png_read_start_row(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %14 = load i32, ptr %13, align 8, !tbaa !63
  store i32 %14, ptr %4, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %16 = load i8, ptr %15, align 1, !tbaa !60
  %17 = getelementptr inbounds %struct.png_row_info_struct, ptr %4, i64 0, i32 2
  store i8 %16, ptr %17, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %19 = load i8, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.png_row_info_struct, ptr %4, i64 0, i32 3
  store i8 %19, ptr %20, align 1, !tbaa !68
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %22 = load i8, ptr %21, align 1, !tbaa !69
  %23 = getelementptr inbounds %struct.png_row_info_struct, ptr %4, i64 0, i32 4
  store i8 %22, ptr %23, align 2, !tbaa !70
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %25 = load i8, ptr %24, align 2, !tbaa !71
  %26 = getelementptr inbounds %struct.png_row_info_struct, ptr %4, i64 0, i32 5
  store i8 %25, ptr %26, align 1, !tbaa !72
  %27 = icmp ugt i8 %25, 7
  %28 = zext i32 %14 to i64
  br i1 %27, label %29, label %33

29:                                               ; preds = %12
  %30 = lshr i8 %25, 3
  %31 = zext nneg i8 %30 to i64
  %32 = mul nuw nsw i64 %31, %28
  br label %38

33:                                               ; preds = %12
  %34 = zext nneg i8 %25 to i64
  %35 = mul nuw nsw i64 %34, %28
  %36 = add nuw nsw i64 %35, 7
  %37 = lshr i64 %36, 3
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i64 [ %32, %29 ], [ %37, %33 ]
  %40 = getelementptr inbounds %struct.png_row_info_struct, ptr %4, i64 0, i32 1
  store i64 %39, ptr %40, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %44 = load i8, ptr %43, align 4, !tbaa !75
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %118, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %48 = load i32, ptr %47, align 4, !tbaa !76
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %118, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %53 = load i8, ptr %52, align 1, !tbaa !77
  switch i8 %53, label %114 [
    i8 0, label %54
    i8 1, label %61
    i8 2, label %72
    i8 3, label %82
    i8 4, label %93
    i8 5, label %103
  ]

54:                                               ; preds = %51
  %55 = and i32 %42, 7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %118, label %57

57:                                               ; preds = %54
  %58 = icmp eq ptr %2, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %60

60:                                               ; preds = %59, %57
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

61:                                               ; preds = %51
  %62 = and i32 %42, 7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %66 = load i32, ptr %65, align 8, !tbaa !78
  %67 = icmp ult i32 %66, 5
  br i1 %67, label %68, label %118

68:                                               ; preds = %64, %61
  %69 = icmp eq ptr %2, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %71

71:                                               ; preds = %70, %68
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

72:                                               ; preds = %51
  %73 = and i32 %42, 7
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %118, label %75

75:                                               ; preds = %72
  %76 = icmp eq ptr %2, null
  %77 = and i32 %42, 4
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %81

81:                                               ; preds = %80, %75
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

82:                                               ; preds = %51
  %83 = and i32 %42, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %87 = load i32, ptr %86, align 8, !tbaa !78
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %118

89:                                               ; preds = %85, %82
  %90 = icmp eq ptr %2, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %92

92:                                               ; preds = %91, %89
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

93:                                               ; preds = %51
  %94 = and i32 %42, 3
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %118, label %96

96:                                               ; preds = %93
  %97 = icmp eq ptr %2, null
  %98 = and i32 %42, 2
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %102

102:                                              ; preds = %101, %96
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

103:                                              ; preds = %51
  %104 = and i32 %42, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %108 = load i32, ptr %107, align 8, !tbaa !78
  %109 = icmp ult i32 %108, 2
  br i1 %109, label %110, label %118

110:                                              ; preds = %106, %103
  %111 = icmp eq ptr %2, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %110
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %113

113:                                              ; preds = %112, %110
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

114:                                              ; preds = %51
  %115 = and i32 %42, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #10
  br label %283

118:                                              ; preds = %54, %64, %72, %85, %93, %106, %114, %46, %38
  %119 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %120 = load i32, ptr %119, align 4, !tbaa !59
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  unreachable

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %126 = load ptr, ptr %125, align 8, !tbaa !79
  %127 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %128 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %126, ptr %128, align 8, !tbaa !56
  %129 = zext i32 %14 to i64
  br i1 %27, label %130, label %134

130:                                              ; preds = %124
  %131 = lshr i8 %25, 3
  %132 = zext nneg i8 %131 to i64
  %133 = mul nuw nsw i64 %132, %129
  br label %139

134:                                              ; preds = %124
  %135 = zext nneg i8 %25 to i64
  %136 = mul nuw nsw i64 %135, %129
  %137 = add nuw nsw i64 %136, 7
  %138 = lshr i64 %137, 3
  br label %139

139:                                              ; preds = %134, %130
  %140 = phi i64 [ %133, %130 ], [ %138, %134 ]
  %141 = trunc i64 %140 to i32
  %142 = add i32 %141, 1
  %143 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %142, ptr %143, align 8, !tbaa !57
  %144 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  %145 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %146 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %147 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %148 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  br label %149

149:                                              ; preds = %194, %139
  %150 = load i32, ptr %144, align 8, !tbaa !80
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %149
  %153 = load i32, ptr %145, align 8, !tbaa !61
  br label %154

154:                                              ; preds = %152, %157
  %155 = phi i32 [ %153, %152 ], [ %159, %157 ]
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #10
  %159 = tail call i32 @png_read_chunk_header(ptr noundef nonnull %0) #10
  store i32 %159, ptr %145, align 8, !tbaa !61
  %160 = load i32, ptr %146, align 8, !tbaa !58
  %161 = icmp eq i32 %160, 1229209940
  br i1 %161, label %154, label %162, !llvm.loop !81

162:                                              ; preds = %157
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #12
  unreachable

163:                                              ; preds = %154
  %164 = load i32, ptr %147, align 8, !tbaa !51
  store i32 %164, ptr %144, align 8, !tbaa !80
  %165 = load ptr, ptr %148, align 8, !tbaa !52
  store ptr %165, ptr %127, align 8, !tbaa !83
  %166 = icmp ugt i32 %164, %155
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 %155, ptr %144, align 8, !tbaa !80
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i32 [ %155, %167 ], [ %164, %163 ]
  %170 = zext i32 %169 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %165, i64 noundef %170) #10
  %171 = load i32, ptr %144, align 8, !tbaa !80
  %172 = load i32, ptr %145, align 8, !tbaa !61
  %173 = sub i32 %172, %171
  store i32 %173, ptr %145, align 8, !tbaa !61
  br label %174

174:                                              ; preds = %168, %149
  %175 = tail call i32 @inflate(ptr noundef nonnull %127, i32 noundef 1) #10
  switch i32 %175, label %189 [
    i32 1, label %176
    i32 0, label %194
  ]

176:                                              ; preds = %174
  %177 = load i32, ptr %143, align 8, !tbaa !57
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, ptr %144, align 8, !tbaa !80
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, ptr %145, align 8, !tbaa !61
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182, %179, %176
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #10
  br label %186

186:                                              ; preds = %185, %182
  %187 = load <2 x i32>, ptr %119, align 4, !tbaa !34
  %188 = or <2 x i32> %187, <i32 8, i32 32>
  store <2 x i32> %188, ptr %119, align 4, !tbaa !34
  br label %197

189:                                              ; preds = %174
  %190 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %191 = load ptr, ptr %190, align 8, !tbaa !84
  %192 = icmp eq ptr %191, null
  %193 = select i1 %192, ptr @.str.10, ptr %191
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %193) #12
  unreachable

194:                                              ; preds = %174
  %195 = load i32, ptr %143, align 8, !tbaa !57
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %149, !llvm.loop !85

197:                                              ; preds = %194, %186
  %198 = load ptr, ptr %125, align 8, !tbaa !79
  %199 = load i8, ptr %198, align 1, !tbaa !86
  %200 = zext i8 %199 to i32
  %201 = icmp eq i8 %199, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %197
  %203 = icmp ult i8 %199, 5
  br i1 %203, label %204, label %211

204:                                              ; preds = %202
  %205 = getelementptr inbounds i8, ptr %198, i64 1
  %206 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %207 = load ptr, ptr %206, align 8, !tbaa !87
  %208 = getelementptr inbounds i8, ptr %207, i64 1
  call void @png_read_filter_row(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %205, ptr noundef nonnull %208, i32 noundef %200) #10
  %209 = load ptr, ptr %125, align 8, !tbaa !79
  %210 = load i64, ptr %40, align 8, !tbaa !73
  br label %212

211:                                              ; preds = %202
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #12
  unreachable

212:                                              ; preds = %204, %197
  %213 = phi i64 [ %210, %204 ], [ %39, %197 ]
  %214 = phi ptr [ %209, %204 ], [ %198, %197 ]
  %215 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %216 = load ptr, ptr %215, align 8, !tbaa !87
  %217 = add i64 %213, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %216, ptr align 1 %214, i64 %217, i1 false)
  %218 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %219 = load i32, ptr %218, align 8, !tbaa !88
  %220 = and i32 %219, 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %212
  %223 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  %224 = load i8, ptr %223, align 4, !tbaa !89
  %225 = icmp eq i8 %224, 64
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load ptr, ptr %125, align 8, !tbaa !79
  %228 = getelementptr inbounds i8, ptr %227, i64 1
  call void @png_do_read_intrapixel(ptr noundef nonnull %4, ptr noundef nonnull %228) #10
  br label %229

229:                                              ; preds = %226, %222, %212
  %230 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %231 = load i32, ptr %230, align 4, !tbaa !76
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  call void @png_do_read_transformations(ptr noundef nonnull %0, ptr noundef nonnull %4) #10
  br label %234

234:                                              ; preds = %233, %229
  %235 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %236 = load i8, ptr %235, align 1, !tbaa !90
  %237 = icmp eq i8 %236, 0
  %238 = load i8, ptr %26, align 1, !tbaa !72
  br i1 %237, label %239, label %244

239:                                              ; preds = %234
  store i8 %238, ptr %235, align 1, !tbaa !90
  %240 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  %241 = load i8, ptr %240, align 2, !tbaa !91
  %242 = icmp ugt i8 %238, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  unreachable

244:                                              ; preds = %234
  %245 = icmp eq i8 %236, %238
  br i1 %245, label %247, label %246

246:                                              ; preds = %244
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #12
  unreachable

247:                                              ; preds = %244, %239
  %248 = load i8, ptr %43, align 4, !tbaa !75
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %268, label %250

250:                                              ; preds = %247
  %251 = load i32, ptr %230, align 4, !tbaa !76
  %252 = and i32 %251, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %268, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %256 = load i8, ptr %255, align 1, !tbaa !77
  %257 = icmp ult i8 %256, 6
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = zext nneg i8 %256 to i32
  %260 = load ptr, ptr %125, align 8, !tbaa !79
  %261 = getelementptr inbounds i8, ptr %260, i64 1
  call void @png_do_read_interlace(ptr noundef nonnull %4, ptr noundef nonnull %261, i32 noundef %259, i32 noundef %251) #10
  br label %262

262:                                              ; preds = %258, %254
  %263 = icmp eq ptr %2, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %262
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #10
  br label %265

265:                                              ; preds = %264, %262
  %266 = icmp eq ptr %1, null
  br i1 %266, label %274, label %267

267:                                              ; preds = %265
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #10
  br label %274

268:                                              ; preds = %250, %247
  %269 = icmp eq ptr %1, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %268
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -1) #10
  br label %271

271:                                              ; preds = %270, %268
  %272 = icmp eq ptr %2, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %271
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef -1) #10
  br label %274

274:                                              ; preds = %271, %273, %265, %267
  call void @png_read_finish_row(ptr noundef nonnull %0) #10
  %275 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 87
  %276 = load ptr, ptr %275, align 8, !tbaa !92
  %277 = icmp eq ptr %276, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = load i32, ptr %41, align 4, !tbaa !74
  %280 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %281 = load i8, ptr %280, align 1, !tbaa !77
  %282 = zext i8 %281 to i32
  call void %276(ptr noundef nonnull %0, i32 noundef %279, i32 noundef %282) #10
  br label %283

283:                                              ; preds = %274, %278, %3, %117, %113, %102, %92, %81, %71, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_combine_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_read_finish_row(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_crc_finish(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_crc_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_read_filter_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @png_do_read_intrapixel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_do_read_transformations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_do_read_interlace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_rows(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %20, %12 ], [ 0, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %1, %10 ]
  %15 = phi ptr [ %18, %12 ], [ %2, %10 ]
  %16 = getelementptr inbounds ptr, ptr %14, i64 1
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %15, i64 1
  %19 = load ptr, ptr %15, align 8, !tbaa !38
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %19) #9
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %42, label %12, !llvm.loop !93

22:                                               ; preds = %6
  br i1 %7, label %23, label %32

23:                                               ; preds = %22
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23, %25
  %26 = phi i32 [ %30, %25 ], [ 0, %23 ]
  %27 = phi ptr [ %29, %25 ], [ %1, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %28, ptr noundef null) #9
  %29 = getelementptr inbounds ptr, ptr %27, i64 1
  %30 = add nuw i32 %26, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %42, label %25, !llvm.loop !94

32:                                               ; preds = %22
  %33 = icmp ne i32 %3, 0
  %34 = and i1 %8, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %40, %35 ], [ 0, %32 ]
  %37 = phi ptr [ %39, %35 ], [ %2, %32 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef null, ptr noundef %38) #9
  %39 = getelementptr inbounds ptr, ptr %37, i64 1
  %40 = add nuw i32 %36, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %35, !llvm.loop !95

42:                                               ; preds = %35, %25, %12, %23, %10, %32, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_image(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #10
  tail call void @png_start_read_image(ptr noundef nonnull %0) #9
  br label %26

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %13 = load i8, ptr %12, align 4, !tbaa !75
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !76
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #10
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %22 = load i32, ptr %21, align 4, !tbaa !96
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %22, ptr %23, align 8, !tbaa !97
  br label %24

24:                                               ; preds = %20, %15, %11
  %25 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #10
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ %25, %24 ], [ %10, %9 ]
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %29 = load i32, ptr %28, align 4, !tbaa !96
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = icmp eq i32 %29, 0
  br label %33

33:                                               ; preds = %31, %42
  %34 = phi i32 [ 0, %31 ], [ %43, %42 ]
  br i1 %32, label %42, label %35

35:                                               ; preds = %33, %35
  %36 = phi ptr [ %39, %35 ], [ %1, %33 ]
  %37 = phi i32 [ %40, %35 ], [ 0, %33 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !38
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %38, ptr noundef null) #9
  %39 = getelementptr inbounds ptr, ptr %36, i64 1
  %40 = add nuw i32 %37, 1
  %41 = icmp eq i32 %40, %29
  br i1 %41, label %42, label %35, !llvm.loop !98

42:                                               ; preds = %35, %33
  %43 = add nuw nsw i32 %34, 1
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %45, label %33, !llvm.loop !99

45:                                               ; preds = %42, %26, %2
  ret void
}

; Function Attrs: optsize
declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %76, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #10
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %7 = load i8, ptr %6, align 1, !tbaa !60
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 49
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %13 = load i16, ptr %12, align 8, !tbaa !101
  %14 = zext i16 %13 to i32
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #10
  br label %17

17:                                               ; preds = %16, %9, %4
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  br label %20

20:                                               ; preds = %72, %17
  %21 = tail call i32 @png_read_chunk_header(ptr noundef nonnull %0) #10
  %22 = load i32, ptr %18, align 8, !tbaa !58
  switch i32 %22, label %25 [
    i32 1229472850, label %23
    i32 1229278788, label %24
  ]

23:                                               ; preds = %20
  tail call void @png_handle_IHDR(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

24:                                               ; preds = %20
  tail call void @png_handle_IEND(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

25:                                               ; preds = %20
  %26 = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %22) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 1229209940
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = icmp eq i32 %21, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load i32, ptr %19, align 4, !tbaa !59
  %34 = and i32 %33, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %30
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #10
  br label %37

37:                                               ; preds = %32, %36
  tail call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

38:                                               ; preds = %28
  tail call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  %39 = icmp eq i32 %22, 1347179589
  br i1 %39, label %40, label %72

40:                                               ; preds = %38
  %41 = load i32, ptr %19, align 4, !tbaa !59
  %42 = or i32 %41, 2
  store i32 %42, ptr %19, align 4, !tbaa !59
  br label %72

43:                                               ; preds = %25
  switch i32 %22, label %71 [
    i32 1229209940, label %44
    i32 1347179589, label %53
    i32 1649100612, label %54
    i32 1665684045, label %55
    i32 1732332865, label %56
    i32 1749635924, label %57
    i32 1866876531, label %58
    i32 1883455820, label %59
    i32 1933787468, label %60
    i32 1883789683, label %61
    i32 1933723988, label %62
    i32 1934772034, label %63
    i32 1766015824, label %64
    i32 1934642260, label %65
    i32 1950701684, label %66
    i32 1950960965, label %67
    i32 1951551059, label %68
    i32 2052348020, label %69
    i32 1767135348, label %70
  ]

44:                                               ; preds = %43
  %45 = icmp eq i32 %21, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load i32, ptr %19, align 4, !tbaa !59
  %48 = and i32 %47, 8192
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %44
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #10
  br label %51

51:                                               ; preds = %50, %46
  %52 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %21) #10
  br label %72

53:                                               ; preds = %43
  tail call void @png_handle_PLTE(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

54:                                               ; preds = %43
  tail call void @png_handle_bKGD(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

55:                                               ; preds = %43
  tail call void @png_handle_cHRM(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

56:                                               ; preds = %43
  tail call void @png_handle_gAMA(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

57:                                               ; preds = %43
  tail call void @png_handle_hIST(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

58:                                               ; preds = %43
  tail call void @png_handle_oFFs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

59:                                               ; preds = %43
  tail call void @png_handle_pCAL(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

60:                                               ; preds = %43
  tail call void @png_handle_sCAL(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

61:                                               ; preds = %43
  tail call void @png_handle_pHYs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

62:                                               ; preds = %43
  tail call void @png_handle_sBIT(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

63:                                               ; preds = %43
  tail call void @png_handle_sRGB(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

64:                                               ; preds = %43
  tail call void @png_handle_iCCP(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

65:                                               ; preds = %43
  tail call void @png_handle_sPLT(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

66:                                               ; preds = %43
  tail call void @png_handle_tEXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

67:                                               ; preds = %43
  tail call void @png_handle_tIME(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

68:                                               ; preds = %43
  tail call void @png_handle_tRNS(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

69:                                               ; preds = %43
  tail call void @png_handle_zTXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

70:                                               ; preds = %43
  tail call void @png_handle_iTXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

71:                                               ; preds = %43
  tail call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %21) #10
  br label %72

72:                                               ; preds = %37, %24, %51, %54, %56, %58, %60, %62, %64, %66, %68, %70, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %38, %40, %23
  %73 = load i32, ptr %19, align 4, !tbaa !59
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %20, label %76, !llvm.loop !102

76:                                               ; preds = %72, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_destroy_read_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %6, i64 0, i32 129
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %6, i64 0, i32 127
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !38
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ null, %8 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8, !tbaa !38
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ null, %16 ]
  tail call void @png_read_destroy(ptr noundef nonnull %6, ptr noundef %17, ptr noundef %22) #9
  %23 = icmp eq ptr %17, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @png_free_data(ptr noundef nonnull %6, ptr noundef nonnull %17, i32 noundef 16384, i32 noundef -1) #10
  tail call void @png_destroy_struct_2(ptr noundef nonnull %17, ptr noundef %10, ptr noundef %12) #10
  store ptr null, ptr %1, align 8, !tbaa !38
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @png_free_data(ptr noundef nonnull %6, ptr noundef nonnull %22, i32 noundef 16384, i32 noundef -1) #10
  tail call void @png_destroy_struct_2(ptr noundef nonnull %22, ptr noundef %10, ptr noundef %12) #10
  store ptr null, ptr %2, align 8, !tbaa !38
  br label %28

28:                                               ; preds = %25, %27
  tail call void @png_destroy_struct_2(ptr noundef nonnull %6, ptr noundef %10, ptr noundef %12) #10
  store ptr null, ptr %0, align 8, !tbaa !38
  br label %29

29:                                               ; preds = %3, %5, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_destroy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__jmp_buf_tag, align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @png_info_destroy(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @png_info_destroy(ptr noundef %0, ptr noundef nonnull %2) #10
  br label %10

10:                                               ; preds = %9, %7
  tail call void @png_destroy_gamma_table(ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  tail call void @png_free(ptr noundef %0, ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 130
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  tail call void @png_free(ptr noundef %0, ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 143
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  tail call void @png_free(ptr noundef %0, ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  tail call void @png_free(ptr noundef %0, ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  tail call void @png_free(ptr noundef %0, ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  tail call void @png_free(ptr noundef %0, ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 115
  %24 = load i32, ptr %23, align 8, !tbaa !110
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %29 = load ptr, ptr %28, align 8, !tbaa !111
  tail call void @png_zfree(ptr noundef nonnull %0, ptr noundef %29) #10
  %30 = load i32, ptr %23, align 8, !tbaa !110
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi i32 [ %30, %27 ], [ %24, %10 ]
  %33 = and i32 %32, -4097
  store i32 %33, ptr %23, align 8, !tbaa !110
  %34 = and i32 %32, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %38 = load ptr, ptr %37, align 8, !tbaa !112
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %38) #10
  %39 = load i32, ptr %23, align 8, !tbaa !110
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %39, %36 ], [ %33, %31 ]
  %42 = and i32 %41, -8193
  store i32 %42, ptr %23, align 8, !tbaa !110
  %43 = and i32 %41, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 106
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %47) #10
  %48 = load i32, ptr %23, align 8, !tbaa !110
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i32 [ %48, %45 ], [ %42, %40 ]
  %51 = and i32 %50, -9
  store i32 %51, ptr %23, align 8, !tbaa !110
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %53 = tail call i32 @inflateEnd(ptr noundef nonnull %52) #10
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %55 = load ptr, ptr %54, align 8, !tbaa !114
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %55) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !115
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 129
  %60 = load ptr, ptr %59, align 8, !tbaa !103
  %61 = getelementptr inbounds i8, ptr %0, i64 200
  %62 = load <2 x ptr>, ptr %56, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %61, i8 0, i64 1016, i1 false)
  store <2 x ptr> %62, ptr %56, align 8, !tbaa !38
  store ptr %58, ptr %57, align 8, !tbaa !115
  store ptr %60, ptr %59, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 16 dereferenceable(200) %4, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4)
  ret void
}

; Function Attrs: optsize
declare void @png_free_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_info_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_destroy_gamma_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_set_read_status_fn(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 87
  store ptr %1, ptr %5, align 8, !tbaa !92
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_png(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %126, label %9

9:                                                ; preds = %4
  tail call void @png_read_info(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !116
  %12 = icmp ugt i32 %11, 536870911
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #12
  unreachable

14:                                               ; preds = %9
  %15 = and i32 %2, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @png_set_scale_16(ptr noundef nonnull %0) #10
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i32 %2, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @png_set_strip_16(ptr noundef nonnull %0) #10
  br label %22

22:                                               ; preds = %21, %18
  %23 = and i32 %2, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @png_set_strip_alpha(ptr noundef nonnull %0) #10
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @png_set_packswap(ptr noundef nonnull %0) #10
  br label %30

30:                                               ; preds = %29, %26
  %31 = and i32 %2, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %35 = load i8, ptr %34, align 8, !tbaa !67
  %36 = icmp ult i8 %35, 8
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %39 = load i8, ptr %38, align 1, !tbaa !60
  %40 = icmp eq i8 %39, 3
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @png_get_valid(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 16) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37, %33
  tail call void @png_set_expand(ptr noundef nonnull %0) #10
  br label %45

45:                                               ; preds = %41, %44, %30
  %46 = and i32 %2, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @png_set_invert_mono(ptr noundef nonnull %0) #10
  br label %49

49:                                               ; preds = %48, %45
  %50 = and i32 %2, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @png_get_valid(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %56 = call i32 @png_get_sBIT(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #10
  %57 = load ptr, ptr %5, align 8, !tbaa !38
  call void @png_set_shift(ptr noundef nonnull %0, ptr noundef %57) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = and i32 %2, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @png_set_bgr(ptr noundef nonnull %0) #10
  br label %62

62:                                               ; preds = %61, %58
  %63 = and i32 %2, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @png_set_swap_alpha(ptr noundef nonnull %0) #10
  br label %66

66:                                               ; preds = %65, %62
  %67 = and i32 %2, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @png_set_swap(ptr noundef nonnull %0) #10
  br label %70

70:                                               ; preds = %69, %66
  %71 = and i32 %2, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void @png_set_invert_alpha(ptr noundef nonnull %0) #10
  br label %74

74:                                               ; preds = %73, %70
  %75 = and i32 %2, 8192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @png_set_gray_to_rgb(ptr noundef nonnull %0) #10
  br label %78

78:                                               ; preds = %77, %74
  %79 = and i32 %2, 16384
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @png_set_expand_16(ptr noundef nonnull %0) #10
  br label %82

82:                                               ; preds = %81, %78
  %83 = call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #10
  call void @png_read_update_info(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 64, i32 noundef 0) #10
  %84 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %85 = load ptr, ptr %84, align 8, !tbaa !119
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %121

87:                                               ; preds = %82
  %88 = load i32, ptr %10, align 4, !tbaa !116
  %89 = zext i32 %88 to i64
  %90 = shl nuw nsw i64 %89, 3
  %91 = call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %90) #10
  store ptr %91, ptr %84, align 8, !tbaa !119
  %92 = load i32, ptr %10, align 4, !tbaa !116
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %96 = load i32, ptr %95, align 4, !tbaa !120
  %97 = or i32 %96, 64
  store i32 %97, ptr %95, align 4, !tbaa !120
  br label %121

98:                                               ; preds = %87
  %99 = zext i32 %92 to i64
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ 0, %98 ], [ %104, %100 ]
  %102 = load ptr, ptr %84, align 8, !tbaa !119
  %103 = getelementptr inbounds ptr, ptr %102, i64 %101
  store ptr null, ptr %103, align 8, !tbaa !38
  %104 = add nuw nsw i64 %101, 1
  %105 = icmp eq i64 %104, %99
  br i1 %105, label %106, label %100, !llvm.loop !121

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %108 = load i32, ptr %107, align 4, !tbaa !120
  %109 = or i32 %108, 64
  store i32 %109, ptr %107, align 4, !tbaa !120
  %110 = icmp sgt i32 %92, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106, %111
  %112 = phi i64 [ %117, %111 ], [ 0, %106 ]
  %113 = call i64 @png_get_rowbytes(ptr noundef %0, ptr noundef nonnull %1) #10
  %114 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %113) #10
  %115 = load ptr, ptr %84, align 8, !tbaa !119
  %116 = getelementptr inbounds ptr, ptr %115, i64 %112
  store ptr %114, ptr %116, align 8, !tbaa !38
  %117 = add nuw nsw i64 %112, 1
  %118 = load i32, ptr %10, align 4, !tbaa !116
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %111, label %121, !llvm.loop !122

121:                                              ; preds = %111, %94, %106, %82
  %122 = load ptr, ptr %84, align 8, !tbaa !119
  call void @png_read_image(ptr noundef %0, ptr noundef %122) #9
  %123 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !123
  %125 = or i32 %124, 32768
  store i32 %125, ptr %123, align 8, !tbaa !123
  call void @png_read_end(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %126

126:                                              ; preds = %4, %121
  ret void
}

; Function Attrs: optsize
declare void @png_set_scale_16(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_strip_16(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_strip_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_packswap(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_expand(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_invert_mono(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @png_get_sBIT(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_shift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_bgr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_swap_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_invert_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_gray_to_rgb(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_expand_16(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize returns_twice }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !35, i64 1100}
!41 = !{!"png_struct_def", !36, i64 0, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !36, i64 280, !36, i64 281, !35, i64 284, !35, i64 288, !35, i64 292, !42, i64 296, !39, i64 408, !35, i64 416, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !43, i64 480, !35, i64 488, !35, i64 492, !35, i64 496, !39, i64 504, !39, i64 512, !39, i64 520, !39, i64 528, !39, i64 536, !39, i64 544, !43, i64 552, !35, i64 560, !35, i64 564, !39, i64 568, !44, i64 576, !35, i64 580, !44, i64 584, !36, i64 586, !36, i64 587, !36, i64 588, !36, i64 589, !36, i64 590, !36, i64 591, !36, i64 592, !36, i64 593, !36, i64 594, !36, i64 595, !36, i64 596, !36, i64 597, !36, i64 598, !36, i64 599, !36, i64 600, !44, i64 606, !36, i64 608, !35, i64 612, !45, i64 616, !45, i64 626, !39, i64 640, !35, i64 648, !35, i64 652, !35, i64 656, !35, i64 660, !35, i64 664, !39, i64 672, !39, i64 680, !39, i64 688, !39, i64 696, !39, i64 704, !39, i64 712, !46, i64 720, !46, i64 725, !39, i64 736, !45, i64 744, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !39, i64 816, !39, i64 824, !35, i64 832, !35, i64 836, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !35, i64 872, !35, i64 876, !39, i64 880, !39, i64 888, !39, i64 896, !36, i64 904, !36, i64 905, !39, i64 912, !39, i64 920, !39, i64 928, !39, i64 936, !39, i64 944, !36, i64 952, !35, i64 984, !39, i64 992, !39, i64 1000, !35, i64 1008, !39, i64 1016, !36, i64 1024, !36, i64 1025, !36, i64 1026, !44, i64 1028, !44, i64 1030, !35, i64 1032, !36, i64 1036, !39, i64 1040, !39, i64 1048, !39, i64 1056, !39, i64 1064, !39, i64 1072, !39, i64 1080, !39, i64 1088, !36, i64 1096, !35, i64 1100, !35, i64 1104, !35, i64 1108, !43, i64 1112, !47, i64 1120, !43, i64 1152, !39, i64 1160, !35, i64 1168, !39, i64 1176, !36, i64 1184}
!42 = !{!"z_stream_s", !39, i64 0, !35, i64 8, !43, i64 16, !39, i64 24, !35, i64 32, !43, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !35, i64 88, !43, i64 96, !43, i64 104}
!43 = !{!"long", !36, i64 0}
!44 = !{!"short", !36, i64 0}
!45 = !{!"png_color_16_struct", !36, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !44, i64 8}
!46 = !{!"png_color_8_struct", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4}
!47 = !{!"png_unknown_chunk_t", !36, i64 0, !39, i64 8, !43, i64 16, !36, i64 24}
!48 = !{!41, !35, i64 1104}
!49 = !{!41, !35, i64 1108}
!50 = !{!41, !43, i64 1112}
!51 = !{!41, !35, i64 416}
!52 = !{!41, !39, i64 408}
!53 = !{!41, !39, i64 360}
!54 = !{!41, !39, i64 368}
!55 = !{!41, !39, i64 376}
!56 = !{!41, !39, i64 320}
!57 = !{!41, !35, i64 328}
!58 = !{!41, !35, i64 496}
!59 = !{!41, !35, i64 284}
!60 = !{!41, !36, i64 591}
!61 = !{!41, !35, i64 560}
!62 = !{!41, !35, i64 288}
!63 = !{!41, !35, i64 488}
!64 = !{!65, !35, i64 0}
!65 = !{!"png_row_info_struct", !35, i64 0, !43, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!66 = !{!65, !36, i64 16}
!67 = !{!41, !36, i64 592}
!68 = !{!65, !36, i64 17}
!69 = !{!41, !36, i64 595}
!70 = !{!65, !36, i64 18}
!71 = !{!41, !36, i64 594}
!72 = !{!65, !36, i64 19}
!73 = !{!65, !43, i64 8}
!74 = !{!41, !35, i64 492}
!75 = !{!41, !36, i64 588}
!76 = !{!41, !35, i64 292}
!77 = !{!41, !36, i64 589}
!78 = !{!41, !35, i64 464}
!79 = !{!41, !39, i64 512}
!80 = !{!41, !35, i64 304}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!41, !39, i64 296}
!84 = !{!41, !39, i64 344}
!85 = distinct !{!85, !82}
!86 = !{!36, !36, i64 0}
!87 = !{!41, !39, i64 504}
!88 = !{!41, !35, i64 1032}
!89 = !{!41, !36, i64 1036}
!90 = !{!41, !36, i64 599}
!91 = !{!41, !36, i64 598}
!92 = !{!41, !39, i64 760}
!93 = distinct !{!93, !82}
!94 = distinct !{!94, !82}
!95 = distinct !{!95, !82}
!96 = !{!41, !35, i64 468}
!97 = !{!41, !35, i64 472}
!98 = distinct !{!98, !82}
!99 = distinct !{!99, !82}
!100 = !{!41, !35, i64 580}
!101 = !{!41, !44, i64 576}
!102 = distinct !{!102, !82}
!103 = !{!41, !39, i64 1056}
!104 = !{!41, !39, i64 1040}
!105 = !{!41, !39, i64 1064}
!106 = !{!41, !39, i64 1176}
!107 = !{!41, !39, i64 1160}
!108 = !{!41, !39, i64 880}
!109 = !{!41, !39, i64 888}
!110 = !{!41, !35, i64 984}
!111 = !{!41, !39, i64 568}
!112 = !{!41, !39, i64 736}
!113 = !{!41, !39, i64 896}
!114 = !{!41, !39, i64 808}
!115 = !{!41, !39, i64 224}
!116 = !{!117, !35, i64 4}
!117 = !{!"png_info_def", !35, i64 0, !35, i64 4, !35, i64 8, !43, i64 16, !39, i64 24, !44, i64 32, !44, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !35, i64 52, !36, i64 56, !35, i64 60, !35, i64 64, !39, i64 72, !118, i64 80, !46, i64 88, !39, i64 96, !45, i64 104, !45, i64 114, !35, i64 124, !35, i64 128, !36, i64 132, !35, i64 136, !35, i64 140, !36, i64 144, !39, i64 152, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !39, i64 192, !35, i64 200, !35, i64 204, !39, i64 208, !39, i64 216, !36, i64 224, !36, i64 225, !35, i64 228, !39, i64 232, !35, i64 240, !39, i64 248, !39, i64 256, !35, i64 264, !36, i64 268, !39, i64 272, !35, i64 280, !36, i64 284, !39, i64 288, !39, i64 296, !39, i64 304}
!118 = !{!"png_time_struct", !44, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!119 = !{!117, !39, i64 304}
!120 = !{!117, !35, i64 228}
!121 = distinct !{!121, !82}
!122 = distinct !{!122, !82}
!123 = !{!117, !35, i64 8}

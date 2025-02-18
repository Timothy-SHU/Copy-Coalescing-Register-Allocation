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

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @png_create_read_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @png_create_read_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @png_create_read_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  store volatile i32 0, ptr %9, align 4, !tbaa !34
  %10 = call noalias ptr @png_create_struct_2(i32 noundef 1, ptr noundef %5, ptr noundef %4) #9
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
  %23 = call ptr @png_set_longjmp_fn(ptr noundef %22, ptr noundef nonnull @longjmp, i64 noundef 200) #9
  %24 = call i32 @_setjmp(ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  call void @abort() #11
  unreachable

27:                                               ; preds = %13
  %28 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_set_mem_fn(ptr noundef %28, ptr noundef %4, ptr noundef %5, ptr noundef %6) #9
  %29 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_set_error_fn(ptr noundef %29, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  %30 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %31 = call i32 @png_user_version_check(ptr noundef %30, ptr noundef %0) #9
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
  %45 = call noalias ptr @png_malloc_warn(ptr noundef %40, i64 noundef %44) #9
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
  %66 = call i32 @inflateInit_(ptr noundef nonnull %65, ptr noundef nonnull @.str, i32 noundef 112) #9
  switch i32 %66, label %73 [
    i32 0, label %75
    i32 -4, label %67
    i32 -2, label %69
    i32 -6, label %71
  ]

67:                                               ; preds = %63
  %68 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %68, ptr noundef nonnull @.str.1) #9
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

69:                                               ; preds = %63
  %70 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %70, ptr noundef nonnull @.str.2) #9
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

71:                                               ; preds = %63
  %72 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %72, ptr noundef nonnull @.str.3) #9
  store volatile i32 1, ptr %9, align 4, !tbaa !34
  br label %75

73:                                               ; preds = %63
  %74 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_warning(ptr noundef %74, ptr noundef nonnull @.str.4) #9
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
  call void @png_free(ptr noundef %78, ptr noundef %82) #9
  %83 = load volatile ptr, ptr %8, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct.png_struct_def, ptr %83, i64 0, i32 17
  store ptr null, ptr %84, align 8, !tbaa !52
  %85 = load volatile ptr, ptr %8, align 8, !tbaa !38
  call void @png_destroy_struct_2(ptr noundef %85, ptr noundef %6, ptr noundef %4) #9
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
  call void @png_set_read_fn(ptr noundef %96, ptr noundef null, ptr noundef null) #9
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

declare noalias ptr @png_create_struct_2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #3

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #4

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @png_set_mem_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @png_user_version_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @png_zalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @png_zfree(ptr noundef, ptr noundef) #2

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_destroy_struct_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @png_read_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %92, label %6

6:                                                ; preds = %2
  tail call void @png_read_sig(ptr noundef %0, ptr noundef %1) #9
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  br label %11

11:                                               ; preds = %23, %6
  %12 = tail call i32 @png_read_chunk_header(ptr noundef %0) #9
  %13 = load i32, ptr %7, align 8, !tbaa !58
  %14 = icmp eq i32 %13, 1229209940
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, ptr %8, align 4, !tbaa !59
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = or i32 %16, 8192
  store i32 %20, ptr %8, align 4, !tbaa !59
  br label %21

21:                                               ; preds = %15, %19, %11
  switch i32 %13, label %25 [
    i32 1229472850, label %22
    i32 1229278788, label %24
  ]

22:                                               ; preds = %21
  tail call void @png_handle_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

23:                                               ; preds = %22, %37, %34, %75, %77, %79, %81, %83, %85, %87, %89, %91, %90, %88, %86, %84, %82, %80, %78, %76, %74, %54, %24
  br label %11

24:                                               ; preds = %21
  tail call void @png_handle_IEND(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

25:                                               ; preds = %21
  %26 = tail call i32 @png_chunk_unknown_handling(ptr noundef %0, i32 noundef %13) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  br i1 %14, label %29, label %32

29:                                               ; preds = %28
  %30 = load i32, ptr %9, align 4, !tbaa !59
  %31 = or i32 %30, 4
  store i32 %31, ptr %9, align 4, !tbaa !59
  br label %32

32:                                               ; preds = %29, %28
  tail call void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  %33 = icmp eq i32 %13, 1347179589
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, ptr %10, align 4, !tbaa !59
  %36 = or i32 %35, 2
  store i32 %36, ptr %10, align 4, !tbaa !59
  br label %23

37:                                               ; preds = %32
  br i1 %14, label %38, label %23

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %40 = load i32, ptr %39, align 4, !tbaa !59
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #11
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %46 = load i8, ptr %45, align 1, !tbaa !60
  %47 = icmp eq i8 %46, 3
  %48 = and i32 %40, 2
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %49, %47
  br i1 %50, label %51, label %92

51:                                               ; preds = %44
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  unreachable

52:                                               ; preds = %25
  %53 = icmp eq i32 %13, 1347179589
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  tail call void @png_handle_PLTE(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

55:                                               ; preds = %52
  br i1 %14, label %56, label %73

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %58 = load i32, ptr %57, align 4, !tbaa !59
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #11
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %64 = load i8, ptr %63, align 1, !tbaa !60
  %65 = icmp eq i8 %64, 3
  %66 = and i32 %58, 2
  %67 = icmp eq i32 %66, 0
  %68 = and i1 %67, %65
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  unreachable

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  store i32 %12, ptr %71, align 8, !tbaa !61
  %72 = or i32 %58, 4
  store i32 %72, ptr %57, align 4, !tbaa !59
  br label %92

73:                                               ; preds = %55
  switch i32 %13, label %91 [
    i32 1649100612, label %74
    i32 1665684045, label %75
    i32 1732332865, label %76
    i32 1749635924, label %77
    i32 1866876531, label %78
    i32 1883455820, label %79
    i32 1933787468, label %80
    i32 1883789683, label %81
    i32 1933723988, label %82
    i32 1934772034, label %83
    i32 1766015824, label %84
    i32 1934642260, label %85
    i32 1950701684, label %86
    i32 1950960965, label %87
    i32 1951551059, label %88
    i32 2052348020, label %89
    i32 1767135348, label %90
  ]

74:                                               ; preds = %73
  tail call void @png_handle_bKGD(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

75:                                               ; preds = %73
  tail call void @png_handle_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

76:                                               ; preds = %73
  tail call void @png_handle_gAMA(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

77:                                               ; preds = %73
  tail call void @png_handle_hIST(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

78:                                               ; preds = %73
  tail call void @png_handle_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

79:                                               ; preds = %73
  tail call void @png_handle_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

80:                                               ; preds = %73
  tail call void @png_handle_sCAL(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

81:                                               ; preds = %73
  tail call void @png_handle_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

82:                                               ; preds = %73
  tail call void @png_handle_sBIT(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

83:                                               ; preds = %73
  tail call void @png_handle_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

84:                                               ; preds = %73
  tail call void @png_handle_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

85:                                               ; preds = %73
  tail call void @png_handle_sPLT(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

86:                                               ; preds = %73
  tail call void @png_handle_tEXt(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

87:                                               ; preds = %73
  tail call void @png_handle_tIME(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

88:                                               ; preds = %73
  tail call void @png_handle_tRNS(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

89:                                               ; preds = %73
  tail call void @png_handle_zTXt(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

90:                                               ; preds = %73
  tail call void @png_handle_iTXt(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

91:                                               ; preds = %73
  tail call void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %12) #9
  br label %23

92:                                               ; preds = %70, %44, %2
  ret void
}

declare void @png_read_sig(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @png_read_chunk_header(ptr noundef) local_unnamed_addr #2

declare void @png_handle_IHDR(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_IEND(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_unknown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_handle_PLTE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_bKGD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_cHRM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_gAMA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_hIST(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_oFFs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_pCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_sCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_pHYs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_sBIT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_sRGB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_iCCP(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_sPLT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_tEXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_tIME(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_tRNS(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_zTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_handle_iTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_update_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @png_read_start_row(ptr noundef nonnull %0) #9
  tail call void @png_read_transform_info(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

declare void @png_read_start_row(ptr noundef) local_unnamed_addr #2

declare void @png_read_transform_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_start_read_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @png_read_start_row(ptr noundef nonnull %0) #9
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_row(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.png_row_info_struct, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %282, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @png_read_start_row(ptr noundef %0) #9
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
  tail call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %60

60:                                               ; preds = %59, %57
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

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
  tail call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %71

71:                                               ; preds = %70, %68
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

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
  tail call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %81

81:                                               ; preds = %80, %75
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

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
  tail call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %92

92:                                               ; preds = %91, %89
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

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
  tail call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %102

102:                                              ; preds = %101, %96
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

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
  tail call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %113

113:                                              ; preds = %112, %110
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

114:                                              ; preds = %51
  %115 = and i32 %42, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  tail call void @png_read_finish_row(ptr noundef %0) #9
  br label %282

118:                                              ; preds = %54, %64, %72, %85, %93, %106, %114, %46, %38
  %119 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %120 = load i32, ptr %119, align 4, !tbaa !59
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.7) #11
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

149:                                              ; preds = %195, %139
  %150 = load i32, ptr %144, align 8, !tbaa !80
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %149, %155
  %153 = load i32, ptr %145, align 8, !tbaa !61
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0) #9
  %157 = tail call i32 @png_read_chunk_header(ptr noundef %0) #9
  store i32 %157, ptr %145, align 8, !tbaa !61
  %158 = load i32, ptr %146, align 8, !tbaa !58
  %159 = icmp eq i32 %158, 1229209940
  br i1 %159, label %152, label %160, !llvm.loop !81

160:                                              ; preds = %155
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  unreachable

161:                                              ; preds = %152
  %162 = load i32, ptr %147, align 8, !tbaa !51
  store i32 %162, ptr %144, align 8, !tbaa !80
  %163 = load ptr, ptr %148, align 8, !tbaa !52
  store ptr %163, ptr %127, align 8, !tbaa !84
  %164 = icmp ugt i32 %162, %153
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 %153, ptr %144, align 8, !tbaa !80
  br label %166

166:                                              ; preds = %165, %161
  %167 = load i32, ptr %144, align 8, !tbaa !80
  %168 = zext i32 %167 to i64
  tail call void @png_crc_read(ptr noundef %0, ptr noundef %163, i64 noundef %168) #9
  %169 = load i32, ptr %144, align 8, !tbaa !80
  %170 = load i32, ptr %145, align 8, !tbaa !61
  %171 = sub i32 %170, %169
  store i32 %171, ptr %145, align 8, !tbaa !61
  br label %172

172:                                              ; preds = %166, %149
  %173 = tail call i32 @inflate(ptr noundef nonnull %127, i32 noundef 1) #9
  switch i32 %173, label %190 [
    i32 1, label %174
    i32 0, label %195
  ]

174:                                              ; preds = %172
  %175 = load i32, ptr %143, align 8, !tbaa !57
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load i32, ptr %144, align 8, !tbaa !80
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %182 = load i32, ptr %181, align 8, !tbaa !61
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180, %177, %174
  tail call void @png_benign_error(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  br label %185

185:                                              ; preds = %184, %180
  %186 = load i32, ptr %119, align 4, !tbaa !59
  %187 = or i32 %186, 8
  store i32 %187, ptr %119, align 4, !tbaa !59
  %188 = load i32, ptr %7, align 8, !tbaa !62
  %189 = or i32 %188, 32
  store i32 %189, ptr %7, align 8, !tbaa !62
  br label %198

190:                                              ; preds = %172
  %191 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !85
  %193 = icmp eq ptr %192, null
  %194 = select i1 %193, ptr @.str.10, ptr %192
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull %194) #11
  unreachable

195:                                              ; preds = %172
  %196 = load i32, ptr %143, align 8, !tbaa !57
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %149, !llvm.loop !86

198:                                              ; preds = %195, %185
  %199 = load ptr, ptr %125, align 8, !tbaa !79
  %200 = load i8, ptr %199, align 1, !tbaa !87
  %201 = zext i8 %200 to i32
  %202 = icmp eq i8 %200, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %198
  %204 = icmp ult i8 %200, 5
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = getelementptr inbounds i8, ptr %199, i64 1
  %207 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %208 = load ptr, ptr %207, align 8, !tbaa !88
  %209 = getelementptr inbounds i8, ptr %208, i64 1
  call void @png_read_filter_row(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %206, ptr noundef nonnull %209, i32 noundef %201) #9
  br label %211

210:                                              ; preds = %203
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #11
  unreachable

211:                                              ; preds = %205, %198
  %212 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %213 = load ptr, ptr %212, align 8, !tbaa !88
  %214 = load ptr, ptr %125, align 8, !tbaa !79
  %215 = load i64, ptr %40, align 8, !tbaa !73
  %216 = add i64 %215, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %214, i64 %216, i1 false)
  %217 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %218 = load i32, ptr %217, align 8, !tbaa !89
  %219 = and i32 %218, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  %223 = load i8, ptr %222, align 4, !tbaa !90
  %224 = icmp eq i8 %223, 64
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load ptr, ptr %125, align 8, !tbaa !79
  %227 = getelementptr inbounds i8, ptr %226, i64 1
  call void @png_do_read_intrapixel(ptr noundef nonnull %4, ptr noundef nonnull %227) #9
  br label %228

228:                                              ; preds = %225, %221, %211
  %229 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %230 = load i32, ptr %229, align 4, !tbaa !76
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @png_do_read_transformations(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %235 = load i8, ptr %234, align 1, !tbaa !91
  %236 = icmp eq i8 %235, 0
  %237 = load i8, ptr %26, align 1, !tbaa !72
  br i1 %236, label %238, label %243

238:                                              ; preds = %233
  store i8 %237, ptr %234, align 1, !tbaa !91
  %239 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  %240 = load i8, ptr %239, align 2, !tbaa !92
  %241 = icmp ugt i8 %237, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  unreachable

243:                                              ; preds = %233
  %244 = icmp eq i8 %235, %237
  br i1 %244, label %246, label %245

245:                                              ; preds = %243
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.13) #11
  unreachable

246:                                              ; preds = %243, %238
  %247 = load i8, ptr %43, align 4, !tbaa !75
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %267, label %249

249:                                              ; preds = %246
  %250 = load i32, ptr %229, align 4, !tbaa !76
  %251 = and i32 %250, 2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %267, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %255 = load i8, ptr %254, align 1, !tbaa !77
  %256 = icmp ult i8 %255, 6
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = zext nneg i8 %255 to i32
  %259 = load ptr, ptr %125, align 8, !tbaa !79
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  call void @png_do_read_interlace(ptr noundef nonnull %4, ptr noundef nonnull %260, i32 noundef %258, i32 noundef %250) #9
  br label %261

261:                                              ; preds = %257, %253
  %262 = icmp eq ptr %2, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %261
  call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %264

264:                                              ; preds = %263, %261
  %265 = icmp eq ptr %1, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %264
  call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #9
  br label %273

267:                                              ; preds = %249, %246
  %268 = icmp eq ptr %1, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %267
  call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -1) #9
  br label %270

270:                                              ; preds = %269, %267
  %271 = icmp eq ptr %2, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %270
  call void @png_combine_row(ptr noundef %0, ptr noundef nonnull %2, i32 noundef -1) #9
  br label %273

273:                                              ; preds = %270, %272, %264, %266
  call void @png_read_finish_row(ptr noundef %0) #9
  %274 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 87
  %275 = load ptr, ptr %274, align 8, !tbaa !93
  %276 = icmp eq ptr %275, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %273
  %278 = load i32, ptr %41, align 4, !tbaa !74
  %279 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %280 = load i8, ptr %279, align 1, !tbaa !77
  %281 = zext i8 %280 to i32
  call void %275(ptr noundef %0, i32 noundef %278, i32 noundef %281) #9
  br label %282

282:                                              ; preds = %273, %277, %3, %117, %113, %102, %92, %81, %71, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

declare void @png_combine_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_read_finish_row(ptr noundef) local_unnamed_addr #2

declare i32 @png_crc_finish(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_crc_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_read_filter_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @png_do_read_intrapixel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_do_read_transformations(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_do_read_interlace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %19)
  %20 = add nuw i32 %13, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %42, label %12, !llvm.loop !94

22:                                               ; preds = %6
  br i1 %7, label %23, label %32

23:                                               ; preds = %22
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23, %25
  %26 = phi i32 [ %30, %25 ], [ 0, %23 ]
  %27 = phi ptr [ %29, %25 ], [ %1, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %28, ptr noundef null)
  %29 = getelementptr inbounds ptr, ptr %27, i64 1
  %30 = add nuw i32 %26, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %42, label %25, !llvm.loop !95

32:                                               ; preds = %22
  %33 = icmp ne i32 %3, 0
  %34 = and i1 %8, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %40, %35 ], [ 0, %32 ]
  %37 = phi ptr [ %39, %35 ], [ %2, %32 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef null, ptr noundef %38)
  %39 = getelementptr inbounds ptr, ptr %37, i64 1
  %40 = add nuw i32 %36, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %35, !llvm.loop !96

42:                                               ; preds = %35, %25, %12, %23, %10, %32, %4
  ret void
}

; Function Attrs: nounwind uwtable
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
  %10 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #9
  tail call void @png_read_start_row(ptr noundef nonnull %0) #9
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #9
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %22 = load i32, ptr %21, align 4, !tbaa !97
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %22, ptr %23, align 8, !tbaa !98
  br label %24

24:                                               ; preds = %20, %15, %11
  %25 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #9
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ %25, %24 ], [ %10, %9 ]
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %29 = load i32, ptr %28, align 4, !tbaa !97
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
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %38, ptr noundef null)
  %39 = getelementptr inbounds ptr, ptr %36, i64 1
  %40 = add nuw i32 %37, 1
  %41 = icmp eq i32 %40, %29
  br i1 %41, label %42, label %35, !llvm.loop !99

42:                                               ; preds = %35, %33
  %43 = add nuw nsw i32 %34, 1
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %45, label %33, !llvm.loop !100

45:                                               ; preds = %42, %26, %2
  ret void
}

declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %78, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %7 = load i8, ptr %6, align 1, !tbaa !60
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 49
  %11 = load i32, ptr %10, align 4, !tbaa !101
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %13 = load i16, ptr %12, align 8, !tbaa !102
  %14 = zext i16 %13 to i32
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @png_benign_error(ptr noundef %0, ptr noundef nonnull @.str.15) #9
  br label %17

17:                                               ; preds = %16, %9, %4
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  br label %23

23:                                               ; preds = %74, %17
  %24 = tail call i32 @png_read_chunk_header(ptr noundef %0) #9
  %25 = load i32, ptr %18, align 8, !tbaa !58
  switch i32 %25, label %28 [
    i32 1229472850, label %26
    i32 1229278788, label %27
  ]

26:                                               ; preds = %23
  tail call void @png_handle_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

27:                                               ; preds = %23
  tail call void @png_handle_IEND(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

28:                                               ; preds = %23
  %29 = tail call i32 @png_chunk_unknown_handling(ptr noundef %0, i32 noundef %25) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = icmp eq i32 %25, 1229209940
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = icmp eq i32 %24, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load i32, ptr %19, align 4, !tbaa !59
  %37 = and i32 %36, 8192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %33
  tail call void @png_benign_error(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  br label %40

40:                                               ; preds = %35, %39, %31
  tail call void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  %41 = icmp eq i32 %25, 1347179589
  br i1 %41, label %42, label %74

42:                                               ; preds = %40
  %43 = load i32, ptr %20, align 4, !tbaa !59
  %44 = or i32 %43, 2
  store i32 %44, ptr %20, align 4, !tbaa !59
  br label %74

45:                                               ; preds = %28
  switch i32 %25, label %73 [
    i32 1229209940, label %46
    i32 1347179589, label %55
    i32 1649100612, label %56
    i32 1665684045, label %57
    i32 1732332865, label %58
    i32 1749635924, label %59
    i32 1866876531, label %60
    i32 1883455820, label %61
    i32 1933787468, label %62
    i32 1883789683, label %63
    i32 1933723988, label %64
    i32 1934772034, label %65
    i32 1766015824, label %66
    i32 1934642260, label %67
    i32 1950701684, label %68
    i32 1950960965, label %69
    i32 1951551059, label %70
    i32 2052348020, label %71
    i32 1767135348, label %72
  ]

46:                                               ; preds = %45
  %47 = icmp eq i32 %24, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load i32, ptr %21, align 4, !tbaa !59
  %50 = and i32 %49, 8192
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %46
  tail call void @png_benign_error(ptr noundef %0, ptr noundef nonnull @.str.16) #9
  br label %53

53:                                               ; preds = %52, %48
  %54 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %24) #9
  br label %74

55:                                               ; preds = %45
  tail call void @png_handle_PLTE(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

56:                                               ; preds = %45
  tail call void @png_handle_bKGD(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

57:                                               ; preds = %45
  tail call void @png_handle_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

58:                                               ; preds = %45
  tail call void @png_handle_gAMA(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

59:                                               ; preds = %45
  tail call void @png_handle_hIST(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

60:                                               ; preds = %45
  tail call void @png_handle_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

61:                                               ; preds = %45
  tail call void @png_handle_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

62:                                               ; preds = %45
  tail call void @png_handle_sCAL(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

63:                                               ; preds = %45
  tail call void @png_handle_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

64:                                               ; preds = %45
  tail call void @png_handle_sBIT(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

65:                                               ; preds = %45
  tail call void @png_handle_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

66:                                               ; preds = %45
  tail call void @png_handle_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

67:                                               ; preds = %45
  tail call void @png_handle_sPLT(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

68:                                               ; preds = %45
  tail call void @png_handle_tEXt(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

69:                                               ; preds = %45
  tail call void @png_handle_tIME(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

70:                                               ; preds = %45
  tail call void @png_handle_tRNS(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

71:                                               ; preds = %45
  tail call void @png_handle_zTXt(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

72:                                               ; preds = %45
  tail call void @png_handle_iTXt(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

73:                                               ; preds = %45
  tail call void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %24) #9
  br label %74

74:                                               ; preds = %27, %53, %56, %58, %60, %62, %64, %66, %68, %70, %72, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %40, %42, %26
  %75 = load i32, ptr %22, align 4, !tbaa !59
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %23, label %78, !llvm.loop !103

78:                                               ; preds = %74, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_read_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %8, i64 0, i32 129
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %8, i64 0, i32 127
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %1, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %17, %16 ], [ null, %10 ]
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %22, %21 ], [ null, %18 ]
  tail call void @png_read_destroy(ptr noundef nonnull %8, ptr noundef %19, ptr noundef %24)
  %25 = icmp eq ptr %19, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @png_free_data(ptr noundef nonnull %8, ptr noundef nonnull %19, i32 noundef 16384, i32 noundef -1) #9
  tail call void @png_destroy_struct_2(ptr noundef nonnull %19, ptr noundef %12, ptr noundef %14) #9
  store ptr null, ptr %1, align 8, !tbaa !38
  br label %27

27:                                               ; preds = %26, %23
  %28 = icmp eq ptr %24, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @png_free_data(ptr noundef nonnull %8, ptr noundef nonnull %24, i32 noundef 16384, i32 noundef -1) #9
  tail call void @png_destroy_struct_2(ptr noundef nonnull %24, ptr noundef %12, ptr noundef %14) #9
  store ptr null, ptr %2, align 8, !tbaa !38
  br label %30

30:                                               ; preds = %27, %29
  tail call void @png_destroy_struct_2(ptr noundef nonnull %8, ptr noundef %12, ptr noundef %14) #9
  store ptr null, ptr %0, align 8, !tbaa !38
  br label %31

31:                                               ; preds = %7, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_destroy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__jmp_buf_tag, align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @png_info_destroy(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @png_info_destroy(ptr noundef %0, ptr noundef nonnull %2) #9
  br label %10

10:                                               ; preds = %9, %7
  tail call void @png_destroy_gamma_table(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  tail call void @png_free(ptr noundef %0, ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 130
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  tail call void @png_free(ptr noundef %0, ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 143
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  tail call void @png_free(ptr noundef %0, ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  tail call void @png_free(ptr noundef %0, ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  %20 = load ptr, ptr %19, align 8, !tbaa !109
  tail call void @png_free(ptr noundef %0, ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  tail call void @png_free(ptr noundef %0, ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 115
  %24 = load i32, ptr %23, align 8, !tbaa !111
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %29 = load ptr, ptr %28, align 8, !tbaa !112
  tail call void @png_zfree(ptr noundef %0, ptr noundef %29) #9
  br label %30

30:                                               ; preds = %27, %10
  %31 = load i32, ptr %23, align 8, !tbaa !111
  %32 = and i32 %31, -4097
  store i32 %32, ptr %23, align 8, !tbaa !111
  %33 = and i32 %31, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  tail call void @png_free(ptr noundef %0, ptr noundef %37) #9
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, ptr %23, align 8, !tbaa !111
  %40 = and i32 %39, -8193
  store i32 %40, ptr %23, align 8, !tbaa !111
  %41 = and i32 %39, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 106
  %45 = load ptr, ptr %44, align 8, !tbaa !114
  tail call void @png_free(ptr noundef %0, ptr noundef %45) #9
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, ptr %23, align 8, !tbaa !111
  %48 = and i32 %47, -9
  store i32 %48, ptr %23, align 8, !tbaa !111
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %50 = tail call i32 @inflateEnd(ptr noundef nonnull %49) #9
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  tail call void @png_free(ptr noundef %0, ptr noundef %52) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !117
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !118
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 129
  %60 = load ptr, ptr %59, align 8, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %0, i8 0, i64 1216, i1 false)
  store ptr %54, ptr %53, align 8, !tbaa !116
  store ptr %56, ptr %55, align 8, !tbaa !117
  store ptr %58, ptr %57, align 8, !tbaa !118
  store ptr %60, ptr %59, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 16 dereferenceable(200) %4, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4)
  ret void
}

declare void @png_free_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @png_info_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_destroy_gamma_table(ptr noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_read_status_fn(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 87
  store ptr %1, ptr %5, align 8, !tbaa !93
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_png(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %123, label %9

9:                                                ; preds = %4
  tail call void @png_read_info(ptr noundef %0, ptr noundef %1)
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !119
  %12 = icmp ugt i32 %11, 536870911
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  unreachable

14:                                               ; preds = %9
  %15 = and i32 %2, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @png_set_scale_16(ptr noundef %0) #9
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i32 %2, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @png_set_strip_16(ptr noundef %0) #9
  br label %22

22:                                               ; preds = %21, %18
  %23 = and i32 %2, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @png_set_strip_alpha(ptr noundef %0) #9
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %2, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @png_set_packswap(ptr noundef %0) #9
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
  %42 = tail call i32 @png_get_valid(ptr noundef %0, ptr noundef %1, i32 noundef 16) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37, %33
  tail call void @png_set_expand(ptr noundef %0) #9
  br label %45

45:                                               ; preds = %41, %44, %30
  %46 = and i32 %2, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @png_set_invert_mono(ptr noundef %0) #9
  br label %49

49:                                               ; preds = %48, %45
  %50 = and i32 %2, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @png_get_valid(ptr noundef %0, ptr noundef %1, i32 noundef 2) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %56 = call i32 @png_get_sBIT(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #9
  %57 = load ptr, ptr %5, align 8, !tbaa !38
  call void @png_set_shift(ptr noundef %0, ptr noundef %57) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = and i32 %2, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @png_set_bgr(ptr noundef %0) #9
  br label %62

62:                                               ; preds = %61, %58
  %63 = and i32 %2, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @png_set_swap_alpha(ptr noundef %0) #9
  br label %66

66:                                               ; preds = %65, %62
  %67 = and i32 %2, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @png_set_swap(ptr noundef %0) #9
  br label %70

70:                                               ; preds = %69, %66
  %71 = and i32 %2, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void @png_set_invert_alpha(ptr noundef %0) #9
  br label %74

74:                                               ; preds = %73, %70
  %75 = and i32 %2, 8192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @png_set_gray_to_rgb(ptr noundef %0) #9
  br label %78

78:                                               ; preds = %77, %74
  %79 = and i32 %2, 16384
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @png_set_expand_16(ptr noundef %0) #9
  br label %82

82:                                               ; preds = %81, %78
  %83 = call i32 @png_set_interlace_handling(ptr noundef %0) #9
  call void @png_read_start_row(ptr noundef nonnull %0) #9
  call void @png_read_transform_info(ptr noundef nonnull %0, ptr noundef %1) #9
  call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 64, i32 noundef 0) #9
  %84 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %85 = load ptr, ptr %84, align 8, !tbaa !122
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %118

87:                                               ; preds = %82
  %88 = load i32, ptr %10, align 4, !tbaa !119
  %89 = zext i32 %88 to i64
  %90 = shl nuw nsw i64 %89, 3
  %91 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %90) #9
  store ptr %91, ptr %84, align 8, !tbaa !122
  %92 = load i32, ptr %10, align 4, !tbaa !119
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %87
  %95 = zext i32 %92 to i64
  br label %96

96:                                               ; preds = %94, %96
  %97 = phi i64 [ 0, %94 ], [ %100, %96 ]
  %98 = load ptr, ptr %84, align 8, !tbaa !122
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  store ptr null, ptr %99, align 8, !tbaa !38
  %100 = add nuw nsw i64 %97, 1
  %101 = icmp eq i64 %100, %95
  br i1 %101, label %102, label %96, !llvm.loop !123

102:                                              ; preds = %96, %87
  %103 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %104 = load i32, ptr %103, align 4, !tbaa !124
  %105 = or i32 %104, 64
  store i32 %105, ptr %103, align 4, !tbaa !124
  %106 = load i32, ptr %10, align 4, !tbaa !119
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102, %108
  %109 = phi i64 [ %114, %108 ], [ 0, %102 ]
  %110 = call i64 @png_get_rowbytes(ptr noundef %0, ptr noundef %1) #9
  %111 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %110) #9
  %112 = load ptr, ptr %84, align 8, !tbaa !122
  %113 = getelementptr inbounds ptr, ptr %112, i64 %109
  store ptr %111, ptr %113, align 8, !tbaa !38
  %114 = add nuw nsw i64 %109, 1
  %115 = load i32, ptr %10, align 4, !tbaa !119
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %108, label %118, !llvm.loop !125

118:                                              ; preds = %108, %102, %82
  %119 = load ptr, ptr %84, align 8, !tbaa !122
  call void @png_read_image(ptr noundef %0, ptr noundef %119)
  %120 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !126
  %122 = or i32 %121, 32768
  store i32 %122, ptr %120, align 8, !tbaa !126
  call void @png_read_end(ptr noundef %0, ptr noundef %1)
  br label %123

123:                                              ; preds = %4, %118
  ret void
}

declare void @png_set_scale_16(ptr noundef) local_unnamed_addr #2

declare void @png_set_strip_16(ptr noundef) local_unnamed_addr #2

declare void @png_set_strip_alpha(ptr noundef) local_unnamed_addr #2

declare void @png_set_packswap(ptr noundef) local_unnamed_addr #2

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_set_expand(ptr noundef) local_unnamed_addr #2

declare void @png_set_invert_mono(ptr noundef) local_unnamed_addr #2

declare i32 @png_get_sBIT(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_shift(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_bgr(ptr noundef) local_unnamed_addr #2

declare void @png_set_swap_alpha(ptr noundef) local_unnamed_addr #2

declare void @png_set_swap(ptr noundef) local_unnamed_addr #2

declare void @png_set_invert_alpha(ptr noundef) local_unnamed_addr #2

declare void @png_set_gray_to_rgb(ptr noundef) local_unnamed_addr #2

declare void @png_set_expand_16(ptr noundef) local_unnamed_addr #2

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind returns_twice }
attributes #11 = { noreturn nounwind }

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
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!41, !39, i64 296}
!85 = !{!41, !39, i64 344}
!86 = distinct !{!86, !82, !83}
!87 = !{!36, !36, i64 0}
!88 = !{!41, !39, i64 504}
!89 = !{!41, !35, i64 1032}
!90 = !{!41, !36, i64 1036}
!91 = !{!41, !36, i64 599}
!92 = !{!41, !36, i64 598}
!93 = !{!41, !39, i64 760}
!94 = distinct !{!94, !82, !83}
!95 = distinct !{!95, !82, !83}
!96 = distinct !{!96, !82, !83}
!97 = !{!41, !35, i64 468}
!98 = !{!41, !35, i64 472}
!99 = distinct !{!99, !82, !83}
!100 = distinct !{!100, !82, !83}
!101 = !{!41, !35, i64 580}
!102 = !{!41, !44, i64 576}
!103 = distinct !{!103, !82, !83}
!104 = !{!41, !39, i64 1056}
!105 = !{!41, !39, i64 1040}
!106 = !{!41, !39, i64 1064}
!107 = !{!41, !39, i64 1176}
!108 = !{!41, !39, i64 1160}
!109 = !{!41, !39, i64 880}
!110 = !{!41, !39, i64 888}
!111 = !{!41, !35, i64 984}
!112 = !{!41, !39, i64 568}
!113 = !{!41, !39, i64 736}
!114 = !{!41, !39, i64 896}
!115 = !{!41, !39, i64 808}
!116 = !{!41, !39, i64 208}
!117 = !{!41, !39, i64 216}
!118 = !{!41, !39, i64 224}
!119 = !{!120, !35, i64 4}
!120 = !{!"png_info_def", !35, i64 0, !35, i64 4, !35, i64 8, !43, i64 16, !39, i64 24, !44, i64 32, !44, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !35, i64 52, !36, i64 56, !35, i64 60, !35, i64 64, !39, i64 72, !121, i64 80, !46, i64 88, !39, i64 96, !45, i64 104, !45, i64 114, !35, i64 124, !35, i64 128, !36, i64 132, !35, i64 136, !35, i64 140, !36, i64 144, !39, i64 152, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !39, i64 192, !35, i64 200, !35, i64 204, !39, i64 208, !39, i64 216, !36, i64 224, !36, i64 225, !35, i64 228, !39, i64 232, !35, i64 240, !39, i64 248, !39, i64 256, !35, i64 264, !36, i64 268, !39, i64 272, !35, i64 280, !36, i64 284, !39, i64 288, !39, i64 296, !39, i64 304}
!121 = !{!"png_time_struct", !44, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!122 = !{!120, !39, i64 304}
!123 = distinct !{!123, !82, !83}
!124 = !{!120, !35, i64 228}
!125 = distinct !{!125, !82, !83}
!126 = !{!120, !35, i64 8}

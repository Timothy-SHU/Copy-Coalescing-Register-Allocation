; ModuleID = 'libpng/pngrtran.c'
source_filename = "libpng/pngrtran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_dsort_struct = type { ptr, i8, i8 }
%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [41 x i8] c"Can't discard critical data on CRC error\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Application must supply a known background gamma\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"png_set_background\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"output gamma out of expected range\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid alpha mode\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"conflicting calls to set alpha mode and background\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"invalid error action to rgb_to_gray\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"ignoring out of range rgb_to_gray coefficients\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"rgb to gray red coefficient\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"rgb to gray green coefficient\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"libpng does not support gamma+background+rgb_to_gray\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid background gamma type\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"NULL row buffer\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Uninitialized row\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"png_do_rgb_to_gray found nongray pixel\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"png_do_quantize returned rowbytes=0\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"png_do_encode_alpha: unexpected call\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"gamma value\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_crc_action(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  switch i32 %1, label %16 [
    i32 5, label %20
    i32 3, label %6
    i32 4, label %11
    i32 2, label %15
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -3073
  %10 = or disjoint i32 %9, 1024
  store i32 %10, ptr %7, align 8, !tbaa !34
  br label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = or i32 %13, 3072
  store i32 %14, ptr %12, align 8, !tbaa !34
  br label %20

15:                                               ; preds = %5
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str) #11
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = and i32 %18, -3073
  store i32 %19, ptr %17, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %16, %11, %6, %5
  switch i32 %2, label %35 [
    i32 5, label %39
    i32 3, label %21
    i32 4, label %26
    i32 1, label %30
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !34
  %24 = and i32 %23, -769
  %25 = or disjoint i32 %24, 256
  store i32 %25, ptr %22, align 8, !tbaa !34
  br label %39

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = or i32 %28, 768
  store i32 %29, ptr %27, align 8, !tbaa !34
  br label %39

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %32 = load i32, ptr %31, align 8, !tbaa !34
  %33 = and i32 %32, -769
  %34 = or disjoint i32 %33, 512
  store i32 %34, ptr %31, align 8, !tbaa !34
  br label %39

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !34
  %38 = and i32 %37, -769
  store i32 %38, ptr %36, align 8, !tbaa !34
  br label %39

39:                                               ; preds = %3, %35, %30, %26, %21, %20
  ret void
}

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_background_fixed(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #11
  br label %27

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = and i32 %12, -8650881
  %14 = or disjoint i32 %13, 262272
  store i32 %14, ptr %11, align 4, !tbaa !46
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = and i32 %16, -8193
  store i32 %17, ptr %15, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %18, ptr noundef nonnull align 2 dereferenceable(10) %1, i64 10, i1 false)
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  store i32 %4, ptr %19, align 4, !tbaa !47
  %20 = trunc i32 %2 to i8
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  store i8 %20, ptr %21, align 8, !tbaa !48
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = or i32 %13, 262528
  store i32 %24, ptr %11, align 4, !tbaa !46
  br label %27

25:                                               ; preds = %10
  %26 = and i32 %14, -8388865
  store i32 %26, ptr %11, align 4, !tbaa !46
  br label %27

27:                                               ; preds = %5, %9, %25, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @png_set_background(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @png_fixed(ptr noundef %0, double noundef %4, ptr noundef nonnull @.str.2) #11
  %7 = icmp eq ptr %0, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #11
  br label %28

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = and i32 %13, -8650881
  %15 = or disjoint i32 %14, 262272
  store i32 %15, ptr %12, align 4, !tbaa !46
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = and i32 %17, -8193
  store i32 %18, ptr %16, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %19, ptr noundef nonnull align 2 dereferenceable(10) %1, i64 10, i1 false)
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  store i32 %6, ptr %20, align 4, !tbaa !47
  %21 = trunc i32 %2 to i8
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  store i8 %21, ptr %22, align 8, !tbaa !48
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %11
  %25 = or i32 %14, 262528
  store i32 %25, ptr %12, align 4, !tbaa !46
  br label %28

26:                                               ; preds = %11
  %27 = and i32 %15, -8388865
  store i32 %27, ptr %12, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %5, %10, %24, %26
  ret void
}

declare i32 @png_fixed(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_scale_16(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 67108864
  store i32 %6, ptr %4, align 4, !tbaa !46
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_strip_16(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 1024
  store i32 %6, ptr %4, align 4, !tbaa !46
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_strip_alpha(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 262144
  store i32 %6, ptr %4, align 4, !tbaa !46
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_alpha_mode_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %3
  switch i32 %2, label %11 [
    i32 -1, label %6
    i32 -100000, label %6
    i32 -2, label %10
    i32 -50000, label %10
  ]

6:                                                ; preds = %5, %5
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = or i32 %8, 4096
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %11

10:                                               ; preds = %5, %5
  br label %11

11:                                               ; preds = %5, %6, %10
  %12 = phi i32 [ 220000, %6 ], [ 151724, %10 ], [ %2, %5 ]
  %13 = add i32 %12, -300001
  %14 = icmp ult i32 %13, -230001
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  unreachable

16:                                               ; preds = %11
  %17 = tail call i32 @png_reciprocal(i32 noundef %12) #11
  switch i32 %1, label %46 [
    i32 0, label %18
    i32 1, label %25
    i32 2, label %32
    i32 3, label %39
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = and i32 %20, -8388609
  store i32 %21, ptr %19, align 4, !tbaa !46
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !34
  %24 = and i32 %23, -8193
  store i32 %24, ptr %22, align 8, !tbaa !34
  br label %47

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = and i32 %27, -8388609
  store i32 %28, ptr %26, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !34
  %31 = and i32 %30, -8193
  store i32 %31, ptr %29, align 8, !tbaa !34
  br label %47

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = and i32 %34, -8388609
  store i32 %35, ptr %33, align 4, !tbaa !46
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !34
  %38 = or i32 %37, 8192
  store i32 %38, ptr %36, align 8, !tbaa !34
  br label %47

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %41 = load i32, ptr %40, align 4, !tbaa !46
  %42 = or i32 %41, 8388608
  store i32 %42, ptr %40, align 4, !tbaa !46
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %44 = load i32, ptr %43, align 8, !tbaa !34
  %45 = and i32 %44, -8193
  store i32 %45, ptr %43, align 8, !tbaa !34
  br label %47

46:                                               ; preds = %16
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  unreachable

47:                                               ; preds = %39, %32, %25, %18
  %48 = phi i1 [ false, %39 ], [ false, %32 ], [ false, %25 ], [ true, %18 ]
  %49 = phi i32 [ %12, %39 ], [ %12, %32 ], [ 100000, %25 ], [ %12, %18 ]
  %50 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %51 = load i32, ptr %50, align 4, !tbaa !49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 %17, ptr %50, align 4, !tbaa !49
  br label %54

54:                                               ; preds = %53, %47
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  store i32 %49, ptr %55, align 8, !tbaa !50
  br i1 %48, label %69, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %57, i8 0, i64 10, i1 false)
  %58 = load i32, ptr %50, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  store i32 %58, ptr %59, align 4, !tbaa !47
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  store i8 2, ptr %60, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %62 = load i32, ptr %61, align 4, !tbaa !46
  %63 = and i32 %62, -257
  store i32 %63, ptr %61, align 4, !tbaa !46
  %64 = and i32 %62, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #12
  unreachable

67:                                               ; preds = %56
  %68 = or disjoint i32 %63, 128
  store i32 %68, ptr %61, align 4, !tbaa !46
  br label %69

69:                                               ; preds = %67, %54
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %71 = load i32, ptr %70, align 8, !tbaa !34
  %72 = or i32 %71, 16384
  store i32 %72, ptr %70, align 8, !tbaa !34
  br label %73

73:                                               ; preds = %3, %69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @png_reciprocal(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @png_set_alpha_mode(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = fcmp ogt double %2, 0.000000e+00
  %5 = fcmp olt double %2, 1.280000e+02
  %6 = and i1 %4, %5
  %7 = fmul double %2, 1.000000e+05
  %8 = select i1 %6, double %7, double %2
  %9 = fadd double %8, 5.000000e-01
  %10 = tail call double @llvm.floor.f64(double %9)
  %11 = fcmp ogt double %10, 0x41DFFFFFFFC00000
  %12 = fcmp olt double %10, 0xC1DFFFFFFFC00000
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  unreachable

15:                                               ; preds = %3
  %16 = fptosi double %10 to i32
  tail call void @png_set_alpha_mode_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %16)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_quantize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.png_color_struct, align 1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %530, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = or i32 %11, 64
  store i32 %12, ptr %10, align 4, !tbaa !46
  %13 = icmp ne i32 %5, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = zext i32 %2 to i64
  %16 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %15) #11
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  store ptr %16, ptr %17, align 8, !tbaa !51
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = zext nneg i32 %2 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %26, %21 ]
  %23 = trunc i64 %22 to i8
  %24 = load ptr, ptr %17, align 8, !tbaa !51
  %25 = getelementptr inbounds i8, ptr %24, i64 %22
  store i8 %23, ptr %25, align 1, !tbaa !52
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %20
  br i1 %27, label %28, label %21, !llvm.loop !53

28:                                               ; preds = %21, %14, %9
  %29 = icmp sgt i32 %2, %3
  br i1 %29, label %30, label %439

30:                                               ; preds = %28
  %31 = icmp eq ptr %4, null
  %32 = zext i32 %2 to i64
  %33 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %32) #11
  br i1 %31, label %224, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 131
  store ptr %33, ptr %35, align 8, !tbaa !56
  %36 = icmp sgt i32 %2, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = zext nneg i32 %2 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %44, %39 ]
  %41 = trunc i64 %40 to i8
  %42 = load ptr, ptr %35, align 8, !tbaa !56
  %43 = getelementptr inbounds i8, ptr %42, i64 %40
  store i8 %41, ptr %43, align 1, !tbaa !52
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, %38
  br i1 %45, label %46, label %39, !llvm.loop !57

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46, %79
  %48 = phi i32 [ %50, %79 ], [ %2, %46 ]
  %49 = phi i32 [ %51, %79 ], [ %2, %46 ]
  %50 = add i32 %48, -1
  %51 = add nsw i32 %49, -1
  %52 = icmp sgt i32 %49, %3
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  %54 = icmp sgt i32 %49, 1
  br i1 %54, label %55, label %79

55:                                               ; preds = %53
  %56 = zext i32 %50 to i64
  br label %57

57:                                               ; preds = %55, %76
  %58 = phi i64 [ 0, %55 ], [ %66, %76 ]
  %59 = phi i32 [ 1, %55 ], [ %77, %76 ]
  %60 = load ptr, ptr %35, align 8, !tbaa !56
  %61 = getelementptr inbounds i8, ptr %60, i64 %58
  %62 = load i8, ptr %61, align 1, !tbaa !52
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i16, ptr %4, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !58
  %66 = add nuw nsw i64 %58, 1
  %67 = getelementptr inbounds i8, ptr %60, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !52
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i16, ptr %4, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !58
  %72 = icmp ult i16 %65, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  store i8 %68, ptr %61, align 1, !tbaa !52
  %74 = load ptr, ptr %35, align 8, !tbaa !56
  %75 = getelementptr inbounds i8, ptr %74, i64 %66
  store i8 %62, ptr %75, align 1, !tbaa !52
  br label %76

76:                                               ; preds = %57, %73
  %77 = phi i32 [ 0, %73 ], [ %59, %57 ]
  %78 = icmp eq i64 %66, %56
  br i1 %78, label %79, label %57, !llvm.loop !59

79:                                               ; preds = %76, %53
  %80 = phi i32 [ 1, %53 ], [ %77, %76 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %47, label %82

82:                                               ; preds = %79, %47
  %83 = icmp sgt i32 %3, 0
  br i1 %13, label %84, label %88

84:                                               ; preds = %82
  br i1 %83, label %85, label %222

85:                                               ; preds = %84
  %86 = zext nneg i32 %3 to i64
  %87 = trunc i32 %3 to i8
  br label %93

88:                                               ; preds = %82
  br i1 %83, label %89, label %117

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %91 = zext nneg i32 %3 to i64
  %92 = trunc i32 %3 to i8
  br label %126

93:                                               ; preds = %85, %113
  %94 = phi i64 [ 0, %85 ], [ %115, %113 ]
  %95 = phi i32 [ %2, %85 ], [ %114, %113 ]
  %96 = load ptr, ptr %35, align 8, !tbaa !56
  %97 = getelementptr inbounds i8, ptr %96, i64 %94
  %98 = load i8, ptr %97, align 1, !tbaa !52
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %99, %3
  br i1 %100, label %113, label %101

101:                                              ; preds = %93
  %102 = sext i32 %95 to i64
  br label %103

103:                                              ; preds = %101, %103
  %104 = phi i64 [ %102, %101 ], [ %105, %103 ]
  %105 = add i64 %104, -1
  %106 = getelementptr inbounds i8, ptr %96, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !52
  %108 = icmp ult i8 %107, %87
  br i1 %108, label %109, label %103, !llvm.loop !60

109:                                              ; preds = %103
  %110 = trunc i64 %105 to i32
  %111 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %94
  %112 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %111, ptr noundef nonnull align 1 dereferenceable(3) %112, i64 3, i1 false), !tbaa.struct !61
  br label %113

113:                                              ; preds = %93, %109
  %114 = phi i32 [ %110, %109 ], [ %95, %93 ]
  %115 = add nuw nsw i64 %94, 1
  %116 = icmp eq i64 %115, %86
  br i1 %116, label %222, label %93, !llvm.loop !62

117:                                              ; preds = %152, %88
  %118 = icmp sgt i32 %2, 0
  br i1 %118, label %119, label %222

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %121 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 0, i32 1
  %122 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 0, i32 2
  %123 = icmp sgt i32 %3, 1
  %124 = zext nneg i32 %2 to i64
  %125 = zext nneg i32 %3 to i64
  br label %156

126:                                              ; preds = %89, %152
  %127 = phi i64 [ 0, %89 ], [ %154, %152 ]
  %128 = phi i32 [ %2, %89 ], [ %153, %152 ]
  %129 = load ptr, ptr %35, align 8, !tbaa !56
  %130 = getelementptr inbounds i8, ptr %129, i64 %127
  %131 = load i8, ptr %130, align 1, !tbaa !52
  %132 = zext i8 %131 to i32
  %133 = icmp slt i32 %132, %3
  br i1 %133, label %152, label %134

134:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7)
  %135 = sext i32 %128 to i64
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i64 [ %138, %136 ], [ %135, %134 ]
  %138 = add i64 %137, -1
  %139 = getelementptr inbounds i8, ptr %129, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !52
  %141 = icmp ult i8 %140, %92
  br i1 %141, label %142, label %136, !llvm.loop !63

142:                                              ; preds = %136
  %143 = trunc i64 %138 to i32
  %144 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) %144, i64 3, i1 false), !tbaa.struct !61
  %145 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %144, ptr noundef nonnull align 1 dereferenceable(3) %145, i64 3, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %145, ptr noundef nonnull align 1 dereferenceable(3) %7, i64 3, i1 false), !tbaa.struct !61
  %146 = trunc i64 %127 to i8
  %147 = load ptr, ptr %90, align 8, !tbaa !51
  %148 = getelementptr inbounds i8, ptr %147, i64 %138
  store i8 %146, ptr %148, align 1, !tbaa !52
  %149 = trunc i64 %138 to i8
  %150 = load ptr, ptr %90, align 8, !tbaa !51
  %151 = getelementptr inbounds i8, ptr %150, i64 %127
  store i8 %149, ptr %151, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7)
  br label %152

152:                                              ; preds = %126, %142
  %153 = phi i32 [ %143, %142 ], [ %128, %126 ]
  %154 = add nuw nsw i64 %127, 1
  %155 = icmp eq i64 %154, %91
  br i1 %155, label %117, label %126, !llvm.loop !64

156:                                              ; preds = %119, %219
  %157 = phi i64 [ 0, %119 ], [ %220, %219 ]
  %158 = load ptr, ptr %120, align 8, !tbaa !51
  %159 = getelementptr inbounds i8, ptr %158, i64 %157
  %160 = load i8, ptr %159, align 1, !tbaa !52
  %161 = zext i8 %160 to i32
  %162 = icmp slt i32 %161, %3
  br i1 %162, label %219, label %163

163:                                              ; preds = %156
  %164 = zext i8 %160 to i64
  %165 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !65
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %164, i32 1
  %169 = load i8, ptr %168, align 1, !tbaa !67
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %164, i32 2
  %172 = load i8, ptr %171, align 1, !tbaa !68
  %173 = zext i8 %172 to i32
  br i1 %123, label %174, label %216

174:                                              ; preds = %163
  %175 = load i8, ptr %121, align 1, !tbaa !67
  %176 = zext i8 %175 to i32
  %177 = sub nsw i32 %170, %176
  %178 = tail call i32 @llvm.abs.i32(i32 %177, i1 true)
  %179 = load i8, ptr %1, align 1, !tbaa !65
  %180 = zext i8 %179 to i32
  %181 = sub nsw i32 %167, %180
  %182 = tail call i32 @llvm.abs.i32(i32 %181, i1 true)
  %183 = add nuw nsw i32 %178, %182
  %184 = load i8, ptr %122, align 1, !tbaa !68
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %173, %185
  %187 = tail call i32 @llvm.abs.i32(i32 %186, i1 true)
  %188 = add nuw nsw i32 %183, %187
  br label %189

189:                                              ; preds = %174, %189
  %190 = phi i64 [ 1, %174 ], [ %214, %189 ]
  %191 = phi i32 [ %188, %174 ], [ %213, %189 ]
  %192 = phi i32 [ 0, %174 ], [ %212, %189 ]
  %193 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %190
  %194 = load i8, ptr %193, align 1, !tbaa !65
  %195 = zext i8 %194 to i32
  %196 = sub nsw i32 %167, %195
  %197 = tail call i32 @llvm.abs.i32(i32 %196, i1 true)
  %198 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %190, i32 1
  %199 = load i8, ptr %198, align 1, !tbaa !67
  %200 = zext i8 %199 to i32
  %201 = sub nsw i32 %170, %200
  %202 = tail call i32 @llvm.abs.i32(i32 %201, i1 true)
  %203 = add nuw nsw i32 %202, %197
  %204 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %190, i32 2
  %205 = load i8, ptr %204, align 1, !tbaa !68
  %206 = zext i8 %205 to i32
  %207 = sub nsw i32 %173, %206
  %208 = tail call i32 @llvm.abs.i32(i32 %207, i1 true)
  %209 = add nuw nsw i32 %203, %208
  %210 = icmp slt i32 %209, %191
  %211 = trunc i64 %190 to i32
  %212 = select i1 %210, i32 %211, i32 %192
  %213 = tail call i32 @llvm.smin.i32(i32 %209, i32 %191)
  %214 = add nuw nsw i64 %190, 1
  %215 = icmp eq i64 %214, %125
  br i1 %215, label %216, label %189, !llvm.loop !69

216:                                              ; preds = %189, %163
  %217 = phi i32 [ 0, %163 ], [ %212, %189 ]
  %218 = trunc i32 %217 to i8
  store i8 %218, ptr %159, align 1, !tbaa !52
  br label %219

219:                                              ; preds = %156, %216
  %220 = add nuw nsw i64 %157, 1
  %221 = icmp eq i64 %220, %124
  br i1 %221, label %222, label %156, !llvm.loop !70

222:                                              ; preds = %219, %113, %84, %117
  %223 = load ptr, ptr %35, align 8, !tbaa !56
  tail call void @png_free(ptr noundef %0, ptr noundef %223) #11
  store ptr null, ptr %35, align 8, !tbaa !56
  br label %439

224:                                              ; preds = %30
  %225 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 132
  store ptr %33, ptr %225, align 8, !tbaa !71
  %226 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %32) #11
  %227 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 133
  store ptr %226, ptr %227, align 8, !tbaa !72
  %228 = icmp sgt i32 %2, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = zext nneg i32 %2 to i64
  br label %231

231:                                              ; preds = %229, %231
  %232 = phi i64 [ 0, %229 ], [ %238, %231 ]
  %233 = trunc i64 %232 to i8
  %234 = load ptr, ptr %225, align 8, !tbaa !71
  %235 = getelementptr inbounds i8, ptr %234, i64 %232
  store i8 %233, ptr %235, align 1, !tbaa !52
  %236 = load ptr, ptr %227, align 8, !tbaa !72
  %237 = getelementptr inbounds i8, ptr %236, i64 %232
  store i8 %233, ptr %237, align 1, !tbaa !52
  %238 = add nuw nsw i64 %232, 1
  %239 = icmp eq i64 %238, %230
  br i1 %239, label %240, label %231, !llvm.loop !73

240:                                              ; preds = %231, %224
  %241 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef 6152) #11
  %242 = icmp sgt i32 %2, %3
  br i1 %242, label %243, label %436

243:                                              ; preds = %240
  %244 = icmp slt i32 %2, 1
  %245 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %246 = or i1 %13, %244
  %247 = zext i32 %2 to i64
  br label %248

248:                                              ; preds = %243, %432
  %249 = phi i64 [ 97, %243 ], [ %435, %432 ]
  %250 = phi i32 [ 96, %243 ], [ %433, %432 ]
  %251 = phi i32 [ %2, %243 ], [ %417, %432 ]
  %252 = phi ptr [ null, %243 ], [ %429, %432 ]
  %253 = tail call i32 @llvm.smax.i32(i32 %251, i32 1)
  %254 = add nsw i32 %253, -1
  %255 = zext nneg i32 %254 to i64
  br label %256

256:                                              ; preds = %248, %311
  %257 = phi i64 [ 0, %248 ], [ %262, %311 ]
  %258 = phi i64 [ 1, %248 ], [ %313, %311 ]
  %259 = phi ptr [ %252, %248 ], [ %305, %311 ]
  %260 = icmp eq i64 %257, %255
  br i1 %260, label %314, label %261

261:                                              ; preds = %256
  %262 = add nuw nsw i64 %257, 1
  %263 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %257
  %264 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %257, i32 1
  %265 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %257, i32 2
  %266 = trunc i64 %257 to i8
  br label %267

267:                                              ; preds = %304, %261
  %268 = phi i64 [ %307, %304 ], [ %258, %261 ]
  %269 = phi ptr [ %305, %304 ], [ %259, %261 ]
  %270 = load i8, ptr %263, align 1, !tbaa !65
  %271 = zext i8 %270 to i32
  %272 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %268
  %273 = load i8, ptr %272, align 1, !tbaa !65
  %274 = zext i8 %273 to i32
  %275 = sub nsw i32 %271, %274
  %276 = tail call i32 @llvm.abs.i32(i32 %275, i1 true)
  %277 = load i8, ptr %264, align 1, !tbaa !67
  %278 = zext i8 %277 to i32
  %279 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %268, i32 1
  %280 = load i8, ptr %279, align 1, !tbaa !67
  %281 = zext i8 %280 to i32
  %282 = sub nsw i32 %278, %281
  %283 = tail call i32 @llvm.abs.i32(i32 %282, i1 true)
  %284 = add nuw nsw i32 %283, %276
  %285 = load i8, ptr %265, align 1, !tbaa !68
  %286 = zext i8 %285 to i32
  %287 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %268, i32 2
  %288 = load i8, ptr %287, align 1, !tbaa !68
  %289 = zext i8 %288 to i32
  %290 = sub nsw i32 %286, %289
  %291 = tail call i32 @llvm.abs.i32(i32 %290, i1 true)
  %292 = add nuw nsw i32 %284, %291
  %293 = icmp ugt i32 %292, %250
  br i1 %293, label %304, label %294

294:                                              ; preds = %267
  %295 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 16) #11
  %296 = icmp eq ptr %295, null
  br i1 %296, label %304, label %297

297:                                              ; preds = %294
  %298 = zext nneg i32 %292 to i64
  %299 = getelementptr inbounds ptr, ptr %241, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !74
  store ptr %300, ptr %295, align 8, !tbaa !75
  %301 = getelementptr inbounds %struct.png_dsort_struct, ptr %295, i64 0, i32 1
  store i8 %266, ptr %301, align 8, !tbaa !77
  %302 = trunc i64 %268 to i8
  %303 = getelementptr inbounds %struct.png_dsort_struct, ptr %295, i64 0, i32 2
  store i8 %302, ptr %303, align 1, !tbaa !78
  store ptr %295, ptr %299, align 8, !tbaa !74
  br label %304

304:                                              ; preds = %267, %297, %294
  %305 = phi ptr [ null, %294 ], [ %295, %297 ], [ %269, %267 ]
  %306 = phi i1 [ false, %294 ], [ true, %297 ], [ true, %267 ]
  %307 = add nuw nsw i64 %268, 1
  %308 = trunc i64 %307 to i32
  %309 = icmp sgt i32 %251, %308
  %310 = select i1 %306, i1 %309, i1 false
  br i1 %310, label %267, label %311, !llvm.loop !79

311:                                              ; preds = %304
  %312 = icmp eq ptr %305, null
  %313 = add nuw nsw i64 %258, 1
  br i1 %312, label %314, label %256

314:                                              ; preds = %311, %256
  %315 = phi ptr [ %305, %311 ], [ %259, %256 ]
  %316 = icmp eq ptr %315, null
  br i1 %316, label %416, label %317

317:                                              ; preds = %314, %412
  %318 = phi i64 [ %414, %412 ], [ 0, %314 ]
  %319 = phi i32 [ %413, %412 ], [ %251, %314 ]
  %320 = getelementptr inbounds ptr, ptr %241, i64 %318
  %321 = load ptr, ptr %320, align 8, !tbaa !74
  %322 = icmp eq ptr %321, null
  br i1 %322, label %412, label %323

323:                                              ; preds = %317, %407
  %324 = phi i32 [ %405, %407 ], [ %319, %317 ]
  %325 = phi ptr [ %408, %407 ], [ %321, %317 ]
  %326 = load ptr, ptr %225, align 8, !tbaa !71
  %327 = getelementptr inbounds %struct.png_dsort_struct, ptr %325, i64 0, i32 1
  %328 = load i8, ptr %327, align 8, !tbaa !77
  %329 = zext i8 %328 to i64
  %330 = getelementptr inbounds i8, ptr %326, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !52
  %332 = zext i8 %331 to i32
  %333 = icmp sgt i32 %324, %332
  br i1 %333, label %334, label %404

334:                                              ; preds = %323
  %335 = getelementptr inbounds %struct.png_dsort_struct, ptr %325, i64 0, i32 2
  %336 = load i8, ptr %335, align 1, !tbaa !78
  %337 = zext i8 %336 to i64
  %338 = getelementptr inbounds i8, ptr %326, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !52
  %340 = zext i8 %339 to i32
  %341 = icmp sgt i32 %324, %340
  br i1 %341, label %342, label %404

342:                                              ; preds = %334
  %343 = and i32 %324, 1
  %344 = icmp eq i32 %343, 0
  %345 = select i1 %344, i8 %336, i8 %328
  %346 = add nsw i32 %324, -1
  %347 = zext i8 %345 to i64
  %348 = getelementptr inbounds i8, ptr %326, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !52
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %350
  %352 = zext nneg i32 %346 to i64
  %353 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %351, ptr noundef nonnull align 1 dereferenceable(3) %353, i64 3, i1 false), !tbaa.struct !61
  br i1 %246, label %382, label %354

354:                                              ; preds = %342
  %355 = select i1 %344, i8 %328, i8 %336
  %356 = zext i8 %355 to i64
  br label %357

357:                                              ; preds = %354, %379
  %358 = phi i64 [ 0, %354 ], [ %380, %379 ]
  %359 = load ptr, ptr %245, align 8, !tbaa !51
  %360 = getelementptr inbounds i8, ptr %359, i64 %358
  %361 = load i8, ptr %360, align 1, !tbaa !52
  %362 = load ptr, ptr %225, align 8, !tbaa !71
  %363 = getelementptr inbounds i8, ptr %362, i64 %347
  %364 = load i8, ptr %363, align 1, !tbaa !52
  %365 = icmp eq i8 %361, %364
  br i1 %365, label %366, label %369

366:                                              ; preds = %357
  %367 = getelementptr inbounds i8, ptr %362, i64 %356
  %368 = load i8, ptr %367, align 1, !tbaa !52
  store i8 %368, ptr %360, align 1, !tbaa !52
  br label %369

369:                                              ; preds = %366, %357
  %370 = load ptr, ptr %245, align 8, !tbaa !51
  %371 = getelementptr inbounds i8, ptr %370, i64 %358
  %372 = load i8, ptr %371, align 1, !tbaa !52
  %373 = zext i8 %372 to i32
  %374 = icmp eq i32 %346, %373
  br i1 %374, label %375, label %379

375:                                              ; preds = %369
  %376 = load ptr, ptr %225, align 8, !tbaa !71
  %377 = getelementptr inbounds i8, ptr %376, i64 %347
  %378 = load i8, ptr %377, align 1, !tbaa !52
  store i8 %378, ptr %371, align 1, !tbaa !52
  br label %379

379:                                              ; preds = %369, %375
  %380 = add nuw nsw i64 %358, 1
  %381 = icmp eq i64 %380, %247
  br i1 %381, label %382, label %357, !llvm.loop !80

382:                                              ; preds = %379, %342
  %383 = load ptr, ptr %225, align 8, !tbaa !71
  %384 = getelementptr inbounds i8, ptr %383, i64 %347
  %385 = load i8, ptr %384, align 1, !tbaa !52
  %386 = load ptr, ptr %227, align 8, !tbaa !72
  %387 = getelementptr inbounds i8, ptr %386, i64 %352
  %388 = load i8, ptr %387, align 1, !tbaa !52
  %389 = zext i8 %388 to i64
  %390 = getelementptr inbounds i8, ptr %383, i64 %389
  store i8 %385, ptr %390, align 1, !tbaa !52
  %391 = load ptr, ptr %227, align 8, !tbaa !72
  %392 = getelementptr inbounds i8, ptr %391, i64 %352
  %393 = load i8, ptr %392, align 1, !tbaa !52
  %394 = load ptr, ptr %225, align 8, !tbaa !71
  %395 = getelementptr inbounds i8, ptr %394, i64 %347
  %396 = load i8, ptr %395, align 1, !tbaa !52
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds i8, ptr %391, i64 %397
  store i8 %393, ptr %398, align 1, !tbaa !52
  %399 = trunc i32 %346 to i8
  %400 = load ptr, ptr %225, align 8, !tbaa !71
  %401 = getelementptr inbounds i8, ptr %400, i64 %347
  store i8 %399, ptr %401, align 1, !tbaa !52
  %402 = load ptr, ptr %227, align 8, !tbaa !72
  %403 = getelementptr inbounds i8, ptr %402, i64 %352
  store i8 %345, ptr %403, align 1, !tbaa !52
  br label %404

404:                                              ; preds = %382, %334, %323
  %405 = phi i32 [ %346, %382 ], [ %324, %334 ], [ %324, %323 ]
  %406 = icmp sgt i32 %405, %3
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = load ptr, ptr %325, align 8, !tbaa !75
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %323, !llvm.loop !81

410:                                              ; preds = %404, %407
  %411 = icmp sgt i32 %405, %3
  br i1 %411, label %412, label %416

412:                                              ; preds = %410, %317
  %413 = phi i32 [ %405, %410 ], [ %319, %317 ]
  %414 = add nuw nsw i64 %318, 1
  %415 = icmp eq i64 %414, %249
  br i1 %415, label %416, label %317, !llvm.loop !82

416:                                              ; preds = %410, %412, %314
  %417 = phi i32 [ %251, %314 ], [ %405, %410 ], [ %413, %412 ]
  br label %418

418:                                              ; preds = %416, %428
  %419 = phi i64 [ 0, %416 ], [ %430, %428 ]
  %420 = phi ptr [ %315, %416 ], [ %429, %428 ]
  %421 = getelementptr inbounds ptr, ptr %241, i64 %419
  %422 = load ptr, ptr %421, align 8, !tbaa !74
  %423 = icmp eq ptr %422, null
  br i1 %423, label %428, label %424

424:                                              ; preds = %418, %424
  %425 = phi ptr [ %426, %424 ], [ %422, %418 ]
  %426 = load ptr, ptr %425, align 8, !tbaa !75
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %425) #11
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %424, !llvm.loop !83

428:                                              ; preds = %424, %418
  %429 = phi ptr [ %420, %418 ], [ %426, %424 ]
  store ptr null, ptr %421, align 8, !tbaa !74
  %430 = add nuw nsw i64 %419, 1
  %431 = icmp eq i64 %430, 769
  br i1 %431, label %432, label %418, !llvm.loop !84

432:                                              ; preds = %428
  %433 = add nuw nsw i32 %250, 96
  %434 = icmp sgt i32 %417, %3
  %435 = add nuw i64 %249, 96
  br i1 %434, label %248, label %436, !llvm.loop !85

436:                                              ; preds = %432, %240
  tail call void @png_free(ptr noundef %0, ptr noundef %241) #11
  %437 = load ptr, ptr %227, align 8, !tbaa !72
  tail call void @png_free(ptr noundef %0, ptr noundef %437) #11
  %438 = load ptr, ptr %225, align 8, !tbaa !71
  tail call void @png_free(ptr noundef %0, ptr noundef %438) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, i8 0, i64 16, i1 false)
  br label %439

439:                                              ; preds = %222, %436, %28
  %440 = phi i32 [ %2, %28 ], [ %3, %436 ], [ %3, %222 ]
  %441 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %442 = load ptr, ptr %441, align 8, !tbaa !86
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %445

444:                                              ; preds = %439
  store ptr %1, ptr %441, align 8, !tbaa !86
  br label %445

445:                                              ; preds = %444, %439
  %446 = trunc i32 %440 to i16
  %447 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  store i16 %446, ptr %447, align 8, !tbaa !87
  br i1 %13, label %448, label %530

448:                                              ; preds = %445
  %449 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef 32768) #11
  %450 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  store ptr %449, ptr %450, align 8, !tbaa !88
  %451 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 32768) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32768) %451, i8 -1, i64 32768, i1 false)
  %452 = icmp sgt i32 %440, 0
  br i1 %452, label %453, label %529

453:                                              ; preds = %448
  %454 = zext nneg i32 %440 to i64
  br label %455

455:                                              ; preds = %453, %526
  %456 = phi i64 [ 0, %453 ], [ %527, %526 ]
  %457 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !65
  %459 = lshr i8 %458, 3
  %460 = zext nneg i8 %459 to i32
  %461 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %456, i32 1
  %462 = load i8, ptr %461, align 1, !tbaa !67
  %463 = lshr i8 %462, 3
  %464 = zext nneg i8 %463 to i32
  %465 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %456, i32 2
  %466 = load i8, ptr %465, align 1, !tbaa !68
  %467 = lshr i8 %466, 3
  %468 = zext nneg i8 %467 to i32
  %469 = trunc i64 %456 to i8
  %470 = zext nneg i8 %467 to i64
  %471 = zext nneg i8 %467 to i64
  %472 = zext nneg i8 %463 to i64
  %473 = zext nneg i8 %463 to i64
  %474 = zext nneg i8 %459 to i64
  %475 = zext nneg i8 %459 to i64
  br label %476

476:                                              ; preds = %455, %523
  %477 = phi i64 [ 0, %455 ], [ %524, %523 ]
  %478 = trunc i64 %477 to i32
  %479 = icmp ugt i64 %477, %474
  %480 = sub nsw i32 %478, %460
  %481 = sub nsw i64 %475, %477
  %482 = trunc i64 %481 to i32
  %483 = select i1 %479, i32 %480, i32 %482
  %484 = shl nuw nsw i64 %477, 10
  br label %485

485:                                              ; preds = %476, %520
  %486 = phi i64 [ 0, %476 ], [ %521, %520 ]
  %487 = trunc i64 %486 to i32
  %488 = icmp ugt i64 %486, %472
  %489 = sub nsw i32 %487, %464
  %490 = sub nsw i64 %473, %486
  %491 = trunc i64 %490 to i32
  %492 = select i1 %488, i32 %489, i32 %491
  %493 = add nsw i32 %492, %483
  %494 = tail call i32 @llvm.smax.i32(i32 %483, i32 %492)
  %495 = shl nuw nsw i64 %486, 5
  %496 = add nuw nsw i64 %495, %484
  br label %497

497:                                              ; preds = %485, %517
  %498 = phi i64 [ 0, %485 ], [ %518, %517 ]
  %499 = trunc i64 %498 to i32
  %500 = add nuw nsw i64 %498, %496
  %501 = icmp ugt i64 %498, %470
  %502 = sub nsw i32 %499, %468
  %503 = sub nsw i64 %471, %498
  %504 = trunc i64 %503 to i32
  %505 = select i1 %501, i32 %502, i32 %504
  %506 = tail call i32 @llvm.smax.i32(i32 %494, i32 %505)
  %507 = add i32 %493, %505
  %508 = add i32 %507, %506
  %509 = getelementptr inbounds i8, ptr %451, i64 %500
  %510 = load i8, ptr %509, align 1, !tbaa !52
  %511 = zext i8 %510 to i32
  %512 = icmp slt i32 %508, %511
  br i1 %512, label %513, label %517

513:                                              ; preds = %497
  %514 = trunc i32 %508 to i8
  store i8 %514, ptr %509, align 1, !tbaa !52
  %515 = load ptr, ptr %450, align 8, !tbaa !88
  %516 = getelementptr inbounds i8, ptr %515, i64 %500
  store i8 %469, ptr %516, align 1, !tbaa !52
  br label %517

517:                                              ; preds = %513, %497
  %518 = add nuw nsw i64 %498, 1
  %519 = icmp eq i64 %518, 32
  br i1 %519, label %520, label %497, !llvm.loop !89

520:                                              ; preds = %517
  %521 = add nuw nsw i64 %486, 1
  %522 = icmp eq i64 %521, 32
  br i1 %522, label %523, label %485, !llvm.loop !90

523:                                              ; preds = %520
  %524 = add nuw nsw i64 %477, 1
  %525 = icmp eq i64 %524, 32
  br i1 %525, label %526, label %476, !llvm.loop !91

526:                                              ; preds = %523
  %527 = add nuw nsw i64 %456, 1
  %528 = icmp eq i64 %527, %454
  br i1 %528, label %529, label %455, !llvm.loop !92

529:                                              ; preds = %526, %448
  tail call void @png_free(ptr noundef %0, ptr noundef %451) #11
  br label %530

530:                                              ; preds = %6, %529, %445
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_gamma_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  switch i32 %1, label %11 [
    i32 -1, label %6
    i32 -100000, label %6
    i32 -2, label %10
    i32 -50000, label %10
  ]

6:                                                ; preds = %5, %5
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = or i32 %8, 4096
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %11

10:                                               ; preds = %5, %5
  br label %11

11:                                               ; preds = %5, %6, %10
  %12 = phi i32 [ 220000, %6 ], [ 151724, %10 ], [ %1, %5 ]
  switch i32 %2, label %18 [
    i32 -1, label %13
    i32 -100000, label %13
    i32 -2, label %17
    i32 -50000, label %17
  ]

13:                                               ; preds = %11, %11
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = or i32 %15, 4096
  store i32 %16, ptr %14, align 8, !tbaa !34
  br label %18

17:                                               ; preds = %11, %11
  br label %18

18:                                               ; preds = %11, %13, %17
  %19 = phi i32 [ 45455, %13 ], [ 65909, %17 ], [ %2, %11 ]
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  store i32 %19, ptr %20, align 4, !tbaa !49
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  store i32 %12, ptr %21, align 8, !tbaa !50
  br label %22

22:                                               ; preds = %3, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_gamma(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = fcmp ogt double %1, 0.000000e+00
  %5 = fcmp olt double %1, 1.280000e+02
  %6 = and i1 %4, %5
  %7 = fmul double %1, 1.000000e+05
  %8 = select i1 %6, double %7, double %1
  %9 = fadd double %8, 5.000000e-01
  %10 = tail call double @llvm.floor.f64(double %9)
  %11 = fcmp ogt double %10, 0x41DFFFFFFFC00000
  %12 = fcmp olt double %10, 0xC1DFFFFFFFC00000
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  unreachable

15:                                               ; preds = %3
  %16 = fcmp ogt double %2, 0.000000e+00
  %17 = fcmp olt double %2, 1.280000e+02
  %18 = and i1 %16, %17
  %19 = fmul double %2, 1.000000e+05
  %20 = select i1 %18, double %19, double %2
  %21 = fadd double %20, 5.000000e-01
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = fcmp ogt double %22, 0x41DFFFFFFFC00000
  %24 = fcmp olt double %22, 0xC1DFFFFFFFC00000
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  unreachable

27:                                               ; preds = %15
  %28 = fptosi double %22 to i32
  %29 = icmp eq ptr %0, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = fptosi double %10 to i32
  switch i32 %31, label %37 [
    i32 -1, label %32
    i32 -100000, label %32
    i32 -2, label %36
    i32 -50000, label %36
  ]

32:                                               ; preds = %30, %30
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %34 = load i32, ptr %33, align 8, !tbaa !34
  %35 = or i32 %34, 4096
  store i32 %35, ptr %33, align 8, !tbaa !34
  br label %37

36:                                               ; preds = %30, %30
  br label %37

37:                                               ; preds = %36, %32, %30
  %38 = phi i32 [ 220000, %32 ], [ 151724, %36 ], [ %31, %30 ]
  switch i32 %28, label %44 [
    i32 -1, label %39
    i32 -100000, label %39
    i32 -2, label %43
    i32 -50000, label %43
  ]

39:                                               ; preds = %37, %37
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %41 = load i32, ptr %40, align 8, !tbaa !34
  %42 = or i32 %41, 4096
  store i32 %42, ptr %40, align 8, !tbaa !34
  br label %44

43:                                               ; preds = %37, %37
  br label %44

44:                                               ; preds = %43, %39, %37
  %45 = phi i32 [ 45455, %39 ], [ 65909, %43 ], [ %28, %37 ]
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  store i32 %45, ptr %46, align 4, !tbaa !49
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  store i32 %38, ptr %47, align 8, !tbaa !50
  br label %48

48:                                               ; preds = %27, %44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_expand(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 33558528
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -65
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_palette_to_rgb(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 33558528
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -65
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_expand_gray_1_2_4_to_8(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 4096
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -65
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_tRNS_to_alpha(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 4, !tbaa !46
  %4 = or i32 %3, 33558528
  store i32 %4, ptr %2, align 4, !tbaa !46
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, -65
  store i32 %7, ptr %5, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_expand_16(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 33559040
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -16449
  %10 = or disjoint i32 %9, 16384
  store i32 %10, ptr %7, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_gray_to_rgb(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 4096
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -65
  store i32 %9, ptr %7, align 8, !tbaa !34
  %10 = or i32 %5, 20480
  store i32 %10, ptr %4, align 4, !tbaa !46
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_rgb_to_gray_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = add i32 %1, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  unreachable

10:                                               ; preds = %6
  %11 = shl nuw nsw i32 %7, 21
  %12 = sub nuw nsw i32 6291456, %11
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 4, !tbaa !46
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %17 = load i8, ptr %16, align 1, !tbaa !93
  %18 = icmp eq i8 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = or i32 %21, 4096
  store i32 %22, ptr %20, align 4, !tbaa !46
  br label %23

23:                                               ; preds = %19, %10
  %24 = or i32 %3, %2
  %25 = icmp sgt i32 %24, -1
  %26 = add nuw nsw i32 %3, %2
  %27 = icmp slt i32 %26, 100001
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = shl i32 %2, 15
  %31 = udiv i32 %30, 100000
  %32 = trunc i32 %31 to i16
  %33 = shl i32 %3, 15
  %34 = udiv i32 %33, 100000
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  store i16 %32, ptr %36, align 4, !tbaa !94
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  store i16 %35, ptr %37, align 2, !tbaa !95
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 122
  store i8 1, ptr %38, align 2, !tbaa !96
  br label %50

39:                                               ; preds = %23
  br i1 %25, label %40, label %41

40:                                               ; preds = %39
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #11
  br label %41

41:                                               ; preds = %40, %39
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  %43 = load i16, ptr %42, align 4, !tbaa !94
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  %47 = load i16, ptr %46, align 2, !tbaa !95
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i16 6968, ptr %42, align 4, !tbaa !94
  store i16 23434, ptr %46, align 2, !tbaa !95
  br label %50

50:                                               ; preds = %41, %45, %49, %4, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_rgb_to_gray(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @png_fixed(ptr noundef nonnull %0, double noundef %2, ptr noundef nonnull @.str.8) #11
  %8 = tail call i32 @png_fixed(ptr noundef nonnull %0, double noundef %3, ptr noundef nonnull @.str.9) #11
  tail call void @png_set_rgb_to_gray_fixed(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %7, i32 noundef %8)
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_read_user_transform_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = or i32 %6, 1048576
  store i32 %7, ptr %5, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 8
  store ptr %1, ptr %8, align 8, !tbaa !97
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_init_read_transformations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %5, label %22, label %9

9:                                                ; preds = %1
  br i1 %8, label %20, label %10

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %11 = call i32 @png_muldiv(ptr noundef nonnull %2, i32 noundef %4, i32 noundef %7, i32 noundef 100000) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !tbaa !98
  %15 = call i32 @png_gamma_significant(i32 noundef %14) #11
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %10, %13
  %19 = phi i32 [ 1, %10 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %26

20:                                               ; preds = %9
  %21 = tail call i32 @png_reciprocal(i32 noundef %4) #11
  store i32 %21, ptr %6, align 8, !tbaa !50
  br label %26

22:                                               ; preds = %1
  br i1 %8, label %25, label %23

23:                                               ; preds = %22
  %24 = tail call i32 @png_reciprocal(i32 noundef %7) #11
  store i32 %24, ptr %3, align 4, !tbaa !49
  br label %26

25:                                               ; preds = %22
  store i32 100000, ptr %3, align 4, !tbaa !49
  store i32 100000, ptr %6, align 8, !tbaa !50
  br label %26

26:                                               ; preds = %23, %25, %18, %20
  %27 = phi i32 [ %19, %18 ], [ 0, %20 ], [ 0, %23 ], [ 0, %25 ]
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = and i32 %30, -8193
  %32 = select i1 %28, i32 0, i32 8192
  %33 = or disjoint i32 %31, %32
  store i32 %33, ptr %29, align 4, !tbaa !46
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %35 = and i32 %30, 262272
  %36 = icmp eq i32 %35, 262144
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = and i32 %33, -41943425
  store i32 %38, ptr %34, align 4, !tbaa !46
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %40 = load i32, ptr %39, align 8, !tbaa !34
  %41 = and i32 %40, -8193
  store i32 %41, ptr %39, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 0, ptr %42, align 8, !tbaa !99
  br label %43

43:                                               ; preds = %37, %26
  %44 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %45 = load i32, ptr %44, align 8, !tbaa !50
  %46 = call i32 @png_gamma_significant(i32 noundef %45) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, ptr %34, align 4, !tbaa !46
  %50 = and i32 %49, -8388609
  store i32 %50, ptr %34, align 4, !tbaa !46
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %52 = load i32, ptr %51, align 8, !tbaa !34
  %53 = and i32 %52, -8193
  store i32 %53, ptr %51, align 8, !tbaa !34
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, ptr %34, align 4, !tbaa !46
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %60 = load i8, ptr %59, align 1, !tbaa !93
  %61 = and i8 %60, 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %65 = load i32, ptr %64, align 4, !tbaa !100
  %66 = or i32 %65, 2048
  store i32 %66, ptr %64, align 4, !tbaa !100
  br label %85

67:                                               ; preds = %54
  %68 = and i32 %55, 16512
  %69 = icmp eq i32 %68, 16512
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !101
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %74 = load i16, ptr %73, align 4, !tbaa !102
  %75 = icmp eq i16 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %78 = load i16, ptr %77, align 2, !tbaa !103
  %79 = icmp eq i16 %72, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %82 = load i32, ptr %81, align 4, !tbaa !100
  %83 = or i32 %82, 2048
  store i32 %83, ptr %81, align 4, !tbaa !100
  %84 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  store i16 %72, ptr %84, align 8, !tbaa !104
  br label %85

85:                                               ; preds = %67, %70, %76, %80, %58, %63
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %87 = load i8, ptr %86, align 1, !tbaa !93
  %88 = icmp eq i8 %87, 3
  br i1 %88, label %89, label %160

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %91 = load i16, ptr %90, align 8, !tbaa !99
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %95 = load ptr, ptr %94, align 8, !tbaa !105
  %96 = zext i16 %91 to i64
  br label %97

97:                                               ; preds = %93, %105
  %98 = phi i64 [ 0, %93 ], [ %108, %105 ]
  %99 = phi i32 [ 0, %93 ], [ %107, %105 ]
  %100 = phi i32 [ 0, %93 ], [ %106, %105 ]
  %101 = getelementptr inbounds i8, ptr %95, i64 %98
  %102 = load i8, ptr %101, align 1, !tbaa !52
  switch i8 %102, label %104 [
    i8 -1, label %105
    i8 0, label %103
  ]

103:                                              ; preds = %97
  br label %105

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %103, %97
  %106 = phi i32 [ %100, %97 ], [ 1, %103 ], [ %100, %104 ]
  %107 = phi i32 [ %99, %97 ], [ %99, %103 ], [ 1, %104 ]
  %108 = add nuw nsw i64 %98, 1
  %109 = icmp eq i64 %108, %96
  br i1 %109, label %110, label %97, !llvm.loop !106

110:                                              ; preds = %105
  %111 = icmp eq i32 %107, 0
  %112 = icmp eq i32 %106, 0
  br label %113

113:                                              ; preds = %110, %89
  %114 = phi i1 [ %112, %110 ], [ true, %89 ]
  %115 = phi i1 [ %111, %110 ], [ true, %89 ]
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = and i32 %55, -8388609
  store i32 %117, ptr %34, align 4, !tbaa !46
  %118 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %119 = load i32, ptr %118, align 8, !tbaa !34
  %120 = and i32 %119, -8193
  store i32 %120, ptr %118, align 8, !tbaa !34
  br i1 %114, label %121, label %123

121:                                              ; preds = %116
  %122 = and i32 %55, -8388993
  store i32 %122, ptr %34, align 4, !tbaa !46
  br label %123

123:                                              ; preds = %121, %116, %113
  %124 = load i32, ptr %34, align 4, !tbaa !46
  %125 = and i32 %124, 4352
  %126 = icmp eq i32 %125, 4352
  br i1 %126, label %127, label %208

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %129 = load ptr, ptr %128, align 8, !tbaa !86
  %130 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  %131 = load i8, ptr %130, align 8, !tbaa !107
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds %struct.png_color_struct, ptr %129, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !65
  %135 = zext i8 %134 to i16
  %136 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  store i16 %135, ptr %136, align 2, !tbaa !101
  %137 = getelementptr inbounds %struct.png_color_struct, ptr %129, i64 %132, i32 1
  %138 = load i8, ptr %137, align 1, !tbaa !67
  %139 = zext i8 %138 to i16
  %140 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  store i16 %139, ptr %140, align 4, !tbaa !102
  %141 = getelementptr inbounds %struct.png_color_struct, ptr %129, i64 %132, i32 2
  %142 = load i8, ptr %141, align 1, !tbaa !68
  %143 = zext i8 %142 to i16
  %144 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  store i16 %143, ptr %144, align 2, !tbaa !103
  %145 = and i32 %124, 34078720
  %146 = icmp ne i32 %145, 524288
  %147 = icmp eq i16 %91, 0
  %148 = or i1 %146, %147
  br i1 %148, label %208, label %149

149:                                              ; preds = %127
  %150 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %151 = zext i16 %91 to i64
  br label %152

152:                                              ; preds = %149, %152
  %153 = phi i64 [ 0, %149 ], [ %158, %152 ]
  %154 = load ptr, ptr %150, align 8, !tbaa !105
  %155 = getelementptr inbounds i8, ptr %154, i64 %153
  %156 = load i8, ptr %155, align 1, !tbaa !52
  %157 = xor i8 %156, -1
  store i8 %157, ptr %155, align 1, !tbaa !52
  %158 = add nuw nsw i64 %153, 1
  %159 = icmp eq i64 %158, %151
  br i1 %159, label %208, label %152, !llvm.loop !108

160:                                              ; preds = %85
  %161 = and i8 %87, 4
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %165 = load i16, ptr %164, align 8, !tbaa !99
  %166 = icmp eq i16 %165, 0
  %167 = and i32 %55, -8388609
  store i32 %167, ptr %34, align 4, !tbaa !46
  %168 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %169 = load i32, ptr %168, align 8, !tbaa !34
  %170 = and i32 %169, -8193
  store i32 %170, ptr %168, align 8, !tbaa !34
  br i1 %166, label %171, label %173

171:                                              ; preds = %163
  %172 = and i32 %55, -8388993
  store i32 %172, ptr %34, align 4, !tbaa !46
  br label %173

173:                                              ; preds = %171, %163, %160
  %174 = load i32, ptr %34, align 4, !tbaa !46
  %175 = and i32 %174, 4352
  %176 = icmp eq i32 %175, 4352
  %177 = and i8 %87, 2
  %178 = icmp eq i8 %177, 0
  %179 = and i1 %178, %176
  br i1 %179, label %180, label %208

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %182 = load i16, ptr %181, align 8, !tbaa !104
  %183 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 4
  %184 = load i16, ptr %183, align 8, !tbaa !109
  %185 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %186 = load i8, ptr %185, align 8, !tbaa !110
  switch i8 %186, label %196 [
    i8 1, label %187
    i8 2, label %190
    i8 4, label %193
  ]

187:                                              ; preds = %180
  %188 = mul i16 %182, 255
  %189 = mul i16 %184, 255
  br label %196

190:                                              ; preds = %180
  %191 = mul i16 %182, 85
  %192 = mul i16 %184, 85
  br label %196

193:                                              ; preds = %180
  %194 = mul i16 %182, 17
  %195 = mul i16 %184, 17
  br label %196

196:                                              ; preds = %193, %190, %187, %180
  %197 = phi i16 [ %182, %180 ], [ %194, %193 ], [ %191, %190 ], [ %188, %187 ]
  %198 = phi i16 [ %184, %180 ], [ %195, %193 ], [ %192, %190 ], [ %189, %187 ]
  %199 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  store i16 %197, ptr %199, align 2, !tbaa !103
  %200 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  store i16 %197, ptr %200, align 4, !tbaa !102
  %201 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  store i16 %197, ptr %201, align 2, !tbaa !101
  %202 = and i32 %174, 33554432
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 3
  store i16 %198, ptr %205, align 2, !tbaa !111
  %206 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 2
  store i16 %198, ptr %206, align 4, !tbaa !112
  %207 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 1
  store i16 %198, ptr %207, align 2, !tbaa !113
  br label %208

208:                                              ; preds = %152, %204, %196, %173, %127, %123
  %209 = load i32, ptr %34, align 4, !tbaa !46
  %210 = and i32 %209, 896
  %211 = icmp eq i32 %210, 640
  br i1 %211, label %212, label %245

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %214 = load i8, ptr %213, align 8, !tbaa !110
  %215 = icmp eq i8 %214, 16
  br i1 %215, label %245, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %218 = load i16, ptr %217, align 2, !tbaa !101
  %219 = zext i16 %218 to i32
  %220 = mul nuw nsw i32 %219, 255
  %221 = add nuw nsw i32 %220, 32895
  %222 = lshr i32 %221, 16
  %223 = trunc i32 %222 to i16
  store i16 %223, ptr %217, align 2, !tbaa !101
  %224 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %225 = load i16, ptr %224, align 4, !tbaa !102
  %226 = zext i16 %225 to i32
  %227 = mul nuw nsw i32 %226, 255
  %228 = add nuw nsw i32 %227, 32895
  %229 = lshr i32 %228, 16
  %230 = trunc i32 %229 to i16
  store i16 %230, ptr %224, align 4, !tbaa !102
  %231 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %232 = load i16, ptr %231, align 2, !tbaa !103
  %233 = zext i16 %232 to i32
  %234 = mul nuw nsw i32 %233, 255
  %235 = add nuw nsw i32 %234, 32895
  %236 = lshr i32 %235, 16
  %237 = trunc i32 %236 to i16
  store i16 %237, ptr %231, align 2, !tbaa !103
  %238 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %239 = load i16, ptr %238, align 8, !tbaa !104
  %240 = zext i16 %239 to i32
  %241 = mul nuw nsw i32 %240, 255
  %242 = add nuw nsw i32 %241, 32895
  %243 = lshr i32 %242, 16
  %244 = trunc i32 %243 to i16
  store i16 %244, ptr %238, align 8, !tbaa !104
  br label %245

245:                                              ; preds = %216, %212, %208
  %246 = and i32 %209, 67109888
  %247 = icmp ne i32 %246, 0
  %248 = and i32 %209, 384
  %249 = icmp eq i32 %248, 128
  %250 = and i1 %247, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %253 = load i8, ptr %252, align 8, !tbaa !110
  %254 = icmp eq i8 %253, 16
  br i1 %254, label %255, label %268

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %257 = load i16, ptr %256, align 2, !tbaa !101
  %258 = mul i16 %257, 257
  store i16 %258, ptr %256, align 2, !tbaa !101
  %259 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %260 = load i16, ptr %259, align 4, !tbaa !102
  %261 = mul i16 %260, 257
  store i16 %261, ptr %259, align 4, !tbaa !102
  %262 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %263 = load i16, ptr %262, align 2, !tbaa !103
  %264 = mul i16 %263, 257
  store i16 %264, ptr %262, align 2, !tbaa !103
  %265 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %266 = load i16, ptr %265, align 8, !tbaa !104
  %267 = mul i16 %266, 257
  store i16 %267, ptr %265, align 8, !tbaa !104
  br label %268

268:                                              ; preds = %255, %251, %245
  %269 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70
  %270 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %269, ptr noundef nonnull align 8 dereferenceable(10) %270, i64 10, i1 false), !tbaa.struct !114
  %271 = and i32 %209, 8192
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %313

273:                                              ; preds = %268
  %274 = and i32 %209, 6291456
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %3, align 4, !tbaa !49
  %278 = call i32 @png_gamma_significant(i32 noundef %277) #11
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %313

280:                                              ; preds = %276
  %281 = load i32, ptr %44, align 8, !tbaa !50
  %282 = call i32 @png_gamma_significant(i32 noundef %281) #11
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %313

284:                                              ; preds = %280, %273
  %285 = load i32, ptr %34, align 4, !tbaa !46
  %286 = and i32 %285, 128
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %305, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %3, align 4, !tbaa !49
  %290 = call i32 @png_gamma_significant(i32 noundef %289) #11
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %313

292:                                              ; preds = %288
  %293 = load i32, ptr %44, align 8, !tbaa !50
  %294 = call i32 @png_gamma_significant(i32 noundef %293) #11
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  %298 = load i8, ptr %297, align 8, !tbaa !48
  %299 = icmp eq i8 %298, 3
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  %302 = load i32, ptr %301, align 4, !tbaa !47
  %303 = call i32 @png_gamma_significant(i32 noundef %302) #11
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %300, %296, %284
  %306 = load i32, ptr %34, align 4, !tbaa !46
  %307 = and i32 %306, 8388608
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %669, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %44, align 8, !tbaa !50
  %311 = call i32 @png_gamma_significant(i32 noundef %310) #11
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %669, label %313

313:                                              ; preds = %309, %300, %292, %288, %280, %276, %268
  %314 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %315 = load i8, ptr %314, align 8, !tbaa !110
  %316 = zext i8 %315 to i32
  call void @png_build_gamma_table(ptr noundef %0, i32 noundef %316) #11
  %317 = load i32, ptr %34, align 4, !tbaa !46
  %318 = and i32 %317, 128
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %629, label %320

320:                                              ; preds = %313
  %321 = and i32 %317, 6291456
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  br label %324

324:                                              ; preds = %323, %320
  %325 = load i8, ptr %86, align 1, !tbaa !93
  %326 = icmp eq i8 %325, 3
  br i1 %326, label %327, label %544

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %329 = load ptr, ptr %328, align 8, !tbaa !86
  %330 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %331 = load i16, ptr %330, align 8, !tbaa !87
  %332 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  %333 = load i8, ptr %332, align 8, !tbaa !48
  switch i8 %333, label %369 [
    i8 2, label %334
    i8 1, label %360
    i8 3, label %362
  ]

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %336 = load ptr, ptr %335, align 8, !tbaa !115
  %337 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %338 = load i16, ptr %337, align 2, !tbaa !101
  %339 = zext i16 %338 to i64
  %340 = getelementptr inbounds i8, ptr %336, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !52
  %342 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %343 = load i16, ptr %342, align 4, !tbaa !102
  %344 = zext i16 %343 to i64
  %345 = getelementptr inbounds i8, ptr %336, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !52
  %347 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %348 = load i16, ptr %347, align 2, !tbaa !103
  %349 = zext i16 %348 to i64
  %350 = getelementptr inbounds i8, ptr %336, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !52
  %352 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %353 = load ptr, ptr %352, align 8, !tbaa !116
  %354 = getelementptr inbounds i8, ptr %353, i64 %339
  %355 = load i8, ptr %354, align 1, !tbaa !52
  %356 = getelementptr inbounds i8, ptr %353, i64 %344
  %357 = load i8, ptr %356, align 1, !tbaa !52
  %358 = getelementptr inbounds i8, ptr %353, i64 %349
  %359 = load i8, ptr %358, align 1, !tbaa !52
  br label %422

360:                                              ; preds = %327
  %361 = load i32, ptr %44, align 8, !tbaa !50
  br label %369

362:                                              ; preds = %327
  %363 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  %364 = load i32, ptr %363, align 4, !tbaa !47
  %365 = call i32 @png_reciprocal(i32 noundef %364) #11
  %366 = load i32, ptr %363, align 4, !tbaa !47
  %367 = load i32, ptr %44, align 8, !tbaa !50
  %368 = call i32 @png_reciprocal2(i32 noundef %366, i32 noundef %367) #11
  br label %369

369:                                              ; preds = %327, %362, %360
  %370 = phi i32 [ %368, %362 ], [ 100000, %360 ], [ 100000, %327 ]
  %371 = phi i32 [ %365, %362 ], [ %361, %360 ], [ 100000, %327 ]
  %372 = call i32 @png_gamma_significant(i32 noundef %370) #11
  %373 = icmp eq i32 %372, 0
  %374 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %375 = load i16, ptr %374, align 2, !tbaa !101
  br i1 %373, label %387, label %376

376:                                              ; preds = %369
  %377 = zext i16 %375 to i32
  %378 = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %377, i32 noundef %370) #11
  %379 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %380 = load i16, ptr %379, align 4, !tbaa !102
  %381 = zext i16 %380 to i32
  %382 = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %381, i32 noundef %370) #11
  %383 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %384 = load i16, ptr %383, align 2, !tbaa !103
  %385 = zext i16 %384 to i32
  %386 = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %385, i32 noundef %370) #11
  br label %395

387:                                              ; preds = %369
  %388 = trunc i16 %375 to i8
  %389 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %390 = load i16, ptr %389, align 4, !tbaa !102
  %391 = trunc i16 %390 to i8
  %392 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %393 = load i16, ptr %392, align 2, !tbaa !103
  %394 = trunc i16 %393 to i8
  br label %395

395:                                              ; preds = %387, %376
  %396 = phi i8 [ %378, %376 ], [ %388, %387 ]
  %397 = phi i8 [ %382, %376 ], [ %391, %387 ]
  %398 = phi i8 [ %386, %376 ], [ %394, %387 ]
  %399 = call i32 @png_gamma_significant(i32 noundef %371) #11
  %400 = icmp eq i32 %399, 0
  %401 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %402 = load i16, ptr %401, align 2, !tbaa !101
  br i1 %400, label %414, label %403

403:                                              ; preds = %395
  %404 = zext i16 %402 to i32
  %405 = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %404, i32 noundef %371) #11
  %406 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %407 = load i16, ptr %406, align 4, !tbaa !102
  %408 = zext i16 %407 to i32
  %409 = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %408, i32 noundef %371) #11
  %410 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %411 = load i16, ptr %410, align 2, !tbaa !103
  %412 = zext i16 %411 to i32
  %413 = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %412, i32 noundef %371) #11
  br label %422

414:                                              ; preds = %395
  %415 = trunc i16 %402 to i8
  %416 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %417 = load i16, ptr %416, align 4, !tbaa !102
  %418 = trunc i16 %417 to i8
  %419 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %420 = load i16, ptr %419, align 2, !tbaa !103
  %421 = trunc i16 %420 to i8
  br label %422

422:                                              ; preds = %403, %414, %334
  %423 = phi i8 [ %355, %334 ], [ %405, %403 ], [ %415, %414 ]
  %424 = phi i8 [ %357, %334 ], [ %409, %403 ], [ %418, %414 ]
  %425 = phi i8 [ %359, %334 ], [ %413, %403 ], [ %421, %414 ]
  %426 = phi i8 [ %341, %334 ], [ %396, %403 ], [ %396, %414 ]
  %427 = phi i8 [ %346, %334 ], [ %397, %403 ], [ %397, %414 ]
  %428 = phi i8 [ %351, %334 ], [ %398, %403 ], [ %398, %414 ]
  %429 = icmp eq i16 %331, 0
  br i1 %429, label %541, label %430

430:                                              ; preds = %422
  %431 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %432 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %433 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %434 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %435 = zext i8 %423 to i32
  %436 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %437 = zext i8 %424 to i32
  %438 = zext i8 %425 to i32
  %439 = zext i16 %331 to i64
  br label %440

440:                                              ; preds = %430, %538
  %441 = phi i64 [ 0, %430 ], [ %539, %538 ]
  %442 = load i16, ptr %431, align 8, !tbaa !99
  %443 = zext i16 %442 to i64
  %444 = icmp ult i64 %441, %443
  br i1 %444, label %445, label %521

445:                                              ; preds = %440
  %446 = load ptr, ptr %432, align 8, !tbaa !105
  %447 = getelementptr inbounds i8, ptr %446, i64 %441
  %448 = load i8, ptr %447, align 1, !tbaa !52
  switch i8 %448, label %453 [
    i8 -1, label %521
    i8 0, label %449
  ]

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441
  store i8 %426, ptr %450, align 1, !tbaa.struct !61
  %451 = getelementptr inbounds i8, ptr %450, i64 1
  store i8 %427, ptr %451, align 1, !tbaa.struct !117
  %452 = getelementptr inbounds i8, ptr %450, i64 2
  store i8 %428, ptr %452, align 1, !tbaa.struct !118
  br label %538

453:                                              ; preds = %445
  %454 = load ptr, ptr %434, align 8, !tbaa !116
  %455 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441
  %456 = load i8, ptr %455, align 1, !tbaa !65
  %457 = zext i8 %456 to i64
  %458 = getelementptr inbounds i8, ptr %454, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !52
  %460 = zext i8 %459 to i32
  %461 = zext i8 %448 to i32
  %462 = mul nuw nsw i32 %460, %461
  %463 = xor i8 %448, -1
  %464 = zext i8 %463 to i32
  %465 = mul nuw nsw i32 %464, %435
  %466 = add nuw nsw i32 %465, 128
  %467 = add nuw nsw i32 %466, %462
  %468 = lshr i32 %467, 8
  %469 = and i32 %468, 255
  %470 = add nuw nsw i32 %469, %467
  %471 = lshr i32 %470, 8
  %472 = load ptr, ptr %436, align 8, !tbaa !119
  %473 = and i32 %471, 255
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds i8, ptr %472, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !52
  store i8 %476, ptr %455, align 1, !tbaa !65
  %477 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441, i32 1
  %478 = load i8, ptr %477, align 1, !tbaa !67
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds i8, ptr %454, i64 %479
  %481 = load i8, ptr %480, align 1, !tbaa !52
  %482 = zext i8 %481 to i32
  %483 = load i8, ptr %447, align 1, !tbaa !52
  %484 = zext i8 %483 to i32
  %485 = mul nuw nsw i32 %484, %482
  %486 = xor i8 %483, -1
  %487 = zext i8 %486 to i32
  %488 = mul nuw nsw i32 %487, %437
  %489 = add nuw nsw i32 %488, 128
  %490 = add nuw nsw i32 %489, %485
  %491 = lshr i32 %490, 8
  %492 = and i32 %491, 255
  %493 = add nuw nsw i32 %492, %490
  %494 = lshr i32 %493, 8
  %495 = and i32 %494, 255
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %472, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !52
  store i8 %498, ptr %477, align 1, !tbaa !67
  %499 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441, i32 2
  %500 = load i8, ptr %499, align 1, !tbaa !68
  %501 = zext i8 %500 to i64
  %502 = getelementptr inbounds i8, ptr %454, i64 %501
  %503 = load i8, ptr %502, align 1, !tbaa !52
  %504 = zext i8 %503 to i32
  %505 = load i8, ptr %447, align 1, !tbaa !52
  %506 = zext i8 %505 to i32
  %507 = mul nuw nsw i32 %506, %504
  %508 = xor i8 %505, -1
  %509 = zext i8 %508 to i32
  %510 = mul nuw nsw i32 %509, %438
  %511 = add nuw nsw i32 %510, 128
  %512 = add nuw nsw i32 %511, %507
  %513 = lshr i32 %512, 8
  %514 = and i32 %513, 255
  %515 = add nuw nsw i32 %514, %512
  %516 = lshr i32 %515, 8
  %517 = and i32 %516, 255
  %518 = zext nneg i32 %517 to i64
  %519 = getelementptr inbounds i8, ptr %472, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !52
  store i8 %520, ptr %499, align 1, !tbaa !68
  br label %538

521:                                              ; preds = %445, %440
  %522 = load ptr, ptr %433, align 8, !tbaa !115
  %523 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441
  %524 = load i8, ptr %523, align 1, !tbaa !65
  %525 = zext i8 %524 to i64
  %526 = getelementptr inbounds i8, ptr %522, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !52
  store i8 %527, ptr %523, align 1, !tbaa !65
  %528 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441, i32 1
  %529 = load i8, ptr %528, align 1, !tbaa !67
  %530 = zext i8 %529 to i64
  %531 = getelementptr inbounds i8, ptr %522, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !52
  store i8 %532, ptr %528, align 1, !tbaa !67
  %533 = getelementptr inbounds %struct.png_color_struct, ptr %329, i64 %441, i32 2
  %534 = load i8, ptr %533, align 1, !tbaa !68
  %535 = zext i8 %534 to i64
  %536 = getelementptr inbounds i8, ptr %522, i64 %535
  %537 = load i8, ptr %536, align 1, !tbaa !52
  store i8 %537, ptr %533, align 1, !tbaa !68
  br label %538

538:                                              ; preds = %521, %453, %449
  %539 = add nuw nsw i64 %441, 1
  %540 = icmp eq i64 %539, %439
  br i1 %540, label %541, label %440, !llvm.loop !120

541:                                              ; preds = %538, %422
  %542 = load i32, ptr %34, align 4, !tbaa !46
  %543 = and i32 %542, -8321
  store i32 %543, ptr %34, align 4, !tbaa !46
  br label %760

544:                                              ; preds = %324
  %545 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  %546 = load i8, ptr %545, align 8, !tbaa !48
  switch i8 %546, label %562 [
    i8 1, label %547
    i8 2, label %549
    i8 3, label %555
  ]

547:                                              ; preds = %544
  %548 = load i32, ptr %44, align 8, !tbaa !50
  br label %563

549:                                              ; preds = %544
  %550 = load i32, ptr %3, align 4, !tbaa !49
  %551 = call i32 @png_reciprocal(i32 noundef %550) #11
  %552 = load i32, ptr %3, align 4, !tbaa !49
  %553 = load i32, ptr %44, align 8, !tbaa !50
  %554 = call i32 @png_reciprocal2(i32 noundef %552, i32 noundef %553) #11
  br label %563

555:                                              ; preds = %544
  %556 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  %557 = load i32, ptr %556, align 4, !tbaa !47
  %558 = call i32 @png_reciprocal(i32 noundef %557) #11
  %559 = load i32, ptr %556, align 4, !tbaa !47
  %560 = load i32, ptr %44, align 8, !tbaa !50
  %561 = call i32 @png_reciprocal2(i32 noundef %559, i32 noundef %560) #11
  br label %563

562:                                              ; preds = %544
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #12
  unreachable

563:                                              ; preds = %555, %549, %547
  %564 = phi i32 [ %561, %555 ], [ %554, %549 ], [ 100000, %547 ]
  %565 = phi i32 [ %558, %555 ], [ %551, %549 ], [ %548, %547 ]
  %566 = call i32 @png_gamma_significant(i32 noundef %565) #11
  %567 = call i32 @png_gamma_significant(i32 noundef %564) #11
  %568 = icmp eq i32 %566, 0
  br i1 %568, label %575, label %569

569:                                              ; preds = %563
  %570 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %571 = load i16, ptr %570, align 8, !tbaa !104
  %572 = zext i16 %571 to i32
  %573 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %572, i32 noundef %565) #11
  %574 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 4
  store i16 %573, ptr %574, align 2, !tbaa !121
  br label %575

575:                                              ; preds = %569, %563
  %576 = icmp eq i32 %567, 0
  br i1 %576, label %582, label %577

577:                                              ; preds = %575
  %578 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %579 = load i16, ptr %578, align 8, !tbaa !104
  %580 = zext i16 %579 to i32
  %581 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %580, i32 noundef %564) #11
  store i16 %581, ptr %578, align 8, !tbaa !104
  br label %582

582:                                              ; preds = %577, %575
  %583 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %584 = load i16, ptr %583, align 2, !tbaa !101
  %585 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %586 = load i16, ptr %585, align 4, !tbaa !102
  %587 = icmp eq i16 %584, %586
  br i1 %587, label %588, label %596

588:                                              ; preds = %582
  %589 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %590 = load i16, ptr %589, align 2, !tbaa !103
  %591 = icmp eq i16 %584, %590
  br i1 %591, label %592, label %596

592:                                              ; preds = %588
  %593 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %594 = load i16, ptr %593, align 8, !tbaa !104
  %595 = icmp eq i16 %584, %594
  br i1 %595, label %622, label %596

596:                                              ; preds = %592, %588, %582
  br i1 %568, label %610, label %597

597:                                              ; preds = %596
  %598 = zext i16 %584 to i32
  %599 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %598, i32 noundef %565) #11
  %600 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 1
  store i16 %599, ptr %600, align 2, !tbaa !122
  %601 = load i16, ptr %585, align 4, !tbaa !102
  %602 = zext i16 %601 to i32
  %603 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %602, i32 noundef %565) #11
  %604 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 2
  store i16 %603, ptr %604, align 2, !tbaa !123
  %605 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %606 = load i16, ptr %605, align 2, !tbaa !103
  %607 = zext i16 %606 to i32
  %608 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %607, i32 noundef %565) #11
  %609 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 3
  store i16 %608, ptr %609, align 2, !tbaa !124
  br label %610

610:                                              ; preds = %597, %596
  br i1 %576, label %628, label %611

611:                                              ; preds = %610
  %612 = load i16, ptr %583, align 2, !tbaa !101
  %613 = zext i16 %612 to i32
  %614 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %613, i32 noundef %564) #11
  store i16 %614, ptr %583, align 2, !tbaa !101
  %615 = load i16, ptr %585, align 4, !tbaa !102
  %616 = zext i16 %615 to i32
  %617 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %616, i32 noundef %564) #11
  store i16 %617, ptr %585, align 4, !tbaa !102
  %618 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %619 = load i16, ptr %618, align 2, !tbaa !103
  %620 = zext i16 %619 to i32
  %621 = call zeroext i16 @png_gamma_correct(ptr noundef %0, i32 noundef %620, i32 noundef %564) #11
  store i16 %621, ptr %618, align 2, !tbaa !103
  br label %628

622:                                              ; preds = %592
  %623 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 4
  %624 = load i16, ptr %623, align 2, !tbaa !121
  %625 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 3
  store i16 %624, ptr %625, align 2, !tbaa !124
  %626 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 2
  store i16 %624, ptr %626, align 2, !tbaa !123
  %627 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 1
  store i16 %624, ptr %627, align 2, !tbaa !122
  store i16 %594, ptr %589, align 2, !tbaa !103
  store i16 %594, ptr %585, align 4, !tbaa !102
  store i16 %594, ptr %583, align 2, !tbaa !101
  br label %628

628:                                              ; preds = %610, %611, %622
  store i8 1, ptr %545, align 8, !tbaa !48
  br label %760

629:                                              ; preds = %313
  %630 = load i8, ptr %86, align 1, !tbaa !93
  %631 = icmp eq i8 %630, 3
  br i1 %631, label %632, label %760

632:                                              ; preds = %629
  %633 = and i32 %317, 4096
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %317, 6291456
  %636 = icmp eq i32 %635, 0
  %637 = or i1 %634, %636
  br i1 %637, label %638, label %760

638:                                              ; preds = %632
  %639 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %640 = load ptr, ptr %639, align 8, !tbaa !86
  %641 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %642 = load i16, ptr %641, align 8, !tbaa !87
  %643 = icmp eq i16 %642, 0
  br i1 %643, label %667, label %644

644:                                              ; preds = %638
  %645 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %646 = load ptr, ptr %645, align 8, !tbaa !115
  %647 = zext i16 %642 to i64
  br label %648

648:                                              ; preds = %644, %648
  %649 = phi i64 [ 0, %644 ], [ %665, %648 ]
  %650 = getelementptr inbounds %struct.png_color_struct, ptr %640, i64 %649
  %651 = load i8, ptr %650, align 1, !tbaa !65
  %652 = zext i8 %651 to i64
  %653 = getelementptr inbounds i8, ptr %646, i64 %652
  %654 = load i8, ptr %653, align 1, !tbaa !52
  store i8 %654, ptr %650, align 1, !tbaa !65
  %655 = getelementptr inbounds %struct.png_color_struct, ptr %640, i64 %649, i32 1
  %656 = load i8, ptr %655, align 1, !tbaa !67
  %657 = zext i8 %656 to i64
  %658 = getelementptr inbounds i8, ptr %646, i64 %657
  %659 = load i8, ptr %658, align 1, !tbaa !52
  store i8 %659, ptr %655, align 1, !tbaa !67
  %660 = getelementptr inbounds %struct.png_color_struct, ptr %640, i64 %649, i32 2
  %661 = load i8, ptr %660, align 1, !tbaa !68
  %662 = zext i8 %661 to i64
  %663 = getelementptr inbounds i8, ptr %646, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !52
  store i8 %664, ptr %660, align 1, !tbaa !68
  %665 = add nuw nsw i64 %649, 1
  %666 = icmp eq i64 %665, %647
  br i1 %666, label %667, label %648, !llvm.loop !125

667:                                              ; preds = %648, %638
  %668 = and i32 %317, -8321
  store i32 %668, ptr %34, align 4, !tbaa !46
  br label %760

669:                                              ; preds = %309, %305
  %670 = load i32, ptr %34, align 4, !tbaa !46
  %671 = and i32 %670, 128
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %760, label %673

673:                                              ; preds = %669
  %674 = load i8, ptr %86, align 1, !tbaa !93
  %675 = icmp eq i8 %674, 3
  br i1 %675, label %676, label %760

676:                                              ; preds = %673
  %677 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %678 = load i16, ptr %677, align 8, !tbaa !99
  %679 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %680 = load ptr, ptr %679, align 8, !tbaa !86
  %681 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %682 = load i16, ptr %681, align 2, !tbaa !101
  %683 = trunc i16 %682 to i8
  %684 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %685 = load i16, ptr %684, align 4, !tbaa !102
  %686 = trunc i16 %685 to i8
  %687 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %688 = load i16, ptr %687, align 2, !tbaa !103
  %689 = trunc i16 %688 to i8
  %690 = icmp eq i16 %678, 0
  br i1 %690, label %757, label %691

691:                                              ; preds = %676
  %692 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %693 = and i16 %682, 255
  %694 = and i16 %685, 255
  %695 = and i16 %688, 255
  %696 = zext i16 %678 to i64
  br label %697

697:                                              ; preds = %691, %754
  %698 = phi i64 [ 0, %691 ], [ %755, %754 ]
  %699 = load ptr, ptr %692, align 8, !tbaa !105
  %700 = getelementptr inbounds i8, ptr %699, i64 %698
  %701 = load i8, ptr %700, align 1, !tbaa !52
  switch i8 %701, label %706 [
    i8 0, label %702
    i8 -1, label %754
  ]

702:                                              ; preds = %697
  %703 = getelementptr inbounds %struct.png_color_struct, ptr %680, i64 %698
  store i8 %683, ptr %703, align 1, !tbaa.struct !61
  %704 = getelementptr inbounds i8, ptr %703, i64 1
  store i8 %686, ptr %704, align 1, !tbaa.struct !117
  %705 = getelementptr inbounds i8, ptr %703, i64 2
  store i8 %689, ptr %705, align 1, !tbaa.struct !118
  br label %754

706:                                              ; preds = %697
  %707 = getelementptr inbounds %struct.png_color_struct, ptr %680, i64 %698
  %708 = load i8, ptr %707, align 1, !tbaa !65
  %709 = zext i8 %708 to i16
  %710 = zext i8 %701 to i16
  %711 = mul nuw i16 %709, %710
  %712 = xor i8 %701, -1
  %713 = zext i8 %712 to i16
  %714 = mul nuw i16 %693, %713
  %715 = add nuw i16 %714, 128
  %716 = add i16 %715, %711
  %717 = zext i16 %716 to i32
  %718 = lshr i32 %717, 8
  %719 = add nuw nsw i32 %718, %717
  %720 = lshr i32 %719, 8
  %721 = trunc i32 %720 to i8
  store i8 %721, ptr %707, align 1, !tbaa !65
  %722 = getelementptr inbounds %struct.png_color_struct, ptr %680, i64 %698, i32 1
  %723 = load i8, ptr %722, align 1, !tbaa !67
  %724 = zext i8 %723 to i16
  %725 = load i8, ptr %700, align 1, !tbaa !52
  %726 = zext i8 %725 to i16
  %727 = mul nuw i16 %726, %724
  %728 = xor i8 %725, -1
  %729 = zext i8 %728 to i16
  %730 = mul nuw i16 %694, %729
  %731 = add nuw i16 %730, 128
  %732 = add i16 %731, %727
  %733 = zext i16 %732 to i32
  %734 = lshr i32 %733, 8
  %735 = add nuw nsw i32 %734, %733
  %736 = lshr i32 %735, 8
  %737 = trunc i32 %736 to i8
  store i8 %737, ptr %722, align 1, !tbaa !67
  %738 = getelementptr inbounds %struct.png_color_struct, ptr %680, i64 %698, i32 2
  %739 = load i8, ptr %738, align 1, !tbaa !68
  %740 = zext i8 %739 to i16
  %741 = load i8, ptr %700, align 1, !tbaa !52
  %742 = zext i8 %741 to i16
  %743 = mul nuw i16 %742, %740
  %744 = xor i8 %741, -1
  %745 = zext i8 %744 to i16
  %746 = mul nuw i16 %695, %745
  %747 = add nuw i16 %746, 128
  %748 = add i16 %747, %743
  %749 = zext i16 %748 to i32
  %750 = lshr i32 %749, 8
  %751 = add nuw nsw i32 %750, %749
  %752 = lshr i32 %751, 8
  %753 = trunc i32 %752 to i8
  store i8 %753, ptr %738, align 1, !tbaa !68
  br label %754

754:                                              ; preds = %697, %702, %706
  %755 = add nuw nsw i64 %698, 1
  %756 = icmp eq i64 %755, %696
  br i1 %756, label %757, label %697, !llvm.loop !126

757:                                              ; preds = %754, %676
  %758 = load i32, ptr %34, align 4, !tbaa !46
  %759 = and i32 %758, -129
  store i32 %759, ptr %34, align 4, !tbaa !46
  br label %760

760:                                              ; preds = %632, %669, %673, %757, %628, %541, %667, %629
  %761 = load i32, ptr %34, align 4, !tbaa !46
  %762 = and i32 %761, 4104
  %763 = icmp eq i32 %762, 8
  br i1 %763, label %764, label %836

764:                                              ; preds = %760
  %765 = load i8, ptr %86, align 1, !tbaa !93
  %766 = icmp eq i8 %765, 3
  br i1 %766, label %767, label %836

767:                                              ; preds = %764
  %768 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %769 = load i16, ptr %768, align 8, !tbaa !87
  %770 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  %771 = load i8, ptr %770, align 8, !tbaa !127
  %772 = zext i8 %771 to i32
  %773 = sub nsw i32 8, %772
  %774 = and i32 %761, -4105
  store i32 %774, ptr %34, align 4, !tbaa !46
  %775 = add i8 %771, -1
  %776 = icmp ult i8 %775, 7
  %777 = icmp ne i16 %769, 0
  %778 = select i1 %776, i1 %777, i1 false
  br i1 %778, label %779, label %792

779:                                              ; preds = %767
  %780 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %781 = load ptr, ptr %780, align 8, !tbaa !86
  %782 = zext i16 %769 to i64
  br label %783

783:                                              ; preds = %779, %783
  %784 = phi i64 [ 0, %779 ], [ %790, %783 ]
  %785 = getelementptr inbounds %struct.png_color_struct, ptr %781, i64 %784
  %786 = load i8, ptr %785, align 1, !tbaa !65
  %787 = zext i8 %786 to i32
  %788 = lshr i32 %787, %773
  %789 = trunc i32 %788 to i8
  store i8 %789, ptr %785, align 1, !tbaa !65
  %790 = add nuw nsw i64 %784, 1
  %791 = icmp eq i64 %790, %782
  br i1 %791, label %792, label %783, !llvm.loop !128

792:                                              ; preds = %783, %767
  %793 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  %794 = load i8, ptr %793, align 1, !tbaa !129
  %795 = zext i8 %794 to i32
  %796 = sub nsw i32 8, %795
  %797 = add i8 %794, -1
  %798 = icmp ult i8 %797, 7
  %799 = icmp ne i16 %769, 0
  %800 = select i1 %798, i1 %799, i1 false
  br i1 %800, label %801, label %814

801:                                              ; preds = %792
  %802 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %803 = load ptr, ptr %802, align 8, !tbaa !86
  %804 = zext i16 %769 to i64
  br label %805

805:                                              ; preds = %801, %805
  %806 = phi i64 [ 0, %801 ], [ %812, %805 ]
  %807 = getelementptr inbounds %struct.png_color_struct, ptr %803, i64 %806, i32 1
  %808 = load i8, ptr %807, align 1, !tbaa !67
  %809 = zext i8 %808 to i32
  %810 = lshr i32 %809, %796
  %811 = trunc i32 %810 to i8
  store i8 %811, ptr %807, align 1, !tbaa !67
  %812 = add nuw nsw i64 %806, 1
  %813 = icmp eq i64 %812, %804
  br i1 %813, label %814, label %805, !llvm.loop !130

814:                                              ; preds = %805, %792
  %815 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 2
  %816 = load i8, ptr %815, align 2, !tbaa !131
  %817 = zext i8 %816 to i32
  %818 = sub nsw i32 8, %817
  %819 = add i8 %816, -1
  %820 = icmp ult i8 %819, 7
  %821 = icmp ne i16 %769, 0
  %822 = select i1 %820, i1 %821, i1 false
  br i1 %822, label %823, label %836

823:                                              ; preds = %814
  %824 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %825 = load ptr, ptr %824, align 8, !tbaa !86
  %826 = zext i16 %769 to i64
  br label %827

827:                                              ; preds = %823, %827
  %828 = phi i64 [ 0, %823 ], [ %834, %827 ]
  %829 = getelementptr inbounds %struct.png_color_struct, ptr %825, i64 %828, i32 2
  %830 = load i8, ptr %829, align 1, !tbaa !68
  %831 = zext i8 %830 to i32
  %832 = lshr i32 %831, %818
  %833 = trunc i32 %832 to i8
  store i8 %833, ptr %829, align 1, !tbaa !68
  %834 = add nuw nsw i64 %828, 1
  %835 = icmp eq i64 %834, %826
  br i1 %835, label %836, label %827, !llvm.loop !132

836:                                              ; preds = %827, %814, %764, %760
  ret void
}

declare i32 @png_gamma_significant(i32 noundef) local_unnamed_addr #1

declare void @png_build_gamma_table(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @png_reciprocal2(i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @png_gamma_8bit_correct(i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i16 @png_gamma_correct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_read_transform_info(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !133
  %10 = icmp eq i8 %9, 3
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %12 = load i16, ptr %11, align 8, !tbaa !99
  %13 = icmp eq i16 %12, 0
  br i1 %10, label %14, label %17

14:                                               ; preds = %7
  %15 = select i1 %13, i8 2, i8 6
  store i8 %15, ptr %8, align 1, !tbaa !133
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  br label %27

17:                                               ; preds = %7
  %18 = and i32 %4, 33554432
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %19, %13
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = or i8 %9, 4
  store i8 %22, ptr %8, align 1, !tbaa !133
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %25 = load i8, ptr %24, align 4, !tbaa !136
  %26 = icmp ult i8 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %14
  %28 = phi ptr [ %16, %14 ], [ %24, %23 ]
  store i8 8, ptr %28, align 4, !tbaa !136
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  store i16 0, ptr %30, align 2, !tbaa !137
  br label %31

31:                                               ; preds = %29, %2
  %32 = and i32 %4, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 25
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %35, ptr noundef nonnull align 8 dereferenceable(10) %36, i64 10, i1 false), !tbaa.struct !114
  br label %37

37:                                               ; preds = %34, %31
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %39 = load i32, ptr %38, align 4, !tbaa !49
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  store i32 %39, ptr %40, align 4, !tbaa !138
  %41 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %42 = load i8, ptr %41, align 4, !tbaa !136
  %43 = icmp eq i8 %42, 16
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, ptr %3, align 4, !tbaa !46
  %46 = and i32 %45, 67109888
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8 8, ptr %41, align 4, !tbaa !136
  br label %49

49:                                               ; preds = %48, %44, %37
  %50 = load i32, ptr %3, align 4, !tbaa !46
  %51 = and i32 %50, 16384
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %55 = load i8, ptr %54, align 1, !tbaa !133
  %56 = or i8 %55, 2
  store i8 %56, ptr %54, align 1, !tbaa !133
  br label %57

57:                                               ; preds = %53, %49
  %58 = and i32 %50, 6291456
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %62 = load i8, ptr %61, align 1, !tbaa !133
  %63 = and i8 %62, -3
  store i8 %63, ptr %61, align 1, !tbaa !133
  br label %64

64:                                               ; preds = %60, %57
  %65 = and i32 %50, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %69 = load i8, ptr %68, align 1, !tbaa !133
  switch i8 %69, label %78 [
    i8 2, label %70
    i8 6, label %70
  ]

70:                                               ; preds = %67, %67
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  %72 = load ptr, ptr %71, align 8, !tbaa !88
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8, ptr %41, align 4, !tbaa !136
  %76 = icmp eq i8 %75, 8
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8 3, ptr %68, align 1, !tbaa !133
  br label %78

78:                                               ; preds = %67, %70, %74, %77, %64
  %79 = and i32 %50, 512
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load i8, ptr %41, align 4, !tbaa !136
  %83 = icmp eq i8 %82, 8
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %86 = load i8, ptr %85, align 1, !tbaa !133
  %87 = icmp eq i8 %86, 3
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i8 16, ptr %41, align 4, !tbaa !136
  br label %89

89:                                               ; preds = %88, %84, %81, %78
  %90 = and i32 %50, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i8, ptr %41, align 4, !tbaa !136
  %94 = icmp ult i8 %93, 8
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i8 8, ptr %41, align 4, !tbaa !136
  br label %96

96:                                               ; preds = %95, %92, %89
  %97 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %98 = load i8, ptr %97, align 1, !tbaa !133
  %99 = icmp eq i8 %98, 3
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  store i8 1, ptr %101, align 1, !tbaa !139
  br label %108

102:                                              ; preds = %96
  %103 = and i8 %98, 2
  %104 = icmp eq i8 %103, 0
  %105 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  br i1 %104, label %107, label %106

106:                                              ; preds = %102
  store i8 3, ptr %105, align 1, !tbaa !139
  br label %108

107:                                              ; preds = %102
  store i8 1, ptr %105, align 1, !tbaa !139
  br label %108

108:                                              ; preds = %106, %107, %100
  %109 = and i32 %50, 262144
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = and i8 %98, -5
  store i8 %112, ptr %97, align 1, !tbaa !133
  %113 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  store i16 0, ptr %113, align 2, !tbaa !137
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i8, ptr %97, align 1, !tbaa !133
  %116 = and i8 %115, 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %120 = load i8, ptr %119, align 1, !tbaa !139
  %121 = add i8 %120, 1
  store i8 %121, ptr %119, align 1, !tbaa !139
  br label %122

122:                                              ; preds = %118, %114
  %123 = and i32 %50, 32768
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  switch i8 %115, label %134 [
    i8 2, label %126
    i8 0, label %126
  ]

126:                                              ; preds = %125, %125
  %127 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %128 = load i8, ptr %127, align 1, !tbaa !139
  %129 = add i8 %128, 1
  store i8 %129, ptr %127, align 1, !tbaa !139
  %130 = and i32 %50, 16777216
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = or i8 %115, 4
  store i8 %133, ptr %97, align 1, !tbaa !133
  br label %134

134:                                              ; preds = %125, %126, %132, %122
  %135 = and i32 %50, 1048576
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %134
  %138 = load i8, ptr %41, align 4, !tbaa !136
  %139 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  %140 = load i8, ptr %139, align 8, !tbaa !140
  %141 = icmp ult i8 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i8 %140, ptr %41, align 4, !tbaa !136
  br label %143

143:                                              ; preds = %142, %137
  %144 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %145 = load i8, ptr %144, align 1, !tbaa !139
  %146 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  %147 = load i8, ptr %146, align 1, !tbaa !141
  %148 = icmp ult i8 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i8 %147, ptr %144, align 1, !tbaa !139
  br label %150

150:                                              ; preds = %143, %149, %134
  %151 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %152 = load i8, ptr %151, align 1, !tbaa !139
  %153 = load i8, ptr %41, align 4, !tbaa !136
  %154 = mul i8 %153, %152
  %155 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 13
  store i8 %154, ptr %155, align 2, !tbaa !142
  %156 = icmp ugt i8 %154, 7
  %157 = load i32, ptr %1, align 8, !tbaa !143
  %158 = zext i32 %157 to i64
  br i1 %156, label %159, label %163

159:                                              ; preds = %150
  %160 = lshr i8 %154, 3
  %161 = zext nneg i8 %160 to i64
  %162 = mul nuw nsw i64 %158, %161
  br label %168

163:                                              ; preds = %150
  %164 = zext nneg i8 %154 to i64
  %165 = mul nuw nsw i64 %158, %164
  %166 = add nuw nsw i64 %165, 7
  %167 = lshr i64 %166, 3
  br label %168

168:                                              ; preds = %163, %159
  %169 = phi i64 [ %162, %159 ], [ %167, %163 ]
  %170 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 3
  store i64 %169, ptr %170, align 8, !tbaa !144
  %171 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 44
  store i64 %169, ptr %171, align 8, !tbaa !145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_do_read_transformations(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 16448
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.13) #12
  unreachable

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !147
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %4, i64 1
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %29 = load i16, ptr %28, align 8, !tbaa !99
  %30 = zext i16 %29 to i32
  tail call void @png_do_expand_palette(ptr noundef %1, ptr noundef nonnull %23, ptr noundef %25, ptr noundef %27, i32 noundef %30)
  br label %42

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %33 = load i16, ptr %32, align 8, !tbaa !99
  %34 = icmp eq i16 %33, 0
  %35 = and i32 %15, 33554432
  %36 = icmp eq i32 %35, 0
  %37 = or i1 %36, %34
  %38 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %37, label %41, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86
  tail call void @png_do_expand(ptr noundef %1, ptr noundef nonnull %38, ptr noundef nonnull %40)
  br label %42

41:                                               ; preds = %31
  tail call void @png_do_expand(ptr noundef %1, ptr noundef nonnull %38, ptr noundef null)
  br label %42

42:                                               ; preds = %22, %41, %39, %13
  %43 = load i32, ptr %14, align 4, !tbaa !46
  %44 = and i32 %43, 262272
  %45 = icmp eq i32 %44, 262144
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !147
  switch i8 %48, label %52 [
    i8 6, label %49
    i8 4, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = load ptr, ptr %3, align 8, !tbaa !146
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  tail call void @png_do_strip_channel(ptr noundef %1, ptr noundef nonnull %51, i32 noundef 0) #11
  br label %52

52:                                               ; preds = %46, %49, %42
  %53 = load i32, ptr %14, align 4, !tbaa !46
  %54 = and i32 %53, 6291456
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %3, align 8, !tbaa !146
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = tail call i32 @png_do_rgb_to_gray(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %58), !range !149
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 121
  store i8 1, ptr %62, align 1, !tbaa !150
  %63 = load i32, ptr %14, align 4, !tbaa !46
  %64 = and i32 %63, 6291456
  %65 = icmp eq i32 %64, 4194304
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, ptr %14, align 4, !tbaa !46
  %69 = and i32 %68, 6291456
  %70 = icmp eq i32 %69, 2097152
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.14) #12
  unreachable

72:                                               ; preds = %56, %67, %52
  %73 = load i32, ptr %14, align 4, !tbaa !46
  %74 = and i32 %73, 16384
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %78 = load i32, ptr %77, align 4, !tbaa !100
  %79 = and i32 %78, 2048
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load ptr, ptr %3, align 8, !tbaa !146
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  tail call void @png_do_gray_to_rgb(ptr noundef %1, ptr noundef nonnull %83)
  br label %84

84:                                               ; preds = %81, %76, %72
  %85 = load i32, ptr %14, align 4, !tbaa !46
  %86 = and i32 %85, 128
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %3, align 8, !tbaa !146
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  tail call void @png_do_compose(ptr noundef %1, ptr noundef nonnull %90, ptr noundef %0)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, ptr %14, align 4, !tbaa !46
  %93 = and i32 %92, 6299648
  %94 = icmp eq i32 %93, 8192
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = and i32 %92, 128
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %100 = load i16, ptr %99, align 8, !tbaa !99
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %104 = load i8, ptr %103, align 1, !tbaa !93
  %105 = and i8 %104, 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102, %95
  %108 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %109 = load i8, ptr %108, align 1, !tbaa !93
  %110 = icmp eq i8 %109, 3
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %3, align 8, !tbaa !146
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  tail call void @png_do_gamma(ptr noundef %1, ptr noundef nonnull %113, ptr noundef %0)
  br label %114

114:                                              ; preds = %111, %107, %102, %98, %91
  %115 = load i32, ptr %14, align 4, !tbaa !46
  %116 = and i32 %115, 262272
  %117 = icmp eq i32 %116, 262272
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %120 = load i8, ptr %119, align 8, !tbaa !147
  switch i8 %120, label %124 [
    i8 6, label %121
    i8 4, label %121
  ]

121:                                              ; preds = %118, %118
  %122 = load ptr, ptr %3, align 8, !tbaa !146
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  tail call void @png_do_strip_channel(ptr noundef %1, ptr noundef nonnull %123, i32 noundef 0) #11
  br label %124

124:                                              ; preds = %118, %121, %114
  %125 = load i32, ptr %14, align 4, !tbaa !46
  %126 = and i32 %125, 8388608
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %197, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %130 = load i8, ptr %129, align 8, !tbaa !147
  %131 = and i8 %130, 4
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %197, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %3, align 8, !tbaa !146
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  %136 = load i32, ptr %1, align 8, !tbaa !151
  %137 = zext i8 %130 to i32
  %138 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %139 = load i8, ptr %138, align 1, !tbaa !152
  switch i8 %139, label %196 [
    i8 8, label %140
    i8 16, label %162
  ]

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %142 = load ptr, ptr %141, align 8, !tbaa !119
  %143 = icmp eq ptr %142, null
  br i1 %143, label %196, label %144

144:                                              ; preds = %140
  %145 = and i32 %137, 2
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i64 2, i64 4
  %148 = icmp eq i32 %136, 0
  br i1 %148, label %197, label %149

149:                                              ; preds = %144
  %150 = getelementptr i8, ptr %135, i64 %147
  %151 = getelementptr i8, ptr %150, i64 -1
  br label %152

152:                                              ; preds = %152, %149
  %153 = phi ptr [ %160, %152 ], [ %151, %149 ]
  %154 = phi i32 [ %159, %152 ], [ %136, %149 ]
  %155 = load i8, ptr %153, align 1, !tbaa !52
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds i8, ptr %142, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !52
  store i8 %158, ptr %153, align 1, !tbaa !52
  %159 = add i32 %154, -1
  %160 = getelementptr inbounds i8, ptr %153, i64 %147
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %197, label %152, !llvm.loop !153

162:                                              ; preds = %133
  %163 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %164 = load ptr, ptr %163, align 8, !tbaa !154
  %165 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %166 = load i32, ptr %165, align 8, !tbaa !155
  %167 = icmp eq ptr %164, null
  br i1 %167, label %196, label %168

168:                                              ; preds = %162
  %169 = and i32 %137, 2
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i64 4, i64 8
  %172 = icmp eq i32 %136, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %168
  %174 = getelementptr i8, ptr %135, i64 %171
  %175 = getelementptr i8, ptr %174, i64 -2
  br label %176

176:                                              ; preds = %176, %173
  %177 = phi ptr [ %194, %176 ], [ %175, %173 ]
  %178 = phi i32 [ %193, %176 ], [ %136, %173 ]
  %179 = getelementptr inbounds i8, ptr %177, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !52
  %181 = zext i8 %180 to i32
  %182 = lshr i32 %181, %166
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %164, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !74
  %186 = load i8, ptr %177, align 1, !tbaa !52
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds i16, ptr %185, i64 %187
  %189 = load i16, ptr %188, align 2, !tbaa !58
  %190 = lshr i16 %189, 8
  %191 = trunc i16 %190 to i8
  store i8 %191, ptr %177, align 1, !tbaa !52
  %192 = trunc i16 %189 to i8
  store i8 %192, ptr %179, align 1, !tbaa !52
  %193 = add i32 %178, -1
  %194 = getelementptr inbounds i8, ptr %177, i64 %171
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %197, label %176, !llvm.loop !156

196:                                              ; preds = %162, %140, %133
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %197

197:                                              ; preds = %176, %152, %196, %168, %144, %128, %124
  %198 = load i32, ptr %14, align 4, !tbaa !46
  %199 = and i32 %198, 67108864
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %240, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %203 = load i8, ptr %202, align 1, !tbaa !152
  %204 = icmp eq i8 %203, 16
  br i1 %204, label %205, label %240

205:                                              ; preds = %201
  %206 = load ptr, ptr %3, align 8, !tbaa !146
  %207 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %208 = load i64, ptr %207, align 8, !tbaa !157
  %209 = getelementptr i8, ptr %206, i64 %208
  %210 = getelementptr i8, ptr %209, i64 1
  %211 = icmp sgt i64 %208, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %205
  %213 = getelementptr inbounds i8, ptr %206, i64 1
  br label %214

214:                                              ; preds = %212, %214
  %215 = phi ptr [ %220, %214 ], [ %213, %212 ]
  %216 = phi ptr [ %229, %214 ], [ %213, %212 ]
  %217 = getelementptr inbounds i8, ptr %215, i64 1
  %218 = load i8, ptr %215, align 1, !tbaa !52
  %219 = zext i8 %218 to i32
  %220 = getelementptr inbounds i8, ptr %215, i64 2
  %221 = load i8, ptr %217, align 1, !tbaa !52
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 %222, %219
  %224 = mul nsw i32 %223, 65535
  %225 = add nsw i32 %224, 8388480
  %226 = lshr i32 %225, 24
  %227 = trunc i32 %226 to i8
  %228 = add i8 %218, %227
  %229 = getelementptr inbounds i8, ptr %216, i64 1
  store i8 %228, ptr %216, align 1, !tbaa !52
  %230 = icmp ult ptr %220, %210
  br i1 %230, label %214, label %231, !llvm.loop !158

231:                                              ; preds = %214, %205
  store i8 8, ptr %202, align 1, !tbaa !152
  %232 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  %233 = load i8, ptr %232, align 2, !tbaa !159
  %234 = shl i8 %233, 3
  %235 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %234, ptr %235, align 1, !tbaa !160
  %236 = load i32, ptr %1, align 8, !tbaa !151
  %237 = zext i8 %233 to i32
  %238 = mul i32 %236, %237
  %239 = zext i32 %238 to i64
  store i64 %239, ptr %207, align 8, !tbaa !157
  br label %240

240:                                              ; preds = %231, %201, %197
  %241 = load i32, ptr %14, align 4, !tbaa !46
  %242 = and i32 %241, 1024
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %273, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %246 = load i8, ptr %245, align 1, !tbaa !152
  %247 = icmp eq i8 %246, 16
  br i1 %247, label %248, label %273

248:                                              ; preds = %244
  %249 = load ptr, ptr %3, align 8, !tbaa !146
  %250 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !157
  %252 = getelementptr i8, ptr %249, i64 %251
  %253 = getelementptr i8, ptr %252, i64 1
  %254 = icmp sgt i64 %251, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %248
  %256 = getelementptr inbounds i8, ptr %249, i64 1
  br label %257

257:                                              ; preds = %255, %257
  %258 = phi ptr [ %262, %257 ], [ %256, %255 ]
  %259 = phi ptr [ %261, %257 ], [ %256, %255 ]
  %260 = load i8, ptr %258, align 1, !tbaa !52
  %261 = getelementptr inbounds i8, ptr %259, i64 1
  store i8 %260, ptr %259, align 1, !tbaa !52
  %262 = getelementptr inbounds i8, ptr %258, i64 2
  %263 = icmp ult ptr %262, %253
  br i1 %263, label %257, label %264, !llvm.loop !161

264:                                              ; preds = %257, %248
  store i8 8, ptr %245, align 1, !tbaa !152
  %265 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  %266 = load i8, ptr %265, align 2, !tbaa !159
  %267 = shl i8 %266, 3
  %268 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %267, ptr %268, align 1, !tbaa !160
  %269 = load i32, ptr %1, align 8, !tbaa !151
  %270 = zext i8 %266 to i32
  %271 = mul i32 %269, %270
  %272 = zext i32 %271 to i64
  store i64 %272, ptr %250, align 8, !tbaa !157
  br label %273

273:                                              ; preds = %264, %244, %240
  %274 = load i32, ptr %14, align 4, !tbaa !46
  %275 = and i32 %274, 64
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %288, label %277

277:                                              ; preds = %273
  %278 = load ptr, ptr %3, align 8, !tbaa !146
  %279 = getelementptr inbounds i8, ptr %278, i64 1
  %280 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  %281 = load ptr, ptr %280, align 8, !tbaa !88
  %282 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %283 = load ptr, ptr %282, align 8, !tbaa !51
  tail call void @png_do_quantize(ptr noundef %1, ptr noundef nonnull %279, ptr noundef %281, ptr noundef %283)
  %284 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %285 = load i64, ptr %284, align 8, !tbaa !157
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  unreachable

288:                                              ; preds = %277, %273
  %289 = load i32, ptr %14, align 4, !tbaa !46
  %290 = and i32 %289, 512
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %324, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr %3, align 8, !tbaa !146
  %294 = getelementptr inbounds i8, ptr %293, i64 1
  %295 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %296 = load i8, ptr %295, align 1, !tbaa !152
  %297 = icmp eq i8 %296, 8
  br i1 %297, label %298, label %324

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %300 = load i8, ptr %299, align 8, !tbaa !147
  %301 = icmp eq i8 %300, 3
  br i1 %301, label %324, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %304 = load i64, ptr %303, align 8, !tbaa !157
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %317

306:                                              ; preds = %302
  %307 = getelementptr inbounds i8, ptr %294, i64 %304
  %308 = getelementptr inbounds i8, ptr %307, i64 %304
  br label %309

309:                                              ; preds = %306, %309
  %310 = phi ptr [ %315, %309 ], [ %308, %306 ]
  %311 = phi ptr [ %312, %309 ], [ %307, %306 ]
  %312 = getelementptr inbounds i8, ptr %311, i64 -1
  %313 = load i8, ptr %312, align 1, !tbaa !52
  %314 = getelementptr inbounds i8, ptr %310, i64 -1
  store i8 %313, ptr %314, align 1, !tbaa !52
  %315 = getelementptr inbounds i8, ptr %310, i64 -2
  store i8 %313, ptr %315, align 1, !tbaa !52
  %316 = icmp ugt ptr %315, %312
  br i1 %316, label %309, label %317, !llvm.loop !162

317:                                              ; preds = %309, %302
  %318 = load i64, ptr %303, align 8, !tbaa !157
  %319 = shl i64 %318, 1
  store i64 %319, ptr %303, align 8, !tbaa !157
  store i8 16, ptr %295, align 1, !tbaa !152
  %320 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  %321 = load i8, ptr %320, align 2, !tbaa !159
  %322 = shl i8 %321, 4
  %323 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %322, ptr %323, align 1, !tbaa !160
  br label %324

324:                                              ; preds = %317, %298, %292, %288
  %325 = load i32, ptr %14, align 4, !tbaa !46
  %326 = and i32 %325, 16384
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %330 = load i32, ptr %329, align 4, !tbaa !100
  %331 = and i32 %330, 2048
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %328
  %334 = load ptr, ptr %3, align 8, !tbaa !146
  %335 = getelementptr inbounds i8, ptr %334, i64 1
  tail call void @png_do_gray_to_rgb(ptr noundef %1, ptr noundef nonnull %335)
  br label %336

336:                                              ; preds = %333, %328, %324
  %337 = load i32, ptr %14, align 4, !tbaa !46
  %338 = and i32 %337, 32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %336
  %341 = load ptr, ptr %3, align 8, !tbaa !146
  %342 = getelementptr inbounds i8, ptr %341, i64 1
  tail call void @png_do_invert(ptr noundef %1, ptr noundef nonnull %342) #11
  br label %343

343:                                              ; preds = %340, %336
  %344 = load i32, ptr %14, align 4, !tbaa !46
  %345 = and i32 %344, 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %343
  %348 = load ptr, ptr %3, align 8, !tbaa !146
  %349 = getelementptr inbounds i8, ptr %348, i64 1
  %350 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 84
  tail call void @png_do_unshift(ptr noundef %1, ptr noundef nonnull %349, ptr noundef nonnull %350)
  br label %351

351:                                              ; preds = %347, %343
  %352 = load i32, ptr %14, align 4, !tbaa !46
  %353 = and i32 %352, 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = load ptr, ptr %3, align 8, !tbaa !146
  %357 = getelementptr inbounds i8, ptr %356, i64 1
  tail call void @png_do_unpack(ptr noundef %1, ptr noundef nonnull %357)
  br label %358

358:                                              ; preds = %355, %351
  %359 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %360 = load i8, ptr %359, align 8, !tbaa !147
  %361 = icmp eq i8 %360, 3
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  tail call void @png_do_check_palette_indexes(ptr noundef %0, ptr noundef %1) #11
  br label %363

363:                                              ; preds = %362, %358
  %364 = load i32, ptr %14, align 4, !tbaa !46
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %3, align 8, !tbaa !146
  %369 = getelementptr inbounds i8, ptr %368, i64 1
  tail call void @png_do_bgr(ptr noundef %1, ptr noundef nonnull %369) #11
  br label %370

370:                                              ; preds = %367, %363
  %371 = load i32, ptr %14, align 4, !tbaa !46
  %372 = and i32 %371, 65536
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %370
  %375 = load ptr, ptr %3, align 8, !tbaa !146
  %376 = getelementptr inbounds i8, ptr %375, i64 1
  tail call void @png_do_packswap(ptr noundef %1, ptr noundef nonnull %376) #11
  br label %377

377:                                              ; preds = %374, %370
  %378 = load i32, ptr %14, align 4, !tbaa !46
  %379 = and i32 %378, 32768
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %388, label %381

381:                                              ; preds = %377
  %382 = load ptr, ptr %3, align 8, !tbaa !146
  %383 = getelementptr inbounds i8, ptr %382, i64 1
  %384 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 66
  %385 = load i16, ptr %384, align 2, !tbaa !163
  %386 = zext i16 %385 to i32
  %387 = load i32, ptr %8, align 8, !tbaa !34
  tail call void @png_do_read_filler(ptr noundef %1, ptr noundef nonnull %383, i32 noundef %386, i32 noundef %387)
  br label %388

388:                                              ; preds = %381, %377
  %389 = load i32, ptr %14, align 4, !tbaa !46
  %390 = and i32 %389, 524288
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %388
  %393 = load ptr, ptr %3, align 8, !tbaa !146
  %394 = getelementptr inbounds i8, ptr %393, i64 1
  tail call void @png_do_read_invert_alpha(ptr noundef %1, ptr noundef nonnull %394)
  br label %395

395:                                              ; preds = %392, %388
  %396 = load i32, ptr %14, align 4, !tbaa !46
  %397 = and i32 %396, 131072
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %395
  %400 = load ptr, ptr %3, align 8, !tbaa !146
  %401 = getelementptr inbounds i8, ptr %400, i64 1
  tail call void @png_do_read_swap_alpha(ptr noundef %1, ptr noundef nonnull %401)
  br label %402

402:                                              ; preds = %399, %395
  %403 = load i32, ptr %14, align 4, !tbaa !46
  %404 = and i32 %403, 16
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %402
  %407 = load ptr, ptr %3, align 8, !tbaa !146
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  tail call void @png_do_swap(ptr noundef %1, ptr noundef nonnull %408) #11
  br label %409

409:                                              ; preds = %406, %402
  %410 = load i32, ptr %14, align 4, !tbaa !46
  %411 = and i32 %410, 1048576
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %454, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 8
  %415 = load ptr, ptr %414, align 8, !tbaa !97
  %416 = icmp eq ptr %415, null
  br i1 %416, label %420, label %417

417:                                              ; preds = %413
  %418 = load ptr, ptr %3, align 8, !tbaa !146
  %419 = getelementptr inbounds i8, ptr %418, i64 1
  tail call void %415(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %419) #11
  br label %420

420:                                              ; preds = %417, %413
  %421 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  %422 = load i8, ptr %421, align 8, !tbaa !140
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  store i8 %422, ptr %425, align 1, !tbaa !152
  br label %426

426:                                              ; preds = %424, %420
  %427 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  %428 = load i8, ptr %427, align 1, !tbaa !141
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  store i8 %428, ptr %431, align 2, !tbaa !159
  br label %432

432:                                              ; preds = %430, %426
  %433 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %434 = load i8, ptr %433, align 1, !tbaa !152
  %435 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  %436 = load i8, ptr %435, align 2, !tbaa !159
  %437 = mul i8 %436, %434
  %438 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %437, ptr %438, align 1, !tbaa !160
  %439 = icmp ugt i8 %437, 7
  %440 = load i32, ptr %1, align 8, !tbaa !151
  %441 = zext i32 %440 to i64
  br i1 %439, label %442, label %446

442:                                              ; preds = %432
  %443 = lshr i8 %437, 3
  %444 = zext nneg i8 %443 to i64
  %445 = mul nuw nsw i64 %441, %444
  br label %451

446:                                              ; preds = %432
  %447 = zext nneg i8 %437 to i64
  %448 = mul nuw nsw i64 %441, %447
  %449 = add nuw nsw i64 %448, 7
  %450 = lshr i64 %449, 3
  br label %451

451:                                              ; preds = %446, %442
  %452 = phi i64 [ %445, %442 ], [ %450, %446 ]
  %453 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  store i64 %452, ptr %453, align 8, !tbaa !157
  br label %454

454:                                              ; preds = %451, %409
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_expand_palette(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = load i32, ptr %0, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !147
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %10, label %194

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !152
  %13 = icmp ult i8 %12, 8
  br i1 %13, label %14, label %110

14:                                               ; preds = %10
  switch i8 %12, label %106 [
    i8 1, label %15
    i8 2, label %46
    i8 4, label %77
  ]

15:                                               ; preds = %14
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %106, label %17

17:                                               ; preds = %15
  %18 = add i32 %6, 7
  %19 = and i32 %18, 7
  %20 = xor i32 %19, 7
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = add i32 %6, -1
  %24 = lshr i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  br label %27

27:                                               ; preds = %17, %27
  %28 = phi i32 [ %43, %27 ], [ %20, %17 ]
  %29 = phi i32 [ %44, %27 ], [ 0, %17 ]
  %30 = phi ptr [ %32, %27 ], [ %22, %17 ]
  %31 = phi ptr [ %42, %27 ], [ %26, %17 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 -1
  %33 = load i8, ptr %31, align 1, !tbaa !52
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %28
  %36 = and i32 %35, %34
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %32, align 1, !tbaa !52
  %39 = icmp eq i32 %28, 7
  %40 = add nuw nsw i32 %28, 1
  %41 = sext i1 %39 to i64
  %42 = getelementptr inbounds i8, ptr %31, i64 %41
  %43 = select i1 %39, i32 0, i32 %40
  %44 = add nuw i32 %29, 1
  %45 = icmp eq i32 %44, %6
  br i1 %45, label %106, label %27, !llvm.loop !164

46:                                               ; preds = %14
  %47 = icmp eq i32 %6, 0
  br i1 %47, label %106, label %48

48:                                               ; preds = %46
  %49 = shl i32 %6, 1
  %50 = add i32 %49, 6
  %51 = and i32 %50, 6
  %52 = xor i32 %51, 6
  %53 = zext i32 %6 to i64
  %54 = getelementptr inbounds i8, ptr %1, i64 %53
  %55 = add i32 %6, -1
  %56 = lshr i32 %55, 2
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  br label %59

59:                                               ; preds = %48, %59
  %60 = phi i32 [ %74, %59 ], [ %52, %48 ]
  %61 = phi i32 [ %75, %59 ], [ 0, %48 ]
  %62 = phi ptr [ %64, %59 ], [ %54, %48 ]
  %63 = phi ptr [ %73, %59 ], [ %58, %48 ]
  %64 = getelementptr inbounds i8, ptr %62, i64 -1
  %65 = load i8, ptr %63, align 1, !tbaa !52
  %66 = zext i8 %65 to i32
  %67 = lshr i32 %66, %60
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 3
  store i8 %69, ptr %64, align 1, !tbaa !52
  %70 = icmp eq i32 %60, 6
  %71 = add nsw i32 %60, 2
  %72 = sext i1 %70 to i64
  %73 = getelementptr inbounds i8, ptr %63, i64 %72
  %74 = select i1 %70, i32 0, i32 %71
  %75 = add nuw i32 %61, 1
  %76 = icmp eq i32 %75, %6
  br i1 %76, label %106, label %59, !llvm.loop !165

77:                                               ; preds = %14
  %78 = icmp eq i32 %6, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %77
  %80 = shl i32 %6, 2
  %81 = and i32 %80, 4
  %82 = zext i32 %6 to i64
  %83 = getelementptr inbounds i8, ptr %1, i64 %82
  %84 = add i32 %6, -1
  %85 = lshr i32 %84, 1
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %1, i64 %86
  br label %88

88:                                               ; preds = %79, %88
  %89 = phi i32 [ %103, %88 ], [ %81, %79 ]
  %90 = phi i32 [ %104, %88 ], [ 0, %79 ]
  %91 = phi ptr [ %93, %88 ], [ %83, %79 ]
  %92 = phi ptr [ %102, %88 ], [ %87, %79 ]
  %93 = getelementptr inbounds i8, ptr %91, i64 -1
  %94 = load i8, ptr %92, align 1, !tbaa !52
  %95 = zext i8 %94 to i32
  %96 = lshr i32 %95, %89
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 15
  store i8 %98, ptr %93, align 1, !tbaa !52
  %99 = icmp eq i32 %89, 4
  %100 = add nsw i32 %89, 4
  %101 = sext i1 %99 to i64
  %102 = getelementptr inbounds i8, ptr %92, i64 %101
  %103 = select i1 %99, i32 0, i32 %100
  %104 = add nuw i32 %90, 1
  %105 = icmp eq i32 %104, %6
  br i1 %105, label %106, label %88, !llvm.loop !166

106:                                              ; preds = %88, %59, %27, %77, %46, %15, %14
  store i8 8, ptr %11, align 1, !tbaa !152
  %107 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 8, ptr %107, align 1, !tbaa !160
  %108 = zext i32 %6 to i64
  %109 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %108, ptr %109, align 8, !tbaa !157
  br label %110

110:                                              ; preds = %106, %10
  %111 = load i8, ptr %11, align 1, !tbaa !152
  %112 = icmp eq i8 %111, 8
  br i1 %112, label %113, label %194

113:                                              ; preds = %110
  %114 = icmp sgt i32 %4, 0
  %115 = icmp eq i32 %6, 0
  br i1 %114, label %116, label %156

116:                                              ; preds = %113
  %117 = shl i32 %6, 2
  %118 = zext i32 %117 to i64
  br i1 %115, label %186, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, ptr %1, i64 %118
  %121 = getelementptr inbounds i8, ptr %120, i64 -1
  %122 = zext i32 %6 to i64
  %123 = getelementptr inbounds i8, ptr %1, i64 %122
  br label %124

124:                                              ; preds = %119, %136
  %125 = phi ptr [ %128, %136 ], [ %123, %119 ]
  %126 = phi i32 [ %154, %136 ], [ 0, %119 ]
  %127 = phi ptr [ %153, %136 ], [ %121, %119 ]
  %128 = getelementptr inbounds i8, ptr %125, i64 -1
  %129 = load i8, ptr %128, align 1, !tbaa !52
  %130 = zext i8 %129 to i32
  %131 = icmp slt i32 %130, %4
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = zext i8 %129 to i64
  %134 = getelementptr inbounds i8, ptr %3, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !52
  br label %136

136:                                              ; preds = %124, %132
  %137 = phi i8 [ %135, %132 ], [ -1, %124 ]
  %138 = getelementptr inbounds i8, ptr %127, i64 -1
  store i8 %137, ptr %127, align 1, !tbaa !52
  %139 = load i8, ptr %128, align 1, !tbaa !52
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %140, i32 2
  %142 = load i8, ptr %141, align 1, !tbaa !68
  %143 = getelementptr inbounds i8, ptr %127, i64 -2
  store i8 %142, ptr %138, align 1, !tbaa !52
  %144 = load i8, ptr %128, align 1, !tbaa !52
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %145, i32 1
  %147 = load i8, ptr %146, align 1, !tbaa !67
  %148 = getelementptr inbounds i8, ptr %127, i64 -3
  store i8 %147, ptr %143, align 1, !tbaa !52
  %149 = load i8, ptr %128, align 1, !tbaa !52
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !65
  %153 = getelementptr inbounds i8, ptr %127, i64 -4
  store i8 %152, ptr %148, align 1, !tbaa !52
  %154 = add nuw i32 %126, 1
  %155 = icmp eq i32 %154, %6
  br i1 %155, label %186, label %124, !llvm.loop !167

156:                                              ; preds = %113
  %157 = mul i32 %6, 3
  %158 = zext i32 %157 to i64
  br i1 %115, label %186, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds i8, ptr %1, i64 %158
  %161 = getelementptr inbounds i8, ptr %160, i64 -1
  %162 = zext i32 %6 to i64
  %163 = getelementptr inbounds i8, ptr %1, i64 %162
  br label %164

164:                                              ; preds = %159, %164
  %165 = phi i32 [ %184, %164 ], [ 0, %159 ]
  %166 = phi ptr [ %183, %164 ], [ %161, %159 ]
  %167 = phi ptr [ %168, %164 ], [ %163, %159 ]
  %168 = getelementptr inbounds i8, ptr %167, i64 -1
  %169 = load i8, ptr %168, align 1, !tbaa !52
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %170, i32 2
  %172 = load i8, ptr %171, align 1, !tbaa !68
  %173 = getelementptr inbounds i8, ptr %166, i64 -1
  store i8 %172, ptr %166, align 1, !tbaa !52
  %174 = load i8, ptr %168, align 1, !tbaa !52
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %175, i32 1
  %177 = load i8, ptr %176, align 1, !tbaa !67
  %178 = getelementptr inbounds i8, ptr %166, i64 -2
  store i8 %177, ptr %173, align 1, !tbaa !52
  %179 = load i8, ptr %168, align 1, !tbaa !52
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !65
  %183 = getelementptr inbounds i8, ptr %166, i64 -3
  store i8 %182, ptr %178, align 1, !tbaa !52
  %184 = add nuw i32 %165, 1
  %185 = icmp eq i32 %184, %6
  br i1 %185, label %186, label %164, !llvm.loop !168

186:                                              ; preds = %164, %136, %156, %116
  %187 = phi i8 [ 32, %116 ], [ 24, %156 ], [ 32, %136 ], [ 24, %164 ]
  %188 = phi i64 [ %118, %116 ], [ %158, %156 ], [ %118, %136 ], [ %158, %164 ]
  %189 = phi i8 [ 6, %116 ], [ 2, %156 ], [ 6, %136 ], [ 2, %164 ]
  %190 = phi i8 [ 4, %116 ], [ 3, %156 ], [ 4, %136 ], [ 3, %164 ]
  store i8 8, ptr %11, align 1, !tbaa !152
  %191 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %187, ptr %191, align 1, !tbaa !160
  %192 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %188, ptr %192, align 8, !tbaa !157
  store i8 %189, ptr %7, align 8, !tbaa !147
  %193 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 %190, ptr %193, align 2, !tbaa !159
  br label %194

194:                                              ; preds = %186, %110, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_expand(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #8 {
  %4 = load i32, ptr %0, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !147
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %202

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !169
  br label %13

13:                                               ; preds = %8, %10
  %14 = phi i16 [ %12, %10 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !152
  %17 = icmp ult i8 %16, 8
  br i1 %17, label %18, label %124

18:                                               ; preds = %13
  switch i8 %16, label %119 [
    i8 1, label %19
    i8 2, label %53
    i8 4, label %87
  ]

19:                                               ; preds = %18
  %20 = and i16 %14, 1
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %21, i16 0, i16 255
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %119, label %24

24:                                               ; preds = %19
  %25 = add i32 %4, 7
  %26 = and i32 %25, 7
  %27 = xor i32 %26, 7
  %28 = zext i32 %4 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = add i32 %4, -1
  %31 = lshr i32 %30, 3
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %1, i64 %32
  br label %34

34:                                               ; preds = %24, %34
  %35 = phi i32 [ %50, %34 ], [ %27, %24 ]
  %36 = phi ptr [ %49, %34 ], [ %33, %24 ]
  %37 = phi ptr [ %39, %34 ], [ %29, %24 ]
  %38 = phi i32 [ %51, %34 ], [ 0, %24 ]
  %39 = getelementptr inbounds i8, ptr %37, i64 -1
  %40 = load i8, ptr %36, align 1, !tbaa !52
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 1, %35
  %43 = and i32 %42, %41
  %44 = icmp ne i32 %43, 0
  %45 = sext i1 %44 to i8
  store i8 %45, ptr %39, align 1, !tbaa !52
  %46 = icmp eq i32 %35, 7
  %47 = add nuw nsw i32 %35, 1
  %48 = sext i1 %46 to i64
  %49 = getelementptr inbounds i8, ptr %36, i64 %48
  %50 = select i1 %46, i32 0, i32 %47
  %51 = add nuw i32 %38, 1
  %52 = icmp eq i32 %51, %4
  br i1 %52, label %119, label %34, !llvm.loop !170

53:                                               ; preds = %18
  %54 = and i16 %14, 3
  %55 = mul nuw nsw i16 %54, 85
  %56 = icmp eq i32 %4, 0
  br i1 %56, label %119, label %57

57:                                               ; preds = %53
  %58 = shl i32 %4, 1
  %59 = add i32 %58, 6
  %60 = and i32 %59, 6
  %61 = xor i32 %60, 6
  %62 = zext i32 %4 to i64
  %63 = getelementptr inbounds i8, ptr %1, i64 %62
  %64 = add i32 %4, -1
  %65 = lshr i32 %64, 2
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %1, i64 %66
  br label %68

68:                                               ; preds = %57, %68
  %69 = phi i32 [ %84, %68 ], [ %61, %57 ]
  %70 = phi ptr [ %83, %68 ], [ %67, %57 ]
  %71 = phi ptr [ %73, %68 ], [ %63, %57 ]
  %72 = phi i32 [ %85, %68 ], [ 0, %57 ]
  %73 = getelementptr inbounds i8, ptr %71, i64 -1
  %74 = load i8, ptr %70, align 1, !tbaa !52
  %75 = zext i8 %74 to i32
  %76 = lshr i32 %75, %69
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 3
  %79 = mul nuw i8 %78, 85
  store i8 %79, ptr %73, align 1, !tbaa !52
  %80 = icmp eq i32 %69, 6
  %81 = add nsw i32 %69, 2
  %82 = sext i1 %80 to i64
  %83 = getelementptr inbounds i8, ptr %70, i64 %82
  %84 = select i1 %80, i32 0, i32 %81
  %85 = add nuw i32 %72, 1
  %86 = icmp eq i32 %85, %4
  br i1 %86, label %119, label %68, !llvm.loop !171

87:                                               ; preds = %18
  %88 = and i16 %14, 15
  %89 = mul nuw nsw i16 %88, 17
  %90 = icmp eq i32 %4, 0
  br i1 %90, label %119, label %91

91:                                               ; preds = %87
  %92 = shl i32 %4, 2
  %93 = and i32 %92, 4
  %94 = zext i32 %4 to i64
  %95 = getelementptr inbounds i8, ptr %1, i64 %94
  %96 = add i32 %4, -1
  %97 = lshr i32 %96, 1
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %1, i64 %98
  br label %100

100:                                              ; preds = %91, %100
  %101 = phi i32 [ %116, %100 ], [ %93, %91 ]
  %102 = phi ptr [ %115, %100 ], [ %99, %91 ]
  %103 = phi ptr [ %105, %100 ], [ %95, %91 ]
  %104 = phi i32 [ %117, %100 ], [ 0, %91 ]
  %105 = getelementptr inbounds i8, ptr %103, i64 -1
  %106 = load i8, ptr %102, align 1, !tbaa !52
  %107 = zext i8 %106 to i32
  %108 = lshr i32 %107, %101
  %109 = and i32 %108, 15
  %110 = shl nuw nsw i32 %108, 4
  %111 = or disjoint i32 %109, %110
  %112 = trunc i32 %111 to i8
  store i8 %112, ptr %105, align 1, !tbaa !52
  %113 = icmp ne i32 %101, 0
  %114 = sext i1 %113 to i64
  %115 = getelementptr inbounds i8, ptr %102, i64 %114
  %116 = select i1 %113, i32 0, i32 4
  %117 = add nuw i32 %104, 1
  %118 = icmp eq i32 %117, %4
  br i1 %118, label %119, label %100, !llvm.loop !172

119:                                              ; preds = %100, %68, %34, %87, %53, %19, %18
  %120 = phi i16 [ %14, %18 ], [ %22, %19 ], [ %55, %53 ], [ %89, %87 ], [ %22, %34 ], [ %55, %68 ], [ %89, %100 ]
  store i8 8, ptr %15, align 1, !tbaa !152
  %121 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 8, ptr %121, align 1, !tbaa !160
  %122 = zext i32 %4 to i64
  %123 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %122, ptr %123, align 8, !tbaa !157
  br label %124

124:                                              ; preds = %119, %13
  %125 = phi i16 [ %120, %119 ], [ %14, %13 ]
  br i1 %9, label %352, label %126

126:                                              ; preds = %124
  %127 = load i8, ptr %15, align 1, !tbaa !152
  switch i8 %127, label %186 [
    i8 8, label %128
    i8 16, label %151
  ]

128:                                              ; preds = %126
  %129 = icmp eq i32 %4, 0
  br i1 %129, label %186, label %130

130:                                              ; preds = %128
  %131 = shl i32 %4, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %1, i64 %132
  %134 = getelementptr inbounds i8, ptr %133, i64 -1
  %135 = zext i32 %4 to i64
  %136 = getelementptr inbounds i8, ptr %1, i64 %135
  %137 = trunc i16 %125 to i8
  br label %138

138:                                              ; preds = %130, %138
  %139 = phi ptr [ %136, %130 ], [ %142, %138 ]
  %140 = phi ptr [ %134, %130 ], [ %148, %138 ]
  %141 = phi i32 [ 0, %130 ], [ %149, %138 ]
  %142 = getelementptr inbounds i8, ptr %139, i64 -1
  %143 = load i8, ptr %142, align 1, !tbaa !52
  %144 = icmp ne i8 %143, %137
  %145 = sext i1 %144 to i8
  %146 = getelementptr inbounds i8, ptr %140, i64 -1
  store i8 %145, ptr %140, align 1, !tbaa !52
  %147 = load i8, ptr %142, align 1, !tbaa !52
  %148 = getelementptr inbounds i8, ptr %140, i64 -2
  store i8 %147, ptr %146, align 1, !tbaa !52
  %149 = add nuw i32 %141, 1
  %150 = icmp eq i32 %149, %4
  br i1 %150, label %186, label %138, !llvm.loop !173

151:                                              ; preds = %126
  %152 = lshr i16 %125, 8
  %153 = icmp eq i32 %4, 0
  br i1 %153, label %186, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !157
  %157 = shl i64 %156, 1
  %158 = getelementptr inbounds i8, ptr %1, i64 %157
  %159 = getelementptr inbounds i8, ptr %158, i64 -1
  %160 = getelementptr inbounds i8, ptr %1, i64 %156
  %161 = getelementptr inbounds i8, ptr %160, i64 -1
  %162 = trunc i16 %125 to i8
  br label %163

163:                                              ; preds = %154, %175
  %164 = phi ptr [ %161, %154 ], [ %181, %175 ]
  %165 = phi ptr [ %159, %154 ], [ %183, %175 ]
  %166 = phi i32 [ 0, %154 ], [ %184, %175 ]
  %167 = getelementptr inbounds i8, ptr %164, i64 -1
  %168 = load i8, ptr %167, align 1, !tbaa !52
  %169 = zext i8 %168 to i16
  %170 = icmp eq i16 %152, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load i8, ptr %164, align 1, !tbaa !52
  %173 = icmp eq i8 %172, %162
  br i1 %173, label %175, label %174

174:                                              ; preds = %171, %163
  br label %175

175:                                              ; preds = %171, %174
  %176 = phi i8 [ -1, %174 ], [ 0, %171 ]
  %177 = getelementptr inbounds i8, ptr %165, i64 -1
  store i8 %176, ptr %165, align 1, !tbaa !52
  store i8 %176, ptr %177, align 1, !tbaa !52
  %178 = getelementptr inbounds i8, ptr %165, i64 -2
  %179 = load i8, ptr %164, align 1, !tbaa !52
  %180 = getelementptr inbounds i8, ptr %165, i64 -3
  store i8 %179, ptr %178, align 1, !tbaa !52
  %181 = getelementptr inbounds i8, ptr %164, i64 -2
  %182 = load i8, ptr %167, align 1, !tbaa !52
  %183 = getelementptr inbounds i8, ptr %165, i64 -4
  store i8 %182, ptr %180, align 1, !tbaa !52
  %184 = add nuw i32 %166, 1
  %185 = icmp eq i32 %184, %4
  br i1 %185, label %186, label %163, !llvm.loop !174

186:                                              ; preds = %175, %138, %151, %128, %126
  store i8 4, ptr %5, align 8, !tbaa !147
  %187 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 2, ptr %187, align 2, !tbaa !159
  %188 = load i8, ptr %15, align 1, !tbaa !152
  %189 = shl i8 %188, 1
  %190 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %189, ptr %190, align 1, !tbaa !160
  %191 = icmp ugt i8 %189, 7
  %192 = zext i32 %4 to i64
  br i1 %191, label %193, label %197

193:                                              ; preds = %186
  %194 = lshr i8 %189, 3
  %195 = zext nneg i8 %194 to i64
  %196 = mul nuw nsw i64 %195, %192
  br label %349

197:                                              ; preds = %186
  %198 = zext nneg i8 %189 to i64
  %199 = mul nuw nsw i64 %198, %192
  %200 = add nuw nsw i64 %199, 7
  %201 = lshr i64 %200, 3
  br label %349

202:                                              ; preds = %3
  %203 = icmp eq i8 %6, 2
  %204 = icmp ne ptr %2, null
  %205 = and i1 %204, %203
  br i1 %205, label %206, label %352

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %208 = load i8, ptr %207, align 1, !tbaa !152
  switch i8 %208, label %333 [
    i8 8, label %209
    i8 16, label %257
  ]

209:                                              ; preds = %206
  %210 = icmp eq i32 %4, 0
  br i1 %210, label %333, label %211

211:                                              ; preds = %209
  %212 = shl i32 %4, 2
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %1, i64 %213
  %215 = getelementptr inbounds i8, ptr %214, i64 -1
  %216 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !157
  %218 = getelementptr inbounds i8, ptr %1, i64 %217
  %219 = getelementptr inbounds i8, ptr %218, i64 -1
  %220 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 3
  %221 = load i16, ptr %220, align 2, !tbaa !175
  %222 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 2
  %223 = load i16, ptr %222, align 2, !tbaa !176
  %224 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 1
  %225 = load i16, ptr %224, align 2, !tbaa !177
  %226 = trunc i16 %225 to i8
  %227 = trunc i16 %223 to i8
  %228 = trunc i16 %221 to i8
  br label %229

229:                                              ; preds = %211, %244
  %230 = phi ptr [ %219, %211 ], [ %252, %244 ]
  %231 = phi ptr [ %215, %211 ], [ %254, %244 ]
  %232 = phi i32 [ 0, %211 ], [ %255, %244 ]
  %233 = getelementptr inbounds i8, ptr %230, i64 -2
  %234 = load i8, ptr %233, align 1, !tbaa !52
  %235 = icmp eq i8 %234, %226
  br i1 %235, label %236, label %243

236:                                              ; preds = %229
  %237 = getelementptr inbounds i8, ptr %230, i64 -1
  %238 = load i8, ptr %237, align 1, !tbaa !52
  %239 = icmp eq i8 %238, %227
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i8, ptr %230, align 1, !tbaa !52
  %242 = icmp eq i8 %241, %228
  br i1 %242, label %244, label %243

243:                                              ; preds = %240, %236, %229
  br label %244

244:                                              ; preds = %240, %243
  %245 = phi i8 [ -1, %243 ], [ 0, %240 ]
  %246 = getelementptr inbounds i8, ptr %231, i64 -1
  store i8 %245, ptr %231, align 1, !tbaa !52
  %247 = getelementptr inbounds i8, ptr %230, i64 -1
  %248 = load i8, ptr %230, align 1, !tbaa !52
  %249 = getelementptr inbounds i8, ptr %231, i64 -2
  store i8 %248, ptr %246, align 1, !tbaa !52
  %250 = load i8, ptr %247, align 1, !tbaa !52
  %251 = getelementptr inbounds i8, ptr %231, i64 -3
  store i8 %250, ptr %249, align 1, !tbaa !52
  %252 = getelementptr inbounds i8, ptr %230, i64 -3
  %253 = load i8, ptr %233, align 1, !tbaa !52
  %254 = getelementptr inbounds i8, ptr %231, i64 -4
  store i8 %253, ptr %251, align 1, !tbaa !52
  %255 = add nuw i32 %232, 1
  %256 = icmp eq i32 %255, %4
  br i1 %256, label %333, label %229, !llvm.loop !178

257:                                              ; preds = %206
  %258 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 1
  %259 = load i16, ptr %258, align 2, !tbaa !177
  %260 = lshr i16 %259, 8
  %261 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 2
  %262 = load i16, ptr %261, align 2, !tbaa !176
  %263 = lshr i16 %262, 8
  %264 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 3
  %265 = load i16, ptr %264, align 2, !tbaa !175
  %266 = lshr i16 %265, 8
  %267 = icmp eq i32 %4, 0
  br i1 %267, label %333, label %268

268:                                              ; preds = %257
  %269 = shl i32 %4, 3
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %1, i64 %270
  %272 = getelementptr inbounds i8, ptr %271, i64 -1
  %273 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !157
  %275 = getelementptr inbounds i8, ptr %1, i64 %274
  %276 = getelementptr inbounds i8, ptr %275, i64 -1
  %277 = trunc i16 %259 to i8
  %278 = trunc i16 %262 to i8
  %279 = trunc i16 %265 to i8
  br label %280

280:                                              ; preds = %268, %310
  %281 = phi ptr [ %276, %268 ], [ %328, %310 ]
  %282 = phi ptr [ %272, %268 ], [ %330, %310 ]
  %283 = phi i32 [ 0, %268 ], [ %331, %310 ]
  %284 = getelementptr inbounds i8, ptr %281, i64 -5
  %285 = load i8, ptr %284, align 1, !tbaa !52
  %286 = zext i8 %285 to i16
  %287 = icmp eq i16 %260, %286
  br i1 %287, label %288, label %309

288:                                              ; preds = %280
  %289 = getelementptr inbounds i8, ptr %281, i64 -4
  %290 = load i8, ptr %289, align 1, !tbaa !52
  %291 = icmp eq i8 %290, %277
  br i1 %291, label %292, label %309

292:                                              ; preds = %288
  %293 = getelementptr inbounds i8, ptr %281, i64 -3
  %294 = load i8, ptr %293, align 1, !tbaa !52
  %295 = zext i8 %294 to i16
  %296 = icmp eq i16 %263, %295
  br i1 %296, label %297, label %309

297:                                              ; preds = %292
  %298 = getelementptr inbounds i8, ptr %281, i64 -2
  %299 = load i8, ptr %298, align 1, !tbaa !52
  %300 = icmp eq i8 %299, %278
  br i1 %300, label %301, label %309

301:                                              ; preds = %297
  %302 = getelementptr inbounds i8, ptr %281, i64 -1
  %303 = load i8, ptr %302, align 1, !tbaa !52
  %304 = zext i8 %303 to i16
  %305 = icmp eq i16 %266, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load i8, ptr %281, align 1, !tbaa !52
  %308 = icmp eq i8 %307, %279
  br i1 %308, label %310, label %309

309:                                              ; preds = %306, %301, %297, %292, %288, %280
  br label %310

310:                                              ; preds = %306, %309
  %311 = phi i8 [ -1, %309 ], [ 0, %306 ]
  %312 = getelementptr inbounds i8, ptr %282, i64 -1
  store i8 %311, ptr %282, align 1, !tbaa !52
  store i8 %311, ptr %312, align 1, !tbaa !52
  %313 = getelementptr inbounds i8, ptr %282, i64 -2
  %314 = getelementptr inbounds i8, ptr %281, i64 -1
  %315 = load i8, ptr %281, align 1, !tbaa !52
  %316 = getelementptr inbounds i8, ptr %282, i64 -3
  store i8 %315, ptr %313, align 1, !tbaa !52
  %317 = getelementptr inbounds i8, ptr %281, i64 -2
  %318 = load i8, ptr %314, align 1, !tbaa !52
  %319 = getelementptr inbounds i8, ptr %282, i64 -4
  store i8 %318, ptr %316, align 1, !tbaa !52
  %320 = getelementptr inbounds i8, ptr %281, i64 -3
  %321 = load i8, ptr %317, align 1, !tbaa !52
  %322 = getelementptr inbounds i8, ptr %282, i64 -5
  store i8 %321, ptr %319, align 1, !tbaa !52
  %323 = getelementptr inbounds i8, ptr %281, i64 -4
  %324 = load i8, ptr %320, align 1, !tbaa !52
  %325 = getelementptr inbounds i8, ptr %282, i64 -6
  store i8 %324, ptr %322, align 1, !tbaa !52
  %326 = load i8, ptr %323, align 1, !tbaa !52
  %327 = getelementptr inbounds i8, ptr %282, i64 -7
  store i8 %326, ptr %325, align 1, !tbaa !52
  %328 = getelementptr inbounds i8, ptr %281, i64 -6
  %329 = load i8, ptr %284, align 1, !tbaa !52
  %330 = getelementptr inbounds i8, ptr %282, i64 -8
  store i8 %329, ptr %327, align 1, !tbaa !52
  %331 = add nuw i32 %283, 1
  %332 = icmp eq i32 %331, %4
  br i1 %332, label %333, label %280, !llvm.loop !179

333:                                              ; preds = %310, %244, %257, %209, %206
  store i8 6, ptr %5, align 8, !tbaa !147
  %334 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 4, ptr %334, align 2, !tbaa !159
  %335 = load i8, ptr %207, align 1, !tbaa !152
  %336 = shl i8 %335, 2
  %337 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %336, ptr %337, align 1, !tbaa !160
  %338 = icmp ugt i8 %336, 7
  %339 = zext i32 %4 to i64
  br i1 %338, label %340, label %344

340:                                              ; preds = %333
  %341 = lshr i8 %336, 3
  %342 = zext nneg i8 %341 to i64
  %343 = mul nuw nsw i64 %342, %339
  br label %349

344:                                              ; preds = %333
  %345 = zext nneg i8 %336 to i64
  %346 = mul nuw nsw i64 %345, %339
  %347 = add nuw nsw i64 %346, 7
  %348 = lshr i64 %347, 3
  br label %349

349:                                              ; preds = %340, %344, %193, %197
  %350 = phi i64 [ %196, %193 ], [ %201, %197 ], [ %343, %340 ], [ %348, %344 ]
  %351 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %350, ptr %351, align 8, !tbaa !157
  br label %352

352:                                              ; preds = %349, %124, %202
  ret void
}

declare void @png_do_strip_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @png_do_rgb_to_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !147
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %351

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  %11 = load i16, ptr %10, align 4, !tbaa !94
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  %14 = load i16, ptr %13, align 2, !tbaa !95
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = sub nsw i32 32768, %16
  %18 = load i32, ptr %1, align 8, !tbaa !151
  %19 = and i32 %6, 4
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !152
  %23 = icmp eq i8 %22, 8
  br i1 %23, label %24, label %137

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = icmp eq ptr %26, null
  br i1 %27, label %97, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %18, 0
  br i1 %33, label %327, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  br label %36

36:                                               ; preds = %34, %92
  %37 = phi i32 [ 0, %34 ], [ %86, %92 ]
  %38 = phi ptr [ %2, %34 ], [ %94, %92 ]
  %39 = phi ptr [ %2, %34 ], [ %93, %92 ]
  %40 = phi i32 [ 0, %34 ], [ %95, %92 ]
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %38, align 1, !tbaa !52
  %43 = getelementptr inbounds i8, ptr %38, i64 2
  %44 = load i8, ptr %41, align 1, !tbaa !52
  %45 = getelementptr inbounds i8, ptr %38, i64 3
  %46 = load i8, ptr %43, align 1, !tbaa !52
  %47 = icmp eq i8 %42, %44
  %48 = icmp eq i8 %42, %46
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %74, label %50

50:                                               ; preds = %36
  %51 = load ptr, ptr %29, align 8, !tbaa !116
  %52 = zext i8 %42 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !52
  %55 = zext i8 %44 to i64
  %56 = getelementptr inbounds i8, ptr %51, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !52
  %58 = zext i8 %46 to i64
  %59 = getelementptr inbounds i8, ptr %51, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !52
  %61 = load ptr, ptr %25, align 8, !tbaa !119
  %62 = zext i8 %54 to i32
  %63 = mul nuw nsw i32 %62, %12
  %64 = zext i8 %57 to i32
  %65 = mul nuw nsw i32 %64, %15
  %66 = zext i8 %60 to i32
  %67 = mul nsw i32 %17, %66
  %68 = add nuw nsw i32 %63, 16384
  %69 = add nuw nsw i32 %68, %65
  %70 = add nsw i32 %69, %67
  %71 = lshr i32 %70, 15
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %61, i64 %72
  br label %80

74:                                               ; preds = %36
  %75 = load ptr, ptr %35, align 8, !tbaa !115
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = zext i8 %42 to i64
  %79 = getelementptr inbounds i8, ptr %75, i64 %78
  br label %80

80:                                               ; preds = %50, %77
  %81 = phi ptr [ %79, %77 ], [ %73, %50 ]
  %82 = phi i32 [ %37, %77 ], [ 1, %50 ]
  %83 = load i8, ptr %81, align 1, !tbaa !52
  br label %84

84:                                               ; preds = %80, %74
  %85 = phi i8 [ %42, %74 ], [ %83, %80 ]
  %86 = phi i32 [ %37, %74 ], [ %82, %80 ]
  %87 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %85, ptr %39, align 1, !tbaa !52
  br i1 %20, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %38, i64 4
  %90 = load i8, ptr %45, align 1, !tbaa !52
  %91 = getelementptr inbounds i8, ptr %39, i64 2
  store i8 %90, ptr %87, align 1, !tbaa !52
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi ptr [ %91, %88 ], [ %87, %84 ]
  %94 = phi ptr [ %89, %88 ], [ %45, %84 ]
  %95 = add nuw i32 %40, 1
  %96 = icmp eq i32 %95, %18
  br i1 %96, label %327, label %36, !llvm.loop !180

97:                                               ; preds = %28, %24
  %98 = icmp eq i32 %18, 0
  br i1 %98, label %327, label %99

99:                                               ; preds = %97, %132
  %100 = phi i32 [ %126, %132 ], [ 0, %97 ]
  %101 = phi ptr [ %134, %132 ], [ %2, %97 ]
  %102 = phi ptr [ %133, %132 ], [ %2, %97 ]
  %103 = phi i32 [ %135, %132 ], [ 0, %97 ]
  %104 = getelementptr inbounds i8, ptr %101, i64 1
  %105 = load i8, ptr %101, align 1, !tbaa !52
  %106 = getelementptr inbounds i8, ptr %101, i64 2
  %107 = load i8, ptr %104, align 1, !tbaa !52
  %108 = getelementptr inbounds i8, ptr %101, i64 3
  %109 = load i8, ptr %106, align 1, !tbaa !52
  %110 = icmp eq i8 %105, %107
  %111 = icmp eq i8 %105, %109
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %124, label %113

113:                                              ; preds = %99
  %114 = zext i8 %107 to i32
  %115 = zext i8 %105 to i32
  %116 = mul nuw nsw i32 %115, %12
  %117 = mul nuw nsw i32 %114, %15
  %118 = add nuw nsw i32 %117, %116
  %119 = zext i8 %109 to i32
  %120 = mul nsw i32 %17, %119
  %121 = add nsw i32 %118, %120
  %122 = lshr i32 %121, 15
  %123 = trunc i32 %122 to i8
  br label %124

124:                                              ; preds = %99, %113
  %125 = phi i8 [ %123, %113 ], [ %105, %99 ]
  %126 = phi i32 [ 1, %113 ], [ %100, %99 ]
  %127 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %125, ptr %102, align 1, !tbaa !52
  br i1 %20, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %101, i64 4
  %130 = load i8, ptr %108, align 1, !tbaa !52
  %131 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 %130, ptr %127, align 1, !tbaa !52
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi ptr [ %131, %128 ], [ %127, %124 ]
  %134 = phi ptr [ %129, %128 ], [ %108, %124 ]
  %135 = add nuw i32 %103, 1
  %136 = icmp eq i32 %135, %18
  br i1 %136, label %327, label %99, !llvm.loop !181

137:                                              ; preds = %9
  %138 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 82
  %139 = load ptr, ptr %138, align 8, !tbaa !182
  %140 = icmp eq ptr %139, null
  br i1 %140, label %268, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %143 = load ptr, ptr %142, align 8, !tbaa !154
  %144 = icmp eq ptr %143, null
  br i1 %144, label %268, label %145

145:                                              ; preds = %141
  %146 = icmp eq i32 %18, 0
  br i1 %146, label %327, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %149 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %150 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  br label %151

151:                                              ; preds = %147, %263
  %152 = phi i32 [ 0, %147 ], [ %250, %263 ]
  %153 = phi ptr [ %2, %147 ], [ %265, %263 ]
  %154 = phi i32 [ 0, %147 ], [ %266, %263 ]
  %155 = phi ptr [ %2, %147 ], [ %264, %263 ]
  %156 = load i8, ptr %153, align 1, !tbaa !52
  %157 = zext i8 %156 to i16
  %158 = shl nuw i16 %157, 8
  %159 = getelementptr inbounds i8, ptr %153, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !52
  %161 = zext i8 %160 to i16
  %162 = or disjoint i16 %158, %161
  %163 = getelementptr inbounds i8, ptr %153, i64 2
  %164 = load i8, ptr %163, align 1, !tbaa !52
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %165, 8
  %167 = getelementptr inbounds i8, ptr %153, i64 3
  %168 = load i8, ptr %167, align 1, !tbaa !52
  %169 = zext i8 %168 to i32
  %170 = or disjoint i32 %166, %169
  %171 = getelementptr inbounds i8, ptr %153, i64 4
  %172 = load i8, ptr %171, align 1, !tbaa !52
  %173 = zext i8 %172 to i16
  %174 = shl nuw i16 %173, 8
  %175 = getelementptr inbounds i8, ptr %153, i64 5
  %176 = load i8, ptr %175, align 1, !tbaa !52
  %177 = zext i8 %176 to i16
  %178 = or disjoint i16 %174, %177
  %179 = getelementptr inbounds i8, ptr %153, i64 6
  %180 = zext i16 %162 to i32
  %181 = icmp eq i32 %170, %180
  %182 = icmp eq i16 %162, %178
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %194

184:                                              ; preds = %151
  %185 = load ptr, ptr %149, align 8, !tbaa !183
  %186 = icmp eq ptr %185, null
  br i1 %186, label %248, label %187

187:                                              ; preds = %184
  %188 = and i32 %180, 255
  %189 = load i32, ptr %150, align 8, !tbaa !155
  %190 = lshr i32 %188, %189
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %185, i64 %191
  %193 = lshr i32 %180, 8
  br label %240

194:                                              ; preds = %151
  %195 = load ptr, ptr %138, align 8, !tbaa !182
  %196 = and i32 %180, 255
  %197 = load i32, ptr %148, align 8, !tbaa !155
  %198 = lshr i32 %196, %197
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %195, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !74
  %202 = lshr i32 %180, 8
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds i16, ptr %201, i64 %203
  %205 = load i16, ptr %204, align 2, !tbaa !58
  %206 = lshr i32 %169, %197
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %195, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !74
  %210 = zext i8 %164 to i64
  %211 = getelementptr inbounds i16, ptr %209, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !58
  %213 = zext i16 %178 to i32
  %214 = and i32 %213, 255
  %215 = lshr i32 %214, %197
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %195, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !74
  %219 = lshr i32 %213, 8
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds i16, ptr %218, i64 %220
  %222 = load i16, ptr %221, align 2, !tbaa !58
  %223 = zext i16 %205 to i32
  %224 = mul nuw i32 %223, %12
  %225 = zext i16 %212 to i32
  %226 = mul nuw i32 %225, %15
  %227 = zext i16 %222 to i32
  %228 = mul i32 %17, %227
  %229 = add nuw i32 %224, 16384
  %230 = add i32 %229, %226
  %231 = add i32 %230, %228
  %232 = lshr i32 %231, 15
  %233 = load ptr, ptr %142, align 8, !tbaa !154
  %234 = and i32 %232, 255
  %235 = lshr i32 %234, %197
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %233, i64 %236
  %238 = lshr i32 %231, 23
  %239 = and i32 %238, 255
  br label %240

240:                                              ; preds = %194, %187
  %241 = phi i32 [ %193, %187 ], [ %239, %194 ]
  %242 = phi ptr [ %192, %187 ], [ %237, %194 ]
  %243 = phi i32 [ %152, %187 ], [ 1, %194 ]
  %244 = load ptr, ptr %242, align 8, !tbaa !74
  %245 = zext nneg i32 %241 to i64
  %246 = getelementptr inbounds i16, ptr %244, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !58
  br label %248

248:                                              ; preds = %240, %184
  %249 = phi i16 [ %162, %184 ], [ %247, %240 ]
  %250 = phi i32 [ %152, %184 ], [ %243, %240 ]
  %251 = lshr i16 %249, 8
  %252 = trunc i16 %251 to i8
  %253 = getelementptr inbounds i8, ptr %155, i64 1
  store i8 %252, ptr %155, align 1, !tbaa !52
  %254 = trunc i16 %249 to i8
  %255 = getelementptr inbounds i8, ptr %155, i64 2
  store i8 %254, ptr %253, align 1, !tbaa !52
  br i1 %20, label %263, label %256

256:                                              ; preds = %248
  %257 = getelementptr inbounds i8, ptr %153, i64 7
  %258 = load i8, ptr %179, align 1, !tbaa !52
  %259 = getelementptr inbounds i8, ptr %155, i64 3
  store i8 %258, ptr %255, align 1, !tbaa !52
  %260 = getelementptr inbounds i8, ptr %153, i64 8
  %261 = load i8, ptr %257, align 1, !tbaa !52
  %262 = getelementptr inbounds i8, ptr %155, i64 4
  store i8 %261, ptr %259, align 1, !tbaa !52
  br label %263

263:                                              ; preds = %256, %248
  %264 = phi ptr [ %262, %256 ], [ %255, %248 ]
  %265 = phi ptr [ %260, %256 ], [ %179, %248 ]
  %266 = add nuw i32 %154, 1
  %267 = icmp eq i32 %266, %18
  br i1 %267, label %327, label %151, !llvm.loop !184

268:                                              ; preds = %141, %137
  %269 = icmp eq i32 %18, 0
  br i1 %269, label %327, label %270

270:                                              ; preds = %268, %322
  %271 = phi i32 [ %302, %322 ], [ 0, %268 ]
  %272 = phi i32 [ %325, %322 ], [ 0, %268 ]
  %273 = phi ptr [ %324, %322 ], [ %2, %268 ]
  %274 = phi ptr [ %323, %322 ], [ %2, %268 ]
  %275 = load i8, ptr %274, align 1, !tbaa !52
  %276 = zext i8 %275 to i32
  %277 = shl nuw nsw i32 %276, 8
  %278 = getelementptr inbounds i8, ptr %274, i64 1
  %279 = load i8, ptr %278, align 1, !tbaa !52
  %280 = zext i8 %279 to i32
  %281 = or disjoint i32 %277, %280
  %282 = getelementptr inbounds i8, ptr %274, i64 2
  %283 = load i8, ptr %282, align 1, !tbaa !52
  %284 = zext i8 %283 to i32
  %285 = shl nuw nsw i32 %284, 8
  %286 = getelementptr inbounds i8, ptr %274, i64 3
  %287 = load i8, ptr %286, align 1, !tbaa !52
  %288 = zext i8 %287 to i32
  %289 = or disjoint i32 %285, %288
  %290 = getelementptr inbounds i8, ptr %274, i64 4
  %291 = load i8, ptr %290, align 1, !tbaa !52
  %292 = zext i8 %291 to i32
  %293 = shl nuw nsw i32 %292, 8
  %294 = getelementptr inbounds i8, ptr %274, i64 5
  %295 = load i8, ptr %294, align 1, !tbaa !52
  %296 = zext i8 %295 to i32
  %297 = or disjoint i32 %293, %296
  %298 = getelementptr inbounds i8, ptr %274, i64 6
  %299 = icmp eq i32 %281, %289
  %300 = icmp eq i32 %281, %297
  %301 = select i1 %299, i1 %300, i1 false
  %302 = select i1 %301, i32 %271, i32 1
  %303 = mul nuw i32 %281, %12
  %304 = mul nuw i32 %289, %15
  %305 = mul i32 %297, %17
  %306 = add nuw i32 %303, 16384
  %307 = add i32 %306, %304
  %308 = add i32 %307, %305
  %309 = lshr i32 %308, 15
  %310 = lshr i32 %308, 23
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds i8, ptr %273, i64 1
  store i8 %311, ptr %273, align 1, !tbaa !52
  %313 = trunc i32 %309 to i8
  %314 = getelementptr inbounds i8, ptr %273, i64 2
  store i8 %313, ptr %312, align 1, !tbaa !52
  br i1 %20, label %322, label %315

315:                                              ; preds = %270
  %316 = getelementptr inbounds i8, ptr %274, i64 7
  %317 = load i8, ptr %298, align 1, !tbaa !52
  %318 = getelementptr inbounds i8, ptr %273, i64 3
  store i8 %317, ptr %314, align 1, !tbaa !52
  %319 = getelementptr inbounds i8, ptr %274, i64 8
  %320 = load i8, ptr %316, align 1, !tbaa !52
  %321 = getelementptr inbounds i8, ptr %273, i64 4
  store i8 %320, ptr %318, align 1, !tbaa !52
  br label %322

322:                                              ; preds = %315, %270
  %323 = phi ptr [ %319, %315 ], [ %298, %270 ]
  %324 = phi ptr [ %321, %315 ], [ %314, %270 ]
  %325 = add nuw i32 %272, 1
  %326 = icmp eq i32 %325, %18
  br i1 %326, label %327, label %270, !llvm.loop !185

327:                                              ; preds = %263, %322, %92, %132, %145, %268, %32, %97
  %328 = phi i32 [ 0, %97 ], [ 0, %32 ], [ 0, %268 ], [ 0, %145 ], [ %126, %132 ], [ %86, %92 ], [ %302, %322 ], [ %250, %263 ]
  %329 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  %330 = load i8, ptr %329, align 2, !tbaa !159
  %331 = add i8 %330, -2
  store i8 %331, ptr %329, align 2, !tbaa !159
  %332 = load i8, ptr %4, align 8, !tbaa !147
  %333 = and i8 %332, -3
  store i8 %333, ptr %4, align 8, !tbaa !147
  %334 = load i8, ptr %21, align 1, !tbaa !152
  %335 = mul i8 %334, %331
  %336 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %335, ptr %336, align 1, !tbaa !160
  %337 = icmp ugt i8 %335, 7
  %338 = zext i32 %18 to i64
  br i1 %337, label %339, label %343

339:                                              ; preds = %327
  %340 = lshr i8 %335, 3
  %341 = zext nneg i8 %340 to i64
  %342 = mul nuw nsw i64 %341, %338
  br label %348

343:                                              ; preds = %327
  %344 = zext nneg i8 %335 to i64
  %345 = mul nuw nsw i64 %344, %338
  %346 = add nuw nsw i64 %345, 7
  %347 = lshr i64 %346, 3
  br label %348

348:                                              ; preds = %343, %339
  %349 = phi i64 [ %342, %339 ], [ %347, %343 ]
  %350 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  store i64 %349, ptr %350, align 8, !tbaa !157
  br label %351

351:                                              ; preds = %348, %3
  %352 = phi i32 [ 0, %3 ], [ %328, %348 ]
  ret i32 %352
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_gray_to_rgb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !152
  %6 = icmp ugt i8 %5, 7
  br i1 %6, label %7, label %146

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !147
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %146

12:                                               ; preds = %7
  switch i8 %9, label %123 [
    i8 0, label %13
    i8 4, label %64
  ]

13:                                               ; preds = %12
  %14 = icmp eq i8 %5, 8
  %15 = icmp eq i32 %3, 0
  br i1 %14, label %16, label %36

16:                                               ; preds = %13
  br i1 %15, label %123, label %17

17:                                               ; preds = %16
  %18 = zext i32 %3 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds i8, ptr %19, i64 -1
  %21 = shl nuw nsw i64 %18, 1
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  br label %23

23:                                               ; preds = %17, %23
  %24 = phi ptr [ %33, %23 ], [ %22, %17 ]
  %25 = phi ptr [ %31, %23 ], [ %20, %17 ]
  %26 = phi i32 [ %34, %23 ], [ 0, %17 ]
  %27 = load i8, ptr %25, align 1, !tbaa !52
  %28 = getelementptr inbounds i8, ptr %24, i64 -1
  store i8 %27, ptr %24, align 1, !tbaa !52
  %29 = load i8, ptr %25, align 1, !tbaa !52
  %30 = getelementptr inbounds i8, ptr %24, i64 -2
  store i8 %29, ptr %28, align 1, !tbaa !52
  %31 = getelementptr inbounds i8, ptr %25, i64 -1
  %32 = load i8, ptr %25, align 1, !tbaa !52
  %33 = getelementptr inbounds i8, ptr %24, i64 -3
  store i8 %32, ptr %30, align 1, !tbaa !52
  %34 = add nuw i32 %26, 1
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %123, label %23, !llvm.loop !186

36:                                               ; preds = %13
  br i1 %15, label %123, label %37

37:                                               ; preds = %36
  %38 = zext i32 %3 to i64
  %39 = shl nuw nsw i64 %38, 1
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  %42 = shl nuw nsw i64 %38, 2
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  br label %44

44:                                               ; preds = %37, %44
  %45 = phi ptr [ %61, %44 ], [ %43, %37 ]
  %46 = phi ptr [ %59, %44 ], [ %41, %37 ]
  %47 = phi i32 [ %62, %44 ], [ 0, %37 ]
  %48 = load i8, ptr %46, align 1, !tbaa !52
  %49 = getelementptr inbounds i8, ptr %45, i64 -1
  store i8 %48, ptr %45, align 1, !tbaa !52
  %50 = getelementptr inbounds i8, ptr %46, i64 -1
  %51 = load i8, ptr %50, align 1, !tbaa !52
  %52 = getelementptr inbounds i8, ptr %45, i64 -2
  store i8 %51, ptr %49, align 1, !tbaa !52
  %53 = load i8, ptr %46, align 1, !tbaa !52
  %54 = getelementptr inbounds i8, ptr %45, i64 -3
  store i8 %53, ptr %52, align 1, !tbaa !52
  %55 = load i8, ptr %50, align 1, !tbaa !52
  %56 = getelementptr inbounds i8, ptr %45, i64 -4
  store i8 %55, ptr %54, align 1, !tbaa !52
  %57 = load i8, ptr %46, align 1, !tbaa !52
  %58 = getelementptr inbounds i8, ptr %45, i64 -5
  store i8 %57, ptr %56, align 1, !tbaa !52
  %59 = getelementptr inbounds i8, ptr %46, i64 -2
  %60 = load i8, ptr %50, align 1, !tbaa !52
  %61 = getelementptr inbounds i8, ptr %45, i64 -6
  store i8 %60, ptr %58, align 1, !tbaa !52
  %62 = add nuw i32 %47, 1
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %123, label %44, !llvm.loop !187

64:                                               ; preds = %12
  %65 = icmp eq i8 %5, 8
  %66 = icmp eq i32 %3, 0
  br i1 %65, label %67, label %90

67:                                               ; preds = %64
  br i1 %66, label %123, label %68

68:                                               ; preds = %67
  %69 = zext i32 %3 to i64
  %70 = shl nuw nsw i64 %69, 1
  %71 = getelementptr inbounds i8, ptr %1, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 -1
  %73 = getelementptr inbounds i8, ptr %72, i64 %70
  br label %74

74:                                               ; preds = %68, %74
  %75 = phi ptr [ %87, %74 ], [ %73, %68 ]
  %76 = phi ptr [ %85, %74 ], [ %72, %68 ]
  %77 = phi i32 [ %88, %74 ], [ 0, %68 ]
  %78 = getelementptr inbounds i8, ptr %76, i64 -1
  %79 = load i8, ptr %76, align 1, !tbaa !52
  %80 = getelementptr inbounds i8, ptr %75, i64 -1
  store i8 %79, ptr %75, align 1, !tbaa !52
  %81 = load i8, ptr %78, align 1, !tbaa !52
  %82 = getelementptr inbounds i8, ptr %75, i64 -2
  store i8 %81, ptr %80, align 1, !tbaa !52
  %83 = load i8, ptr %78, align 1, !tbaa !52
  %84 = getelementptr inbounds i8, ptr %75, i64 -3
  store i8 %83, ptr %82, align 1, !tbaa !52
  %85 = getelementptr inbounds i8, ptr %76, i64 -2
  %86 = load i8, ptr %78, align 1, !tbaa !52
  %87 = getelementptr inbounds i8, ptr %75, i64 -4
  store i8 %86, ptr %84, align 1, !tbaa !52
  %88 = add nuw i32 %77, 1
  %89 = icmp eq i32 %88, %3
  br i1 %89, label %123, label %74, !llvm.loop !188

90:                                               ; preds = %64
  br i1 %66, label %123, label %91

91:                                               ; preds = %90
  %92 = zext i32 %3 to i64
  %93 = shl nuw nsw i64 %92, 2
  %94 = getelementptr inbounds i8, ptr %1, i64 %93
  %95 = getelementptr inbounds i8, ptr %94, i64 -1
  %96 = getelementptr inbounds i8, ptr %95, i64 %93
  br label %97

97:                                               ; preds = %91, %97
  %98 = phi ptr [ %120, %97 ], [ %96, %91 ]
  %99 = phi ptr [ %118, %97 ], [ %95, %91 ]
  %100 = phi i32 [ %121, %97 ], [ 0, %91 ]
  %101 = getelementptr inbounds i8, ptr %99, i64 -1
  %102 = load i8, ptr %99, align 1, !tbaa !52
  %103 = getelementptr inbounds i8, ptr %98, i64 -1
  store i8 %102, ptr %98, align 1, !tbaa !52
  %104 = getelementptr inbounds i8, ptr %99, i64 -2
  %105 = load i8, ptr %101, align 1, !tbaa !52
  %106 = getelementptr inbounds i8, ptr %98, i64 -2
  store i8 %105, ptr %103, align 1, !tbaa !52
  %107 = load i8, ptr %104, align 1, !tbaa !52
  %108 = getelementptr inbounds i8, ptr %98, i64 -3
  store i8 %107, ptr %106, align 1, !tbaa !52
  %109 = getelementptr inbounds i8, ptr %99, i64 -3
  %110 = load i8, ptr %109, align 1, !tbaa !52
  %111 = getelementptr inbounds i8, ptr %98, i64 -4
  store i8 %110, ptr %108, align 1, !tbaa !52
  %112 = load i8, ptr %104, align 1, !tbaa !52
  %113 = getelementptr inbounds i8, ptr %98, i64 -5
  store i8 %112, ptr %111, align 1, !tbaa !52
  %114 = load i8, ptr %109, align 1, !tbaa !52
  %115 = getelementptr inbounds i8, ptr %98, i64 -6
  store i8 %114, ptr %113, align 1, !tbaa !52
  %116 = load i8, ptr %104, align 1, !tbaa !52
  %117 = getelementptr inbounds i8, ptr %98, i64 -7
  store i8 %116, ptr %115, align 1, !tbaa !52
  %118 = getelementptr inbounds i8, ptr %99, i64 -4
  %119 = load i8, ptr %109, align 1, !tbaa !52
  %120 = getelementptr inbounds i8, ptr %98, i64 -8
  store i8 %119, ptr %117, align 1, !tbaa !52
  %121 = add nuw i32 %100, 1
  %122 = icmp eq i32 %121, %3
  br i1 %122, label %123, label %97, !llvm.loop !189

123:                                              ; preds = %97, %74, %44, %23, %90, %67, %36, %16, %12
  %124 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %125 = load i8, ptr %124, align 2, !tbaa !159
  %126 = add i8 %125, 2
  store i8 %126, ptr %124, align 2, !tbaa !159
  %127 = load i8, ptr %8, align 8, !tbaa !147
  %128 = or i8 %127, 2
  store i8 %128, ptr %8, align 8, !tbaa !147
  %129 = load i8, ptr %4, align 1, !tbaa !152
  %130 = mul i8 %129, %126
  %131 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %130, ptr %131, align 1, !tbaa !160
  %132 = icmp ugt i8 %130, 7
  %133 = zext i32 %3 to i64
  br i1 %132, label %134, label %138

134:                                              ; preds = %123
  %135 = lshr i8 %130, 3
  %136 = zext nneg i8 %135 to i64
  %137 = mul nuw nsw i64 %136, %133
  br label %143

138:                                              ; preds = %123
  %139 = zext nneg i8 %130 to i64
  %140 = mul nuw nsw i64 %139, %133
  %141 = add nuw nsw i64 %140, 7
  %142 = lshr i64 %141, 3
  br label %143

143:                                              ; preds = %138, %134
  %144 = phi i64 [ %137, %134 ], [ %142, %138 ]
  %145 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %144, ptr %145, align 8, !tbaa !157
  br label %146

146:                                              ; preds = %143, %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_compose(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 77
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 80
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 78
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 81
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 82
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 74
  %17 = load i32, ptr %16, align 8, !tbaa !155
  %18 = load i32, ptr %0, align 8, !tbaa !151
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 14
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %24 = load i8, ptr %23, align 8, !tbaa !147
  switch i8 %24, label %1343 [
    i8 0, label %25
    i8 2, label %338
    i8 4, label %601
    i8 6, label %828
  ]

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !152
  switch i8 %27, label %1343 [
    i8 1, label %28
    i8 2, label %62
    i8 4, label %144
    i8 8, label %226
    i8 16, label %270
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %18, 0
  br i1 %29, label %1343, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %33

33:                                               ; preds = %30, %54
  %34 = phi ptr [ %1, %30 ], [ %59, %54 ]
  %35 = phi i32 [ 0, %30 ], [ %60, %54 ]
  %36 = phi i32 [ 7, %30 ], [ %57, %54 ]
  %37 = load i8, ptr %34, align 1, !tbaa !52
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %38, %36
  %40 = and i32 %39, 1
  %41 = load i16, ptr %31, align 8, !tbaa !109
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %33
  %45 = sub nsw i32 7, %36
  %46 = lshr i32 32639, %45
  %47 = trunc i32 %46 to i8
  %48 = and i8 %37, %47
  store i8 %48, ptr %34, align 1, !tbaa !52
  %49 = load i16, ptr %32, align 8, !tbaa !104
  %50 = zext i16 %49 to i32
  %51 = shl i32 %50, %36
  %52 = trunc i32 %51 to i8
  %53 = or i8 %48, %52
  store i8 %53, ptr %34, align 1, !tbaa !52
  br label %54

54:                                               ; preds = %44, %33
  %55 = icmp eq i32 %36, 0
  %56 = add nsw i32 %36, -1
  %57 = select i1 %55, i32 7, i32 %56
  %58 = zext i1 %55 to i64
  %59 = getelementptr inbounds i8, ptr %34, i64 %58
  %60 = add nuw i32 %35, 1
  %61 = icmp eq i32 %60, %18
  br i1 %61, label %1343, label %33, !llvm.loop !190

62:                                               ; preds = %25
  %63 = icmp eq ptr %5, null
  %64 = icmp eq i32 %18, 0
  br i1 %63, label %69, label %65

65:                                               ; preds = %62
  br i1 %64, label %1343, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %73

69:                                               ; preds = %62
  br i1 %64, label %1343, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %115

73:                                               ; preds = %66, %102
  %74 = phi ptr [ %1, %66 ], [ %112, %102 ]
  %75 = phi i32 [ 0, %66 ], [ %113, %102 ]
  %76 = phi i32 [ 6, %66 ], [ %110, %102 ]
  %77 = load i8, ptr %74, align 1, !tbaa !52
  %78 = zext i8 %77 to i32
  %79 = lshr i32 %78, %76
  %80 = and i32 %79, 3
  %81 = load i16, ptr %67, align 8, !tbaa !109
  %82 = zext i16 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = sub nsw i32 6, %76
  %86 = lshr i32 16191, %85
  %87 = trunc i32 %86 to i8
  %88 = and i8 %77, %87
  store i8 %88, ptr %74, align 1, !tbaa !52
  %89 = load i16, ptr %68, align 8, !tbaa !104
  %90 = zext i16 %89 to i32
  br label %102

91:                                               ; preds = %73
  %92 = mul nuw nsw i32 %80, 85
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %5, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !52
  %96 = lshr i8 %95, 6
  %97 = sub nsw i32 6, %76
  %98 = lshr i32 16191, %97
  %99 = trunc i32 %98 to i8
  %100 = and i8 %77, %99
  %101 = zext nneg i8 %96 to i32
  br label %102

102:                                              ; preds = %91, %84
  %103 = phi i32 [ %101, %91 ], [ %90, %84 ]
  %104 = phi i8 [ %100, %91 ], [ %88, %84 ]
  %105 = shl i32 %103, %76
  %106 = trunc i32 %105 to i8
  %107 = or i8 %104, %106
  store i8 %107, ptr %74, align 1, !tbaa !52
  %108 = icmp eq i32 %76, 0
  %109 = add nsw i32 %76, -2
  %110 = select i1 %108, i32 6, i32 %109
  %111 = zext i1 %108 to i64
  %112 = getelementptr inbounds i8, ptr %74, i64 %111
  %113 = add nuw i32 %75, 1
  %114 = icmp eq i32 %113, %18
  br i1 %114, label %1343, label %73, !llvm.loop !191

115:                                              ; preds = %70, %136
  %116 = phi ptr [ %1, %70 ], [ %141, %136 ]
  %117 = phi i32 [ 0, %70 ], [ %142, %136 ]
  %118 = phi i32 [ 6, %70 ], [ %139, %136 ]
  %119 = load i8, ptr %116, align 1, !tbaa !52
  %120 = zext i8 %119 to i32
  %121 = lshr i32 %120, %118
  %122 = and i32 %121, 3
  %123 = load i16, ptr %71, align 8, !tbaa !109
  %124 = zext i16 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %115
  %127 = sub nsw i32 6, %118
  %128 = lshr i32 16191, %127
  %129 = trunc i32 %128 to i8
  %130 = and i8 %119, %129
  store i8 %130, ptr %116, align 1, !tbaa !52
  %131 = load i16, ptr %72, align 8, !tbaa !104
  %132 = zext i16 %131 to i32
  %133 = shl i32 %132, %118
  %134 = trunc i32 %133 to i8
  %135 = or i8 %130, %134
  store i8 %135, ptr %116, align 1, !tbaa !52
  br label %136

136:                                              ; preds = %126, %115
  %137 = icmp eq i32 %118, 0
  %138 = add nsw i32 %118, -2
  %139 = select i1 %137, i32 6, i32 %138
  %140 = zext i1 %137 to i64
  %141 = getelementptr inbounds i8, ptr %116, i64 %140
  %142 = add nuw i32 %117, 1
  %143 = icmp eq i32 %142, %18
  br i1 %143, label %1343, label %115, !llvm.loop !192

144:                                              ; preds = %25
  %145 = icmp eq ptr %5, null
  %146 = icmp eq i32 %18, 0
  br i1 %145, label %151, label %147

147:                                              ; preds = %144
  br i1 %146, label %1343, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %150 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %155

151:                                              ; preds = %144
  br i1 %146, label %1343, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %154 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %197

155:                                              ; preds = %148, %184
  %156 = phi ptr [ %1, %148 ], [ %194, %184 ]
  %157 = phi i32 [ 0, %148 ], [ %195, %184 ]
  %158 = phi i32 [ 4, %148 ], [ %192, %184 ]
  %159 = load i8, ptr %156, align 1, !tbaa !52
  %160 = zext i8 %159 to i32
  %161 = lshr i32 %160, %158
  %162 = and i32 %161, 15
  %163 = load i16, ptr %149, align 8, !tbaa !109
  %164 = zext i16 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %155
  %167 = sub nsw i32 4, %158
  %168 = lshr i32 3855, %167
  %169 = trunc i32 %168 to i8
  %170 = and i8 %159, %169
  store i8 %170, ptr %156, align 1, !tbaa !52
  %171 = load i16, ptr %150, align 8, !tbaa !104
  %172 = zext i16 %171 to i32
  br label %184

173:                                              ; preds = %155
  %174 = mul nuw nsw i32 %162, 17
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %5, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !52
  %178 = lshr i8 %177, 4
  %179 = sub nsw i32 4, %158
  %180 = lshr i32 3855, %179
  %181 = trunc i32 %180 to i8
  %182 = and i8 %159, %181
  %183 = zext nneg i8 %178 to i32
  br label %184

184:                                              ; preds = %173, %166
  %185 = phi i32 [ %183, %173 ], [ %172, %166 ]
  %186 = phi i8 [ %182, %173 ], [ %170, %166 ]
  %187 = shl i32 %185, %158
  %188 = trunc i32 %187 to i8
  %189 = or i8 %186, %188
  store i8 %189, ptr %156, align 1, !tbaa !52
  %190 = icmp eq i32 %158, 0
  %191 = add nsw i32 %158, -4
  %192 = select i1 %190, i32 4, i32 %191
  %193 = zext i1 %190 to i64
  %194 = getelementptr inbounds i8, ptr %156, i64 %193
  %195 = add nuw i32 %157, 1
  %196 = icmp eq i32 %195, %18
  br i1 %196, label %1343, label %155, !llvm.loop !193

197:                                              ; preds = %152, %218
  %198 = phi ptr [ %1, %152 ], [ %223, %218 ]
  %199 = phi i32 [ 0, %152 ], [ %224, %218 ]
  %200 = phi i32 [ 4, %152 ], [ %221, %218 ]
  %201 = load i8, ptr %198, align 1, !tbaa !52
  %202 = zext i8 %201 to i32
  %203 = lshr i32 %202, %200
  %204 = and i32 %203, 15
  %205 = load i16, ptr %153, align 8, !tbaa !109
  %206 = zext i16 %205 to i32
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %197
  %209 = sub nsw i32 4, %200
  %210 = lshr i32 3855, %209
  %211 = trunc i32 %210 to i8
  %212 = and i8 %201, %211
  store i8 %212, ptr %198, align 1, !tbaa !52
  %213 = load i16, ptr %154, align 8, !tbaa !104
  %214 = zext i16 %213 to i32
  %215 = shl i32 %214, %200
  %216 = trunc i32 %215 to i8
  %217 = or i8 %212, %216
  store i8 %217, ptr %198, align 1, !tbaa !52
  br label %218

218:                                              ; preds = %208, %197
  %219 = icmp eq i32 %200, 0
  %220 = add nsw i32 %200, -4
  %221 = select i1 %219, i32 4, i32 %220
  %222 = zext i1 %219 to i64
  %223 = getelementptr inbounds i8, ptr %198, i64 %222
  %224 = add nuw i32 %199, 1
  %225 = icmp eq i32 %224, %18
  br i1 %225, label %1343, label %197, !llvm.loop !194

226:                                              ; preds = %25
  %227 = icmp eq ptr %5, null
  %228 = icmp eq i32 %18, 0
  br i1 %227, label %233, label %229

229:                                              ; preds = %226
  br i1 %228, label %1343, label %230

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %232 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %237

233:                                              ; preds = %226
  br i1 %228, label %1343, label %234

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %236 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %256

237:                                              ; preds = %230, %251
  %238 = phi ptr [ %1, %230 ], [ %254, %251 ]
  %239 = phi i32 [ 0, %230 ], [ %253, %251 ]
  %240 = load i8, ptr %238, align 1, !tbaa !52
  %241 = load i16, ptr %231, align 8, !tbaa !109
  %242 = zext i8 %240 to i16
  %243 = icmp eq i16 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i16, ptr %232, align 8, !tbaa !104
  %246 = trunc i16 %245 to i8
  br label %251

247:                                              ; preds = %237
  %248 = zext i8 %240 to i64
  %249 = getelementptr inbounds i8, ptr %5, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !52
  br label %251

251:                                              ; preds = %244, %247
  %252 = phi i8 [ %250, %247 ], [ %246, %244 ]
  store i8 %252, ptr %238, align 1, !tbaa !52
  %253 = add nuw i32 %239, 1
  %254 = getelementptr inbounds i8, ptr %238, i64 1
  %255 = icmp eq i32 %253, %18
  br i1 %255, label %1343, label %237, !llvm.loop !195

256:                                              ; preds = %234, %266
  %257 = phi ptr [ %1, %234 ], [ %268, %266 ]
  %258 = phi i32 [ 0, %234 ], [ %267, %266 ]
  %259 = load i8, ptr %257, align 1, !tbaa !52
  %260 = load i16, ptr %235, align 8, !tbaa !109
  %261 = zext i8 %259 to i16
  %262 = icmp eq i16 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load i16, ptr %236, align 8, !tbaa !104
  %265 = trunc i16 %264 to i8
  store i8 %265, ptr %257, align 1, !tbaa !52
  br label %266

266:                                              ; preds = %256, %263
  %267 = add nuw i32 %258, 1
  %268 = getelementptr inbounds i8, ptr %257, i64 1
  %269 = icmp eq i32 %267, %18
  br i1 %269, label %1343, label %256, !llvm.loop !196

270:                                              ; preds = %25
  %271 = icmp eq ptr %11, null
  %272 = icmp eq i32 %18, 0
  br i1 %271, label %277, label %273

273:                                              ; preds = %270
  br i1 %272, label %1343, label %274

274:                                              ; preds = %273
  %275 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %276 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %281

277:                                              ; preds = %270
  br i1 %272, label %1343, label %278

278:                                              ; preds = %277
  %279 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %280 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %315

281:                                              ; preds = %274, %309
  %282 = phi ptr [ %1, %274 ], [ %313, %309 ]
  %283 = phi i32 [ 0, %274 ], [ %312, %309 ]
  %284 = load i8, ptr %282, align 1, !tbaa !52
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 8
  %287 = getelementptr inbounds i8, ptr %282, i64 1
  %288 = load i8, ptr %287, align 1, !tbaa !52
  %289 = zext i8 %288 to i32
  %290 = or disjoint i32 %286, %289
  %291 = load i16, ptr %275, align 8, !tbaa !109
  %292 = zext i16 %291 to i32
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %281
  %295 = load i16, ptr %276, align 8, !tbaa !104
  %296 = lshr i16 %295, 8
  %297 = trunc i16 %296 to i8
  store i8 %297, ptr %282, align 1, !tbaa !52
  %298 = load i16, ptr %276, align 8, !tbaa !104
  br label %309

299:                                              ; preds = %281
  %300 = lshr i32 %289, %17
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %11, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !74
  %304 = zext i8 %284 to i64
  %305 = getelementptr inbounds i16, ptr %303, i64 %304
  %306 = load i16, ptr %305, align 2, !tbaa !58
  %307 = lshr i16 %306, 8
  %308 = trunc i16 %307 to i8
  store i8 %308, ptr %282, align 1, !tbaa !52
  br label %309

309:                                              ; preds = %299, %294
  %310 = phi i16 [ %306, %299 ], [ %298, %294 ]
  %311 = trunc i16 %310 to i8
  store i8 %311, ptr %287, align 1, !tbaa !52
  %312 = add nuw i32 %283, 1
  %313 = getelementptr inbounds i8, ptr %282, i64 2
  %314 = icmp eq i32 %312, %18
  br i1 %314, label %1343, label %281, !llvm.loop !197

315:                                              ; preds = %278, %334
  %316 = phi ptr [ %1, %278 ], [ %336, %334 ]
  %317 = phi i32 [ 0, %278 ], [ %335, %334 ]
  %318 = load i8, ptr %316, align 1, !tbaa !52
  %319 = zext i8 %318 to i32
  %320 = shl nuw nsw i32 %319, 8
  %321 = getelementptr inbounds i8, ptr %316, i64 1
  %322 = load i8, ptr %321, align 1, !tbaa !52
  %323 = zext i8 %322 to i32
  %324 = or disjoint i32 %320, %323
  %325 = load i16, ptr %279, align 8, !tbaa !109
  %326 = zext i16 %325 to i32
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %315
  %329 = load i16, ptr %280, align 8, !tbaa !104
  %330 = lshr i16 %329, 8
  %331 = trunc i16 %330 to i8
  store i8 %331, ptr %316, align 1, !tbaa !52
  %332 = load i16, ptr %280, align 8, !tbaa !104
  %333 = trunc i16 %332 to i8
  store i8 %333, ptr %321, align 1, !tbaa !52
  br label %334

334:                                              ; preds = %328, %315
  %335 = add nuw i32 %317, 1
  %336 = getelementptr inbounds i8, ptr %316, i64 2
  %337 = icmp eq i32 %335, %18
  br i1 %337, label %1343, label %315, !llvm.loop !198

338:                                              ; preds = %3
  %339 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %340 = load i8, ptr %339, align 1, !tbaa !152
  %341 = icmp eq i8 %340, 8
  %342 = icmp eq i32 %18, 0
  br i1 %341, label %343, label %435

343:                                              ; preds = %338
  %344 = icmp eq ptr %5, null
  br i1 %344, label %353, label %345

345:                                              ; preds = %343
  br i1 %342, label %1343, label %346

346:                                              ; preds = %345
  %347 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %348 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %349 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %350 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %351 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %352 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %361

353:                                              ; preds = %343
  br i1 %342, label %1343, label %354

354:                                              ; preds = %353
  %355 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %356 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %357 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %358 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %359 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %360 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %405

361:                                              ; preds = %346, %401
  %362 = phi ptr [ %1, %346 ], [ %403, %401 ]
  %363 = phi i32 [ 0, %346 ], [ %402, %401 ]
  %364 = load i8, ptr %362, align 1, !tbaa !52
  %365 = load i16, ptr %347, align 2, !tbaa !113
  %366 = zext i8 %364 to i16
  %367 = icmp eq i16 %365, %366
  br i1 %367, label %368, label %387

368:                                              ; preds = %361
  %369 = getelementptr inbounds i8, ptr %362, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !52
  %371 = load i16, ptr %348, align 4, !tbaa !112
  %372 = zext i8 %370 to i16
  %373 = icmp eq i16 %371, %372
  br i1 %373, label %374, label %387

374:                                              ; preds = %368
  %375 = getelementptr inbounds i8, ptr %362, i64 2
  %376 = load i8, ptr %375, align 1, !tbaa !52
  %377 = load i16, ptr %349, align 2, !tbaa !111
  %378 = zext i8 %376 to i16
  %379 = icmp eq i16 %377, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %374
  %381 = load i16, ptr %350, align 2, !tbaa !101
  %382 = trunc i16 %381 to i8
  store i8 %382, ptr %362, align 1, !tbaa !52
  %383 = load i16, ptr %351, align 4, !tbaa !102
  %384 = trunc i16 %383 to i8
  store i8 %384, ptr %369, align 1, !tbaa !52
  %385 = load i16, ptr %352, align 2, !tbaa !103
  %386 = trunc i16 %385 to i8
  store i8 %386, ptr %375, align 1, !tbaa !52
  br label %401

387:                                              ; preds = %374, %368, %361
  %388 = zext i8 %364 to i64
  %389 = getelementptr inbounds i8, ptr %5, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !52
  store i8 %390, ptr %362, align 1, !tbaa !52
  %391 = getelementptr inbounds i8, ptr %362, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !52
  %393 = zext i8 %392 to i64
  %394 = getelementptr inbounds i8, ptr %5, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !52
  store i8 %395, ptr %391, align 1, !tbaa !52
  %396 = getelementptr inbounds i8, ptr %362, i64 2
  %397 = load i8, ptr %396, align 1, !tbaa !52
  %398 = zext i8 %397 to i64
  %399 = getelementptr inbounds i8, ptr %5, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !52
  store i8 %400, ptr %396, align 1, !tbaa !52
  br label %401

401:                                              ; preds = %380, %387
  %402 = add nuw i32 %363, 1
  %403 = getelementptr inbounds i8, ptr %362, i64 3
  %404 = icmp eq i32 %402, %18
  br i1 %404, label %1343, label %361, !llvm.loop !199

405:                                              ; preds = %354, %431
  %406 = phi ptr [ %1, %354 ], [ %433, %431 ]
  %407 = phi i32 [ 0, %354 ], [ %432, %431 ]
  %408 = load i8, ptr %406, align 1, !tbaa !52
  %409 = load i16, ptr %355, align 2, !tbaa !113
  %410 = zext i8 %408 to i16
  %411 = icmp eq i16 %409, %410
  br i1 %411, label %412, label %431

412:                                              ; preds = %405
  %413 = getelementptr inbounds i8, ptr %406, i64 1
  %414 = load i8, ptr %413, align 1, !tbaa !52
  %415 = load i16, ptr %356, align 4, !tbaa !112
  %416 = zext i8 %414 to i16
  %417 = icmp eq i16 %415, %416
  br i1 %417, label %418, label %431

418:                                              ; preds = %412
  %419 = getelementptr inbounds i8, ptr %406, i64 2
  %420 = load i8, ptr %419, align 1, !tbaa !52
  %421 = load i16, ptr %357, align 2, !tbaa !111
  %422 = zext i8 %420 to i16
  %423 = icmp eq i16 %421, %422
  br i1 %423, label %424, label %431

424:                                              ; preds = %418
  %425 = load i16, ptr %358, align 2, !tbaa !101
  %426 = trunc i16 %425 to i8
  store i8 %426, ptr %406, align 1, !tbaa !52
  %427 = load i16, ptr %359, align 4, !tbaa !102
  %428 = trunc i16 %427 to i8
  store i8 %428, ptr %413, align 1, !tbaa !52
  %429 = load i16, ptr %360, align 2, !tbaa !103
  %430 = trunc i16 %429 to i8
  store i8 %430, ptr %419, align 1, !tbaa !52
  br label %431

431:                                              ; preds = %405, %412, %418, %424
  %432 = add nuw i32 %407, 1
  %433 = getelementptr inbounds i8, ptr %406, i64 3
  %434 = icmp eq i32 %432, %18
  br i1 %434, label %1343, label %405, !llvm.loop !200

435:                                              ; preds = %338
  %436 = icmp eq ptr %11, null
  br i1 %436, label %445, label %437

437:                                              ; preds = %435
  br i1 %342, label %1343, label %438

438:                                              ; preds = %437
  %439 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %440 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %441 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %442 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %443 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %444 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %453

445:                                              ; preds = %435
  br i1 %342, label %1343, label %446

446:                                              ; preds = %445
  %447 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %448 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %449 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %450 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %451 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %452 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %544

453:                                              ; preds = %438, %538
  %454 = phi ptr [ %1, %438 ], [ %542, %538 ]
  %455 = phi i32 [ 0, %438 ], [ %541, %538 ]
  %456 = load i8, ptr %454, align 1, !tbaa !52
  %457 = zext i8 %456 to i32
  %458 = shl nuw nsw i32 %457, 8
  %459 = getelementptr inbounds i8, ptr %454, i64 1
  %460 = load i8, ptr %459, align 1, !tbaa !52
  %461 = zext i8 %460 to i32
  %462 = or disjoint i32 %458, %461
  %463 = getelementptr inbounds i8, ptr %454, i64 2
  %464 = getelementptr inbounds i8, ptr %454, i64 3
  %465 = getelementptr inbounds i8, ptr %454, i64 4
  %466 = load i8, ptr %465, align 1, !tbaa !52
  %467 = zext i8 %466 to i32
  %468 = shl nuw nsw i32 %467, 8
  %469 = getelementptr inbounds i8, ptr %454, i64 5
  %470 = load i8, ptr %469, align 1, !tbaa !52
  %471 = zext i8 %470 to i32
  %472 = or disjoint i32 %468, %471
  %473 = load i16, ptr %439, align 2, !tbaa !113
  %474 = zext i16 %473 to i32
  %475 = icmp eq i32 %462, %474
  br i1 %475, label %476, label %505

476:                                              ; preds = %453
  %477 = load i8, ptr %464, align 1, !tbaa !52
  %478 = load i8, ptr %463, align 1, !tbaa !52
  %479 = zext i8 %478 to i32
  %480 = shl nuw nsw i32 %479, 8
  %481 = zext i8 %477 to i32
  %482 = or disjoint i32 %480, %481
  %483 = load i16, ptr %440, align 4, !tbaa !112
  %484 = zext i16 %483 to i32
  %485 = icmp eq i32 %482, %484
  br i1 %485, label %486, label %505

486:                                              ; preds = %476
  %487 = load i16, ptr %441, align 2, !tbaa !111
  %488 = zext i16 %487 to i32
  %489 = icmp eq i32 %472, %488
  br i1 %489, label %490, label %505

490:                                              ; preds = %486
  %491 = load i16, ptr %442, align 2, !tbaa !101
  %492 = lshr i16 %491, 8
  %493 = trunc i16 %492 to i8
  store i8 %493, ptr %454, align 1, !tbaa !52
  %494 = load i16, ptr %442, align 2, !tbaa !101
  %495 = trunc i16 %494 to i8
  store i8 %495, ptr %459, align 1, !tbaa !52
  %496 = load i16, ptr %443, align 4, !tbaa !102
  %497 = lshr i16 %496, 8
  %498 = trunc i16 %497 to i8
  store i8 %498, ptr %463, align 1, !tbaa !52
  %499 = load i16, ptr %443, align 4, !tbaa !102
  %500 = trunc i16 %499 to i8
  store i8 %500, ptr %464, align 1, !tbaa !52
  %501 = load i16, ptr %444, align 2, !tbaa !103
  %502 = lshr i16 %501, 8
  %503 = trunc i16 %502 to i8
  store i8 %503, ptr %465, align 1, !tbaa !52
  %504 = load i16, ptr %444, align 2, !tbaa !103
  br label %538

505:                                              ; preds = %486, %476, %453
  %506 = lshr i32 %461, %17
  %507 = zext nneg i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %11, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !74
  %510 = zext i8 %456 to i64
  %511 = getelementptr inbounds i16, ptr %509, i64 %510
  %512 = load i16, ptr %511, align 2, !tbaa !58
  %513 = lshr i16 %512, 8
  %514 = trunc i16 %513 to i8
  store i8 %514, ptr %454, align 1, !tbaa !52
  %515 = trunc i16 %512 to i8
  store i8 %515, ptr %459, align 1, !tbaa !52
  %516 = load i8, ptr %464, align 1, !tbaa !52
  %517 = zext i8 %516 to i32
  %518 = lshr i32 %517, %17
  %519 = zext nneg i32 %518 to i64
  %520 = getelementptr inbounds ptr, ptr %11, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !74
  %522 = load i8, ptr %463, align 1, !tbaa !52
  %523 = zext i8 %522 to i64
  %524 = getelementptr inbounds i16, ptr %521, i64 %523
  %525 = load i16, ptr %524, align 2, !tbaa !58
  %526 = lshr i16 %525, 8
  %527 = trunc i16 %526 to i8
  store i8 %527, ptr %463, align 1, !tbaa !52
  %528 = trunc i16 %525 to i8
  store i8 %528, ptr %464, align 1, !tbaa !52
  %529 = lshr i32 %471, %17
  %530 = zext nneg i32 %529 to i64
  %531 = getelementptr inbounds ptr, ptr %11, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !74
  %533 = zext i8 %466 to i64
  %534 = getelementptr inbounds i16, ptr %532, i64 %533
  %535 = load i16, ptr %534, align 2, !tbaa !58
  %536 = lshr i16 %535, 8
  %537 = trunc i16 %536 to i8
  store i8 %537, ptr %465, align 1, !tbaa !52
  br label %538

538:                                              ; preds = %505, %490
  %539 = phi i16 [ %535, %505 ], [ %504, %490 ]
  %540 = trunc i16 %539 to i8
  store i8 %540, ptr %469, align 1, !tbaa !52
  %541 = add nuw i32 %455, 1
  %542 = getelementptr inbounds i8, ptr %454, i64 6
  %543 = icmp eq i32 %541, %18
  br i1 %543, label %1343, label %453, !llvm.loop !201

544:                                              ; preds = %446, %597
  %545 = phi ptr [ %1, %446 ], [ %599, %597 ]
  %546 = phi i32 [ 0, %446 ], [ %598, %597 ]
  %547 = load i8, ptr %545, align 1, !tbaa !52
  %548 = zext i8 %547 to i32
  %549 = shl nuw nsw i32 %548, 8
  %550 = getelementptr inbounds i8, ptr %545, i64 1
  %551 = load i8, ptr %550, align 1, !tbaa !52
  %552 = zext i8 %551 to i32
  %553 = or disjoint i32 %549, %552
  %554 = getelementptr inbounds i8, ptr %545, i64 2
  %555 = getelementptr inbounds i8, ptr %545, i64 3
  %556 = getelementptr inbounds i8, ptr %545, i64 4
  %557 = load i8, ptr %556, align 1, !tbaa !52
  %558 = zext i8 %557 to i32
  %559 = shl nuw nsw i32 %558, 8
  %560 = getelementptr inbounds i8, ptr %545, i64 5
  %561 = load i8, ptr %560, align 1, !tbaa !52
  %562 = zext i8 %561 to i32
  %563 = or disjoint i32 %559, %562
  %564 = load i16, ptr %447, align 2, !tbaa !113
  %565 = zext i16 %564 to i32
  %566 = icmp eq i32 %553, %565
  br i1 %566, label %567, label %597

567:                                              ; preds = %544
  %568 = load i8, ptr %555, align 1, !tbaa !52
  %569 = load i8, ptr %554, align 1, !tbaa !52
  %570 = zext i8 %569 to i32
  %571 = shl nuw nsw i32 %570, 8
  %572 = zext i8 %568 to i32
  %573 = or disjoint i32 %571, %572
  %574 = load i16, ptr %448, align 4, !tbaa !112
  %575 = zext i16 %574 to i32
  %576 = icmp eq i32 %573, %575
  br i1 %576, label %577, label %597

577:                                              ; preds = %567
  %578 = load i16, ptr %449, align 2, !tbaa !111
  %579 = zext i16 %578 to i32
  %580 = icmp eq i32 %563, %579
  br i1 %580, label %581, label %597

581:                                              ; preds = %577
  %582 = load i16, ptr %450, align 2, !tbaa !101
  %583 = lshr i16 %582, 8
  %584 = trunc i16 %583 to i8
  store i8 %584, ptr %545, align 1, !tbaa !52
  %585 = load i16, ptr %450, align 2, !tbaa !101
  %586 = trunc i16 %585 to i8
  store i8 %586, ptr %550, align 1, !tbaa !52
  %587 = load i16, ptr %451, align 4, !tbaa !102
  %588 = lshr i16 %587, 8
  %589 = trunc i16 %588 to i8
  store i8 %589, ptr %554, align 1, !tbaa !52
  %590 = load i16, ptr %451, align 4, !tbaa !102
  %591 = trunc i16 %590 to i8
  store i8 %591, ptr %555, align 1, !tbaa !52
  %592 = load i16, ptr %452, align 2, !tbaa !103
  %593 = lshr i16 %592, 8
  %594 = trunc i16 %593 to i8
  store i8 %594, ptr %556, align 1, !tbaa !52
  %595 = load i16, ptr %452, align 2, !tbaa !103
  %596 = trunc i16 %595 to i8
  store i8 %596, ptr %560, align 1, !tbaa !52
  br label %597

597:                                              ; preds = %581, %577, %567, %544
  %598 = add nuw i32 %546, 1
  %599 = getelementptr inbounds i8, ptr %545, i64 6
  %600 = icmp eq i32 %598, %18
  br i1 %600, label %1343, label %544, !llvm.loop !202

601:                                              ; preds = %3
  %602 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %603 = load i8, ptr %602, align 1, !tbaa !152
  %604 = icmp eq i8 %603, 8
  %605 = icmp eq i32 %18, 0
  br i1 %604, label %606, label %692

606:                                              ; preds = %601
  %607 = icmp ne ptr %9, null
  %608 = icmp ne ptr %7, null
  %609 = select i1 %607, i1 %608, i1 false
  %610 = icmp ne ptr %5, null
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %616, label %612

612:                                              ; preds = %606
  br i1 %605, label %1343, label %613

613:                                              ; preds = %612
  %614 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %615 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %662

616:                                              ; preds = %606
  br i1 %605, label %1343, label %617

617:                                              ; preds = %616
  %618 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %619 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %620

620:                                              ; preds = %617, %657
  %621 = phi ptr [ %1, %617 ], [ %660, %657 ]
  %622 = phi i32 [ 0, %617 ], [ %659, %657 ]
  %623 = getelementptr inbounds i8, ptr %621, i64 1
  %624 = load i8, ptr %623, align 1, !tbaa !52
  switch i8 %624, label %633 [
    i8 -1, label %625
    i8 0, label %630
  ]

625:                                              ; preds = %620
  %626 = load i8, ptr %621, align 1, !tbaa !52
  %627 = zext i8 %626 to i64
  %628 = getelementptr inbounds i8, ptr %5, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !52
  br label %657

630:                                              ; preds = %620
  %631 = load i16, ptr %618, align 8, !tbaa !104
  %632 = trunc i16 %631 to i8
  br label %657

633:                                              ; preds = %620
  %634 = zext i8 %624 to i16
  %635 = load i8, ptr %621, align 1, !tbaa !52
  %636 = zext i8 %635 to i64
  %637 = getelementptr inbounds i8, ptr %9, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !52
  %639 = zext i8 %638 to i16
  %640 = mul nuw i16 %639, %634
  %641 = load i16, ptr %619, align 2, !tbaa !121
  %642 = xor i8 %624, -1
  %643 = zext i8 %642 to i16
  %644 = mul i16 %641, %643
  %645 = add i16 %644, 128
  %646 = add i16 %645, %640
  %647 = zext i16 %646 to i32
  %648 = lshr i32 %647, 8
  %649 = add nuw nsw i32 %648, %647
  %650 = lshr i32 %649, 8
  %651 = trunc i32 %650 to i8
  br i1 %22, label %652, label %657

652:                                              ; preds = %633
  %653 = and i32 %650, 255
  %654 = zext nneg i32 %653 to i64
  %655 = getelementptr inbounds i8, ptr %7, i64 %654
  %656 = load i8, ptr %655, align 1, !tbaa !52
  br label %657

657:                                              ; preds = %633, %652, %630, %625
  %658 = phi i8 [ %632, %630 ], [ %629, %625 ], [ %651, %633 ], [ %656, %652 ]
  store i8 %658, ptr %621, align 1, !tbaa !52
  %659 = add nuw i32 %622, 1
  %660 = getelementptr inbounds i8, ptr %621, i64 2
  %661 = icmp eq i32 %659, %18
  br i1 %661, label %1343, label %620, !llvm.loop !203

662:                                              ; preds = %613, %688
  %663 = phi ptr [ %1, %613 ], [ %690, %688 ]
  %664 = phi i32 [ 0, %613 ], [ %689, %688 ]
  %665 = getelementptr inbounds i8, ptr %663, i64 1
  %666 = load i8, ptr %665, align 1, !tbaa !52
  switch i8 %666, label %670 [
    i8 0, label %667
    i8 -1, label %688
  ]

667:                                              ; preds = %662
  %668 = load i16, ptr %614, align 8, !tbaa !104
  %669 = trunc i16 %668 to i8
  br label %686

670:                                              ; preds = %662
  %671 = load i8, ptr %663, align 1, !tbaa !52
  %672 = zext i8 %671 to i16
  %673 = zext i8 %666 to i16
  %674 = mul nuw i16 %672, %673
  %675 = load i16, ptr %615, align 2, !tbaa !121
  %676 = xor i8 %666, -1
  %677 = zext i8 %676 to i16
  %678 = mul i16 %675, %677
  %679 = add i16 %678, 128
  %680 = add i16 %679, %674
  %681 = zext i16 %680 to i32
  %682 = lshr i32 %681, 8
  %683 = add nuw nsw i32 %682, %681
  %684 = lshr i32 %683, 8
  %685 = trunc i32 %684 to i8
  br label %686

686:                                              ; preds = %667, %670
  %687 = phi i8 [ %685, %670 ], [ %669, %667 ]
  store i8 %687, ptr %663, align 1, !tbaa !52
  br label %688

688:                                              ; preds = %686, %662
  %689 = add nuw i32 %664, 1
  %690 = getelementptr inbounds i8, ptr %663, i64 2
  %691 = icmp eq i32 %689, %18
  br i1 %691, label %1343, label %662, !llvm.loop !204

692:                                              ; preds = %601
  %693 = icmp ne ptr %11, null
  %694 = icmp ne ptr %13, null
  %695 = select i1 %693, i1 %694, i1 false
  %696 = icmp ne ptr %15, null
  %697 = select i1 %695, i1 %696, i1 false
  br i1 %697, label %702, label %698

698:                                              ; preds = %692
  br i1 %605, label %1343, label %699

699:                                              ; preds = %698
  %700 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %701 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %784

702:                                              ; preds = %692
  br i1 %605, label %1343, label %703

703:                                              ; preds = %702
  %704 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %705 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %706

706:                                              ; preds = %703, %780
  %707 = phi ptr [ %1, %703 ], [ %782, %780 ]
  %708 = phi i32 [ 0, %703 ], [ %781, %780 ]
  %709 = getelementptr inbounds i8, ptr %707, i64 2
  %710 = load i8, ptr %709, align 1, !tbaa !52
  %711 = zext i8 %710 to i32
  %712 = shl nuw nsw i32 %711, 8
  %713 = getelementptr inbounds i8, ptr %707, i64 3
  %714 = load i8, ptr %713, align 1, !tbaa !52
  %715 = zext i8 %714 to i32
  %716 = or disjoint i32 %712, %715
  %717 = trunc i32 %716 to i16
  switch i16 %717, label %740 [
    i16 -1, label %718
    i16 0, label %733
  ]

718:                                              ; preds = %706
  %719 = getelementptr inbounds i8, ptr %707, i64 1
  %720 = load i8, ptr %719, align 1, !tbaa !52
  %721 = zext i8 %720 to i32
  %722 = lshr i32 %721, %17
  %723 = zext nneg i32 %722 to i64
  %724 = getelementptr inbounds ptr, ptr %11, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !74
  %726 = load i8, ptr %707, align 1, !tbaa !52
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds i16, ptr %725, i64 %727
  %729 = load i16, ptr %728, align 2, !tbaa !58
  %730 = lshr i16 %729, 8
  %731 = trunc i16 %730 to i8
  store i8 %731, ptr %707, align 1, !tbaa !52
  %732 = trunc i16 %729 to i8
  store i8 %732, ptr %719, align 1, !tbaa !52
  br label %780

733:                                              ; preds = %706
  %734 = load i16, ptr %704, align 8, !tbaa !104
  %735 = lshr i16 %734, 8
  %736 = trunc i16 %735 to i8
  store i8 %736, ptr %707, align 1, !tbaa !52
  %737 = load i16, ptr %704, align 8, !tbaa !104
  %738 = trunc i16 %737 to i8
  %739 = getelementptr inbounds i8, ptr %707, i64 1
  store i8 %738, ptr %739, align 1, !tbaa !52
  br label %780

740:                                              ; preds = %706
  %741 = getelementptr inbounds i8, ptr %707, i64 1
  %742 = load i8, ptr %741, align 1, !tbaa !52
  %743 = zext i8 %742 to i32
  %744 = lshr i32 %743, %17
  %745 = zext nneg i32 %744 to i64
  %746 = getelementptr inbounds ptr, ptr %15, i64 %745
  %747 = load ptr, ptr %746, align 8, !tbaa !74
  %748 = load i8, ptr %707, align 1, !tbaa !52
  %749 = zext i8 %748 to i64
  %750 = getelementptr inbounds i16, ptr %747, i64 %749
  %751 = load i16, ptr %750, align 2, !tbaa !58
  %752 = zext i16 %751 to i32
  %753 = mul nuw i32 %716, %752
  %754 = load i16, ptr %705, align 2, !tbaa !121
  %755 = zext i16 %754 to i32
  %756 = xor i32 %716, 65535
  %757 = mul nuw i32 %756, %755
  %758 = add nuw i32 %753, 32768
  %759 = add i32 %758, %757
  %760 = lshr i32 %759, 16
  %761 = add i32 %760, %759
  %762 = lshr i32 %761, 16
  br i1 %22, label %765, label %763

763:                                              ; preds = %740
  %764 = trunc i32 %762 to i16
  br label %775

765:                                              ; preds = %740
  %766 = and i32 %762, 255
  %767 = lshr i32 %766, %17
  %768 = zext nneg i32 %767 to i64
  %769 = getelementptr inbounds ptr, ptr %13, i64 %768
  %770 = load ptr, ptr %769, align 8, !tbaa !74
  %771 = lshr i32 %761, 24
  %772 = zext nneg i32 %771 to i64
  %773 = getelementptr inbounds i16, ptr %770, i64 %772
  %774 = load i16, ptr %773, align 2, !tbaa !58
  br label %775

775:                                              ; preds = %765, %763
  %776 = phi i16 [ %764, %763 ], [ %774, %765 ]
  %777 = lshr i16 %776, 8
  %778 = trunc i16 %777 to i8
  store i8 %778, ptr %707, align 1, !tbaa !52
  %779 = trunc i16 %776 to i8
  store i8 %779, ptr %741, align 1, !tbaa !52
  br label %780

780:                                              ; preds = %733, %775, %718
  %781 = add nuw i32 %708, 1
  %782 = getelementptr inbounds i8, ptr %707, i64 4
  %783 = icmp eq i32 %781, %18
  br i1 %783, label %1343, label %706, !llvm.loop !205

784:                                              ; preds = %699, %824
  %785 = phi ptr [ %1, %699 ], [ %826, %824 ]
  %786 = phi i32 [ 0, %699 ], [ %825, %824 ]
  %787 = getelementptr inbounds i8, ptr %785, i64 2
  %788 = load i8, ptr %787, align 1, !tbaa !52
  %789 = zext i8 %788 to i32
  %790 = shl nuw nsw i32 %789, 8
  %791 = getelementptr inbounds i8, ptr %785, i64 3
  %792 = load i8, ptr %791, align 1, !tbaa !52
  %793 = zext i8 %792 to i32
  %794 = or disjoint i32 %790, %793
  %795 = trunc i32 %794 to i16
  switch i16 %795, label %803 [
    i16 0, label %796
    i16 -1, label %824
  ]

796:                                              ; preds = %784
  %797 = load i16, ptr %700, align 8, !tbaa !104
  %798 = lshr i16 %797, 8
  %799 = trunc i16 %798 to i8
  store i8 %799, ptr %785, align 1, !tbaa !52
  %800 = load i16, ptr %700, align 8, !tbaa !104
  %801 = trunc i16 %800 to i8
  %802 = getelementptr inbounds i8, ptr %785, i64 1
  store i8 %801, ptr %802, align 1, !tbaa !52
  br label %824

803:                                              ; preds = %784
  %804 = load i8, ptr %785, align 1, !tbaa !52
  %805 = zext i8 %804 to i32
  %806 = shl nuw nsw i32 %805, 8
  %807 = getelementptr inbounds i8, ptr %785, i64 1
  %808 = load i8, ptr %807, align 1, !tbaa !52
  %809 = zext i8 %808 to i32
  %810 = or disjoint i32 %806, %809
  %811 = mul nuw i32 %810, %794
  %812 = load i16, ptr %701, align 2, !tbaa !121
  %813 = zext i16 %812 to i32
  %814 = xor i32 %794, 65535
  %815 = mul nuw i32 %814, %813
  %816 = add nuw i32 %815, 32768
  %817 = add i32 %816, %811
  %818 = lshr i32 %817, 16
  %819 = add i32 %818, %817
  %820 = lshr i32 %819, 16
  %821 = lshr i32 %819, 24
  %822 = trunc i32 %821 to i8
  store i8 %822, ptr %785, align 1, !tbaa !52
  %823 = trunc i32 %820 to i8
  store i8 %823, ptr %807, align 1, !tbaa !52
  br label %824

824:                                              ; preds = %784, %803, %796
  %825 = add nuw i32 %786, 1
  %826 = getelementptr inbounds i8, ptr %785, i64 4
  %827 = icmp eq i32 %825, %18
  br i1 %827, label %1343, label %784, !llvm.loop !206

828:                                              ; preds = %3
  %829 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %830 = load i8, ptr %829, align 1, !tbaa !152
  %831 = icmp eq i8 %830, 8
  %832 = icmp eq i32 %18, 0
  br i1 %831, label %833, label %1026

833:                                              ; preds = %828
  %834 = icmp ne ptr %9, null
  %835 = icmp ne ptr %7, null
  %836 = select i1 %834, i1 %835, i1 false
  %837 = icmp ne ptr %5, null
  %838 = select i1 %836, i1 %837, i1 false
  br i1 %838, label %847, label %839

839:                                              ; preds = %833
  br i1 %832, label %1343, label %840

840:                                              ; preds = %839
  %841 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %842 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %843 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  %844 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %845 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %846 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %963

847:                                              ; preds = %833
  br i1 %832, label %1343, label %848

848:                                              ; preds = %847
  %849 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %850 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %851 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  %852 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 1
  %853 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 2
  %854 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 3
  br label %855

855:                                              ; preds = %848, %959
  %856 = phi ptr [ %1, %848 ], [ %961, %959 ]
  %857 = phi i32 [ 0, %848 ], [ %960, %959 ]
  %858 = getelementptr inbounds i8, ptr %856, i64 3
  %859 = load i8, ptr %858, align 1, !tbaa !52
  switch i8 %859, label %884 [
    i8 -1, label %860
    i8 0, label %875
  ]

860:                                              ; preds = %855
  %861 = load i8, ptr %856, align 1, !tbaa !52
  %862 = zext i8 %861 to i64
  %863 = getelementptr inbounds i8, ptr %5, i64 %862
  %864 = load i8, ptr %863, align 1, !tbaa !52
  store i8 %864, ptr %856, align 1, !tbaa !52
  %865 = getelementptr inbounds i8, ptr %856, i64 1
  %866 = load i8, ptr %865, align 1, !tbaa !52
  %867 = zext i8 %866 to i64
  %868 = getelementptr inbounds i8, ptr %5, i64 %867
  %869 = load i8, ptr %868, align 1, !tbaa !52
  store i8 %869, ptr %865, align 1, !tbaa !52
  %870 = getelementptr inbounds i8, ptr %856, i64 2
  %871 = load i8, ptr %870, align 1, !tbaa !52
  %872 = zext i8 %871 to i64
  %873 = getelementptr inbounds i8, ptr %5, i64 %872
  %874 = load i8, ptr %873, align 1, !tbaa !52
  store i8 %874, ptr %870, align 1, !tbaa !52
  br label %959

875:                                              ; preds = %855
  %876 = load i16, ptr %849, align 2, !tbaa !101
  %877 = trunc i16 %876 to i8
  store i8 %877, ptr %856, align 1, !tbaa !52
  %878 = load i16, ptr %850, align 4, !tbaa !102
  %879 = trunc i16 %878 to i8
  %880 = getelementptr inbounds i8, ptr %856, i64 1
  store i8 %879, ptr %880, align 1, !tbaa !52
  %881 = load i16, ptr %851, align 2, !tbaa !103
  %882 = trunc i16 %881 to i8
  %883 = getelementptr inbounds i8, ptr %856, i64 2
  store i8 %882, ptr %883, align 1, !tbaa !52
  br label %959

884:                                              ; preds = %855
  %885 = load i8, ptr %856, align 1, !tbaa !52
  %886 = zext i8 %885 to i64
  %887 = getelementptr inbounds i8, ptr %9, i64 %886
  %888 = load i8, ptr %887, align 1, !tbaa !52
  %889 = zext i8 %888 to i32
  %890 = zext i8 %859 to i32
  %891 = mul nuw nsw i32 %889, %890
  %892 = load i16, ptr %852, align 2, !tbaa !122
  %893 = zext i16 %892 to i32
  %894 = xor i8 %859, -1
  %895 = zext i8 %894 to i32
  %896 = mul nuw nsw i32 %893, %895
  %897 = add nuw nsw i32 %891, 128
  %898 = add nuw nsw i32 %897, %896
  %899 = lshr i32 %898, 8
  %900 = and i32 %899, 255
  %901 = add nuw nsw i32 %900, %898
  %902 = lshr i32 %901, 8
  %903 = trunc i32 %902 to i8
  br i1 %22, label %904, label %909

904:                                              ; preds = %884
  %905 = and i32 %902, 255
  %906 = zext nneg i32 %905 to i64
  %907 = getelementptr inbounds i8, ptr %7, i64 %906
  %908 = load i8, ptr %907, align 1, !tbaa !52
  br label %909

909:                                              ; preds = %904, %884
  %910 = phi i8 [ %903, %884 ], [ %908, %904 ]
  store i8 %910, ptr %856, align 1, !tbaa !52
  %911 = getelementptr inbounds i8, ptr %856, i64 1
  %912 = load i8, ptr %911, align 1, !tbaa !52
  %913 = zext i8 %912 to i64
  %914 = getelementptr inbounds i8, ptr %9, i64 %913
  %915 = load i8, ptr %914, align 1, !tbaa !52
  %916 = zext i8 %915 to i32
  %917 = mul nuw nsw i32 %916, %890
  %918 = load i16, ptr %853, align 2, !tbaa !123
  %919 = zext i16 %918 to i32
  %920 = mul nuw nsw i32 %919, %895
  %921 = add nuw nsw i32 %917, 128
  %922 = add nuw nsw i32 %921, %920
  %923 = lshr i32 %922, 8
  %924 = and i32 %923, 255
  %925 = add nuw nsw i32 %924, %922
  %926 = lshr i32 %925, 8
  %927 = trunc i32 %926 to i8
  br i1 %22, label %928, label %933

928:                                              ; preds = %909
  %929 = and i32 %926, 255
  %930 = zext nneg i32 %929 to i64
  %931 = getelementptr inbounds i8, ptr %7, i64 %930
  %932 = load i8, ptr %931, align 1, !tbaa !52
  br label %933

933:                                              ; preds = %928, %909
  %934 = phi i8 [ %927, %909 ], [ %932, %928 ]
  store i8 %934, ptr %911, align 1, !tbaa !52
  %935 = getelementptr inbounds i8, ptr %856, i64 2
  %936 = load i8, ptr %935, align 1, !tbaa !52
  %937 = zext i8 %936 to i64
  %938 = getelementptr inbounds i8, ptr %9, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !52
  %940 = zext i8 %939 to i32
  %941 = mul nuw nsw i32 %940, %890
  %942 = load i16, ptr %854, align 2, !tbaa !124
  %943 = zext i16 %942 to i32
  %944 = mul nuw nsw i32 %943, %895
  %945 = add nuw nsw i32 %941, 128
  %946 = add nuw nsw i32 %945, %944
  %947 = lshr i32 %946, 8
  %948 = and i32 %947, 255
  %949 = add nuw nsw i32 %948, %946
  %950 = lshr i32 %949, 8
  %951 = trunc i32 %950 to i8
  br i1 %22, label %952, label %957

952:                                              ; preds = %933
  %953 = and i32 %950, 255
  %954 = zext nneg i32 %953 to i64
  %955 = getelementptr inbounds i8, ptr %7, i64 %954
  %956 = load i8, ptr %955, align 1, !tbaa !52
  br label %957

957:                                              ; preds = %952, %933
  %958 = phi i8 [ %951, %933 ], [ %956, %952 ]
  store i8 %958, ptr %935, align 1, !tbaa !52
  br label %959

959:                                              ; preds = %875, %957, %860
  %960 = add nuw i32 %857, 1
  %961 = getelementptr inbounds i8, ptr %856, i64 4
  %962 = icmp eq i32 %960, %18
  br i1 %962, label %1343, label %855, !llvm.loop !207

963:                                              ; preds = %840, %1022
  %964 = phi ptr [ %1, %840 ], [ %1024, %1022 ]
  %965 = phi i32 [ 0, %840 ], [ %1023, %1022 ]
  %966 = getelementptr inbounds i8, ptr %964, i64 3
  %967 = load i8, ptr %966, align 1, !tbaa !52
  switch i8 %967, label %977 [
    i8 0, label %968
    i8 -1, label %1022
  ]

968:                                              ; preds = %963
  %969 = load i16, ptr %841, align 2, !tbaa !101
  %970 = trunc i16 %969 to i8
  store i8 %970, ptr %964, align 1, !tbaa !52
  %971 = load i16, ptr %842, align 4, !tbaa !102
  %972 = trunc i16 %971 to i8
  %973 = getelementptr inbounds i8, ptr %964, i64 1
  store i8 %972, ptr %973, align 1, !tbaa !52
  %974 = load i16, ptr %843, align 2, !tbaa !103
  %975 = trunc i16 %974 to i8
  %976 = getelementptr inbounds i8, ptr %964, i64 2
  store i8 %975, ptr %976, align 1, !tbaa !52
  br label %1022

977:                                              ; preds = %963
  %978 = load i8, ptr %964, align 1, !tbaa !52
  %979 = zext i8 %978 to i32
  %980 = zext i8 %967 to i32
  %981 = mul nuw nsw i32 %979, %980
  %982 = load i16, ptr %844, align 2, !tbaa !101
  %983 = zext i16 %982 to i32
  %984 = xor i8 %967, -1
  %985 = zext i8 %984 to i32
  %986 = mul nuw nsw i32 %983, %985
  %987 = add nuw nsw i32 %981, 128
  %988 = add nuw nsw i32 %987, %986
  %989 = lshr i32 %988, 8
  %990 = and i32 %989, 255
  %991 = add nuw nsw i32 %990, %988
  %992 = lshr i32 %991, 8
  %993 = trunc i32 %992 to i8
  store i8 %993, ptr %964, align 1, !tbaa !52
  %994 = getelementptr inbounds i8, ptr %964, i64 1
  %995 = load i8, ptr %994, align 1, !tbaa !52
  %996 = zext i8 %995 to i32
  %997 = mul nuw nsw i32 %996, %980
  %998 = load i16, ptr %845, align 4, !tbaa !102
  %999 = zext i16 %998 to i32
  %1000 = mul nuw nsw i32 %999, %985
  %1001 = add nuw nsw i32 %997, 128
  %1002 = add nuw nsw i32 %1001, %1000
  %1003 = lshr i32 %1002, 8
  %1004 = and i32 %1003, 255
  %1005 = add nuw nsw i32 %1004, %1002
  %1006 = lshr i32 %1005, 8
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, ptr %994, align 1, !tbaa !52
  %1008 = getelementptr inbounds i8, ptr %964, i64 2
  %1009 = load i8, ptr %1008, align 1, !tbaa !52
  %1010 = zext i8 %1009 to i32
  %1011 = mul nuw nsw i32 %1010, %980
  %1012 = load i16, ptr %846, align 2, !tbaa !103
  %1013 = zext i16 %1012 to i32
  %1014 = mul nuw nsw i32 %1013, %985
  %1015 = add nuw nsw i32 %1011, 128
  %1016 = add nuw nsw i32 %1015, %1014
  %1017 = lshr i32 %1016, 8
  %1018 = and i32 %1017, 255
  %1019 = add nuw nsw i32 %1018, %1016
  %1020 = lshr i32 %1019, 8
  %1021 = trunc i32 %1020 to i8
  store i8 %1021, ptr %1008, align 1, !tbaa !52
  br label %1022

1022:                                             ; preds = %963, %977, %968
  %1023 = add nuw i32 %965, 1
  %1024 = getelementptr inbounds i8, ptr %964, i64 4
  %1025 = icmp eq i32 %1023, %18
  br i1 %1025, label %1343, label %963, !llvm.loop !208

1026:                                             ; preds = %828
  %1027 = icmp ne ptr %11, null
  %1028 = icmp ne ptr %13, null
  %1029 = select i1 %1027, i1 %1028, i1 false
  %1030 = icmp ne ptr %15, null
  %1031 = select i1 %1029, i1 %1030, i1 false
  br i1 %1031, label %1040, label %1032

1032:                                             ; preds = %1026
  br i1 %832, label %1343, label %1033

1033:                                             ; preds = %1032
  %1034 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %1035 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %1036 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  %1037 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %1038 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %1039 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %1245

1040:                                             ; preds = %1026
  br i1 %832, label %1343, label %1041

1041:                                             ; preds = %1040
  %1042 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %1043 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %1044 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  %1045 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 1
  %1046 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 2
  %1047 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 3
  br label %1048

1048:                                             ; preds = %1041, %1241
  %1049 = phi ptr [ %1, %1041 ], [ %1243, %1241 ]
  %1050 = phi i32 [ 0, %1041 ], [ %1242, %1241 ]
  %1051 = getelementptr inbounds i8, ptr %1049, i64 6
  %1052 = load i8, ptr %1051, align 1, !tbaa !52
  %1053 = zext i8 %1052 to i32
  %1054 = shl nuw nsw i32 %1053, 8
  %1055 = getelementptr inbounds i8, ptr %1049, i64 7
  %1056 = load i8, ptr %1055, align 1, !tbaa !52
  %1057 = zext i8 %1056 to i32
  %1058 = or disjoint i32 %1054, %1057
  %1059 = trunc i32 %1058 to i16
  switch i16 %1059, label %1126 [
    i16 -1, label %1060
    i16 0, label %1105
  ]

1060:                                             ; preds = %1048
  %1061 = getelementptr inbounds i8, ptr %1049, i64 1
  %1062 = load i8, ptr %1061, align 1, !tbaa !52
  %1063 = zext i8 %1062 to i32
  %1064 = lshr i32 %1063, %17
  %1065 = zext nneg i32 %1064 to i64
  %1066 = getelementptr inbounds ptr, ptr %11, i64 %1065
  %1067 = load ptr, ptr %1066, align 8, !tbaa !74
  %1068 = load i8, ptr %1049, align 1, !tbaa !52
  %1069 = zext i8 %1068 to i64
  %1070 = getelementptr inbounds i16, ptr %1067, i64 %1069
  %1071 = load i16, ptr %1070, align 2, !tbaa !58
  %1072 = lshr i16 %1071, 8
  %1073 = trunc i16 %1072 to i8
  store i8 %1073, ptr %1049, align 1, !tbaa !52
  %1074 = trunc i16 %1071 to i8
  store i8 %1074, ptr %1061, align 1, !tbaa !52
  %1075 = getelementptr inbounds i8, ptr %1049, i64 3
  %1076 = load i8, ptr %1075, align 1, !tbaa !52
  %1077 = zext i8 %1076 to i32
  %1078 = lshr i32 %1077, %17
  %1079 = zext nneg i32 %1078 to i64
  %1080 = getelementptr inbounds ptr, ptr %11, i64 %1079
  %1081 = load ptr, ptr %1080, align 8, !tbaa !74
  %1082 = getelementptr inbounds i8, ptr %1049, i64 2
  %1083 = load i8, ptr %1082, align 1, !tbaa !52
  %1084 = zext i8 %1083 to i64
  %1085 = getelementptr inbounds i16, ptr %1081, i64 %1084
  %1086 = load i16, ptr %1085, align 2, !tbaa !58
  %1087 = lshr i16 %1086, 8
  %1088 = trunc i16 %1087 to i8
  store i8 %1088, ptr %1082, align 1, !tbaa !52
  %1089 = trunc i16 %1086 to i8
  store i8 %1089, ptr %1075, align 1, !tbaa !52
  %1090 = getelementptr inbounds i8, ptr %1049, i64 5
  %1091 = load i8, ptr %1090, align 1, !tbaa !52
  %1092 = zext i8 %1091 to i32
  %1093 = lshr i32 %1092, %17
  %1094 = zext nneg i32 %1093 to i64
  %1095 = getelementptr inbounds ptr, ptr %11, i64 %1094
  %1096 = load ptr, ptr %1095, align 8, !tbaa !74
  %1097 = getelementptr inbounds i8, ptr %1049, i64 4
  %1098 = load i8, ptr %1097, align 1, !tbaa !52
  %1099 = zext i8 %1098 to i64
  %1100 = getelementptr inbounds i16, ptr %1096, i64 %1099
  %1101 = load i16, ptr %1100, align 2, !tbaa !58
  %1102 = lshr i16 %1101, 8
  %1103 = trunc i16 %1102 to i8
  store i8 %1103, ptr %1097, align 1, !tbaa !52
  %1104 = trunc i16 %1101 to i8
  store i8 %1104, ptr %1090, align 1, !tbaa !52
  br label %1241

1105:                                             ; preds = %1048
  %1106 = load i16, ptr %1042, align 2, !tbaa !101
  %1107 = lshr i16 %1106, 8
  %1108 = trunc i16 %1107 to i8
  store i8 %1108, ptr %1049, align 1, !tbaa !52
  %1109 = load i16, ptr %1042, align 2, !tbaa !101
  %1110 = trunc i16 %1109 to i8
  %1111 = getelementptr inbounds i8, ptr %1049, i64 1
  store i8 %1110, ptr %1111, align 1, !tbaa !52
  %1112 = load i16, ptr %1043, align 4, !tbaa !102
  %1113 = lshr i16 %1112, 8
  %1114 = trunc i16 %1113 to i8
  %1115 = getelementptr inbounds i8, ptr %1049, i64 2
  store i8 %1114, ptr %1115, align 1, !tbaa !52
  %1116 = load i16, ptr %1043, align 4, !tbaa !102
  %1117 = trunc i16 %1116 to i8
  %1118 = getelementptr inbounds i8, ptr %1049, i64 3
  store i8 %1117, ptr %1118, align 1, !tbaa !52
  %1119 = load i16, ptr %1044, align 2, !tbaa !103
  %1120 = lshr i16 %1119, 8
  %1121 = trunc i16 %1120 to i8
  %1122 = getelementptr inbounds i8, ptr %1049, i64 4
  store i8 %1121, ptr %1122, align 1, !tbaa !52
  %1123 = load i16, ptr %1044, align 2, !tbaa !103
  %1124 = trunc i16 %1123 to i8
  %1125 = getelementptr inbounds i8, ptr %1049, i64 5
  store i8 %1124, ptr %1125, align 1, !tbaa !52
  br label %1241

1126:                                             ; preds = %1048
  %1127 = getelementptr inbounds i8, ptr %1049, i64 1
  %1128 = load i8, ptr %1127, align 1, !tbaa !52
  %1129 = zext i8 %1128 to i32
  %1130 = lshr i32 %1129, %17
  %1131 = zext nneg i32 %1130 to i64
  %1132 = getelementptr inbounds ptr, ptr %15, i64 %1131
  %1133 = load ptr, ptr %1132, align 8, !tbaa !74
  %1134 = load i8, ptr %1049, align 1, !tbaa !52
  %1135 = zext i8 %1134 to i64
  %1136 = getelementptr inbounds i16, ptr %1133, i64 %1135
  %1137 = load i16, ptr %1136, align 2, !tbaa !58
  %1138 = zext i16 %1137 to i32
  %1139 = mul nuw i32 %1058, %1138
  %1140 = load i16, ptr %1045, align 2, !tbaa !122
  %1141 = zext i16 %1140 to i32
  %1142 = xor i32 %1058, 65535
  %1143 = mul nuw i32 %1142, %1141
  %1144 = add nuw i32 %1139, 32768
  %1145 = add i32 %1144, %1143
  %1146 = lshr i32 %1145, 16
  %1147 = add i32 %1146, %1145
  %1148 = lshr i32 %1147, 16
  %1149 = trunc i32 %1148 to i16
  br i1 %22, label %1150, label %1160

1150:                                             ; preds = %1126
  %1151 = and i32 %1148, 255
  %1152 = lshr i32 %1151, %17
  %1153 = zext nneg i32 %1152 to i64
  %1154 = getelementptr inbounds ptr, ptr %13, i64 %1153
  %1155 = load ptr, ptr %1154, align 8, !tbaa !74
  %1156 = lshr i32 %1147, 24
  %1157 = zext nneg i32 %1156 to i64
  %1158 = getelementptr inbounds i16, ptr %1155, i64 %1157
  %1159 = load i16, ptr %1158, align 2, !tbaa !58
  br label %1160

1160:                                             ; preds = %1150, %1126
  %1161 = phi i16 [ %1149, %1126 ], [ %1159, %1150 ]
  %1162 = lshr i16 %1161, 8
  %1163 = trunc i16 %1162 to i8
  store i8 %1163, ptr %1049, align 1, !tbaa !52
  %1164 = trunc i16 %1161 to i8
  store i8 %1164, ptr %1127, align 1, !tbaa !52
  %1165 = getelementptr inbounds i8, ptr %1049, i64 3
  %1166 = load i8, ptr %1165, align 1, !tbaa !52
  %1167 = zext i8 %1166 to i32
  %1168 = lshr i32 %1167, %17
  %1169 = zext nneg i32 %1168 to i64
  %1170 = getelementptr inbounds ptr, ptr %15, i64 %1169
  %1171 = load ptr, ptr %1170, align 8, !tbaa !74
  %1172 = getelementptr inbounds i8, ptr %1049, i64 2
  %1173 = load i8, ptr %1172, align 1, !tbaa !52
  %1174 = zext i8 %1173 to i64
  %1175 = getelementptr inbounds i16, ptr %1171, i64 %1174
  %1176 = load i16, ptr %1175, align 2, !tbaa !58
  %1177 = zext i16 %1176 to i32
  %1178 = mul nuw i32 %1058, %1177
  %1179 = load i16, ptr %1046, align 2, !tbaa !123
  %1180 = zext i16 %1179 to i32
  %1181 = mul nuw i32 %1142, %1180
  %1182 = add nuw i32 %1178, 32768
  %1183 = add i32 %1182, %1181
  %1184 = lshr i32 %1183, 16
  %1185 = add i32 %1184, %1183
  %1186 = lshr i32 %1185, 16
  %1187 = trunc i32 %1186 to i16
  br i1 %22, label %1188, label %1198

1188:                                             ; preds = %1160
  %1189 = and i32 %1186, 255
  %1190 = lshr i32 %1189, %17
  %1191 = zext nneg i32 %1190 to i64
  %1192 = getelementptr inbounds ptr, ptr %13, i64 %1191
  %1193 = load ptr, ptr %1192, align 8, !tbaa !74
  %1194 = lshr i32 %1185, 24
  %1195 = zext nneg i32 %1194 to i64
  %1196 = getelementptr inbounds i16, ptr %1193, i64 %1195
  %1197 = load i16, ptr %1196, align 2, !tbaa !58
  br label %1198

1198:                                             ; preds = %1188, %1160
  %1199 = phi i16 [ %1187, %1160 ], [ %1197, %1188 ]
  %1200 = lshr i16 %1199, 8
  %1201 = trunc i16 %1200 to i8
  store i8 %1201, ptr %1172, align 1, !tbaa !52
  %1202 = trunc i16 %1199 to i8
  store i8 %1202, ptr %1165, align 1, !tbaa !52
  %1203 = getelementptr inbounds i8, ptr %1049, i64 5
  %1204 = load i8, ptr %1203, align 1, !tbaa !52
  %1205 = zext i8 %1204 to i32
  %1206 = lshr i32 %1205, %17
  %1207 = zext nneg i32 %1206 to i64
  %1208 = getelementptr inbounds ptr, ptr %15, i64 %1207
  %1209 = load ptr, ptr %1208, align 8, !tbaa !74
  %1210 = getelementptr inbounds i8, ptr %1049, i64 4
  %1211 = load i8, ptr %1210, align 1, !tbaa !52
  %1212 = zext i8 %1211 to i64
  %1213 = getelementptr inbounds i16, ptr %1209, i64 %1212
  %1214 = load i16, ptr %1213, align 2, !tbaa !58
  %1215 = zext i16 %1214 to i32
  %1216 = mul nuw i32 %1058, %1215
  %1217 = load i16, ptr %1047, align 2, !tbaa !124
  %1218 = zext i16 %1217 to i32
  %1219 = mul nuw i32 %1142, %1218
  %1220 = add nuw i32 %1216, 32768
  %1221 = add i32 %1220, %1219
  %1222 = lshr i32 %1221, 16
  %1223 = add i32 %1222, %1221
  %1224 = lshr i32 %1223, 16
  %1225 = trunc i32 %1224 to i16
  br i1 %22, label %1226, label %1236

1226:                                             ; preds = %1198
  %1227 = and i32 %1224, 255
  %1228 = lshr i32 %1227, %17
  %1229 = zext nneg i32 %1228 to i64
  %1230 = getelementptr inbounds ptr, ptr %13, i64 %1229
  %1231 = load ptr, ptr %1230, align 8, !tbaa !74
  %1232 = lshr i32 %1223, 24
  %1233 = zext nneg i32 %1232 to i64
  %1234 = getelementptr inbounds i16, ptr %1231, i64 %1233
  %1235 = load i16, ptr %1234, align 2, !tbaa !58
  br label %1236

1236:                                             ; preds = %1226, %1198
  %1237 = phi i16 [ %1225, %1198 ], [ %1235, %1226 ]
  %1238 = lshr i16 %1237, 8
  %1239 = trunc i16 %1238 to i8
  store i8 %1239, ptr %1210, align 1, !tbaa !52
  %1240 = trunc i16 %1237 to i8
  store i8 %1240, ptr %1203, align 1, !tbaa !52
  br label %1241

1241:                                             ; preds = %1105, %1236, %1060
  %1242 = add nuw i32 %1050, 1
  %1243 = getelementptr inbounds i8, ptr %1049, i64 8
  %1244 = icmp eq i32 %1242, %18
  br i1 %1244, label %1343, label %1048, !llvm.loop !209

1245:                                             ; preds = %1033, %1339
  %1246 = phi ptr [ %1, %1033 ], [ %1341, %1339 ]
  %1247 = phi i32 [ 0, %1033 ], [ %1340, %1339 ]
  %1248 = getelementptr inbounds i8, ptr %1246, i64 6
  %1249 = load i8, ptr %1248, align 1, !tbaa !52
  %1250 = zext i8 %1249 to i32
  %1251 = shl nuw nsw i32 %1250, 8
  %1252 = getelementptr inbounds i8, ptr %1246, i64 7
  %1253 = load i8, ptr %1252, align 1, !tbaa !52
  %1254 = zext i8 %1253 to i32
  %1255 = or disjoint i32 %1251, %1254
  %1256 = trunc i32 %1255 to i16
  switch i16 %1256, label %1278 [
    i16 0, label %1257
    i16 -1, label %1339
  ]

1257:                                             ; preds = %1245
  %1258 = load i16, ptr %1034, align 2, !tbaa !101
  %1259 = lshr i16 %1258, 8
  %1260 = trunc i16 %1259 to i8
  store i8 %1260, ptr %1246, align 1, !tbaa !52
  %1261 = load i16, ptr %1034, align 2, !tbaa !101
  %1262 = trunc i16 %1261 to i8
  %1263 = getelementptr inbounds i8, ptr %1246, i64 1
  store i8 %1262, ptr %1263, align 1, !tbaa !52
  %1264 = load i16, ptr %1035, align 4, !tbaa !102
  %1265 = lshr i16 %1264, 8
  %1266 = trunc i16 %1265 to i8
  %1267 = getelementptr inbounds i8, ptr %1246, i64 2
  store i8 %1266, ptr %1267, align 1, !tbaa !52
  %1268 = load i16, ptr %1035, align 4, !tbaa !102
  %1269 = trunc i16 %1268 to i8
  %1270 = getelementptr inbounds i8, ptr %1246, i64 3
  store i8 %1269, ptr %1270, align 1, !tbaa !52
  %1271 = load i16, ptr %1036, align 2, !tbaa !103
  %1272 = lshr i16 %1271, 8
  %1273 = trunc i16 %1272 to i8
  %1274 = getelementptr inbounds i8, ptr %1246, i64 4
  store i8 %1273, ptr %1274, align 1, !tbaa !52
  %1275 = load i16, ptr %1036, align 2, !tbaa !103
  %1276 = trunc i16 %1275 to i8
  %1277 = getelementptr inbounds i8, ptr %1246, i64 5
  store i8 %1276, ptr %1277, align 1, !tbaa !52
  br label %1339

1278:                                             ; preds = %1245
  %1279 = load i8, ptr %1246, align 1, !tbaa !52
  %1280 = zext i8 %1279 to i32
  %1281 = shl nuw nsw i32 %1280, 8
  %1282 = getelementptr inbounds i8, ptr %1246, i64 1
  %1283 = load i8, ptr %1282, align 1, !tbaa !52
  %1284 = zext i8 %1283 to i32
  %1285 = or disjoint i32 %1281, %1284
  %1286 = getelementptr inbounds i8, ptr %1246, i64 2
  %1287 = load i8, ptr %1286, align 1, !tbaa !52
  %1288 = zext i8 %1287 to i32
  %1289 = shl nuw nsw i32 %1288, 8
  %1290 = getelementptr inbounds i8, ptr %1246, i64 3
  %1291 = load i8, ptr %1290, align 1, !tbaa !52
  %1292 = zext i8 %1291 to i32
  %1293 = or disjoint i32 %1289, %1292
  %1294 = getelementptr inbounds i8, ptr %1246, i64 4
  %1295 = load i8, ptr %1294, align 1, !tbaa !52
  %1296 = zext i8 %1295 to i32
  %1297 = shl nuw nsw i32 %1296, 8
  %1298 = getelementptr inbounds i8, ptr %1246, i64 5
  %1299 = load i8, ptr %1298, align 1, !tbaa !52
  %1300 = zext i8 %1299 to i32
  %1301 = or disjoint i32 %1297, %1300
  %1302 = mul nuw i32 %1285, %1255
  %1303 = load i16, ptr %1037, align 2, !tbaa !101
  %1304 = zext i16 %1303 to i32
  %1305 = xor i32 %1255, 65535
  %1306 = mul nuw i32 %1305, %1304
  %1307 = add nuw i32 %1302, 32768
  %1308 = add i32 %1307, %1306
  %1309 = lshr i32 %1308, 16
  %1310 = add i32 %1309, %1308
  %1311 = lshr i32 %1310, 16
  %1312 = lshr i32 %1310, 24
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, ptr %1246, align 1, !tbaa !52
  %1314 = trunc i32 %1311 to i8
  store i8 %1314, ptr %1282, align 1, !tbaa !52
  %1315 = mul nuw i32 %1293, %1255
  %1316 = load i16, ptr %1038, align 4, !tbaa !102
  %1317 = zext i16 %1316 to i32
  %1318 = mul nuw i32 %1305, %1317
  %1319 = add nuw i32 %1315, 32768
  %1320 = add i32 %1319, %1318
  %1321 = lshr i32 %1320, 16
  %1322 = add i32 %1321, %1320
  %1323 = lshr i32 %1322, 16
  %1324 = lshr i32 %1322, 24
  %1325 = trunc i32 %1324 to i8
  store i8 %1325, ptr %1286, align 1, !tbaa !52
  %1326 = trunc i32 %1323 to i8
  store i8 %1326, ptr %1290, align 1, !tbaa !52
  %1327 = mul nuw i32 %1301, %1255
  %1328 = load i16, ptr %1039, align 2, !tbaa !103
  %1329 = zext i16 %1328 to i32
  %1330 = mul nuw i32 %1305, %1329
  %1331 = add nuw i32 %1327, 32768
  %1332 = add i32 %1331, %1330
  %1333 = lshr i32 %1332, 16
  %1334 = add i32 %1333, %1332
  %1335 = lshr i32 %1334, 16
  %1336 = lshr i32 %1334, 24
  %1337 = trunc i32 %1336 to i8
  store i8 %1337, ptr %1294, align 1, !tbaa !52
  %1338 = trunc i32 %1335 to i8
  store i8 %1338, ptr %1298, align 1, !tbaa !52
  br label %1339

1339:                                             ; preds = %1245, %1278, %1257
  %1340 = add nuw i32 %1247, 1
  %1341 = getelementptr inbounds i8, ptr %1246, i64 8
  %1342 = icmp eq i32 %1340, %18
  br i1 %1342, label %1343, label %1245, !llvm.loop !210

1343:                                             ; preds = %1339, %1241, %1022, %959, %824, %780, %688, %657, %538, %597, %401, %431, %309, %334, %251, %266, %184, %218, %102, %136, %54, %1032, %1040, %839, %847, %698, %702, %612, %616, %437, %445, %345, %353, %273, %277, %229, %233, %147, %151, %65, %69, %28, %3, %25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_gamma(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 77
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 78
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 74
  %9 = load i32, ptr %8, align 8, !tbaa !155
  %10 = load i32, ptr %0, align 8, !tbaa !151
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !152
  %13 = icmp ult i8 %12, 9
  %14 = icmp ne ptr %5, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = icmp eq i8 %12, 16
  %18 = icmp ne ptr %7, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %322

20:                                               ; preds = %16, %3
  %21 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %22 = load i8, ptr %21, align 8, !tbaa !147
  switch i8 %22, label %322 [
    i8 2, label %23
    i8 6, label %98
    i8 4, label %173
    i8 0, label %208
  ]

23:                                               ; preds = %20
  %24 = icmp eq i8 %12, 8
  %25 = icmp eq i32 %10, 0
  br i1 %24, label %27, label %26

26:                                               ; preds = %23
  br i1 %25, label %322, label %48

27:                                               ; preds = %23
  br i1 %25, label %322, label %28

28:                                               ; preds = %27, %28
  %29 = phi ptr [ %45, %28 ], [ %1, %27 ]
  %30 = phi i32 [ %46, %28 ], [ 0, %27 ]
  %31 = load i8, ptr %29, align 1, !tbaa !52
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i8, ptr %5, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !52
  store i8 %34, ptr %29, align 1, !tbaa !52
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !52
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr %5, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !52
  store i8 %39, ptr %35, align 1, !tbaa !52
  %40 = getelementptr inbounds i8, ptr %29, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !52
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, ptr %5, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !52
  store i8 %44, ptr %40, align 1, !tbaa !52
  %45 = getelementptr inbounds i8, ptr %29, i64 3
  %46 = add nuw i32 %30, 1
  %47 = icmp eq i32 %46, %10
  br i1 %47, label %322, label %28, !llvm.loop !211

48:                                               ; preds = %26, %48
  %49 = phi ptr [ %95, %48 ], [ %1, %26 ]
  %50 = phi i32 [ %96, %48 ], [ 0, %26 ]
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !52
  %53 = zext i8 %52 to i32
  %54 = lshr i32 %53, %9
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %7, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !74
  %58 = load i8, ptr %49, align 1, !tbaa !52
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !58
  %62 = lshr i16 %61, 8
  %63 = trunc i16 %62 to i8
  store i8 %63, ptr %49, align 1, !tbaa !52
  %64 = trunc i16 %61 to i8
  store i8 %64, ptr %51, align 1, !tbaa !52
  %65 = getelementptr inbounds i8, ptr %49, i64 2
  %66 = getelementptr inbounds i8, ptr %49, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !52
  %68 = zext i8 %67 to i32
  %69 = lshr i32 %68, %9
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %7, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !74
  %73 = load i8, ptr %65, align 1, !tbaa !52
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !58
  %77 = lshr i16 %76, 8
  %78 = trunc i16 %77 to i8
  store i8 %78, ptr %65, align 1, !tbaa !52
  %79 = trunc i16 %76 to i8
  store i8 %79, ptr %66, align 1, !tbaa !52
  %80 = getelementptr inbounds i8, ptr %49, i64 4
  %81 = getelementptr inbounds i8, ptr %49, i64 5
  %82 = load i8, ptr %81, align 1, !tbaa !52
  %83 = zext i8 %82 to i32
  %84 = lshr i32 %83, %9
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %7, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !74
  %88 = load i8, ptr %80, align 1, !tbaa !52
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds i16, ptr %87, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !58
  %92 = lshr i16 %91, 8
  %93 = trunc i16 %92 to i8
  store i8 %93, ptr %80, align 1, !tbaa !52
  %94 = trunc i16 %91 to i8
  store i8 %94, ptr %81, align 1, !tbaa !52
  %95 = getelementptr inbounds i8, ptr %49, i64 6
  %96 = add nuw i32 %50, 1
  %97 = icmp eq i32 %96, %10
  br i1 %97, label %322, label %48, !llvm.loop !212

98:                                               ; preds = %20
  %99 = icmp eq i8 %12, 8
  %100 = icmp eq i32 %10, 0
  br i1 %99, label %102, label %101

101:                                              ; preds = %98
  br i1 %100, label %322, label %123

102:                                              ; preds = %98
  br i1 %100, label %322, label %103

103:                                              ; preds = %102, %103
  %104 = phi ptr [ %120, %103 ], [ %1, %102 ]
  %105 = phi i32 [ %121, %103 ], [ 0, %102 ]
  %106 = load i8, ptr %104, align 1, !tbaa !52
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds i8, ptr %5, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !52
  store i8 %109, ptr %104, align 1, !tbaa !52
  %110 = getelementptr inbounds i8, ptr %104, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !52
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i8, ptr %5, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !52
  store i8 %114, ptr %110, align 1, !tbaa !52
  %115 = getelementptr inbounds i8, ptr %104, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !52
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i8, ptr %5, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !52
  store i8 %119, ptr %115, align 1, !tbaa !52
  %120 = getelementptr inbounds i8, ptr %104, i64 4
  %121 = add nuw i32 %105, 1
  %122 = icmp eq i32 %121, %10
  br i1 %122, label %322, label %103, !llvm.loop !213

123:                                              ; preds = %101, %123
  %124 = phi ptr [ %170, %123 ], [ %1, %101 ]
  %125 = phi i32 [ %171, %123 ], [ 0, %101 ]
  %126 = getelementptr inbounds i8, ptr %124, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !52
  %128 = zext i8 %127 to i32
  %129 = lshr i32 %128, %9
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %7, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !74
  %133 = load i8, ptr %124, align 1, !tbaa !52
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i16, ptr %132, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !58
  %137 = lshr i16 %136, 8
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %124, align 1, !tbaa !52
  %139 = trunc i16 %136 to i8
  store i8 %139, ptr %126, align 1, !tbaa !52
  %140 = getelementptr inbounds i8, ptr %124, i64 2
  %141 = getelementptr inbounds i8, ptr %124, i64 3
  %142 = load i8, ptr %141, align 1, !tbaa !52
  %143 = zext i8 %142 to i32
  %144 = lshr i32 %143, %9
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %7, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !74
  %148 = load i8, ptr %140, align 1, !tbaa !52
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i16, ptr %147, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !58
  %152 = lshr i16 %151, 8
  %153 = trunc i16 %152 to i8
  store i8 %153, ptr %140, align 1, !tbaa !52
  %154 = trunc i16 %151 to i8
  store i8 %154, ptr %141, align 1, !tbaa !52
  %155 = getelementptr inbounds i8, ptr %124, i64 4
  %156 = getelementptr inbounds i8, ptr %124, i64 5
  %157 = load i8, ptr %156, align 1, !tbaa !52
  %158 = zext i8 %157 to i32
  %159 = lshr i32 %158, %9
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %7, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !74
  %163 = load i8, ptr %155, align 1, !tbaa !52
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds i16, ptr %162, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !58
  %167 = lshr i16 %166, 8
  %168 = trunc i16 %167 to i8
  store i8 %168, ptr %155, align 1, !tbaa !52
  %169 = trunc i16 %166 to i8
  store i8 %169, ptr %156, align 1, !tbaa !52
  %170 = getelementptr inbounds i8, ptr %124, i64 8
  %171 = add nuw i32 %125, 1
  %172 = icmp eq i32 %171, %10
  br i1 %172, label %322, label %123, !llvm.loop !214

173:                                              ; preds = %20
  %174 = icmp eq i8 %12, 8
  %175 = icmp eq i32 %10, 0
  br i1 %174, label %177, label %176

176:                                              ; preds = %173
  br i1 %175, label %322, label %188

177:                                              ; preds = %173
  br i1 %175, label %322, label %178

178:                                              ; preds = %177, %178
  %179 = phi ptr [ %185, %178 ], [ %1, %177 ]
  %180 = phi i32 [ %186, %178 ], [ 0, %177 ]
  %181 = load i8, ptr %179, align 1, !tbaa !52
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds i8, ptr %5, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !52
  store i8 %184, ptr %179, align 1, !tbaa !52
  %185 = getelementptr inbounds i8, ptr %179, i64 2
  %186 = add nuw i32 %180, 1
  %187 = icmp eq i32 %186, %10
  br i1 %187, label %322, label %178, !llvm.loop !215

188:                                              ; preds = %176, %188
  %189 = phi ptr [ %205, %188 ], [ %1, %176 ]
  %190 = phi i32 [ %206, %188 ], [ 0, %176 ]
  %191 = getelementptr inbounds i8, ptr %189, i64 1
  %192 = load i8, ptr %191, align 1, !tbaa !52
  %193 = zext i8 %192 to i32
  %194 = lshr i32 %193, %9
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %7, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !74
  %198 = load i8, ptr %189, align 1, !tbaa !52
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds i16, ptr %197, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !58
  %202 = lshr i16 %201, 8
  %203 = trunc i16 %202 to i8
  store i8 %203, ptr %189, align 1, !tbaa !52
  %204 = trunc i16 %201 to i8
  store i8 %204, ptr %191, align 1, !tbaa !52
  %205 = getelementptr inbounds i8, ptr %189, i64 4
  %206 = add nuw i32 %190, 1
  %207 = icmp eq i32 %206, %10
  br i1 %207, label %322, label %188, !llvm.loop !216

208:                                              ; preds = %20
  %209 = icmp eq i8 %12, 2
  %210 = icmp ne i32 %10, 0
  %211 = select i1 %209, i1 %210, i1 false
  br i1 %211, label %212, label %262

212:                                              ; preds = %208, %212
  %213 = phi ptr [ %259, %212 ], [ %1, %208 ]
  %214 = phi i32 [ %260, %212 ], [ 0, %208 ]
  %215 = load i8, ptr %213, align 1, !tbaa !52
  %216 = zext i8 %215 to i32
  %217 = and i32 %216, 192
  %218 = and i32 %216, 48
  %219 = and i32 %216, 12
  %220 = and i32 %216, 3
  %221 = lshr exact i32 %217, 2
  %222 = lshr exact i32 %217, 4
  %223 = lshr i32 %216, 6
  %224 = or disjoint i32 %223, %222
  %225 = or disjoint i32 %224, %221
  %226 = or disjoint i32 %225, %217
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds i8, ptr %5, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !52
  %230 = and i8 %229, -64
  %231 = shl nuw nsw i32 %218, 2
  %232 = lshr exact i32 %218, 2
  %233 = or disjoint i32 %231, %232
  %234 = lshr exact i32 %218, 4
  %235 = or disjoint i32 %233, %234
  %236 = or disjoint i32 %235, %218
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds i8, ptr %5, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !52
  %240 = lshr i8 %239, 2
  %241 = and i8 %240, 48
  %242 = or disjoint i8 %241, %230
  %243 = mul nuw nsw i32 %219, 20
  %244 = lshr exact i32 %219, 2
  %245 = or disjoint i32 %243, %244
  %246 = or disjoint i32 %245, %219
  %247 = zext nneg i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %5, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !52
  %250 = lshr i8 %249, 4
  %251 = and i8 %250, 12
  %252 = or disjoint i8 %242, %251
  %253 = mul nuw nsw i32 %220, 85
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %5, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !52
  %257 = lshr i8 %256, 6
  %258 = or disjoint i8 %252, %257
  store i8 %258, ptr %213, align 1, !tbaa !52
  %259 = getelementptr inbounds i8, ptr %213, i64 1
  %260 = add nuw i32 %214, 4
  %261 = icmp ult i32 %260, %10
  br i1 %261, label %212, label %262, !llvm.loop !217

262:                                              ; preds = %212, %208
  %263 = load i8, ptr %11, align 1, !tbaa !152
  switch i8 %263, label %322 [
    i8 4, label %268
    i8 8, label %266
    i8 16, label %264
  ]

264:                                              ; preds = %262
  %265 = icmp eq i32 %10, 0
  br i1 %265, label %322, label %302

266:                                              ; preds = %262
  %267 = icmp eq i32 %10, 0
  br i1 %267, label %322, label %292

268:                                              ; preds = %262
  %269 = icmp eq i32 %10, 0
  br i1 %269, label %322, label %270

270:                                              ; preds = %268, %270
  %271 = phi ptr [ %289, %270 ], [ %1, %268 ]
  %272 = phi i32 [ %290, %270 ], [ 0, %268 ]
  %273 = load i8, ptr %271, align 1, !tbaa !52
  %274 = zext i8 %273 to i32
  %275 = and i32 %274, 240
  %276 = and i32 %274, 15
  %277 = lshr i32 %274, 4
  %278 = or disjoint i32 %275, %277
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %5, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !52
  %282 = and i8 %281, -16
  %283 = mul nuw nsw i32 %276, 17
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds i8, ptr %5, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !52
  %287 = lshr i8 %286, 4
  %288 = or disjoint i8 %287, %282
  store i8 %288, ptr %271, align 1, !tbaa !52
  %289 = getelementptr inbounds i8, ptr %271, i64 1
  %290 = add nuw i32 %272, 2
  %291 = icmp ult i32 %290, %10
  br i1 %291, label %270, label %322, !llvm.loop !218

292:                                              ; preds = %266, %292
  %293 = phi ptr [ %299, %292 ], [ %1, %266 ]
  %294 = phi i32 [ %300, %292 ], [ 0, %266 ]
  %295 = load i8, ptr %293, align 1, !tbaa !52
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds i8, ptr %5, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !52
  store i8 %298, ptr %293, align 1, !tbaa !52
  %299 = getelementptr inbounds i8, ptr %293, i64 1
  %300 = add nuw i32 %294, 1
  %301 = icmp eq i32 %300, %10
  br i1 %301, label %322, label %292, !llvm.loop !219

302:                                              ; preds = %264, %302
  %303 = phi ptr [ %319, %302 ], [ %1, %264 ]
  %304 = phi i32 [ %320, %302 ], [ 0, %264 ]
  %305 = getelementptr inbounds i8, ptr %303, i64 1
  %306 = load i8, ptr %305, align 1, !tbaa !52
  %307 = zext i8 %306 to i32
  %308 = lshr i32 %307, %9
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %7, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !74
  %312 = load i8, ptr %303, align 1, !tbaa !52
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds i16, ptr %311, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !58
  %316 = lshr i16 %315, 8
  %317 = trunc i16 %316 to i8
  store i8 %317, ptr %303, align 1, !tbaa !52
  %318 = trunc i16 %315 to i8
  store i8 %318, ptr %305, align 1, !tbaa !52
  %319 = getelementptr inbounds i8, ptr %303, i64 2
  %320 = add nuw i32 %304, 1
  %321 = icmp eq i32 %320, %10
  br i1 %321, label %322, label %302, !llvm.loop !220

322:                                              ; preds = %302, %292, %270, %188, %178, %123, %103, %48, %28, %264, %266, %268, %176, %177, %101, %102, %26, %27, %262, %20, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_do_encode_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !147
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !152
  switch i8 %12, label %69 [
    i8 8, label %13
    i8 16, label %35
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 79
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = and i32 %7, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 2, i64 4
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %1, i64 %20
  %24 = getelementptr i8, ptr %23, i64 -1
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %33, %25 ], [ %24, %22 ]
  %27 = phi i32 [ %32, %25 ], [ %4, %22 ]
  %28 = load i8, ptr %26, align 1, !tbaa !52
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i8, ptr %15, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !52
  store i8 %31, ptr %26, align 1, !tbaa !52
  %32 = add i32 %27, -1
  %33 = getelementptr inbounds i8, ptr %26, i64 %20
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %70, label %25, !llvm.loop !153

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 81
  %37 = load ptr, ptr %36, align 8, !tbaa !154
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 74
  %39 = load i32, ptr %38, align 8, !tbaa !155
  %40 = icmp eq ptr %37, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = and i32 %7, 2
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i64 4, i64 8
  %45 = icmp eq i32 %4, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %1, i64 %44
  %48 = getelementptr i8, ptr %47, i64 -2
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi ptr [ %67, %49 ], [ %48, %46 ]
  %51 = phi i32 [ %66, %49 ], [ %4, %46 ]
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !52
  %54 = zext i8 %53 to i32
  %55 = lshr i32 %54, %39
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %37, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = load i8, ptr %50, align 1, !tbaa !52
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !58
  %63 = lshr i16 %62, 8
  %64 = trunc i16 %63 to i8
  store i8 %64, ptr %50, align 1, !tbaa !52
  %65 = trunc i16 %62 to i8
  store i8 %65, ptr %52, align 1, !tbaa !52
  %66 = add i32 %51, -1
  %67 = getelementptr inbounds i8, ptr %50, i64 %44
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %70, label %49, !llvm.loop !156

69:                                               ; preds = %35, %13, %10, %3
  tail call void @png_warning(ptr noundef %2, ptr noundef nonnull @.str.16) #11
  br label %70

70:                                               ; preds = %49, %25, %41, %17, %69
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_scale_16_to_8(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !152
  %5 = icmp eq i8 %4, 16
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = icmp sgt i64 %8, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %17, %11 ], [ %1, %6 ]
  %13 = phi ptr [ %26, %11 ], [ %1, %6 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %12, align 1, !tbaa !52
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %12, i64 2
  %18 = load i8, ptr %14, align 1, !tbaa !52
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, %16
  %21 = mul nsw i32 %20, 65535
  %22 = add nsw i32 %21, 8388480
  %23 = lshr i32 %22, 24
  %24 = trunc i32 %23 to i8
  %25 = add i8 %15, %24
  %26 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %25, ptr %13, align 1, !tbaa !52
  %27 = icmp ult ptr %17, %9
  br i1 %27, label %11, label %28, !llvm.loop !158

28:                                               ; preds = %11, %6
  store i8 8, ptr %3, align 1, !tbaa !152
  %29 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %30 = load i8, ptr %29, align 2, !tbaa !159
  %31 = shl i8 %30, 3
  %32 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %31, ptr %32, align 1, !tbaa !160
  %33 = load i32, ptr %0, align 8, !tbaa !151
  %34 = zext i8 %30 to i32
  %35 = mul i32 %33, %34
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %7, align 8, !tbaa !157
  br label %37

37:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_chop(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !152
  %5 = icmp eq i8 %4, 16
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = icmp sgt i64 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %16, %11 ], [ %1, %6 ]
  %13 = phi ptr [ %15, %11 ], [ %1, %6 ]
  %14 = load i8, ptr %12, align 1, !tbaa !52
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %14, ptr %13, align 1, !tbaa !52
  %16 = getelementptr inbounds i8, ptr %12, i64 2
  %17 = icmp ult ptr %16, %9
  br i1 %17, label %11, label %18, !llvm.loop !161

18:                                               ; preds = %11, %6
  store i8 8, ptr %3, align 1, !tbaa !152
  %19 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !159
  %21 = shl i8 %20, 3
  %22 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %21, ptr %22, align 1, !tbaa !160
  %23 = load i32, ptr %0, align 8, !tbaa !151
  %24 = zext i8 %20 to i32
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  store i64 %26, ptr %7, align 8, !tbaa !157
  br label %27

27:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_quantize(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %0, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !152
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %9, label %121

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !147
  %12 = icmp eq i8 %11, 2
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %25, %17 ], [ %1, %15 ]
  %19 = phi ptr [ %39, %17 ], [ %1, %15 ]
  %20 = phi i32 [ %40, %17 ], [ 0, %15 ]
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  %22 = load i8, ptr %18, align 1, !tbaa !52
  %23 = getelementptr inbounds i8, ptr %18, i64 2
  %24 = load i8, ptr %21, align 1, !tbaa !52
  %25 = getelementptr inbounds i8, ptr %18, i64 3
  %26 = load i8, ptr %23, align 1, !tbaa !52
  %27 = lshr i8 %22, 3
  %28 = zext nneg i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 10
  %30 = lshr i8 %24, 3
  %31 = zext nneg i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 5
  %33 = or disjoint i64 %32, %29
  %34 = lshr i8 %26, 3
  %35 = zext nneg i8 %34 to i64
  %36 = or disjoint i64 %33, %35
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !52
  %39 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %38, ptr %19, align 1, !tbaa !52
  %40 = add nuw i32 %20, 1
  %41 = icmp eq i32 %40, %5
  br i1 %41, label %42, label %17, !llvm.loop !221

42:                                               ; preds = %17, %15
  store i8 3, ptr %10, align 8, !tbaa !147
  %43 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 1, ptr %43, align 2, !tbaa !159
  %44 = load i8, ptr %6, align 1, !tbaa !152
  %45 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %44, ptr %45, align 1, !tbaa !160
  %46 = icmp ugt i8 %44, 7
  %47 = zext i32 %5 to i64
  br i1 %46, label %48, label %52

48:                                               ; preds = %42
  %49 = lshr i8 %44, 3
  %50 = zext nneg i8 %49 to i64
  %51 = mul nuw nsw i64 %50, %47
  br label %118

52:                                               ; preds = %42
  %53 = zext nneg i8 %44 to i64
  %54 = mul nuw nsw i64 %53, %47
  %55 = add nuw nsw i64 %54, 7
  %56 = lshr i64 %55, 3
  br label %118

57:                                               ; preds = %9
  %58 = icmp eq i8 %11, 6
  %59 = and i1 %13, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %57
  %61 = icmp eq i32 %5, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %60, %62
  %63 = phi ptr [ %71, %62 ], [ %1, %60 ]
  %64 = phi ptr [ %84, %62 ], [ %1, %60 ]
  %65 = phi i32 [ %85, %62 ], [ 0, %60 ]
  %66 = getelementptr inbounds i8, ptr %63, i64 1
  %67 = load i8, ptr %63, align 1, !tbaa !52
  %68 = getelementptr inbounds i8, ptr %63, i64 2
  %69 = load i8, ptr %66, align 1, !tbaa !52
  %70 = load i8, ptr %68, align 1, !tbaa !52
  %71 = getelementptr inbounds i8, ptr %63, i64 4
  %72 = lshr i8 %67, 3
  %73 = zext nneg i8 %72 to i64
  %74 = shl nuw nsw i64 %73, 10
  %75 = lshr i8 %69, 3
  %76 = zext nneg i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 5
  %78 = or disjoint i64 %77, %74
  %79 = lshr i8 %70, 3
  %80 = zext nneg i8 %79 to i64
  %81 = or disjoint i64 %78, %80
  %82 = getelementptr inbounds i8, ptr %2, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !52
  %84 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %83, ptr %64, align 1, !tbaa !52
  %85 = add nuw i32 %65, 1
  %86 = icmp eq i32 %85, %5
  br i1 %86, label %87, label %62, !llvm.loop !222

87:                                               ; preds = %62, %60
  store i8 3, ptr %10, align 8, !tbaa !147
  %88 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 1, ptr %88, align 2, !tbaa !159
  %89 = load i8, ptr %6, align 1, !tbaa !152
  %90 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %89, ptr %90, align 1, !tbaa !160
  %91 = icmp ugt i8 %89, 7
  %92 = zext i32 %5 to i64
  br i1 %91, label %93, label %97

93:                                               ; preds = %87
  %94 = lshr i8 %89, 3
  %95 = zext nneg i8 %94 to i64
  %96 = mul nuw nsw i64 %95, %92
  br label %118

97:                                               ; preds = %87
  %98 = zext nneg i8 %89 to i64
  %99 = mul nuw nsw i64 %98, %92
  %100 = add nuw nsw i64 %99, 7
  %101 = lshr i64 %100, 3
  br label %118

102:                                              ; preds = %57
  %103 = icmp eq i8 %11, 3
  %104 = icmp ne ptr %3, null
  %105 = and i1 %104, %103
  %106 = icmp ne i32 %5, 0
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %121

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %116, %108 ], [ %1, %102 ]
  %110 = phi i32 [ %115, %108 ], [ 0, %102 ]
  %111 = load i8, ptr %109, align 1, !tbaa !52
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i8, ptr %3, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !52
  store i8 %114, ptr %109, align 1, !tbaa !52
  %115 = add nuw i32 %110, 1
  %116 = getelementptr inbounds i8, ptr %109, i64 1
  %117 = icmp eq i32 %115, %5
  br i1 %117, label %121, label %108, !llvm.loop !223

118:                                              ; preds = %93, %97, %48, %52
  %119 = phi i64 [ %51, %48 ], [ %56, %52 ], [ %96, %93 ], [ %101, %97 ]
  %120 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %119, ptr %120, align 8, !tbaa !157
  br label %121

121:                                              ; preds = %108, %118, %102, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_expand_16(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !152
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !147
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !157
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %1, i64 %12
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %23, %17 ], [ %16, %14 ]
  %19 = phi ptr [ %20, %17 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !52
  %22 = getelementptr inbounds i8, ptr %18, i64 -1
  store i8 %21, ptr %22, align 1, !tbaa !52
  %23 = getelementptr inbounds i8, ptr %18, i64 -2
  store i8 %21, ptr %23, align 1, !tbaa !52
  %24 = icmp ugt ptr %23, %20
  br i1 %24, label %17, label %25, !llvm.loop !162

25:                                               ; preds = %17, %10
  %26 = load i64, ptr %11, align 8, !tbaa !157
  %27 = shl i64 %26, 1
  store i64 %27, ptr %11, align 8, !tbaa !157
  store i8 16, ptr %3, align 1, !tbaa !152
  %28 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %29 = load i8, ptr %28, align 2, !tbaa !159
  %30 = shl i8 %29, 4
  %31 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %30, ptr %31, align 1, !tbaa !160
  br label %32

32:                                               ; preds = %25, %6, %2
  ret void
}

declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_unshift(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = alloca [4 x i32], align 16
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !147
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 3
  br i1 %8, label %144, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !152
  %12 = zext i8 %11 to i32
  %13 = and i32 %7, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %2, align 1, !tbaa !224
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %12, %17
  store i32 %18, ptr %4, align 16, !tbaa !98
  %19 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 1
  %20 = load i8, ptr %19, align 1, !tbaa !225
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %12, %21
  %23 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 %22, ptr %23, align 4, !tbaa !98
  %24 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 2
  %25 = load i8, ptr %24, align 1, !tbaa !226
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %12, %26
  %28 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 2
  store i32 %27, ptr %28, align 8, !tbaa !98
  br label %34

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !227
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %12, %32
  store i32 %33, ptr %4, align 16, !tbaa !98
  br label %34

34:                                               ; preds = %29, %15
  %35 = phi i32 [ 3, %15 ], [ 1, %29 ]
  %36 = and i32 %7, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 4
  %40 = load i8, ptr %39, align 1, !tbaa !228
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %12, %41
  %43 = add nuw nsw i32 %35, 1
  %44 = zext nneg i32 %35 to i64
  %45 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %44
  store i32 %42, ptr %45, align 4, !tbaa !98
  br label %46

46:                                               ; preds = %38, %34
  %47 = phi i32 [ %43, %38 ], [ %35, %34 ]
  %48 = zext nneg i32 %47 to i64
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ 0, %46 ], [ %59, %49 ]
  %51 = phi i32 [ 0, %46 ], [ %58, %49 ]
  %52 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !98
  %54 = icmp sgt i32 %53, 0
  %55 = icmp slt i32 %53, %12
  %56 = select i1 %54, i1 %55, i1 false
  %57 = select i1 %56, i32 %53, i32 0
  store i32 %57, ptr %52, align 4
  %58 = select i1 %56, i32 1, i32 %51
  %59 = add nuw nsw i64 %50, 1
  %60 = icmp eq i64 %59, %48
  br i1 %60, label %61, label %49, !llvm.loop !229

61:                                               ; preds = %49
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %143, label %63

63:                                               ; preds = %61
  %64 = add nsw i32 %12, -2
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 31)
  switch i32 %65, label %142 [
    i32 0, label %66
    i32 1, label %78
    i32 3, label %95
    i32 7, label %115
  ]

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !157
  %69 = getelementptr inbounds i8, ptr %1, i64 %68
  %70 = icmp sgt i64 %68, 0
  br i1 %70, label %71, label %142

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %76, %71 ], [ %1, %66 ]
  %73 = load i8, ptr %72, align 1, !tbaa !52
  %74 = lshr i8 %73, 1
  %75 = and i8 %74, 85
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %75, ptr %72, align 1, !tbaa !52
  %77 = icmp ult ptr %76, %69
  br i1 %77, label %71, label %142, !llvm.loop !230

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !157
  %81 = getelementptr inbounds i8, ptr %1, i64 %80
  %82 = load i32, ptr %4, align 16, !tbaa !98
  %83 = lshr i32 15, %82
  %84 = mul nuw nsw i32 %83, 17
  %85 = icmp sgt i64 %80, 0
  br i1 %85, label %86, label %142

86:                                               ; preds = %78, %86
  %87 = phi ptr [ %93, %86 ], [ %1, %78 ]
  %88 = load i8, ptr %87, align 1, !tbaa !52
  %89 = zext i8 %88 to i32
  %90 = lshr i32 %89, %82
  %91 = and i32 %90, %84
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 %92, ptr %87, align 1, !tbaa !52
  %94 = icmp ult ptr %93, %81
  br i1 %94, label %86, label %142, !llvm.loop !231

95:                                               ; preds = %63
  %96 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !157
  %98 = getelementptr inbounds i8, ptr %1, i64 %97
  %99 = icmp sgt i64 %97, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %95, %100
  %101 = phi i32 [ %111, %100 ], [ 0, %95 ]
  %102 = phi ptr [ %113, %100 ], [ %1, %95 ]
  %103 = load i8, ptr %102, align 1, !tbaa !52
  %104 = zext i8 %103 to i32
  %105 = sext i32 %101 to i64
  %106 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !98
  %108 = lshr i32 %104, %107
  %109 = add nsw i32 %101, 1
  %110 = icmp slt i32 %109, %47
  %111 = select i1 %110, i32 %109, i32 0
  %112 = trunc i32 %108 to i8
  %113 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %112, ptr %102, align 1, !tbaa !52
  %114 = icmp ult ptr %113, %98
  br i1 %114, label %100, label %142, !llvm.loop !232

115:                                              ; preds = %63
  %116 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !157
  %118 = getelementptr inbounds i8, ptr %1, i64 %117
  %119 = icmp sgt i64 %117, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115, %120
  %121 = phi i32 [ %136, %120 ], [ 0, %115 ]
  %122 = phi ptr [ %140, %120 ], [ %1, %115 ]
  %123 = load i8, ptr %122, align 1, !tbaa !52
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 8
  %126 = getelementptr inbounds i8, ptr %122, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !52
  %128 = zext i8 %127 to i32
  %129 = or disjoint i32 %125, %128
  %130 = sext i32 %121 to i64
  %131 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !98
  %133 = lshr i32 %129, %132
  %134 = add nsw i32 %121, 1
  %135 = icmp slt i32 %134, %47
  %136 = select i1 %135, i32 %134, i32 0
  %137 = lshr i32 %133, 8
  %138 = trunc i32 %137 to i8
  store i8 %138, ptr %122, align 1, !tbaa !52
  %139 = trunc i32 %133 to i8
  %140 = getelementptr inbounds i8, ptr %122, i64 2
  store i8 %139, ptr %126, align 1, !tbaa !52
  %141 = icmp ult ptr %140, %118
  br i1 %141, label %120, label %142, !llvm.loop !233

142:                                              ; preds = %120, %100, %86, %71, %115, %95, %78, %66, %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %144

143:                                              ; preds = %61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %144

144:                                              ; preds = %142, %3, %143
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_unpack(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !152
  %5 = icmp ult i8 %4, 8
  br i1 %5, label %6, label %106

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !151
  switch i8 %4, label %97 [
    i8 1, label %8
    i8 2, label %38
    i8 4, label %69
  ]

8:                                                ; preds = %6
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %97, label %10

10:                                               ; preds = %8
  %11 = add i32 %7, 7
  %12 = and i32 %11, 7
  %13 = xor i32 %12, 7
  %14 = zext i32 %7 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = add i32 %7, -1
  %17 = lshr i32 %16, 3
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  br label %20

20:                                               ; preds = %10, %20
  %21 = phi i32 [ %35, %20 ], [ %13, %10 ]
  %22 = phi ptr [ %25, %20 ], [ %15, %10 ]
  %23 = phi ptr [ %34, %20 ], [ %19, %10 ]
  %24 = phi i32 [ %36, %20 ], [ 0, %10 ]
  %25 = getelementptr inbounds i8, ptr %22, i64 -1
  %26 = load i8, ptr %23, align 1, !tbaa !52
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, %21
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  store i8 %30, ptr %25, align 1, !tbaa !52
  %31 = icmp eq i32 %21, 7
  %32 = add nuw nsw i32 %21, 1
  %33 = sext i1 %31 to i64
  %34 = getelementptr inbounds i8, ptr %23, i64 %33
  %35 = select i1 %31, i32 0, i32 %32
  %36 = add nuw i32 %24, 1
  %37 = icmp eq i32 %36, %7
  br i1 %37, label %97, label %20, !llvm.loop !234

38:                                               ; preds = %6
  %39 = icmp eq i32 %7, 0
  br i1 %39, label %97, label %40

40:                                               ; preds = %38
  %41 = shl i32 %7, 1
  %42 = add i32 %41, 6
  %43 = and i32 %42, 6
  %44 = xor i32 %43, 6
  %45 = zext i32 %7 to i64
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  %47 = add i32 %7, -1
  %48 = lshr i32 %47, 2
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %1, i64 %49
  br label %51

51:                                               ; preds = %40, %51
  %52 = phi i32 [ %66, %51 ], [ %44, %40 ]
  %53 = phi ptr [ %56, %51 ], [ %46, %40 ]
  %54 = phi ptr [ %65, %51 ], [ %50, %40 ]
  %55 = phi i32 [ %67, %51 ], [ 0, %40 ]
  %56 = getelementptr inbounds i8, ptr %53, i64 -1
  %57 = load i8, ptr %54, align 1, !tbaa !52
  %58 = zext i8 %57 to i32
  %59 = lshr i32 %58, %52
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 3
  store i8 %61, ptr %56, align 1, !tbaa !52
  %62 = icmp eq i32 %52, 6
  %63 = add i32 %52, 2
  %64 = sext i1 %62 to i64
  %65 = getelementptr inbounds i8, ptr %54, i64 %64
  %66 = select i1 %62, i32 0, i32 %63
  %67 = add nuw i32 %55, 1
  %68 = icmp eq i32 %67, %7
  br i1 %68, label %97, label %51, !llvm.loop !235

69:                                               ; preds = %6
  %70 = icmp eq i32 %7, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %69
  %72 = shl i32 %7, 2
  %73 = and i32 %72, 4
  %74 = zext i32 %7 to i64
  %75 = getelementptr inbounds i8, ptr %1, i64 %74
  %76 = add i32 %7, -1
  %77 = lshr i32 %76, 1
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %1, i64 %78
  br label %80

80:                                               ; preds = %71, %80
  %81 = phi i32 [ %94, %80 ], [ %73, %71 ]
  %82 = phi ptr [ %85, %80 ], [ %75, %71 ]
  %83 = phi ptr [ %93, %80 ], [ %79, %71 ]
  %84 = phi i32 [ %95, %80 ], [ 0, %71 ]
  %85 = getelementptr inbounds i8, ptr %82, i64 -1
  %86 = load i8, ptr %83, align 1, !tbaa !52
  %87 = zext i8 %86 to i32
  %88 = lshr i32 %87, %81
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 15
  store i8 %90, ptr %85, align 1, !tbaa !52
  %91 = icmp ne i32 %81, 0
  %92 = sext i1 %91 to i64
  %93 = getelementptr inbounds i8, ptr %83, i64 %92
  %94 = select i1 %91, i32 0, i32 4
  %95 = add nuw i32 %84, 1
  %96 = icmp eq i32 %95, %7
  br i1 %96, label %97, label %80, !llvm.loop !236

97:                                               ; preds = %80, %51, %20, %69, %38, %8, %6
  store i8 8, ptr %3, align 1, !tbaa !152
  %98 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %99 = load i8, ptr %98, align 2, !tbaa !159
  %100 = shl i8 %99, 3
  %101 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %100, ptr %101, align 1, !tbaa !160
  %102 = zext i8 %99 to i32
  %103 = mul i32 %7, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %104, ptr %105, align 8, !tbaa !157
  br label %106

106:                                              ; preds = %97, %2
  ret void
}

declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_filler(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %0, align 8, !tbaa !151
  %6 = lshr i32 %2, 8
  %7 = trunc i32 %6 to i8
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !147
  switch i8 %10, label %241 [
    i8 0, label %11
    i8 2, label %99
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !152
  switch i8 %13, label %241 [
    i8 8, label %14
    i8 16, label %51
  ]

14:                                               ; preds = %11
  %15 = and i32 %3, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = zext i32 %5 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  %21 = icmp ugt i32 %5, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %17 ]
  %24 = phi ptr [ %27, %22 ], [ %19, %17 ]
  %25 = phi i32 [ %30, %22 ], [ 1, %17 ]
  %26 = getelementptr inbounds i8, ptr %23, i64 -1
  store i8 %8, ptr %26, align 1, !tbaa !52
  %27 = getelementptr inbounds i8, ptr %24, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !52
  %29 = getelementptr inbounds i8, ptr %23, i64 -2
  store i8 %28, ptr %29, align 1, !tbaa !52
  %30 = add nuw i32 %25, 1
  %31 = icmp eq i32 %30, %5
  br i1 %31, label %32, label %22, !llvm.loop !237

32:                                               ; preds = %22, %17
  %33 = phi ptr [ %20, %17 ], [ %29, %22 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  br label %227

35:                                               ; preds = %14
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %232, label %37

37:                                               ; preds = %35
  %38 = zext i32 %5 to i64
  %39 = getelementptr inbounds i8, ptr %1, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %48, %41 ], [ %40, %37 ]
  %43 = phi ptr [ %45, %41 ], [ %39, %37 ]
  %44 = phi i32 [ %49, %41 ], [ 0, %37 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !52
  %47 = getelementptr inbounds i8, ptr %42, i64 -1
  store i8 %46, ptr %47, align 1, !tbaa !52
  %48 = getelementptr inbounds i8, ptr %42, i64 -2
  store i8 %8, ptr %48, align 1, !tbaa !52
  %49 = add nuw i32 %44, 1
  %50 = icmp eq i32 %49, %5
  br i1 %50, label %232, label %41, !llvm.loop !238

51:                                               ; preds = %11
  %52 = and i32 %3, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %51
  %55 = zext i32 %5 to i64
  %56 = shl nuw nsw i64 %55, 1
  %57 = getelementptr inbounds i8, ptr %1, i64 %56
  %58 = getelementptr inbounds i8, ptr %57, i64 %56
  %59 = icmp ugt i32 %5, 1
  br i1 %59, label %60, label %74

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %71, %60 ], [ %58, %54 ]
  %62 = phi ptr [ %69, %60 ], [ %57, %54 ]
  %63 = phi i32 [ %72, %60 ], [ 1, %54 ]
  %64 = getelementptr inbounds i8, ptr %61, i64 -1
  store i8 %7, ptr %64, align 1, !tbaa !52
  %65 = getelementptr inbounds i8, ptr %61, i64 -2
  store i8 %8, ptr %65, align 1, !tbaa !52
  %66 = getelementptr inbounds i8, ptr %62, i64 -1
  %67 = load i8, ptr %66, align 1, !tbaa !52
  %68 = getelementptr inbounds i8, ptr %61, i64 -3
  store i8 %67, ptr %68, align 1, !tbaa !52
  %69 = getelementptr inbounds i8, ptr %62, i64 -2
  %70 = load i8, ptr %69, align 1, !tbaa !52
  %71 = getelementptr inbounds i8, ptr %61, i64 -4
  store i8 %70, ptr %71, align 1, !tbaa !52
  %72 = add nuw i32 %63, 1
  %73 = icmp eq i32 %72, %5
  br i1 %73, label %74, label %60, !llvm.loop !239

74:                                               ; preds = %60, %54
  %75 = phi ptr [ %58, %54 ], [ %71, %60 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 -1
  store i8 %7, ptr %76, align 1, !tbaa !52
  %77 = getelementptr inbounds i8, ptr %75, i64 -2
  br label %227

78:                                               ; preds = %51
  %79 = icmp eq i32 %5, 0
  br i1 %79, label %232, label %80

80:                                               ; preds = %78
  %81 = zext i32 %5 to i64
  %82 = shl nuw nsw i64 %81, 1
  %83 = getelementptr inbounds i8, ptr %1, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 %82
  br label %85

85:                                               ; preds = %80, %85
  %86 = phi ptr [ %96, %85 ], [ %84, %80 ]
  %87 = phi ptr [ %92, %85 ], [ %83, %80 ]
  %88 = phi i32 [ %97, %85 ], [ 0, %80 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 -1
  %90 = load i8, ptr %89, align 1, !tbaa !52
  %91 = getelementptr inbounds i8, ptr %86, i64 -1
  store i8 %90, ptr %91, align 1, !tbaa !52
  %92 = getelementptr inbounds i8, ptr %87, i64 -2
  %93 = load i8, ptr %92, align 1, !tbaa !52
  %94 = getelementptr inbounds i8, ptr %86, i64 -2
  store i8 %93, ptr %94, align 1, !tbaa !52
  %95 = getelementptr inbounds i8, ptr %86, i64 -3
  store i8 %7, ptr %95, align 1, !tbaa !52
  %96 = getelementptr inbounds i8, ptr %86, i64 -4
  store i8 %8, ptr %96, align 1, !tbaa !52
  %97 = add nuw i32 %88, 1
  %98 = icmp eq i32 %97, %5
  br i1 %98, label %232, label %85, !llvm.loop !240

99:                                               ; preds = %4
  %100 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !152
  switch i8 %101, label %241 [
    i8 8, label %102
    i8 16, label %153
  ]

102:                                              ; preds = %99
  %103 = and i32 %3, 128
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = zext i32 %5 to i64
  %107 = mul nuw nsw i64 %106, 3
  %108 = getelementptr inbounds i8, ptr %1, i64 %107
  %109 = getelementptr inbounds i8, ptr %108, i64 %106
  %110 = icmp ugt i32 %5, 1
  br i1 %110, label %111, label %127

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %124, %111 ], [ %109, %105 ]
  %113 = phi ptr [ %122, %111 ], [ %108, %105 ]
  %114 = phi i32 [ %125, %111 ], [ 1, %105 ]
  %115 = getelementptr inbounds i8, ptr %112, i64 -1
  store i8 %8, ptr %115, align 1, !tbaa !52
  %116 = getelementptr inbounds i8, ptr %113, i64 -1
  %117 = load i8, ptr %116, align 1, !tbaa !52
  %118 = getelementptr inbounds i8, ptr %112, i64 -2
  store i8 %117, ptr %118, align 1, !tbaa !52
  %119 = getelementptr inbounds i8, ptr %113, i64 -2
  %120 = load i8, ptr %119, align 1, !tbaa !52
  %121 = getelementptr inbounds i8, ptr %112, i64 -3
  store i8 %120, ptr %121, align 1, !tbaa !52
  %122 = getelementptr inbounds i8, ptr %113, i64 -3
  %123 = load i8, ptr %122, align 1, !tbaa !52
  %124 = getelementptr inbounds i8, ptr %112, i64 -4
  store i8 %123, ptr %124, align 1, !tbaa !52
  %125 = add nuw i32 %114, 1
  %126 = icmp eq i32 %125, %5
  br i1 %126, label %127, label %111, !llvm.loop !241

127:                                              ; preds = %111, %105
  %128 = phi ptr [ %109, %105 ], [ %124, %111 ]
  %129 = getelementptr inbounds i8, ptr %128, i64 -1
  br label %227

130:                                              ; preds = %102
  %131 = icmp eq i32 %5, 0
  br i1 %131, label %232, label %132

132:                                              ; preds = %130
  %133 = zext i32 %5 to i64
  %134 = mul nuw nsw i64 %133, 3
  %135 = getelementptr inbounds i8, ptr %1, i64 %134
  %136 = getelementptr inbounds i8, ptr %135, i64 %133
  br label %137

137:                                              ; preds = %132, %137
  %138 = phi ptr [ %150, %137 ], [ %136, %132 ]
  %139 = phi ptr [ %147, %137 ], [ %135, %132 ]
  %140 = phi i32 [ %151, %137 ], [ 0, %132 ]
  %141 = getelementptr inbounds i8, ptr %139, i64 -1
  %142 = load i8, ptr %141, align 1, !tbaa !52
  %143 = getelementptr inbounds i8, ptr %138, i64 -1
  store i8 %142, ptr %143, align 1, !tbaa !52
  %144 = getelementptr inbounds i8, ptr %139, i64 -2
  %145 = load i8, ptr %144, align 1, !tbaa !52
  %146 = getelementptr inbounds i8, ptr %138, i64 -2
  store i8 %145, ptr %146, align 1, !tbaa !52
  %147 = getelementptr inbounds i8, ptr %139, i64 -3
  %148 = load i8, ptr %147, align 1, !tbaa !52
  %149 = getelementptr inbounds i8, ptr %138, i64 -3
  store i8 %148, ptr %149, align 1, !tbaa !52
  %150 = getelementptr inbounds i8, ptr %138, i64 -4
  store i8 %8, ptr %150, align 1, !tbaa !52
  %151 = add nuw i32 %140, 1
  %152 = icmp eq i32 %151, %5
  br i1 %152, label %232, label %137, !llvm.loop !242

153:                                              ; preds = %99
  %154 = and i32 %3, 128
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %193, label %156

156:                                              ; preds = %153
  %157 = zext i32 %5 to i64
  %158 = mul nuw nsw i64 %157, 6
  %159 = getelementptr inbounds i8, ptr %1, i64 %158
  %160 = shl nuw nsw i64 %157, 1
  %161 = getelementptr inbounds i8, ptr %159, i64 %160
  %162 = icmp ugt i32 %5, 1
  br i1 %162, label %163, label %189

163:                                              ; preds = %156, %163
  %164 = phi ptr [ %186, %163 ], [ %161, %156 ]
  %165 = phi ptr [ %184, %163 ], [ %159, %156 ]
  %166 = phi i32 [ %187, %163 ], [ 1, %156 ]
  %167 = getelementptr inbounds i8, ptr %164, i64 -1
  store i8 %7, ptr %167, align 1, !tbaa !52
  %168 = getelementptr inbounds i8, ptr %164, i64 -2
  store i8 %8, ptr %168, align 1, !tbaa !52
  %169 = getelementptr inbounds i8, ptr %165, i64 -1
  %170 = load i8, ptr %169, align 1, !tbaa !52
  %171 = getelementptr inbounds i8, ptr %164, i64 -3
  store i8 %170, ptr %171, align 1, !tbaa !52
  %172 = getelementptr inbounds i8, ptr %165, i64 -2
  %173 = load i8, ptr %172, align 1, !tbaa !52
  %174 = getelementptr inbounds i8, ptr %164, i64 -4
  store i8 %173, ptr %174, align 1, !tbaa !52
  %175 = getelementptr inbounds i8, ptr %165, i64 -3
  %176 = load i8, ptr %175, align 1, !tbaa !52
  %177 = getelementptr inbounds i8, ptr %164, i64 -5
  store i8 %176, ptr %177, align 1, !tbaa !52
  %178 = getelementptr inbounds i8, ptr %165, i64 -4
  %179 = load i8, ptr %178, align 1, !tbaa !52
  %180 = getelementptr inbounds i8, ptr %164, i64 -6
  store i8 %179, ptr %180, align 1, !tbaa !52
  %181 = getelementptr inbounds i8, ptr %165, i64 -5
  %182 = load i8, ptr %181, align 1, !tbaa !52
  %183 = getelementptr inbounds i8, ptr %164, i64 -7
  store i8 %182, ptr %183, align 1, !tbaa !52
  %184 = getelementptr inbounds i8, ptr %165, i64 -6
  %185 = load i8, ptr %184, align 1, !tbaa !52
  %186 = getelementptr inbounds i8, ptr %164, i64 -8
  store i8 %185, ptr %186, align 1, !tbaa !52
  %187 = add nuw i32 %166, 1
  %188 = icmp eq i32 %187, %5
  br i1 %188, label %189, label %163, !llvm.loop !243

189:                                              ; preds = %163, %156
  %190 = phi ptr [ %161, %156 ], [ %186, %163 ]
  %191 = getelementptr inbounds i8, ptr %190, i64 -1
  store i8 %7, ptr %191, align 1, !tbaa !52
  %192 = getelementptr inbounds i8, ptr %190, i64 -2
  br label %227

193:                                              ; preds = %153
  %194 = icmp eq i32 %5, 0
  br i1 %194, label %232, label %195

195:                                              ; preds = %193
  %196 = zext i32 %5 to i64
  %197 = mul nuw nsw i64 %196, 6
  %198 = getelementptr inbounds i8, ptr %1, i64 %197
  %199 = shl nuw nsw i64 %196, 1
  %200 = getelementptr inbounds i8, ptr %198, i64 %199
  br label %201

201:                                              ; preds = %195, %201
  %202 = phi ptr [ %224, %201 ], [ %200, %195 ]
  %203 = phi ptr [ %220, %201 ], [ %198, %195 ]
  %204 = phi i32 [ %225, %201 ], [ 0, %195 ]
  %205 = getelementptr inbounds i8, ptr %203, i64 -1
  %206 = load i8, ptr %205, align 1, !tbaa !52
  %207 = getelementptr inbounds i8, ptr %202, i64 -1
  store i8 %206, ptr %207, align 1, !tbaa !52
  %208 = getelementptr inbounds i8, ptr %203, i64 -2
  %209 = load i8, ptr %208, align 1, !tbaa !52
  %210 = getelementptr inbounds i8, ptr %202, i64 -2
  store i8 %209, ptr %210, align 1, !tbaa !52
  %211 = getelementptr inbounds i8, ptr %203, i64 -3
  %212 = load i8, ptr %211, align 1, !tbaa !52
  %213 = getelementptr inbounds i8, ptr %202, i64 -3
  store i8 %212, ptr %213, align 1, !tbaa !52
  %214 = getelementptr inbounds i8, ptr %203, i64 -4
  %215 = load i8, ptr %214, align 1, !tbaa !52
  %216 = getelementptr inbounds i8, ptr %202, i64 -4
  store i8 %215, ptr %216, align 1, !tbaa !52
  %217 = getelementptr inbounds i8, ptr %203, i64 -5
  %218 = load i8, ptr %217, align 1, !tbaa !52
  %219 = getelementptr inbounds i8, ptr %202, i64 -5
  store i8 %218, ptr %219, align 1, !tbaa !52
  %220 = getelementptr inbounds i8, ptr %203, i64 -6
  %221 = load i8, ptr %220, align 1, !tbaa !52
  %222 = getelementptr inbounds i8, ptr %202, i64 -6
  store i8 %221, ptr %222, align 1, !tbaa !52
  %223 = getelementptr inbounds i8, ptr %202, i64 -7
  store i8 %7, ptr %223, align 1, !tbaa !52
  %224 = getelementptr inbounds i8, ptr %202, i64 -8
  store i8 %8, ptr %224, align 1, !tbaa !52
  %225 = add nuw i32 %204, 1
  %226 = icmp eq i32 %225, %5
  br i1 %226, label %232, label %201, !llvm.loop !244

227:                                              ; preds = %189, %127, %32, %74
  %228 = phi ptr [ %77, %74 ], [ %34, %32 ], [ %129, %127 ], [ %192, %189 ]
  %229 = phi i8 [ 2, %74 ], [ 2, %32 ], [ 4, %127 ], [ 4, %189 ]
  %230 = phi i8 [ 32, %74 ], [ 16, %32 ], [ 32, %127 ], [ 64, %189 ]
  %231 = phi i32 [ 2, %74 ], [ 1, %32 ], [ 2, %127 ], [ 3, %189 ]
  store i8 %8, ptr %228, align 1, !tbaa !52
  br label %232

232:                                              ; preds = %201, %137, %85, %41, %227, %193, %130, %78, %35
  %233 = phi i8 [ 2, %35 ], [ 2, %78 ], [ 4, %130 ], [ 4, %193 ], [ %229, %227 ], [ 2, %41 ], [ 2, %85 ], [ 4, %137 ], [ 4, %201 ]
  %234 = phi i8 [ 16, %35 ], [ 32, %78 ], [ 32, %130 ], [ 64, %193 ], [ %230, %227 ], [ 16, %41 ], [ 32, %85 ], [ 32, %137 ], [ 64, %201 ]
  %235 = phi i32 [ 1, %35 ], [ 2, %78 ], [ 2, %130 ], [ 3, %193 ], [ %231, %227 ], [ 1, %41 ], [ 2, %85 ], [ 2, %137 ], [ 3, %201 ]
  %236 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 %233, ptr %236, align 2, !tbaa !159
  %237 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %234, ptr %237, align 1, !tbaa !160
  %238 = shl i32 %5, %235
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %239, ptr %240, align 8, !tbaa !157
  br label %241

241:                                              ; preds = %232, %99, %4, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_invert_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !147
  switch i8 %5, label %79 [
    i8 6, label %6
    i8 4, label %42
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !152
  %9 = icmp eq i8 %8, 8
  %10 = icmp eq i32 %3, 0
  br i1 %9, label %11, label %25

11:                                               ; preds = %6
  br i1 %10, label %79, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !157
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %12 ]
  %18 = phi ptr [ %22, %16 ], [ %15, %12 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -1
  %20 = load i8, ptr %19, align 1, !tbaa !52
  %21 = xor i8 %20, -1
  store i8 %21, ptr %19, align 1, !tbaa !52
  %22 = getelementptr inbounds i8, ptr %18, i64 -4
  %23 = add nuw i32 %17, 1
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %79, label %16, !llvm.loop !245

25:                                               ; preds = %6
  br i1 %10, label %79, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !157
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i32 [ %40, %30 ], [ 0, %26 ]
  %32 = phi ptr [ %39, %30 ], [ %29, %26 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !52
  %35 = xor i8 %34, -1
  store i8 %35, ptr %33, align 1, !tbaa !52
  %36 = getelementptr inbounds i8, ptr %32, i64 -2
  %37 = load i8, ptr %36, align 1, !tbaa !52
  %38 = xor i8 %37, -1
  store i8 %38, ptr %36, align 1, !tbaa !52
  %39 = getelementptr inbounds i8, ptr %32, i64 -8
  %40 = add nuw i32 %31, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %79, label %30, !llvm.loop !246

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !152
  %45 = icmp eq i8 %44, 8
  %46 = icmp eq i32 %3, 0
  br i1 %45, label %47, label %62

47:                                               ; preds = %42
  br i1 %46, label %79, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !157
  %51 = getelementptr inbounds i8, ptr %1, i64 %50
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i32 [ %60, %52 ], [ 0, %48 ]
  %54 = phi ptr [ %59, %52 ], [ %51, %48 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 -1
  %56 = load i8, ptr %55, align 1, !tbaa !52
  %57 = xor i8 %56, -1
  %58 = getelementptr inbounds i8, ptr %54, i64 -1
  store i8 %57, ptr %58, align 1, !tbaa !52
  %59 = getelementptr i8, ptr %54, i64 -2
  %60 = add nuw i32 %53, 1
  %61 = icmp eq i32 %60, %3
  br i1 %61, label %79, label %52, !llvm.loop !247

62:                                               ; preds = %42
  br i1 %46, label %79, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !157
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  br label %67

67:                                               ; preds = %63, %67
  %68 = phi i32 [ %77, %67 ], [ 0, %63 ]
  %69 = phi ptr [ %76, %67 ], [ %66, %63 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 -1
  %71 = load i8, ptr %70, align 1, !tbaa !52
  %72 = xor i8 %71, -1
  store i8 %72, ptr %70, align 1, !tbaa !52
  %73 = getelementptr inbounds i8, ptr %69, i64 -2
  %74 = load i8, ptr %73, align 1, !tbaa !52
  %75 = xor i8 %74, -1
  store i8 %75, ptr %73, align 1, !tbaa !52
  %76 = getelementptr inbounds i8, ptr %69, i64 -4
  %77 = add nuw i32 %68, 1
  %78 = icmp eq i32 %77, %3
  br i1 %78, label %79, label %67, !llvm.loop !248

79:                                               ; preds = %67, %52, %30, %16, %62, %47, %25, %11, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_swap_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !147
  switch i8 %5, label %106 [
    i8 6, label %6
    i8 4, label %65
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !152
  %9 = icmp eq i8 %8, 8
  %10 = icmp eq i32 %3, 0
  br i1 %9, label %11, label %32

11:                                               ; preds = %6
  br i1 %10, label %106, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !157
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %27, %16 ], [ %15, %12 ]
  %18 = phi i32 [ %30, %16 ], [ 0, %12 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 -1
  %20 = load i8, ptr %19, align 1, !tbaa !52
  %21 = getelementptr inbounds i8, ptr %17, i64 -2
  %22 = load i8, ptr %21, align 1, !tbaa !52
  %23 = getelementptr inbounds i8, ptr %17, i64 -1
  store i8 %22, ptr %23, align 1, !tbaa !52
  %24 = getelementptr inbounds i8, ptr %17, i64 -3
  %25 = load i8, ptr %24, align 1, !tbaa !52
  %26 = getelementptr inbounds i8, ptr %17, i64 -2
  store i8 %25, ptr %26, align 1, !tbaa !52
  %27 = getelementptr i8, ptr %17, i64 -4
  %28 = load i8, ptr %27, align 1, !tbaa !52
  %29 = getelementptr inbounds i8, ptr %17, i64 -3
  store i8 %28, ptr %29, align 1, !tbaa !52
  store i8 %20, ptr %27, align 1, !tbaa !52
  %30 = add nuw i32 %18, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %106, label %16, !llvm.loop !249

32:                                               ; preds = %6
  br i1 %10, label %106, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !157
  %36 = getelementptr inbounds i8, ptr %1, i64 %35
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %63, %37 ], [ 0, %33 ]
  %39 = phi ptr [ %59, %37 ], [ %36, %33 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 -1
  %41 = load i8, ptr %40, align 1, !tbaa !52
  %42 = getelementptr inbounds i8, ptr %39, i64 -2
  %43 = load i8, ptr %42, align 1, !tbaa !52
  %44 = getelementptr inbounds i8, ptr %39, i64 -3
  %45 = load i8, ptr %44, align 1, !tbaa !52
  %46 = getelementptr inbounds i8, ptr %39, i64 -1
  store i8 %45, ptr %46, align 1, !tbaa !52
  %47 = getelementptr inbounds i8, ptr %39, i64 -4
  %48 = load i8, ptr %47, align 1, !tbaa !52
  %49 = getelementptr inbounds i8, ptr %39, i64 -2
  store i8 %48, ptr %49, align 1, !tbaa !52
  %50 = getelementptr inbounds i8, ptr %39, i64 -5
  %51 = load i8, ptr %50, align 1, !tbaa !52
  %52 = getelementptr inbounds i8, ptr %39, i64 -3
  store i8 %51, ptr %52, align 1, !tbaa !52
  %53 = getelementptr inbounds i8, ptr %39, i64 -6
  %54 = load i8, ptr %53, align 1, !tbaa !52
  %55 = getelementptr inbounds i8, ptr %39, i64 -4
  store i8 %54, ptr %55, align 1, !tbaa !52
  %56 = getelementptr inbounds i8, ptr %39, i64 -7
  %57 = load i8, ptr %56, align 1, !tbaa !52
  %58 = getelementptr inbounds i8, ptr %39, i64 -5
  store i8 %57, ptr %58, align 1, !tbaa !52
  %59 = getelementptr i8, ptr %39, i64 -8
  %60 = load i8, ptr %59, align 1, !tbaa !52
  %61 = getelementptr inbounds i8, ptr %39, i64 -6
  store i8 %60, ptr %61, align 1, !tbaa !52
  %62 = getelementptr inbounds i8, ptr %39, i64 -7
  store i8 %41, ptr %62, align 1, !tbaa !52
  store i8 %43, ptr %59, align 1, !tbaa !52
  %63 = add nuw i32 %38, 1
  %64 = icmp eq i32 %63, %3
  br i1 %64, label %106, label %37, !llvm.loop !250

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !152
  %68 = icmp eq i8 %67, 8
  %69 = icmp eq i32 %3, 0
  br i1 %68, label %70, label %85

70:                                               ; preds = %65
  br i1 %69, label %106, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !157
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  br label %75

75:                                               ; preds = %71, %75
  %76 = phi i32 [ %83, %75 ], [ 0, %71 ]
  %77 = phi ptr [ %80, %75 ], [ %74, %71 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 -1
  %79 = load i8, ptr %78, align 1, !tbaa !52
  %80 = getelementptr i8, ptr %77, i64 -2
  %81 = load i8, ptr %80, align 1, !tbaa !52
  %82 = getelementptr inbounds i8, ptr %77, i64 -1
  store i8 %81, ptr %82, align 1, !tbaa !52
  store i8 %79, ptr %80, align 1, !tbaa !52
  %83 = add nuw i32 %76, 1
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %106, label %75, !llvm.loop !251

85:                                               ; preds = %65
  br i1 %69, label %106, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !157
  %89 = getelementptr inbounds i8, ptr %1, i64 %88
  br label %90

90:                                               ; preds = %86, %90
  %91 = phi i32 [ %104, %90 ], [ 0, %86 ]
  %92 = phi ptr [ %100, %90 ], [ %89, %86 ]
  %93 = getelementptr inbounds i8, ptr %92, i64 -1
  %94 = load i8, ptr %93, align 1, !tbaa !52
  %95 = getelementptr inbounds i8, ptr %92, i64 -2
  %96 = load i8, ptr %95, align 1, !tbaa !52
  %97 = getelementptr inbounds i8, ptr %92, i64 -3
  %98 = load i8, ptr %97, align 1, !tbaa !52
  %99 = getelementptr inbounds i8, ptr %92, i64 -1
  store i8 %98, ptr %99, align 1, !tbaa !52
  %100 = getelementptr i8, ptr %92, i64 -4
  %101 = load i8, ptr %100, align 1, !tbaa !52
  %102 = getelementptr inbounds i8, ptr %92, i64 -2
  store i8 %101, ptr %102, align 1, !tbaa !52
  %103 = getelementptr inbounds i8, ptr %92, i64 -3
  store i8 %94, ptr %103, align 1, !tbaa !52
  store i8 %96, ptr %100, align 1, !tbaa !52
  %104 = add nuw i32 %91, 1
  %105 = icmp eq i32 %104, %3
  br i1 %105, label %106, label %90, !llvm.loop !252

106:                                              ; preds = %90, %75, %37, %16, %85, %70, %32, %11, %2
  ret void
}

declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @png_build_grayscale_palette(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  switch i32 %0, label %8 [
    i32 1, label %9
    i32 2, label %5
    i32 4, label %6
    i32 8, label %7
  ]

5:                                                ; preds = %4
  br label %9

6:                                                ; preds = %4
  br label %9

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %4, %8, %7, %6, %5
  %10 = phi i1 [ false, %8 ], [ true, %7 ], [ true, %6 ], [ true, %5 ], [ true, %4 ]
  %11 = phi i32 [ 0, %8 ], [ 256, %7 ], [ 16, %6 ], [ 4, %5 ], [ 2, %4 ]
  %12 = phi i32 [ 0, %8 ], [ 1, %7 ], [ 17, %6 ], [ 85, %5 ], [ 255, %4 ]
  br i1 %10, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %23, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %24, %16 ]
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %17
  store i8 %19, ptr %20, align 1, !tbaa !65
  %21 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %17, i32 1
  store i8 %19, ptr %21, align 1, !tbaa !67
  %22 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %17, i32 2
  store i8 %19, ptr %22, align 1, !tbaa !68
  %23 = add nuw nsw i64 %17, 1
  %24 = add nuw nsw i32 %18, %12
  %25 = icmp eq i64 %23, %15
  br i1 %25, label %26, label %16, !llvm.loop !253

26:                                               ; preds = %16, %9, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_intrapixel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !147
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !152
  switch i8 %10, label %71 [
    i8 8, label %11
    i8 16, label %29
  ]

11:                                               ; preds = %7
  switch i8 %4, label %71 [
    i8 2, label %13
    i8 6, label %12
  ]

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %11, %12
  %14 = phi i64 [ 4, %12 ], [ 3, %11 ]
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %27, %16 ], [ %1, %13 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %13 ]
  %19 = load i8, ptr %17, align 1, !tbaa !52
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !52
  %22 = add i8 %21, %19
  store i8 %22, ptr %17, align 1, !tbaa !52
  %23 = getelementptr inbounds i8, ptr %17, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !52
  %25 = add i8 %24, %21
  store i8 %25, ptr %23, align 1, !tbaa !52
  %26 = add nuw i32 %18, 1
  %27 = getelementptr inbounds i8, ptr %17, i64 %14
  %28 = icmp eq i32 %26, %8
  br i1 %28, label %71, label %16, !llvm.loop !254

29:                                               ; preds = %7
  switch i8 %4, label %71 [
    i8 2, label %31
    i8 6, label %30
  ]

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %29, %30
  %32 = phi i64 [ 8, %30 ], [ 6, %29 ]
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %69, %34 ], [ %1, %31 ]
  %36 = phi i32 [ %68, %34 ], [ 0, %31 ]
  %37 = load i8, ptr %35, align 1, !tbaa !52
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !52
  %42 = zext i8 %41 to i32
  %43 = or disjoint i32 %39, %42
  %44 = getelementptr inbounds i8, ptr %35, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !52
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds i8, ptr %35, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !52
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = getelementptr inbounds i8, ptr %35, i64 4
  %53 = load i8, ptr %52, align 1, !tbaa !52
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = getelementptr inbounds i8, ptr %35, i64 5
  %57 = load i8, ptr %56, align 1, !tbaa !52
  %58 = zext i8 %57 to i32
  %59 = or disjoint i32 %55, %58
  %60 = add nuw nsw i32 %51, %43
  %61 = add nuw nsw i32 %59, %51
  %62 = lshr i32 %60, 8
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %35, align 1, !tbaa !52
  %64 = trunc i32 %60 to i8
  store i8 %64, ptr %40, align 1, !tbaa !52
  %65 = lshr i32 %61, 8
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %52, align 1, !tbaa !52
  %67 = trunc i32 %61 to i8
  store i8 %67, ptr %56, align 1, !tbaa !52
  %68 = add nuw i32 %36, 1
  %69 = getelementptr inbounds i8, ptr %35, i64 %32
  %70 = icmp eq i32 %68, %8
  br i1 %70, label %71, label %34, !llvm.loop !255

71:                                               ; preds = %34, %16, %31, %13, %7, %11, %29, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!34 = !{!35, !39, i64 288}
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
!46 = !{!35, !39, i64 292}
!47 = !{!35, !39, i64 612}
!48 = !{!35, !36, i64 608}
!49 = !{!35, !39, i64 660}
!50 = !{!35, !39, i64 664}
!51 = !{!35, !38, i64 888}
!52 = !{!36, !36, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!35, !38, i64 1072}
!57 = distinct !{!57, !54, !55}
!58 = !{!42, !42, i64 0}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
!61 = !{i64 0, i64 1, !52, i64 1, i64 1, !52, i64 2, i64 1, !52}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !54, !55}
!64 = distinct !{!64, !54, !55}
!65 = !{!66, !36, i64 0}
!66 = !{!"png_color_struct", !36, i64 0, !36, i64 1, !36, i64 2}
!67 = !{!66, !36, i64 1}
!68 = !{!66, !36, i64 2}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = !{!35, !38, i64 1080}
!72 = !{!35, !38, i64 1088}
!73 = distinct !{!73, !54, !55}
!74 = !{!38, !38, i64 0}
!75 = !{!76, !38, i64 0}
!76 = !{!"png_dsort_struct", !38, i64 0, !36, i64 8, !36, i64 9}
!77 = !{!76, !36, i64 8}
!78 = !{!76, !36, i64 9}
!79 = distinct !{!79, !54, !55}
!80 = distinct !{!80, !54, !55}
!81 = distinct !{!81, !54, !55}
!82 = distinct !{!82, !54, !55}
!83 = distinct !{!83, !54, !55}
!84 = distinct !{!84, !54, !55}
!85 = distinct !{!85, !54, !55}
!86 = !{!35, !38, i64 568}
!87 = !{!35, !42, i64 576}
!88 = !{!35, !38, i64 880}
!89 = distinct !{!89, !54, !55}
!90 = distinct !{!90, !54, !55}
!91 = distinct !{!91, !54, !55}
!92 = distinct !{!92, !54, !55}
!93 = !{!35, !36, i64 591}
!94 = !{!35, !42, i64 1028}
!95 = !{!35, !42, i64 1030}
!96 = !{!35, !36, i64 1026}
!97 = !{!35, !38, i64 256}
!98 = !{!39, !39, i64 0}
!99 = !{!35, !42, i64 584}
!100 = !{!35, !39, i64 284}
!101 = !{!35, !42, i64 618}
!102 = !{!35, !42, i64 620}
!103 = !{!35, !42, i64 622}
!104 = !{!35, !42, i64 624}
!105 = !{!35, !38, i64 736}
!106 = distinct !{!106, !54, !55}
!107 = !{!35, !36, i64 616}
!108 = distinct !{!108, !54, !55}
!109 = !{!35, !42, i64 752}
!110 = !{!35, !36, i64 592}
!111 = !{!35, !42, i64 750}
!112 = !{!35, !42, i64 748}
!113 = !{!35, !42, i64 746}
!114 = !{i64 0, i64 1, !52, i64 2, i64 2, !58, i64 4, i64 2, !58, i64 6, i64 2, !58, i64 8, i64 2, !58}
!115 = !{!35, !38, i64 672}
!116 = !{!35, !38, i64 696}
!117 = !{i64 0, i64 1, !52, i64 1, i64 1, !52}
!118 = !{i64 0, i64 1, !52}
!119 = !{!35, !38, i64 688}
!120 = distinct !{!120, !54, !55}
!121 = !{!35, !42, i64 634}
!122 = !{!35, !42, i64 628}
!123 = !{!35, !42, i64 630}
!124 = !{!35, !42, i64 632}
!125 = distinct !{!125, !54, !55}
!126 = distinct !{!126, !54, !55}
!127 = !{!35, !36, i64 720}
!128 = distinct !{!128, !54, !55}
!129 = !{!35, !36, i64 721}
!130 = distinct !{!130, !54, !55}
!131 = !{!35, !36, i64 722}
!132 = distinct !{!132, !54, !55}
!133 = !{!134, !36, i64 37}
!134 = !{!"png_info_def", !39, i64 0, !39, i64 4, !39, i64 8, !41, i64 16, !38, i64 24, !42, i64 32, !42, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !39, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !38, i64 72, !135, i64 80, !44, i64 88, !38, i64 96, !43, i64 104, !43, i64 114, !39, i64 124, !39, i64 128, !36, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !38, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !38, i64 192, !39, i64 200, !39, i64 204, !38, i64 208, !38, i64 216, !36, i64 224, !36, i64 225, !39, i64 228, !38, i64 232, !39, i64 240, !38, i64 248, !38, i64 256, !39, i64 264, !36, i64 268, !38, i64 272, !39, i64 280, !36, i64 284, !38, i64 288, !38, i64 296, !38, i64 304}
!135 = !{!"png_time_struct", !42, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!136 = !{!134, !36, i64 36}
!137 = !{!134, !42, i64 34}
!138 = !{!134, !39, i64 52}
!139 = !{!134, !36, i64 41}
!140 = !{!35, !36, i64 280}
!141 = !{!35, !36, i64 281}
!142 = !{!134, !36, i64 42}
!143 = !{!134, !39, i64 0}
!144 = !{!134, !41, i64 16}
!145 = !{!35, !41, i64 552}
!146 = !{!35, !38, i64 512}
!147 = !{!148, !36, i64 16}
!148 = !{!"png_row_info_struct", !39, i64 0, !41, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!149 = !{i32 0, i32 2}
!150 = !{!35, !36, i64 1025}
!151 = !{!148, !39, i64 0}
!152 = !{!148, !36, i64 17}
!153 = distinct !{!153, !54, !55}
!154 = !{!35, !38, i64 704}
!155 = !{!35, !39, i64 656}
!156 = distinct !{!156, !54, !55}
!157 = !{!148, !41, i64 8}
!158 = distinct !{!158, !54, !55}
!159 = !{!148, !36, i64 18}
!160 = !{!148, !36, i64 19}
!161 = distinct !{!161, !54, !55}
!162 = distinct !{!162, !54, !55}
!163 = !{!35, !42, i64 606}
!164 = distinct !{!164, !54, !55}
!165 = distinct !{!165, !54, !55}
!166 = distinct !{!166, !54, !55}
!167 = distinct !{!167, !54, !55}
!168 = distinct !{!168, !54, !55}
!169 = !{!43, !42, i64 8}
!170 = distinct !{!170, !54, !55}
!171 = distinct !{!171, !54, !55}
!172 = distinct !{!172, !54, !55}
!173 = distinct !{!173, !54, !55}
!174 = distinct !{!174, !54, !55}
!175 = !{!43, !42, i64 6}
!176 = !{!43, !42, i64 4}
!177 = !{!43, !42, i64 2}
!178 = distinct !{!178, !54, !55}
!179 = distinct !{!179, !54, !55}
!180 = distinct !{!180, !54, !55}
!181 = distinct !{!181, !54, !55}
!182 = !{!35, !38, i64 712}
!183 = !{!35, !38, i64 680}
!184 = distinct !{!184, !54, !55}
!185 = distinct !{!185, !54, !55}
!186 = distinct !{!186, !54, !55}
!187 = distinct !{!187, !54, !55}
!188 = distinct !{!188, !54, !55}
!189 = distinct !{!189, !54, !55}
!190 = distinct !{!190, !54, !55}
!191 = distinct !{!191, !54, !55}
!192 = distinct !{!192, !54, !55}
!193 = distinct !{!193, !54, !55}
!194 = distinct !{!194, !54, !55}
!195 = distinct !{!195, !54, !55}
!196 = distinct !{!196, !54, !55}
!197 = distinct !{!197, !54, !55}
!198 = distinct !{!198, !54, !55}
!199 = distinct !{!199, !54, !55}
!200 = distinct !{!200, !54, !55}
!201 = distinct !{!201, !54, !55}
!202 = distinct !{!202, !54, !55}
!203 = distinct !{!203, !54, !55}
!204 = distinct !{!204, !54, !55}
!205 = distinct !{!205, !54, !55}
!206 = distinct !{!206, !54, !55}
!207 = distinct !{!207, !54, !55}
!208 = distinct !{!208, !54, !55}
!209 = distinct !{!209, !54, !55}
!210 = distinct !{!210, !54, !55}
!211 = distinct !{!211, !54, !55}
!212 = distinct !{!212, !54, !55}
!213 = distinct !{!213, !54, !55}
!214 = distinct !{!214, !54, !55}
!215 = distinct !{!215, !54, !55}
!216 = distinct !{!216, !54, !55}
!217 = distinct !{!217, !54, !55}
!218 = distinct !{!218, !54, !55}
!219 = distinct !{!219, !54, !55}
!220 = distinct !{!220, !54, !55}
!221 = distinct !{!221, !54, !55}
!222 = distinct !{!222, !54, !55}
!223 = distinct !{!223, !54, !55}
!224 = !{!44, !36, i64 0}
!225 = !{!44, !36, i64 1}
!226 = !{!44, !36, i64 2}
!227 = !{!44, !36, i64 3}
!228 = !{!44, !36, i64 4}
!229 = distinct !{!229, !54, !55}
!230 = distinct !{!230, !54, !55}
!231 = distinct !{!231, !54, !55}
!232 = distinct !{!232, !54, !55}
!233 = distinct !{!233, !54, !55}
!234 = distinct !{!234, !54, !55}
!235 = distinct !{!235, !54, !55}
!236 = distinct !{!236, !54, !55}
!237 = distinct !{!237, !54, !55}
!238 = distinct !{!238, !54, !55}
!239 = distinct !{!239, !54, !55}
!240 = distinct !{!240, !54, !55}
!241 = distinct !{!241, !54, !55}
!242 = distinct !{!242, !54, !55}
!243 = distinct !{!243, !54, !55}
!244 = distinct !{!244, !54, !55}
!245 = distinct !{!245, !54, !55}
!246 = distinct !{!246, !54, !55}
!247 = distinct !{!247, !54, !55}
!248 = distinct !{!248, !54, !55}
!249 = distinct !{!249, !54, !55}
!250 = distinct !{!250, !54, !55}
!251 = distinct !{!251, !54, !55}
!252 = distinct !{!252, !54, !55}
!253 = distinct !{!253, !54, !55}
!254 = distinct !{!254, !54, !55}
!255 = distinct !{!255, !54, !55}

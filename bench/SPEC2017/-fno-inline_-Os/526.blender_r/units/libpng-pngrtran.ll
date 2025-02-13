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
@switch.table.png_build_grayscale_palette = private unnamed_addr constant [8 x i64] [i64 2, i64 4, i64 2, i64 16, i64 2, i64 2, i64 2, i64 256], align 8

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
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

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_background_fixed(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #12
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_background(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @png_fixed(ptr noundef %0, double noundef %4, ptr noundef nonnull @.str.2) #12
  tail call void @png_set_background_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %6) #13
  ret void
}

; Function Attrs: optsize
declare i32 @png_fixed(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_alpha_mode_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @translate_gamma_flags(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 1) #13, !range !49
  %7 = add i32 %6, -300001
  %8 = icmp ult i32 %7, -230001
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #14
  unreachable

10:                                               ; preds = %5
  %11 = tail call i32 @png_reciprocal(i32 noundef %6) #12
  switch i32 %1, label %40 [
    i32 0, label %12
    i32 1, label %19
    i32 2, label %26
    i32 3, label %33
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = and i32 %14, -8388609
  store i32 %15, ptr %13, align 4, !tbaa !46
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = and i32 %17, -8193
  store i32 %18, ptr %16, align 8, !tbaa !34
  br label %41

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = and i32 %21, -8388609
  store i32 %22, ptr %20, align 4, !tbaa !46
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = and i32 %24, -8193
  store i32 %25, ptr %23, align 8, !tbaa !34
  br label %41

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = and i32 %28, -8388609
  store i32 %29, ptr %27, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %31 = load i32, ptr %30, align 8, !tbaa !34
  %32 = or i32 %31, 8192
  store i32 %32, ptr %30, align 8, !tbaa !34
  br label %41

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %35 = load i32, ptr %34, align 4, !tbaa !46
  %36 = or i32 %35, 8388608
  store i32 %36, ptr %34, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %38 = load i32, ptr %37, align 8, !tbaa !34
  %39 = and i32 %38, -8193
  store i32 %39, ptr %37, align 8, !tbaa !34
  br label %41

40:                                               ; preds = %10
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #14
  unreachable

41:                                               ; preds = %33, %26, %19, %12
  %42 = phi i32 [ %39, %33 ], [ %32, %26 ], [ %25, %19 ], [ %18, %12 ]
  %43 = phi i32 [ %36, %33 ], [ %29, %26 ], [ %22, %19 ], [ %15, %12 ]
  %44 = phi i1 [ false, %33 ], [ false, %26 ], [ false, %19 ], [ true, %12 ]
  %45 = phi i32 [ %6, %33 ], [ %6, %26 ], [ 100000, %19 ], [ %6, %12 ]
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 %11, ptr %46, align 4, !tbaa !50
  br label %50

50:                                               ; preds = %49, %41
  %51 = phi i32 [ %11, %49 ], [ %47, %41 ]
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  store i32 %45, ptr %52, align 8, !tbaa !51
  br i1 %44, label %64, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %54, i8 0, i64 10, i1 false)
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  store i32 %51, ptr %55, align 4, !tbaa !47
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  store i8 2, ptr %56, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %58 = and i32 %43, -257
  store i32 %58, ptr %57, align 4, !tbaa !46
  %59 = and i32 %43, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  unreachable

62:                                               ; preds = %53
  %63 = or disjoint i32 %58, 128
  store i32 %63, ptr %57, align 4, !tbaa !46
  br label %64

64:                                               ; preds = %62, %50
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %66 = or i32 %42, 16384
  store i32 %66, ptr %65, align 8, !tbaa !34
  br label %67

67:                                               ; preds = %3, %64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @translate_gamma_flags(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !52 {
  switch i32 %1, label %13 [
    i32 -1, label %4
    i32 -100000, label %4
    i32 -2, label %10
    i32 -50000, label %10
  ]

4:                                                ; preds = %3, %3
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = or i32 %6, 4096
  store i32 %7, ptr %5, align 8, !tbaa !34
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, i32 45455, i32 220000
  br label %13

10:                                               ; preds = %3, %3
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 65909, i32 151724
  br label %13

13:                                               ; preds = %3, %10, %4
  %14 = phi i32 [ %9, %4 ], [ %12, %10 ], [ %1, %3 ]
  ret i32 %14
}

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @png_reciprocal(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_alpha_mode(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @convert_gamma_value(ptr noundef %0, double noundef %2) #13
  tail call void @png_set_alpha_mode_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @convert_gamma_value(ptr noundef %0, double noundef %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = fcmp ogt double %1, 0.000000e+00
  %4 = fcmp olt double %1, 1.280000e+02
  %5 = and i1 %3, %4
  %6 = fmul double %1, 1.000000e+05
  %7 = select i1 %5, double %6, double %1
  %8 = fadd double %7, 5.000000e-01
  %9 = tail call double @llvm.floor.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fcmp olt double %9, 0xC1DFFFFFFFC00000
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.17) #14
  unreachable

14:                                               ; preds = %2
  %15 = fptosi double %9 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_quantize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.png_color_struct, align 1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %514, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = or i32 %11, 64
  store i32 %12, ptr %10, align 4, !tbaa !46
  %13 = icmp ne i32 %5, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = zext i32 %2 to i64
  %16 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %15) #12
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  store ptr %16, ptr %17, align 8, !tbaa !54
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %14 ]
  %21 = trunc i64 %20 to i8
  %22 = load ptr, ptr %17, align 8, !tbaa !54
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 %21, ptr %23, align 1, !tbaa !55
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %15
  br i1 %25, label %26, label %19, !llvm.loop !56

26:                                               ; preds = %19, %14, %9
  %27 = icmp sgt i32 %2, %3
  br i1 %27, label %28, label %425

28:                                               ; preds = %26
  %29 = icmp eq ptr %4, null
  %30 = zext i32 %2 to i64
  %31 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %30) #12
  br i1 %29, label %216, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 131
  store ptr %31, ptr %33, align 8, !tbaa !58
  %34 = icmp sgt i32 %2, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %37, %32
  %36 = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %44

37:                                               ; preds = %32, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %32 ]
  %39 = trunc i64 %38 to i8
  %40 = load ptr, ptr %33, align 8, !tbaa !58
  %41 = getelementptr inbounds i8, ptr %40, i64 %38
  store i8 %39, ptr %41, align 1, !tbaa !55
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, %30
  br i1 %43, label %35, label %37, !llvm.loop !59

44:                                               ; preds = %35, %74
  %45 = phi i32 [ %2, %35 ], [ %47, %74 ]
  %46 = phi i32 [ %2, %35 ], [ %48, %74 ]
  %47 = add i32 %45, -1
  %48 = add nsw i32 %46, -1
  %49 = icmp sgt i32 %46, %36
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = zext i32 %47 to i64
  br label %52

52:                                               ; preds = %50, %71
  %53 = phi i64 [ 0, %50 ], [ %61, %71 ]
  %54 = phi i32 [ 1, %50 ], [ %72, %71 ]
  %55 = load ptr, ptr %33, align 8, !tbaa !58
  %56 = getelementptr inbounds i8, ptr %55, i64 %53
  %57 = load i8, ptr %56, align 1, !tbaa !55
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds i16, ptr %4, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !60
  %61 = add nuw nsw i64 %53, 1
  %62 = getelementptr inbounds i8, ptr %55, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !55
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i16, ptr %4, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !60
  %67 = icmp ult i16 %60, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %52
  store i8 %63, ptr %56, align 1, !tbaa !55
  %69 = load ptr, ptr %33, align 8, !tbaa !58
  %70 = getelementptr inbounds i8, ptr %69, i64 %61
  store i8 %57, ptr %70, align 1, !tbaa !55
  br label %71

71:                                               ; preds = %52, %68
  %72 = phi i32 [ 0, %68 ], [ %54, %52 ]
  %73 = icmp eq i64 %61, %51
  br i1 %73, label %74, label %52, !llvm.loop !61

74:                                               ; preds = %71
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %44, label %76

76:                                               ; preds = %74, %44
  %77 = icmp sgt i32 %3, 0
  br i1 %13, label %78, label %82

78:                                               ; preds = %76
  br i1 %77, label %79, label %214

79:                                               ; preds = %78
  %80 = zext nneg i32 %3 to i64
  %81 = trunc i32 %3 to i8
  br label %87

82:                                               ; preds = %76
  br i1 %77, label %83, label %111

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %85 = zext nneg i32 %3 to i64
  %86 = trunc i32 %3 to i8
  br label %118

87:                                               ; preds = %79, %107
  %88 = phi i64 [ 0, %79 ], [ %109, %107 ]
  %89 = phi i32 [ %2, %79 ], [ %108, %107 ]
  %90 = load ptr, ptr %33, align 8, !tbaa !58
  %91 = getelementptr inbounds i8, ptr %90, i64 %88
  %92 = load i8, ptr %91, align 1, !tbaa !55
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %93, %3
  br i1 %94, label %107, label %95

95:                                               ; preds = %87
  %96 = sext i32 %89 to i64
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %96, %95 ], [ %99, %97 ]
  %99 = add i64 %98, -1
  %100 = getelementptr inbounds i8, ptr %90, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !55
  %102 = icmp ult i8 %101, %81
  br i1 %102, label %103, label %97, !llvm.loop !62

103:                                              ; preds = %97
  %104 = trunc i64 %99 to i32
  %105 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %88
  %106 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %105, ptr noundef nonnull align 1 dereferenceable(3) %106, i64 3, i1 false), !tbaa.struct !63
  br label %107

107:                                              ; preds = %87, %103
  %108 = phi i32 [ %104, %103 ], [ %89, %87 ]
  %109 = add nuw nsw i64 %88, 1
  %110 = icmp eq i64 %109, %80
  br i1 %110, label %214, label %87, !llvm.loop !64

111:                                              ; preds = %144, %82
  br i1 %34, label %112, label %214

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %114 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 0, i32 1
  %115 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 0, i32 2
  %116 = icmp sgt i32 %3, 1
  %117 = zext nneg i32 %3 to i64
  br label %148

118:                                              ; preds = %83, %144
  %119 = phi i64 [ 0, %83 ], [ %146, %144 ]
  %120 = phi i32 [ %2, %83 ], [ %145, %144 ]
  %121 = load ptr, ptr %33, align 8, !tbaa !58
  %122 = getelementptr inbounds i8, ptr %121, i64 %119
  %123 = load i8, ptr %122, align 1, !tbaa !55
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, %3
  br i1 %125, label %144, label %126

126:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7)
  %127 = sext i32 %120 to i64
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ %130, %128 ], [ %127, %126 ]
  %130 = add i64 %129, -1
  %131 = getelementptr inbounds i8, ptr %121, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !55
  %133 = icmp ult i8 %132, %86
  br i1 %133, label %134, label %128, !llvm.loop !65

134:                                              ; preds = %128
  %135 = trunc i64 %130 to i32
  %136 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(3) %136, i64 3, i1 false), !tbaa.struct !63
  %137 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %136, ptr noundef nonnull align 1 dereferenceable(3) %137, i64 3, i1 false), !tbaa.struct !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %137, ptr noundef nonnull align 1 dereferenceable(3) %7, i64 3, i1 false), !tbaa.struct !63
  %138 = trunc i64 %119 to i8
  %139 = load ptr, ptr %84, align 8, !tbaa !54
  %140 = getelementptr inbounds i8, ptr %139, i64 %130
  store i8 %138, ptr %140, align 1, !tbaa !55
  %141 = trunc i64 %130 to i8
  %142 = load ptr, ptr %84, align 8, !tbaa !54
  %143 = getelementptr inbounds i8, ptr %142, i64 %119
  store i8 %141, ptr %143, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7)
  br label %144

144:                                              ; preds = %118, %134
  %145 = phi i32 [ %135, %134 ], [ %120, %118 ]
  %146 = add nuw nsw i64 %119, 1
  %147 = icmp eq i64 %146, %85
  br i1 %147, label %111, label %118, !llvm.loop !66

148:                                              ; preds = %112, %211
  %149 = phi i64 [ 0, %112 ], [ %212, %211 ]
  %150 = load ptr, ptr %113, align 8, !tbaa !54
  %151 = getelementptr inbounds i8, ptr %150, i64 %149
  %152 = load i8, ptr %151, align 1, !tbaa !55
  %153 = zext i8 %152 to i32
  %154 = icmp slt i32 %153, %3
  br i1 %154, label %211, label %155

155:                                              ; preds = %148
  %156 = zext i8 %152 to i64
  %157 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !67
  %159 = zext i8 %158 to i32
  %160 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %156, i32 1
  %161 = load i8, ptr %160, align 1, !tbaa !69
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %156, i32 2
  %164 = load i8, ptr %163, align 1, !tbaa !70
  %165 = zext i8 %164 to i32
  br i1 %116, label %166, label %208

166:                                              ; preds = %155
  %167 = load i8, ptr %114, align 1, !tbaa !69
  %168 = zext i8 %167 to i32
  %169 = sub nsw i32 %162, %168
  %170 = tail call i32 @llvm.abs.i32(i32 %169, i1 true)
  %171 = load i8, ptr %1, align 1, !tbaa !67
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %159, %172
  %174 = tail call i32 @llvm.abs.i32(i32 %173, i1 true)
  %175 = add nuw nsw i32 %170, %174
  %176 = load i8, ptr %115, align 1, !tbaa !70
  %177 = zext i8 %176 to i32
  %178 = sub nsw i32 %165, %177
  %179 = tail call i32 @llvm.abs.i32(i32 %178, i1 true)
  %180 = add nuw nsw i32 %175, %179
  br label %181

181:                                              ; preds = %166, %181
  %182 = phi i64 [ 1, %166 ], [ %206, %181 ]
  %183 = phi i32 [ %180, %166 ], [ %205, %181 ]
  %184 = phi i32 [ 0, %166 ], [ %204, %181 ]
  %185 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %182
  %186 = load i8, ptr %185, align 1, !tbaa !67
  %187 = zext i8 %186 to i32
  %188 = sub nsw i32 %159, %187
  %189 = tail call i32 @llvm.abs.i32(i32 %188, i1 true)
  %190 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %182, i32 1
  %191 = load i8, ptr %190, align 1, !tbaa !69
  %192 = zext i8 %191 to i32
  %193 = sub nsw i32 %162, %192
  %194 = tail call i32 @llvm.abs.i32(i32 %193, i1 true)
  %195 = add nuw nsw i32 %194, %189
  %196 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %182, i32 2
  %197 = load i8, ptr %196, align 1, !tbaa !70
  %198 = zext i8 %197 to i32
  %199 = sub nsw i32 %165, %198
  %200 = tail call i32 @llvm.abs.i32(i32 %199, i1 true)
  %201 = add nuw nsw i32 %195, %200
  %202 = icmp slt i32 %201, %183
  %203 = trunc i64 %182 to i32
  %204 = select i1 %202, i32 %203, i32 %184
  %205 = tail call i32 @llvm.smin.i32(i32 %201, i32 %183)
  %206 = add nuw nsw i64 %182, 1
  %207 = icmp eq i64 %206, %117
  br i1 %207, label %208, label %181, !llvm.loop !71

208:                                              ; preds = %181, %155
  %209 = phi i32 [ 0, %155 ], [ %204, %181 ]
  %210 = trunc i32 %209 to i8
  store i8 %210, ptr %151, align 1, !tbaa !55
  br label %211

211:                                              ; preds = %148, %208
  %212 = add nuw nsw i64 %149, 1
  %213 = icmp eq i64 %212, %30
  br i1 %213, label %214, label %148, !llvm.loop !72

214:                                              ; preds = %211, %107, %78, %111
  %215 = load ptr, ptr %33, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %215) #12
  store ptr null, ptr %33, align 8, !tbaa !58
  br label %425

216:                                              ; preds = %28
  %217 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 132
  store ptr %31, ptr %217, align 8, !tbaa !73
  %218 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %30) #12
  %219 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 133
  store ptr %218, ptr %219, align 8, !tbaa !74
  %220 = icmp sgt i32 %2, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216, %221
  %222 = phi i64 [ %228, %221 ], [ 0, %216 ]
  %223 = trunc i64 %222 to i8
  %224 = load ptr, ptr %217, align 8, !tbaa !73
  %225 = getelementptr inbounds i8, ptr %224, i64 %222
  store i8 %223, ptr %225, align 1, !tbaa !55
  %226 = load ptr, ptr %219, align 8, !tbaa !74
  %227 = getelementptr inbounds i8, ptr %226, i64 %222
  store i8 %223, ptr %227, align 1, !tbaa !55
  %228 = add nuw nsw i64 %222, 1
  %229 = icmp eq i64 %228, %30
  br i1 %229, label %230, label %221, !llvm.loop !75

230:                                              ; preds = %221, %216
  %231 = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 6152) #12
  %232 = icmp slt i32 %2, 1
  %233 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %234 = or i1 %13, %232
  br label %235

235:                                              ; preds = %230, %418
  %236 = phi i64 [ 97, %230 ], [ %421, %418 ]
  %237 = phi i32 [ 96, %230 ], [ %419, %418 ]
  %238 = phi i32 [ %2, %230 ], [ %403, %418 ]
  %239 = phi ptr [ null, %230 ], [ %415, %418 ]
  %240 = tail call i32 @llvm.smax.i32(i32 %238, i32 1)
  %241 = add nsw i32 %240, -1
  %242 = zext nneg i32 %241 to i64
  %243 = zext i32 %238 to i64
  br label %244

244:                                              ; preds = %235, %296
  %245 = phi i64 [ 0, %235 ], [ %250, %296 ]
  %246 = phi i64 [ 1, %235 ], [ %298, %296 ]
  %247 = phi ptr [ %239, %235 ], [ %293, %296 ]
  %248 = icmp eq i64 %245, %242
  br i1 %248, label %299, label %249

249:                                              ; preds = %244
  %250 = add nuw nsw i64 %245, 1
  %251 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %245
  %252 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %245, i32 1
  %253 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %245, i32 2
  %254 = trunc i64 %245 to i8
  br label %255

255:                                              ; preds = %249, %292
  %256 = phi i64 [ %246, %249 ], [ %294, %292 ]
  %257 = phi ptr [ %247, %249 ], [ %293, %292 ]
  %258 = load i8, ptr %251, align 1, !tbaa !67
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %256
  %261 = load i8, ptr %260, align 1, !tbaa !67
  %262 = zext i8 %261 to i32
  %263 = sub nsw i32 %259, %262
  %264 = tail call i32 @llvm.abs.i32(i32 %263, i1 true)
  %265 = load i8, ptr %252, align 1, !tbaa !69
  %266 = zext i8 %265 to i32
  %267 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %256, i32 1
  %268 = load i8, ptr %267, align 1, !tbaa !69
  %269 = zext i8 %268 to i32
  %270 = sub nsw i32 %266, %269
  %271 = tail call i32 @llvm.abs.i32(i32 %270, i1 true)
  %272 = add nuw nsw i32 %271, %264
  %273 = load i8, ptr %253, align 1, !tbaa !70
  %274 = zext i8 %273 to i32
  %275 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %256, i32 2
  %276 = load i8, ptr %275, align 1, !tbaa !70
  %277 = zext i8 %276 to i32
  %278 = sub nsw i32 %274, %277
  %279 = tail call i32 @llvm.abs.i32(i32 %278, i1 true)
  %280 = add nuw nsw i32 %272, %279
  %281 = icmp ugt i32 %280, %237
  br i1 %281, label %292, label %282

282:                                              ; preds = %255
  %283 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 16) #12
  %284 = icmp eq ptr %283, null
  br i1 %284, label %401, label %285

285:                                              ; preds = %282
  %286 = zext nneg i32 %280 to i64
  %287 = getelementptr inbounds ptr, ptr %231, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !76
  store ptr %288, ptr %283, align 8, !tbaa !77
  %289 = getelementptr inbounds %struct.png_dsort_struct, ptr %283, i64 0, i32 1
  store i8 %254, ptr %289, align 8, !tbaa !79
  %290 = trunc i64 %256 to i8
  %291 = getelementptr inbounds %struct.png_dsort_struct, ptr %283, i64 0, i32 2
  store i8 %290, ptr %291, align 1, !tbaa !80
  store ptr %283, ptr %287, align 8, !tbaa !76
  br label %292

292:                                              ; preds = %285, %255
  %293 = phi ptr [ %257, %255 ], [ %283, %285 ]
  %294 = add nuw nsw i64 %256, 1
  %295 = icmp eq i64 %294, %243
  br i1 %295, label %296, label %255, !llvm.loop !81

296:                                              ; preds = %292
  %297 = icmp eq ptr %293, null
  %298 = add nuw nsw i64 %246, 1
  br i1 %297, label %401, label %244

299:                                              ; preds = %244
  %300 = icmp eq ptr %247, null
  br i1 %300, label %401, label %301

301:                                              ; preds = %299, %397
  %302 = phi i64 [ %399, %397 ], [ 0, %299 ]
  %303 = phi i32 [ %398, %397 ], [ %238, %299 ]
  %304 = getelementptr inbounds ptr, ptr %231, i64 %302
  %305 = load ptr, ptr %304, align 8, !tbaa !76
  %306 = icmp eq ptr %305, null
  br i1 %306, label %397, label %307

307:                                              ; preds = %301, %394
  %308 = phi i32 [ %392, %394 ], [ %303, %301 ]
  %309 = phi ptr [ %395, %394 ], [ %305, %301 ]
  %310 = load ptr, ptr %217, align 8, !tbaa !73
  %311 = getelementptr inbounds %struct.png_dsort_struct, ptr %309, i64 0, i32 1
  %312 = load i8, ptr %311, align 8, !tbaa !79
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds i8, ptr %310, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !55
  %316 = zext i8 %315 to i32
  %317 = icmp sgt i32 %308, %316
  br i1 %317, label %318, label %391

318:                                              ; preds = %307
  %319 = getelementptr inbounds %struct.png_dsort_struct, ptr %309, i64 0, i32 2
  %320 = load i8, ptr %319, align 1, !tbaa !80
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds i8, ptr %310, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !55
  %324 = zext i8 %323 to i32
  %325 = icmp ugt i32 %308, %324
  br i1 %325, label %326, label %391

326:                                              ; preds = %318
  %327 = and i32 %308, 1
  %328 = icmp eq i32 %327, 0
  %329 = select i1 %328, i8 %320, i8 %312
  %330 = add nsw i32 %308, -1
  %331 = zext i8 %329 to i64
  %332 = getelementptr inbounds i8, ptr %310, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !55
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %334
  %336 = zext nneg i32 %330 to i64
  %337 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %335, ptr noundef nonnull align 1 dereferenceable(3) %337, i64 3, i1 false), !tbaa.struct !63
  br i1 %234, label %369, label %338

338:                                              ; preds = %326
  %339 = select i1 %328, i8 %312, i8 %320
  %340 = zext i8 %339 to i64
  br label %341

341:                                              ; preds = %338, %366
  %342 = phi i64 [ 0, %338 ], [ %367, %366 ]
  %343 = load ptr, ptr %233, align 8, !tbaa !54
  %344 = getelementptr inbounds i8, ptr %343, i64 %342
  %345 = load i8, ptr %344, align 1, !tbaa !55
  %346 = load ptr, ptr %217, align 8, !tbaa !73
  %347 = getelementptr inbounds i8, ptr %346, i64 %331
  %348 = load i8, ptr %347, align 1, !tbaa !55
  %349 = icmp eq i8 %345, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %341
  %351 = getelementptr inbounds i8, ptr %346, i64 %340
  %352 = load i8, ptr %351, align 1, !tbaa !55
  store i8 %352, ptr %344, align 1, !tbaa !55
  %353 = load ptr, ptr %233, align 8, !tbaa !54
  %354 = getelementptr inbounds i8, ptr %353, i64 %342
  %355 = load i8, ptr %354, align 1, !tbaa !55
  br label %356

356:                                              ; preds = %350, %341
  %357 = phi i8 [ %355, %350 ], [ %345, %341 ]
  %358 = phi ptr [ %353, %350 ], [ %343, %341 ]
  %359 = zext i8 %357 to i32
  %360 = icmp eq i32 %330, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = getelementptr inbounds i8, ptr %358, i64 %342
  %363 = load ptr, ptr %217, align 8, !tbaa !73
  %364 = getelementptr inbounds i8, ptr %363, i64 %331
  %365 = load i8, ptr %364, align 1, !tbaa !55
  store i8 %365, ptr %362, align 1, !tbaa !55
  br label %366

366:                                              ; preds = %356, %361
  %367 = add nuw nsw i64 %342, 1
  %368 = icmp eq i64 %367, %30
  br i1 %368, label %369, label %341, !llvm.loop !82

369:                                              ; preds = %366, %326
  %370 = load ptr, ptr %217, align 8, !tbaa !73
  %371 = getelementptr inbounds i8, ptr %370, i64 %331
  %372 = load i8, ptr %371, align 1, !tbaa !55
  %373 = load ptr, ptr %219, align 8, !tbaa !74
  %374 = getelementptr inbounds i8, ptr %373, i64 %336
  %375 = load i8, ptr %374, align 1, !tbaa !55
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds i8, ptr %370, i64 %376
  store i8 %372, ptr %377, align 1, !tbaa !55
  %378 = load ptr, ptr %219, align 8, !tbaa !74
  %379 = getelementptr inbounds i8, ptr %378, i64 %336
  %380 = load i8, ptr %379, align 1, !tbaa !55
  %381 = load ptr, ptr %217, align 8, !tbaa !73
  %382 = getelementptr inbounds i8, ptr %381, i64 %331
  %383 = load i8, ptr %382, align 1, !tbaa !55
  %384 = zext i8 %383 to i64
  %385 = getelementptr inbounds i8, ptr %378, i64 %384
  store i8 %380, ptr %385, align 1, !tbaa !55
  %386 = trunc i32 %330 to i8
  %387 = load ptr, ptr %217, align 8, !tbaa !73
  %388 = getelementptr inbounds i8, ptr %387, i64 %331
  store i8 %386, ptr %388, align 1, !tbaa !55
  %389 = load ptr, ptr %219, align 8, !tbaa !74
  %390 = getelementptr inbounds i8, ptr %389, i64 %336
  store i8 %329, ptr %390, align 1, !tbaa !55
  br label %391

391:                                              ; preds = %369, %318, %307
  %392 = phi i32 [ %330, %369 ], [ %308, %318 ], [ %308, %307 ]
  %393 = icmp sgt i32 %392, %3
  br i1 %393, label %394, label %401

394:                                              ; preds = %391
  %395 = load ptr, ptr %309, align 8, !tbaa !77
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %307, !llvm.loop !83

397:                                              ; preds = %394, %301
  %398 = phi i32 [ %303, %301 ], [ %392, %394 ]
  %399 = add nuw nsw i64 %302, 1
  %400 = icmp eq i64 %399, %236
  br i1 %400, label %401, label %301, !llvm.loop !84

401:                                              ; preds = %296, %397, %282, %391, %299
  %402 = phi ptr [ null, %299 ], [ %247, %391 ], [ null, %282 ], [ %247, %397 ], [ null, %296 ]
  %403 = phi i32 [ %238, %299 ], [ %392, %391 ], [ %238, %282 ], [ %398, %397 ], [ %238, %296 ]
  br label %404

404:                                              ; preds = %401, %414
  %405 = phi i64 [ 0, %401 ], [ %416, %414 ]
  %406 = phi ptr [ %402, %401 ], [ %415, %414 ]
  %407 = getelementptr inbounds ptr, ptr %231, i64 %405
  %408 = load ptr, ptr %407, align 8, !tbaa !76
  %409 = icmp eq ptr %408, null
  br i1 %409, label %414, label %410

410:                                              ; preds = %404, %410
  %411 = phi ptr [ %412, %410 ], [ %408, %404 ]
  %412 = load ptr, ptr %411, align 8, !tbaa !77
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %411) #12
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %410, !llvm.loop !85

414:                                              ; preds = %410, %404
  %415 = phi ptr [ %406, %404 ], [ null, %410 ]
  store ptr null, ptr %407, align 8, !tbaa !76
  %416 = add nuw nsw i64 %405, 1
  %417 = icmp eq i64 %416, 769
  br i1 %417, label %418, label %404, !llvm.loop !86

418:                                              ; preds = %414
  %419 = add nuw nsw i32 %237, 96
  %420 = icmp sgt i32 %403, %3
  %421 = add nuw i64 %236, 96
  br i1 %420, label %235, label %422, !llvm.loop !87

422:                                              ; preds = %418
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %231) #12
  %423 = load ptr, ptr %219, align 8, !tbaa !74
  tail call void @png_free(ptr noundef %0, ptr noundef %423) #12
  %424 = load ptr, ptr %217, align 8, !tbaa !73
  tail call void @png_free(ptr noundef %0, ptr noundef %424) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %217, i8 0, i64 16, i1 false)
  br label %425

425:                                              ; preds = %214, %422, %26
  %426 = phi i32 [ %2, %26 ], [ %3, %422 ], [ %3, %214 ]
  %427 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %428 = load ptr, ptr %427, align 8, !tbaa !88
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  store ptr %1, ptr %427, align 8, !tbaa !88
  br label %431

431:                                              ; preds = %430, %425
  %432 = trunc i32 %426 to i16
  %433 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  store i16 %432, ptr %433, align 8, !tbaa !89
  br i1 %13, label %434, label %514

434:                                              ; preds = %431
  %435 = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 32768) #12
  %436 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  store ptr %435, ptr %436, align 8, !tbaa !90
  %437 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 32768) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32768) %437, i8 -1, i64 32768, i1 false)
  %438 = icmp sgt i32 %426, 0
  br i1 %438, label %439, label %513

439:                                              ; preds = %434
  %440 = zext nneg i32 %426 to i64
  br label %441

441:                                              ; preds = %439, %510
  %442 = phi i64 [ 0, %439 ], [ %511, %510 ]
  %443 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !67
  %445 = lshr i8 %444, 3
  %446 = zext nneg i8 %445 to i32
  %447 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %442, i32 1
  %448 = load i8, ptr %447, align 1, !tbaa !69
  %449 = lshr i8 %448, 3
  %450 = zext nneg i8 %449 to i32
  %451 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %442, i32 2
  %452 = load i8, ptr %451, align 1, !tbaa !70
  %453 = lshr i8 %452, 3
  %454 = zext nneg i8 %453 to i32
  %455 = trunc i64 %442 to i8
  %456 = zext nneg i8 %453 to i64
  %457 = zext nneg i8 %449 to i64
  %458 = zext nneg i8 %445 to i64
  %459 = zext nneg i8 %445 to i64
  br label %460

460:                                              ; preds = %441, %507
  %461 = phi i64 [ 0, %441 ], [ %508, %507 ]
  %462 = trunc i64 %461 to i32
  %463 = icmp ugt i64 %461, %458
  %464 = sub nsw i32 %462, %446
  %465 = sub nsw i64 %459, %461
  %466 = trunc i64 %465 to i32
  %467 = select i1 %463, i32 %464, i32 %466
  %468 = shl nuw nsw i64 %461, 10
  br label %469

469:                                              ; preds = %460, %504
  %470 = phi i64 [ 0, %460 ], [ %505, %504 ]
  %471 = trunc i64 %470 to i32
  %472 = icmp ugt i64 %470, %457
  %473 = sub nsw i32 %471, %450
  %474 = sub nsw i64 %457, %470
  %475 = trunc i64 %474 to i32
  %476 = select i1 %472, i32 %473, i32 %475
  %477 = add nsw i32 %476, %467
  %478 = tail call i32 @llvm.smax.i32(i32 %467, i32 %476)
  %479 = shl nuw nsw i64 %470, 5
  %480 = add nuw nsw i64 %479, %468
  br label %481

481:                                              ; preds = %469, %501
  %482 = phi i64 [ 0, %469 ], [ %502, %501 ]
  %483 = trunc i64 %482 to i32
  %484 = add nuw nsw i64 %482, %480
  %485 = icmp ugt i64 %482, %456
  %486 = sub nsw i32 %483, %454
  %487 = sub nsw i64 %456, %482
  %488 = trunc i64 %487 to i32
  %489 = select i1 %485, i32 %486, i32 %488
  %490 = tail call i32 @llvm.smax.i32(i32 %478, i32 %489)
  %491 = add i32 %477, %489
  %492 = add i32 %491, %490
  %493 = getelementptr inbounds i8, ptr %437, i64 %484
  %494 = load i8, ptr %493, align 1, !tbaa !55
  %495 = zext i8 %494 to i32
  %496 = icmp slt i32 %492, %495
  br i1 %496, label %497, label %501

497:                                              ; preds = %481
  %498 = trunc i32 %492 to i8
  store i8 %498, ptr %493, align 1, !tbaa !55
  %499 = load ptr, ptr %436, align 8, !tbaa !90
  %500 = getelementptr inbounds i8, ptr %499, i64 %484
  store i8 %455, ptr %500, align 1, !tbaa !55
  br label %501

501:                                              ; preds = %497, %481
  %502 = add nuw nsw i64 %482, 1
  %503 = icmp eq i64 %502, 32
  br i1 %503, label %504, label %481, !llvm.loop !91

504:                                              ; preds = %501
  %505 = add nuw nsw i64 %470, 1
  %506 = icmp eq i64 %505, 32
  br i1 %506, label %507, label %469, !llvm.loop !92

507:                                              ; preds = %504
  %508 = add nuw nsw i64 %461, 1
  %509 = icmp eq i64 %508, 32
  br i1 %509, label %510, label %460, !llvm.loop !93

510:                                              ; preds = %507
  %511 = add nuw nsw i64 %442, 1
  %512 = icmp eq i64 %511, %440
  br i1 %512, label %513, label %441, !llvm.loop !94

513:                                              ; preds = %510, %434
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %437) #12
  br label %514

514:                                              ; preds = %6, %513, %431
  ret void
}

; Function Attrs: optsize
declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_gamma_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @translate_gamma_flags(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) #13, !range !49
  %7 = tail call fastcc i32 @translate_gamma_flags(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) #13, !range !49
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  store i32 %7, ptr %8, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  store i32 %6, ptr %9, align 8, !tbaa !51
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_gamma(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @convert_gamma_value(ptr noundef %0, double noundef %1) #13
  %5 = tail call fastcc i32 @convert_gamma_value(ptr noundef %0, double noundef %2) #13
  tail call void @png_set_gamma_fixed(ptr noundef %0, i32 noundef %4, i32 noundef %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_gray_to_rgb(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  tail call void @png_set_expand_gray_1_2_4_to_8(ptr noundef nonnull %0) #13
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = or i32 %5, 16384
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, -65
  store i32 %9, ptr %7, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_rgb_to_gray_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %4
  switch i32 %1, label %19 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = or i32 %9, 6291456
  store i32 %10, ptr %8, align 4, !tbaa !46
  br label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = or i32 %13, 4194304
  store i32 %14, ptr %12, align 4, !tbaa !46
  br label %20

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = or i32 %17, 2097152
  store i32 %18, ptr %16, align 4, !tbaa !46
  br label %20

19:                                               ; preds = %6
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  unreachable

20:                                               ; preds = %15, %11, %7
  %21 = phi i32 [ %18, %15 ], [ %14, %11 ], [ %10, %7 ]
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %23 = load i8, ptr %22, align 1, !tbaa !95
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %27 = or i32 %21, 4096
  store i32 %27, ptr %26, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %25, %20
  %29 = or i32 %3, %2
  %30 = icmp sgt i32 %29, -1
  %31 = add nuw nsw i32 %3, %2
  %32 = icmp slt i32 %31, 100001
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = shl i32 %2, 15
  %36 = udiv i32 %35, 100000
  %37 = trunc i32 %36 to i16
  %38 = shl i32 %3, 15
  %39 = udiv i32 %38, 100000
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  store i16 %37, ptr %41, align 4, !tbaa !96
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  store i16 %40, ptr %42, align 2, !tbaa !97
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 122
  store i8 1, ptr %43, align 2, !tbaa !98
  br label %55

44:                                               ; preds = %28
  br i1 %30, label %45, label %46

45:                                               ; preds = %44
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  br label %46

46:                                               ; preds = %45, %44
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  %48 = load i16, ptr %47, align 4, !tbaa !96
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  %52 = load i16, ptr %51, align 2, !tbaa !97
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i16 6968, ptr %47, align 4, !tbaa !96
  store i16 23434, ptr %51, align 2, !tbaa !97
  br label %55

55:                                               ; preds = %46, %50, %54, %4, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_rgb_to_gray(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @png_fixed(ptr noundef nonnull %0, double noundef %2, ptr noundef nonnull @.str.8) #12
  %8 = tail call i32 @png_fixed(ptr noundef nonnull %0, double noundef %3, ptr noundef nonnull @.str.9) #12
  tail call void @png_set_rgb_to_gray_fixed(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %7, i32 noundef %8) #13
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_read_user_transform_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = or i32 %6, 1048576
  store i32 %7, ptr %5, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 8
  store ptr %1, ptr %8, align 8, !tbaa !99
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_init_read_transformations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i32 %6, 0
  br i1 %4, label %11, label %8

8:                                                ; preds = %1
  br i1 %7, label %9, label %15

9:                                                ; preds = %8
  %10 = tail call i32 @png_reciprocal(i32 noundef %3) #12
  store i32 %10, ptr %5, align 8, !tbaa !51
  br label %22

11:                                               ; preds = %1
  br i1 %7, label %14, label %12

12:                                               ; preds = %11
  %13 = tail call i32 @png_reciprocal(i32 noundef %6) #12
  store i32 %13, ptr %2, align 4, !tbaa !50
  br label %22

14:                                               ; preds = %11
  store i32 100000, ptr %2, align 4, !tbaa !50
  store i32 100000, ptr %5, align 8, !tbaa !51
  br label %22

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @png_gamma_threshold(i32 noundef %3, i32 noundef %6) #13, !range !100
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = or i32 %20, 8192
  store i32 %21, ptr %19, align 4, !tbaa !46
  br label %26

22:                                               ; preds = %14, %12, %9, %15
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = and i32 %24, -8193
  store i32 %25, ptr %23, align 4, !tbaa !46
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %25, %22 ], [ %21, %18 ]
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %29 = and i32 %27, 262272
  %30 = icmp eq i32 %29, 262144
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = and i32 %27, -41943425
  store i32 %32, ptr %28, align 4, !tbaa !46
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %34 = load i32, ptr %33, align 8, !tbaa !34
  %35 = and i32 %34, -8193
  store i32 %35, ptr %33, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 0, ptr %36, align 8, !tbaa !101
  br label %37

37:                                               ; preds = %31, %26
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %39 = load i32, ptr %38, align 8, !tbaa !51
  %40 = tail call i32 @png_gamma_significant(i32 noundef %39) #12
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %28, align 4, !tbaa !46
  br i1 %41, label %43, label %48

43:                                               ; preds = %37
  %44 = and i32 %42, -8388609
  store i32 %44, ptr %28, align 4, !tbaa !46
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %46 = load i32, ptr %45, align 8, !tbaa !34
  %47 = and i32 %46, -8193
  store i32 %47, ptr %45, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i32 [ %44, %43 ], [ %42, %37 ]
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %54 = load i8, ptr %53, align 1, !tbaa !95
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %59 = load i32, ptr %58, align 4, !tbaa !102
  %60 = or i32 %59, 2048
  store i32 %60, ptr %58, align 4, !tbaa !102
  br label %79

61:                                               ; preds = %48
  %62 = and i32 %49, 16512
  %63 = icmp eq i32 %62, 16512
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !103
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %68 = load i16, ptr %67, align 4, !tbaa !104
  %69 = icmp eq i16 %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %72 = load i16, ptr %71, align 2, !tbaa !105
  %73 = icmp eq i16 %66, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %76 = load i32, ptr %75, align 4, !tbaa !102
  %77 = or i32 %76, 2048
  store i32 %77, ptr %75, align 4, !tbaa !102
  %78 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  store i16 %66, ptr %78, align 8, !tbaa !106
  br label %79

79:                                               ; preds = %61, %64, %70, %74, %52, %57
  %80 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %81 = load i8, ptr %80, align 1, !tbaa !95
  %82 = icmp eq i8 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  tail call fastcc void @png_init_palette_transformations(ptr noundef nonnull %0) #13
  br label %85

84:                                               ; preds = %79
  tail call fastcc void @png_init_rgb_transformations(ptr noundef nonnull %0) #13
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i32, ptr %28, align 4, !tbaa !46
  %87 = and i32 %86, 896
  %88 = icmp eq i32 %87, 640
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %91 = load i8, ptr %90, align 8, !tbaa !107
  %92 = icmp eq i8 %91, 16
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %95 = load <4 x i16>, ptr %94, align 2, !tbaa !60
  %96 = zext <4 x i16> %95 to <4 x i32>
  %97 = mul nuw nsw <4 x i32> %96, <i32 255, i32 255, i32 255, i32 255>
  %98 = add nuw nsw <4 x i32> %97, <i32 32895, i32 32895, i32 32895, i32 32895>
  %99 = lshr <4 x i32> %98, <i32 16, i32 16, i32 16, i32 16>
  %100 = trunc <4 x i32> %99 to <4 x i16>
  store <4 x i16> %100, ptr %94, align 2, !tbaa !60
  br label %101

101:                                              ; preds = %93, %89, %85
  %102 = and i32 %86, 67109888
  %103 = icmp ne i32 %102, 0
  %104 = and i32 %86, 384
  %105 = icmp eq i32 %104, 128
  %106 = and i1 %103, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %109 = load i8, ptr %108, align 8, !tbaa !107
  %110 = icmp eq i8 %109, 16
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %113 = load <4 x i16>, ptr %112, align 2, !tbaa !60
  %114 = mul <4 x i16> %113, <i16 257, i16 257, i16 257, i16 257>
  store <4 x i16> %114, ptr %112, align 2, !tbaa !60
  br label %115

115:                                              ; preds = %111, %107, %101
  %116 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70
  %117 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %116, ptr noundef nonnull align 8 dereferenceable(10) %117, i64 10, i1 false), !tbaa.struct !108
  %118 = and i32 %86, 8192
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %164

120:                                              ; preds = %115
  %121 = and i32 %86, 6291456
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %2, align 4, !tbaa !50
  %125 = tail call i32 @png_gamma_significant(i32 noundef %124) #12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  %128 = load i32, ptr %38, align 8, !tbaa !51
  %129 = tail call i32 @png_gamma_significant(i32 noundef %128) #12
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %164

131:                                              ; preds = %127
  %132 = load i32, ptr %28, align 4, !tbaa !46
  br label %133

133:                                              ; preds = %131, %120
  %134 = phi i32 [ %132, %131 ], [ %86, %120 ]
  %135 = and i32 %134, 128
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %2, align 4, !tbaa !50
  %139 = tail call i32 @png_gamma_significant(i32 noundef %138) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load i32, ptr %38, align 8, !tbaa !51
  %143 = tail call i32 @png_gamma_significant(i32 noundef %142) #12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  %147 = load i8, ptr %146, align 8, !tbaa !48
  %148 = icmp eq i8 %147, 3
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  %151 = load i32, ptr %150, align 4, !tbaa !47
  %152 = tail call i32 @png_gamma_significant(i32 noundef %151) #12
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149, %145, %133
  %155 = load i32, ptr %28, align 4, !tbaa !46
  %156 = and i32 %155, 8388608
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %521, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %38, align 8, !tbaa !51
  %160 = tail call i32 @png_gamma_significant(i32 noundef %159) #12
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, ptr %28, align 4, !tbaa !46
  br label %521

164:                                              ; preds = %158, %149, %141, %137, %127, %123, %115
  %165 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %166 = load i8, ptr %165, align 8, !tbaa !107
  %167 = zext i8 %166 to i32
  tail call void @png_build_gamma_table(ptr noundef nonnull %0, i32 noundef %167) #12
  %168 = load i32, ptr %28, align 4, !tbaa !46
  %169 = and i32 %168, 128
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %481, label %171

171:                                              ; preds = %164
  %172 = and i32 %168, 6291456
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #12
  br label %175

175:                                              ; preds = %174, %171
  %176 = load i8, ptr %80, align 1, !tbaa !95
  %177 = icmp eq i8 %176, 3
  br i1 %177, label %178, label %395

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %180 = load ptr, ptr %179, align 8, !tbaa !88
  %181 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %182 = load i16, ptr %181, align 8, !tbaa !89
  %183 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  %184 = load i8, ptr %183, align 8, !tbaa !48
  switch i8 %184, label %220 [
    i8 2, label %185
    i8 1, label %211
    i8 3, label %213
  ]

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %187 = load ptr, ptr %186, align 8, !tbaa !109
  %188 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %189 = load i16, ptr %188, align 2, !tbaa !103
  %190 = zext i16 %189 to i64
  %191 = getelementptr inbounds i8, ptr %187, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !55
  %193 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %194 = load i16, ptr %193, align 4, !tbaa !104
  %195 = zext i16 %194 to i64
  %196 = getelementptr inbounds i8, ptr %187, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !55
  %198 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %199 = load i16, ptr %198, align 2, !tbaa !105
  %200 = zext i16 %199 to i64
  %201 = getelementptr inbounds i8, ptr %187, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !55
  %203 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %204 = load ptr, ptr %203, align 8, !tbaa !110
  %205 = getelementptr inbounds i8, ptr %204, i64 %190
  %206 = load i8, ptr %205, align 1, !tbaa !55
  %207 = getelementptr inbounds i8, ptr %204, i64 %195
  %208 = load i8, ptr %207, align 1, !tbaa !55
  %209 = getelementptr inbounds i8, ptr %204, i64 %200
  %210 = load i8, ptr %209, align 1, !tbaa !55
  br label %273

211:                                              ; preds = %178
  %212 = load i32, ptr %38, align 8, !tbaa !51
  br label %220

213:                                              ; preds = %178
  %214 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  %215 = load i32, ptr %214, align 4, !tbaa !47
  %216 = tail call i32 @png_reciprocal(i32 noundef %215) #12
  %217 = load i32, ptr %214, align 4, !tbaa !47
  %218 = load i32, ptr %38, align 8, !tbaa !51
  %219 = tail call i32 @png_reciprocal2(i32 noundef %217, i32 noundef %218) #12
  br label %220

220:                                              ; preds = %178, %213, %211
  %221 = phi i32 [ %219, %213 ], [ 100000, %211 ], [ 100000, %178 ]
  %222 = phi i32 [ %216, %213 ], [ %212, %211 ], [ 100000, %178 ]
  %223 = tail call i32 @png_gamma_significant(i32 noundef %221) #12
  %224 = icmp eq i32 %223, 0
  %225 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %226 = load i16, ptr %225, align 2, !tbaa !103
  br i1 %224, label %238, label %227

227:                                              ; preds = %220
  %228 = zext i16 %226 to i32
  %229 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %228, i32 noundef %221) #12
  %230 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %231 = load i16, ptr %230, align 4, !tbaa !104
  %232 = zext i16 %231 to i32
  %233 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %232, i32 noundef %221) #12
  %234 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %235 = load i16, ptr %234, align 2, !tbaa !105
  %236 = zext i16 %235 to i32
  %237 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %236, i32 noundef %221) #12
  br label %246

238:                                              ; preds = %220
  %239 = trunc i16 %226 to i8
  %240 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %241 = load i16, ptr %240, align 4, !tbaa !104
  %242 = trunc i16 %241 to i8
  %243 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %244 = load i16, ptr %243, align 2, !tbaa !105
  %245 = trunc i16 %244 to i8
  br label %246

246:                                              ; preds = %238, %227
  %247 = phi i8 [ %229, %227 ], [ %239, %238 ]
  %248 = phi i8 [ %233, %227 ], [ %242, %238 ]
  %249 = phi i8 [ %237, %227 ], [ %245, %238 ]
  %250 = tail call i32 @png_gamma_significant(i32 noundef %222) #12
  %251 = icmp eq i32 %250, 0
  %252 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !103
  br i1 %251, label %265, label %254

254:                                              ; preds = %246
  %255 = zext i16 %253 to i32
  %256 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %255, i32 noundef %222) #12
  %257 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %258 = load i16, ptr %257, align 4, !tbaa !104
  %259 = zext i16 %258 to i32
  %260 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %259, i32 noundef %222) #12
  %261 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %262 = load i16, ptr %261, align 2, !tbaa !105
  %263 = zext i16 %262 to i32
  %264 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %263, i32 noundef %222) #12
  br label %273

265:                                              ; preds = %246
  %266 = trunc i16 %253 to i8
  %267 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %268 = load i16, ptr %267, align 4, !tbaa !104
  %269 = trunc i16 %268 to i8
  %270 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %271 = load i16, ptr %270, align 2, !tbaa !105
  %272 = trunc i16 %271 to i8
  br label %273

273:                                              ; preds = %254, %265, %185
  %274 = phi i8 [ %206, %185 ], [ %256, %254 ], [ %266, %265 ]
  %275 = phi i8 [ %208, %185 ], [ %260, %254 ], [ %269, %265 ]
  %276 = phi i8 [ %210, %185 ], [ %264, %254 ], [ %272, %265 ]
  %277 = phi i8 [ %192, %185 ], [ %247, %254 ], [ %247, %265 ]
  %278 = phi i8 [ %197, %185 ], [ %248, %254 ], [ %248, %265 ]
  %279 = phi i8 [ %202, %185 ], [ %249, %254 ], [ %249, %265 ]
  %280 = icmp eq i16 %182, 0
  br i1 %280, label %392, label %281

281:                                              ; preds = %273
  %282 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %283 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %284 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %285 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %286 = zext i8 %274 to i32
  %287 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %288 = zext i8 %275 to i32
  %289 = zext i8 %276 to i32
  %290 = zext i16 %182 to i64
  br label %291

291:                                              ; preds = %281, %389
  %292 = phi i64 [ 0, %281 ], [ %390, %389 ]
  %293 = load i16, ptr %282, align 8, !tbaa !101
  %294 = zext i16 %293 to i64
  %295 = icmp ult i64 %292, %294
  br i1 %295, label %296, label %372

296:                                              ; preds = %291
  %297 = load ptr, ptr %283, align 8, !tbaa !111
  %298 = getelementptr inbounds i8, ptr %297, i64 %292
  %299 = load i8, ptr %298, align 1, !tbaa !55
  switch i8 %299, label %304 [
    i8 -1, label %372
    i8 0, label %300
  ]

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292
  store i8 %277, ptr %301, align 1, !tbaa.struct !63
  %302 = getelementptr inbounds i8, ptr %301, i64 1
  store i8 %278, ptr %302, align 1, !tbaa.struct !112
  %303 = getelementptr inbounds i8, ptr %301, i64 2
  store i8 %279, ptr %303, align 1, !tbaa.struct !113
  br label %389

304:                                              ; preds = %296
  %305 = load ptr, ptr %285, align 8, !tbaa !110
  %306 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292
  %307 = load i8, ptr %306, align 1, !tbaa !67
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds i8, ptr %305, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !55
  %311 = zext i8 %310 to i32
  %312 = zext i8 %299 to i32
  %313 = mul nuw nsw i32 %311, %312
  %314 = xor i8 %299, -1
  %315 = zext i8 %314 to i32
  %316 = mul nuw nsw i32 %315, %286
  %317 = add nuw nsw i32 %316, 128
  %318 = add nuw nsw i32 %317, %313
  %319 = lshr i32 %318, 8
  %320 = and i32 %319, 255
  %321 = add nuw nsw i32 %320, %318
  %322 = lshr i32 %321, 8
  %323 = load ptr, ptr %287, align 8, !tbaa !114
  %324 = and i32 %322, 255
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %323, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !55
  store i8 %327, ptr %306, align 1, !tbaa !67
  %328 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292, i32 1
  %329 = load i8, ptr %328, align 1, !tbaa !69
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds i8, ptr %305, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !55
  %333 = zext i8 %332 to i32
  %334 = load i8, ptr %298, align 1, !tbaa !55
  %335 = zext i8 %334 to i32
  %336 = mul nuw nsw i32 %335, %333
  %337 = xor i8 %334, -1
  %338 = zext i8 %337 to i32
  %339 = mul nuw nsw i32 %338, %288
  %340 = add nuw nsw i32 %339, 128
  %341 = add nuw nsw i32 %340, %336
  %342 = lshr i32 %341, 8
  %343 = and i32 %342, 255
  %344 = add nuw nsw i32 %343, %341
  %345 = lshr i32 %344, 8
  %346 = and i32 %345, 255
  %347 = zext nneg i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %323, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !55
  store i8 %349, ptr %328, align 1, !tbaa !69
  %350 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292, i32 2
  %351 = load i8, ptr %350, align 1, !tbaa !70
  %352 = zext i8 %351 to i64
  %353 = getelementptr inbounds i8, ptr %305, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !55
  %355 = zext i8 %354 to i32
  %356 = load i8, ptr %298, align 1, !tbaa !55
  %357 = zext i8 %356 to i32
  %358 = mul nuw nsw i32 %357, %355
  %359 = xor i8 %356, -1
  %360 = zext i8 %359 to i32
  %361 = mul nuw nsw i32 %360, %289
  %362 = add nuw nsw i32 %361, 128
  %363 = add nuw nsw i32 %362, %358
  %364 = lshr i32 %363, 8
  %365 = and i32 %364, 255
  %366 = add nuw nsw i32 %365, %363
  %367 = lshr i32 %366, 8
  %368 = and i32 %367, 255
  %369 = zext nneg i32 %368 to i64
  %370 = getelementptr inbounds i8, ptr %323, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !55
  store i8 %371, ptr %350, align 1, !tbaa !70
  br label %389

372:                                              ; preds = %296, %291
  %373 = load ptr, ptr %284, align 8, !tbaa !109
  %374 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292
  %375 = load i8, ptr %374, align 1, !tbaa !67
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds i8, ptr %373, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !55
  store i8 %378, ptr %374, align 1, !tbaa !67
  %379 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292, i32 1
  %380 = load i8, ptr %379, align 1, !tbaa !69
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds i8, ptr %373, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !55
  store i8 %383, ptr %379, align 1, !tbaa !69
  %384 = getelementptr inbounds %struct.png_color_struct, ptr %180, i64 %292, i32 2
  %385 = load i8, ptr %384, align 1, !tbaa !70
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds i8, ptr %373, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !55
  store i8 %388, ptr %384, align 1, !tbaa !70
  br label %389

389:                                              ; preds = %372, %304, %300
  %390 = add nuw nsw i64 %292, 1
  %391 = icmp eq i64 %390, %290
  br i1 %391, label %392, label %291, !llvm.loop !115

392:                                              ; preds = %389, %273
  %393 = load i32, ptr %28, align 4, !tbaa !46
  %394 = and i32 %393, -8321
  store i32 %394, ptr %28, align 4, !tbaa !46
  br label %614

395:                                              ; preds = %175
  %396 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 67
  %397 = load i8, ptr %396, align 8, !tbaa !48
  switch i8 %397, label %413 [
    i8 1, label %398
    i8 2, label %400
    i8 3, label %406
  ]

398:                                              ; preds = %395
  %399 = load i32, ptr %38, align 8, !tbaa !51
  br label %414

400:                                              ; preds = %395
  %401 = load i32, ptr %2, align 4, !tbaa !50
  %402 = tail call i32 @png_reciprocal(i32 noundef %401) #12
  %403 = load i32, ptr %2, align 4, !tbaa !50
  %404 = load i32, ptr %38, align 8, !tbaa !51
  %405 = tail call i32 @png_reciprocal2(i32 noundef %403, i32 noundef %404) #12
  br label %414

406:                                              ; preds = %395
  %407 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 68
  %408 = load i32, ptr %407, align 4, !tbaa !47
  %409 = tail call i32 @png_reciprocal(i32 noundef %408) #12
  %410 = load i32, ptr %407, align 4, !tbaa !47
  %411 = load i32, ptr %38, align 8, !tbaa !51
  %412 = tail call i32 @png_reciprocal2(i32 noundef %410, i32 noundef %411) #12
  br label %414

413:                                              ; preds = %395
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #14
  unreachable

414:                                              ; preds = %406, %400, %398
  %415 = phi i32 [ %412, %406 ], [ %405, %400 ], [ 100000, %398 ]
  %416 = phi i32 [ %409, %406 ], [ %402, %400 ], [ %399, %398 ]
  %417 = tail call i32 @png_gamma_significant(i32 noundef %416) #12
  %418 = tail call i32 @png_gamma_significant(i32 noundef %415) #12
  %419 = icmp eq i32 %417, 0
  br i1 %419, label %426, label %420

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %422 = load i16, ptr %421, align 8, !tbaa !106
  %423 = zext i16 %422 to i32
  %424 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %423, i32 noundef %416) #12
  %425 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 4
  store i16 %424, ptr %425, align 2, !tbaa !116
  br label %426

426:                                              ; preds = %420, %414
  %427 = icmp eq i32 %418, 0
  br i1 %427, label %433, label %428

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %430 = load i16, ptr %429, align 8, !tbaa !106
  %431 = zext i16 %430 to i32
  %432 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %431, i32 noundef %415) #12
  store i16 %432, ptr %429, align 8, !tbaa !106
  br label %433

433:                                              ; preds = %428, %426
  %434 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %435 = load i16, ptr %434, align 2, !tbaa !103
  %436 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %437 = load i16, ptr %436, align 4, !tbaa !104
  %438 = icmp eq i16 %435, %437
  br i1 %438, label %439, label %447

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %441 = load i16, ptr %440, align 2, !tbaa !105
  %442 = icmp eq i16 %435, %441
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %445 = load i16, ptr %444, align 8, !tbaa !106
  %446 = icmp eq i16 %435, %445
  br i1 %446, label %473, label %447

447:                                              ; preds = %443, %439, %433
  br i1 %419, label %461, label %448

448:                                              ; preds = %447
  %449 = zext i16 %435 to i32
  %450 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %449, i32 noundef %416) #12
  %451 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 1
  store i16 %450, ptr %451, align 2, !tbaa !117
  %452 = load i16, ptr %436, align 4, !tbaa !104
  %453 = zext i16 %452 to i32
  %454 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %453, i32 noundef %416) #12
  %455 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 2
  store i16 %454, ptr %455, align 2, !tbaa !118
  %456 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %457 = load i16, ptr %456, align 2, !tbaa !105
  %458 = zext i16 %457 to i32
  %459 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %458, i32 noundef %416) #12
  %460 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 3
  store i16 %459, ptr %460, align 2, !tbaa !119
  br label %461

461:                                              ; preds = %448, %447
  br i1 %427, label %479, label %462

462:                                              ; preds = %461
  %463 = load i16, ptr %434, align 2, !tbaa !103
  %464 = zext i16 %463 to i32
  %465 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %464, i32 noundef %415) #12
  store i16 %465, ptr %434, align 2, !tbaa !103
  %466 = load i16, ptr %436, align 4, !tbaa !104
  %467 = zext i16 %466 to i32
  %468 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %467, i32 noundef %415) #12
  store i16 %468, ptr %436, align 4, !tbaa !104
  %469 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %470 = load i16, ptr %469, align 2, !tbaa !105
  %471 = zext i16 %470 to i32
  %472 = tail call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %471, i32 noundef %415) #12
  store i16 %472, ptr %469, align 2, !tbaa !105
  br label %479

473:                                              ; preds = %443
  %474 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 4
  %475 = load i16, ptr %474, align 2, !tbaa !116
  %476 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 3
  store i16 %475, ptr %476, align 2, !tbaa !119
  %477 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 2
  store i16 %475, ptr %477, align 2, !tbaa !118
  %478 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 70, i32 1
  store i16 %475, ptr %478, align 2, !tbaa !117
  store i16 %435, ptr %440, align 2, !tbaa !105
  store i16 %435, ptr %436, align 4, !tbaa !104
  store i16 %435, ptr %434, align 2, !tbaa !103
  br label %479

479:                                              ; preds = %461, %462, %473
  store i8 1, ptr %396, align 8, !tbaa !48
  %480 = load i32, ptr %28, align 4, !tbaa !46
  br label %614

481:                                              ; preds = %164
  %482 = load i8, ptr %80, align 1, !tbaa !95
  %483 = icmp eq i8 %482, 3
  br i1 %483, label %484, label %614

484:                                              ; preds = %481
  %485 = and i32 %168, 4096
  %486 = icmp eq i32 %485, 0
  %487 = and i32 %168, 6291456
  %488 = icmp eq i32 %487, 0
  %489 = or i1 %486, %488
  br i1 %489, label %490, label %614

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %492 = load ptr, ptr %491, align 8, !tbaa !88
  %493 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %494 = load i16, ptr %493, align 8, !tbaa !89
  %495 = icmp eq i16 %494, 0
  br i1 %495, label %519, label %496

496:                                              ; preds = %490
  %497 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %498 = load ptr, ptr %497, align 8, !tbaa !109
  %499 = zext i16 %494 to i64
  br label %500

500:                                              ; preds = %496, %500
  %501 = phi i64 [ 0, %496 ], [ %517, %500 ]
  %502 = getelementptr inbounds %struct.png_color_struct, ptr %492, i64 %501
  %503 = load i8, ptr %502, align 1, !tbaa !67
  %504 = zext i8 %503 to i64
  %505 = getelementptr inbounds i8, ptr %498, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !55
  store i8 %506, ptr %502, align 1, !tbaa !67
  %507 = getelementptr inbounds %struct.png_color_struct, ptr %492, i64 %501, i32 1
  %508 = load i8, ptr %507, align 1, !tbaa !69
  %509 = zext i8 %508 to i64
  %510 = getelementptr inbounds i8, ptr %498, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !55
  store i8 %511, ptr %507, align 1, !tbaa !69
  %512 = getelementptr inbounds %struct.png_color_struct, ptr %492, i64 %501, i32 2
  %513 = load i8, ptr %512, align 1, !tbaa !70
  %514 = zext i8 %513 to i64
  %515 = getelementptr inbounds i8, ptr %498, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !55
  store i8 %516, ptr %512, align 1, !tbaa !70
  %517 = add nuw nsw i64 %501, 1
  %518 = icmp eq i64 %517, %499
  br i1 %518, label %519, label %500, !llvm.loop !120

519:                                              ; preds = %500, %490
  %520 = and i32 %168, -8321
  store i32 %520, ptr %28, align 4, !tbaa !46
  br label %614

521:                                              ; preds = %162, %154
  %522 = phi i32 [ %163, %162 ], [ %155, %154 ]
  %523 = and i32 %522, 128
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %614, label %525

525:                                              ; preds = %521
  %526 = load i8, ptr %80, align 1, !tbaa !95
  %527 = icmp eq i8 %526, 3
  br i1 %527, label %528, label %614

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %530 = load i16, ptr %529, align 8, !tbaa !101
  %531 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %532 = load ptr, ptr %531, align 8, !tbaa !88
  %533 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  %534 = load i16, ptr %533, align 2, !tbaa !103
  %535 = trunc i16 %534 to i8
  %536 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  %537 = load i16, ptr %536, align 4, !tbaa !104
  %538 = trunc i16 %537 to i8
  %539 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  %540 = load i16, ptr %539, align 2, !tbaa !105
  %541 = trunc i16 %540 to i8
  %542 = icmp eq i16 %530, 0
  br i1 %542, label %611, label %543

543:                                              ; preds = %528
  %544 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %545 = and i16 %534, 255
  %546 = and i16 %537, 255
  %547 = and i16 %540, 255
  %548 = zext i16 %530 to i64
  br label %549

549:                                              ; preds = %543, %606
  %550 = phi i64 [ 0, %543 ], [ %607, %606 ]
  %551 = load ptr, ptr %544, align 8, !tbaa !111
  %552 = getelementptr inbounds i8, ptr %551, i64 %550
  %553 = load i8, ptr %552, align 1, !tbaa !55
  switch i8 %553, label %558 [
    i8 0, label %554
    i8 -1, label %606
  ]

554:                                              ; preds = %549
  %555 = getelementptr inbounds %struct.png_color_struct, ptr %532, i64 %550
  store i8 %535, ptr %555, align 1, !tbaa.struct !63
  %556 = getelementptr inbounds i8, ptr %555, i64 1
  store i8 %538, ptr %556, align 1, !tbaa.struct !112
  %557 = getelementptr inbounds i8, ptr %555, i64 2
  store i8 %541, ptr %557, align 1, !tbaa.struct !113
  br label %606

558:                                              ; preds = %549
  %559 = getelementptr inbounds %struct.png_color_struct, ptr %532, i64 %550
  %560 = load i8, ptr %559, align 1, !tbaa !67
  %561 = zext i8 %560 to i16
  %562 = zext i8 %553 to i16
  %563 = mul nuw i16 %561, %562
  %564 = xor i8 %553, -1
  %565 = zext i8 %564 to i16
  %566 = mul nuw i16 %545, %565
  %567 = add nuw i16 %566, 128
  %568 = add i16 %567, %563
  %569 = zext i16 %568 to i32
  %570 = lshr i32 %569, 8
  %571 = add nuw nsw i32 %570, %569
  %572 = lshr i32 %571, 8
  %573 = trunc i32 %572 to i8
  store i8 %573, ptr %559, align 1, !tbaa !67
  %574 = getelementptr inbounds %struct.png_color_struct, ptr %532, i64 %550, i32 1
  %575 = load i8, ptr %574, align 1, !tbaa !69
  %576 = zext i8 %575 to i16
  %577 = load i8, ptr %552, align 1, !tbaa !55
  %578 = zext i8 %577 to i16
  %579 = mul nuw i16 %578, %576
  %580 = xor i8 %577, -1
  %581 = zext i8 %580 to i16
  %582 = mul nuw i16 %546, %581
  %583 = add nuw i16 %582, 128
  %584 = add i16 %583, %579
  %585 = zext i16 %584 to i32
  %586 = lshr i32 %585, 8
  %587 = add nuw nsw i32 %586, %585
  %588 = lshr i32 %587, 8
  %589 = trunc i32 %588 to i8
  store i8 %589, ptr %574, align 1, !tbaa !69
  %590 = getelementptr inbounds %struct.png_color_struct, ptr %532, i64 %550, i32 2
  %591 = load i8, ptr %590, align 1, !tbaa !70
  %592 = zext i8 %591 to i16
  %593 = load i8, ptr %552, align 1, !tbaa !55
  %594 = zext i8 %593 to i16
  %595 = mul nuw i16 %594, %592
  %596 = xor i8 %593, -1
  %597 = zext i8 %596 to i16
  %598 = mul nuw i16 %547, %597
  %599 = add nuw i16 %598, 128
  %600 = add i16 %599, %595
  %601 = zext i16 %600 to i32
  %602 = lshr i32 %601, 8
  %603 = add nuw nsw i32 %602, %601
  %604 = lshr i32 %603, 8
  %605 = trunc i32 %604 to i8
  store i8 %605, ptr %590, align 1, !tbaa !70
  br label %606

606:                                              ; preds = %549, %554, %558
  %607 = add nuw nsw i64 %550, 1
  %608 = icmp eq i64 %607, %548
  br i1 %608, label %609, label %549, !llvm.loop !121

609:                                              ; preds = %606
  %610 = load i32, ptr %28, align 4, !tbaa !46
  br label %611

611:                                              ; preds = %609, %528
  %612 = phi i32 [ %610, %609 ], [ %522, %528 ]
  %613 = and i32 %612, -129
  store i32 %613, ptr %28, align 4, !tbaa !46
  br label %614

614:                                              ; preds = %484, %521, %525, %611, %479, %392, %519, %481
  %615 = phi i32 [ %168, %484 ], [ %522, %521 ], [ %522, %525 ], [ %613, %611 ], [ %480, %479 ], [ %394, %392 ], [ %520, %519 ], [ %168, %481 ]
  %616 = and i32 %615, 4104
  %617 = icmp eq i32 %616, 8
  br i1 %617, label %618, label %688

618:                                              ; preds = %614
  %619 = load i8, ptr %80, align 1, !tbaa !95
  %620 = icmp eq i8 %619, 3
  br i1 %620, label %621, label %688

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %623 = load i16, ptr %622, align 8, !tbaa !89
  %624 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  %625 = load i8, ptr %624, align 8, !tbaa !122
  %626 = zext i8 %625 to i32
  %627 = sub nsw i32 8, %626
  %628 = and i32 %615, -4105
  store i32 %628, ptr %28, align 4, !tbaa !46
  %629 = add i8 %625, -1
  %630 = icmp ult i8 %629, 7
  %631 = icmp ne i16 %623, 0
  %632 = select i1 %630, i1 %631, i1 false
  br i1 %632, label %633, label %646

633:                                              ; preds = %621
  %634 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %635 = load ptr, ptr %634, align 8, !tbaa !88
  %636 = zext i16 %623 to i64
  br label %637

637:                                              ; preds = %633, %637
  %638 = phi i64 [ 0, %633 ], [ %644, %637 ]
  %639 = getelementptr inbounds %struct.png_color_struct, ptr %635, i64 %638
  %640 = load i8, ptr %639, align 1, !tbaa !67
  %641 = zext i8 %640 to i32
  %642 = lshr i32 %641, %627
  %643 = trunc i32 %642 to i8
  store i8 %643, ptr %639, align 1, !tbaa !67
  %644 = add nuw nsw i64 %638, 1
  %645 = icmp eq i64 %644, %636
  br i1 %645, label %646, label %637, !llvm.loop !123

646:                                              ; preds = %637, %621
  %647 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  %648 = load i8, ptr %647, align 1, !tbaa !124
  %649 = zext i8 %648 to i32
  %650 = sub nsw i32 8, %649
  %651 = add i8 %648, -1
  %652 = icmp ult i8 %651, 7
  %653 = select i1 %652, i1 %631, i1 false
  br i1 %653, label %654, label %667

654:                                              ; preds = %646
  %655 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %656 = load ptr, ptr %655, align 8, !tbaa !88
  %657 = zext i16 %623 to i64
  br label %658

658:                                              ; preds = %654, %658
  %659 = phi i64 [ 0, %654 ], [ %665, %658 ]
  %660 = getelementptr inbounds %struct.png_color_struct, ptr %656, i64 %659, i32 1
  %661 = load i8, ptr %660, align 1, !tbaa !69
  %662 = zext i8 %661 to i32
  %663 = lshr i32 %662, %650
  %664 = trunc i32 %663 to i8
  store i8 %664, ptr %660, align 1, !tbaa !69
  %665 = add nuw nsw i64 %659, 1
  %666 = icmp eq i64 %665, %657
  br i1 %666, label %667, label %658, !llvm.loop !125

667:                                              ; preds = %658, %646
  %668 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 2
  %669 = load i8, ptr %668, align 2, !tbaa !126
  %670 = zext i8 %669 to i32
  %671 = sub nsw i32 8, %670
  %672 = add i8 %669, -1
  %673 = icmp ult i8 %672, 7
  %674 = select i1 %673, i1 %631, i1 false
  br i1 %674, label %675, label %688

675:                                              ; preds = %667
  %676 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %677 = load ptr, ptr %676, align 8, !tbaa !88
  %678 = zext i16 %623 to i64
  br label %679

679:                                              ; preds = %675, %679
  %680 = phi i64 [ 0, %675 ], [ %686, %679 ]
  %681 = getelementptr inbounds %struct.png_color_struct, ptr %677, i64 %680, i32 2
  %682 = load i8, ptr %681, align 1, !tbaa !70
  %683 = zext i8 %682 to i32
  %684 = lshr i32 %683, %671
  %685 = trunc i32 %684 to i8
  store i8 %685, ptr %681, align 1, !tbaa !70
  %686 = add nuw nsw i64 %680, 1
  %687 = icmp eq i64 %686, %678
  br i1 %687, label %688, label %679, !llvm.loop !127

688:                                              ; preds = %679, %667, %618, %614
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @png_gamma_threshold(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call i32 @png_muldiv(ptr noundef nonnull %3, i32 noundef %0, i32 noundef %1, i32 noundef 100000) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4, !tbaa !129
  %8 = call i32 @png_gamma_significant(i32 noundef %7) #12
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 1, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @png_gamma_significant(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @png_init_palette_transformations(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !130 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %3 = load i16, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = zext i16 %3 to i64
  br label %9

9:                                                ; preds = %30, %5
  %10 = phi i64 [ %31, %30 ], [ 0, %5 ]
  %11 = phi i1 [ false, %30 ], [ true, %5 ]
  %12 = phi i32 [ %22, %30 ], [ 0, %5 ]
  br label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = and i32 %15, -8388609
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = and i32 %18, -8193
  store i32 %19, ptr %17, align 8, !tbaa !34
  br label %44

20:                                               ; preds = %9, %26
  %21 = phi i64 [ %28, %26 ], [ %10, %9 ]
  %22 = phi i32 [ %27, %26 ], [ %12, %9 ]
  %23 = getelementptr inbounds i8, ptr %7, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !55
  switch i8 %24, label %30 [
    i8 -1, label %26
    i8 0, label %25
  ]

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %20, %25
  %27 = phi i32 [ %22, %20 ], [ 1, %25 ]
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %33, label %20, !llvm.loop !131

30:                                               ; preds = %20
  %31 = add nuw nsw i64 %21, 1
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %34, label %9, !llvm.loop !131

33:                                               ; preds = %26
  br i1 %11, label %37, label %34

34:                                               ; preds = %30, %33
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %36 = load i32, ptr %35, align 4, !tbaa !46
  br label %48

37:                                               ; preds = %33
  %38 = icmp eq i32 %27, 0
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %41 = load <2 x i32>, ptr %40, align 8, !tbaa !129
  %42 = and <2 x i32> %41, <i32 -8193, i32 -8388609>
  store <2 x i32> %42, ptr %40, align 8, !tbaa !129
  %43 = extractelement <2 x i32> %42, i64 1
  br i1 %38, label %44, label %48

44:                                               ; preds = %13, %37
  %45 = phi i32 [ %16, %13 ], [ %43, %37 ]
  %46 = phi ptr [ %14, %13 ], [ %39, %37 ]
  %47 = and i32 %45, -8388993
  store i32 %47, ptr %46, align 4, !tbaa !46
  br label %48

48:                                               ; preds = %34, %37, %44
  %49 = phi i32 [ %36, %34 ], [ %43, %37 ], [ %47, %44 ]
  %50 = and i32 %49, 4352
  %51 = icmp eq i32 %50, 4352
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  %56 = load i8, ptr %55, align 8, !tbaa !132
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds %struct.png_color_struct, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !67
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  store i16 %60, ptr %61, align 2, !tbaa !103
  %62 = getelementptr inbounds %struct.png_color_struct, ptr %54, i64 %57, i32 1
  %63 = load i8, ptr %62, align 1, !tbaa !69
  %64 = zext i8 %63 to i16
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  store i16 %64, ptr %65, align 4, !tbaa !104
  %66 = getelementptr inbounds %struct.png_color_struct, ptr %54, i64 %57, i32 2
  %67 = load i8, ptr %66, align 1, !tbaa !70
  %68 = zext i8 %67 to i16
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  store i16 %68, ptr %69, align 2, !tbaa !105
  %70 = and i32 %49, 34078720
  %71 = icmp ne i32 %70, 524288
  %72 = or i1 %71, %4
  br i1 %72, label %84, label %73

73:                                               ; preds = %52
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %75 = zext i16 %3 to i64
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ 0, %73 ], [ %82, %76 ]
  %78 = load ptr, ptr %74, align 8, !tbaa !111
  %79 = getelementptr inbounds i8, ptr %78, i64 %77
  %80 = load i8, ptr %79, align 1, !tbaa !55
  %81 = xor i8 %80, -1
  store i8 %81, ptr %79, align 1, !tbaa !55
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, %75
  br i1 %83, label %84, label %76, !llvm.loop !133

84:                                               ; preds = %76, %52, %48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @png_init_rgb_transformations(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %3 = load i8, ptr %2, align 1, !tbaa !95
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !46
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %11 = load i16, ptr %10, align 8, !tbaa !101
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = and i32 %14, -8388609
  store i32 %15, ptr %13, align 4, !tbaa !46
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = and i32 %17, -8193
  store i32 %18, ptr %16, align 8, !tbaa !34
  br i1 %12, label %19, label %21

19:                                               ; preds = %9
  %20 = and i32 %14, -8388993
  store i32 %20, ptr %13, align 4, !tbaa !46
  br label %21

21:                                               ; preds = %6, %9, %19
  %22 = phi i32 [ %8, %6 ], [ %15, %9 ], [ %20, %19 ]
  %23 = and i32 %22, 4352
  %24 = icmp eq i32 %23, 4352
  %25 = and i8 %3, 2
  %26 = icmp eq i8 %25, 0
  %27 = and i1 %26, %24
  br i1 %27, label %28, label %56

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 4
  %32 = load i16, ptr %31, align 8, !tbaa !135
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %34 = load i8, ptr %33, align 8, !tbaa !107
  switch i8 %34, label %44 [
    i8 1, label %35
    i8 2, label %38
    i8 4, label %41
  ]

35:                                               ; preds = %28
  %36 = mul i16 %30, 255
  %37 = mul i16 %32, 255
  br label %44

38:                                               ; preds = %28
  %39 = mul i16 %30, 85
  %40 = mul i16 %32, 85
  br label %44

41:                                               ; preds = %28
  %42 = mul i16 %30, 17
  %43 = mul i16 %32, 17
  br label %44

44:                                               ; preds = %28, %41, %38, %35
  %45 = phi i16 [ %30, %28 ], [ %42, %41 ], [ %39, %38 ], [ %36, %35 ]
  %46 = phi i16 [ %32, %28 ], [ %43, %41 ], [ %40, %38 ], [ %37, %35 ]
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 3
  store i16 %45, ptr %47, align 2, !tbaa !105
  %48 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 2
  store i16 %45, ptr %48, align 4, !tbaa !104
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69, i32 1
  store i16 %45, ptr %49, align 2, !tbaa !103
  %50 = and i32 %22, 33554432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 3
  store i16 %46, ptr %53, align 2, !tbaa !136
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 2
  store i16 %46, ptr %54, align 4, !tbaa !137
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 1
  store i16 %46, ptr %55, align 2, !tbaa !138
  br label %56

56:                                               ; preds = %44, %52, %21
  ret void
}

; Function Attrs: optsize
declare void @png_build_gamma_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @png_reciprocal2(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @png_gamma_8bit_correct(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i16 @png_gamma_correct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_read_transform_info(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !139
  %10 = icmp eq i8 %9, 3
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %12 = load i16, ptr %11, align 8, !tbaa !101
  %13 = icmp eq i16 %12, 0
  br i1 %10, label %14, label %17

14:                                               ; preds = %7
  %15 = select i1 %13, i8 2, i8 6
  store i8 %15, ptr %8, align 1, !tbaa !139
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  br label %27

17:                                               ; preds = %7
  %18 = and i32 %4, 33554432
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %19, %13
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = or i8 %9, 4
  store i8 %22, ptr %8, align 1, !tbaa !139
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %25 = load i8, ptr %24, align 4, !tbaa !142
  %26 = icmp ult i8 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %14
  %28 = phi ptr [ %16, %14 ], [ %24, %23 ]
  store i8 8, ptr %28, align 4, !tbaa !142
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  store i16 0, ptr %30, align 2, !tbaa !143
  br label %31

31:                                               ; preds = %29, %2
  %32 = and i32 %4, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 25
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %35, ptr noundef nonnull align 8 dereferenceable(10) %36, i64 10, i1 false), !tbaa.struct !108
  %37 = load i32, ptr %3, align 4, !tbaa !46
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %37, %34 ], [ %4, %31 ]
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  store i32 %41, ptr %42, align 4, !tbaa !144
  %43 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %44 = load i8, ptr %43, align 4, !tbaa !142
  %45 = icmp eq i8 %44, 16
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = and i32 %39, 67109888
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i8 8, ptr %43, align 4, !tbaa !142
  br label %50

50:                                               ; preds = %49, %46, %38
  %51 = phi i8 [ 8, %49 ], [ 16, %46 ], [ %44, %38 ]
  %52 = and i32 %39, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %56 = load i8, ptr %55, align 1, !tbaa !139
  %57 = or i8 %56, 2
  store i8 %57, ptr %55, align 1, !tbaa !139
  br label %58

58:                                               ; preds = %54, %50
  %59 = and i32 %39, 6291456
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %63 = load i8, ptr %62, align 1, !tbaa !139
  %64 = and i8 %63, -3
  store i8 %64, ptr %62, align 1, !tbaa !139
  br label %65

65:                                               ; preds = %61, %58
  %66 = and i32 %39, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %70 = load i8, ptr %69, align 1, !tbaa !139
  switch i8 %70, label %77 [
    i8 2, label %71
    i8 6, label %71
  ]

71:                                               ; preds = %68, %68
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = icmp ne ptr %73, null
  %75 = icmp eq i8 %51, 8
  %76 = and i1 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %68, %71, %65
  %78 = and i32 %39, 512
  %79 = icmp ne i32 %78, 0
  %80 = icmp eq i8 %51, 8
  %81 = and i1 %79, %80
  br i1 %81, label %85, label %90

82:                                               ; preds = %71
  store i8 3, ptr %69, align 1, !tbaa !139
  %83 = and i32 %39, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %77, %82
  %86 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %87 = load i8, ptr %86, align 1, !tbaa !139
  %88 = icmp eq i8 %87, 3
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i8 16, ptr %43, align 4, !tbaa !142
  br label %90

90:                                               ; preds = %82, %89, %85, %77
  %91 = phi i8 [ 16, %89 ], [ 8, %85 ], [ %51, %77 ], [ 8, %82 ]
  %92 = and i32 %39, 4
  %93 = icmp ne i32 %92, 0
  %94 = icmp ult i8 %91, 8
  %95 = and i1 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i8 8, ptr %43, align 4, !tbaa !142
  br label %97

97:                                               ; preds = %96, %90
  %98 = phi i8 [ 8, %96 ], [ %91, %90 ]
  %99 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %100 = load i8, ptr %99, align 1, !tbaa !139
  %101 = icmp eq i8 %100, 3
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  store i8 1, ptr %103, align 1, !tbaa !145
  br label %110

104:                                              ; preds = %97
  %105 = and i8 %100, 2
  %106 = icmp eq i8 %105, 0
  %107 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  br i1 %106, label %109, label %108

108:                                              ; preds = %104
  store i8 3, ptr %107, align 1, !tbaa !145
  br label %110

109:                                              ; preds = %104
  store i8 1, ptr %107, align 1, !tbaa !145
  br label %110

110:                                              ; preds = %108, %109, %102
  %111 = phi i8 [ 3, %108 ], [ 1, %109 ], [ 1, %102 ]
  %112 = and i32 %39, 262144
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = and i8 %100, -5
  store i8 %115, ptr %99, align 1, !tbaa !139
  %116 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  store i16 0, ptr %116, align 2, !tbaa !143
  br label %117

117:                                              ; preds = %110, %114
  %118 = phi i8 [ %115, %114 ], [ %100, %110 ]
  %119 = and i8 %118, 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %123 = add nuw nsw i8 %111, 1
  store i8 %123, ptr %122, align 1, !tbaa !145
  br label %124

124:                                              ; preds = %121, %117
  %125 = phi i8 [ %123, %121 ], [ %111, %117 ]
  %126 = and i32 %39, 32768
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  switch i8 %118, label %136 [
    i8 2, label %129
    i8 0, label %129
  ]

129:                                              ; preds = %128, %128
  %130 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %131 = add nuw nsw i8 %125, 1
  store i8 %131, ptr %130, align 1, !tbaa !145
  %132 = and i32 %39, 16777216
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = or i8 %118, 4
  store i8 %135, ptr %99, align 1, !tbaa !139
  br label %136

136:                                              ; preds = %128, %129, %134, %124
  %137 = phi i8 [ %125, %128 ], [ %131, %129 ], [ %131, %134 ], [ %125, %124 ]
  %138 = and i32 %39, 1048576
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  %142 = load i8, ptr %141, align 8, !tbaa !146
  %143 = icmp ult i8 %98, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i8 %142, ptr %43, align 4, !tbaa !142
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i8 [ %142, %144 ], [ %98, %140 ]
  %147 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  %148 = load i8, ptr %147, align 1, !tbaa !147
  %149 = icmp ult i8 %137, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  store i8 %148, ptr %151, align 1, !tbaa !145
  br label %152

152:                                              ; preds = %145, %150, %136
  %153 = phi i8 [ %146, %145 ], [ %146, %150 ], [ %98, %136 ]
  %154 = phi i8 [ %137, %145 ], [ %148, %150 ], [ %137, %136 ]
  %155 = mul i8 %153, %154
  %156 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 13
  store i8 %155, ptr %156, align 2, !tbaa !148
  %157 = icmp ugt i8 %155, 7
  %158 = load i32, ptr %1, align 8, !tbaa !149
  %159 = zext i32 %158 to i64
  br i1 %157, label %160, label %164

160:                                              ; preds = %152
  %161 = lshr i8 %155, 3
  %162 = zext nneg i8 %161 to i64
  %163 = mul nuw nsw i64 %159, %162
  br label %169

164:                                              ; preds = %152
  %165 = zext nneg i8 %155 to i64
  %166 = mul nuw nsw i64 %159, %165
  %167 = add nuw nsw i64 %166, 7
  %168 = lshr i64 %167, 3
  br label %169

169:                                              ; preds = %164, %160
  %170 = phi i64 [ %163, %160 ], [ %168, %164 ]
  %171 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 3
  store i64 %170, ptr %171, align 8, !tbaa !150
  %172 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 44
  store i64 %170, ptr %172, align 8, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_do_read_transformations(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #14
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 16448
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #14
  unreachable

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !153
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %4, i64 1
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %29 = load i16, ptr %28, align 8, !tbaa !101
  %30 = zext i16 %29 to i32
  tail call void @png_do_expand_palette(ptr noundef nonnull %1, ptr noundef nonnull %23, ptr noundef %25, ptr noundef %27, i32 noundef %30) #13
  br label %42

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %33 = load i16, ptr %32, align 8, !tbaa !101
  %34 = icmp eq i16 %33, 0
  %35 = and i32 %15, 33554432
  %36 = icmp eq i32 %35, 0
  %37 = or i1 %36, %34
  %38 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %37, label %41, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86
  tail call void @png_do_expand(ptr noundef nonnull %1, ptr noundef nonnull %38, ptr noundef nonnull %40) #13
  br label %42

41:                                               ; preds = %31
  tail call void @png_do_expand(ptr noundef nonnull %1, ptr noundef nonnull %38, ptr noundef null) #13
  br label %42

42:                                               ; preds = %22, %41, %39, %13
  %43 = load i32, ptr %14, align 4, !tbaa !46
  %44 = and i32 %43, 262272
  %45 = icmp eq i32 %44, 262144
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !153
  switch i8 %48, label %53 [
    i8 6, label %49
    i8 4, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = load ptr, ptr %3, align 8, !tbaa !152
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  tail call void @png_do_strip_channel(ptr noundef nonnull %1, ptr noundef nonnull %51, i32 noundef 0) #12
  %52 = load i32, ptr %14, align 4, !tbaa !46
  br label %53

53:                                               ; preds = %46, %49, %42
  %54 = phi i32 [ %43, %46 ], [ %52, %49 ], [ %43, %42 ]
  %55 = and i32 %54, 6291456
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %3, align 8, !tbaa !152
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  %60 = tail call i32 @png_do_rgb_to_gray(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %59) #13, !range !100
  %61 = icmp eq i32 %60, 0
  %62 = load i32, ptr %14, align 4, !tbaa !46
  br i1 %61, label %74, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 121
  store i8 1, ptr %64, align 1, !tbaa !155
  %65 = and i32 %62, 6291456
  %66 = icmp eq i32 %65, 4194304
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #12
  %68 = load i32, ptr %14, align 4, !tbaa !46
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %68, %67 ], [ %62, %63 ]
  %71 = and i32 %70, 6291456
  %72 = icmp eq i32 %71, 2097152
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #14
  unreachable

74:                                               ; preds = %57, %69, %53
  %75 = phi i32 [ %62, %57 ], [ %70, %69 ], [ %54, %53 ]
  %76 = and i32 %75, 16384
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %80 = load i32, ptr %79, align 4, !tbaa !102
  %81 = and i32 %80, 2048
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load ptr, ptr %3, align 8, !tbaa !152
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  tail call void @png_do_gray_to_rgb(ptr noundef %1, ptr noundef nonnull %85) #13
  %86 = load i32, ptr %14, align 4, !tbaa !46
  br label %87

87:                                               ; preds = %83, %78, %74
  %88 = phi i32 [ %86, %83 ], [ %75, %78 ], [ %75, %74 ]
  %89 = and i32 %88, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %3, align 8, !tbaa !152
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  tail call void @png_do_compose(ptr noundef %1, ptr noundef nonnull %93, ptr noundef nonnull %0) #13
  %94 = load i32, ptr %14, align 4, !tbaa !46
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i32 [ %94, %91 ], [ %88, %87 ]
  %97 = and i32 %96, 6299648
  %98 = icmp eq i32 %97, 8192
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = and i32 %96, 128
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %104 = load i8, ptr %103, align 1, !tbaa !95
  br label %114

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %107 = load i16, ptr %106, align 8, !tbaa !101
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %111 = load i8, ptr %110, align 1, !tbaa !95
  %112 = and i8 %111, 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %102, %109
  %115 = phi i8 [ %104, %102 ], [ %111, %109 ]
  %116 = icmp eq i8 %115, 3
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %3, align 8, !tbaa !152
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  tail call void @png_do_gamma(ptr noundef %1, ptr noundef nonnull %119, ptr noundef nonnull %0) #13
  %120 = load i32, ptr %14, align 4, !tbaa !46
  br label %121

121:                                              ; preds = %117, %114, %109, %105, %95
  %122 = phi i32 [ %120, %117 ], [ %96, %114 ], [ %96, %109 ], [ %96, %105 ], [ %96, %95 ]
  %123 = and i32 %122, 262272
  %124 = icmp eq i32 %123, 262272
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %127 = load i8, ptr %126, align 8, !tbaa !153
  switch i8 %127, label %132 [
    i8 6, label %128
    i8 4, label %128
  ]

128:                                              ; preds = %125, %125
  %129 = load ptr, ptr %3, align 8, !tbaa !152
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  tail call void @png_do_strip_channel(ptr noundef nonnull %1, ptr noundef nonnull %130, i32 noundef 0) #12
  %131 = load i32, ptr %14, align 4, !tbaa !46
  br label %132

132:                                              ; preds = %125, %128, %121
  %133 = phi i32 [ %122, %125 ], [ %131, %128 ], [ %122, %121 ]
  %134 = and i32 %133, 8388608
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %138 = load i8, ptr %137, align 8, !tbaa !153
  %139 = and i8 %138, 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %3, align 8, !tbaa !152
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  tail call void @png_do_encode_alpha(ptr noundef nonnull %1, ptr noundef nonnull %143, ptr noundef nonnull %0) #13
  %144 = load i32, ptr %14, align 4, !tbaa !46
  br label %145

145:                                              ; preds = %141, %136, %132
  %146 = phi i32 [ %144, %141 ], [ %133, %136 ], [ %133, %132 ]
  %147 = and i32 %146, 67108864
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %3, align 8, !tbaa !152
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  tail call void @png_do_scale_16_to_8(ptr noundef %1, ptr noundef nonnull %151) #13
  %152 = load i32, ptr %14, align 4, !tbaa !46
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i32 [ %152, %149 ], [ %146, %145 ]
  %155 = and i32 %154, 1024
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %3, align 8, !tbaa !152
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  tail call void @png_do_chop(ptr noundef %1, ptr noundef nonnull %159) #13
  %160 = load i32, ptr %14, align 4, !tbaa !46
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i32 [ %160, %157 ], [ %154, %153 ]
  %163 = and i32 %162, 64
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %3, align 8, !tbaa !152
  %167 = getelementptr inbounds i8, ptr %166, i64 1
  %168 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 104
  %169 = load ptr, ptr %168, align 8, !tbaa !90
  %170 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 105
  %171 = load ptr, ptr %170, align 8, !tbaa !54
  tail call void @png_do_quantize(ptr noundef %1, ptr noundef nonnull %167, ptr noundef %169, ptr noundef %171) #13
  %172 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !156
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %165
  %176 = load i32, ptr %14, align 4, !tbaa !46
  br label %178

177:                                              ; preds = %165
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #14
  unreachable

178:                                              ; preds = %175, %161
  %179 = phi i32 [ %176, %175 ], [ %162, %161 ]
  %180 = and i32 %179, 512
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %3, align 8, !tbaa !152
  %184 = getelementptr inbounds i8, ptr %183, i64 1
  tail call void @png_do_expand_16(ptr noundef %1, ptr noundef nonnull %184) #13
  %185 = load i32, ptr %14, align 4, !tbaa !46
  br label %186

186:                                              ; preds = %182, %178
  %187 = phi i32 [ %185, %182 ], [ %179, %178 ]
  %188 = and i32 %187, 16384
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %192 = load i32, ptr %191, align 4, !tbaa !102
  %193 = and i32 %192, 2048
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %190
  %196 = load ptr, ptr %3, align 8, !tbaa !152
  %197 = getelementptr inbounds i8, ptr %196, i64 1
  tail call void @png_do_gray_to_rgb(ptr noundef %1, ptr noundef nonnull %197) #13
  %198 = load i32, ptr %14, align 4, !tbaa !46
  br label %199

199:                                              ; preds = %195, %190, %186
  %200 = phi i32 [ %198, %195 ], [ %187, %190 ], [ %187, %186 ]
  %201 = and i32 %200, 32
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr %3, align 8, !tbaa !152
  %205 = getelementptr inbounds i8, ptr %204, i64 1
  tail call void @png_do_invert(ptr noundef %1, ptr noundef nonnull %205) #12
  %206 = load i32, ptr %14, align 4, !tbaa !46
  br label %207

207:                                              ; preds = %203, %199
  %208 = phi i32 [ %206, %203 ], [ %200, %199 ]
  %209 = and i32 %208, 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr %3, align 8, !tbaa !152
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  %214 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 84
  tail call void @png_do_unshift(ptr noundef %1, ptr noundef nonnull %213, ptr noundef nonnull %214) #13
  %215 = load i32, ptr %14, align 4, !tbaa !46
  br label %216

216:                                              ; preds = %211, %207
  %217 = phi i32 [ %215, %211 ], [ %208, %207 ]
  %218 = and i32 %217, 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %3, align 8, !tbaa !152
  %222 = getelementptr inbounds i8, ptr %221, i64 1
  tail call void @png_do_unpack(ptr noundef %1, ptr noundef nonnull %222) #13
  br label %223

223:                                              ; preds = %220, %216
  %224 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %225 = load i8, ptr %224, align 8, !tbaa !153
  %226 = icmp eq i8 %225, 3
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  tail call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  br label %228

228:                                              ; preds = %227, %223
  %229 = load i32, ptr %14, align 4, !tbaa !46
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load ptr, ptr %3, align 8, !tbaa !152
  %234 = getelementptr inbounds i8, ptr %233, i64 1
  tail call void @png_do_bgr(ptr noundef nonnull %1, ptr noundef nonnull %234) #12
  %235 = load i32, ptr %14, align 4, !tbaa !46
  br label %236

236:                                              ; preds = %232, %228
  %237 = phi i32 [ %235, %232 ], [ %229, %228 ]
  %238 = and i32 %237, 65536
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load ptr, ptr %3, align 8, !tbaa !152
  %242 = getelementptr inbounds i8, ptr %241, i64 1
  tail call void @png_do_packswap(ptr noundef nonnull %1, ptr noundef nonnull %242) #12
  %243 = load i32, ptr %14, align 4, !tbaa !46
  br label %244

244:                                              ; preds = %240, %236
  %245 = phi i32 [ %243, %240 ], [ %237, %236 ]
  %246 = and i32 %245, 32768
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %3, align 8, !tbaa !152
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  %251 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 66
  %252 = load i16, ptr %251, align 2, !tbaa !157
  %253 = zext i16 %252 to i32
  %254 = load i32, ptr %8, align 8, !tbaa !34
  tail call void @png_do_read_filler(ptr noundef nonnull %1, ptr noundef nonnull %250, i32 noundef %253, i32 noundef %254) #13
  %255 = load i32, ptr %14, align 4, !tbaa !46
  br label %256

256:                                              ; preds = %248, %244
  %257 = phi i32 [ %255, %248 ], [ %245, %244 ]
  %258 = and i32 %257, 524288
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %3, align 8, !tbaa !152
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  tail call void @png_do_read_invert_alpha(ptr noundef nonnull %1, ptr noundef nonnull %262) #13
  %263 = load i32, ptr %14, align 4, !tbaa !46
  br label %264

264:                                              ; preds = %260, %256
  %265 = phi i32 [ %263, %260 ], [ %257, %256 ]
  %266 = and i32 %265, 131072
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr %3, align 8, !tbaa !152
  %270 = getelementptr inbounds i8, ptr %269, i64 1
  tail call void @png_do_read_swap_alpha(ptr noundef nonnull %1, ptr noundef nonnull %270) #13
  %271 = load i32, ptr %14, align 4, !tbaa !46
  br label %272

272:                                              ; preds = %268, %264
  %273 = phi i32 [ %271, %268 ], [ %265, %264 ]
  %274 = and i32 %273, 16
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = load ptr, ptr %3, align 8, !tbaa !152
  %278 = getelementptr inbounds i8, ptr %277, i64 1
  tail call void @png_do_swap(ptr noundef nonnull %1, ptr noundef nonnull %278) #12
  %279 = load i32, ptr %14, align 4, !tbaa !46
  br label %280

280:                                              ; preds = %276, %272
  %281 = phi i32 [ %279, %276 ], [ %273, %272 ]
  %282 = and i32 %281, 1048576
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %326, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 8
  %286 = load ptr, ptr %285, align 8, !tbaa !99
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %284
  %289 = load ptr, ptr %3, align 8, !tbaa !152
  %290 = getelementptr inbounds i8, ptr %289, i64 1
  tail call void %286(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %290) #12
  br label %291

291:                                              ; preds = %288, %284
  %292 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  %293 = load i8, ptr %292, align 8, !tbaa !146
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  store i8 %293, ptr %296, align 1, !tbaa !158
  br label %297

297:                                              ; preds = %295, %291
  %298 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  %299 = load i8, ptr %298, align 1, !tbaa !147
  %300 = icmp eq i8 %299, 0
  %301 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  br i1 %300, label %302, label %304

302:                                              ; preds = %297
  %303 = load i8, ptr %301, align 2, !tbaa !159
  br label %305

304:                                              ; preds = %297
  store i8 %299, ptr %301, align 2, !tbaa !159
  br label %305

305:                                              ; preds = %302, %304
  %306 = phi i8 [ %303, %302 ], [ %299, %304 ]
  %307 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %308 = load i8, ptr %307, align 1, !tbaa !158
  %309 = mul i8 %306, %308
  %310 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %309, ptr %310, align 1, !tbaa !160
  %311 = icmp ugt i8 %309, 7
  %312 = load i32, ptr %1, align 8, !tbaa !161
  %313 = zext i32 %312 to i64
  br i1 %311, label %314, label %318

314:                                              ; preds = %305
  %315 = lshr i8 %309, 3
  %316 = zext nneg i8 %315 to i64
  %317 = mul nuw nsw i64 %313, %316
  br label %323

318:                                              ; preds = %305
  %319 = zext nneg i8 %309 to i64
  %320 = mul nuw nsw i64 %313, %319
  %321 = add nuw nsw i64 %320, 7
  %322 = lshr i64 %321, 3
  br label %323

323:                                              ; preds = %318, %314
  %324 = phi i64 [ %317, %314 ], [ %322, %318 ]
  %325 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  store i64 %324, ptr %325, align 8, !tbaa !156
  br label %326

326:                                              ; preds = %323, %280
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_expand_palette(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = load i32, ptr %0, align 8, !tbaa !161
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !153
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %10, label %191

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !158
  %13 = icmp ult i8 %12, 8
  br i1 %13, label %14, label %108

14:                                               ; preds = %10
  %15 = zext i32 %6 to i64
  switch i8 %12, label %104 [
    i8 1, label %16
    i8 2, label %46
    i8 4, label %76
  ]

16:                                               ; preds = %14
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %104, label %18

18:                                               ; preds = %16
  %19 = add i32 %6, 7
  %20 = and i32 %19, 7
  %21 = xor i32 %20, 7
  %22 = getelementptr inbounds i8, ptr %1, i64 %15
  %23 = add i32 %6, -1
  %24 = lshr i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  br label %27

27:                                               ; preds = %18, %27
  %28 = phi i32 [ %43, %27 ], [ %21, %18 ]
  %29 = phi i32 [ %44, %27 ], [ 0, %18 ]
  %30 = phi ptr [ %32, %27 ], [ %22, %18 ]
  %31 = phi ptr [ %42, %27 ], [ %26, %18 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 -1
  %33 = load i8, ptr %31, align 1, !tbaa !55
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %28
  %36 = and i32 %35, %34
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %32, align 1, !tbaa !55
  %39 = icmp eq i32 %28, 7
  %40 = add nuw nsw i32 %28, 1
  %41 = sext i1 %39 to i64
  %42 = getelementptr inbounds i8, ptr %31, i64 %41
  %43 = select i1 %39, i32 0, i32 %40
  %44 = add nuw i32 %29, 1
  %45 = icmp eq i32 %44, %6
  br i1 %45, label %104, label %27, !llvm.loop !162

46:                                               ; preds = %14
  %47 = icmp eq i32 %6, 0
  br i1 %47, label %104, label %48

48:                                               ; preds = %46
  %49 = shl i32 %6, 1
  %50 = add i32 %49, 6
  %51 = and i32 %50, 6
  %52 = xor i32 %51, 6
  %53 = getelementptr inbounds i8, ptr %1, i64 %15
  %54 = add i32 %6, -1
  %55 = lshr i32 %54, 2
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %1, i64 %56
  br label %58

58:                                               ; preds = %48, %58
  %59 = phi i32 [ %73, %58 ], [ %52, %48 ]
  %60 = phi i32 [ %74, %58 ], [ 0, %48 ]
  %61 = phi ptr [ %63, %58 ], [ %53, %48 ]
  %62 = phi ptr [ %72, %58 ], [ %57, %48 ]
  %63 = getelementptr inbounds i8, ptr %61, i64 -1
  %64 = load i8, ptr %62, align 1, !tbaa !55
  %65 = zext i8 %64 to i32
  %66 = lshr i32 %65, %59
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 3
  store i8 %68, ptr %63, align 1, !tbaa !55
  %69 = icmp eq i32 %59, 6
  %70 = add nsw i32 %59, 2
  %71 = sext i1 %69 to i64
  %72 = getelementptr inbounds i8, ptr %62, i64 %71
  %73 = select i1 %69, i32 0, i32 %70
  %74 = add nuw i32 %60, 1
  %75 = icmp eq i32 %74, %6
  br i1 %75, label %104, label %58, !llvm.loop !163

76:                                               ; preds = %14
  %77 = icmp eq i32 %6, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %76
  %79 = shl i32 %6, 2
  %80 = and i32 %79, 4
  %81 = getelementptr inbounds i8, ptr %1, i64 %15
  %82 = add i32 %6, -1
  %83 = lshr i32 %82, 1
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  br label %86

86:                                               ; preds = %78, %86
  %87 = phi i32 [ %101, %86 ], [ %80, %78 ]
  %88 = phi i32 [ %102, %86 ], [ 0, %78 ]
  %89 = phi ptr [ %91, %86 ], [ %81, %78 ]
  %90 = phi ptr [ %100, %86 ], [ %85, %78 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 -1
  %92 = load i8, ptr %90, align 1, !tbaa !55
  %93 = zext i8 %92 to i32
  %94 = lshr i32 %93, %87
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 15
  store i8 %96, ptr %91, align 1, !tbaa !55
  %97 = icmp eq i32 %87, 4
  %98 = add nsw i32 %87, 4
  %99 = sext i1 %97 to i64
  %100 = getelementptr inbounds i8, ptr %90, i64 %99
  %101 = select i1 %97, i32 0, i32 %98
  %102 = add nuw i32 %88, 1
  %103 = icmp eq i32 %102, %6
  br i1 %103, label %104, label %86, !llvm.loop !164

104:                                              ; preds = %86, %58, %27, %14, %16, %46, %76
  %105 = phi i64 [ 0, %76 ], [ 0, %46 ], [ 0, %16 ], [ %15, %14 ], [ %15, %27 ], [ %15, %58 ], [ %15, %86 ]
  store i8 8, ptr %11, align 1, !tbaa !158
  %106 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 8, ptr %106, align 1, !tbaa !160
  %107 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %105, ptr %107, align 8, !tbaa !156
  br label %110

108:                                              ; preds = %10
  %109 = icmp eq i8 %12, 8
  br i1 %109, label %110, label %191

110:                                              ; preds = %104, %108
  %111 = icmp sgt i32 %4, 0
  %112 = icmp eq i32 %6, 0
  br i1 %111, label %113, label %153

113:                                              ; preds = %110
  %114 = shl i32 %6, 2
  %115 = zext i32 %114 to i64
  br i1 %112, label %183, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, ptr %1, i64 %115
  %118 = getelementptr inbounds i8, ptr %117, i64 -1
  %119 = zext i32 %6 to i64
  %120 = getelementptr inbounds i8, ptr %1, i64 %119
  br label %121

121:                                              ; preds = %116, %133
  %122 = phi ptr [ %125, %133 ], [ %120, %116 ]
  %123 = phi i32 [ %151, %133 ], [ 0, %116 ]
  %124 = phi ptr [ %150, %133 ], [ %118, %116 ]
  %125 = getelementptr inbounds i8, ptr %122, i64 -1
  %126 = load i8, ptr %125, align 1, !tbaa !55
  %127 = zext i8 %126 to i32
  %128 = icmp slt i32 %127, %4
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = zext i8 %126 to i64
  %131 = getelementptr inbounds i8, ptr %3, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !55
  br label %133

133:                                              ; preds = %121, %129
  %134 = phi i8 [ %132, %129 ], [ -1, %121 ]
  %135 = getelementptr inbounds i8, ptr %124, i64 -1
  store i8 %134, ptr %124, align 1, !tbaa !55
  %136 = load i8, ptr %125, align 1, !tbaa !55
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %137, i32 2
  %139 = load i8, ptr %138, align 1, !tbaa !70
  %140 = getelementptr inbounds i8, ptr %124, i64 -2
  store i8 %139, ptr %135, align 1, !tbaa !55
  %141 = load i8, ptr %125, align 1, !tbaa !55
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %142, i32 1
  %144 = load i8, ptr %143, align 1, !tbaa !69
  %145 = getelementptr inbounds i8, ptr %124, i64 -3
  store i8 %144, ptr %140, align 1, !tbaa !55
  %146 = load i8, ptr %125, align 1, !tbaa !55
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !67
  %150 = getelementptr inbounds i8, ptr %124, i64 -4
  store i8 %149, ptr %145, align 1, !tbaa !55
  %151 = add nuw i32 %123, 1
  %152 = icmp eq i32 %151, %6
  br i1 %152, label %183, label %121, !llvm.loop !165

153:                                              ; preds = %110
  %154 = mul i32 %6, 3
  %155 = zext i32 %154 to i64
  br i1 %112, label %183, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds i8, ptr %1, i64 %155
  %158 = getelementptr inbounds i8, ptr %157, i64 -1
  %159 = zext i32 %6 to i64
  %160 = getelementptr inbounds i8, ptr %1, i64 %159
  br label %161

161:                                              ; preds = %156, %161
  %162 = phi i32 [ %181, %161 ], [ 0, %156 ]
  %163 = phi ptr [ %180, %161 ], [ %158, %156 ]
  %164 = phi ptr [ %165, %161 ], [ %160, %156 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 -1
  %166 = load i8, ptr %165, align 1, !tbaa !55
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %167, i32 2
  %169 = load i8, ptr %168, align 1, !tbaa !70
  %170 = getelementptr inbounds i8, ptr %163, i64 -1
  store i8 %169, ptr %163, align 1, !tbaa !55
  %171 = load i8, ptr %165, align 1, !tbaa !55
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %172, i32 1
  %174 = load i8, ptr %173, align 1, !tbaa !69
  %175 = getelementptr inbounds i8, ptr %163, i64 -2
  store i8 %174, ptr %170, align 1, !tbaa !55
  %176 = load i8, ptr %165, align 1, !tbaa !55
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds %struct.png_color_struct, ptr %2, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !67
  %180 = getelementptr inbounds i8, ptr %163, i64 -3
  store i8 %179, ptr %175, align 1, !tbaa !55
  %181 = add nuw i32 %162, 1
  %182 = icmp eq i32 %181, %6
  br i1 %182, label %183, label %161, !llvm.loop !166

183:                                              ; preds = %161, %133, %153, %113
  %184 = phi i8 [ 32, %113 ], [ 24, %153 ], [ 32, %133 ], [ 24, %161 ]
  %185 = phi i64 [ %115, %113 ], [ %155, %153 ], [ %115, %133 ], [ %155, %161 ]
  %186 = phi i8 [ 6, %113 ], [ 2, %153 ], [ 6, %133 ], [ 2, %161 ]
  %187 = phi i8 [ 4, %113 ], [ 3, %153 ], [ 4, %133 ], [ 3, %161 ]
  store i8 8, ptr %11, align 1, !tbaa !158
  %188 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %184, ptr %188, align 1, !tbaa !160
  %189 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %185, ptr %189, align 8, !tbaa !156
  store i8 %186, ptr %7, align 8, !tbaa !153
  %190 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 %187, ptr %190, align 2, !tbaa !159
  br label %191

191:                                              ; preds = %183, %108, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_expand(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #8 {
  %4 = load i32, ptr %0, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !153
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %204

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !167
  br label %13

13:                                               ; preds = %8, %10
  %14 = phi i16 [ %12, %10 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !158
  %17 = icmp ult i8 %16, 8
  br i1 %17, label %18, label %126

18:                                               ; preds = %13
  switch i8 %16, label %19 [
    i8 1, label %21
    i8 2, label %55
    i8 4, label %89
  ]

19:                                               ; preds = %18
  %20 = zext i32 %4 to i64
  br label %121

21:                                               ; preds = %18
  %22 = and i16 %14, 1
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %23, i16 0, i16 255
  %25 = zext i32 %4 to i64
  %26 = icmp eq i32 %4, 0
  br i1 %26, label %121, label %27

27:                                               ; preds = %21
  %28 = add i32 %4, 7
  %29 = and i32 %28, 7
  %30 = xor i32 %29, 7
  %31 = getelementptr inbounds i8, ptr %1, i64 %25
  %32 = add i32 %4, -1
  %33 = lshr i32 %32, 3
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %1, i64 %34
  br label %36

36:                                               ; preds = %27, %36
  %37 = phi i32 [ %52, %36 ], [ %30, %27 ]
  %38 = phi ptr [ %51, %36 ], [ %35, %27 ]
  %39 = phi ptr [ %41, %36 ], [ %31, %27 ]
  %40 = phi i32 [ %53, %36 ], [ 0, %27 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 -1
  %42 = load i8, ptr %38, align 1, !tbaa !55
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 1, %37
  %45 = and i32 %44, %43
  %46 = icmp ne i32 %45, 0
  %47 = sext i1 %46 to i8
  store i8 %47, ptr %41, align 1, !tbaa !55
  %48 = icmp eq i32 %37, 7
  %49 = add nuw nsw i32 %37, 1
  %50 = sext i1 %48 to i64
  %51 = getelementptr inbounds i8, ptr %38, i64 %50
  %52 = select i1 %48, i32 0, i32 %49
  %53 = add nuw i32 %40, 1
  %54 = icmp eq i32 %53, %4
  br i1 %54, label %121, label %36, !llvm.loop !168

55:                                               ; preds = %18
  %56 = and i16 %14, 3
  %57 = mul nuw nsw i16 %56, 85
  %58 = zext i32 %4 to i64
  %59 = icmp eq i32 %4, 0
  br i1 %59, label %121, label %60

60:                                               ; preds = %55
  %61 = shl i32 %4, 1
  %62 = add i32 %61, 6
  %63 = and i32 %62, 6
  %64 = xor i32 %63, 6
  %65 = getelementptr inbounds i8, ptr %1, i64 %58
  %66 = add i32 %4, -1
  %67 = lshr i32 %66, 2
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %1, i64 %68
  br label %70

70:                                               ; preds = %60, %70
  %71 = phi i32 [ %86, %70 ], [ %64, %60 ]
  %72 = phi ptr [ %85, %70 ], [ %69, %60 ]
  %73 = phi ptr [ %75, %70 ], [ %65, %60 ]
  %74 = phi i32 [ %87, %70 ], [ 0, %60 ]
  %75 = getelementptr inbounds i8, ptr %73, i64 -1
  %76 = load i8, ptr %72, align 1, !tbaa !55
  %77 = zext i8 %76 to i32
  %78 = lshr i32 %77, %71
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 3
  %81 = mul nuw i8 %80, 85
  store i8 %81, ptr %75, align 1, !tbaa !55
  %82 = icmp eq i32 %71, 6
  %83 = add nsw i32 %71, 2
  %84 = sext i1 %82 to i64
  %85 = getelementptr inbounds i8, ptr %72, i64 %84
  %86 = select i1 %82, i32 0, i32 %83
  %87 = add nuw i32 %74, 1
  %88 = icmp eq i32 %87, %4
  br i1 %88, label %121, label %70, !llvm.loop !169

89:                                               ; preds = %18
  %90 = and i16 %14, 15
  %91 = mul nuw nsw i16 %90, 17
  %92 = zext i32 %4 to i64
  %93 = icmp eq i32 %4, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %89
  %95 = shl i32 %4, 2
  %96 = and i32 %95, 4
  %97 = getelementptr inbounds i8, ptr %1, i64 %92
  %98 = add i32 %4, -1
  %99 = lshr i32 %98, 1
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %1, i64 %100
  br label %102

102:                                              ; preds = %94, %102
  %103 = phi i32 [ %118, %102 ], [ %96, %94 ]
  %104 = phi ptr [ %117, %102 ], [ %101, %94 ]
  %105 = phi ptr [ %107, %102 ], [ %97, %94 ]
  %106 = phi i32 [ %119, %102 ], [ 0, %94 ]
  %107 = getelementptr inbounds i8, ptr %105, i64 -1
  %108 = load i8, ptr %104, align 1, !tbaa !55
  %109 = zext i8 %108 to i32
  %110 = lshr i32 %109, %103
  %111 = and i32 %110, 15
  %112 = shl nuw nsw i32 %110, 4
  %113 = or disjoint i32 %111, %112
  %114 = trunc i32 %113 to i8
  store i8 %114, ptr %107, align 1, !tbaa !55
  %115 = icmp ne i32 %103, 0
  %116 = sext i1 %115 to i64
  %117 = getelementptr inbounds i8, ptr %104, i64 %116
  %118 = select i1 %115, i32 0, i32 4
  %119 = add nuw i32 %106, 1
  %120 = icmp eq i32 %119, %4
  br i1 %120, label %121, label %102, !llvm.loop !170

121:                                              ; preds = %102, %70, %36, %19, %89, %55, %21
  %122 = phi i64 [ %20, %19 ], [ 0, %89 ], [ 0, %55 ], [ 0, %21 ], [ %25, %36 ], [ %58, %70 ], [ %92, %102 ]
  %123 = phi i16 [ %14, %19 ], [ %91, %89 ], [ %57, %55 ], [ %24, %21 ], [ %24, %36 ], [ %57, %70 ], [ %91, %102 ]
  store i8 8, ptr %15, align 1, !tbaa !158
  %124 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 8, ptr %124, align 1, !tbaa !160
  %125 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %122, ptr %125, align 8, !tbaa !156
  br label %126

126:                                              ; preds = %121, %13
  %127 = phi i8 [ 8, %121 ], [ %16, %13 ]
  %128 = phi i16 [ %123, %121 ], [ %14, %13 ]
  br i1 %9, label %354, label %129

129:                                              ; preds = %126
  switch i8 %127, label %188 [
    i8 8, label %130
    i8 16, label %153
  ]

130:                                              ; preds = %129
  %131 = icmp eq i32 %4, 0
  br i1 %131, label %188, label %132

132:                                              ; preds = %130
  %133 = shl i32 %4, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %1, i64 %134
  %136 = getelementptr inbounds i8, ptr %135, i64 -1
  %137 = zext i32 %4 to i64
  %138 = getelementptr inbounds i8, ptr %1, i64 %137
  %139 = trunc i16 %128 to i8
  br label %140

140:                                              ; preds = %132, %140
  %141 = phi ptr [ %138, %132 ], [ %144, %140 ]
  %142 = phi ptr [ %136, %132 ], [ %150, %140 ]
  %143 = phi i32 [ 0, %132 ], [ %151, %140 ]
  %144 = getelementptr inbounds i8, ptr %141, i64 -1
  %145 = load i8, ptr %144, align 1, !tbaa !55
  %146 = icmp ne i8 %145, %139
  %147 = sext i1 %146 to i8
  %148 = getelementptr inbounds i8, ptr %142, i64 -1
  store i8 %147, ptr %142, align 1, !tbaa !55
  %149 = load i8, ptr %144, align 1, !tbaa !55
  %150 = getelementptr inbounds i8, ptr %142, i64 -2
  store i8 %149, ptr %148, align 1, !tbaa !55
  %151 = add nuw i32 %143, 1
  %152 = icmp eq i32 %151, %4
  br i1 %152, label %188, label %140, !llvm.loop !171

153:                                              ; preds = %129
  %154 = lshr i16 %128, 8
  %155 = icmp eq i32 %4, 0
  br i1 %155, label %188, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !156
  %159 = shl i64 %158, 1
  %160 = getelementptr inbounds i8, ptr %1, i64 %159
  %161 = getelementptr inbounds i8, ptr %160, i64 -1
  %162 = getelementptr inbounds i8, ptr %1, i64 %158
  %163 = getelementptr inbounds i8, ptr %162, i64 -1
  %164 = trunc i16 %128 to i8
  br label %165

165:                                              ; preds = %156, %177
  %166 = phi ptr [ %163, %156 ], [ %183, %177 ]
  %167 = phi ptr [ %161, %156 ], [ %185, %177 ]
  %168 = phi i32 [ 0, %156 ], [ %186, %177 ]
  %169 = getelementptr inbounds i8, ptr %166, i64 -1
  %170 = load i8, ptr %169, align 1, !tbaa !55
  %171 = zext i8 %170 to i16
  %172 = icmp eq i16 %154, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i8, ptr %166, align 1, !tbaa !55
  %175 = icmp eq i8 %174, %164
  br i1 %175, label %177, label %176

176:                                              ; preds = %173, %165
  br label %177

177:                                              ; preds = %173, %176
  %178 = phi i8 [ -1, %176 ], [ 0, %173 ]
  %179 = getelementptr inbounds i8, ptr %167, i64 -1
  store i8 %178, ptr %167, align 1, !tbaa !55
  store i8 %178, ptr %179, align 1, !tbaa !55
  %180 = getelementptr inbounds i8, ptr %167, i64 -2
  %181 = load i8, ptr %166, align 1, !tbaa !55
  %182 = getelementptr inbounds i8, ptr %167, i64 -3
  store i8 %181, ptr %180, align 1, !tbaa !55
  %183 = getelementptr inbounds i8, ptr %166, i64 -2
  %184 = load i8, ptr %169, align 1, !tbaa !55
  %185 = getelementptr inbounds i8, ptr %167, i64 -4
  store i8 %184, ptr %182, align 1, !tbaa !55
  %186 = add nuw i32 %168, 1
  %187 = icmp eq i32 %186, %4
  br i1 %187, label %188, label %165, !llvm.loop !172

188:                                              ; preds = %177, %140, %153, %130, %129
  store i8 4, ptr %5, align 8, !tbaa !153
  %189 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 2, ptr %189, align 2, !tbaa !159
  %190 = load i8, ptr %15, align 1, !tbaa !158
  %191 = shl i8 %190, 1
  %192 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %191, ptr %192, align 1, !tbaa !160
  %193 = icmp ugt i8 %191, 7
  %194 = zext i32 %4 to i64
  br i1 %193, label %195, label %199

195:                                              ; preds = %188
  %196 = lshr i8 %191, 3
  %197 = zext nneg i8 %196 to i64
  %198 = mul nuw nsw i64 %197, %194
  br label %351

199:                                              ; preds = %188
  %200 = zext nneg i8 %191 to i64
  %201 = mul nuw nsw i64 %200, %194
  %202 = add nuw nsw i64 %201, 7
  %203 = lshr i64 %202, 3
  br label %351

204:                                              ; preds = %3
  %205 = icmp eq i8 %6, 2
  %206 = icmp ne ptr %2, null
  %207 = and i1 %206, %205
  br i1 %207, label %208, label %354

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %210 = load i8, ptr %209, align 1, !tbaa !158
  switch i8 %210, label %335 [
    i8 8, label %211
    i8 16, label %259
  ]

211:                                              ; preds = %208
  %212 = icmp eq i32 %4, 0
  br i1 %212, label %335, label %213

213:                                              ; preds = %211
  %214 = shl i32 %4, 2
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, ptr %1, i64 %215
  %217 = getelementptr inbounds i8, ptr %216, i64 -1
  %218 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %219 = load i64, ptr %218, align 8, !tbaa !156
  %220 = getelementptr inbounds i8, ptr %1, i64 %219
  %221 = getelementptr inbounds i8, ptr %220, i64 -1
  %222 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 3
  %223 = load i16, ptr %222, align 2, !tbaa !173
  %224 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 2
  %225 = load i16, ptr %224, align 2, !tbaa !174
  %226 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !175
  %228 = trunc i16 %227 to i8
  %229 = trunc i16 %225 to i8
  %230 = trunc i16 %223 to i8
  br label %231

231:                                              ; preds = %213, %246
  %232 = phi ptr [ %221, %213 ], [ %254, %246 ]
  %233 = phi ptr [ %217, %213 ], [ %256, %246 ]
  %234 = phi i32 [ 0, %213 ], [ %257, %246 ]
  %235 = getelementptr inbounds i8, ptr %232, i64 -2
  %236 = load i8, ptr %235, align 1, !tbaa !55
  %237 = icmp eq i8 %236, %228
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = getelementptr inbounds i8, ptr %232, i64 -1
  %240 = load i8, ptr %239, align 1, !tbaa !55
  %241 = icmp eq i8 %240, %229
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i8, ptr %232, align 1, !tbaa !55
  %244 = icmp eq i8 %243, %230
  br i1 %244, label %246, label %245

245:                                              ; preds = %242, %238, %231
  br label %246

246:                                              ; preds = %242, %245
  %247 = phi i8 [ -1, %245 ], [ 0, %242 ]
  %248 = getelementptr inbounds i8, ptr %233, i64 -1
  store i8 %247, ptr %233, align 1, !tbaa !55
  %249 = getelementptr inbounds i8, ptr %232, i64 -1
  %250 = load i8, ptr %232, align 1, !tbaa !55
  %251 = getelementptr inbounds i8, ptr %233, i64 -2
  store i8 %250, ptr %248, align 1, !tbaa !55
  %252 = load i8, ptr %249, align 1, !tbaa !55
  %253 = getelementptr inbounds i8, ptr %233, i64 -3
  store i8 %252, ptr %251, align 1, !tbaa !55
  %254 = getelementptr inbounds i8, ptr %232, i64 -3
  %255 = load i8, ptr %235, align 1, !tbaa !55
  %256 = getelementptr inbounds i8, ptr %233, i64 -4
  store i8 %255, ptr %253, align 1, !tbaa !55
  %257 = add nuw i32 %234, 1
  %258 = icmp eq i32 %257, %4
  br i1 %258, label %335, label %231, !llvm.loop !176

259:                                              ; preds = %208
  %260 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 1
  %261 = load i16, ptr %260, align 2, !tbaa !175
  %262 = lshr i16 %261, 8
  %263 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 2
  %264 = load i16, ptr %263, align 2, !tbaa !174
  %265 = lshr i16 %264, 8
  %266 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 3
  %267 = load i16, ptr %266, align 2, !tbaa !173
  %268 = lshr i16 %267, 8
  %269 = icmp eq i32 %4, 0
  br i1 %269, label %335, label %270

270:                                              ; preds = %259
  %271 = shl i32 %4, 3
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %1, i64 %272
  %274 = getelementptr inbounds i8, ptr %273, i64 -1
  %275 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %276 = load i64, ptr %275, align 8, !tbaa !156
  %277 = getelementptr inbounds i8, ptr %1, i64 %276
  %278 = getelementptr inbounds i8, ptr %277, i64 -1
  %279 = trunc i16 %261 to i8
  %280 = trunc i16 %264 to i8
  %281 = trunc i16 %267 to i8
  br label %282

282:                                              ; preds = %270, %312
  %283 = phi ptr [ %278, %270 ], [ %330, %312 ]
  %284 = phi ptr [ %274, %270 ], [ %332, %312 ]
  %285 = phi i32 [ 0, %270 ], [ %333, %312 ]
  %286 = getelementptr inbounds i8, ptr %283, i64 -5
  %287 = load i8, ptr %286, align 1, !tbaa !55
  %288 = zext i8 %287 to i16
  %289 = icmp eq i16 %262, %288
  br i1 %289, label %290, label %311

290:                                              ; preds = %282
  %291 = getelementptr inbounds i8, ptr %283, i64 -4
  %292 = load i8, ptr %291, align 1, !tbaa !55
  %293 = icmp eq i8 %292, %279
  br i1 %293, label %294, label %311

294:                                              ; preds = %290
  %295 = getelementptr inbounds i8, ptr %283, i64 -3
  %296 = load i8, ptr %295, align 1, !tbaa !55
  %297 = zext i8 %296 to i16
  %298 = icmp eq i16 %265, %297
  br i1 %298, label %299, label %311

299:                                              ; preds = %294
  %300 = getelementptr inbounds i8, ptr %283, i64 -2
  %301 = load i8, ptr %300, align 1, !tbaa !55
  %302 = icmp eq i8 %301, %280
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = getelementptr inbounds i8, ptr %283, i64 -1
  %305 = load i8, ptr %304, align 1, !tbaa !55
  %306 = zext i8 %305 to i16
  %307 = icmp eq i16 %268, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load i8, ptr %283, align 1, !tbaa !55
  %310 = icmp eq i8 %309, %281
  br i1 %310, label %312, label %311

311:                                              ; preds = %308, %303, %299, %294, %290, %282
  br label %312

312:                                              ; preds = %308, %311
  %313 = phi i8 [ -1, %311 ], [ 0, %308 ]
  %314 = getelementptr inbounds i8, ptr %284, i64 -1
  store i8 %313, ptr %284, align 1, !tbaa !55
  store i8 %313, ptr %314, align 1, !tbaa !55
  %315 = getelementptr inbounds i8, ptr %284, i64 -2
  %316 = getelementptr inbounds i8, ptr %283, i64 -1
  %317 = load i8, ptr %283, align 1, !tbaa !55
  %318 = getelementptr inbounds i8, ptr %284, i64 -3
  store i8 %317, ptr %315, align 1, !tbaa !55
  %319 = getelementptr inbounds i8, ptr %283, i64 -2
  %320 = load i8, ptr %316, align 1, !tbaa !55
  %321 = getelementptr inbounds i8, ptr %284, i64 -4
  store i8 %320, ptr %318, align 1, !tbaa !55
  %322 = getelementptr inbounds i8, ptr %283, i64 -3
  %323 = load i8, ptr %319, align 1, !tbaa !55
  %324 = getelementptr inbounds i8, ptr %284, i64 -5
  store i8 %323, ptr %321, align 1, !tbaa !55
  %325 = getelementptr inbounds i8, ptr %283, i64 -4
  %326 = load i8, ptr %322, align 1, !tbaa !55
  %327 = getelementptr inbounds i8, ptr %284, i64 -6
  store i8 %326, ptr %324, align 1, !tbaa !55
  %328 = load i8, ptr %325, align 1, !tbaa !55
  %329 = getelementptr inbounds i8, ptr %284, i64 -7
  store i8 %328, ptr %327, align 1, !tbaa !55
  %330 = getelementptr inbounds i8, ptr %283, i64 -6
  %331 = load i8, ptr %286, align 1, !tbaa !55
  %332 = getelementptr inbounds i8, ptr %284, i64 -8
  store i8 %331, ptr %329, align 1, !tbaa !55
  %333 = add nuw i32 %285, 1
  %334 = icmp eq i32 %333, %4
  br i1 %334, label %335, label %282, !llvm.loop !177

335:                                              ; preds = %312, %246, %259, %211, %208
  store i8 6, ptr %5, align 8, !tbaa !153
  %336 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 4, ptr %336, align 2, !tbaa !159
  %337 = load i8, ptr %209, align 1, !tbaa !158
  %338 = shl i8 %337, 2
  %339 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %338, ptr %339, align 1, !tbaa !160
  %340 = icmp ugt i8 %338, 7
  %341 = zext i32 %4 to i64
  br i1 %340, label %342, label %346

342:                                              ; preds = %335
  %343 = lshr i8 %338, 3
  %344 = zext nneg i8 %343 to i64
  %345 = mul nuw nsw i64 %344, %341
  br label %351

346:                                              ; preds = %335
  %347 = zext nneg i8 %338 to i64
  %348 = mul nuw nsw i64 %347, %341
  %349 = add nuw nsw i64 %348, 7
  %350 = lshr i64 %349, 3
  br label %351

351:                                              ; preds = %342, %346, %195, %199
  %352 = phi i64 [ %198, %195 ], [ %203, %199 ], [ %345, %342 ], [ %350, %346 ]
  %353 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %352, ptr %353, align 8, !tbaa !156
  br label %354

354:                                              ; preds = %351, %126, %204
  ret void
}

; Function Attrs: optsize
declare void @png_do_strip_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @png_do_rgb_to_gray(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !153
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %350

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  %11 = load i16, ptr %10, align 4, !tbaa !96
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  %14 = load i16, ptr %13, align 2, !tbaa !97
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = sub nsw i32 32768, %16
  %18 = load i32, ptr %1, align 8, !tbaa !161
  %19 = and i32 %6, 4
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !158
  %23 = icmp eq i8 %22, 8
  br i1 %23, label %24, label %137

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = icmp eq ptr %26, null
  br i1 %27, label %97, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %18, 0
  br i1 %33, label %326, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  br label %36

36:                                               ; preds = %34, %92
  %37 = phi i32 [ 0, %34 ], [ %86, %92 ]
  %38 = phi ptr [ %2, %34 ], [ %94, %92 ]
  %39 = phi ptr [ %2, %34 ], [ %93, %92 ]
  %40 = phi i32 [ 0, %34 ], [ %95, %92 ]
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %38, align 1, !tbaa !55
  %43 = getelementptr inbounds i8, ptr %38, i64 2
  %44 = load i8, ptr %41, align 1, !tbaa !55
  %45 = getelementptr inbounds i8, ptr %38, i64 3
  %46 = load i8, ptr %43, align 1, !tbaa !55
  %47 = icmp eq i8 %42, %44
  %48 = icmp eq i8 %42, %46
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %74, label %50

50:                                               ; preds = %36
  %51 = load ptr, ptr %29, align 8, !tbaa !110
  %52 = zext i8 %42 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !55
  %55 = zext i8 %44 to i64
  %56 = getelementptr inbounds i8, ptr %51, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !55
  %58 = zext i8 %46 to i64
  %59 = getelementptr inbounds i8, ptr %51, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !55
  %61 = load ptr, ptr %25, align 8, !tbaa !114
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
  %75 = load ptr, ptr %35, align 8, !tbaa !109
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = zext i8 %42 to i64
  %79 = getelementptr inbounds i8, ptr %75, i64 %78
  br label %80

80:                                               ; preds = %50, %77
  %81 = phi ptr [ %79, %77 ], [ %73, %50 ]
  %82 = phi i32 [ %37, %77 ], [ 1, %50 ]
  %83 = load i8, ptr %81, align 1, !tbaa !55
  br label %84

84:                                               ; preds = %80, %74
  %85 = phi i8 [ %42, %74 ], [ %83, %80 ]
  %86 = phi i32 [ %37, %74 ], [ %82, %80 ]
  %87 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %85, ptr %39, align 1, !tbaa !55
  br i1 %20, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %38, i64 4
  %90 = load i8, ptr %45, align 1, !tbaa !55
  %91 = getelementptr inbounds i8, ptr %39, i64 2
  store i8 %90, ptr %87, align 1, !tbaa !55
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi ptr [ %91, %88 ], [ %87, %84 ]
  %94 = phi ptr [ %89, %88 ], [ %45, %84 ]
  %95 = add nuw i32 %40, 1
  %96 = icmp eq i32 %95, %18
  br i1 %96, label %326, label %36, !llvm.loop !178

97:                                               ; preds = %28, %24
  %98 = icmp eq i32 %18, 0
  br i1 %98, label %326, label %99

99:                                               ; preds = %97, %132
  %100 = phi i32 [ %126, %132 ], [ 0, %97 ]
  %101 = phi ptr [ %134, %132 ], [ %2, %97 ]
  %102 = phi ptr [ %133, %132 ], [ %2, %97 ]
  %103 = phi i32 [ %135, %132 ], [ 0, %97 ]
  %104 = getelementptr inbounds i8, ptr %101, i64 1
  %105 = load i8, ptr %101, align 1, !tbaa !55
  %106 = getelementptr inbounds i8, ptr %101, i64 2
  %107 = load i8, ptr %104, align 1, !tbaa !55
  %108 = getelementptr inbounds i8, ptr %101, i64 3
  %109 = load i8, ptr %106, align 1, !tbaa !55
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
  store i8 %125, ptr %102, align 1, !tbaa !55
  br i1 %20, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %101, i64 4
  %130 = load i8, ptr %108, align 1, !tbaa !55
  %131 = getelementptr inbounds i8, ptr %102, i64 2
  store i8 %130, ptr %127, align 1, !tbaa !55
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi ptr [ %131, %128 ], [ %127, %124 ]
  %134 = phi ptr [ %129, %128 ], [ %108, %124 ]
  %135 = add nuw i32 %103, 1
  %136 = icmp eq i32 %135, %18
  br i1 %136, label %326, label %99, !llvm.loop !179

137:                                              ; preds = %9
  %138 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 82
  %139 = load ptr, ptr %138, align 8, !tbaa !180
  %140 = icmp eq ptr %139, null
  br i1 %140, label %267, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %143 = load ptr, ptr %142, align 8, !tbaa !181
  %144 = icmp eq ptr %143, null
  br i1 %144, label %267, label %145

145:                                              ; preds = %141
  %146 = icmp eq i32 %18, 0
  br i1 %146, label %326, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %149 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  br label %150

150:                                              ; preds = %147, %262
  %151 = phi i32 [ 0, %147 ], [ %249, %262 ]
  %152 = phi ptr [ %2, %147 ], [ %264, %262 ]
  %153 = phi i32 [ 0, %147 ], [ %265, %262 ]
  %154 = phi ptr [ %2, %147 ], [ %263, %262 ]
  %155 = load i8, ptr %152, align 1, !tbaa !55
  %156 = zext i8 %155 to i16
  %157 = shl nuw i16 %156, 8
  %158 = getelementptr inbounds i8, ptr %152, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !55
  %160 = zext i8 %159 to i16
  %161 = or disjoint i16 %157, %160
  %162 = getelementptr inbounds i8, ptr %152, i64 2
  %163 = load i8, ptr %162, align 1, !tbaa !55
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 8
  %166 = getelementptr inbounds i8, ptr %152, i64 3
  %167 = load i8, ptr %166, align 1, !tbaa !55
  %168 = zext i8 %167 to i32
  %169 = or disjoint i32 %165, %168
  %170 = getelementptr inbounds i8, ptr %152, i64 4
  %171 = load i8, ptr %170, align 1, !tbaa !55
  %172 = zext i8 %171 to i16
  %173 = shl nuw i16 %172, 8
  %174 = getelementptr inbounds i8, ptr %152, i64 5
  %175 = load i8, ptr %174, align 1, !tbaa !55
  %176 = zext i8 %175 to i16
  %177 = or disjoint i16 %173, %176
  %178 = getelementptr inbounds i8, ptr %152, i64 6
  %179 = zext i16 %161 to i32
  %180 = icmp eq i32 %169, %179
  %181 = icmp eq i16 %161, %177
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %194

183:                                              ; preds = %150
  %184 = load ptr, ptr %149, align 8, !tbaa !182
  %185 = icmp eq ptr %184, null
  br i1 %185, label %247, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %148, align 8, !tbaa !183
  %188 = lshr i32 %168, %187
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %184, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !76
  %192 = zext i8 %163 to i64
  %193 = getelementptr inbounds i16, ptr %191, i64 %192
  br label %243

194:                                              ; preds = %150
  %195 = load ptr, ptr %138, align 8, !tbaa !180
  %196 = and i32 %179, 255
  %197 = load i32, ptr %148, align 8, !tbaa !183
  %198 = lshr i32 %196, %197
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %195, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !76
  %202 = lshr i32 %179, 8
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds i16, ptr %201, i64 %203
  %205 = load i16, ptr %204, align 2, !tbaa !60
  %206 = lshr i32 %168, %197
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %195, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !76
  %210 = zext i8 %163 to i64
  %211 = getelementptr inbounds i16, ptr %209, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !60
  %213 = zext i16 %177 to i32
  %214 = and i32 %213, 255
  %215 = lshr i32 %214, %197
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %195, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !76
  %219 = lshr i32 %213, 8
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds i16, ptr %218, i64 %220
  %222 = load i16, ptr %221, align 2, !tbaa !60
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
  %233 = load ptr, ptr %142, align 8, !tbaa !181
  %234 = and i32 %232, 255
  %235 = lshr i32 %234, %197
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %233, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !76
  %239 = lshr i32 %231, 23
  %240 = and i32 %239, 255
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds i16, ptr %238, i64 %241
  br label %243

243:                                              ; preds = %194, %186
  %244 = phi ptr [ %193, %186 ], [ %242, %194 ]
  %245 = phi i32 [ %151, %186 ], [ 1, %194 ]
  %246 = load i16, ptr %244, align 2, !tbaa !60
  br label %247

247:                                              ; preds = %243, %183
  %248 = phi i16 [ %161, %183 ], [ %246, %243 ]
  %249 = phi i32 [ %151, %183 ], [ %245, %243 ]
  %250 = lshr i16 %248, 8
  %251 = trunc i16 %250 to i8
  %252 = getelementptr inbounds i8, ptr %154, i64 1
  store i8 %251, ptr %154, align 1, !tbaa !55
  %253 = trunc i16 %248 to i8
  %254 = getelementptr inbounds i8, ptr %154, i64 2
  store i8 %253, ptr %252, align 1, !tbaa !55
  br i1 %20, label %262, label %255

255:                                              ; preds = %247
  %256 = getelementptr inbounds i8, ptr %152, i64 7
  %257 = load i8, ptr %178, align 1, !tbaa !55
  %258 = getelementptr inbounds i8, ptr %154, i64 3
  store i8 %257, ptr %254, align 1, !tbaa !55
  %259 = getelementptr inbounds i8, ptr %152, i64 8
  %260 = load i8, ptr %256, align 1, !tbaa !55
  %261 = getelementptr inbounds i8, ptr %154, i64 4
  store i8 %260, ptr %258, align 1, !tbaa !55
  br label %262

262:                                              ; preds = %255, %247
  %263 = phi ptr [ %261, %255 ], [ %254, %247 ]
  %264 = phi ptr [ %259, %255 ], [ %178, %247 ]
  %265 = add nuw i32 %153, 1
  %266 = icmp eq i32 %265, %18
  br i1 %266, label %326, label %150, !llvm.loop !184

267:                                              ; preds = %141, %137
  %268 = icmp eq i32 %18, 0
  br i1 %268, label %326, label %269

269:                                              ; preds = %267, %321
  %270 = phi i32 [ %301, %321 ], [ 0, %267 ]
  %271 = phi i32 [ %324, %321 ], [ 0, %267 ]
  %272 = phi ptr [ %323, %321 ], [ %2, %267 ]
  %273 = phi ptr [ %322, %321 ], [ %2, %267 ]
  %274 = load i8, ptr %273, align 1, !tbaa !55
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 8
  %277 = getelementptr inbounds i8, ptr %273, i64 1
  %278 = load i8, ptr %277, align 1, !tbaa !55
  %279 = zext i8 %278 to i32
  %280 = or disjoint i32 %276, %279
  %281 = getelementptr inbounds i8, ptr %273, i64 2
  %282 = load i8, ptr %281, align 1, !tbaa !55
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 8
  %285 = getelementptr inbounds i8, ptr %273, i64 3
  %286 = load i8, ptr %285, align 1, !tbaa !55
  %287 = zext i8 %286 to i32
  %288 = or disjoint i32 %284, %287
  %289 = getelementptr inbounds i8, ptr %273, i64 4
  %290 = load i8, ptr %289, align 1, !tbaa !55
  %291 = zext i8 %290 to i32
  %292 = shl nuw nsw i32 %291, 8
  %293 = getelementptr inbounds i8, ptr %273, i64 5
  %294 = load i8, ptr %293, align 1, !tbaa !55
  %295 = zext i8 %294 to i32
  %296 = or disjoint i32 %292, %295
  %297 = getelementptr inbounds i8, ptr %273, i64 6
  %298 = icmp eq i32 %280, %288
  %299 = icmp eq i32 %280, %296
  %300 = select i1 %298, i1 %299, i1 false
  %301 = select i1 %300, i32 %270, i32 1
  %302 = mul nuw i32 %280, %12
  %303 = mul nuw i32 %288, %15
  %304 = mul i32 %296, %17
  %305 = add nuw i32 %302, 16384
  %306 = add i32 %305, %303
  %307 = add i32 %306, %304
  %308 = lshr i32 %307, 15
  %309 = lshr i32 %307, 23
  %310 = trunc i32 %309 to i8
  %311 = getelementptr inbounds i8, ptr %272, i64 1
  store i8 %310, ptr %272, align 1, !tbaa !55
  %312 = trunc i32 %308 to i8
  %313 = getelementptr inbounds i8, ptr %272, i64 2
  store i8 %312, ptr %311, align 1, !tbaa !55
  br i1 %20, label %321, label %314

314:                                              ; preds = %269
  %315 = getelementptr inbounds i8, ptr %273, i64 7
  %316 = load i8, ptr %297, align 1, !tbaa !55
  %317 = getelementptr inbounds i8, ptr %272, i64 3
  store i8 %316, ptr %313, align 1, !tbaa !55
  %318 = getelementptr inbounds i8, ptr %273, i64 8
  %319 = load i8, ptr %315, align 1, !tbaa !55
  %320 = getelementptr inbounds i8, ptr %272, i64 4
  store i8 %319, ptr %317, align 1, !tbaa !55
  br label %321

321:                                              ; preds = %314, %269
  %322 = phi ptr [ %318, %314 ], [ %297, %269 ]
  %323 = phi ptr [ %320, %314 ], [ %313, %269 ]
  %324 = add nuw i32 %271, 1
  %325 = icmp eq i32 %324, %18
  br i1 %325, label %326, label %269, !llvm.loop !185

326:                                              ; preds = %262, %321, %92, %132, %145, %267, %32, %97
  %327 = phi i32 [ 0, %97 ], [ 0, %32 ], [ 0, %267 ], [ 0, %145 ], [ %126, %132 ], [ %86, %92 ], [ %301, %321 ], [ %249, %262 ]
  %328 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 4
  %329 = load i8, ptr %328, align 2, !tbaa !159
  %330 = add i8 %329, -2
  store i8 %330, ptr %328, align 2, !tbaa !159
  %331 = load i8, ptr %4, align 8, !tbaa !153
  %332 = and i8 %331, -3
  store i8 %332, ptr %4, align 8, !tbaa !153
  %333 = load i8, ptr %21, align 1, !tbaa !158
  %334 = mul i8 %333, %330
  %335 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  store i8 %334, ptr %335, align 1, !tbaa !160
  %336 = icmp ugt i8 %334, 7
  %337 = zext i32 %18 to i64
  br i1 %336, label %338, label %342

338:                                              ; preds = %326
  %339 = lshr i8 %334, 3
  %340 = zext nneg i8 %339 to i64
  %341 = mul nuw nsw i64 %340, %337
  br label %347

342:                                              ; preds = %326
  %343 = zext nneg i8 %334 to i64
  %344 = mul nuw nsw i64 %343, %337
  %345 = add nuw nsw i64 %344, 7
  %346 = lshr i64 %345, 3
  br label %347

347:                                              ; preds = %342, %338
  %348 = phi i64 [ %341, %338 ], [ %346, %342 ]
  %349 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  store i64 %348, ptr %349, align 8, !tbaa !156
  br label %350

350:                                              ; preds = %347, %3
  %351 = phi i32 [ 0, %3 ], [ %327, %347 ]
  ret i32 %351
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_gray_to_rgb(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !161
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !158
  %6 = icmp ugt i8 %5, 7
  br i1 %6, label %7, label %144

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !153
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %144

12:                                               ; preds = %7
  switch i8 %9, label %121 [
    i8 0, label %13
    i8 4, label %63
  ]

13:                                               ; preds = %12
  %14 = icmp eq i8 %5, 8
  %15 = icmp eq i32 %3, 0
  br i1 %14, label %16, label %35

16:                                               ; preds = %13
  br i1 %15, label %121, label %17

17:                                               ; preds = %16
  %18 = zext i32 %3 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds i8, ptr %19, i64 -1
  %21 = shl nuw nsw i64 %18, 1
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  br label %23

23:                                               ; preds = %17, %23
  %24 = phi ptr [ %32, %23 ], [ %22, %17 ]
  %25 = phi ptr [ %30, %23 ], [ %20, %17 ]
  %26 = phi i32 [ %33, %23 ], [ 0, %17 ]
  %27 = load i8, ptr %25, align 1, !tbaa !55
  %28 = getelementptr inbounds i8, ptr %24, i64 -1
  store i8 %27, ptr %24, align 1, !tbaa !55
  %29 = getelementptr inbounds i8, ptr %24, i64 -2
  store i8 %27, ptr %28, align 1, !tbaa !55
  %30 = getelementptr inbounds i8, ptr %25, i64 -1
  %31 = load i8, ptr %25, align 1, !tbaa !55
  %32 = getelementptr inbounds i8, ptr %24, i64 -3
  store i8 %31, ptr %29, align 1, !tbaa !55
  %33 = add nuw i32 %26, 1
  %34 = icmp eq i32 %33, %3
  br i1 %34, label %121, label %23, !llvm.loop !186

35:                                               ; preds = %13
  br i1 %15, label %121, label %36

36:                                               ; preds = %35
  %37 = zext i32 %3 to i64
  %38 = shl nuw nsw i64 %37, 1
  %39 = getelementptr inbounds i8, ptr %1, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 -1
  %41 = shl nuw nsw i64 %37, 2
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi ptr [ %60, %43 ], [ %42, %36 ]
  %45 = phi ptr [ %58, %43 ], [ %40, %36 ]
  %46 = phi i32 [ %61, %43 ], [ 0, %36 ]
  %47 = load i8, ptr %45, align 1, !tbaa !55
  %48 = getelementptr inbounds i8, ptr %44, i64 -1
  store i8 %47, ptr %44, align 1, !tbaa !55
  %49 = getelementptr inbounds i8, ptr %45, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !55
  %51 = getelementptr inbounds i8, ptr %44, i64 -2
  store i8 %50, ptr %48, align 1, !tbaa !55
  %52 = load i8, ptr %45, align 1, !tbaa !55
  %53 = getelementptr inbounds i8, ptr %44, i64 -3
  store i8 %52, ptr %51, align 1, !tbaa !55
  %54 = load i8, ptr %49, align 1, !tbaa !55
  %55 = getelementptr inbounds i8, ptr %44, i64 -4
  store i8 %54, ptr %53, align 1, !tbaa !55
  %56 = load i8, ptr %45, align 1, !tbaa !55
  %57 = getelementptr inbounds i8, ptr %44, i64 -5
  store i8 %56, ptr %55, align 1, !tbaa !55
  %58 = getelementptr inbounds i8, ptr %45, i64 -2
  %59 = load i8, ptr %49, align 1, !tbaa !55
  %60 = getelementptr inbounds i8, ptr %44, i64 -6
  store i8 %59, ptr %57, align 1, !tbaa !55
  %61 = add nuw i32 %46, 1
  %62 = icmp eq i32 %61, %3
  br i1 %62, label %121, label %43, !llvm.loop !187

63:                                               ; preds = %12
  %64 = icmp eq i8 %5, 8
  %65 = icmp eq i32 %3, 0
  br i1 %64, label %66, label %88

66:                                               ; preds = %63
  br i1 %65, label %121, label %67

67:                                               ; preds = %66
  %68 = zext i32 %3 to i64
  %69 = shl nuw nsw i64 %68, 1
  %70 = getelementptr inbounds i8, ptr %1, i64 %69
  %71 = getelementptr inbounds i8, ptr %70, i64 -1
  %72 = getelementptr inbounds i8, ptr %71, i64 %69
  br label %73

73:                                               ; preds = %67, %73
  %74 = phi ptr [ %85, %73 ], [ %72, %67 ]
  %75 = phi ptr [ %83, %73 ], [ %71, %67 ]
  %76 = phi i32 [ %86, %73 ], [ 0, %67 ]
  %77 = getelementptr inbounds i8, ptr %75, i64 -1
  %78 = load i8, ptr %75, align 1, !tbaa !55
  %79 = getelementptr inbounds i8, ptr %74, i64 -1
  store i8 %78, ptr %74, align 1, !tbaa !55
  %80 = load i8, ptr %77, align 1, !tbaa !55
  %81 = getelementptr inbounds i8, ptr %74, i64 -2
  store i8 %80, ptr %79, align 1, !tbaa !55
  %82 = getelementptr inbounds i8, ptr %74, i64 -3
  store i8 %80, ptr %81, align 1, !tbaa !55
  %83 = getelementptr inbounds i8, ptr %75, i64 -2
  %84 = load i8, ptr %77, align 1, !tbaa !55
  %85 = getelementptr inbounds i8, ptr %74, i64 -4
  store i8 %84, ptr %82, align 1, !tbaa !55
  %86 = add nuw i32 %76, 1
  %87 = icmp eq i32 %86, %3
  br i1 %87, label %121, label %73, !llvm.loop !188

88:                                               ; preds = %63
  br i1 %65, label %121, label %89

89:                                               ; preds = %88
  %90 = zext i32 %3 to i64
  %91 = shl nuw nsw i64 %90, 2
  %92 = getelementptr inbounds i8, ptr %1, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 -1
  %94 = getelementptr inbounds i8, ptr %93, i64 %91
  br label %95

95:                                               ; preds = %89, %95
  %96 = phi ptr [ %118, %95 ], [ %94, %89 ]
  %97 = phi ptr [ %116, %95 ], [ %93, %89 ]
  %98 = phi i32 [ %119, %95 ], [ 0, %89 ]
  %99 = getelementptr inbounds i8, ptr %97, i64 -1
  %100 = load i8, ptr %97, align 1, !tbaa !55
  %101 = getelementptr inbounds i8, ptr %96, i64 -1
  store i8 %100, ptr %96, align 1, !tbaa !55
  %102 = getelementptr inbounds i8, ptr %97, i64 -2
  %103 = load i8, ptr %99, align 1, !tbaa !55
  %104 = getelementptr inbounds i8, ptr %96, i64 -2
  store i8 %103, ptr %101, align 1, !tbaa !55
  %105 = load i8, ptr %102, align 1, !tbaa !55
  %106 = getelementptr inbounds i8, ptr %96, i64 -3
  store i8 %105, ptr %104, align 1, !tbaa !55
  %107 = getelementptr inbounds i8, ptr %97, i64 -3
  %108 = load i8, ptr %107, align 1, !tbaa !55
  %109 = getelementptr inbounds i8, ptr %96, i64 -4
  store i8 %108, ptr %106, align 1, !tbaa !55
  %110 = load i8, ptr %102, align 1, !tbaa !55
  %111 = getelementptr inbounds i8, ptr %96, i64 -5
  store i8 %110, ptr %109, align 1, !tbaa !55
  %112 = load i8, ptr %107, align 1, !tbaa !55
  %113 = getelementptr inbounds i8, ptr %96, i64 -6
  store i8 %112, ptr %111, align 1, !tbaa !55
  %114 = load i8, ptr %102, align 1, !tbaa !55
  %115 = getelementptr inbounds i8, ptr %96, i64 -7
  store i8 %114, ptr %113, align 1, !tbaa !55
  %116 = getelementptr inbounds i8, ptr %97, i64 -4
  %117 = load i8, ptr %107, align 1, !tbaa !55
  %118 = getelementptr inbounds i8, ptr %96, i64 -8
  store i8 %117, ptr %115, align 1, !tbaa !55
  %119 = add nuw i32 %98, 1
  %120 = icmp eq i32 %119, %3
  br i1 %120, label %121, label %95, !llvm.loop !189

121:                                              ; preds = %95, %73, %43, %23, %88, %66, %35, %16, %12
  %122 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %123 = load i8, ptr %122, align 2, !tbaa !159
  %124 = add i8 %123, 2
  store i8 %124, ptr %122, align 2, !tbaa !159
  %125 = load i8, ptr %8, align 8, !tbaa !153
  %126 = or i8 %125, 2
  store i8 %126, ptr %8, align 8, !tbaa !153
  %127 = load i8, ptr %4, align 1, !tbaa !158
  %128 = mul i8 %127, %124
  %129 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %128, ptr %129, align 1, !tbaa !160
  %130 = icmp ugt i8 %128, 7
  %131 = zext i32 %3 to i64
  br i1 %130, label %132, label %136

132:                                              ; preds = %121
  %133 = lshr i8 %128, 3
  %134 = zext nneg i8 %133 to i64
  %135 = mul nuw nsw i64 %134, %131
  br label %141

136:                                              ; preds = %121
  %137 = zext nneg i8 %128 to i64
  %138 = mul nuw nsw i64 %137, %131
  %139 = add nuw nsw i64 %138, 7
  %140 = lshr i64 %139, 3
  br label %141

141:                                              ; preds = %136, %132
  %142 = phi i64 [ %135, %132 ], [ %140, %136 ]
  %143 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %142, ptr %143, align 8, !tbaa !156
  br label %144

144:                                              ; preds = %141, %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_compose(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 77
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 80
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 78
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 81
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 82
  %15 = load ptr, ptr %14, align 8, !tbaa !180
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 74
  %17 = load i32, ptr %16, align 8, !tbaa !183
  %18 = load i32, ptr %0, align 8, !tbaa !161
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 14
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %24 = load i8, ptr %23, align 8, !tbaa !153
  switch i8 %24, label %1336 [
    i8 0, label %25
    i8 2, label %338
    i8 4, label %600
    i8 6, label %827
  ]

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !158
  switch i8 %27, label %1336 [
    i8 1, label %28
    i8 2, label %62
    i8 4, label %144
    i8 8, label %226
    i8 16, label %270
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %18, 0
  br i1 %29, label %1336, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %33

33:                                               ; preds = %30, %54
  %34 = phi ptr [ %1, %30 ], [ %59, %54 ]
  %35 = phi i32 [ 0, %30 ], [ %60, %54 ]
  %36 = phi i32 [ 7, %30 ], [ %57, %54 ]
  %37 = load i8, ptr %34, align 1, !tbaa !55
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %38, %36
  %40 = and i32 %39, 1
  %41 = load i16, ptr %31, align 8, !tbaa !135
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %33
  %45 = sub nsw i32 7, %36
  %46 = lshr i32 32639, %45
  %47 = trunc i32 %46 to i8
  %48 = and i8 %37, %47
  store i8 %48, ptr %34, align 1, !tbaa !55
  %49 = load i16, ptr %32, align 8, !tbaa !106
  %50 = zext i16 %49 to i32
  %51 = shl i32 %50, %36
  %52 = trunc i32 %51 to i8
  %53 = or i8 %48, %52
  store i8 %53, ptr %34, align 1, !tbaa !55
  br label %54

54:                                               ; preds = %44, %33
  %55 = icmp eq i32 %36, 0
  %56 = add nsw i32 %36, -1
  %57 = select i1 %55, i32 7, i32 %56
  %58 = zext i1 %55 to i64
  %59 = getelementptr inbounds i8, ptr %34, i64 %58
  %60 = add nuw i32 %35, 1
  %61 = icmp eq i32 %60, %18
  br i1 %61, label %1336, label %33, !llvm.loop !190

62:                                               ; preds = %25
  %63 = icmp eq ptr %5, null
  %64 = icmp eq i32 %18, 0
  br i1 %63, label %69, label %65

65:                                               ; preds = %62
  br i1 %64, label %1336, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %73

69:                                               ; preds = %62
  br i1 %64, label %1336, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %115

73:                                               ; preds = %66, %102
  %74 = phi ptr [ %1, %66 ], [ %112, %102 ]
  %75 = phi i32 [ 0, %66 ], [ %113, %102 ]
  %76 = phi i32 [ 6, %66 ], [ %110, %102 ]
  %77 = load i8, ptr %74, align 1, !tbaa !55
  %78 = zext i8 %77 to i32
  %79 = lshr i32 %78, %76
  %80 = and i32 %79, 3
  %81 = load i16, ptr %67, align 8, !tbaa !135
  %82 = zext i16 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = sub nsw i32 6, %76
  %86 = lshr i32 16191, %85
  %87 = trunc i32 %86 to i8
  %88 = and i8 %77, %87
  store i8 %88, ptr %74, align 1, !tbaa !55
  %89 = load i16, ptr %68, align 8, !tbaa !106
  %90 = zext i16 %89 to i32
  br label %102

91:                                               ; preds = %73
  %92 = mul nuw nsw i32 %80, 85
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %5, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !55
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
  store i8 %107, ptr %74, align 1, !tbaa !55
  %108 = icmp eq i32 %76, 0
  %109 = add nsw i32 %76, -2
  %110 = select i1 %108, i32 6, i32 %109
  %111 = zext i1 %108 to i64
  %112 = getelementptr inbounds i8, ptr %74, i64 %111
  %113 = add nuw i32 %75, 1
  %114 = icmp eq i32 %113, %18
  br i1 %114, label %1336, label %73, !llvm.loop !191

115:                                              ; preds = %70, %136
  %116 = phi ptr [ %1, %70 ], [ %141, %136 ]
  %117 = phi i32 [ 0, %70 ], [ %142, %136 ]
  %118 = phi i32 [ 6, %70 ], [ %139, %136 ]
  %119 = load i8, ptr %116, align 1, !tbaa !55
  %120 = zext i8 %119 to i32
  %121 = lshr i32 %120, %118
  %122 = and i32 %121, 3
  %123 = load i16, ptr %71, align 8, !tbaa !135
  %124 = zext i16 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %115
  %127 = sub nsw i32 6, %118
  %128 = lshr i32 16191, %127
  %129 = trunc i32 %128 to i8
  %130 = and i8 %119, %129
  store i8 %130, ptr %116, align 1, !tbaa !55
  %131 = load i16, ptr %72, align 8, !tbaa !106
  %132 = zext i16 %131 to i32
  %133 = shl i32 %132, %118
  %134 = trunc i32 %133 to i8
  %135 = or i8 %130, %134
  store i8 %135, ptr %116, align 1, !tbaa !55
  br label %136

136:                                              ; preds = %126, %115
  %137 = icmp eq i32 %118, 0
  %138 = add nsw i32 %118, -2
  %139 = select i1 %137, i32 6, i32 %138
  %140 = zext i1 %137 to i64
  %141 = getelementptr inbounds i8, ptr %116, i64 %140
  %142 = add nuw i32 %117, 1
  %143 = icmp eq i32 %142, %18
  br i1 %143, label %1336, label %115, !llvm.loop !192

144:                                              ; preds = %25
  %145 = icmp eq ptr %5, null
  %146 = icmp eq i32 %18, 0
  br i1 %145, label %151, label %147

147:                                              ; preds = %144
  br i1 %146, label %1336, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %150 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %155

151:                                              ; preds = %144
  br i1 %146, label %1336, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %154 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %197

155:                                              ; preds = %148, %184
  %156 = phi ptr [ %1, %148 ], [ %194, %184 ]
  %157 = phi i32 [ 0, %148 ], [ %195, %184 ]
  %158 = phi i32 [ 4, %148 ], [ %192, %184 ]
  %159 = load i8, ptr %156, align 1, !tbaa !55
  %160 = zext i8 %159 to i32
  %161 = lshr i32 %160, %158
  %162 = and i32 %161, 15
  %163 = load i16, ptr %149, align 8, !tbaa !135
  %164 = zext i16 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %155
  %167 = sub nsw i32 4, %158
  %168 = lshr i32 3855, %167
  %169 = trunc i32 %168 to i8
  %170 = and i8 %159, %169
  store i8 %170, ptr %156, align 1, !tbaa !55
  %171 = load i16, ptr %150, align 8, !tbaa !106
  %172 = zext i16 %171 to i32
  br label %184

173:                                              ; preds = %155
  %174 = mul nuw nsw i32 %162, 17
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %5, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !55
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
  store i8 %189, ptr %156, align 1, !tbaa !55
  %190 = icmp eq i32 %158, 0
  %191 = add nsw i32 %158, -4
  %192 = select i1 %190, i32 4, i32 %191
  %193 = zext i1 %190 to i64
  %194 = getelementptr inbounds i8, ptr %156, i64 %193
  %195 = add nuw i32 %157, 1
  %196 = icmp eq i32 %195, %18
  br i1 %196, label %1336, label %155, !llvm.loop !193

197:                                              ; preds = %152, %218
  %198 = phi ptr [ %1, %152 ], [ %223, %218 ]
  %199 = phi i32 [ 0, %152 ], [ %224, %218 ]
  %200 = phi i32 [ 4, %152 ], [ %221, %218 ]
  %201 = load i8, ptr %198, align 1, !tbaa !55
  %202 = zext i8 %201 to i32
  %203 = lshr i32 %202, %200
  %204 = and i32 %203, 15
  %205 = load i16, ptr %153, align 8, !tbaa !135
  %206 = zext i16 %205 to i32
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %197
  %209 = sub nsw i32 4, %200
  %210 = lshr i32 3855, %209
  %211 = trunc i32 %210 to i8
  %212 = and i8 %201, %211
  store i8 %212, ptr %198, align 1, !tbaa !55
  %213 = load i16, ptr %154, align 8, !tbaa !106
  %214 = zext i16 %213 to i32
  %215 = shl i32 %214, %200
  %216 = trunc i32 %215 to i8
  %217 = or i8 %212, %216
  store i8 %217, ptr %198, align 1, !tbaa !55
  br label %218

218:                                              ; preds = %208, %197
  %219 = icmp eq i32 %200, 0
  %220 = add nsw i32 %200, -4
  %221 = select i1 %219, i32 4, i32 %220
  %222 = zext i1 %219 to i64
  %223 = getelementptr inbounds i8, ptr %198, i64 %222
  %224 = add nuw i32 %199, 1
  %225 = icmp eq i32 %224, %18
  br i1 %225, label %1336, label %197, !llvm.loop !194

226:                                              ; preds = %25
  %227 = icmp eq ptr %5, null
  %228 = icmp eq i32 %18, 0
  br i1 %227, label %233, label %229

229:                                              ; preds = %226
  br i1 %228, label %1336, label %230

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %232 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %237

233:                                              ; preds = %226
  br i1 %228, label %1336, label %234

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %236 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %256

237:                                              ; preds = %230, %251
  %238 = phi ptr [ %1, %230 ], [ %254, %251 ]
  %239 = phi i32 [ 0, %230 ], [ %253, %251 ]
  %240 = load i8, ptr %238, align 1, !tbaa !55
  %241 = load i16, ptr %231, align 8, !tbaa !135
  %242 = zext i8 %240 to i16
  %243 = icmp eq i16 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i16, ptr %232, align 8, !tbaa !106
  %246 = trunc i16 %245 to i8
  br label %251

247:                                              ; preds = %237
  %248 = zext i8 %240 to i64
  %249 = getelementptr inbounds i8, ptr %5, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !55
  br label %251

251:                                              ; preds = %244, %247
  %252 = phi i8 [ %250, %247 ], [ %246, %244 ]
  store i8 %252, ptr %238, align 1, !tbaa !55
  %253 = add nuw i32 %239, 1
  %254 = getelementptr inbounds i8, ptr %238, i64 1
  %255 = icmp eq i32 %253, %18
  br i1 %255, label %1336, label %237, !llvm.loop !195

256:                                              ; preds = %234, %266
  %257 = phi ptr [ %1, %234 ], [ %268, %266 ]
  %258 = phi i32 [ 0, %234 ], [ %267, %266 ]
  %259 = load i8, ptr %257, align 1, !tbaa !55
  %260 = load i16, ptr %235, align 8, !tbaa !135
  %261 = zext i8 %259 to i16
  %262 = icmp eq i16 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load i16, ptr %236, align 8, !tbaa !106
  %265 = trunc i16 %264 to i8
  store i8 %265, ptr %257, align 1, !tbaa !55
  br label %266

266:                                              ; preds = %256, %263
  %267 = add nuw i32 %258, 1
  %268 = getelementptr inbounds i8, ptr %257, i64 1
  %269 = icmp eq i32 %267, %18
  br i1 %269, label %1336, label %256, !llvm.loop !196

270:                                              ; preds = %25
  %271 = icmp eq ptr %11, null
  %272 = icmp eq i32 %18, 0
  br i1 %271, label %277, label %273

273:                                              ; preds = %270
  br i1 %272, label %1336, label %274

274:                                              ; preds = %273
  %275 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %276 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %281

277:                                              ; preds = %270
  br i1 %272, label %1336, label %278

278:                                              ; preds = %277
  %279 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 4
  %280 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  br label %315

281:                                              ; preds = %274, %309
  %282 = phi ptr [ %1, %274 ], [ %313, %309 ]
  %283 = phi i32 [ 0, %274 ], [ %312, %309 ]
  %284 = load i8, ptr %282, align 1, !tbaa !55
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 8
  %287 = getelementptr inbounds i8, ptr %282, i64 1
  %288 = load i8, ptr %287, align 1, !tbaa !55
  %289 = zext i8 %288 to i32
  %290 = or disjoint i32 %286, %289
  %291 = load i16, ptr %275, align 8, !tbaa !135
  %292 = zext i16 %291 to i32
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %281
  %295 = load i16, ptr %276, align 8, !tbaa !106
  %296 = lshr i16 %295, 8
  %297 = trunc i16 %296 to i8
  store i8 %297, ptr %282, align 1, !tbaa !55
  %298 = load i16, ptr %276, align 8, !tbaa !106
  br label %309

299:                                              ; preds = %281
  %300 = lshr i32 %289, %17
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %11, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !76
  %304 = zext i8 %284 to i64
  %305 = getelementptr inbounds i16, ptr %303, i64 %304
  %306 = load i16, ptr %305, align 2, !tbaa !60
  %307 = lshr i16 %306, 8
  %308 = trunc i16 %307 to i8
  store i8 %308, ptr %282, align 1, !tbaa !55
  br label %309

309:                                              ; preds = %299, %294
  %310 = phi i16 [ %306, %299 ], [ %298, %294 ]
  %311 = trunc i16 %310 to i8
  store i8 %311, ptr %287, align 1, !tbaa !55
  %312 = add nuw i32 %283, 1
  %313 = getelementptr inbounds i8, ptr %282, i64 2
  %314 = icmp eq i32 %312, %18
  br i1 %314, label %1336, label %281, !llvm.loop !197

315:                                              ; preds = %278, %334
  %316 = phi ptr [ %1, %278 ], [ %336, %334 ]
  %317 = phi i32 [ 0, %278 ], [ %335, %334 ]
  %318 = load i8, ptr %316, align 1, !tbaa !55
  %319 = zext i8 %318 to i32
  %320 = shl nuw nsw i32 %319, 8
  %321 = getelementptr inbounds i8, ptr %316, i64 1
  %322 = load i8, ptr %321, align 1, !tbaa !55
  %323 = zext i8 %322 to i32
  %324 = or disjoint i32 %320, %323
  %325 = load i16, ptr %279, align 8, !tbaa !135
  %326 = zext i16 %325 to i32
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %334

328:                                              ; preds = %315
  %329 = load i16, ptr %280, align 8, !tbaa !106
  %330 = lshr i16 %329, 8
  %331 = trunc i16 %330 to i8
  store i8 %331, ptr %316, align 1, !tbaa !55
  %332 = load i16, ptr %280, align 8, !tbaa !106
  %333 = trunc i16 %332 to i8
  store i8 %333, ptr %321, align 1, !tbaa !55
  br label %334

334:                                              ; preds = %328, %315
  %335 = add nuw i32 %317, 1
  %336 = getelementptr inbounds i8, ptr %316, i64 2
  %337 = icmp eq i32 %335, %18
  br i1 %337, label %1336, label %315, !llvm.loop !198

338:                                              ; preds = %3
  %339 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %340 = load i8, ptr %339, align 1, !tbaa !158
  %341 = icmp eq i8 %340, 8
  %342 = icmp eq i32 %18, 0
  br i1 %341, label %343, label %434

343:                                              ; preds = %338
  %344 = icmp eq ptr %5, null
  br i1 %344, label %353, label %345

345:                                              ; preds = %343
  br i1 %342, label %1336, label %346

346:                                              ; preds = %345
  %347 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %348 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %349 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %350 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %351 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %352 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %361

353:                                              ; preds = %343
  br i1 %342, label %1336, label %354

354:                                              ; preds = %353
  %355 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %356 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %357 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %358 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %359 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %360 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %404

361:                                              ; preds = %346, %400
  %362 = phi ptr [ %1, %346 ], [ %402, %400 ]
  %363 = phi i32 [ 0, %346 ], [ %401, %400 ]
  %364 = load i8, ptr %362, align 1, !tbaa !55
  %365 = load i16, ptr %347, align 2, !tbaa !138
  %366 = zext i8 %364 to i16
  %367 = icmp eq i16 %365, %366
  %368 = getelementptr inbounds i8, ptr %362, i64 1
  %369 = load i8, ptr %368, align 1, !tbaa !55
  br i1 %367, label %370, label %387

370:                                              ; preds = %361
  %371 = load i16, ptr %348, align 4, !tbaa !137
  %372 = zext i8 %369 to i16
  %373 = icmp eq i16 %371, %372
  br i1 %373, label %374, label %387

374:                                              ; preds = %370
  %375 = getelementptr inbounds i8, ptr %362, i64 2
  %376 = load i8, ptr %375, align 1, !tbaa !55
  %377 = load i16, ptr %349, align 2, !tbaa !136
  %378 = zext i8 %376 to i16
  %379 = icmp eq i16 %377, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %374
  %381 = load i16, ptr %350, align 2, !tbaa !103
  %382 = trunc i16 %381 to i8
  store i8 %382, ptr %362, align 1, !tbaa !55
  %383 = load i16, ptr %351, align 4, !tbaa !104
  %384 = trunc i16 %383 to i8
  store i8 %384, ptr %368, align 1, !tbaa !55
  %385 = load i16, ptr %352, align 2, !tbaa !105
  %386 = trunc i16 %385 to i8
  store i8 %386, ptr %375, align 1, !tbaa !55
  br label %400

387:                                              ; preds = %361, %374, %370
  %388 = zext i8 %364 to i64
  %389 = getelementptr inbounds i8, ptr %5, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !55
  store i8 %390, ptr %362, align 1, !tbaa !55
  %391 = getelementptr inbounds i8, ptr %362, i64 1
  %392 = zext i8 %369 to i64
  %393 = getelementptr inbounds i8, ptr %5, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !55
  store i8 %394, ptr %391, align 1, !tbaa !55
  %395 = getelementptr inbounds i8, ptr %362, i64 2
  %396 = load i8, ptr %395, align 1, !tbaa !55
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds i8, ptr %5, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !55
  store i8 %399, ptr %395, align 1, !tbaa !55
  br label %400

400:                                              ; preds = %380, %387
  %401 = add nuw i32 %363, 1
  %402 = getelementptr inbounds i8, ptr %362, i64 3
  %403 = icmp eq i32 %401, %18
  br i1 %403, label %1336, label %361, !llvm.loop !199

404:                                              ; preds = %354, %430
  %405 = phi ptr [ %1, %354 ], [ %432, %430 ]
  %406 = phi i32 [ 0, %354 ], [ %431, %430 ]
  %407 = load i8, ptr %405, align 1, !tbaa !55
  %408 = load i16, ptr %355, align 2, !tbaa !138
  %409 = zext i8 %407 to i16
  %410 = icmp eq i16 %408, %409
  br i1 %410, label %411, label %430

411:                                              ; preds = %404
  %412 = getelementptr inbounds i8, ptr %405, i64 1
  %413 = load i8, ptr %412, align 1, !tbaa !55
  %414 = load i16, ptr %356, align 4, !tbaa !137
  %415 = zext i8 %413 to i16
  %416 = icmp eq i16 %414, %415
  br i1 %416, label %417, label %430

417:                                              ; preds = %411
  %418 = getelementptr inbounds i8, ptr %405, i64 2
  %419 = load i8, ptr %418, align 1, !tbaa !55
  %420 = load i16, ptr %357, align 2, !tbaa !136
  %421 = zext i8 %419 to i16
  %422 = icmp eq i16 %420, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %417
  %424 = load i16, ptr %358, align 2, !tbaa !103
  %425 = trunc i16 %424 to i8
  store i8 %425, ptr %405, align 1, !tbaa !55
  %426 = load i16, ptr %359, align 4, !tbaa !104
  %427 = trunc i16 %426 to i8
  store i8 %427, ptr %412, align 1, !tbaa !55
  %428 = load i16, ptr %360, align 2, !tbaa !105
  %429 = trunc i16 %428 to i8
  store i8 %429, ptr %418, align 1, !tbaa !55
  br label %430

430:                                              ; preds = %404, %411, %417, %423
  %431 = add nuw i32 %406, 1
  %432 = getelementptr inbounds i8, ptr %405, i64 3
  %433 = icmp eq i32 %431, %18
  br i1 %433, label %1336, label %404, !llvm.loop !200

434:                                              ; preds = %338
  %435 = icmp eq ptr %11, null
  br i1 %435, label %444, label %436

436:                                              ; preds = %434
  br i1 %342, label %1336, label %437

437:                                              ; preds = %436
  %438 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %439 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %440 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %441 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %442 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %443 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %452

444:                                              ; preds = %434
  br i1 %342, label %1336, label %445

445:                                              ; preds = %444
  %446 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 1
  %447 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 2
  %448 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 86, i32 3
  %449 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %450 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %451 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %543

452:                                              ; preds = %437, %537
  %453 = phi ptr [ %1, %437 ], [ %541, %537 ]
  %454 = phi i32 [ 0, %437 ], [ %540, %537 ]
  %455 = load i8, ptr %453, align 1, !tbaa !55
  %456 = zext i8 %455 to i32
  %457 = shl nuw nsw i32 %456, 8
  %458 = getelementptr inbounds i8, ptr %453, i64 1
  %459 = load i8, ptr %458, align 1, !tbaa !55
  %460 = zext i8 %459 to i32
  %461 = or disjoint i32 %457, %460
  %462 = getelementptr inbounds i8, ptr %453, i64 2
  %463 = getelementptr inbounds i8, ptr %453, i64 3
  %464 = getelementptr inbounds i8, ptr %453, i64 4
  %465 = load i8, ptr %464, align 1, !tbaa !55
  %466 = zext i8 %465 to i32
  %467 = shl nuw nsw i32 %466, 8
  %468 = getelementptr inbounds i8, ptr %453, i64 5
  %469 = load i8, ptr %468, align 1, !tbaa !55
  %470 = zext i8 %469 to i32
  %471 = or disjoint i32 %467, %470
  %472 = load i16, ptr %438, align 2, !tbaa !138
  %473 = zext i16 %472 to i32
  %474 = icmp eq i32 %461, %473
  %475 = load i8, ptr %463, align 1, !tbaa !55
  %476 = load i8, ptr %462, align 1, !tbaa !55
  br i1 %474, label %479, label %477

477:                                              ; preds = %452
  %478 = zext i8 %475 to i32
  br label %506

479:                                              ; preds = %452
  %480 = zext i8 %476 to i32
  %481 = shl nuw nsw i32 %480, 8
  %482 = zext i8 %475 to i32
  %483 = or disjoint i32 %481, %482
  %484 = load i16, ptr %439, align 4, !tbaa !137
  %485 = zext i16 %484 to i32
  %486 = icmp eq i32 %483, %485
  br i1 %486, label %487, label %506

487:                                              ; preds = %479
  %488 = load i16, ptr %440, align 2, !tbaa !136
  %489 = zext i16 %488 to i32
  %490 = icmp eq i32 %471, %489
  br i1 %490, label %491, label %506

491:                                              ; preds = %487
  %492 = load i16, ptr %441, align 2, !tbaa !103
  %493 = lshr i16 %492, 8
  %494 = trunc i16 %493 to i8
  store i8 %494, ptr %453, align 1, !tbaa !55
  %495 = load i16, ptr %441, align 2, !tbaa !103
  %496 = trunc i16 %495 to i8
  store i8 %496, ptr %458, align 1, !tbaa !55
  %497 = load i16, ptr %442, align 4, !tbaa !104
  %498 = lshr i16 %497, 8
  %499 = trunc i16 %498 to i8
  store i8 %499, ptr %462, align 1, !tbaa !55
  %500 = load i16, ptr %442, align 4, !tbaa !104
  %501 = trunc i16 %500 to i8
  store i8 %501, ptr %463, align 1, !tbaa !55
  %502 = load i16, ptr %443, align 2, !tbaa !105
  %503 = lshr i16 %502, 8
  %504 = trunc i16 %503 to i8
  store i8 %504, ptr %464, align 1, !tbaa !55
  %505 = load i16, ptr %443, align 2, !tbaa !105
  br label %537

506:                                              ; preds = %477, %487, %479
  %507 = phi i32 [ %478, %477 ], [ %482, %487 ], [ %482, %479 ]
  %508 = lshr i32 %460, %17
  %509 = zext nneg i32 %508 to i64
  %510 = getelementptr inbounds ptr, ptr %11, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !76
  %512 = zext i8 %455 to i64
  %513 = getelementptr inbounds i16, ptr %511, i64 %512
  %514 = load i16, ptr %513, align 2, !tbaa !60
  %515 = lshr i16 %514, 8
  %516 = trunc i16 %515 to i8
  store i8 %516, ptr %453, align 1, !tbaa !55
  %517 = trunc i16 %514 to i8
  store i8 %517, ptr %458, align 1, !tbaa !55
  %518 = lshr i32 %507, %17
  %519 = zext nneg i32 %518 to i64
  %520 = getelementptr inbounds ptr, ptr %11, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !76
  %522 = zext i8 %476 to i64
  %523 = getelementptr inbounds i16, ptr %521, i64 %522
  %524 = load i16, ptr %523, align 2, !tbaa !60
  %525 = lshr i16 %524, 8
  %526 = trunc i16 %525 to i8
  store i8 %526, ptr %462, align 1, !tbaa !55
  %527 = trunc i16 %524 to i8
  store i8 %527, ptr %463, align 1, !tbaa !55
  %528 = lshr i32 %470, %17
  %529 = zext nneg i32 %528 to i64
  %530 = getelementptr inbounds ptr, ptr %11, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !76
  %532 = zext i8 %465 to i64
  %533 = getelementptr inbounds i16, ptr %531, i64 %532
  %534 = load i16, ptr %533, align 2, !tbaa !60
  %535 = lshr i16 %534, 8
  %536 = trunc i16 %535 to i8
  store i8 %536, ptr %464, align 1, !tbaa !55
  br label %537

537:                                              ; preds = %506, %491
  %538 = phi i16 [ %534, %506 ], [ %505, %491 ]
  %539 = trunc i16 %538 to i8
  store i8 %539, ptr %468, align 1, !tbaa !55
  %540 = add nuw i32 %454, 1
  %541 = getelementptr inbounds i8, ptr %453, i64 6
  %542 = icmp eq i32 %540, %18
  br i1 %542, label %1336, label %452, !llvm.loop !201

543:                                              ; preds = %445, %596
  %544 = phi ptr [ %1, %445 ], [ %598, %596 ]
  %545 = phi i32 [ 0, %445 ], [ %597, %596 ]
  %546 = load i8, ptr %544, align 1, !tbaa !55
  %547 = zext i8 %546 to i32
  %548 = shl nuw nsw i32 %547, 8
  %549 = getelementptr inbounds i8, ptr %544, i64 1
  %550 = load i8, ptr %549, align 1, !tbaa !55
  %551 = zext i8 %550 to i32
  %552 = or disjoint i32 %548, %551
  %553 = getelementptr inbounds i8, ptr %544, i64 2
  %554 = getelementptr inbounds i8, ptr %544, i64 3
  %555 = getelementptr inbounds i8, ptr %544, i64 4
  %556 = load i8, ptr %555, align 1, !tbaa !55
  %557 = zext i8 %556 to i32
  %558 = shl nuw nsw i32 %557, 8
  %559 = getelementptr inbounds i8, ptr %544, i64 5
  %560 = load i8, ptr %559, align 1, !tbaa !55
  %561 = zext i8 %560 to i32
  %562 = or disjoint i32 %558, %561
  %563 = load i16, ptr %446, align 2, !tbaa !138
  %564 = zext i16 %563 to i32
  %565 = icmp eq i32 %552, %564
  br i1 %565, label %566, label %596

566:                                              ; preds = %543
  %567 = load i8, ptr %554, align 1, !tbaa !55
  %568 = load i8, ptr %553, align 1, !tbaa !55
  %569 = zext i8 %568 to i32
  %570 = shl nuw nsw i32 %569, 8
  %571 = zext i8 %567 to i32
  %572 = or disjoint i32 %570, %571
  %573 = load i16, ptr %447, align 4, !tbaa !137
  %574 = zext i16 %573 to i32
  %575 = icmp eq i32 %572, %574
  br i1 %575, label %576, label %596

576:                                              ; preds = %566
  %577 = load i16, ptr %448, align 2, !tbaa !136
  %578 = zext i16 %577 to i32
  %579 = icmp eq i32 %562, %578
  br i1 %579, label %580, label %596

580:                                              ; preds = %576
  %581 = load i16, ptr %449, align 2, !tbaa !103
  %582 = lshr i16 %581, 8
  %583 = trunc i16 %582 to i8
  store i8 %583, ptr %544, align 1, !tbaa !55
  %584 = load i16, ptr %449, align 2, !tbaa !103
  %585 = trunc i16 %584 to i8
  store i8 %585, ptr %549, align 1, !tbaa !55
  %586 = load i16, ptr %450, align 4, !tbaa !104
  %587 = lshr i16 %586, 8
  %588 = trunc i16 %587 to i8
  store i8 %588, ptr %553, align 1, !tbaa !55
  %589 = load i16, ptr %450, align 4, !tbaa !104
  %590 = trunc i16 %589 to i8
  store i8 %590, ptr %554, align 1, !tbaa !55
  %591 = load i16, ptr %451, align 2, !tbaa !105
  %592 = lshr i16 %591, 8
  %593 = trunc i16 %592 to i8
  store i8 %593, ptr %555, align 1, !tbaa !55
  %594 = load i16, ptr %451, align 2, !tbaa !105
  %595 = trunc i16 %594 to i8
  store i8 %595, ptr %559, align 1, !tbaa !55
  br label %596

596:                                              ; preds = %580, %576, %566, %543
  %597 = add nuw i32 %545, 1
  %598 = getelementptr inbounds i8, ptr %544, i64 6
  %599 = icmp eq i32 %597, %18
  br i1 %599, label %1336, label %543, !llvm.loop !202

600:                                              ; preds = %3
  %601 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %602 = load i8, ptr %601, align 1, !tbaa !158
  %603 = icmp eq i8 %602, 8
  %604 = icmp eq i32 %18, 0
  br i1 %603, label %605, label %691

605:                                              ; preds = %600
  %606 = icmp ne ptr %9, null
  %607 = icmp ne ptr %7, null
  %608 = select i1 %606, i1 %607, i1 false
  %609 = icmp ne ptr %5, null
  %610 = select i1 %608, i1 %609, i1 false
  br i1 %610, label %615, label %611

611:                                              ; preds = %605
  br i1 %604, label %1336, label %612

612:                                              ; preds = %611
  %613 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %614 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %661

615:                                              ; preds = %605
  br i1 %604, label %1336, label %616

616:                                              ; preds = %615
  %617 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %618 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %619

619:                                              ; preds = %616, %656
  %620 = phi ptr [ %1, %616 ], [ %659, %656 ]
  %621 = phi i32 [ 0, %616 ], [ %658, %656 ]
  %622 = getelementptr inbounds i8, ptr %620, i64 1
  %623 = load i8, ptr %622, align 1, !tbaa !55
  switch i8 %623, label %632 [
    i8 -1, label %624
    i8 0, label %629
  ]

624:                                              ; preds = %619
  %625 = load i8, ptr %620, align 1, !tbaa !55
  %626 = zext i8 %625 to i64
  %627 = getelementptr inbounds i8, ptr %5, i64 %626
  %628 = load i8, ptr %627, align 1, !tbaa !55
  br label %656

629:                                              ; preds = %619
  %630 = load i16, ptr %617, align 8, !tbaa !106
  %631 = trunc i16 %630 to i8
  br label %656

632:                                              ; preds = %619
  %633 = zext i8 %623 to i16
  %634 = load i8, ptr %620, align 1, !tbaa !55
  %635 = zext i8 %634 to i64
  %636 = getelementptr inbounds i8, ptr %9, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !55
  %638 = zext i8 %637 to i16
  %639 = mul nuw i16 %638, %633
  %640 = load i16, ptr %618, align 2, !tbaa !116
  %641 = xor i8 %623, -1
  %642 = zext i8 %641 to i16
  %643 = mul i16 %640, %642
  %644 = add i16 %643, 128
  %645 = add i16 %644, %639
  %646 = zext i16 %645 to i32
  %647 = lshr i32 %646, 8
  %648 = add nuw nsw i32 %647, %646
  %649 = lshr i32 %648, 8
  %650 = trunc i32 %649 to i8
  br i1 %22, label %651, label %656

651:                                              ; preds = %632
  %652 = and i32 %649, 255
  %653 = zext nneg i32 %652 to i64
  %654 = getelementptr inbounds i8, ptr %7, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !55
  br label %656

656:                                              ; preds = %632, %651, %629, %624
  %657 = phi i8 [ %631, %629 ], [ %628, %624 ], [ %650, %632 ], [ %655, %651 ]
  store i8 %657, ptr %620, align 1, !tbaa !55
  %658 = add nuw i32 %621, 1
  %659 = getelementptr inbounds i8, ptr %620, i64 2
  %660 = icmp eq i32 %658, %18
  br i1 %660, label %1336, label %619, !llvm.loop !203

661:                                              ; preds = %612, %687
  %662 = phi ptr [ %1, %612 ], [ %689, %687 ]
  %663 = phi i32 [ 0, %612 ], [ %688, %687 ]
  %664 = getelementptr inbounds i8, ptr %662, i64 1
  %665 = load i8, ptr %664, align 1, !tbaa !55
  switch i8 %665, label %669 [
    i8 0, label %666
    i8 -1, label %687
  ]

666:                                              ; preds = %661
  %667 = load i16, ptr %613, align 8, !tbaa !106
  %668 = trunc i16 %667 to i8
  br label %685

669:                                              ; preds = %661
  %670 = load i8, ptr %662, align 1, !tbaa !55
  %671 = zext i8 %670 to i16
  %672 = zext i8 %665 to i16
  %673 = mul nuw i16 %671, %672
  %674 = load i16, ptr %614, align 2, !tbaa !116
  %675 = xor i8 %665, -1
  %676 = zext i8 %675 to i16
  %677 = mul i16 %674, %676
  %678 = add i16 %677, 128
  %679 = add i16 %678, %673
  %680 = zext i16 %679 to i32
  %681 = lshr i32 %680, 8
  %682 = add nuw nsw i32 %681, %680
  %683 = lshr i32 %682, 8
  %684 = trunc i32 %683 to i8
  br label %685

685:                                              ; preds = %666, %669
  %686 = phi i8 [ %684, %669 ], [ %668, %666 ]
  store i8 %686, ptr %662, align 1, !tbaa !55
  br label %687

687:                                              ; preds = %685, %661
  %688 = add nuw i32 %663, 1
  %689 = getelementptr inbounds i8, ptr %662, i64 2
  %690 = icmp eq i32 %688, %18
  br i1 %690, label %1336, label %661, !llvm.loop !204

691:                                              ; preds = %600
  %692 = icmp ne ptr %11, null
  %693 = icmp ne ptr %13, null
  %694 = select i1 %692, i1 %693, i1 false
  %695 = icmp ne ptr %15, null
  %696 = select i1 %694, i1 %695, i1 false
  br i1 %696, label %701, label %697

697:                                              ; preds = %691
  br i1 %604, label %1336, label %698

698:                                              ; preds = %697
  %699 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %700 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %783

701:                                              ; preds = %691
  br i1 %604, label %1336, label %702

702:                                              ; preds = %701
  %703 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 4
  %704 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 4
  br label %705

705:                                              ; preds = %702, %779
  %706 = phi ptr [ %1, %702 ], [ %781, %779 ]
  %707 = phi i32 [ 0, %702 ], [ %780, %779 ]
  %708 = getelementptr inbounds i8, ptr %706, i64 2
  %709 = load i8, ptr %708, align 1, !tbaa !55
  %710 = zext i8 %709 to i32
  %711 = shl nuw nsw i32 %710, 8
  %712 = getelementptr inbounds i8, ptr %706, i64 3
  %713 = load i8, ptr %712, align 1, !tbaa !55
  %714 = zext i8 %713 to i32
  %715 = or disjoint i32 %711, %714
  %716 = trunc i32 %715 to i16
  switch i16 %716, label %739 [
    i16 -1, label %717
    i16 0, label %732
  ]

717:                                              ; preds = %705
  %718 = getelementptr inbounds i8, ptr %706, i64 1
  %719 = load i8, ptr %718, align 1, !tbaa !55
  %720 = zext i8 %719 to i32
  %721 = lshr i32 %720, %17
  %722 = zext nneg i32 %721 to i64
  %723 = getelementptr inbounds ptr, ptr %11, i64 %722
  %724 = load ptr, ptr %723, align 8, !tbaa !76
  %725 = load i8, ptr %706, align 1, !tbaa !55
  %726 = zext i8 %725 to i64
  %727 = getelementptr inbounds i16, ptr %724, i64 %726
  %728 = load i16, ptr %727, align 2, !tbaa !60
  %729 = lshr i16 %728, 8
  %730 = trunc i16 %729 to i8
  store i8 %730, ptr %706, align 1, !tbaa !55
  %731 = trunc i16 %728 to i8
  store i8 %731, ptr %718, align 1, !tbaa !55
  br label %779

732:                                              ; preds = %705
  %733 = load i16, ptr %703, align 8, !tbaa !106
  %734 = lshr i16 %733, 8
  %735 = trunc i16 %734 to i8
  store i8 %735, ptr %706, align 1, !tbaa !55
  %736 = load i16, ptr %703, align 8, !tbaa !106
  %737 = trunc i16 %736 to i8
  %738 = getelementptr inbounds i8, ptr %706, i64 1
  store i8 %737, ptr %738, align 1, !tbaa !55
  br label %779

739:                                              ; preds = %705
  %740 = getelementptr inbounds i8, ptr %706, i64 1
  %741 = load i8, ptr %740, align 1, !tbaa !55
  %742 = zext i8 %741 to i32
  %743 = lshr i32 %742, %17
  %744 = zext nneg i32 %743 to i64
  %745 = getelementptr inbounds ptr, ptr %15, i64 %744
  %746 = load ptr, ptr %745, align 8, !tbaa !76
  %747 = load i8, ptr %706, align 1, !tbaa !55
  %748 = zext i8 %747 to i64
  %749 = getelementptr inbounds i16, ptr %746, i64 %748
  %750 = load i16, ptr %749, align 2, !tbaa !60
  %751 = zext i16 %750 to i32
  %752 = mul nuw i32 %715, %751
  %753 = load i16, ptr %704, align 2, !tbaa !116
  %754 = zext i16 %753 to i32
  %755 = xor i32 %715, 65535
  %756 = mul nuw i32 %755, %754
  %757 = add nuw i32 %752, 32768
  %758 = add i32 %757, %756
  %759 = lshr i32 %758, 16
  %760 = add i32 %759, %758
  %761 = lshr i32 %760, 16
  br i1 %22, label %764, label %762

762:                                              ; preds = %739
  %763 = trunc i32 %761 to i16
  br label %774

764:                                              ; preds = %739
  %765 = and i32 %761, 255
  %766 = lshr i32 %765, %17
  %767 = zext nneg i32 %766 to i64
  %768 = getelementptr inbounds ptr, ptr %13, i64 %767
  %769 = load ptr, ptr %768, align 8, !tbaa !76
  %770 = lshr i32 %760, 24
  %771 = zext nneg i32 %770 to i64
  %772 = getelementptr inbounds i16, ptr %769, i64 %771
  %773 = load i16, ptr %772, align 2, !tbaa !60
  br label %774

774:                                              ; preds = %764, %762
  %775 = phi i16 [ %763, %762 ], [ %773, %764 ]
  %776 = lshr i16 %775, 8
  %777 = trunc i16 %776 to i8
  store i8 %777, ptr %706, align 1, !tbaa !55
  %778 = trunc i16 %775 to i8
  store i8 %778, ptr %740, align 1, !tbaa !55
  br label %779

779:                                              ; preds = %732, %774, %717
  %780 = add nuw i32 %707, 1
  %781 = getelementptr inbounds i8, ptr %706, i64 4
  %782 = icmp eq i32 %780, %18
  br i1 %782, label %1336, label %705, !llvm.loop !205

783:                                              ; preds = %698, %823
  %784 = phi ptr [ %1, %698 ], [ %825, %823 ]
  %785 = phi i32 [ 0, %698 ], [ %824, %823 ]
  %786 = getelementptr inbounds i8, ptr %784, i64 2
  %787 = load i8, ptr %786, align 1, !tbaa !55
  %788 = zext i8 %787 to i32
  %789 = shl nuw nsw i32 %788, 8
  %790 = getelementptr inbounds i8, ptr %784, i64 3
  %791 = load i8, ptr %790, align 1, !tbaa !55
  %792 = zext i8 %791 to i32
  %793 = or disjoint i32 %789, %792
  %794 = trunc i32 %793 to i16
  switch i16 %794, label %802 [
    i16 0, label %795
    i16 -1, label %823
  ]

795:                                              ; preds = %783
  %796 = load i16, ptr %699, align 8, !tbaa !106
  %797 = lshr i16 %796, 8
  %798 = trunc i16 %797 to i8
  store i8 %798, ptr %784, align 1, !tbaa !55
  %799 = load i16, ptr %699, align 8, !tbaa !106
  %800 = trunc i16 %799 to i8
  %801 = getelementptr inbounds i8, ptr %784, i64 1
  store i8 %800, ptr %801, align 1, !tbaa !55
  br label %823

802:                                              ; preds = %783
  %803 = load i8, ptr %784, align 1, !tbaa !55
  %804 = zext i8 %803 to i32
  %805 = shl nuw nsw i32 %804, 8
  %806 = getelementptr inbounds i8, ptr %784, i64 1
  %807 = load i8, ptr %806, align 1, !tbaa !55
  %808 = zext i8 %807 to i32
  %809 = or disjoint i32 %805, %808
  %810 = mul nuw i32 %809, %793
  %811 = load i16, ptr %700, align 2, !tbaa !116
  %812 = zext i16 %811 to i32
  %813 = xor i32 %793, 65535
  %814 = mul nuw i32 %813, %812
  %815 = add nuw i32 %814, 32768
  %816 = add i32 %815, %810
  %817 = lshr i32 %816, 16
  %818 = add i32 %817, %816
  %819 = lshr i32 %818, 16
  %820 = lshr i32 %818, 24
  %821 = trunc i32 %820 to i8
  store i8 %821, ptr %784, align 1, !tbaa !55
  %822 = trunc i32 %819 to i8
  store i8 %822, ptr %806, align 1, !tbaa !55
  br label %823

823:                                              ; preds = %783, %802, %795
  %824 = add nuw i32 %785, 1
  %825 = getelementptr inbounds i8, ptr %784, i64 4
  %826 = icmp eq i32 %824, %18
  br i1 %826, label %1336, label %783, !llvm.loop !206

827:                                              ; preds = %3
  %828 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %829 = load i8, ptr %828, align 1, !tbaa !158
  %830 = icmp eq i8 %829, 8
  %831 = icmp eq i32 %18, 0
  br i1 %830, label %832, label %1022

832:                                              ; preds = %827
  %833 = icmp ne ptr %9, null
  %834 = icmp ne ptr %7, null
  %835 = select i1 %833, i1 %834, i1 false
  %836 = icmp ne ptr %5, null
  %837 = select i1 %835, i1 %836, i1 false
  br i1 %837, label %843, label %838

838:                                              ; preds = %832
  br i1 %831, label %1336, label %839

839:                                              ; preds = %838
  %840 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %841 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %842 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %959

843:                                              ; preds = %832
  br i1 %831, label %1336, label %844

844:                                              ; preds = %843
  %845 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %846 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %847 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  %848 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 1
  %849 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 2
  %850 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 3
  br label %851

851:                                              ; preds = %844, %955
  %852 = phi ptr [ %1, %844 ], [ %957, %955 ]
  %853 = phi i32 [ 0, %844 ], [ %956, %955 ]
  %854 = getelementptr inbounds i8, ptr %852, i64 3
  %855 = load i8, ptr %854, align 1, !tbaa !55
  switch i8 %855, label %880 [
    i8 -1, label %856
    i8 0, label %871
  ]

856:                                              ; preds = %851
  %857 = load i8, ptr %852, align 1, !tbaa !55
  %858 = zext i8 %857 to i64
  %859 = getelementptr inbounds i8, ptr %5, i64 %858
  %860 = load i8, ptr %859, align 1, !tbaa !55
  store i8 %860, ptr %852, align 1, !tbaa !55
  %861 = getelementptr inbounds i8, ptr %852, i64 1
  %862 = load i8, ptr %861, align 1, !tbaa !55
  %863 = zext i8 %862 to i64
  %864 = getelementptr inbounds i8, ptr %5, i64 %863
  %865 = load i8, ptr %864, align 1, !tbaa !55
  store i8 %865, ptr %861, align 1, !tbaa !55
  %866 = getelementptr inbounds i8, ptr %852, i64 2
  %867 = load i8, ptr %866, align 1, !tbaa !55
  %868 = zext i8 %867 to i64
  %869 = getelementptr inbounds i8, ptr %5, i64 %868
  %870 = load i8, ptr %869, align 1, !tbaa !55
  store i8 %870, ptr %866, align 1, !tbaa !55
  br label %955

871:                                              ; preds = %851
  %872 = load i16, ptr %845, align 2, !tbaa !103
  %873 = trunc i16 %872 to i8
  store i8 %873, ptr %852, align 1, !tbaa !55
  %874 = load i16, ptr %846, align 4, !tbaa !104
  %875 = trunc i16 %874 to i8
  %876 = getelementptr inbounds i8, ptr %852, i64 1
  store i8 %875, ptr %876, align 1, !tbaa !55
  %877 = load i16, ptr %847, align 2, !tbaa !105
  %878 = trunc i16 %877 to i8
  %879 = getelementptr inbounds i8, ptr %852, i64 2
  store i8 %878, ptr %879, align 1, !tbaa !55
  br label %955

880:                                              ; preds = %851
  %881 = load i8, ptr %852, align 1, !tbaa !55
  %882 = zext i8 %881 to i64
  %883 = getelementptr inbounds i8, ptr %9, i64 %882
  %884 = load i8, ptr %883, align 1, !tbaa !55
  %885 = zext i8 %884 to i32
  %886 = zext i8 %855 to i32
  %887 = mul nuw nsw i32 %885, %886
  %888 = load i16, ptr %848, align 2, !tbaa !117
  %889 = zext i16 %888 to i32
  %890 = xor i8 %855, -1
  %891 = zext i8 %890 to i32
  %892 = mul nuw nsw i32 %889, %891
  %893 = add nuw nsw i32 %887, 128
  %894 = add nuw nsw i32 %893, %892
  %895 = lshr i32 %894, 8
  %896 = and i32 %895, 255
  %897 = add nuw nsw i32 %896, %894
  %898 = lshr i32 %897, 8
  %899 = trunc i32 %898 to i8
  br i1 %22, label %900, label %905

900:                                              ; preds = %880
  %901 = and i32 %898, 255
  %902 = zext nneg i32 %901 to i64
  %903 = getelementptr inbounds i8, ptr %7, i64 %902
  %904 = load i8, ptr %903, align 1, !tbaa !55
  br label %905

905:                                              ; preds = %900, %880
  %906 = phi i8 [ %899, %880 ], [ %904, %900 ]
  store i8 %906, ptr %852, align 1, !tbaa !55
  %907 = getelementptr inbounds i8, ptr %852, i64 1
  %908 = load i8, ptr %907, align 1, !tbaa !55
  %909 = zext i8 %908 to i64
  %910 = getelementptr inbounds i8, ptr %9, i64 %909
  %911 = load i8, ptr %910, align 1, !tbaa !55
  %912 = zext i8 %911 to i32
  %913 = mul nuw nsw i32 %912, %886
  %914 = load i16, ptr %849, align 2, !tbaa !118
  %915 = zext i16 %914 to i32
  %916 = mul nuw nsw i32 %915, %891
  %917 = add nuw nsw i32 %913, 128
  %918 = add nuw nsw i32 %917, %916
  %919 = lshr i32 %918, 8
  %920 = and i32 %919, 255
  %921 = add nuw nsw i32 %920, %918
  %922 = lshr i32 %921, 8
  %923 = trunc i32 %922 to i8
  br i1 %22, label %924, label %929

924:                                              ; preds = %905
  %925 = and i32 %922, 255
  %926 = zext nneg i32 %925 to i64
  %927 = getelementptr inbounds i8, ptr %7, i64 %926
  %928 = load i8, ptr %927, align 1, !tbaa !55
  br label %929

929:                                              ; preds = %924, %905
  %930 = phi i8 [ %923, %905 ], [ %928, %924 ]
  store i8 %930, ptr %907, align 1, !tbaa !55
  %931 = getelementptr inbounds i8, ptr %852, i64 2
  %932 = load i8, ptr %931, align 1, !tbaa !55
  %933 = zext i8 %932 to i64
  %934 = getelementptr inbounds i8, ptr %9, i64 %933
  %935 = load i8, ptr %934, align 1, !tbaa !55
  %936 = zext i8 %935 to i32
  %937 = mul nuw nsw i32 %936, %886
  %938 = load i16, ptr %850, align 2, !tbaa !119
  %939 = zext i16 %938 to i32
  %940 = mul nuw nsw i32 %939, %891
  %941 = add nuw nsw i32 %937, 128
  %942 = add nuw nsw i32 %941, %940
  %943 = lshr i32 %942, 8
  %944 = and i32 %943, 255
  %945 = add nuw nsw i32 %944, %942
  %946 = lshr i32 %945, 8
  %947 = trunc i32 %946 to i8
  br i1 %22, label %948, label %953

948:                                              ; preds = %929
  %949 = and i32 %946, 255
  %950 = zext nneg i32 %949 to i64
  %951 = getelementptr inbounds i8, ptr %7, i64 %950
  %952 = load i8, ptr %951, align 1, !tbaa !55
  br label %953

953:                                              ; preds = %948, %929
  %954 = phi i8 [ %947, %929 ], [ %952, %948 ]
  store i8 %954, ptr %931, align 1, !tbaa !55
  br label %955

955:                                              ; preds = %871, %953, %856
  %956 = add nuw i32 %853, 1
  %957 = getelementptr inbounds i8, ptr %852, i64 4
  %958 = icmp eq i32 %956, %18
  br i1 %958, label %1336, label %851, !llvm.loop !207

959:                                              ; preds = %839, %1018
  %960 = phi ptr [ %1, %839 ], [ %1020, %1018 ]
  %961 = phi i32 [ 0, %839 ], [ %1019, %1018 ]
  %962 = getelementptr inbounds i8, ptr %960, i64 3
  %963 = load i8, ptr %962, align 1, !tbaa !55
  switch i8 %963, label %973 [
    i8 0, label %964
    i8 -1, label %1018
  ]

964:                                              ; preds = %959
  %965 = load i16, ptr %840, align 2, !tbaa !103
  %966 = trunc i16 %965 to i8
  store i8 %966, ptr %960, align 1, !tbaa !55
  %967 = load i16, ptr %841, align 4, !tbaa !104
  %968 = trunc i16 %967 to i8
  %969 = getelementptr inbounds i8, ptr %960, i64 1
  store i8 %968, ptr %969, align 1, !tbaa !55
  %970 = load i16, ptr %842, align 2, !tbaa !105
  %971 = trunc i16 %970 to i8
  %972 = getelementptr inbounds i8, ptr %960, i64 2
  store i8 %971, ptr %972, align 1, !tbaa !55
  br label %1018

973:                                              ; preds = %959
  %974 = load i8, ptr %960, align 1, !tbaa !55
  %975 = zext i8 %974 to i32
  %976 = zext i8 %963 to i32
  %977 = mul nuw nsw i32 %975, %976
  %978 = load i16, ptr %840, align 2, !tbaa !103
  %979 = zext i16 %978 to i32
  %980 = xor i8 %963, -1
  %981 = zext i8 %980 to i32
  %982 = mul nuw nsw i32 %979, %981
  %983 = add nuw nsw i32 %977, 128
  %984 = add nuw nsw i32 %983, %982
  %985 = lshr i32 %984, 8
  %986 = and i32 %985, 255
  %987 = add nuw nsw i32 %986, %984
  %988 = lshr i32 %987, 8
  %989 = trunc i32 %988 to i8
  store i8 %989, ptr %960, align 1, !tbaa !55
  %990 = getelementptr inbounds i8, ptr %960, i64 1
  %991 = load i8, ptr %990, align 1, !tbaa !55
  %992 = zext i8 %991 to i32
  %993 = mul nuw nsw i32 %992, %976
  %994 = load i16, ptr %841, align 4, !tbaa !104
  %995 = zext i16 %994 to i32
  %996 = mul nuw nsw i32 %995, %981
  %997 = add nuw nsw i32 %993, 128
  %998 = add nuw nsw i32 %997, %996
  %999 = lshr i32 %998, 8
  %1000 = and i32 %999, 255
  %1001 = add nuw nsw i32 %1000, %998
  %1002 = lshr i32 %1001, 8
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, ptr %990, align 1, !tbaa !55
  %1004 = getelementptr inbounds i8, ptr %960, i64 2
  %1005 = load i8, ptr %1004, align 1, !tbaa !55
  %1006 = zext i8 %1005 to i32
  %1007 = mul nuw nsw i32 %1006, %976
  %1008 = load i16, ptr %842, align 2, !tbaa !105
  %1009 = zext i16 %1008 to i32
  %1010 = mul nuw nsw i32 %1009, %981
  %1011 = add nuw nsw i32 %1007, 128
  %1012 = add nuw nsw i32 %1011, %1010
  %1013 = lshr i32 %1012, 8
  %1014 = and i32 %1013, 255
  %1015 = add nuw nsw i32 %1014, %1012
  %1016 = lshr i32 %1015, 8
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, ptr %1004, align 1, !tbaa !55
  br label %1018

1018:                                             ; preds = %959, %973, %964
  %1019 = add nuw i32 %961, 1
  %1020 = getelementptr inbounds i8, ptr %960, i64 4
  %1021 = icmp eq i32 %1019, %18
  br i1 %1021, label %1336, label %959, !llvm.loop !208

1022:                                             ; preds = %827
  %1023 = icmp ne ptr %11, null
  %1024 = icmp ne ptr %13, null
  %1025 = select i1 %1023, i1 %1024, i1 false
  %1026 = icmp ne ptr %15, null
  %1027 = select i1 %1025, i1 %1026, i1 false
  br i1 %1027, label %1033, label %1028

1028:                                             ; preds = %1022
  br i1 %831, label %1336, label %1029

1029:                                             ; preds = %1028
  %1030 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %1031 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %1032 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  br label %1238

1033:                                             ; preds = %1022
  br i1 %831, label %1336, label %1034

1034:                                             ; preds = %1033
  %1035 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 1
  %1036 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 2
  %1037 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 69, i32 3
  %1038 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 1
  %1039 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 2
  %1040 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 70, i32 3
  br label %1041

1041:                                             ; preds = %1034, %1234
  %1042 = phi ptr [ %1, %1034 ], [ %1236, %1234 ]
  %1043 = phi i32 [ 0, %1034 ], [ %1235, %1234 ]
  %1044 = getelementptr inbounds i8, ptr %1042, i64 6
  %1045 = load i8, ptr %1044, align 1, !tbaa !55
  %1046 = zext i8 %1045 to i32
  %1047 = shl nuw nsw i32 %1046, 8
  %1048 = getelementptr inbounds i8, ptr %1042, i64 7
  %1049 = load i8, ptr %1048, align 1, !tbaa !55
  %1050 = zext i8 %1049 to i32
  %1051 = or disjoint i32 %1047, %1050
  %1052 = trunc i32 %1051 to i16
  switch i16 %1052, label %1119 [
    i16 -1, label %1053
    i16 0, label %1098
  ]

1053:                                             ; preds = %1041
  %1054 = getelementptr inbounds i8, ptr %1042, i64 1
  %1055 = load i8, ptr %1054, align 1, !tbaa !55
  %1056 = zext i8 %1055 to i32
  %1057 = lshr i32 %1056, %17
  %1058 = zext nneg i32 %1057 to i64
  %1059 = getelementptr inbounds ptr, ptr %11, i64 %1058
  %1060 = load ptr, ptr %1059, align 8, !tbaa !76
  %1061 = load i8, ptr %1042, align 1, !tbaa !55
  %1062 = zext i8 %1061 to i64
  %1063 = getelementptr inbounds i16, ptr %1060, i64 %1062
  %1064 = load i16, ptr %1063, align 2, !tbaa !60
  %1065 = lshr i16 %1064, 8
  %1066 = trunc i16 %1065 to i8
  store i8 %1066, ptr %1042, align 1, !tbaa !55
  %1067 = trunc i16 %1064 to i8
  store i8 %1067, ptr %1054, align 1, !tbaa !55
  %1068 = getelementptr inbounds i8, ptr %1042, i64 3
  %1069 = load i8, ptr %1068, align 1, !tbaa !55
  %1070 = zext i8 %1069 to i32
  %1071 = lshr i32 %1070, %17
  %1072 = zext nneg i32 %1071 to i64
  %1073 = getelementptr inbounds ptr, ptr %11, i64 %1072
  %1074 = load ptr, ptr %1073, align 8, !tbaa !76
  %1075 = getelementptr inbounds i8, ptr %1042, i64 2
  %1076 = load i8, ptr %1075, align 1, !tbaa !55
  %1077 = zext i8 %1076 to i64
  %1078 = getelementptr inbounds i16, ptr %1074, i64 %1077
  %1079 = load i16, ptr %1078, align 2, !tbaa !60
  %1080 = lshr i16 %1079, 8
  %1081 = trunc i16 %1080 to i8
  store i8 %1081, ptr %1075, align 1, !tbaa !55
  %1082 = trunc i16 %1079 to i8
  store i8 %1082, ptr %1068, align 1, !tbaa !55
  %1083 = getelementptr inbounds i8, ptr %1042, i64 5
  %1084 = load i8, ptr %1083, align 1, !tbaa !55
  %1085 = zext i8 %1084 to i32
  %1086 = lshr i32 %1085, %17
  %1087 = zext nneg i32 %1086 to i64
  %1088 = getelementptr inbounds ptr, ptr %11, i64 %1087
  %1089 = load ptr, ptr %1088, align 8, !tbaa !76
  %1090 = getelementptr inbounds i8, ptr %1042, i64 4
  %1091 = load i8, ptr %1090, align 1, !tbaa !55
  %1092 = zext i8 %1091 to i64
  %1093 = getelementptr inbounds i16, ptr %1089, i64 %1092
  %1094 = load i16, ptr %1093, align 2, !tbaa !60
  %1095 = lshr i16 %1094, 8
  %1096 = trunc i16 %1095 to i8
  store i8 %1096, ptr %1090, align 1, !tbaa !55
  %1097 = trunc i16 %1094 to i8
  store i8 %1097, ptr %1083, align 1, !tbaa !55
  br label %1234

1098:                                             ; preds = %1041
  %1099 = load i16, ptr %1035, align 2, !tbaa !103
  %1100 = lshr i16 %1099, 8
  %1101 = trunc i16 %1100 to i8
  store i8 %1101, ptr %1042, align 1, !tbaa !55
  %1102 = load i16, ptr %1035, align 2, !tbaa !103
  %1103 = trunc i16 %1102 to i8
  %1104 = getelementptr inbounds i8, ptr %1042, i64 1
  store i8 %1103, ptr %1104, align 1, !tbaa !55
  %1105 = load i16, ptr %1036, align 4, !tbaa !104
  %1106 = lshr i16 %1105, 8
  %1107 = trunc i16 %1106 to i8
  %1108 = getelementptr inbounds i8, ptr %1042, i64 2
  store i8 %1107, ptr %1108, align 1, !tbaa !55
  %1109 = load i16, ptr %1036, align 4, !tbaa !104
  %1110 = trunc i16 %1109 to i8
  %1111 = getelementptr inbounds i8, ptr %1042, i64 3
  store i8 %1110, ptr %1111, align 1, !tbaa !55
  %1112 = load i16, ptr %1037, align 2, !tbaa !105
  %1113 = lshr i16 %1112, 8
  %1114 = trunc i16 %1113 to i8
  %1115 = getelementptr inbounds i8, ptr %1042, i64 4
  store i8 %1114, ptr %1115, align 1, !tbaa !55
  %1116 = load i16, ptr %1037, align 2, !tbaa !105
  %1117 = trunc i16 %1116 to i8
  %1118 = getelementptr inbounds i8, ptr %1042, i64 5
  store i8 %1117, ptr %1118, align 1, !tbaa !55
  br label %1234

1119:                                             ; preds = %1041
  %1120 = getelementptr inbounds i8, ptr %1042, i64 1
  %1121 = load i8, ptr %1120, align 1, !tbaa !55
  %1122 = zext i8 %1121 to i32
  %1123 = lshr i32 %1122, %17
  %1124 = zext nneg i32 %1123 to i64
  %1125 = getelementptr inbounds ptr, ptr %15, i64 %1124
  %1126 = load ptr, ptr %1125, align 8, !tbaa !76
  %1127 = load i8, ptr %1042, align 1, !tbaa !55
  %1128 = zext i8 %1127 to i64
  %1129 = getelementptr inbounds i16, ptr %1126, i64 %1128
  %1130 = load i16, ptr %1129, align 2, !tbaa !60
  %1131 = zext i16 %1130 to i32
  %1132 = mul nuw i32 %1051, %1131
  %1133 = load i16, ptr %1038, align 2, !tbaa !117
  %1134 = zext i16 %1133 to i32
  %1135 = xor i32 %1051, 65535
  %1136 = mul nuw i32 %1135, %1134
  %1137 = add nuw i32 %1132, 32768
  %1138 = add i32 %1137, %1136
  %1139 = lshr i32 %1138, 16
  %1140 = add i32 %1139, %1138
  %1141 = lshr i32 %1140, 16
  %1142 = trunc i32 %1141 to i16
  br i1 %22, label %1143, label %1153

1143:                                             ; preds = %1119
  %1144 = and i32 %1141, 255
  %1145 = lshr i32 %1144, %17
  %1146 = zext nneg i32 %1145 to i64
  %1147 = getelementptr inbounds ptr, ptr %13, i64 %1146
  %1148 = load ptr, ptr %1147, align 8, !tbaa !76
  %1149 = lshr i32 %1140, 24
  %1150 = zext nneg i32 %1149 to i64
  %1151 = getelementptr inbounds i16, ptr %1148, i64 %1150
  %1152 = load i16, ptr %1151, align 2, !tbaa !60
  br label %1153

1153:                                             ; preds = %1143, %1119
  %1154 = phi i16 [ %1142, %1119 ], [ %1152, %1143 ]
  %1155 = lshr i16 %1154, 8
  %1156 = trunc i16 %1155 to i8
  store i8 %1156, ptr %1042, align 1, !tbaa !55
  %1157 = trunc i16 %1154 to i8
  store i8 %1157, ptr %1120, align 1, !tbaa !55
  %1158 = getelementptr inbounds i8, ptr %1042, i64 3
  %1159 = load i8, ptr %1158, align 1, !tbaa !55
  %1160 = zext i8 %1159 to i32
  %1161 = lshr i32 %1160, %17
  %1162 = zext nneg i32 %1161 to i64
  %1163 = getelementptr inbounds ptr, ptr %15, i64 %1162
  %1164 = load ptr, ptr %1163, align 8, !tbaa !76
  %1165 = getelementptr inbounds i8, ptr %1042, i64 2
  %1166 = load i8, ptr %1165, align 1, !tbaa !55
  %1167 = zext i8 %1166 to i64
  %1168 = getelementptr inbounds i16, ptr %1164, i64 %1167
  %1169 = load i16, ptr %1168, align 2, !tbaa !60
  %1170 = zext i16 %1169 to i32
  %1171 = mul nuw i32 %1051, %1170
  %1172 = load i16, ptr %1039, align 2, !tbaa !118
  %1173 = zext i16 %1172 to i32
  %1174 = mul nuw i32 %1135, %1173
  %1175 = add nuw i32 %1171, 32768
  %1176 = add i32 %1175, %1174
  %1177 = lshr i32 %1176, 16
  %1178 = add i32 %1177, %1176
  %1179 = lshr i32 %1178, 16
  %1180 = trunc i32 %1179 to i16
  br i1 %22, label %1181, label %1191

1181:                                             ; preds = %1153
  %1182 = and i32 %1179, 255
  %1183 = lshr i32 %1182, %17
  %1184 = zext nneg i32 %1183 to i64
  %1185 = getelementptr inbounds ptr, ptr %13, i64 %1184
  %1186 = load ptr, ptr %1185, align 8, !tbaa !76
  %1187 = lshr i32 %1178, 24
  %1188 = zext nneg i32 %1187 to i64
  %1189 = getelementptr inbounds i16, ptr %1186, i64 %1188
  %1190 = load i16, ptr %1189, align 2, !tbaa !60
  br label %1191

1191:                                             ; preds = %1181, %1153
  %1192 = phi i16 [ %1180, %1153 ], [ %1190, %1181 ]
  %1193 = lshr i16 %1192, 8
  %1194 = trunc i16 %1193 to i8
  store i8 %1194, ptr %1165, align 1, !tbaa !55
  %1195 = trunc i16 %1192 to i8
  store i8 %1195, ptr %1158, align 1, !tbaa !55
  %1196 = getelementptr inbounds i8, ptr %1042, i64 5
  %1197 = load i8, ptr %1196, align 1, !tbaa !55
  %1198 = zext i8 %1197 to i32
  %1199 = lshr i32 %1198, %17
  %1200 = zext nneg i32 %1199 to i64
  %1201 = getelementptr inbounds ptr, ptr %15, i64 %1200
  %1202 = load ptr, ptr %1201, align 8, !tbaa !76
  %1203 = getelementptr inbounds i8, ptr %1042, i64 4
  %1204 = load i8, ptr %1203, align 1, !tbaa !55
  %1205 = zext i8 %1204 to i64
  %1206 = getelementptr inbounds i16, ptr %1202, i64 %1205
  %1207 = load i16, ptr %1206, align 2, !tbaa !60
  %1208 = zext i16 %1207 to i32
  %1209 = mul nuw i32 %1051, %1208
  %1210 = load i16, ptr %1040, align 2, !tbaa !119
  %1211 = zext i16 %1210 to i32
  %1212 = mul nuw i32 %1135, %1211
  %1213 = add nuw i32 %1209, 32768
  %1214 = add i32 %1213, %1212
  %1215 = lshr i32 %1214, 16
  %1216 = add i32 %1215, %1214
  %1217 = lshr i32 %1216, 16
  %1218 = trunc i32 %1217 to i16
  br i1 %22, label %1219, label %1229

1219:                                             ; preds = %1191
  %1220 = and i32 %1217, 255
  %1221 = lshr i32 %1220, %17
  %1222 = zext nneg i32 %1221 to i64
  %1223 = getelementptr inbounds ptr, ptr %13, i64 %1222
  %1224 = load ptr, ptr %1223, align 8, !tbaa !76
  %1225 = lshr i32 %1216, 24
  %1226 = zext nneg i32 %1225 to i64
  %1227 = getelementptr inbounds i16, ptr %1224, i64 %1226
  %1228 = load i16, ptr %1227, align 2, !tbaa !60
  br label %1229

1229:                                             ; preds = %1219, %1191
  %1230 = phi i16 [ %1218, %1191 ], [ %1228, %1219 ]
  %1231 = lshr i16 %1230, 8
  %1232 = trunc i16 %1231 to i8
  store i8 %1232, ptr %1203, align 1, !tbaa !55
  %1233 = trunc i16 %1230 to i8
  store i8 %1233, ptr %1196, align 1, !tbaa !55
  br label %1234

1234:                                             ; preds = %1098, %1229, %1053
  %1235 = add nuw i32 %1043, 1
  %1236 = getelementptr inbounds i8, ptr %1042, i64 8
  %1237 = icmp eq i32 %1235, %18
  br i1 %1237, label %1336, label %1041, !llvm.loop !209

1238:                                             ; preds = %1029, %1332
  %1239 = phi ptr [ %1, %1029 ], [ %1334, %1332 ]
  %1240 = phi i32 [ 0, %1029 ], [ %1333, %1332 ]
  %1241 = getelementptr inbounds i8, ptr %1239, i64 6
  %1242 = load i8, ptr %1241, align 1, !tbaa !55
  %1243 = zext i8 %1242 to i32
  %1244 = shl nuw nsw i32 %1243, 8
  %1245 = getelementptr inbounds i8, ptr %1239, i64 7
  %1246 = load i8, ptr %1245, align 1, !tbaa !55
  %1247 = zext i8 %1246 to i32
  %1248 = or disjoint i32 %1244, %1247
  %1249 = trunc i32 %1248 to i16
  switch i16 %1249, label %1271 [
    i16 0, label %1250
    i16 -1, label %1332
  ]

1250:                                             ; preds = %1238
  %1251 = load i16, ptr %1030, align 2, !tbaa !103
  %1252 = lshr i16 %1251, 8
  %1253 = trunc i16 %1252 to i8
  store i8 %1253, ptr %1239, align 1, !tbaa !55
  %1254 = load i16, ptr %1030, align 2, !tbaa !103
  %1255 = trunc i16 %1254 to i8
  %1256 = getelementptr inbounds i8, ptr %1239, i64 1
  store i8 %1255, ptr %1256, align 1, !tbaa !55
  %1257 = load i16, ptr %1031, align 4, !tbaa !104
  %1258 = lshr i16 %1257, 8
  %1259 = trunc i16 %1258 to i8
  %1260 = getelementptr inbounds i8, ptr %1239, i64 2
  store i8 %1259, ptr %1260, align 1, !tbaa !55
  %1261 = load i16, ptr %1031, align 4, !tbaa !104
  %1262 = trunc i16 %1261 to i8
  %1263 = getelementptr inbounds i8, ptr %1239, i64 3
  store i8 %1262, ptr %1263, align 1, !tbaa !55
  %1264 = load i16, ptr %1032, align 2, !tbaa !105
  %1265 = lshr i16 %1264, 8
  %1266 = trunc i16 %1265 to i8
  %1267 = getelementptr inbounds i8, ptr %1239, i64 4
  store i8 %1266, ptr %1267, align 1, !tbaa !55
  %1268 = load i16, ptr %1032, align 2, !tbaa !105
  %1269 = trunc i16 %1268 to i8
  %1270 = getelementptr inbounds i8, ptr %1239, i64 5
  store i8 %1269, ptr %1270, align 1, !tbaa !55
  br label %1332

1271:                                             ; preds = %1238
  %1272 = load i8, ptr %1239, align 1, !tbaa !55
  %1273 = zext i8 %1272 to i32
  %1274 = shl nuw nsw i32 %1273, 8
  %1275 = getelementptr inbounds i8, ptr %1239, i64 1
  %1276 = load i8, ptr %1275, align 1, !tbaa !55
  %1277 = zext i8 %1276 to i32
  %1278 = or disjoint i32 %1274, %1277
  %1279 = getelementptr inbounds i8, ptr %1239, i64 2
  %1280 = load i8, ptr %1279, align 1, !tbaa !55
  %1281 = zext i8 %1280 to i32
  %1282 = shl nuw nsw i32 %1281, 8
  %1283 = getelementptr inbounds i8, ptr %1239, i64 3
  %1284 = load i8, ptr %1283, align 1, !tbaa !55
  %1285 = zext i8 %1284 to i32
  %1286 = or disjoint i32 %1282, %1285
  %1287 = getelementptr inbounds i8, ptr %1239, i64 4
  %1288 = load i8, ptr %1287, align 1, !tbaa !55
  %1289 = zext i8 %1288 to i32
  %1290 = shl nuw nsw i32 %1289, 8
  %1291 = getelementptr inbounds i8, ptr %1239, i64 5
  %1292 = load i8, ptr %1291, align 1, !tbaa !55
  %1293 = zext i8 %1292 to i32
  %1294 = or disjoint i32 %1290, %1293
  %1295 = mul nuw i32 %1278, %1248
  %1296 = load i16, ptr %1030, align 2, !tbaa !103
  %1297 = zext i16 %1296 to i32
  %1298 = xor i32 %1248, 65535
  %1299 = mul nuw i32 %1298, %1297
  %1300 = add nuw i32 %1295, 32768
  %1301 = add i32 %1300, %1299
  %1302 = lshr i32 %1301, 16
  %1303 = add i32 %1302, %1301
  %1304 = lshr i32 %1303, 16
  %1305 = lshr i32 %1303, 24
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, ptr %1239, align 1, !tbaa !55
  %1307 = trunc i32 %1304 to i8
  store i8 %1307, ptr %1275, align 1, !tbaa !55
  %1308 = mul nuw i32 %1286, %1248
  %1309 = load i16, ptr %1031, align 4, !tbaa !104
  %1310 = zext i16 %1309 to i32
  %1311 = mul nuw i32 %1298, %1310
  %1312 = add nuw i32 %1308, 32768
  %1313 = add i32 %1312, %1311
  %1314 = lshr i32 %1313, 16
  %1315 = add i32 %1314, %1313
  %1316 = lshr i32 %1315, 16
  %1317 = lshr i32 %1315, 24
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, ptr %1279, align 1, !tbaa !55
  %1319 = trunc i32 %1316 to i8
  store i8 %1319, ptr %1283, align 1, !tbaa !55
  %1320 = mul nuw i32 %1294, %1248
  %1321 = load i16, ptr %1032, align 2, !tbaa !105
  %1322 = zext i16 %1321 to i32
  %1323 = mul nuw i32 %1298, %1322
  %1324 = add nuw i32 %1320, 32768
  %1325 = add i32 %1324, %1323
  %1326 = lshr i32 %1325, 16
  %1327 = add i32 %1326, %1325
  %1328 = lshr i32 %1327, 16
  %1329 = lshr i32 %1327, 24
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, ptr %1287, align 1, !tbaa !55
  %1331 = trunc i32 %1328 to i8
  store i8 %1331, ptr %1291, align 1, !tbaa !55
  br label %1332

1332:                                             ; preds = %1238, %1271, %1250
  %1333 = add nuw i32 %1240, 1
  %1334 = getelementptr inbounds i8, ptr %1239, i64 8
  %1335 = icmp eq i32 %1333, %18
  br i1 %1335, label %1336, label %1238, !llvm.loop !210

1336:                                             ; preds = %1332, %1234, %1018, %955, %823, %779, %687, %656, %537, %596, %400, %430, %309, %334, %251, %266, %184, %218, %102, %136, %54, %1028, %1033, %838, %843, %697, %701, %611, %615, %436, %444, %345, %353, %273, %277, %229, %233, %147, %151, %65, %69, %28, %3, %25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_gamma(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 77
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 78
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 74
  %9 = load i32, ptr %8, align 8, !tbaa !183
  %10 = load i32, ptr %0, align 8, !tbaa !161
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !158
  %13 = icmp ult i8 %12, 9
  %14 = icmp ne ptr %5, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = icmp eq i8 %12, 16
  %18 = icmp ne ptr %7, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %324

20:                                               ; preds = %16, %3
  %21 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %22 = load i8, ptr %21, align 8, !tbaa !153
  switch i8 %22, label %324 [
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
  br i1 %25, label %324, label %48

27:                                               ; preds = %23
  br i1 %25, label %324, label %28

28:                                               ; preds = %27, %28
  %29 = phi ptr [ %45, %28 ], [ %1, %27 ]
  %30 = phi i32 [ %46, %28 ], [ 0, %27 ]
  %31 = load i8, ptr %29, align 1, !tbaa !55
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i8, ptr %5, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !55
  store i8 %34, ptr %29, align 1, !tbaa !55
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !55
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr %5, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !55
  store i8 %39, ptr %35, align 1, !tbaa !55
  %40 = getelementptr inbounds i8, ptr %29, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !55
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, ptr %5, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !55
  store i8 %44, ptr %40, align 1, !tbaa !55
  %45 = getelementptr inbounds i8, ptr %29, i64 3
  %46 = add nuw i32 %30, 1
  %47 = icmp eq i32 %46, %10
  br i1 %47, label %324, label %28, !llvm.loop !211

48:                                               ; preds = %26, %48
  %49 = phi ptr [ %95, %48 ], [ %1, %26 ]
  %50 = phi i32 [ %96, %48 ], [ 0, %26 ]
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !55
  %53 = zext i8 %52 to i32
  %54 = lshr i32 %53, %9
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %7, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = load i8, ptr %49, align 1, !tbaa !55
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !60
  %62 = lshr i16 %61, 8
  %63 = trunc i16 %62 to i8
  store i8 %63, ptr %49, align 1, !tbaa !55
  %64 = trunc i16 %61 to i8
  store i8 %64, ptr %51, align 1, !tbaa !55
  %65 = getelementptr inbounds i8, ptr %49, i64 2
  %66 = getelementptr inbounds i8, ptr %49, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !55
  %68 = zext i8 %67 to i32
  %69 = lshr i32 %68, %9
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %7, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  %73 = load i8, ptr %65, align 1, !tbaa !55
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !60
  %77 = lshr i16 %76, 8
  %78 = trunc i16 %77 to i8
  store i8 %78, ptr %65, align 1, !tbaa !55
  %79 = trunc i16 %76 to i8
  store i8 %79, ptr %66, align 1, !tbaa !55
  %80 = getelementptr inbounds i8, ptr %49, i64 4
  %81 = getelementptr inbounds i8, ptr %49, i64 5
  %82 = load i8, ptr %81, align 1, !tbaa !55
  %83 = zext i8 %82 to i32
  %84 = lshr i32 %83, %9
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %7, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !76
  %88 = load i8, ptr %80, align 1, !tbaa !55
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds i16, ptr %87, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !60
  %92 = lshr i16 %91, 8
  %93 = trunc i16 %92 to i8
  store i8 %93, ptr %80, align 1, !tbaa !55
  %94 = trunc i16 %91 to i8
  store i8 %94, ptr %81, align 1, !tbaa !55
  %95 = getelementptr inbounds i8, ptr %49, i64 6
  %96 = add nuw i32 %50, 1
  %97 = icmp eq i32 %96, %10
  br i1 %97, label %324, label %48, !llvm.loop !212

98:                                               ; preds = %20
  %99 = icmp eq i8 %12, 8
  %100 = icmp eq i32 %10, 0
  br i1 %99, label %102, label %101

101:                                              ; preds = %98
  br i1 %100, label %324, label %123

102:                                              ; preds = %98
  br i1 %100, label %324, label %103

103:                                              ; preds = %102, %103
  %104 = phi ptr [ %120, %103 ], [ %1, %102 ]
  %105 = phi i32 [ %121, %103 ], [ 0, %102 ]
  %106 = load i8, ptr %104, align 1, !tbaa !55
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds i8, ptr %5, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !55
  store i8 %109, ptr %104, align 1, !tbaa !55
  %110 = getelementptr inbounds i8, ptr %104, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !55
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i8, ptr %5, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !55
  store i8 %114, ptr %110, align 1, !tbaa !55
  %115 = getelementptr inbounds i8, ptr %104, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !55
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i8, ptr %5, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !55
  store i8 %119, ptr %115, align 1, !tbaa !55
  %120 = getelementptr inbounds i8, ptr %104, i64 4
  %121 = add nuw i32 %105, 1
  %122 = icmp eq i32 %121, %10
  br i1 %122, label %324, label %103, !llvm.loop !213

123:                                              ; preds = %101, %123
  %124 = phi ptr [ %170, %123 ], [ %1, %101 ]
  %125 = phi i32 [ %171, %123 ], [ 0, %101 ]
  %126 = getelementptr inbounds i8, ptr %124, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !55
  %128 = zext i8 %127 to i32
  %129 = lshr i32 %128, %9
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %7, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !76
  %133 = load i8, ptr %124, align 1, !tbaa !55
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i16, ptr %132, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !60
  %137 = lshr i16 %136, 8
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %124, align 1, !tbaa !55
  %139 = trunc i16 %136 to i8
  store i8 %139, ptr %126, align 1, !tbaa !55
  %140 = getelementptr inbounds i8, ptr %124, i64 2
  %141 = getelementptr inbounds i8, ptr %124, i64 3
  %142 = load i8, ptr %141, align 1, !tbaa !55
  %143 = zext i8 %142 to i32
  %144 = lshr i32 %143, %9
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %7, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !76
  %148 = load i8, ptr %140, align 1, !tbaa !55
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i16, ptr %147, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !60
  %152 = lshr i16 %151, 8
  %153 = trunc i16 %152 to i8
  store i8 %153, ptr %140, align 1, !tbaa !55
  %154 = trunc i16 %151 to i8
  store i8 %154, ptr %141, align 1, !tbaa !55
  %155 = getelementptr inbounds i8, ptr %124, i64 4
  %156 = getelementptr inbounds i8, ptr %124, i64 5
  %157 = load i8, ptr %156, align 1, !tbaa !55
  %158 = zext i8 %157 to i32
  %159 = lshr i32 %158, %9
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %7, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !76
  %163 = load i8, ptr %155, align 1, !tbaa !55
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds i16, ptr %162, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !60
  %167 = lshr i16 %166, 8
  %168 = trunc i16 %167 to i8
  store i8 %168, ptr %155, align 1, !tbaa !55
  %169 = trunc i16 %166 to i8
  store i8 %169, ptr %156, align 1, !tbaa !55
  %170 = getelementptr inbounds i8, ptr %124, i64 8
  %171 = add nuw i32 %125, 1
  %172 = icmp eq i32 %171, %10
  br i1 %172, label %324, label %123, !llvm.loop !214

173:                                              ; preds = %20
  %174 = icmp eq i8 %12, 8
  %175 = icmp eq i32 %10, 0
  br i1 %174, label %177, label %176

176:                                              ; preds = %173
  br i1 %175, label %324, label %188

177:                                              ; preds = %173
  br i1 %175, label %324, label %178

178:                                              ; preds = %177, %178
  %179 = phi ptr [ %185, %178 ], [ %1, %177 ]
  %180 = phi i32 [ %186, %178 ], [ 0, %177 ]
  %181 = load i8, ptr %179, align 1, !tbaa !55
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds i8, ptr %5, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !55
  store i8 %184, ptr %179, align 1, !tbaa !55
  %185 = getelementptr inbounds i8, ptr %179, i64 2
  %186 = add nuw i32 %180, 1
  %187 = icmp eq i32 %186, %10
  br i1 %187, label %324, label %178, !llvm.loop !215

188:                                              ; preds = %176, %188
  %189 = phi ptr [ %205, %188 ], [ %1, %176 ]
  %190 = phi i32 [ %206, %188 ], [ 0, %176 ]
  %191 = getelementptr inbounds i8, ptr %189, i64 1
  %192 = load i8, ptr %191, align 1, !tbaa !55
  %193 = zext i8 %192 to i32
  %194 = lshr i32 %193, %9
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %7, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !76
  %198 = load i8, ptr %189, align 1, !tbaa !55
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds i16, ptr %197, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !60
  %202 = lshr i16 %201, 8
  %203 = trunc i16 %202 to i8
  store i8 %203, ptr %189, align 1, !tbaa !55
  %204 = trunc i16 %201 to i8
  store i8 %204, ptr %191, align 1, !tbaa !55
  %205 = getelementptr inbounds i8, ptr %189, i64 4
  %206 = add nuw i32 %190, 1
  %207 = icmp eq i32 %206, %10
  br i1 %207, label %324, label %188, !llvm.loop !216

208:                                              ; preds = %20
  %209 = icmp eq i8 %12, 2
  %210 = icmp ne i32 %10, 0
  %211 = select i1 %209, i1 %210, i1 false
  br i1 %211, label %212, label %264

212:                                              ; preds = %208, %212
  %213 = phi ptr [ %259, %212 ], [ %1, %208 ]
  %214 = phi i32 [ %260, %212 ], [ 0, %208 ]
  %215 = load i8, ptr %213, align 1, !tbaa !55
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
  %229 = load i8, ptr %228, align 1, !tbaa !55
  %230 = and i8 %229, -64
  %231 = shl nuw nsw i32 %218, 2
  %232 = lshr exact i32 %218, 2
  %233 = or disjoint i32 %231, %232
  %234 = lshr exact i32 %218, 4
  %235 = or disjoint i32 %233, %234
  %236 = or disjoint i32 %235, %218
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds i8, ptr %5, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !55
  %240 = lshr i8 %239, 2
  %241 = and i8 %240, 48
  %242 = or disjoint i8 %241, %230
  %243 = mul nuw nsw i32 %219, 20
  %244 = lshr exact i32 %219, 2
  %245 = or disjoint i32 %243, %244
  %246 = or disjoint i32 %245, %219
  %247 = zext nneg i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %5, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !55
  %250 = lshr i8 %249, 4
  %251 = and i8 %250, 12
  %252 = or disjoint i8 %242, %251
  %253 = mul nuw nsw i32 %220, 85
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds i8, ptr %5, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !55
  %257 = lshr i8 %256, 6
  %258 = or disjoint i8 %252, %257
  store i8 %258, ptr %213, align 1, !tbaa !55
  %259 = getelementptr inbounds i8, ptr %213, i64 1
  %260 = add nuw i32 %214, 4
  %261 = icmp ult i32 %260, %10
  br i1 %261, label %212, label %262, !llvm.loop !217

262:                                              ; preds = %212
  %263 = load i8, ptr %11, align 1, !tbaa !158
  br label %264

264:                                              ; preds = %262, %208
  %265 = phi i8 [ %263, %262 ], [ %12, %208 ]
  switch i8 %265, label %324 [
    i8 4, label %270
    i8 8, label %268
    i8 16, label %266
  ]

266:                                              ; preds = %264
  %267 = icmp eq i32 %10, 0
  br i1 %267, label %324, label %304

268:                                              ; preds = %264
  %269 = icmp eq i32 %10, 0
  br i1 %269, label %324, label %294

270:                                              ; preds = %264
  %271 = icmp eq i32 %10, 0
  br i1 %271, label %324, label %272

272:                                              ; preds = %270, %272
  %273 = phi ptr [ %291, %272 ], [ %1, %270 ]
  %274 = phi i32 [ %292, %272 ], [ 0, %270 ]
  %275 = load i8, ptr %273, align 1, !tbaa !55
  %276 = zext i8 %275 to i32
  %277 = and i32 %276, 240
  %278 = and i32 %276, 15
  %279 = lshr i32 %276, 4
  %280 = or disjoint i32 %277, %279
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds i8, ptr %5, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !55
  %284 = and i8 %283, -16
  %285 = mul nuw nsw i32 %278, 17
  %286 = zext nneg i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %5, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !55
  %289 = lshr i8 %288, 4
  %290 = or disjoint i8 %289, %284
  store i8 %290, ptr %273, align 1, !tbaa !55
  %291 = getelementptr inbounds i8, ptr %273, i64 1
  %292 = add nuw i32 %274, 2
  %293 = icmp ult i32 %292, %10
  br i1 %293, label %272, label %324, !llvm.loop !218

294:                                              ; preds = %268, %294
  %295 = phi ptr [ %301, %294 ], [ %1, %268 ]
  %296 = phi i32 [ %302, %294 ], [ 0, %268 ]
  %297 = load i8, ptr %295, align 1, !tbaa !55
  %298 = zext i8 %297 to i64
  %299 = getelementptr inbounds i8, ptr %5, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !55
  store i8 %300, ptr %295, align 1, !tbaa !55
  %301 = getelementptr inbounds i8, ptr %295, i64 1
  %302 = add nuw i32 %296, 1
  %303 = icmp eq i32 %302, %10
  br i1 %303, label %324, label %294, !llvm.loop !219

304:                                              ; preds = %266, %304
  %305 = phi ptr [ %321, %304 ], [ %1, %266 ]
  %306 = phi i32 [ %322, %304 ], [ 0, %266 ]
  %307 = getelementptr inbounds i8, ptr %305, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !55
  %309 = zext i8 %308 to i32
  %310 = lshr i32 %309, %9
  %311 = zext nneg i32 %310 to i64
  %312 = getelementptr inbounds ptr, ptr %7, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !76
  %314 = load i8, ptr %305, align 1, !tbaa !55
  %315 = zext i8 %314 to i64
  %316 = getelementptr inbounds i16, ptr %313, i64 %315
  %317 = load i16, ptr %316, align 2, !tbaa !60
  %318 = lshr i16 %317, 8
  %319 = trunc i16 %318 to i8
  store i8 %319, ptr %305, align 1, !tbaa !55
  %320 = trunc i16 %317 to i8
  store i8 %320, ptr %307, align 1, !tbaa !55
  %321 = getelementptr inbounds i8, ptr %305, i64 2
  %322 = add nuw i32 %306, 1
  %323 = icmp eq i32 %322, %10
  br i1 %323, label %324, label %304, !llvm.loop !220

324:                                              ; preds = %304, %294, %272, %188, %178, %123, %103, %48, %28, %266, %268, %270, %176, %177, %101, %102, %26, %27, %264, %20, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_do_encode_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !153
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !158
  switch i8 %12, label %69 [
    i8 8, label %13
    i8 16, label %35
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 79
  %15 = load ptr, ptr %14, align 8, !tbaa !114
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
  %28 = load i8, ptr %26, align 1, !tbaa !55
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i8, ptr %15, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !55
  store i8 %31, ptr %26, align 1, !tbaa !55
  %32 = add i32 %27, -1
  %33 = getelementptr inbounds i8, ptr %26, i64 %20
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %70, label %25, !llvm.loop !221

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 81
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %2, i64 0, i32 74
  %39 = load i32, ptr %38, align 8, !tbaa !183
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
  %53 = load i8, ptr %52, align 1, !tbaa !55
  %54 = zext i8 %53 to i32
  %55 = lshr i32 %54, %39
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %37, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !76
  %59 = load i8, ptr %50, align 1, !tbaa !55
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !60
  %63 = lshr i16 %62, 8
  %64 = trunc i16 %63 to i8
  store i8 %64, ptr %50, align 1, !tbaa !55
  %65 = trunc i16 %62 to i8
  store i8 %65, ptr %52, align 1, !tbaa !55
  %66 = add i32 %51, -1
  %67 = getelementptr inbounds i8, ptr %50, i64 %44
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %70, label %49, !llvm.loop !222

69:                                               ; preds = %35, %13, %10, %3
  tail call void @png_warning(ptr noundef %2, ptr noundef nonnull @.str.16) #12
  br label %70

70:                                               ; preds = %49, %25, %41, %17, %69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_scale_16_to_8(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !158
  %5 = icmp eq i8 %4, 16
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !156
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = icmp sgt i64 %8, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %17, %11 ], [ %1, %6 ]
  %13 = phi ptr [ %26, %11 ], [ %1, %6 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %12, align 1, !tbaa !55
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %12, i64 2
  %18 = load i8, ptr %14, align 1, !tbaa !55
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, %16
  %21 = mul nsw i32 %20, 65535
  %22 = add nsw i32 %21, 8388480
  %23 = lshr i32 %22, 24
  %24 = trunc i32 %23 to i8
  %25 = add i8 %15, %24
  %26 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %25, ptr %13, align 1, !tbaa !55
  %27 = icmp ult ptr %17, %9
  br i1 %27, label %11, label %28, !llvm.loop !223

28:                                               ; preds = %11, %6
  store i8 8, ptr %3, align 1, !tbaa !158
  %29 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %30 = load i8, ptr %29, align 2, !tbaa !159
  %31 = shl i8 %30, 3
  %32 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %31, ptr %32, align 1, !tbaa !160
  %33 = load i32, ptr %0, align 8, !tbaa !161
  %34 = zext i8 %30 to i32
  %35 = mul i32 %33, %34
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %7, align 8, !tbaa !156
  br label %37

37:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_chop(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !158
  %5 = icmp eq i8 %4, 16
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !156
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = icmp sgt i64 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %16, %11 ], [ %1, %6 ]
  %13 = phi ptr [ %15, %11 ], [ %1, %6 ]
  %14 = load i8, ptr %12, align 1, !tbaa !55
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %14, ptr %13, align 1, !tbaa !55
  %16 = getelementptr inbounds i8, ptr %12, i64 2
  %17 = icmp ult ptr %16, %9
  br i1 %17, label %11, label %18, !llvm.loop !224

18:                                               ; preds = %11, %6
  store i8 8, ptr %3, align 1, !tbaa !158
  %19 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !159
  %21 = shl i8 %20, 3
  %22 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %21, ptr %22, align 1, !tbaa !160
  %23 = load i32, ptr %0, align 8, !tbaa !161
  %24 = zext i8 %20 to i32
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  store i64 %26, ptr %7, align 8, !tbaa !156
  br label %27

27:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_quantize(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %0, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !158
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %9, label %131

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !153
  %12 = icmp eq i8 %11, 2
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  store i8 3, ptr %10, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 1, ptr %18, align 2, !tbaa !159
  %19 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 8, ptr %19, align 1, !tbaa !160
  br label %50

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %28, %20 ], [ %1, %15 ]
  %22 = phi ptr [ %42, %20 ], [ %1, %15 ]
  %23 = phi i32 [ %43, %20 ], [ 0, %15 ]
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  %25 = load i8, ptr %21, align 1, !tbaa !55
  %26 = getelementptr inbounds i8, ptr %21, i64 2
  %27 = load i8, ptr %24, align 1, !tbaa !55
  %28 = getelementptr inbounds i8, ptr %21, i64 3
  %29 = load i8, ptr %26, align 1, !tbaa !55
  %30 = lshr i8 %25, 3
  %31 = zext nneg i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 10
  %33 = lshr i8 %27, 3
  %34 = zext nneg i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 5
  %36 = or disjoint i64 %35, %32
  %37 = lshr i8 %29, 3
  %38 = zext nneg i8 %37 to i64
  %39 = or disjoint i64 %36, %38
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !55
  %42 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %41, ptr %22, align 1, !tbaa !55
  %43 = add nuw i32 %23, 1
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %45, label %20, !llvm.loop !225

45:                                               ; preds = %20
  %46 = load i8, ptr %6, align 1, !tbaa !158
  store i8 3, ptr %10, align 8, !tbaa !153
  %47 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 1, ptr %47, align 2, !tbaa !159
  %48 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %46, ptr %48, align 1, !tbaa !160
  %49 = icmp ugt i8 %46, 7
  br i1 %49, label %50, label %56

50:                                               ; preds = %17, %45
  %51 = phi i8 [ 8, %17 ], [ %46, %45 ]
  %52 = zext i32 %5 to i64
  %53 = lshr i8 %51, 3
  %54 = zext nneg i8 %53 to i64
  %55 = mul nuw nsw i64 %54, %52
  br label %128

56:                                               ; preds = %45
  %57 = zext i32 %5 to i64
  %58 = zext nneg i8 %46 to i64
  %59 = mul nuw nsw i64 %58, %57
  %60 = add nuw nsw i64 %59, 7
  %61 = lshr i64 %60, 3
  br label %128

62:                                               ; preds = %9
  %63 = icmp eq i8 %11, 6
  %64 = and i1 %13, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %62
  %66 = icmp eq i32 %5, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  store i8 3, ptr %10, align 8, !tbaa !153
  %68 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 1, ptr %68, align 2, !tbaa !159
  %69 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 8, ptr %69, align 1, !tbaa !160
  br label %100

70:                                               ; preds = %65, %70
  %71 = phi ptr [ %79, %70 ], [ %1, %65 ]
  %72 = phi ptr [ %92, %70 ], [ %1, %65 ]
  %73 = phi i32 [ %93, %70 ], [ 0, %65 ]
  %74 = getelementptr inbounds i8, ptr %71, i64 1
  %75 = load i8, ptr %71, align 1, !tbaa !55
  %76 = getelementptr inbounds i8, ptr %71, i64 2
  %77 = load i8, ptr %74, align 1, !tbaa !55
  %78 = load i8, ptr %76, align 1, !tbaa !55
  %79 = getelementptr inbounds i8, ptr %71, i64 4
  %80 = lshr i8 %75, 3
  %81 = zext nneg i8 %80 to i64
  %82 = shl nuw nsw i64 %81, 10
  %83 = lshr i8 %77, 3
  %84 = zext nneg i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 5
  %86 = or disjoint i64 %85, %82
  %87 = lshr i8 %78, 3
  %88 = zext nneg i8 %87 to i64
  %89 = or disjoint i64 %86, %88
  %90 = getelementptr inbounds i8, ptr %2, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !55
  %92 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %91, ptr %72, align 1, !tbaa !55
  %93 = add nuw i32 %73, 1
  %94 = icmp eq i32 %93, %5
  br i1 %94, label %95, label %70, !llvm.loop !226

95:                                               ; preds = %70
  %96 = load i8, ptr %6, align 1, !tbaa !158
  store i8 3, ptr %10, align 8, !tbaa !153
  %97 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  store i8 1, ptr %97, align 2, !tbaa !159
  %98 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %96, ptr %98, align 1, !tbaa !160
  %99 = icmp ugt i8 %96, 7
  br i1 %99, label %100, label %106

100:                                              ; preds = %67, %95
  %101 = phi i8 [ 8, %67 ], [ %96, %95 ]
  %102 = zext i32 %5 to i64
  %103 = lshr i8 %101, 3
  %104 = zext nneg i8 %103 to i64
  %105 = mul nuw nsw i64 %104, %102
  br label %128

106:                                              ; preds = %95
  %107 = zext i32 %5 to i64
  %108 = zext nneg i8 %96 to i64
  %109 = mul nuw nsw i64 %108, %107
  %110 = add nuw nsw i64 %109, 7
  %111 = lshr i64 %110, 3
  br label %128

112:                                              ; preds = %62
  %113 = icmp eq i8 %11, 3
  %114 = icmp ne ptr %3, null
  %115 = and i1 %114, %113
  %116 = icmp ne i32 %5, 0
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %131

118:                                              ; preds = %112, %118
  %119 = phi ptr [ %126, %118 ], [ %1, %112 ]
  %120 = phi i32 [ %125, %118 ], [ 0, %112 ]
  %121 = load i8, ptr %119, align 1, !tbaa !55
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds i8, ptr %3, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !55
  store i8 %124, ptr %119, align 1, !tbaa !55
  %125 = add nuw i32 %120, 1
  %126 = getelementptr inbounds i8, ptr %119, i64 1
  %127 = icmp eq i32 %125, %5
  br i1 %127, label %131, label %118, !llvm.loop !227

128:                                              ; preds = %100, %106, %50, %56
  %129 = phi i64 [ %55, %50 ], [ %61, %56 ], [ %105, %100 ], [ %111, %106 ]
  %130 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %129, ptr %130, align 8, !tbaa !156
  br label %131

131:                                              ; preds = %118, %128, %112, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_expand_16(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !158
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !153
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !156
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %1, i64 %12
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %23, %17 ], [ %16, %14 ]
  %19 = phi ptr [ %20, %17 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !55
  %22 = getelementptr inbounds i8, ptr %18, i64 -1
  store i8 %21, ptr %22, align 1, !tbaa !55
  %23 = getelementptr inbounds i8, ptr %18, i64 -2
  store i8 %21, ptr %23, align 1, !tbaa !55
  %24 = icmp ugt ptr %23, %20
  br i1 %24, label %17, label %25, !llvm.loop !228

25:                                               ; preds = %17
  %26 = load i64, ptr %11, align 8, !tbaa !156
  br label %27

27:                                               ; preds = %25, %10
  %28 = phi i64 [ %26, %25 ], [ %12, %10 ]
  %29 = shl i64 %28, 1
  store i64 %29, ptr %11, align 8, !tbaa !156
  store i8 16, ptr %3, align 1, !tbaa !158
  %30 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %31 = load i8, ptr %30, align 2, !tbaa !159
  %32 = shl i8 %31, 4
  %33 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %32, ptr %33, align 1, !tbaa !160
  br label %34

34:                                               ; preds = %27, %6, %2
  ret void
}

; Function Attrs: optsize
declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_unshift(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = alloca [4 x i32], align 16
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !153
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 3
  br i1 %8, label %143, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %10 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !158
  %12 = zext i8 %11 to i32
  %13 = and i32 %7, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %2, align 1, !tbaa !229
  %17 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 1
  %18 = load i8, ptr %17, align 1, !tbaa !230
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %12, %19
  %21 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 %20, ptr %21, align 4, !tbaa !129
  %22 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !231
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %12, %24
  %26 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 2
  store i32 %25, ptr %26, align 8, !tbaa !129
  br label %30

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !232
  br label %30

30:                                               ; preds = %27, %15
  %31 = phi i8 [ %29, %27 ], [ %16, %15 ]
  %32 = phi i32 [ 1, %27 ], [ 3, %15 ]
  %33 = zext i8 %31 to i32
  %34 = sub nsw i32 %12, %33
  store i32 %34, ptr %4, align 16
  %35 = and i32 %7, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.png_color_8_struct, ptr %2, i64 0, i32 4
  %39 = load i8, ptr %38, align 1, !tbaa !233
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %12, %40
  %42 = add nuw nsw i32 %32, 1
  %43 = zext nneg i32 %32 to i64
  %44 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %43
  store i32 %41, ptr %44, align 4, !tbaa !129
  br label %45

45:                                               ; preds = %37, %30
  %46 = phi i32 [ %42, %37 ], [ %32, %30 ]
  %47 = zext nneg i32 %46 to i64
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ 0, %45 ], [ %58, %48 ]
  %50 = phi i32 [ 0, %45 ], [ %57, %48 ]
  %51 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !129
  %53 = icmp sgt i32 %52, 0
  %54 = icmp slt i32 %52, %12
  %55 = select i1 %53, i1 %54, i1 false
  %56 = select i1 %55, i32 %52, i32 0
  store i32 %56, ptr %51, align 4
  %57 = select i1 %55, i32 1, i32 %50
  %58 = add nuw nsw i64 %49, 1
  %59 = icmp eq i64 %58, %47
  br i1 %59, label %60, label %48, !llvm.loop !234

60:                                               ; preds = %48
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %142, label %62

62:                                               ; preds = %60
  %63 = add nsw i32 %12, -2
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 31)
  switch i32 %64, label %141 [
    i32 0, label %65
    i32 1, label %77
    i32 3, label %94
    i32 7, label %114
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !156
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  %69 = icmp sgt i64 %67, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %65, %70
  %71 = phi ptr [ %75, %70 ], [ %1, %65 ]
  %72 = load i8, ptr %71, align 1, !tbaa !55
  %73 = lshr i8 %72, 1
  %74 = and i8 %73, 85
  %75 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %74, ptr %71, align 1, !tbaa !55
  %76 = icmp ult ptr %75, %68
  br i1 %76, label %70, label %141, !llvm.loop !235

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !156
  %80 = getelementptr inbounds i8, ptr %1, i64 %79
  %81 = load i32, ptr %4, align 16, !tbaa !129
  %82 = lshr i32 15, %81
  %83 = mul nuw nsw i32 %82, 17
  %84 = icmp sgt i64 %79, 0
  br i1 %84, label %85, label %141

85:                                               ; preds = %77, %85
  %86 = phi ptr [ %92, %85 ], [ %1, %77 ]
  %87 = load i8, ptr %86, align 1, !tbaa !55
  %88 = zext i8 %87 to i32
  %89 = lshr i32 %88, %81
  %90 = and i32 %89, %83
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %86, i64 1
  store i8 %91, ptr %86, align 1, !tbaa !55
  %93 = icmp ult ptr %92, %80
  br i1 %93, label %85, label %141, !llvm.loop !236

94:                                               ; preds = %62
  %95 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !156
  %97 = getelementptr inbounds i8, ptr %1, i64 %96
  %98 = icmp sgt i64 %96, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %94, %99
  %100 = phi i32 [ %110, %99 ], [ 0, %94 ]
  %101 = phi ptr [ %112, %99 ], [ %1, %94 ]
  %102 = load i8, ptr %101, align 1, !tbaa !55
  %103 = zext i8 %102 to i32
  %104 = sext i32 %100 to i64
  %105 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !129
  %107 = lshr i32 %103, %106
  %108 = add nsw i32 %100, 1
  %109 = icmp slt i32 %108, %46
  %110 = select i1 %109, i32 %108, i32 0
  %111 = trunc i32 %107 to i8
  %112 = getelementptr inbounds i8, ptr %101, i64 1
  store i8 %111, ptr %101, align 1, !tbaa !55
  %113 = icmp ult ptr %112, %97
  br i1 %113, label %99, label %141, !llvm.loop !237

114:                                              ; preds = %62
  %115 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !156
  %117 = getelementptr inbounds i8, ptr %1, i64 %116
  %118 = icmp sgt i64 %116, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %114, %119
  %120 = phi i32 [ %135, %119 ], [ 0, %114 ]
  %121 = phi ptr [ %139, %119 ], [ %1, %114 ]
  %122 = load i8, ptr %121, align 1, !tbaa !55
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = getelementptr inbounds i8, ptr %121, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !55
  %127 = zext i8 %126 to i32
  %128 = or disjoint i32 %124, %127
  %129 = sext i32 %120 to i64
  %130 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !129
  %132 = lshr i32 %128, %131
  %133 = add nsw i32 %120, 1
  %134 = icmp slt i32 %133, %46
  %135 = select i1 %134, i32 %133, i32 0
  %136 = lshr i32 %132, 8
  %137 = trunc i32 %136 to i8
  store i8 %137, ptr %121, align 1, !tbaa !55
  %138 = trunc i32 %132 to i8
  %139 = getelementptr inbounds i8, ptr %121, i64 2
  store i8 %138, ptr %125, align 1, !tbaa !55
  %140 = icmp ult ptr %139, %117
  br i1 %140, label %119, label %141, !llvm.loop !238

141:                                              ; preds = %119, %99, %85, %70, %114, %94, %77, %65, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %143

142:                                              ; preds = %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %143

143:                                              ; preds = %141, %3, %142
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_unpack(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !158
  %5 = icmp ult i8 %4, 8
  br i1 %5, label %6, label %106

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !161
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
  %26 = load i8, ptr %23, align 1, !tbaa !55
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, %21
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  store i8 %30, ptr %25, align 1, !tbaa !55
  %31 = icmp eq i32 %21, 7
  %32 = add nuw nsw i32 %21, 1
  %33 = sext i1 %31 to i64
  %34 = getelementptr inbounds i8, ptr %23, i64 %33
  %35 = select i1 %31, i32 0, i32 %32
  %36 = add nuw i32 %24, 1
  %37 = icmp eq i32 %36, %7
  br i1 %37, label %97, label %20, !llvm.loop !239

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
  %57 = load i8, ptr %54, align 1, !tbaa !55
  %58 = zext i8 %57 to i32
  %59 = lshr i32 %58, %52
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 3
  store i8 %61, ptr %56, align 1, !tbaa !55
  %62 = icmp eq i32 %52, 6
  %63 = add i32 %52, 2
  %64 = sext i1 %62 to i64
  %65 = getelementptr inbounds i8, ptr %54, i64 %64
  %66 = select i1 %62, i32 0, i32 %63
  %67 = add nuw i32 %55, 1
  %68 = icmp eq i32 %67, %7
  br i1 %68, label %97, label %51, !llvm.loop !240

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
  %86 = load i8, ptr %83, align 1, !tbaa !55
  %87 = zext i8 %86 to i32
  %88 = lshr i32 %87, %81
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 15
  store i8 %90, ptr %85, align 1, !tbaa !55
  %91 = icmp ne i32 %81, 0
  %92 = sext i1 %91 to i64
  %93 = getelementptr inbounds i8, ptr %83, i64 %92
  %94 = select i1 %91, i32 0, i32 4
  %95 = add nuw i32 %84, 1
  %96 = icmp eq i32 %95, %7
  br i1 %96, label %97, label %80, !llvm.loop !241

97:                                               ; preds = %80, %51, %20, %69, %38, %8, %6
  store i8 8, ptr %3, align 1, !tbaa !158
  %98 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %99 = load i8, ptr %98, align 2, !tbaa !159
  %100 = shl i8 %99, 3
  %101 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %100, ptr %101, align 1, !tbaa !160
  %102 = zext i8 %99 to i32
  %103 = mul i32 %7, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %104, ptr %105, align 8, !tbaa !156
  br label %106

106:                                              ; preds = %97, %2
  ret void
}

; Function Attrs: optsize
declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_filler(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %0, align 8, !tbaa !161
  %6 = lshr i32 %2, 8
  %7 = trunc i32 %6 to i8
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !153
  switch i8 %10, label %241 [
    i8 0, label %11
    i8 2, label %99
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !158
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
  store i8 %8, ptr %26, align 1, !tbaa !55
  %27 = getelementptr inbounds i8, ptr %24, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !55
  %29 = getelementptr inbounds i8, ptr %23, i64 -2
  store i8 %28, ptr %29, align 1, !tbaa !55
  %30 = add nuw i32 %25, 1
  %31 = icmp eq i32 %30, %5
  br i1 %31, label %32, label %22, !llvm.loop !242

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
  %46 = load i8, ptr %45, align 1, !tbaa !55
  %47 = getelementptr inbounds i8, ptr %42, i64 -1
  store i8 %46, ptr %47, align 1, !tbaa !55
  %48 = getelementptr inbounds i8, ptr %42, i64 -2
  store i8 %8, ptr %48, align 1, !tbaa !55
  %49 = add nuw i32 %44, 1
  %50 = icmp eq i32 %49, %5
  br i1 %50, label %232, label %41, !llvm.loop !243

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
  store i8 %7, ptr %64, align 1, !tbaa !55
  %65 = getelementptr inbounds i8, ptr %61, i64 -2
  store i8 %8, ptr %65, align 1, !tbaa !55
  %66 = getelementptr inbounds i8, ptr %62, i64 -1
  %67 = load i8, ptr %66, align 1, !tbaa !55
  %68 = getelementptr inbounds i8, ptr %61, i64 -3
  store i8 %67, ptr %68, align 1, !tbaa !55
  %69 = getelementptr inbounds i8, ptr %62, i64 -2
  %70 = load i8, ptr %69, align 1, !tbaa !55
  %71 = getelementptr inbounds i8, ptr %61, i64 -4
  store i8 %70, ptr %71, align 1, !tbaa !55
  %72 = add nuw i32 %63, 1
  %73 = icmp eq i32 %72, %5
  br i1 %73, label %74, label %60, !llvm.loop !244

74:                                               ; preds = %60, %54
  %75 = phi ptr [ %58, %54 ], [ %71, %60 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 -1
  store i8 %7, ptr %76, align 1, !tbaa !55
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
  %90 = load i8, ptr %89, align 1, !tbaa !55
  %91 = getelementptr inbounds i8, ptr %86, i64 -1
  store i8 %90, ptr %91, align 1, !tbaa !55
  %92 = getelementptr inbounds i8, ptr %87, i64 -2
  %93 = load i8, ptr %92, align 1, !tbaa !55
  %94 = getelementptr inbounds i8, ptr %86, i64 -2
  store i8 %93, ptr %94, align 1, !tbaa !55
  %95 = getelementptr inbounds i8, ptr %86, i64 -3
  store i8 %7, ptr %95, align 1, !tbaa !55
  %96 = getelementptr inbounds i8, ptr %86, i64 -4
  store i8 %8, ptr %96, align 1, !tbaa !55
  %97 = add nuw i32 %88, 1
  %98 = icmp eq i32 %97, %5
  br i1 %98, label %232, label %85, !llvm.loop !245

99:                                               ; preds = %4
  %100 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !158
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
  store i8 %8, ptr %115, align 1, !tbaa !55
  %116 = getelementptr inbounds i8, ptr %113, i64 -1
  %117 = load i8, ptr %116, align 1, !tbaa !55
  %118 = getelementptr inbounds i8, ptr %112, i64 -2
  store i8 %117, ptr %118, align 1, !tbaa !55
  %119 = getelementptr inbounds i8, ptr %113, i64 -2
  %120 = load i8, ptr %119, align 1, !tbaa !55
  %121 = getelementptr inbounds i8, ptr %112, i64 -3
  store i8 %120, ptr %121, align 1, !tbaa !55
  %122 = getelementptr inbounds i8, ptr %113, i64 -3
  %123 = load i8, ptr %122, align 1, !tbaa !55
  %124 = getelementptr inbounds i8, ptr %112, i64 -4
  store i8 %123, ptr %124, align 1, !tbaa !55
  %125 = add nuw i32 %114, 1
  %126 = icmp eq i32 %125, %5
  br i1 %126, label %127, label %111, !llvm.loop !246

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
  %142 = load i8, ptr %141, align 1, !tbaa !55
  %143 = getelementptr inbounds i8, ptr %138, i64 -1
  store i8 %142, ptr %143, align 1, !tbaa !55
  %144 = getelementptr inbounds i8, ptr %139, i64 -2
  %145 = load i8, ptr %144, align 1, !tbaa !55
  %146 = getelementptr inbounds i8, ptr %138, i64 -2
  store i8 %145, ptr %146, align 1, !tbaa !55
  %147 = getelementptr inbounds i8, ptr %139, i64 -3
  %148 = load i8, ptr %147, align 1, !tbaa !55
  %149 = getelementptr inbounds i8, ptr %138, i64 -3
  store i8 %148, ptr %149, align 1, !tbaa !55
  %150 = getelementptr inbounds i8, ptr %138, i64 -4
  store i8 %8, ptr %150, align 1, !tbaa !55
  %151 = add nuw i32 %140, 1
  %152 = icmp eq i32 %151, %5
  br i1 %152, label %232, label %137, !llvm.loop !247

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
  store i8 %7, ptr %167, align 1, !tbaa !55
  %168 = getelementptr inbounds i8, ptr %164, i64 -2
  store i8 %8, ptr %168, align 1, !tbaa !55
  %169 = getelementptr inbounds i8, ptr %165, i64 -1
  %170 = load i8, ptr %169, align 1, !tbaa !55
  %171 = getelementptr inbounds i8, ptr %164, i64 -3
  store i8 %170, ptr %171, align 1, !tbaa !55
  %172 = getelementptr inbounds i8, ptr %165, i64 -2
  %173 = load i8, ptr %172, align 1, !tbaa !55
  %174 = getelementptr inbounds i8, ptr %164, i64 -4
  store i8 %173, ptr %174, align 1, !tbaa !55
  %175 = getelementptr inbounds i8, ptr %165, i64 -3
  %176 = load i8, ptr %175, align 1, !tbaa !55
  %177 = getelementptr inbounds i8, ptr %164, i64 -5
  store i8 %176, ptr %177, align 1, !tbaa !55
  %178 = getelementptr inbounds i8, ptr %165, i64 -4
  %179 = load i8, ptr %178, align 1, !tbaa !55
  %180 = getelementptr inbounds i8, ptr %164, i64 -6
  store i8 %179, ptr %180, align 1, !tbaa !55
  %181 = getelementptr inbounds i8, ptr %165, i64 -5
  %182 = load i8, ptr %181, align 1, !tbaa !55
  %183 = getelementptr inbounds i8, ptr %164, i64 -7
  store i8 %182, ptr %183, align 1, !tbaa !55
  %184 = getelementptr inbounds i8, ptr %165, i64 -6
  %185 = load i8, ptr %184, align 1, !tbaa !55
  %186 = getelementptr inbounds i8, ptr %164, i64 -8
  store i8 %185, ptr %186, align 1, !tbaa !55
  %187 = add nuw i32 %166, 1
  %188 = icmp eq i32 %187, %5
  br i1 %188, label %189, label %163, !llvm.loop !248

189:                                              ; preds = %163, %156
  %190 = phi ptr [ %161, %156 ], [ %186, %163 ]
  %191 = getelementptr inbounds i8, ptr %190, i64 -1
  store i8 %7, ptr %191, align 1, !tbaa !55
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
  %206 = load i8, ptr %205, align 1, !tbaa !55
  %207 = getelementptr inbounds i8, ptr %202, i64 -1
  store i8 %206, ptr %207, align 1, !tbaa !55
  %208 = getelementptr inbounds i8, ptr %203, i64 -2
  %209 = load i8, ptr %208, align 1, !tbaa !55
  %210 = getelementptr inbounds i8, ptr %202, i64 -2
  store i8 %209, ptr %210, align 1, !tbaa !55
  %211 = getelementptr inbounds i8, ptr %203, i64 -3
  %212 = load i8, ptr %211, align 1, !tbaa !55
  %213 = getelementptr inbounds i8, ptr %202, i64 -3
  store i8 %212, ptr %213, align 1, !tbaa !55
  %214 = getelementptr inbounds i8, ptr %203, i64 -4
  %215 = load i8, ptr %214, align 1, !tbaa !55
  %216 = getelementptr inbounds i8, ptr %202, i64 -4
  store i8 %215, ptr %216, align 1, !tbaa !55
  %217 = getelementptr inbounds i8, ptr %203, i64 -5
  %218 = load i8, ptr %217, align 1, !tbaa !55
  %219 = getelementptr inbounds i8, ptr %202, i64 -5
  store i8 %218, ptr %219, align 1, !tbaa !55
  %220 = getelementptr inbounds i8, ptr %203, i64 -6
  %221 = load i8, ptr %220, align 1, !tbaa !55
  %222 = getelementptr inbounds i8, ptr %202, i64 -6
  store i8 %221, ptr %222, align 1, !tbaa !55
  %223 = getelementptr inbounds i8, ptr %202, i64 -7
  store i8 %7, ptr %223, align 1, !tbaa !55
  %224 = getelementptr inbounds i8, ptr %202, i64 -8
  store i8 %8, ptr %224, align 1, !tbaa !55
  %225 = add nuw i32 %204, 1
  %226 = icmp eq i32 %225, %5
  br i1 %226, label %232, label %201, !llvm.loop !249

227:                                              ; preds = %189, %127, %32, %74
  %228 = phi ptr [ %77, %74 ], [ %34, %32 ], [ %129, %127 ], [ %192, %189 ]
  %229 = phi i8 [ 2, %74 ], [ 2, %32 ], [ 4, %127 ], [ 4, %189 ]
  %230 = phi i8 [ 32, %74 ], [ 16, %32 ], [ 32, %127 ], [ 64, %189 ]
  %231 = phi i32 [ 2, %74 ], [ 1, %32 ], [ 2, %127 ], [ 3, %189 ]
  store i8 %8, ptr %228, align 1, !tbaa !55
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
  store i64 %239, ptr %240, align 8, !tbaa !156
  br label %241

241:                                              ; preds = %232, %99, %4, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_invert_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !161
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !153
  switch i8 %5, label %78 [
    i8 6, label %6
    i8 4, label %42
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !158
  %9 = icmp eq i8 %8, 8
  %10 = icmp eq i32 %3, 0
  br i1 %9, label %11, label %25

11:                                               ; preds = %6
  br i1 %10, label %78, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !156
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %12 ]
  %18 = phi ptr [ %22, %16 ], [ %15, %12 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 -1
  %20 = load i8, ptr %19, align 1, !tbaa !55
  %21 = xor i8 %20, -1
  store i8 %21, ptr %19, align 1, !tbaa !55
  %22 = getelementptr inbounds i8, ptr %18, i64 -4
  %23 = add nuw i32 %17, 1
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %78, label %16, !llvm.loop !250

25:                                               ; preds = %6
  br i1 %10, label %78, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i32 [ %40, %30 ], [ 0, %26 ]
  %32 = phi ptr [ %39, %30 ], [ %29, %26 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !55
  %35 = xor i8 %34, -1
  store i8 %35, ptr %33, align 1, !tbaa !55
  %36 = getelementptr inbounds i8, ptr %32, i64 -2
  %37 = load i8, ptr %36, align 1, !tbaa !55
  %38 = xor i8 %37, -1
  store i8 %38, ptr %36, align 1, !tbaa !55
  %39 = getelementptr inbounds i8, ptr %32, i64 -8
  %40 = add nuw i32 %31, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %78, label %30, !llvm.loop !251

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !158
  %45 = icmp eq i8 %44, 8
  %46 = icmp eq i32 %3, 0
  br i1 %45, label %47, label %61

47:                                               ; preds = %42
  br i1 %46, label %78, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !156
  %51 = getelementptr inbounds i8, ptr %1, i64 %50
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i32 [ %59, %52 ], [ 0, %48 ]
  %54 = phi ptr [ %58, %52 ], [ %51, %48 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 -1
  %56 = load i8, ptr %55, align 1, !tbaa !55
  %57 = xor i8 %56, -1
  store i8 %57, ptr %55, align 1, !tbaa !55
  %58 = getelementptr i8, ptr %54, i64 -2
  %59 = add nuw i32 %53, 1
  %60 = icmp eq i32 %59, %3
  br i1 %60, label %78, label %52, !llvm.loop !252

61:                                               ; preds = %42
  br i1 %46, label %78, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !156
  %65 = getelementptr inbounds i8, ptr %1, i64 %64
  br label %66

66:                                               ; preds = %62, %66
  %67 = phi i32 [ %76, %66 ], [ 0, %62 ]
  %68 = phi ptr [ %75, %66 ], [ %65, %62 ]
  %69 = getelementptr inbounds i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1, !tbaa !55
  %71 = xor i8 %70, -1
  store i8 %71, ptr %69, align 1, !tbaa !55
  %72 = getelementptr inbounds i8, ptr %68, i64 -2
  %73 = load i8, ptr %72, align 1, !tbaa !55
  %74 = xor i8 %73, -1
  store i8 %74, ptr %72, align 1, !tbaa !55
  %75 = getelementptr inbounds i8, ptr %68, i64 -4
  %76 = add nuw i32 %67, 1
  %77 = icmp eq i32 %76, %3
  br i1 %77, label %78, label %66, !llvm.loop !253

78:                                               ; preds = %66, %52, %30, %16, %61, %47, %25, %11, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_swap_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !161
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !153
  switch i8 %5, label %69 [
    i8 6, label %6
    i8 4, label %37
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !158
  %9 = icmp eq i8 %8, 8
  %10 = icmp eq i32 %3, 0
  br i1 %9, label %11, label %24

11:                                               ; preds = %6
  br i1 %10, label %69, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !156
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %15, %12 ]
  %18 = phi i32 [ %22, %16 ], [ 0, %12 ]
  %19 = getelementptr i8, ptr %17, i64 -4
  %20 = load <4 x i8>, ptr %19, align 1, !tbaa !55
  %21 = shufflevector <4 x i8> %20, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %21, ptr %19, align 1, !tbaa !55
  %22 = add nuw i32 %18, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %69, label %16, !llvm.loop !254

24:                                               ; preds = %6
  br i1 %10, label %69, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !156
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i32 [ %35, %29 ], [ 0, %25 ]
  %31 = phi ptr [ %32, %29 ], [ %28, %25 ]
  %32 = getelementptr i8, ptr %31, i64 -8
  %33 = load <8 x i8>, ptr %32, align 1, !tbaa !55
  %34 = shufflevector <8 x i8> %33, <8 x i8> poison, <8 x i32> <i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  store <8 x i8> %34, ptr %32, align 1, !tbaa !55
  %35 = add nuw i32 %30, 1
  %36 = icmp eq i32 %35, %3
  br i1 %36, label %69, label %29, !llvm.loop !255

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !158
  %40 = icmp eq i8 %39, 8
  %41 = icmp eq i32 %3, 0
  br i1 %40, label %42, label %56

42:                                               ; preds = %37
  br i1 %41, label %69, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !156
  %46 = getelementptr inbounds i8, ptr %1, i64 %45
  br label %47

47:                                               ; preds = %43, %47
  %48 = phi i32 [ %54, %47 ], [ 0, %43 ]
  %49 = phi ptr [ %52, %47 ], [ %46, %43 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 -1
  %51 = load i8, ptr %50, align 1, !tbaa !55
  %52 = getelementptr i8, ptr %49, i64 -2
  %53 = load i8, ptr %52, align 1, !tbaa !55
  store i8 %53, ptr %50, align 1, !tbaa !55
  store i8 %51, ptr %52, align 1, !tbaa !55
  %54 = add nuw i32 %48, 1
  %55 = icmp eq i32 %54, %3
  br i1 %55, label %69, label %47, !llvm.loop !256

56:                                               ; preds = %37
  br i1 %41, label %69, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !156
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i32 [ %67, %61 ], [ 0, %57 ]
  %63 = phi ptr [ %64, %61 ], [ %60, %57 ]
  %64 = getelementptr i8, ptr %63, i64 -4
  %65 = load <4 x i8>, ptr %64, align 1, !tbaa !55
  %66 = shufflevector <4 x i8> %65, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %66, ptr %64, align 1, !tbaa !55
  %67 = add nuw i32 %62, 1
  %68 = icmp eq i32 %67, %3
  br i1 %68, label %69, label %61, !llvm.loop !257

69:                                               ; preds = %61, %47, %29, %16, %56, %42, %24, %11, %2
  ret void
}

; Function Attrs: optsize
declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local void @png_build_grayscale_palette(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = trunc i32 %5 to i8
  %9 = lshr i8 -117, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr inbounds [8 x i64], ptr @switch.table.png_build_grayscale_palette, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = shl nuw nsw i32 %5, 3
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 144115184082834943, %17
  %19 = trunc i64 %18 to i8
  br label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ 0, %12 ], [ %26, %20 ]
  %22 = phi i8 [ 0, %12 ], [ %27, %20 ]
  %23 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %21
  store i8 %22, ptr %23, align 1, !tbaa !67
  %24 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %21, i32 1
  store i8 %22, ptr %24, align 1, !tbaa !69
  %25 = getelementptr inbounds %struct.png_color_struct, ptr %1, i64 %21, i32 2
  store i8 %22, ptr %25, align 1, !tbaa !70
  %26 = add nuw nsw i64 %21, 1
  %27 = add i8 %22, %19
  %28 = icmp eq i64 %26, %15
  br i1 %28, label %29, label %20, !llvm.loop !258

29:                                               ; preds = %20, %7, %4, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_intrapixel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !153
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !158
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
  %19 = load i8, ptr %17, align 1, !tbaa !55
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !55
  %22 = add i8 %21, %19
  store i8 %22, ptr %17, align 1, !tbaa !55
  %23 = getelementptr inbounds i8, ptr %17, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !55
  %25 = add i8 %24, %21
  store i8 %25, ptr %23, align 1, !tbaa !55
  %26 = add nuw i32 %18, 1
  %27 = getelementptr inbounds i8, ptr %17, i64 %14
  %28 = icmp eq i32 %26, %8
  br i1 %28, label %71, label %16, !llvm.loop !259

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
  %37 = load i8, ptr %35, align 1, !tbaa !55
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !55
  %42 = zext i8 %41 to i32
  %43 = or disjoint i32 %39, %42
  %44 = getelementptr inbounds i8, ptr %35, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !55
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds i8, ptr %35, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !55
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = getelementptr inbounds i8, ptr %35, i64 4
  %53 = load i8, ptr %52, align 1, !tbaa !55
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = getelementptr inbounds i8, ptr %35, i64 5
  %57 = load i8, ptr %56, align 1, !tbaa !55
  %58 = zext i8 %57 to i32
  %59 = or disjoint i32 %55, %58
  %60 = add nuw nsw i32 %51, %43
  %61 = add nuw nsw i32 %59, %51
  %62 = lshr i32 %60, 8
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %35, align 1, !tbaa !55
  %64 = trunc i32 %60 to i8
  store i8 %64, ptr %40, align 1, !tbaa !55
  %65 = lshr i32 %61, 8
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %52, align 1, !tbaa !55
  %67 = trunc i32 %61 to i8
  store i8 %67, ptr %56, align 1, !tbaa !55
  %68 = add nuw i32 %36, 1
  %69 = getelementptr inbounds i8, ptr %35, i64 %32
  %70 = icmp eq i32 %68, %8
  br i1 %70, label %71, label %34, !llvm.loop !260

71:                                               ; preds = %34, %16, %31, %13, %7, %11, %29, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: noreturn optsize
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { nounwind }

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
!49 = !{i32 0, i32 -1}
!50 = !{!35, !39, i64 660}
!51 = !{!35, !39, i64 664}
!52 = !{!"pngrtran.c:translate_gamma_flags"}
!53 = !{!"pngrtran.c:convert_gamma_value"}
!54 = !{!35, !38, i64 888}
!55 = !{!36, !36, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!35, !38, i64 1072}
!59 = distinct !{!59, !57}
!60 = !{!42, !42, i64 0}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !57}
!63 = !{i64 0, i64 1, !55, i64 1, i64 1, !55, i64 2, i64 1, !55}
!64 = distinct !{!64, !57}
!65 = distinct !{!65, !57}
!66 = distinct !{!66, !57}
!67 = !{!68, !36, i64 0}
!68 = !{!"png_color_struct", !36, i64 0, !36, i64 1, !36, i64 2}
!69 = !{!68, !36, i64 1}
!70 = !{!68, !36, i64 2}
!71 = distinct !{!71, !57}
!72 = distinct !{!72, !57}
!73 = !{!35, !38, i64 1080}
!74 = !{!35, !38, i64 1088}
!75 = distinct !{!75, !57}
!76 = !{!38, !38, i64 0}
!77 = !{!78, !38, i64 0}
!78 = !{!"png_dsort_struct", !38, i64 0, !36, i64 8, !36, i64 9}
!79 = !{!78, !36, i64 8}
!80 = !{!78, !36, i64 9}
!81 = distinct !{!81, !57}
!82 = distinct !{!82, !57}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !57}
!85 = distinct !{!85, !57}
!86 = distinct !{!86, !57}
!87 = distinct !{!87, !57}
!88 = !{!35, !38, i64 568}
!89 = !{!35, !42, i64 576}
!90 = !{!35, !38, i64 880}
!91 = distinct !{!91, !57}
!92 = distinct !{!92, !57}
!93 = distinct !{!93, !57}
!94 = distinct !{!94, !57}
!95 = !{!35, !36, i64 591}
!96 = !{!35, !42, i64 1028}
!97 = !{!35, !42, i64 1030}
!98 = !{!35, !36, i64 1026}
!99 = !{!35, !38, i64 256}
!100 = !{i32 0, i32 2}
!101 = !{!35, !42, i64 584}
!102 = !{!35, !39, i64 284}
!103 = !{!35, !42, i64 618}
!104 = !{!35, !42, i64 620}
!105 = !{!35, !42, i64 622}
!106 = !{!35, !42, i64 624}
!107 = !{!35, !36, i64 592}
!108 = !{i64 0, i64 1, !55, i64 2, i64 2, !60, i64 4, i64 2, !60, i64 6, i64 2, !60, i64 8, i64 2, !60}
!109 = !{!35, !38, i64 672}
!110 = !{!35, !38, i64 696}
!111 = !{!35, !38, i64 736}
!112 = !{i64 0, i64 1, !55, i64 1, i64 1, !55}
!113 = !{i64 0, i64 1, !55}
!114 = !{!35, !38, i64 688}
!115 = distinct !{!115, !57}
!116 = !{!35, !42, i64 634}
!117 = !{!35, !42, i64 628}
!118 = !{!35, !42, i64 630}
!119 = !{!35, !42, i64 632}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = !{!35, !36, i64 720}
!123 = distinct !{!123, !57}
!124 = !{!35, !36, i64 721}
!125 = distinct !{!125, !57}
!126 = !{!35, !36, i64 722}
!127 = distinct !{!127, !57}
!128 = !{!"pngrtran.c:png_gamma_threshold"}
!129 = !{!39, !39, i64 0}
!130 = !{!"pngrtran.c:png_init_palette_transformations"}
!131 = distinct !{!131, !57}
!132 = !{!35, !36, i64 616}
!133 = distinct !{!133, !57}
!134 = !{!"pngrtran.c:png_init_rgb_transformations"}
!135 = !{!35, !42, i64 752}
!136 = !{!35, !42, i64 750}
!137 = !{!35, !42, i64 748}
!138 = !{!35, !42, i64 746}
!139 = !{!140, !36, i64 37}
!140 = !{!"png_info_def", !39, i64 0, !39, i64 4, !39, i64 8, !41, i64 16, !38, i64 24, !42, i64 32, !42, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !39, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !38, i64 72, !141, i64 80, !44, i64 88, !38, i64 96, !43, i64 104, !43, i64 114, !39, i64 124, !39, i64 128, !36, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !38, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !38, i64 192, !39, i64 200, !39, i64 204, !38, i64 208, !38, i64 216, !36, i64 224, !36, i64 225, !39, i64 228, !38, i64 232, !39, i64 240, !38, i64 248, !38, i64 256, !39, i64 264, !36, i64 268, !38, i64 272, !39, i64 280, !36, i64 284, !38, i64 288, !38, i64 296, !38, i64 304}
!141 = !{!"png_time_struct", !42, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!142 = !{!140, !36, i64 36}
!143 = !{!140, !42, i64 34}
!144 = !{!140, !39, i64 52}
!145 = !{!140, !36, i64 41}
!146 = !{!35, !36, i64 280}
!147 = !{!35, !36, i64 281}
!148 = !{!140, !36, i64 42}
!149 = !{!140, !39, i64 0}
!150 = !{!140, !41, i64 16}
!151 = !{!35, !41, i64 552}
!152 = !{!35, !38, i64 512}
!153 = !{!154, !36, i64 16}
!154 = !{!"png_row_info_struct", !39, i64 0, !41, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!155 = !{!35, !36, i64 1025}
!156 = !{!154, !41, i64 8}
!157 = !{!35, !42, i64 606}
!158 = !{!154, !36, i64 17}
!159 = !{!154, !36, i64 18}
!160 = !{!154, !36, i64 19}
!161 = !{!154, !39, i64 0}
!162 = distinct !{!162, !57}
!163 = distinct !{!163, !57}
!164 = distinct !{!164, !57}
!165 = distinct !{!165, !57}
!166 = distinct !{!166, !57}
!167 = !{!43, !42, i64 8}
!168 = distinct !{!168, !57}
!169 = distinct !{!169, !57}
!170 = distinct !{!170, !57}
!171 = distinct !{!171, !57}
!172 = distinct !{!172, !57}
!173 = !{!43, !42, i64 6}
!174 = !{!43, !42, i64 4}
!175 = !{!43, !42, i64 2}
!176 = distinct !{!176, !57}
!177 = distinct !{!177, !57}
!178 = distinct !{!178, !57}
!179 = distinct !{!179, !57}
!180 = !{!35, !38, i64 712}
!181 = !{!35, !38, i64 704}
!182 = !{!35, !38, i64 680}
!183 = !{!35, !39, i64 656}
!184 = distinct !{!184, !57}
!185 = distinct !{!185, !57}
!186 = distinct !{!186, !57}
!187 = distinct !{!187, !57}
!188 = distinct !{!188, !57}
!189 = distinct !{!189, !57}
!190 = distinct !{!190, !57}
!191 = distinct !{!191, !57}
!192 = distinct !{!192, !57}
!193 = distinct !{!193, !57}
!194 = distinct !{!194, !57}
!195 = distinct !{!195, !57}
!196 = distinct !{!196, !57}
!197 = distinct !{!197, !57}
!198 = distinct !{!198, !57}
!199 = distinct !{!199, !57}
!200 = distinct !{!200, !57}
!201 = distinct !{!201, !57}
!202 = distinct !{!202, !57}
!203 = distinct !{!203, !57}
!204 = distinct !{!204, !57}
!205 = distinct !{!205, !57}
!206 = distinct !{!206, !57}
!207 = distinct !{!207, !57}
!208 = distinct !{!208, !57}
!209 = distinct !{!209, !57}
!210 = distinct !{!210, !57}
!211 = distinct !{!211, !57}
!212 = distinct !{!212, !57}
!213 = distinct !{!213, !57}
!214 = distinct !{!214, !57}
!215 = distinct !{!215, !57}
!216 = distinct !{!216, !57}
!217 = distinct !{!217, !57}
!218 = distinct !{!218, !57}
!219 = distinct !{!219, !57}
!220 = distinct !{!220, !57}
!221 = distinct !{!221, !57}
!222 = distinct !{!222, !57}
!223 = distinct !{!223, !57}
!224 = distinct !{!224, !57}
!225 = distinct !{!225, !57}
!226 = distinct !{!226, !57}
!227 = distinct !{!227, !57}
!228 = distinct !{!228, !57}
!229 = !{!44, !36, i64 0}
!230 = !{!44, !36, i64 1}
!231 = !{!44, !36, i64 2}
!232 = !{!44, !36, i64 3}
!233 = !{!44, !36, i64 4}
!234 = distinct !{!234, !57}
!235 = distinct !{!235, !57}
!236 = distinct !{!236, !57}
!237 = distinct !{!237, !57}
!238 = distinct !{!238, !57}
!239 = distinct !{!239, !57}
!240 = distinct !{!240, !57}
!241 = distinct !{!241, !57}
!242 = distinct !{!242, !57}
!243 = distinct !{!243, !57}
!244 = distinct !{!244, !57}
!245 = distinct !{!245, !57}
!246 = distinct !{!246, !57}
!247 = distinct !{!247, !57}
!248 = distinct !{!248, !57}
!249 = distinct !{!249, !57}
!250 = distinct !{!250, !57}
!251 = distinct !{!251, !57}
!252 = distinct !{!252, !57}
!253 = distinct !{!253, !57}
!254 = distinct !{!254, !57}
!255 = distinct !{!255, !57}
!256 = distinct !{!256, !57}
!257 = distinct !{!257, !57}
!258 = distinct !{!258, !57}
!259 = distinct !{!259, !57}
!260 = distinct !{!260, !57}

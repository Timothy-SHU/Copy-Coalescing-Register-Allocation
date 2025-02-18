; ModuleID = 'libpng/pngset.c'
source_filename = "libpng/pngset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_XYZ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_xy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_text_struct = type { i32, ptr, ptr, i64, i64, ptr, ptr }
%struct.png_sPLT_struct = type { ptr, i8, ptr, i32 }

@.str = private unnamed_addr constant [38 x i8] c"XYZ values out of representable range\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cHRM White X\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cHRM White Y\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cHRM Red X\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cHRM Red Y\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cHRM Green X\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"cHRM Green Y\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cHRM Blue X\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cHRM Blue Y\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cHRM Red Z\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Out of range gamma value ignored\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"png_set_gAMA\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Invalid palette size, hIST allocation skipped\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Insufficient memory for hIST chunk data\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Invalid pCAL equation type\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Invalid format for pCAL parameter\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Insufficient memory for pCAL purpose\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Insufficient memory for pCAL units\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Insufficient memory for pCAL params\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Insufficient memory for pCAL parameter\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Invalid sCAL unit\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Invalid sCAL width\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Invalid sCAL height\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Memory allocation failed while processing sCAL\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Invalid sCAL width ignored\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Invalid sCAL height ignored\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Invalid palette length\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Insufficient memory to process iCCP chunk\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Insufficient memory to process iCCP profile\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Insufficient memory to store text\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"text compression mode is out of range\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Ignoring invalid time value\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"tRNS chunk has out-of-range samples for bit_depth\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"No memory for sPLT palettes\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"Out of memory while processing sPLT chunk\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"Out of memory while processing unknown chunk\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"Attempt to set buffer size beyond max ignored\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_bKGD(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %8, ptr noundef nonnull align 2 dereferenceable(10) %2, i64 10, i1 false)
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = or i32 %10, 32
  store i32 %11, ptr %9, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_cHRM_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #2 {
  %11 = icmp eq ptr %0, null
  %12 = icmp eq ptr %1, null
  %13 = or i1 %11, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  store i32 %2, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  store i32 %3, ptr %19, align 4, !tbaa !46
  %20 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  store i32 %4, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  store i32 %5, ptr %21, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  store i32 %6, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  store i32 %7, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  store i32 %8, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  store i32 %9, ptr %25, align 4, !tbaa !52
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = or i32 %27, 4
  store i32 %28, ptr %26, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %10, %17, %14
  ret void
}

declare i32 @png_check_cHRM_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_cHRM_XYZ_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = alloca %struct.png_XYZ, align 8
  %13 = alloca %struct.png_xy, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #11
  %14 = icmp eq ptr %0, null
  %15 = icmp eq ptr %1, null
  %16 = or i1 %14, %15
  br i1 %16, label %59, label %17

17:                                               ; preds = %11
  store i32 %2, ptr %12, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 1
  store i32 %3, ptr %18, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 2
  store i32 %4, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 3
  store i32 %5, ptr %20, align 4, !tbaa !57
  %21 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 4
  store i32 %6, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 5
  store i32 %7, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 6
  store i32 %8, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 7
  store i32 %9, ptr %24, align 4, !tbaa !61
  %25 = getelementptr inbounds %struct.png_XYZ, ptr %12, i64 0, i32 8
  store i32 %10, ptr %25, align 8, !tbaa !62
  %26 = call i32 @png_xy_from_XYZ(ptr noundef nonnull %13, ptr noundef nonnull byval(%struct.png_XYZ) align 8 %12) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #12
  unreachable

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !63
  %32 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !65
  %34 = load i32, ptr %13, align 4, !tbaa !66
  %35 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !67
  %37 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !68
  %39 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !69
  %41 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !70
  %43 = getelementptr inbounds %struct.png_xy, ptr %13, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !71
  %45 = call i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %31, i32 noundef %33, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  store i32 %31, ptr %48, align 8, !tbaa !45
  %49 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  store i32 %33, ptr %49, align 4, !tbaa !46
  %50 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  store i32 %34, ptr %50, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  store i32 %36, ptr %51, align 4, !tbaa !48
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  store i32 %38, ptr %52, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  store i32 %40, ptr %53, align 4, !tbaa !50
  %54 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  store i32 %42, ptr %54, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  store i32 %44, ptr %55, align 4, !tbaa !52
  %56 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !34
  %58 = or i32 %57, 4
  store i32 %58, ptr %56, align 8, !tbaa !34
  br label %59

59:                                               ; preds = %47, %29, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @png_xy_from_XYZ(ptr noundef, ptr noundef byval(%struct.png_XYZ) align 8) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @png_set_cHRM(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) local_unnamed_addr #2 {
  %11 = tail call i32 @png_fixed(ptr noundef %0, double noundef %2, ptr noundef nonnull @.str.1) #11
  %12 = tail call i32 @png_fixed(ptr noundef %0, double noundef %3, ptr noundef nonnull @.str.2) #11
  %13 = tail call i32 @png_fixed(ptr noundef %0, double noundef %4, ptr noundef nonnull @.str.3) #11
  %14 = tail call i32 @png_fixed(ptr noundef %0, double noundef %5, ptr noundef nonnull @.str.4) #11
  %15 = tail call i32 @png_fixed(ptr noundef %0, double noundef %6, ptr noundef nonnull @.str.5) #11
  %16 = tail call i32 @png_fixed(ptr noundef %0, double noundef %7, ptr noundef nonnull @.str.6) #11
  %17 = tail call i32 @png_fixed(ptr noundef %0, double noundef %8, ptr noundef nonnull @.str.7) #11
  %18 = tail call i32 @png_fixed(ptr noundef %0, double noundef %9, ptr noundef nonnull @.str.8) #11
  %19 = icmp eq ptr %0, null
  %20 = icmp eq ptr %1, null
  %21 = or i1 %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %10
  %23 = tail call i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  store i32 %11, ptr %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  store i32 %12, ptr %27, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  store i32 %13, ptr %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  store i32 %14, ptr %29, align 4, !tbaa !48
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  store i32 %15, ptr %30, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  store i32 %16, ptr %31, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  store i32 %17, ptr %32, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  store i32 %18, ptr %33, align 4, !tbaa !52
  %34 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = or i32 %35, 4
  store i32 %36, ptr %34, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %10, %22, %25
  ret void
}

declare i32 @png_fixed(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_cHRM_XYZ(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) local_unnamed_addr #2 {
  %12 = tail call i32 @png_fixed(ptr noundef %0, double noundef %2, ptr noundef nonnull @.str.3) #11
  %13 = tail call i32 @png_fixed(ptr noundef %0, double noundef %3, ptr noundef nonnull @.str.4) #11
  %14 = tail call i32 @png_fixed(ptr noundef %0, double noundef %4, ptr noundef nonnull @.str.9) #11
  %15 = tail call i32 @png_fixed(ptr noundef %0, double noundef %5, ptr noundef nonnull @.str.3) #11
  %16 = tail call i32 @png_fixed(ptr noundef %0, double noundef %6, ptr noundef nonnull @.str.4) #11
  %17 = tail call i32 @png_fixed(ptr noundef %0, double noundef %7, ptr noundef nonnull @.str.9) #11
  %18 = tail call i32 @png_fixed(ptr noundef %0, double noundef %8, ptr noundef nonnull @.str.3) #11
  %19 = tail call i32 @png_fixed(ptr noundef %0, double noundef %9, ptr noundef nonnull @.str.4) #11
  %20 = tail call i32 @png_fixed(ptr noundef %0, double noundef %10, ptr noundef nonnull @.str.9) #11
  tail call void @png_set_cHRM_XYZ_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_gAMA_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = add i32 %2, -625000001
  %9 = icmp ult i32 %8, -624999985
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  br label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  store i32 %2, ptr %12, align 4, !tbaa !72
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %3, %11, %10
  ret void
}

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_gAMA(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @png_fixed(ptr noundef %0, double noundef %2, ptr noundef nonnull @.str.11) #11
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = add i32 %4, -625000001
  %10 = icmp ult i32 %9, -624999985
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  br label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  store i32 %4, ptr %13, align 4, !tbaa !72
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %3, %11, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_hIST(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %9 = load i16, ptr %8, align 8, !tbaa !73
  %10 = add i16 %9, -257
  %11 = icmp ult i16 %10, -256
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  br label %34

13:                                               ; preds = %7
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 8, i32 noundef 0) #11
  %14 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 512) #11
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 106
  store ptr %14, ptr %15, align 8, !tbaa !74
  %16 = icmp eq ptr %14, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i16, ptr %8, align 8, !tbaa !73
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i16, ptr %8, align 8, !tbaa !73
  %22 = tail call i16 @llvm.umax.i16(i16 %21, i16 1)
  %23 = zext i16 %22 to i64
  %24 = shl nuw nsw i64 %23, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %14, ptr noundef nonnull align 2 dereferenceable(1) %2, i64 %24, i1 false), !tbaa !78
  br label %26

25:                                               ; preds = %13
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.13) #11
  br label %34

26:                                               ; preds = %20, %17
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 32
  store ptr %14, ptr %27, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !34
  %30 = or i32 %29, 64
  store i32 %30, ptr %28, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %32 = load i32, ptr %31, align 4, !tbaa !80
  %33 = or i32 %32, 8
  store i32 %33, ptr %31, align 4, !tbaa !80
  br label %34

34:                                               ; preds = %3, %26, %25, %12
  ret void
}

declare void @png_free_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  store i32 %2, ptr %1, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  store i32 %3, ptr %14, align 4, !tbaa !82
  %15 = trunc i32 %4 to i8
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  store i8 %15, ptr %16, align 4, !tbaa !83
  %17 = trunc i32 %5 to i8
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  store i8 %17, ptr %18, align 1, !tbaa !84
  %19 = trunc i32 %7 to i8
  %20 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 9
  store i8 %19, ptr %20, align 2, !tbaa !85
  %21 = trunc i32 %8 to i8
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 10
  store i8 %21, ptr %22, align 1, !tbaa !86
  %23 = trunc i32 %6 to i8
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 11
  store i8 %23, ptr %24, align 8, !tbaa !87
  %25 = and i32 %4, 255
  %26 = and i32 %5, 255
  %27 = and i32 %6, 255
  %28 = and i32 %7, 255
  %29 = and i32 %8, 255
  tail call void @png_check_IHDR(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29) #11
  %30 = load i8, ptr %18, align 1, !tbaa !84
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  store i8 1, ptr %33, align 1, !tbaa !88
  br label %40

34:                                               ; preds = %13
  %35 = and i8 %30, 2
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  br i1 %36, label %39, label %38

38:                                               ; preds = %34
  store i8 3, ptr %37, align 1, !tbaa !88
  br label %40

39:                                               ; preds = %34
  store i8 1, ptr %37, align 1, !tbaa !88
  br label %40

40:                                               ; preds = %38, %39, %32
  %41 = and i8 %30, 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %45 = load i8, ptr %44, align 1, !tbaa !88
  %46 = add i8 %45, 1
  store i8 %46, ptr %44, align 1, !tbaa !88
  br label %47

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %49 = load i8, ptr %48, align 1, !tbaa !88
  %50 = load i8, ptr %16, align 4, !tbaa !83
  %51 = mul i8 %50, %49
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 13
  store i8 %51, ptr %52, align 2, !tbaa !89
  %53 = icmp ugt i32 %2, 536870798
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = icmp ugt i8 %51, 7
  %56 = zext nneg i32 %2 to i64
  br i1 %55, label %57, label %61

57:                                               ; preds = %54
  %58 = lshr i8 %51, 3
  %59 = zext nneg i8 %58 to i64
  %60 = mul nuw nsw i64 %59, %56
  br label %66

61:                                               ; preds = %54
  %62 = zext nneg i8 %51 to i64
  %63 = mul nuw nsw i64 %62, %56
  %64 = add nuw nsw i64 %63, 7
  %65 = lshr i64 %64, 3
  br label %66

66:                                               ; preds = %57, %61, %47
  %67 = phi i64 [ 0, %47 ], [ %60, %57 ], [ %65, %61 ]
  %68 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 3
  store i64 %67, ptr %68, align 8, !tbaa !90
  br label %69

69:                                               ; preds = %66, %9
  ret void
}

declare void @png_check_IHDR(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_oFFs(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  store i32 %2, ptr %10, align 4, !tbaa !91
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  store i32 %3, ptr %11, align 8, !tbaa !92
  %12 = trunc i32 %4 to i8
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  store i8 %12, ptr %13, align 4, !tbaa !93
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = or i32 %15, 256
  store i32 %16, ptr %14, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %5, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_pCAL(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %88, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %15 = add i64 %14, 1
  %16 = icmp ugt i32 %5, 3
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %6, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = zext nneg i32 %6 to i64
  br label %25

21:                                               ; preds = %13
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.14) #12
  unreachable

22:                                               ; preds = %25
  %23 = add nuw nsw i64 %26, 1
  %24 = icmp eq i64 %23, %20
  br i1 %24, label %33, label %25, !llvm.loop !94

25:                                               ; preds = %19, %22
  %26 = phi i64 [ 0, %19 ], [ %23, %22 ]
  %27 = getelementptr inbounds ptr, ptr %8, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #13
  %30 = tail call i32 @png_check_fp_string(ptr noundef %28, i64 noundef %29) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %22

32:                                               ; preds = %25
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  unreachable

33:                                               ; preds = %22, %17
  %34 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %15) #11
  %35 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 41
  store ptr %34, ptr %35, align 8, !tbaa !98
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %88

38:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr align 1 %2, i64 %15, i1 false)
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 42
  store i32 %3, ptr %39, align 8, !tbaa !99
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 43
  store i32 %4, ptr %40, align 4, !tbaa !100
  %41 = trunc i32 %5 to i8
  %42 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 46
  store i8 %41, ptr %42, align 8, !tbaa !101
  %43 = trunc i32 %6 to i8
  %44 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 47
  store i8 %43, ptr %44, align 1, !tbaa !102
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #13
  %46 = add i64 %45, 1
  %47 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %46) #11
  %48 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 44
  store ptr %47, ptr %48, align 8, !tbaa !103
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  br label %88

51:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %7, i64 %46, i1 false)
  %52 = add nsw i32 %6, 1
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %54) #11
  %56 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 45
  store ptr %55, ptr %56, align 8, !tbaa !104
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.18) #11
  br label %88

59:                                               ; preds = %51
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %55, i8 0, i64 %54, i1 false)
  %60 = icmp sgt i32 %6, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %59
  %62 = zext nneg i32 %6 to i64
  br label %63

63:                                               ; preds = %61, %77
  %64 = phi i64 [ 0, %61 ], [ %79, %77 ]
  %65 = getelementptr inbounds ptr, ptr %8, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !97
  %67 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #13
  %68 = add i64 %67, 1
  %69 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %68) #11
  %70 = load ptr, ptr %56, align 8, !tbaa !104
  %71 = getelementptr inbounds ptr, ptr %70, i64 %64
  store ptr %69, ptr %71, align 8, !tbaa !97
  %72 = load ptr, ptr %56, align 8, !tbaa !104
  %73 = getelementptr inbounds ptr, ptr %72, i64 %64
  %74 = load ptr, ptr %73, align 8, !tbaa !97
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  br label %88

77:                                               ; preds = %63
  %78 = load ptr, ptr %65, align 8, !tbaa !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %74, ptr align 1 %78, i64 %68, i1 false)
  %79 = add nuw nsw i64 %64, 1
  %80 = icmp eq i64 %79, %62
  br i1 %80, label %81, label %63, !llvm.loop !105

81:                                               ; preds = %77, %59
  %82 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !34
  %84 = or i32 %83, 1024
  store i32 %84, ptr %82, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %86 = load i32, ptr %85, align 4, !tbaa !80
  %87 = or i32 %86, 128
  store i32 %87, ptr %85, align 4, !tbaa !80
  br label %88

88:                                               ; preds = %9, %81, %76, %58, %50, %37
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare i32 @png_check_fp_string(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sCAL_s(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = add i32 %2, -3
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  unreachable

13:                                               ; preds = %9
  %14 = icmp eq ptr %3, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #13
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %3, align 1, !tbaa !106
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @png_check_fp_string(ptr noundef nonnull %3, i64 noundef %16) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %13
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  unreachable

25:                                               ; preds = %21
  %26 = icmp eq ptr %4, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #13
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr %4, align 1, !tbaa !106
  %32 = icmp eq i8 %31, 45
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @png_check_fp_string(ptr noundef nonnull %4, i64 noundef %28) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %27, %25
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.22) #12
  unreachable

37:                                               ; preds = %33
  %38 = trunc i32 %2 to i8
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 57
  store i8 %38, ptr %39, align 4, !tbaa !107
  %40 = add i64 %16, 1
  %41 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %40) #11
  %42 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  store ptr %41, ptr %42, align 8, !tbaa !108
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %59

45:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr nonnull align 1 %3, i64 %40, i1 false)
  %46 = add i64 %28, 1
  %47 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %46) #11
  %48 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  store ptr %47, ptr %48, align 8, !tbaa !109
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %42, align 8, !tbaa !108
  tail call void @png_free(ptr noundef %0, ptr noundef %51) #11
  store ptr null, ptr %42, align 8, !tbaa !108
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %59

52:                                               ; preds = %45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr nonnull align 1 %4, i64 %46, i1 false)
  %53 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !34
  %55 = or i32 %54, 16384
  store i32 %55, ptr %53, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %57 = load i32, ptr %56, align 4, !tbaa !80
  %58 = or i32 %57, 256
  store i32 %58, ptr %56, align 4, !tbaa !80
  br label %59

59:                                               ; preds = %5, %52, %50, %44
  ret void
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 {
  %6 = alloca [18 x i8], align 16
  %7 = alloca [18 x i8], align 16
  %8 = fcmp ugt double %3, 0.000000e+00
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  br label %14

10:                                               ; preds = %5
  %11 = fcmp ugt double %4, 0.000000e+00
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %14

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %7) #11
  call void @png_ascii_from_fp(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 18, double noundef %3, i32 noundef 5) #11
  call void @png_ascii_from_fp(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 18, double noundef %4, i32 noundef 5) #11
  call void @png_set_sCAL_s(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #11
  br label %14

14:                                               ; preds = %12, %13, %9
  ret void
}

declare void @png_ascii_from_fp(ptr noundef, ptr noundef, i64 noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sCAL_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca [18 x i8], align 16
  %7 = alloca [18 x i8], align 16
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  br label %14

10:                                               ; preds = %5
  %11 = icmp slt i32 %4, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %14

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %7) #11
  call void @png_ascii_from_fixed(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 18, i32 noundef %3) #11
  call void @png_ascii_from_fixed(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 18, i32 noundef %4) #11
  call void @png_set_sCAL_s(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #11
  br label %14

14:                                               ; preds = %12, %13, %9
  ret void
}

declare void @png_ascii_from_fixed(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_pHYs(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  store i32 %2, ptr %10, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  store i32 %3, ptr %11, align 4, !tbaa !111
  %12 = trunc i32 %4 to i8
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  store i8 %12, ptr %13, align 8, !tbaa !112
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = or i32 %15, 128
  store i32 %16, ptr %14, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %5, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_PLTE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = icmp ugt i32 %3, 256
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %12 = load i8, ptr %11, align 1, !tbaa !84
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.26) #12
  unreachable

15:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.26) #11
  br label %31

16:                                               ; preds = %8
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 4096, i32 noundef 0) #11
  %17 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef 768) #11
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  store ptr %17, ptr %18, align 8, !tbaa !113
  %19 = mul nuw nsw i32 %3, 3
  %20 = zext nneg i32 %19 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %2, i64 %20, i1 false)
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 4
  store ptr %17, ptr %21, align 8, !tbaa !114
  %22 = trunc i32 %3 to i16
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  store i16 %22, ptr %23, align 8, !tbaa !115
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  store i16 %22, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %26 = load i32, ptr %25, align 4, !tbaa !80
  %27 = or i32 %26, 4096
  store i32 %27, ptr %25, align 4, !tbaa !80
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !34
  %30 = or i32 %29, 8
  store i32 %30, ptr %28, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %4, %16, %15
  ret void
}

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_sBIT(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %8, ptr noundef nonnull align 1 dereferenceable(5) %2, i64 5, i1 false)
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = or i32 %10, 2
  store i32 %11, ptr %9, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_sRGB(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 17
  store i8 %8, ptr %9, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = or i32 %11, 2048
  store i32 %12, ptr %10, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sRGB_gAMA_and_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 17
  store i8 %8, ptr %9, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = or i32 %11, 2048
  store i32 %12, ptr %10, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  store i32 45455, ptr %13, align 4, !tbaa !72
  %14 = or i32 %11, 2049
  store i32 %14, ptr %10, align 8, !tbaa !34
  %15 = tail call i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef 31270, i32 noundef 32900, i32 noundef 64000, i32 noundef 33000, i32 noundef 30000, i32 noundef 60000, i32 noundef 15000, i32 noundef 6000) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  store i32 31270, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  store i32 32900, ptr %19, align 4, !tbaa !46
  %20 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  store i32 64000, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  store i32 33000, ptr %21, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  store i32 30000, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  store i32 60000, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  store i32 15000, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  store i32 6000, ptr %25, align 4, !tbaa !52
  %26 = load i32, ptr %10, align 8, !tbaa !34
  %27 = or i32 %26, 4
  store i32 %27, ptr %10, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %17, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_iCCP(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %2, null
  %11 = or i1 %9, %10
  %12 = icmp eq ptr %4, null
  %13 = or i1 %11, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %6
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %16 = add i64 %15, 1
  %17 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.27) #11
  br label %37

20:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr align 1 %2, i64 %16, i1 false)
  %21 = zext i32 %5 to i64
  %22 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %21) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %17) #11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.28) #11
  br label %37

25:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %4, i64 %21, i1 false)
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 16, i32 noundef 0) #11
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 53
  store i32 %5, ptr %26, align 8, !tbaa !117
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 51
  store ptr %17, ptr %27, align 8, !tbaa !118
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 52
  store ptr %22, ptr %28, align 8, !tbaa !119
  %29 = trunc i32 %3 to i8
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 54
  store i8 %29, ptr %30, align 4, !tbaa !120
  %31 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %32 = load i32, ptr %31, align 4, !tbaa !80
  %33 = or i32 %32, 16
  store i32 %33, ptr %31, align 4, !tbaa !80
  %34 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = or i32 %35, 4096
  store i32 %36, ptr %34, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %6, %25, %24, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_text(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !121
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.29) #12
  unreachable

8:                                                ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp eq i32 %3, 0
  %9 = or i1 %7, %8
  br i1 %9, label %157, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %12 = load i32, ptr %11, align 4, !tbaa !122
  %13 = add nsw i32 %12, %3
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 19
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %13, 8
  store i32 %22, ptr %14, align 8, !tbaa !123
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, 56
  %25 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %24) #11
  store ptr %25, ptr %18, align 8, !tbaa !124
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 %15, ptr %14, align 8, !tbaa !123
  store ptr %19, ptr %18, align 8, !tbaa !124
  br label %31

28:                                               ; preds = %21
  %29 = sext i32 %15 to i64
  %30 = mul nsw i64 %29, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %19, i64 %30, i1 false)
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %19) #11
  br label %31

31:                                               ; preds = %28, %27
  br i1 %26, label %157, label %43

32:                                               ; preds = %17
  %33 = add nsw i32 %3, 8
  store i32 %33, ptr %14, align 8, !tbaa !123
  store i32 0, ptr %11, align 4, !tbaa !122
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 56
  %36 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %35) #11
  store ptr %36, ptr %18, align 8, !tbaa !124
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 %12, ptr %11, align 4, !tbaa !122
  store i32 %15, ptr %14, align 8, !tbaa !123
  br label %157

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %41 = load i32, ptr %40, align 4, !tbaa !80
  %42 = or i32 %41, 16384
  store i32 %42, ptr %40, align 4, !tbaa !80
  br label %43

43:                                               ; preds = %39, %31, %10
  %44 = icmp sgt i32 %3, 0
  br i1 %44, label %45, label %157

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %47 = zext nneg i32 %3 to i64
  br label %48

48:                                               ; preds = %45, %154
  %49 = phi i64 [ 0, %45 ], [ %155, %154 ]
  %50 = load ptr, ptr %46, align 8, !tbaa !124
  %51 = load i32, ptr %11, align 4, !tbaa !122
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52
  %54 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49
  %55 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !125
  %57 = icmp eq ptr %56, null
  br i1 %57, label %152, label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %54, align 8, !tbaa !127
  %60 = add i32 %59, -3
  %61 = icmp ult i32 %60, -4
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.30) #11
  br label %152

63:                                               ; preds = %58
  %64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #13
  %65 = icmp slt i32 %59, 1
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !128
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #13
  br label %72

72:                                               ; preds = %66, %70
  %73 = phi i64 [ %71, %70 ], [ 0, %66 ]
  %74 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !129
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #13
  br label %79

79:                                               ; preds = %72, %63, %77
  %80 = phi i64 [ %73, %77 ], [ 0, %63 ], [ %73, %72 ]
  %81 = phi i64 [ %78, %77 ], [ 0, %63 ], [ 0, %72 ]
  %82 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !130
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i8, ptr %83, align 1, !tbaa !106
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %79
  %89 = icmp slt i32 %59, 1
  %90 = select i1 %89, i32 -1, i32 1
  br label %93

91:                                               ; preds = %85
  %92 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #13
  br label %93

93:                                               ; preds = %88, %91
  %94 = phi i32 [ %59, %91 ], [ %90, %88 ]
  %95 = phi i64 [ %92, %91 ], [ 0, %88 ]
  store i32 %94, ptr %53, align 8, !tbaa !127
  %96 = add i64 %64, 4
  %97 = add i64 %96, %80
  %98 = add i64 %97, %81
  %99 = add i64 %98, %95
  %100 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %99) #11
  %101 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !125
  %102 = icmp eq ptr %100, null
  br i1 %102, label %152, label %103

103:                                              ; preds = %93
  %104 = load ptr, ptr %55, align 8, !tbaa !125
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %100, ptr align 1 %104, i64 %64, i1 false)
  %105 = load ptr, ptr %101, align 8, !tbaa !125
  %106 = getelementptr inbounds i8, ptr %105, i64 %64
  store i8 0, ptr %106, align 1, !tbaa !106
  %107 = load i32, ptr %54, align 8, !tbaa !127
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load ptr, ptr %101, align 8, !tbaa !125
  %111 = getelementptr inbounds i8, ptr %110, i64 %64
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  %113 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 5
  store ptr %112, ptr %113, align 8, !tbaa !128
  %114 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %112, ptr align 1 %115, i64 %80, i1 false)
  %116 = load ptr, ptr %113, align 8, !tbaa !128
  %117 = getelementptr inbounds i8, ptr %116, i64 %80
  store i8 0, ptr %117, align 1, !tbaa !106
  %118 = load ptr, ptr %113, align 8, !tbaa !128
  %119 = getelementptr inbounds i8, ptr %118, i64 %80
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 6
  store ptr %120, ptr %121, align 8, !tbaa !129
  %122 = getelementptr inbounds %struct.png_text_struct, ptr %2, i64 %49, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !129
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr align 1 %123, i64 %81, i1 false)
  %124 = load ptr, ptr %121, align 8, !tbaa !129
  %125 = getelementptr inbounds i8, ptr %124, i64 %81
  store i8 0, ptr %125, align 1, !tbaa !106
  br label %128

126:                                              ; preds = %103
  %127 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  br label %128

128:                                              ; preds = %126, %109
  %129 = phi ptr [ %101, %126 ], [ %121, %109 ]
  %130 = phi i64 [ %64, %126 ], [ %81, %109 ]
  %131 = load ptr, ptr %129, align 8, !tbaa !97
  %132 = getelementptr inbounds i8, ptr %131, i64 %130
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  %134 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !130
  %135 = icmp eq i64 %95, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !130
  %139 = load ptr, ptr %82, align 8, !tbaa !130
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %138, ptr align 1 %139, i64 %95, i1 false)
  br label %140

140:                                              ; preds = %136, %128
  %141 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !130
  %143 = getelementptr inbounds i8, ptr %142, i64 %95
  store i8 0, ptr %143, align 1, !tbaa !106
  %144 = load i32, ptr %53, align 8, !tbaa !127
  %145 = icmp sgt i32 %144, 0
  %146 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 3
  %147 = getelementptr inbounds %struct.png_text_struct, ptr %50, i64 %52, i32 4
  %148 = select i1 %145, i64 0, i64 %95
  %149 = select i1 %145, i64 %95, i64 0
  store i64 %148, ptr %146, align 8, !tbaa !131
  store i64 %149, ptr %147, align 8, !tbaa !132
  %150 = load i32, ptr %11, align 4, !tbaa !122
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %11, align 4, !tbaa !122
  br label %152

152:                                              ; preds = %93, %48, %140, %62
  %153 = phi i32 [ 4, %62 ], [ 0, %140 ], [ 4, %48 ], [ 1, %93 ]
  switch i32 %153, label %157 [
    i32 0, label %154
    i32 4, label %154
  ]

154:                                              ; preds = %152, %152
  %155 = add nuw nsw i64 %49, 1
  %156 = icmp eq i64 %155, %47
  br i1 %156, label %157, label %48, !llvm.loop !133

157:                                              ; preds = %152, %154, %43, %38, %31, %4
  %158 = phi i32 [ 0, %4 ], [ 1, %31 ], [ 1, %38 ], [ 0, %43 ], [ 0, %154 ], [ 1, %152 ]
  ret i32 %158
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_tIME(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !134
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_time_struct, ptr %2, i64 0, i32 1
  %14 = load i8, ptr %13, align 2, !tbaa !135
  %15 = add i8 %14, -13
  %16 = icmp ult i8 %15, -12
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.png_time_struct, ptr %2, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !136
  %20 = add i8 %19, -32
  %21 = icmp ult i8 %20, -31
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.png_time_struct, ptr %2, i64 0, i32 3
  %24 = load i8, ptr %23, align 2, !tbaa !137
  %25 = icmp ugt i8 %24, 23
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_time_struct, ptr %2, i64 0, i32 4
  %28 = load i8, ptr %27, align 1, !tbaa !138
  %29 = icmp ugt i8 %28, 59
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.png_time_struct, ptr %2, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !139
  %33 = icmp ugt i8 %32, 60
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %22, %17, %12
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.31) #11
  br label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 21
  %37 = load i64, ptr %2, align 2
  store i64 %37, ptr %36, align 8
  %38 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !34
  %40 = or i32 %39, 512
  store i32 %40, ptr %38, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %3, %7, %35, %34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_tRNS(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %2, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 8192, i32 noundef 0) #11
  %12 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 256) #11
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  store ptr %12, ptr %13, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 85
  store ptr %12, ptr %14, align 8, !tbaa !141
  %15 = add i32 %3, -1
  %16 = icmp ult i32 %15, 256
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr nonnull align 1 %2, i64 %18, i1 false)
  br label %19

19:                                               ; preds = %11, %17, %9
  %20 = icmp eq ptr %4, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 4, !tbaa !83
  %24 = zext nneg i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %27 = load i8, ptr %26, align 1, !tbaa !84
  switch i8 %27, label %51 [
    i8 0, label %28
    i8 2, label %35
  ]

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.png_color_16_struct, ptr %4, i64 0, i32 4
  %30 = load i16, ptr %29, align 2, !tbaa !142
  %31 = zext i16 %30 to i32
  %32 = icmp slt i32 %25, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = icmp eq i8 %27, 2
  br i1 %34, label %35, label %51

35:                                               ; preds = %21, %33
  %36 = getelementptr inbounds %struct.png_color_16_struct, ptr %4, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !143
  %38 = zext i16 %37 to i32
  %39 = icmp slt i32 %25, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.png_color_16_struct, ptr %4, i64 0, i32 2
  %42 = load i16, ptr %41, align 2, !tbaa !144
  %43 = zext i16 %42 to i32
  %44 = icmp slt i32 %25, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.png_color_16_struct, ptr %4, i64 0, i32 3
  %47 = load i16, ptr %46, align 2, !tbaa !145
  %48 = zext i16 %47 to i32
  %49 = icmp slt i32 %25, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40, %35, %28
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.32) #11
  br label %51

51:                                               ; preds = %21, %50, %45, %33
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %52, ptr noundef nonnull align 2 dereferenceable(10) %4, i64 10, i1 false)
  %53 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %54

54:                                               ; preds = %51, %19
  %55 = phi i32 [ %53, %51 ], [ %3, %19 ]
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  store i16 %56, ptr %57, align 2, !tbaa !146
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !34
  %62 = or i32 %61, 16
  store i32 %62, ptr %60, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %64 = load i32, ptr %63, align 4, !tbaa !80
  %65 = or i32 %64, 8192
  store i32 %65, ptr %63, align 4, !tbaa !80
  br label %66

66:                                               ; preds = %5, %59, %54
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sPLT(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %72, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 56
  %10 = load i32, ptr %9, align 8, !tbaa !147
  %11 = add i32 %10, %3
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 5
  %14 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %13) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.33) #11
  br label %72

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  %19 = load ptr, ptr %18, align 8, !tbaa !148
  %20 = load i32, ptr %9, align 8, !tbaa !147
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %14, ptr align 8 %19, i64 %22, i1 false)
  tail call void @png_free(ptr noundef %0, ptr noundef %19) #11
  store ptr null, ptr %18, align 8, !tbaa !148
  %23 = icmp sgt i32 %3, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %17
  %25 = zext nneg i32 %3 to i64
  br label %26

26:                                               ; preds = %24, %60
  %27 = phi i64 [ 0, %24 ], [ %61, %60 ]
  %28 = load i32, ptr %9, align 8, !tbaa !147
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.png_sPLT_struct, ptr %14, i64 %29
  %31 = getelementptr inbounds %struct.png_sPLT_struct, ptr %30, i64 %27
  %32 = getelementptr inbounds %struct.png_sPLT_struct, ptr %2, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !149
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #13
  %35 = add i64 %34, 1
  %36 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %35) #11
  store ptr %36, ptr %31, align 8, !tbaa !149
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.34) #11
  br label %60

39:                                               ; preds = %26
  %40 = load ptr, ptr %32, align 8, !tbaa !149
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr align 1 %40, i64 %35, i1 false)
  %41 = getelementptr inbounds %struct.png_sPLT_struct, ptr %2, i64 %27, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !151
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, 10
  %45 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %44) #11
  %46 = getelementptr inbounds %struct.png_sPLT_struct, ptr %30, i64 %27, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !152
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.34) #11
  %49 = load ptr, ptr %31, align 8, !tbaa !149
  tail call void @png_free(ptr noundef %0, ptr noundef %49) #11
  store ptr null, ptr %31, align 8, !tbaa !149
  br label %60

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.png_sPLT_struct, ptr %2, i64 %27, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !152
  %53 = load i32, ptr %41, align 8, !tbaa !151
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %45, ptr align 2 %52, i64 %55, i1 false)
  %56 = getelementptr inbounds %struct.png_sPLT_struct, ptr %30, i64 %27, i32 3
  store i32 %53, ptr %56, align 8, !tbaa !151
  %57 = getelementptr inbounds %struct.png_sPLT_struct, ptr %2, i64 %27, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !153
  %59 = getelementptr inbounds %struct.png_sPLT_struct, ptr %30, i64 %27, i32 1
  store i8 %58, ptr %59, align 8, !tbaa !153
  br label %60

60:                                               ; preds = %50, %48, %38
  %61 = add nuw nsw i64 %27, 1
  %62 = icmp eq i64 %61, %25
  br i1 %62, label %63, label %26, !llvm.loop !154

63:                                               ; preds = %60, %17
  store ptr %14, ptr %18, align 8, !tbaa !148
  %64 = load i32, ptr %9, align 8, !tbaa !147
  %65 = add i32 %64, %3
  store i32 %65, ptr %9, align 8, !tbaa !147
  %66 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !34
  %68 = or i32 %67, 8192
  store i32 %68, ptr %66, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %70 = load i32, ptr %69, align 4, !tbaa !80
  %71 = or i32 %70, 32
  store i32 %71, ptr %69, align 4, !tbaa !80
  br label %72

72:                                               ; preds = %4, %63, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_unknown_chunks(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp eq i32 %3, 0
  %9 = or i1 %7, %8
  br i1 %9, label %64, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %12 = load i32, ptr %11, align 8, !tbaa !155
  %13 = add nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 5
  %16 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  br label %64

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %21 = load ptr, ptr %20, align 8, !tbaa !156
  %22 = load i32, ptr %11, align 8, !tbaa !155
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %16, ptr align 8 %21, i64 %24, i1 false)
  tail call void @png_free(ptr noundef %0, ptr noundef %21) #11
  store ptr null, ptr %20, align 8, !tbaa !156
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %28 = zext nneg i32 %3 to i64
  br label %29

29:                                               ; preds = %26, %55
  %30 = phi i64 [ 0, %26 ], [ %56, %55 ]
  %31 = load i32, ptr %11, align 8, !tbaa !155
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %16, i64 %32
  %34 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %33, i64 %30
  %35 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %2, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %34, ptr noundef nonnull align 8 dereferenceable(5) %35, i64 5, i1 false)
  %36 = getelementptr inbounds [5 x i8], ptr %34, i64 0, i64 4
  store i8 0, ptr %36, align 4, !tbaa !106
  %37 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %2, i64 %30, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !157
  %39 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %33, i64 %30, i32 2
  store i64 %38, ptr %39, align 8, !tbaa !157
  %40 = load i32, ptr %27, align 4, !tbaa !134
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %33, i64 %30, i32 3
  store i8 %41, ptr %42, align 8, !tbaa !158
  %43 = icmp eq i64 %38, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %33, i64 %30, i32 1
  store ptr null, ptr %45, align 8, !tbaa !159
  br label %55

46:                                               ; preds = %29
  %47 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %38) #11
  %48 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %33, i64 %30, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !159
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  store i64 0, ptr %39, align 8, !tbaa !157
  br label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %2, i64 %30, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = load i64, ptr %37, align 8, !tbaa !157
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %53, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %50, %51, %44
  %56 = add nuw nsw i64 %30, 1
  %57 = icmp eq i64 %56, %28
  br i1 %57, label %58, label %29, !llvm.loop !160

58:                                               ; preds = %55, %19
  store ptr %16, ptr %20, align 8, !tbaa !156
  %59 = load i32, ptr %11, align 8, !tbaa !155
  %60 = add nsw i32 %59, %3
  store i32 %60, ptr %11, align 8, !tbaa !155
  %61 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %62 = load i32, ptr %61, align 4, !tbaa !80
  %63 = or i32 %62, 512
  store i32 %63, ptr %61, align 4, !tbaa !80
  br label %64

64:                                               ; preds = %4, %58, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_set_unknown_chunk_location(ptr noundef readnone %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  %8 = icmp sgt i32 %2, -1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %12 = load i32, ptr %11, align 8, !tbaa !155
  %13 = icmp sgt i32 %12, %2
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = trunc i32 %3 to i8
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %17 = load ptr, ptr %16, align 8, !tbaa !156
  %18 = zext nneg i32 %2 to i64
  %19 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %17, i64 %18, i32 3
  store i8 %15, ptr %19, align 8, !tbaa !158
  br label %20

20:                                               ; preds = %14, %10, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @png_permit_mng_features(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = and i32 %1, 5
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  store i32 %5, ptr %6, align 8, !tbaa !161
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %5, %4 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_keep_unknown_chunks(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 3
  %10 = and i32 %1, -2
  %11 = icmp eq i32 %10, 2
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !162
  %14 = and i32 %13, -32769
  %15 = select i1 %11, i32 32768, i32 0
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 8, !tbaa !162
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br i1 %9, label %18, label %20

18:                                               ; preds = %8
  %19 = or i32 %16, 65536
  store i32 %19, ptr %17, align 8, !tbaa !162
  br label %57

20:                                               ; preds = %8
  %21 = and i32 %16, -65537
  store i32 %21, ptr %17, align 8, !tbaa !162
  br label %57

22:                                               ; preds = %6
  %23 = icmp eq ptr %2, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 118
  %26 = load i32, ptr %25, align 8, !tbaa !163
  %27 = add nsw i32 %26, %3
  %28 = mul nsw i32 %27, 5
  %29 = sext i32 %28 to i64
  %30 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %29) #11
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 119
  %32 = load ptr, ptr %31, align 8, !tbaa !164
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = mul nsw i32 %26, 5
  %36 = sext i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr nonnull align 1 %32, i64 %36, i1 false)
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %32) #11
  store ptr null, ptr %31, align 8, !tbaa !164
  br label %37

37:                                               ; preds = %34, %24
  %38 = mul nsw i32 %26, 5
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %30, i64 %39
  %41 = mul nsw i32 %3, 5
  %42 = sext i32 %41 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr nonnull align 1 %2, i64 %42, i1 false)
  %43 = icmp sgt i32 %3, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, ptr %40, i64 4
  %46 = trunc i32 %1 to i8
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %45, %44 ], [ %51, %47 ]
  %49 = phi i32 [ 0, %44 ], [ %50, %47 ]
  store i8 %46, ptr %48, align 1, !tbaa !106
  %50 = add nuw nsw i32 %49, 1
  %51 = getelementptr inbounds i8, ptr %48, i64 5
  %52 = icmp eq i32 %50, %3
  br i1 %52, label %53, label %47, !llvm.loop !165

53:                                               ; preds = %47, %37
  store i32 %27, ptr %25, align 8, !tbaa !163
  store ptr %30, ptr %31, align 8, !tbaa !164
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 115
  %55 = load i32, ptr %54, align 8, !tbaa !166
  %56 = or i32 %55, 1024
  store i32 %56, ptr %54, align 8, !tbaa !166
  br label %57

57:                                               ; preds = %22, %18, %20, %4, %53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_read_user_chunk_fn(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  store ptr %2, ptr %6, align 8, !tbaa !167
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 116
  store ptr %1, ptr %7, align 8, !tbaa !168
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_rows(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %2
  %12 = or i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 64, i32 noundef 0) #11
  br label %14

14:                                               ; preds = %13, %7
  store ptr %2, ptr %8, align 8, !tbaa !169
  %15 = icmp eq ptr %2, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = or i32 %18, 32768
  store i32 %19, ptr %17, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %3, %16, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_compression_buffer_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %6) #11
  %7 = icmp ugt i64 %1, 4294967295
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #11
  br label %12

10:                                               ; preds = %4
  %11 = trunc i64 %1 to i32
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ %11, %10 ], [ -1, %9 ]
  %14 = phi i64 [ %1, %10 ], [ 4294967295, %9 ]
  store i32 %13, ptr %8, align 8, !tbaa !171
  %15 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %14) #11
  store ptr %15, ptr %5, align 8, !tbaa !170
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !172
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 0, ptr %17, align 8, !tbaa !173
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %18, align 8, !tbaa !174
  br label %19

19:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_invalid(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = xor i32 %2, -1
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = and i32 %10, %8
  store i32 %11, ptr %9, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_user_limits(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 135
  store i32 %1, ptr %6, align 4, !tbaa !175
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 136
  store i32 %2, ptr %7, align 8, !tbaa !176
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_chunk_cache_max(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  store i32 %1, ptr %5, align 4, !tbaa !177
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_chunk_malloc_max(ptr noundef writeonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 138
  store i64 %1, ptr %5, align 8, !tbaa !178
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_benign_errors(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !162
  %6 = and i32 %5, -8388609
  %7 = select i1 %3, i32 0, i32 8388608
  %8 = or disjoint i32 %6, %7
  store i32 %8, ptr %4, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_check_for_invalid_index(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 49
  %5 = sext i1 %3 to i32
  store i32 %5, ptr %4, align 4, !tbaa !179
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!35 = !{!"png_info_def", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !40, i64 24, !41, i64 32, !41, i64 34, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !37, i64 44, !36, i64 52, !37, i64 56, !36, i64 60, !36, i64 64, !40, i64 72, !42, i64 80, !43, i64 88, !40, i64 96, !44, i64 104, !44, i64 114, !36, i64 124, !36, i64 128, !37, i64 132, !36, i64 136, !36, i64 140, !37, i64 144, !40, i64 152, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !40, i64 192, !36, i64 200, !36, i64 204, !40, i64 208, !40, i64 216, !37, i64 224, !37, i64 225, !36, i64 228, !40, i64 232, !36, i64 240, !40, i64 248, !40, i64 256, !36, i64 264, !37, i64 268, !40, i64 272, !36, i64 280, !37, i64 284, !40, i64 288, !40, i64 296, !40, i64 304}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"png_time_struct", !41, i64 0, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6}
!43 = !{!"png_color_8_struct", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4}
!44 = !{!"png_color_16_struct", !37, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !41, i64 8}
!45 = !{!35, !36, i64 160}
!46 = !{!35, !36, i64 164}
!47 = !{!35, !36, i64 168}
!48 = !{!35, !36, i64 172}
!49 = !{!35, !36, i64 176}
!50 = !{!35, !36, i64 180}
!51 = !{!35, !36, i64 184}
!52 = !{!35, !36, i64 188}
!53 = !{!54, !36, i64 0}
!54 = !{!"png_XYZ", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32}
!55 = !{!54, !36, i64 4}
!56 = !{!54, !36, i64 8}
!57 = !{!54, !36, i64 12}
!58 = !{!54, !36, i64 16}
!59 = !{!54, !36, i64 20}
!60 = !{!54, !36, i64 24}
!61 = !{!54, !36, i64 28}
!62 = !{!54, !36, i64 32}
!63 = !{!64, !36, i64 24}
!64 = !{!"png_xy", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!65 = !{!64, !36, i64 28}
!66 = !{!64, !36, i64 0}
!67 = !{!64, !36, i64 4}
!68 = !{!64, !36, i64 8}
!69 = !{!64, !36, i64 12}
!70 = !{!64, !36, i64 16}
!71 = !{!64, !36, i64 20}
!72 = !{!35, !36, i64 52}
!73 = !{!35, !41, i64 32}
!74 = !{!75, !40, i64 896}
!75 = !{!"png_struct_def", !37, i64 0, !40, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !37, i64 280, !37, i64 281, !36, i64 284, !36, i64 288, !36, i64 292, !76, i64 296, !40, i64 408, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !39, i64 480, !36, i64 488, !36, i64 492, !36, i64 496, !40, i64 504, !40, i64 512, !40, i64 520, !40, i64 528, !40, i64 536, !40, i64 544, !39, i64 552, !36, i64 560, !36, i64 564, !40, i64 568, !41, i64 576, !36, i64 580, !41, i64 584, !37, i64 586, !37, i64 587, !37, i64 588, !37, i64 589, !37, i64 590, !37, i64 591, !37, i64 592, !37, i64 593, !37, i64 594, !37, i64 595, !37, i64 596, !37, i64 597, !37, i64 598, !37, i64 599, !37, i64 600, !41, i64 606, !37, i64 608, !36, i64 612, !44, i64 616, !44, i64 626, !40, i64 640, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !43, i64 720, !43, i64 725, !40, i64 736, !44, i64 744, !40, i64 760, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !40, i64 800, !40, i64 808, !40, i64 816, !40, i64 824, !36, i64 832, !36, i64 836, !39, i64 840, !39, i64 848, !39, i64 856, !39, i64 864, !36, i64 872, !36, i64 876, !40, i64 880, !40, i64 888, !40, i64 896, !37, i64 904, !37, i64 905, !40, i64 912, !40, i64 920, !40, i64 928, !40, i64 936, !40, i64 944, !37, i64 952, !36, i64 984, !40, i64 992, !40, i64 1000, !36, i64 1008, !40, i64 1016, !37, i64 1024, !37, i64 1025, !37, i64 1026, !41, i64 1028, !41, i64 1030, !36, i64 1032, !37, i64 1036, !40, i64 1040, !40, i64 1048, !40, i64 1056, !40, i64 1064, !40, i64 1072, !40, i64 1080, !40, i64 1088, !37, i64 1096, !36, i64 1100, !36, i64 1104, !36, i64 1108, !39, i64 1112, !77, i64 1120, !39, i64 1152, !40, i64 1160, !36, i64 1168, !40, i64 1176, !37, i64 1184}
!76 = !{!"z_stream_s", !40, i64 0, !36, i64 8, !39, i64 16, !40, i64 24, !36, i64 32, !39, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !36, i64 88, !39, i64 96, !39, i64 104}
!77 = !{!"png_unknown_chunk_t", !37, i64 0, !40, i64 8, !39, i64 16, !37, i64 24}
!78 = !{!41, !41, i64 0}
!79 = !{!35, !40, i64 152}
!80 = !{!35, !36, i64 228}
!81 = !{!35, !36, i64 0}
!82 = !{!35, !36, i64 4}
!83 = !{!35, !37, i64 36}
!84 = !{!35, !37, i64 37}
!85 = !{!35, !37, i64 38}
!86 = !{!35, !37, i64 39}
!87 = !{!35, !37, i64 40}
!88 = !{!35, !37, i64 41}
!89 = !{!35, !37, i64 42}
!90 = !{!35, !39, i64 16}
!91 = !{!35, !36, i64 124}
!92 = !{!35, !36, i64 128}
!93 = !{!35, !37, i64 132}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!40, !40, i64 0}
!98 = !{!35, !40, i64 192}
!99 = !{!35, !36, i64 200}
!100 = !{!35, !36, i64 204}
!101 = !{!35, !37, i64 224}
!102 = !{!35, !37, i64 225}
!103 = !{!35, !40, i64 208}
!104 = !{!35, !40, i64 216}
!105 = distinct !{!105, !95, !96}
!106 = !{!37, !37, i64 0}
!107 = !{!35, !37, i64 284}
!108 = !{!35, !40, i64 288}
!109 = !{!35, !40, i64 296}
!110 = !{!35, !36, i64 136}
!111 = !{!35, !36, i64 140}
!112 = !{!35, !37, i64 144}
!113 = !{!75, !40, i64 568}
!114 = !{!35, !40, i64 24}
!115 = !{!75, !41, i64 576}
!116 = !{!35, !37, i64 56}
!117 = !{!35, !36, i64 264}
!118 = !{!35, !40, i64 248}
!119 = !{!35, !40, i64 256}
!120 = !{!35, !37, i64 268}
!121 = !{i32 0, i32 2}
!122 = !{!35, !36, i64 60}
!123 = !{!35, !36, i64 64}
!124 = !{!35, !40, i64 72}
!125 = !{!126, !40, i64 8}
!126 = !{!"png_text_struct", !36, i64 0, !40, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !40, i64 40, !40, i64 48}
!127 = !{!126, !36, i64 0}
!128 = !{!126, !40, i64 40}
!129 = !{!126, !40, i64 48}
!130 = !{!126, !40, i64 16}
!131 = !{!126, !39, i64 24}
!132 = !{!126, !39, i64 32}
!133 = distinct !{!133, !95, !96}
!134 = !{!75, !36, i64 284}
!135 = !{!42, !37, i64 2}
!136 = !{!42, !37, i64 3}
!137 = !{!42, !37, i64 4}
!138 = !{!42, !37, i64 5}
!139 = !{!42, !37, i64 6}
!140 = !{!35, !40, i64 96}
!141 = !{!75, !40, i64 736}
!142 = !{!44, !41, i64 8}
!143 = !{!44, !41, i64 2}
!144 = !{!44, !41, i64 4}
!145 = !{!44, !41, i64 6}
!146 = !{!35, !41, i64 34}
!147 = !{!35, !36, i64 280}
!148 = !{!35, !40, i64 272}
!149 = !{!150, !40, i64 0}
!150 = !{!"png_sPLT_struct", !40, i64 0, !37, i64 8, !40, i64 16, !36, i64 24}
!151 = !{!150, !36, i64 24}
!152 = !{!150, !40, i64 16}
!153 = !{!150, !37, i64 8}
!154 = distinct !{!154, !95, !96}
!155 = !{!35, !36, i64 240}
!156 = !{!35, !40, i64 232}
!157 = !{!77, !39, i64 16}
!158 = !{!77, !37, i64 24}
!159 = !{!77, !40, i64 8}
!160 = distinct !{!160, !95, !96}
!161 = !{!75, !36, i64 1032}
!162 = !{!75, !36, i64 288}
!163 = !{!75, !36, i64 1008}
!164 = !{!75, !40, i64 1016}
!165 = distinct !{!165, !95, !96}
!166 = !{!75, !36, i64 984}
!167 = !{!75, !40, i64 1000}
!168 = !{!75, !40, i64 992}
!169 = !{!35, !40, i64 304}
!170 = !{!75, !40, i64 408}
!171 = !{!75, !36, i64 416}
!172 = !{!75, !40, i64 320}
!173 = !{!75, !36, i64 328}
!174 = !{!75, !36, i64 304}
!175 = !{!75, !36, i64 1100}
!176 = !{!75, !36, i64 1104}
!177 = !{!75, !36, i64 1108}
!178 = !{!75, !39, i64 1112}
!179 = !{!75, !36, i64 580}

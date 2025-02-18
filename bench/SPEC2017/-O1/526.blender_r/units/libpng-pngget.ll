; ModuleID = 'libpng/pngget.c'
source_filename = "libpng/pngget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_xy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_XYZ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }

@.str = private unnamed_addr constant [11 x i8] c"sCAL width\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sCAL height\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_valid(ptr noundef readnone %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, %2
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @png_get_rowbytes(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i64 [ %8, %6 ], [ 0, %2 ]
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_rows(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_image_width(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !47
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_image_height(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !48
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_bit_depth(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %8 = load i8, ptr %7, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_color_type(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !50
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_filter_type(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 10
  %8 = load i8, ptr %7, align 1, !tbaa !51
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_interlace_type(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 11
  %8 = load i8, ptr %7, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_compression_type(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 9
  %8 = load i8, ptr %7, align 2, !tbaa !53
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_x_pixels_per_meter(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %13 = load i8, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %17 = load i32, ptr %16, align 8, !tbaa !55
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_y_pixels_per_meter(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %13 = load i8, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %17 = load i32, ptr %16, align 4, !tbaa !56
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_pixels_per_meter(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %13 = load i8, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %17 = load i32, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %19 = load i32, ptr %18, align 4, !tbaa !56
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %11, %15, %6, %2
  br label %22

22:                                               ; preds = %15, %21
  %23 = phi i32 [ 0, %21 ], [ %17, %15 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @png_get_pixel_aspect_ratio(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = uitofp i32 %17 to float
  %19 = uitofp i32 %13 to float
  %20 = fdiv float %18, %19
  br label %21

21:                                               ; preds = %2, %6, %11, %15
  %22 = phi float [ %20, %15 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %2 ]
  ret float %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_pixel_aspect_ratio_fixed(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp sgt i32 %14, -1
  %20 = icmp sgt i32 %18, 0
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %23 = call i32 @png_muldiv(ptr noundef nonnull %3, i32 noundef %18, i32 noundef 100000, i32 noundef %14) #9
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %3, align 4
  %26 = select i1 %24, i32 undef, i32 %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br i1 %24, label %27, label %28

27:                                               ; preds = %22, %16, %12, %7, %2
  br label %28

28:                                               ; preds = %22, %27
  %29 = phi i32 [ %26, %22 ], [ 0, %27 ]
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_x_offset_microns(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_y_offset_microns(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_x_offset_pixels(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_y_offset_pixels(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_pixels_per_inch(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %14 = load i8, ptr %13, align 8, !tbaa !54
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %20 = load i32, ptr %19, align 4, !tbaa !56
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %12, %7, %2
  br label %23

23:                                               ; preds = %16, %22
  %24 = phi i32 [ 0, %22 ], [ %18, %16 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = call i32 @png_muldiv(ptr noundef nonnull %3, i32 noundef %24, i32 noundef 127, i32 noundef 5000) #9
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr %3, align 4
  %30 = select i1 %28, i32 0, i32 %29
  br label %31

31:                                               ; preds = %23, %26
  %32 = phi i32 [ 0, %23 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_x_pixels_per_inch(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %14 = load i8, ptr %13, align 8, !tbaa !54
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %2, %7, %12, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %12 ], [ 0, %7 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i32 @png_muldiv(ptr noundef nonnull %3, i32 noundef %20, i32 noundef 127, i32 noundef 5000) #9
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %3, align 4
  %26 = select i1 %24, i32 0, i32 %25
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi i32 [ 0, %19 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_y_pixels_per_inch(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %14 = load i8, ptr %13, align 8, !tbaa !54
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %18 = load i32, ptr %17, align 4, !tbaa !56
  br label %19

19:                                               ; preds = %2, %7, %12, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %12 ], [ 0, %7 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i32 @png_muldiv(ptr noundef nonnull %3, i32 noundef %20, i32 noundef 127, i32 noundef 5000) #9
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %3, align 4
  %26 = select i1 %24, i32 0, i32 %25
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi i32 [ 0, %19 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_x_offset_inches_fixed(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  %20 = tail call i32 @png_muldiv_warn(ptr noundef %0, i32 noundef %19, i32 noundef 500, i32 noundef 127) #9
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_y_offset_inches_fixed(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %2, %6, %11, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %2 ]
  %20 = tail call i32 @png_muldiv_warn(ptr noundef %0, i32 noundef %19, i32 noundef 500, i32 noundef 127) #9
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @png_get_x_offset_inches(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 4, !tbaa !58
  %18 = sitofp i32 %17 to double
  %19 = fmul double %18, 3.937000e-05
  %20 = fptrunc double %19 to float
  br label %21

21:                                               ; preds = %2, %6, %11, %15
  %22 = phi float [ %20, %15 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %2 ]
  ret float %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @png_get_y_offset_inches(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %13 = load i8, ptr %12, align 4, !tbaa !57
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = sitofp i32 %17 to double
  %19 = fmul double %18, 3.937000e-05
  %20 = fptrunc double %19 to float
  br label %21

21:                                               ; preds = %2, %6, %11, %15
  %22 = phi float [ %20, %15 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %2 ]
  ret float %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_pHYs_dpi(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #4 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %9
  %15 = icmp eq ptr %2, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !55
  store i32 %18, ptr %2, align 4, !tbaa !60
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ 128, %16 ], [ 0, %14 ]
  %21 = icmp eq ptr %3, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %24 = load i32, ptr %23, align 4, !tbaa !56
  store i32 %24, ptr %3, align 4, !tbaa !60
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ 128, %22 ], [ %20, %19 ]
  %27 = icmp eq ptr %4, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %30 = load i8, ptr %29, align 8, !tbaa !54
  %31 = zext i8 %30 to i32
  store i32 %31, ptr %4, align 4, !tbaa !60
  %32 = icmp eq i8 %30, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  br i1 %15, label %39, label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %2, align 4, !tbaa !60
  %36 = uitofp i32 %35 to double
  %37 = tail call double @llvm.fmuladd.f64(double %36, double 2.540000e-02, double 5.000000e-01)
  %38 = fptoui double %37 to i32
  store i32 %38, ptr %2, align 4, !tbaa !60
  br label %39

39:                                               ; preds = %34, %33
  br i1 %21, label %45, label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %3, align 4, !tbaa !60
  %42 = uitofp i32 %41 to double
  %43 = tail call double @llvm.fmuladd.f64(double %42, double 2.540000e-02, double 5.000000e-01)
  %44 = fptoui double %43 to i32
  store i32 %44, ptr %3, align 4, !tbaa !60
  br label %45

45:                                               ; preds = %25, %39, %40, %28, %9, %5
  %46 = phi i32 [ 128, %40 ], [ 128, %39 ], [ 128, %28 ], [ %26, %25 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_channels(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 12
  %8 = load i8, ptr %7, align 1, !tbaa !61
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @png_get_signature(ptr noundef readnone %0, ptr noundef readnone %1) local_unnamed_addr #6 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  %6 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15
  %7 = select i1 %5, ptr %6, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_bKGD(ptr noundef readnone %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 32
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 25
  store ptr %15, ptr %2, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %3, %7, %14
  %17 = phi i32 [ 32, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_get_cHRM_XYZ_fixed(ptr noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9, ptr noundef writeonly %10) local_unnamed_addr #1 {
  %12 = alloca %struct.png_xy, align 8
  %13 = alloca %struct.png_XYZ, align 4
  %14 = icmp ne ptr %0, null
  %15 = icmp ne ptr %1, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !34
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %94, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #9
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 7
  store i32 %27, ptr %28, align 4, !tbaa !67
  %29 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %30 = load i32, ptr %29, align 8, !tbaa !68
  store i32 %30, ptr %12, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %32 = load i32, ptr %31, align 4, !tbaa !70
  %33 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !71
  %34 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %38 = load i32, ptr %37, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !75
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %41 = load i32, ptr %40, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 4
  store i32 %41, ptr %42, align 8, !tbaa !77
  %43 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %44 = load i32, ptr %43, align 4, !tbaa !78
  %45 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 5
  store i32 %44, ptr %45, align 4, !tbaa !79
  %46 = call i32 @png_XYZ_from_xy_checked(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull byval(%struct.png_xy) align 8 %12) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %93, label %48

48:                                               ; preds = %22
  %49 = icmp eq ptr %2, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %13, align 4, !tbaa !80
  store i32 %51, ptr %2, align 4, !tbaa !60
  br label %52

52:                                               ; preds = %50, %48
  %53 = icmp eq ptr %3, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !82
  store i32 %56, ptr %3, align 4, !tbaa !60
  br label %57

57:                                               ; preds = %54, %52
  %58 = icmp eq ptr %4, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !83
  store i32 %61, ptr %4, align 4, !tbaa !60
  br label %62

62:                                               ; preds = %59, %57
  %63 = icmp eq ptr %5, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !84
  store i32 %66, ptr %5, align 4, !tbaa !60
  br label %67

67:                                               ; preds = %64, %62
  %68 = icmp eq ptr %6, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !85
  store i32 %71, ptr %6, align 4, !tbaa !60
  br label %72

72:                                               ; preds = %69, %67
  %73 = icmp eq ptr %7, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !86
  store i32 %76, ptr %7, align 4, !tbaa !60
  br label %77

77:                                               ; preds = %74, %72
  %78 = icmp eq ptr %8, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !87
  store i32 %81, ptr %8, align 4, !tbaa !60
  br label %82

82:                                               ; preds = %79, %77
  %83 = icmp eq ptr %9, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 7
  %86 = load i32, ptr %85, align 4, !tbaa !88
  store i32 %86, ptr %9, align 4, !tbaa !60
  br label %87

87:                                               ; preds = %84, %82
  %88 = icmp eq ptr %10, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !89
  store i32 %91, ptr %10, align 4, !tbaa !60
  br label %92

92:                                               ; preds = %87, %89
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  br i1 %47, label %94, label %95

93:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  br label %94

94:                                               ; preds = %93, %92, %17, %11
  br label %95

95:                                               ; preds = %92, %94
  %96 = phi i32 [ 4, %92 ], [ 0, %94 ]
  ret i32 %96
}

declare i32 @png_XYZ_from_xy_checked(ptr noundef, ptr noundef, ptr noundef byval(%struct.png_xy) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_cHRM(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9) local_unnamed_addr #4 {
  %11 = icmp ne ptr %0, null
  %12 = icmp ne ptr %1, null
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %75, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %2, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = sitofp i32 %23 to double
  %25 = fmul double %24, 1.000000e-05
  store double %25, ptr %2, align 8, !tbaa !90
  br label %26

26:                                               ; preds = %21, %19
  %27 = icmp eq ptr %3, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %30 = load i32, ptr %29, align 4, !tbaa !66
  %31 = sitofp i32 %30 to double
  %32 = fmul double %31, 1.000000e-05
  store double %32, ptr %3, align 8, !tbaa !90
  br label %33

33:                                               ; preds = %28, %26
  %34 = icmp eq ptr %4, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %37 = load i32, ptr %36, align 8, !tbaa !68
  %38 = sitofp i32 %37 to double
  %39 = fmul double %38, 1.000000e-05
  store double %39, ptr %4, align 8, !tbaa !90
  br label %40

40:                                               ; preds = %35, %33
  %41 = icmp eq ptr %5, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, 1.000000e-05
  store double %46, ptr %5, align 8, !tbaa !90
  br label %47

47:                                               ; preds = %42, %40
  %48 = icmp eq ptr %6, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %51 = load i32, ptr %50, align 8, !tbaa !72
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, 1.000000e-05
  store double %53, ptr %6, align 8, !tbaa !90
  br label %54

54:                                               ; preds = %49, %47
  %55 = icmp eq ptr %7, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %58 = load i32, ptr %57, align 4, !tbaa !74
  %59 = sitofp i32 %58 to double
  %60 = fmul double %59, 1.000000e-05
  store double %60, ptr %7, align 8, !tbaa !90
  br label %61

61:                                               ; preds = %56, %54
  %62 = icmp eq ptr %8, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %65 = load i32, ptr %64, align 8, !tbaa !76
  %66 = sitofp i32 %65 to double
  %67 = fmul double %66, 1.000000e-05
  store double %67, ptr %8, align 8, !tbaa !90
  br label %68

68:                                               ; preds = %63, %61
  %69 = icmp eq ptr %9, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %72 = load i32, ptr %71, align 4, !tbaa !78
  %73 = sitofp i32 %72 to double
  %74 = fmul double %73, 1.000000e-05
  store double %74, ptr %9, align 8, !tbaa !90
  br label %75

75:                                               ; preds = %10, %14, %68, %70
  %76 = phi i32 [ 4, %70 ], [ 4, %68 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_get_cHRM_XYZ(ptr noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9, ptr noundef writeonly %10) local_unnamed_addr #1 {
  %12 = alloca %struct.png_xy, align 8
  %13 = alloca %struct.png_XYZ, align 4
  %14 = icmp ne ptr %0, null
  %15 = icmp ne ptr %1, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !34
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %85, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #9
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 7
  store i32 %27, ptr %28, align 4, !tbaa !67
  %29 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %30 = load i32, ptr %29, align 8, !tbaa !68
  store i32 %30, ptr %12, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %32 = load i32, ptr %31, align 4, !tbaa !70
  %33 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !71
  %34 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %38 = load i32, ptr %37, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !75
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %41 = load i32, ptr %40, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 4
  store i32 %41, ptr %42, align 8, !tbaa !77
  %43 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %44 = load i32, ptr %43, align 4, !tbaa !78
  %45 = getelementptr inbounds %struct.png_xy, ptr %12, i64 0, i32 5
  store i32 %44, ptr %45, align 4, !tbaa !79
  %46 = call i32 @png_XYZ_from_xy_checked(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull byval(%struct.png_xy) align 8 %12) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %22
  %49 = load i32, ptr %13, align 4, !tbaa !80
  %50 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !82
  %52 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !83
  %54 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !84
  %56 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !85
  %58 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !86
  %60 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 6
  %61 = load i32, ptr %60, align 4, !tbaa !87
  %62 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !88
  %64 = getelementptr inbounds %struct.png_XYZ, ptr %13, i64 0, i32 8
  %65 = load i32, ptr %64, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  %66 = sitofp i32 %49 to double
  %67 = fmul double %66, 1.000000e-05
  %68 = sitofp i32 %51 to double
  %69 = fmul double %68, 1.000000e-05
  %70 = sitofp i32 %53 to double
  %71 = fmul double %70, 1.000000e-05
  %72 = sitofp i32 %55 to double
  %73 = fmul double %72, 1.000000e-05
  %74 = sitofp i32 %57 to double
  %75 = fmul double %74, 1.000000e-05
  %76 = sitofp i32 %59 to double
  %77 = fmul double %76, 1.000000e-05
  %78 = sitofp i32 %61 to double
  %79 = fmul double %78, 1.000000e-05
  %80 = sitofp i32 %63 to double
  %81 = fmul double %80, 1.000000e-05
  %82 = sitofp i32 %65 to double
  %83 = fmul double %82, 1.000000e-05
  br label %85

84:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  br label %85

85:                                               ; preds = %11, %17, %84, %48
  %86 = phi double [ %83, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %87 = phi double [ %81, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %88 = phi double [ %79, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %89 = phi double [ %77, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %90 = phi double [ %75, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %91 = phi double [ %73, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %92 = phi double [ %71, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %93 = phi double [ %69, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %94 = phi double [ %67, %48 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %11 ]
  %95 = phi i1 [ false, %48 ], [ true, %84 ], [ true, %17 ], [ true, %11 ]
  br i1 %95, label %123, label %96

96:                                               ; preds = %85
  %97 = icmp eq ptr %2, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  store double %94, ptr %2, align 8, !tbaa !90
  br label %99

99:                                               ; preds = %98, %96
  %100 = icmp eq ptr %3, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %99
  store double %93, ptr %3, align 8, !tbaa !90
  br label %102

102:                                              ; preds = %101, %99
  %103 = icmp eq ptr %4, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  store double %92, ptr %4, align 8, !tbaa !90
  br label %105

105:                                              ; preds = %104, %102
  %106 = icmp eq ptr %5, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %105
  store double %91, ptr %5, align 8, !tbaa !90
  br label %108

108:                                              ; preds = %107, %105
  %109 = icmp eq ptr %6, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %108
  store double %90, ptr %6, align 8, !tbaa !90
  br label %111

111:                                              ; preds = %110, %108
  %112 = icmp eq ptr %7, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %111
  store double %89, ptr %7, align 8, !tbaa !90
  br label %114

114:                                              ; preds = %113, %111
  %115 = icmp eq ptr %8, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %114
  store double %88, ptr %8, align 8, !tbaa !90
  br label %117

117:                                              ; preds = %116, %114
  %118 = icmp eq ptr %9, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  store double %87, ptr %9, align 8, !tbaa !90
  br label %120

120:                                              ; preds = %119, %117
  %121 = icmp eq ptr %10, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %120
  store double %86, ptr %10, align 8, !tbaa !90
  br label %123

123:                                              ; preds = %85, %120, %122
  %124 = phi i32 [ 4, %122 ], [ 4, %120 ], [ 0, %85 ]
  ret i32 %124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_cHRM_fixed(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9) local_unnamed_addr #4 {
  %11 = icmp ne ptr %0, null
  %12 = icmp ne ptr %1, null
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %2, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %23 = load i32, ptr %22, align 8, !tbaa !63
  store i32 %23, ptr %2, align 4, !tbaa !60
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %3, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %28 = load i32, ptr %27, align 4, !tbaa !66
  store i32 %28, ptr %3, align 4, !tbaa !60
  br label %29

29:                                               ; preds = %26, %24
  %30 = icmp eq ptr %4, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %33 = load i32, ptr %32, align 8, !tbaa !68
  store i32 %33, ptr %4, align 4, !tbaa !60
  br label %34

34:                                               ; preds = %31, %29
  %35 = icmp eq ptr %5, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %38 = load i32, ptr %37, align 4, !tbaa !70
  store i32 %38, ptr %5, align 4, !tbaa !60
  br label %39

39:                                               ; preds = %36, %34
  %40 = icmp eq ptr %6, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %43 = load i32, ptr %42, align 8, !tbaa !72
  store i32 %43, ptr %6, align 4, !tbaa !60
  br label %44

44:                                               ; preds = %41, %39
  %45 = icmp eq ptr %7, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %48 = load i32, ptr %47, align 4, !tbaa !74
  store i32 %48, ptr %7, align 4, !tbaa !60
  br label %49

49:                                               ; preds = %46, %44
  %50 = icmp eq ptr %8, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %53 = load i32, ptr %52, align 8, !tbaa !76
  store i32 %53, ptr %8, align 4, !tbaa !60
  br label %54

54:                                               ; preds = %51, %49
  %55 = icmp eq ptr %9, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %58 = load i32, ptr %57, align 4, !tbaa !78
  store i32 %58, ptr %9, align 4, !tbaa !60
  br label %59

59:                                               ; preds = %10, %14, %54, %56
  %60 = phi i32 [ 4, %56 ], [ 4, %54 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_gAMA_fixed(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !92
  store i32 %16, ptr %2, align 4, !tbaa !60
  br label %17

17:                                               ; preds = %3, %7, %14
  %18 = phi i32 [ 1, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_gAMA(ptr noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 1.000000e-05
  br label %17

17:                                               ; preds = %3, %7, %12
  %18 = phi double [ %16, %12 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %3 ]
  %19 = phi i1 [ false, %12 ], [ true, %7 ], [ true, %3 ]
  %20 = phi i32 [ 1, %12 ], [ 0, %7 ], [ 0, %3 ]
  br i1 %19, label %22, label %21

21:                                               ; preds = %17
  store double %18, ptr %2, align 8, !tbaa !90
  br label %22

22:                                               ; preds = %21, %17
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_sRGB(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 2048
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 17
  %16 = load i8, ptr %15, align 8, !tbaa !93
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !60
  br label %18

18:                                               ; preds = %3, %7, %14
  %19 = phi i32 [ 2048, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_iCCP(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #4 {
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = and i32 %12, 4096
  %14 = icmp ne i32 %13, 0
  %15 = icmp ne ptr %2, null
  %16 = and i1 %15, %14
  %17 = icmp ne ptr %3, null
  %18 = and i1 %17, %16
  %19 = icmp ne ptr %4, null
  %20 = and i1 %19, %18
  %21 = icmp ne ptr %5, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %33

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 51
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  store ptr %25, ptr %2, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 52
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  store ptr %27, ptr %4, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 53
  %29 = load i32, ptr %28, align 8, !tbaa !96
  store i32 %29, ptr %5, align 4, !tbaa !60
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 54
  %31 = load i8, ptr %30, align 4, !tbaa !97
  %32 = zext i8 %31 to i32
  store i32 %32, ptr %3, align 4, !tbaa !60
  br label %33

33:                                               ; preds = %6, %10, %23
  %34 = phi i32 [ 4096, %23 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @png_get_sPLT(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  store ptr %11, ptr %2, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 56
  %13 = load i32, ptr %12, align 8, !tbaa !99
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi i32 [ %13, %9 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_hIST(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 32
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  store ptr %16, ptr %2, align 8, !tbaa !62
  br label %17

17:                                               ; preds = %3, %7, %14
  %18 = phi i32 [ 64, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_get_IHDR(ptr noundef %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #1 {
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %2, null
  %14 = or i1 %12, %13
  %15 = icmp eq ptr %3, null
  %16 = or i1 %14, %15
  %17 = icmp eq ptr %4, null
  %18 = or i1 %16, %17
  %19 = icmp eq ptr %5, null
  %20 = or i1 %18, %19
  br i1 %20, label %60, label %21

21:                                               ; preds = %9
  %22 = load i32, ptr %1, align 8, !tbaa !47
  store i32 %22, ptr %2, align 4, !tbaa !60
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !48
  store i32 %24, ptr %3, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %26 = load i8, ptr %25, align 4, !tbaa !49
  %27 = zext i8 %26 to i32
  store i32 %27, ptr %4, align 4, !tbaa !60
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %29 = load i8, ptr %28, align 1, !tbaa !50
  %30 = zext i8 %29 to i32
  store i32 %30, ptr %5, align 4, !tbaa !60
  %31 = icmp eq ptr %7, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 9
  %34 = load i8, ptr %33, align 2, !tbaa !53
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %7, align 4, !tbaa !60
  br label %36

36:                                               ; preds = %32, %21
  %37 = icmp eq ptr %8, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 10
  %40 = load i8, ptr %39, align 1, !tbaa !51
  %41 = zext i8 %40 to i32
  store i32 %41, ptr %8, align 4, !tbaa !60
  br label %42

42:                                               ; preds = %38, %36
  %43 = icmp eq ptr %6, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 11
  %46 = load i8, ptr %45, align 8, !tbaa !52
  %47 = zext i8 %46 to i32
  store i32 %47, ptr %6, align 4, !tbaa !60
  br label %48

48:                                               ; preds = %44, %42
  %49 = load i32, ptr %1, align 8, !tbaa !47
  %50 = load i32, ptr %23, align 4, !tbaa !48
  %51 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 11
  %52 = load i8, ptr %51, align 8, !tbaa !52
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 9
  %55 = load i8, ptr %54, align 2, !tbaa !53
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 10
  %58 = load i8, ptr %57, align 1, !tbaa !51
  %59 = zext i8 %58 to i32
  tail call void @png_check_IHDR(ptr noundef %0, i32 noundef %49, i32 noundef %50, i32 noundef %27, i32 noundef %30, i32 noundef %53, i32 noundef %56, i32 noundef %59) #9
  br label %60

60:                                               ; preds = %9, %48
  %61 = phi i32 [ 1, %48 ], [ 0, %9 ]
  ret i32 %61
}

declare void @png_check_IHDR(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_oFFs(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #4 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 256
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne ptr %2, null
  %15 = and i1 %14, %13
  %16 = icmp ne ptr %3, null
  %17 = and i1 %16, %15
  %18 = icmp ne ptr %4, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %22 = load i32, ptr %21, align 4, !tbaa !58
  store i32 %22, ptr %2, align 4, !tbaa !60
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %24 = load i32, ptr %23, align 8, !tbaa !59
  store i32 %24, ptr %3, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %26 = load i8, ptr %25, align 4, !tbaa !57
  %27 = zext i8 %26 to i32
  store i32 %27, ptr %4, align 4, !tbaa !60
  br label %28

28:                                               ; preds = %5, %9, %20
  %29 = phi i32 [ 256, %20 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_pCAL(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #4 {
  %10 = icmp ne ptr %0, null
  %11 = icmp ne ptr %1, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = and i32 %15, 1024
  %17 = icmp ne i32 %16, 0
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17
  %20 = icmp ne ptr %3, null
  %21 = and i1 %20, %19
  %22 = icmp ne ptr %4, null
  %23 = and i1 %22, %21
  %24 = icmp ne ptr %5, null
  %25 = and i1 %24, %23
  %26 = icmp ne ptr %6, null
  %27 = and i1 %26, %25
  %28 = icmp ne ptr %7, null
  %29 = and i1 %28, %27
  %30 = icmp ne ptr %8, null
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %49

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 41
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  store ptr %34, ptr %2, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 42
  %36 = load i32, ptr %35, align 8, !tbaa !102
  store i32 %36, ptr %3, align 4, !tbaa !60
  %37 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 43
  %38 = load i32, ptr %37, align 4, !tbaa !103
  store i32 %38, ptr %4, align 4, !tbaa !60
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 46
  %40 = load i8, ptr %39, align 8, !tbaa !104
  %41 = zext i8 %40 to i32
  store i32 %41, ptr %5, align 4, !tbaa !60
  %42 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 47
  %43 = load i8, ptr %42, align 1, !tbaa !105
  %44 = zext i8 %43 to i32
  store i32 %44, ptr %6, align 4, !tbaa !60
  %45 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 44
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  store ptr %46, ptr %7, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 45
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  store ptr %48, ptr %8, align 8, !tbaa !62
  br label %49

49:                                               ; preds = %9, %13, %32
  %50 = phi i32 [ 1024, %32 ], [ 0, %13 ], [ 0, %9 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_get_sCAL_fixed(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 57
  %16 = load i8, ptr %15, align 4, !tbaa !108
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  %20 = tail call double @strtod(ptr nocapture noundef nonnull %19, ptr noundef null) #9
  %21 = tail call i32 @png_fixed(ptr noundef nonnull %0, double noundef %20, ptr noundef nonnull @.str) #9
  store i32 %21, ptr %3, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = tail call double @strtod(ptr nocapture noundef nonnull %23, ptr noundef null) #9
  %25 = tail call i32 @png_fixed(ptr noundef nonnull %0, double noundef %24, ptr noundef nonnull @.str.1) #9
  store i32 %25, ptr %4, align 4, !tbaa !60
  br label %26

26:                                               ; preds = %5, %9, %14
  %27 = phi i32 [ 16384, %14 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %27
}

declare i32 @png_fixed(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noundef i32 @png_get_sCAL(ptr noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #7 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 57
  %16 = load i8, ptr %15, align 4, !tbaa !108
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  %20 = tail call double @strtod(ptr nocapture noundef nonnull %19, ptr noundef null) #9
  store double %20, ptr %3, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  %23 = tail call double @strtod(ptr nocapture noundef nonnull %22, ptr noundef null) #9
  store double %23, ptr %4, align 8, !tbaa !90
  br label %24

24:                                               ; preds = %5, %9, %14
  %25 = phi i32 [ 16384, %14 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_sCAL_s(ptr noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 57
  %16 = load i8, ptr %15, align 4, !tbaa !108
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  store ptr %19, ptr %3, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %21 = load ptr, ptr %20, align 8, !tbaa !110
  store ptr %21, ptr %4, align 8, !tbaa !62
  br label %22

22:                                               ; preds = %5, %9, %14
  %23 = phi i32 [ 16384, %14 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_pHYs(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #4 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = icmp eq ptr %2, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !55
  store i32 %18, ptr %2, align 4, !tbaa !60
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ 128, %16 ], [ 0, %14 ]
  %21 = icmp eq ptr %3, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %24 = load i32, ptr %23, align 4, !tbaa !56
  store i32 %24, ptr %3, align 4, !tbaa !60
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ 128, %22 ], [ %20, %19 ]
  %27 = icmp eq ptr %4, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %30 = load i8, ptr %29, align 8, !tbaa !54
  %31 = zext i8 %30 to i32
  store i32 %31, ptr %4, align 4, !tbaa !60
  br label %32

32:                                               ; preds = %25, %28, %9, %5
  %33 = phi i32 [ 128, %28 ], [ %26, %25 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_PLTE(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = and i32 %10, 8
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !111
  store ptr %17, ptr %2, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !112
  %20 = zext i16 %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !60
  br label %21

21:                                               ; preds = %4, %8, %15
  %22 = phi i32 [ 8, %15 ], [ 0, %8 ], [ 0, %4 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_sBIT(ptr noundef readnone %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 22
  store ptr %15, ptr %2, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %3, %7, %14
  %17 = phi i32 [ 2, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @png_get_text(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  store ptr %16, ptr %2, align 8, !tbaa !62
  br label %17

17:                                               ; preds = %14, %12
  %18 = icmp eq ptr %3, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  store i32 %10, ptr %3, align 4, !tbaa !60
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, ptr %9, align 4, !tbaa !113
  br label %25

22:                                               ; preds = %8, %4
  %23 = icmp eq ptr %3, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store i32 0, ptr %3, align 4, !tbaa !60
  br label %25

25:                                               ; preds = %22, %24, %20
  %26 = phi i32 [ %21, %20 ], [ 0, %24 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_tIME(ptr noundef readnone %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = and i32 %9, 512
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 21
  store ptr %15, ptr %2, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %3, %7, %14
  %17 = phi i32 [ 512, %14 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_get_tRNS(ptr noundef readnone %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #4 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %16 = load i8, ptr %15, align 1, !tbaa !50
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  store ptr %22, ptr %2, align 8, !tbaa !62
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ 16, %20 ], [ 0, %18 ]
  %25 = icmp eq ptr %4, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 24
  store ptr %27, ptr %4, align 8, !tbaa !62
  br label %36

28:                                               ; preds = %14
  %29 = icmp eq ptr %4, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 24
  store ptr %31, ptr %4, align 8, !tbaa !62
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ 16, %30 ], [ 0, %28 ]
  %34 = icmp eq ptr %2, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store ptr null, ptr %2, align 8, !tbaa !62
  br label %36

36:                                               ; preds = %32, %35, %23, %26
  %37 = phi i32 [ %24, %26 ], [ %24, %23 ], [ %33, %35 ], [ %33, %32 ]
  %38 = icmp eq ptr %3, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %41 = load i16, ptr %40, align 2, !tbaa !116
  %42 = zext i16 %41 to i32
  store i32 %42, ptr %3, align 4, !tbaa !60
  br label %43

43:                                               ; preds = %36, %39, %9, %5
  %44 = phi i32 [ 16, %39 ], [ %37, %36 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @png_get_unknown_chunks(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  store ptr %11, ptr %2, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %13 = load i32, ptr %12, align 8, !tbaa !118
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi i32 [ %13, %9 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_rgb_to_gray_status(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 121
  %5 = load i8, ptr %4, align 1, !tbaa !119
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i8 [ %5, %3 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_user_chunk_ptr(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 116
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @png_get_compression_buffer_size(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !124
  %6 = zext i32 %5 to i64
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_user_width_max(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 135
  %5 = load i32, ptr %4, align 4, !tbaa !125
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_user_height_max(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 136
  %5 = load i32, ptr %4, align 8, !tbaa !126
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_chunk_cache_max(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !127
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @png_get_chunk_malloc_max(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 138
  %5 = load i64, ptr %4, align 8, !tbaa !128
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_io_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_io_chunk_type(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %3 = load i32, ptr %2, align 8, !tbaa !130
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull ptr @png_get_io_chunk_name(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %3 = load i32, ptr %2, align 8, !tbaa !130
  %4 = lshr i32 %3, 24
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 65
  store i8 %5, ptr %6, align 8, !tbaa !131
  %7 = lshr i32 %3, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 65, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !131
  %10 = lshr i32 %3, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 65, i64 2
  store i8 %11, ptr %12, align 2, !tbaa !131
  %13 = trunc i32 %3 to i8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 65, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !131
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 65, i64 4
  store i8 0, ptr %15, align 4, !tbaa !131
  ret ptr %6
}

declare i32 @png_muldiv_warn(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!45 = !{!35, !39, i64 16}
!46 = !{!35, !40, i64 304}
!47 = !{!35, !36, i64 0}
!48 = !{!35, !36, i64 4}
!49 = !{!35, !37, i64 36}
!50 = !{!35, !37, i64 37}
!51 = !{!35, !37, i64 39}
!52 = !{!35, !37, i64 40}
!53 = !{!35, !37, i64 38}
!54 = !{!35, !37, i64 144}
!55 = !{!35, !36, i64 136}
!56 = !{!35, !36, i64 140}
!57 = !{!35, !37, i64 132}
!58 = !{!35, !36, i64 124}
!59 = !{!35, !36, i64 128}
!60 = !{!36, !36, i64 0}
!61 = !{!35, !37, i64 41}
!62 = !{!40, !40, i64 0}
!63 = !{!35, !36, i64 160}
!64 = !{!65, !36, i64 24}
!65 = !{!"png_xy", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!66 = !{!35, !36, i64 164}
!67 = !{!65, !36, i64 28}
!68 = !{!35, !36, i64 168}
!69 = !{!65, !36, i64 0}
!70 = !{!35, !36, i64 172}
!71 = !{!65, !36, i64 4}
!72 = !{!35, !36, i64 176}
!73 = !{!65, !36, i64 8}
!74 = !{!35, !36, i64 180}
!75 = !{!65, !36, i64 12}
!76 = !{!35, !36, i64 184}
!77 = !{!65, !36, i64 16}
!78 = !{!35, !36, i64 188}
!79 = !{!65, !36, i64 20}
!80 = !{!81, !36, i64 0}
!81 = !{!"png_XYZ", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32}
!82 = !{!81, !36, i64 4}
!83 = !{!81, !36, i64 8}
!84 = !{!81, !36, i64 12}
!85 = !{!81, !36, i64 16}
!86 = !{!81, !36, i64 20}
!87 = !{!81, !36, i64 24}
!88 = !{!81, !36, i64 28}
!89 = !{!81, !36, i64 32}
!90 = !{!91, !91, i64 0}
!91 = !{!"double", !37, i64 0}
!92 = !{!35, !36, i64 52}
!93 = !{!35, !37, i64 56}
!94 = !{!35, !40, i64 248}
!95 = !{!35, !40, i64 256}
!96 = !{!35, !36, i64 264}
!97 = !{!35, !37, i64 268}
!98 = !{!35, !40, i64 272}
!99 = !{!35, !36, i64 280}
!100 = !{!35, !40, i64 152}
!101 = !{!35, !40, i64 192}
!102 = !{!35, !36, i64 200}
!103 = !{!35, !36, i64 204}
!104 = !{!35, !37, i64 224}
!105 = !{!35, !37, i64 225}
!106 = !{!35, !40, i64 208}
!107 = !{!35, !40, i64 216}
!108 = !{!35, !37, i64 284}
!109 = !{!35, !40, i64 288}
!110 = !{!35, !40, i64 296}
!111 = !{!35, !40, i64 24}
!112 = !{!35, !41, i64 32}
!113 = !{!35, !36, i64 60}
!114 = !{!35, !40, i64 72}
!115 = !{!35, !40, i64 96}
!116 = !{!35, !41, i64 34}
!117 = !{!35, !40, i64 232}
!118 = !{!35, !36, i64 240}
!119 = !{!120, !37, i64 1025}
!120 = !{!"png_struct_def", !37, i64 0, !40, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !37, i64 280, !37, i64 281, !36, i64 284, !36, i64 288, !36, i64 292, !121, i64 296, !40, i64 408, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !39, i64 480, !36, i64 488, !36, i64 492, !36, i64 496, !40, i64 504, !40, i64 512, !40, i64 520, !40, i64 528, !40, i64 536, !40, i64 544, !39, i64 552, !36, i64 560, !36, i64 564, !40, i64 568, !41, i64 576, !36, i64 580, !41, i64 584, !37, i64 586, !37, i64 587, !37, i64 588, !37, i64 589, !37, i64 590, !37, i64 591, !37, i64 592, !37, i64 593, !37, i64 594, !37, i64 595, !37, i64 596, !37, i64 597, !37, i64 598, !37, i64 599, !37, i64 600, !41, i64 606, !37, i64 608, !36, i64 612, !44, i64 616, !44, i64 626, !40, i64 640, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !43, i64 720, !43, i64 725, !40, i64 736, !44, i64 744, !40, i64 760, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !40, i64 800, !40, i64 808, !40, i64 816, !40, i64 824, !36, i64 832, !36, i64 836, !39, i64 840, !39, i64 848, !39, i64 856, !39, i64 864, !36, i64 872, !36, i64 876, !40, i64 880, !40, i64 888, !40, i64 896, !37, i64 904, !37, i64 905, !40, i64 912, !40, i64 920, !40, i64 928, !40, i64 936, !40, i64 944, !37, i64 952, !36, i64 984, !40, i64 992, !40, i64 1000, !36, i64 1008, !40, i64 1016, !37, i64 1024, !37, i64 1025, !37, i64 1026, !41, i64 1028, !41, i64 1030, !36, i64 1032, !37, i64 1036, !40, i64 1040, !40, i64 1048, !40, i64 1056, !40, i64 1064, !40, i64 1072, !40, i64 1080, !40, i64 1088, !37, i64 1096, !36, i64 1100, !36, i64 1104, !36, i64 1108, !39, i64 1112, !122, i64 1120, !39, i64 1152, !40, i64 1160, !36, i64 1168, !40, i64 1176, !37, i64 1184}
!121 = !{!"z_stream_s", !40, i64 0, !36, i64 8, !39, i64 16, !40, i64 24, !36, i64 32, !39, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !36, i64 88, !39, i64 96, !39, i64 104}
!122 = !{!"png_unknown_chunk_t", !37, i64 0, !40, i64 8, !39, i64 16, !37, i64 24}
!123 = !{!120, !40, i64 992}
!124 = !{!120, !36, i64 416}
!125 = !{!120, !36, i64 1100}
!126 = !{!120, !36, i64 1104}
!127 = !{!120, !36, i64 1108}
!128 = !{!120, !39, i64 1112}
!129 = !{!120, !36, i64 1168}
!130 = !{!120, !36, i64 496}
!131 = !{!37, !37, i64 0}

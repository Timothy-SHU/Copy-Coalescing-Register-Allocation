; ModuleID = 'libpng/png.c'
source_filename = "libpng/png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_text_struct = type { i32, ptr, ptr, i64, i64, ptr, ptr }
%struct.png_sPLT_struct = type { ptr, i8, ptr, i32 }
%struct.png_XYZ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_xy = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Too many bytes for PNG signature\00", align 1
@__const.png_sig_cmp.png_signature = private unnamed_addr constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Potential overflow in png_zalloc()\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Application built with libpng-\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" but running with \00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unknown freer parameter in png_data_freer\00", align 1
@png_convert_to_rfc1123.short_months = internal constant [12 x [4 x i8]] [[4 x i8] c"Jan\00", [4 x i8] c"Feb\00", [4 x i8] c"Mar\00", [4 x i8] c"Apr\00", [4 x i8] c"May\00", [4 x i8] c"Jun\00", [4 x i8] c"Jul\00", [4 x i8] c"Aug\00", [4 x i8] c"Sep\00", [4 x i8] c"Oct\00", [4 x i8] c"Nov\00", [4 x i8] c"Dec\00"], align 16
@.str.5 = private unnamed_addr constant [28 x i8] c"Ignoring invalid time value\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" +0000\00", align 1
@.str.7 = private unnamed_addr constant [184 x i8] c"\0Alibpng version 1.5.10 - March 29, 2012\0ACopyright (c) 1998-2011 Glenn Randers-Pehrson\0ACopyright (c) 1996-1997 Andreas Dilger\0ACopyright (c) 1995-1996 Guy Eric Schalnat, Group 42, Inc.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"1.5.10\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c" libpng version 1.5.10 - March 29, 2012\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Ignoring attempt to set negative chromaticity value\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Invalid cHRM white point\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Invalid cHRM red point\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Invalid cHRM green point\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Invalid cHRM blue point\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"Ignoring attempt to set cHRM RGB triangle with zero area\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"extreme cHRM chunk cannot be converted to tristimulus values\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"internal error in png_XYZ_from_xy\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Image width is zero in IHDR\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Image height is zero in IHDR\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Image width exceeds user limit in IHDR\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Image height exceeds user limit in IHDR\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Invalid image width in IHDR\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Invalid image height in IHDR\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"Width is too large for libpng to process pixels\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Invalid bit depth in IHDR\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Invalid color type in IHDR\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Invalid color type/bit depth combination in IHDR\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Unknown interlace method in IHDR\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Unknown compression method in IHDR\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"MNG features are not allowed in a PNG datastream\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Unknown filter method in IHDR\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Invalid filter method in IHDR\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Invalid IHDR data\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"ASCII conversion buffer too small\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"fixed point overflow ignored\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"gamma table being rebuilt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_sig_bytes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 8
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #20
  unreachable

7:                                                ; preds = %4
  %8 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 62
  store i8 %9, ptr %10, align 1, !tbaa !34
  br label %11

11:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_sig_cmp(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp ugt i64 %2, 8
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %5
  %8 = phi i64 [ %2, %5 ], [ 8, %3 ]
  %9 = icmp ugt i64 %1, 7
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %8, %1
  %12 = icmp ugt i64 %11, 8
  %13 = sub nuw nsw i64 8, %1
  %14 = select i1 %12, i64 %13, i64 %8
  %15 = getelementptr inbounds i8, ptr %0, i64 %1
  %16 = getelementptr inbounds [8 x i8], ptr @__const.png_sig_cmp.png_signature, i64 0, i64 %1
  %17 = tail call i32 @memcmp(ptr noundef %15, ptr noundef nonnull %16, i64 noundef %14) #21
  br label %18

18:                                               ; preds = %7, %5, %10
  %19 = phi i32 [ %17, %10 ], [ -1, %5 ], [ -1, %7 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @png_zalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %0, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %1)
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #22
  br label %17

11:                                               ; preds = %7
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = mul nuw i64 %13, %12
  %15 = or i32 %5, 1048576
  store i32 %15, ptr %4, align 8, !tbaa !46
  %16 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %14) #22
  store i32 %5, ptr %4, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %3, %11, %10
  %18 = phi ptr [ null, %10 ], [ %16, %11 ], [ null, %3 ]
  ret ptr %18
}

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_zfree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @png_free(ptr noundef %0, ptr noundef %1) #22
  ret void
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_reset_crc(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #22
  %3 = trunc i64 %2 to i32
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  store i32 %3, ptr %4, align 4, !tbaa !47
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_calculate_crc(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = and i32 %5, 536870912
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = and i32 %9, 768
  %11 = icmp ne i32 %10, 768
  %12 = and i32 %9, 2048
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %7, i1 %13, i1 %11
  %15 = icmp ne i64 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %19 = load i32, ptr %18, align 4, !tbaa !47
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ %2, %17 ], [ %31, %21 ]
  %23 = phi i64 [ %20, %17 ], [ %28, %21 ]
  %24 = phi ptr [ %1, %17 ], [ %30, %21 ]
  %25 = trunc i64 %22 to i32
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 -1, i32 %25
  %28 = tail call i64 @crc32(i64 noundef %23, ptr noundef %24, i32 noundef %27) #22
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = sub i64 %22, %29
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %21, !llvm.loop !49

33:                                               ; preds = %21
  %34 = trunc i64 %28 to i32
  store i32 %34, ptr %18, align 4, !tbaa !47
  br label %35

35:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_user_version_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br i1 %4, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %2 ]
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !52
  %10 = getelementptr inbounds i8, ptr @.str.8, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !52
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %5, align 8, !tbaa !46
  %15 = or i32 %14, 131072
  store i32 %15, ptr %5, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %6, %13
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 7
  br i1 %18, label %22, label %6, !llvm.loop !53

19:                                               ; preds = %2
  %20 = load i32, ptr %5, align 8, !tbaa !46
  %21 = or i32 %20, 131072
  store i32 %21, ptr %5, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %16, %19
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = and i32 %24, 131072
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  br i1 %4, label %35, label %28

28:                                               ; preds = %27
  %29 = load i8, ptr %1, align 1, !tbaa !52
  %30 = icmp eq i8 %29, 49
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !52
  %34 = icmp eq i8 %33, 53
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %28, %27
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #22
  %36 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef 0, ptr noundef nonnull @.str.2) #22
  %37 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef %36, ptr noundef %1) #22
  %38 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef %37, ptr noundef nonnull @.str.3) #22
  %39 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef %38, ptr noundef nonnull @.str.8) #22
  call void @png_warning(ptr noundef %0, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #22
  br label %40

40:                                               ; preds = %31, %22, %35
  %41 = phi i32 [ 0, %35 ], [ 1, %22 ], [ 1, %31 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_header_ver(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.8
}

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @png_create_info_struct(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 128
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 127
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = tail call noalias ptr @png_create_struct_2(i32 noundef 2, ptr noundef %5, ptr noundef %7) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %8, i8 0, i64 312, i1 false)
  br label %11

11:                                               ; preds = %3, %10, %1
  %12 = phi ptr [ null, %1 ], [ %8, %10 ], [ %8, %3 ]
  ret ptr %12
}

declare noalias ptr @png_create_struct_2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_info_init_3(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = icmp ult i64 %1, 312
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  tail call void @png_destroy_struct(ptr noundef nonnull %3) #22
  %8 = tail call noalias ptr @png_create_struct(i32 noundef 2) #22
  store ptr %8, ptr %0, align 8, !tbaa !56
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %3, %5 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, i8 0, i64 312, i1 false)
  br label %11

11:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_info_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef 32767, i32 noundef -1)
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 118
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 119
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %17) #22
  store ptr null, ptr %16, align 8, !tbaa !58
  store i32 0, ptr %12, align 8, !tbaa !57
  br label %18

18:                                               ; preds = %11, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %9, i8 0, i64 312, i1 false)
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 129
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 127
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  tail call void @png_destroy_struct_2(ptr noundef nonnull %9, ptr noundef %20, ptr noundef %22) #22
  store ptr null, ptr %1, align 8, !tbaa !56
  br label %23

23:                                               ; preds = %8, %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_info_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 32767, i32 noundef -1)
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 118
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 119
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %8) #22
  store ptr null, ptr %7, align 8, !tbaa !58
  store i32 0, ptr %3, align 8, !tbaa !57
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %1, i8 0, i64 312, i1 false)
  br label %12

12:                                               ; preds = %9, %11
  ret void
}

declare void @png_destroy_struct_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_destroy_struct(ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_create_struct(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @png_data_freer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  switch i32 %2, label %18 [
    i32 1, label %9
    i32 2, label %13
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = or i32 %11, %3
  store i32 %12, ptr %10, align 4, !tbaa !60
  br label %19

13:                                               ; preds = %8
  %14 = xor i32 %3, -1
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = and i32 %16, %14
  store i32 %17, ptr %15, align 4, !tbaa !60
  br label %19

18:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.4) #22
  br label %19

19:                                               ; preds = %13, %18, %4, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %249, label %8

8:                                                ; preds = %4
  %9 = and i32 %2, 16384
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %3, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %32, label %37

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = sext i32 %3 to i64
  %26 = getelementptr inbounds %struct.png_text_struct, ptr %22, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %27) #22
  %30 = load ptr, ptr %21, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.png_text_struct, ptr %30, i64 %25, i32 1
  store ptr null, ptr %31, align 8, !tbaa !65
  br label %41

32:                                               ; preds = %16, %32
  %33 = phi i32 [ %34, %32 ], [ 0, %16 ]
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 16384, i32 noundef %33)
  %34 = add nuw nsw i32 %33, 1
  %35 = load i32, ptr %17, align 4, !tbaa !63
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %32, label %37, !llvm.loop !67

37:                                               ; preds = %32, %16
  %38 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  tail call void @png_free(ptr noundef %0, ptr noundef %40) #22
  store ptr null, ptr %39, align 8, !tbaa !64
  store i32 0, ptr %38, align 4, !tbaa !63
  br label %41

41:                                               ; preds = %37, %29, %24, %20, %8
  %42 = and i32 %2, 8192
  %43 = load i32, ptr %10, align 4, !tbaa !60
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  tail call void @png_free(ptr noundef %0, ptr noundef %48) #22
  store ptr null, ptr %47, align 8, !tbaa !68
  %49 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !69
  %51 = and i32 %50, -17
  store i32 %51, ptr %49, align 8, !tbaa !69
  br label %52

52:                                               ; preds = %46, %41
  %53 = and i32 %2, 256
  %54 = load i32, ptr %10, align 4, !tbaa !60
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  tail call void @png_free(ptr noundef %0, ptr noundef %59) #22
  %60 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  tail call void @png_free(ptr noundef %0, ptr noundef %61) #22
  %62 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %63 = load i32, ptr %62, align 8, !tbaa !69
  %64 = and i32 %63, -16385
  store i32 %64, ptr %62, align 8, !tbaa !69
  br label %65

65:                                               ; preds = %57, %52
  %66 = and i32 %2, 128
  %67 = load i32, ptr %10, align 4, !tbaa !60
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 41
  %72 = load ptr, ptr %71, align 8, !tbaa !72
  tail call void @png_free(ptr noundef %0, ptr noundef %72) #22
  %73 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 44
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  tail call void @png_free(ptr noundef %0, ptr noundef %74) #22
  store ptr null, ptr %71, align 8, !tbaa !72
  store ptr null, ptr %73, align 8, !tbaa !73
  %75 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 45
  %76 = load ptr, ptr %75, align 8, !tbaa !74
  %77 = icmp eq ptr %76, null
  br i1 %77, label %95, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 47
  %80 = load i8, ptr %79, align 1, !tbaa !75
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78, %82
  %83 = phi i64 [ %89, %82 ], [ 0, %78 ]
  %84 = load ptr, ptr %75, align 8, !tbaa !74
  %85 = getelementptr inbounds ptr, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !56
  tail call void @png_free(ptr noundef %0, ptr noundef %86) #22
  %87 = load ptr, ptr %75, align 8, !tbaa !74
  %88 = getelementptr inbounds ptr, ptr %87, i64 %83
  store ptr null, ptr %88, align 8, !tbaa !56
  %89 = add nuw nsw i64 %83, 1
  %90 = load i8, ptr %79, align 1, !tbaa !75
  %91 = zext i8 %90 to i64
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %82, label %93, !llvm.loop !76

93:                                               ; preds = %82, %78
  %94 = load ptr, ptr %75, align 8, !tbaa !74
  tail call void @png_free(ptr noundef %0, ptr noundef %94) #22
  store ptr null, ptr %75, align 8, !tbaa !74
  br label %95

95:                                               ; preds = %93, %70
  %96 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !69
  %98 = and i32 %97, -1025
  store i32 %98, ptr %96, align 8, !tbaa !69
  br label %99

99:                                               ; preds = %95, %65
  %100 = and i32 %2, 16
  %101 = load i32, ptr %10, align 4, !tbaa !60
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 51
  %106 = load ptr, ptr %105, align 8, !tbaa !77
  tail call void @png_free(ptr noundef %0, ptr noundef %106) #22
  %107 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 52
  %108 = load ptr, ptr %107, align 8, !tbaa !78
  tail call void @png_free(ptr noundef %0, ptr noundef %108) #22
  %109 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %110 = load i32, ptr %109, align 8, !tbaa !69
  %111 = and i32 %110, -4097
  store i32 %111, ptr %109, align 8, !tbaa !69
  br label %112

112:                                              ; preds = %104, %99
  %113 = and i32 %2, 32
  %114 = load i32, ptr %10, align 4, !tbaa !60
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %152, label %117

117:                                              ; preds = %112
  %118 = icmp eq i32 %3, -1
  br i1 %118, label %133, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  %121 = load ptr, ptr %120, align 8, !tbaa !79
  %122 = icmp eq ptr %121, null
  br i1 %122, label %152, label %123

123:                                              ; preds = %119
  %124 = sext i32 %3 to i64
  %125 = getelementptr inbounds %struct.png_sPLT_struct, ptr %121, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !80
  tail call void @png_free(ptr noundef %0, ptr noundef %126) #22
  %127 = load ptr, ptr %120, align 8, !tbaa !79
  %128 = getelementptr inbounds %struct.png_sPLT_struct, ptr %127, i64 %124, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !82
  tail call void @png_free(ptr noundef %0, ptr noundef %129) #22
  %130 = load ptr, ptr %120, align 8, !tbaa !79
  %131 = getelementptr inbounds %struct.png_sPLT_struct, ptr %130, i64 %124
  store ptr null, ptr %131, align 8, !tbaa !80
  %132 = getelementptr inbounds %struct.png_sPLT_struct, ptr %130, i64 %124, i32 2
  store ptr null, ptr %132, align 8, !tbaa !82
  br label %152

133:                                              ; preds = %117
  %134 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 56
  %135 = load i32, ptr %134, align 8, !tbaa !83
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %134, align 8, !tbaa !83
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137, %140
  %141 = phi i32 [ %142, %140 ], [ 0, %137 ]
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 32, i32 noundef %141)
  %142 = add nuw nsw i32 %141, 1
  %143 = load i32, ptr %134, align 8, !tbaa !83
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %140, label %145, !llvm.loop !84

145:                                              ; preds = %140, %137
  %146 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  %147 = load ptr, ptr %146, align 8, !tbaa !79
  tail call void @png_free(ptr noundef %0, ptr noundef %147) #22
  store ptr null, ptr %146, align 8, !tbaa !79
  store i32 0, ptr %134, align 8, !tbaa !83
  br label %148

148:                                              ; preds = %145, %133
  %149 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !69
  %151 = and i32 %150, -8193
  store i32 %151, ptr %149, align 8, !tbaa !69
  br label %152

152:                                              ; preds = %148, %123, %119, %112
  %153 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !85
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %154) #22
  store ptr null, ptr %153, align 8, !tbaa !85
  br label %157

157:                                              ; preds = %156, %152
  %158 = and i32 %2, 512
  %159 = load i32, ptr %10, align 4, !tbaa !60
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %189, label %162

162:                                              ; preds = %157
  %163 = icmp eq i32 %3, -1
  br i1 %163, label %174, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %166 = load ptr, ptr %165, align 8, !tbaa !86
  %167 = icmp eq ptr %166, null
  br i1 %167, label %189, label %168

168:                                              ; preds = %164
  %169 = sext i32 %3 to i64
  %170 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %166, i64 %169, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !87
  tail call void @png_free(ptr noundef %0, ptr noundef %171) #22
  %172 = load ptr, ptr %165, align 8, !tbaa !86
  %173 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %172, i64 %169, i32 1
  store ptr null, ptr %173, align 8, !tbaa !87
  br label %189

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %176 = load i32, ptr %175, align 8, !tbaa !88
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %175, align 8, !tbaa !88
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178, %181
  %182 = phi i32 [ %183, %181 ], [ 0, %178 ]
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 512, i32 noundef %182)
  %183 = add nuw nsw i32 %182, 1
  %184 = load i32, ptr %175, align 8, !tbaa !88
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %181, label %186, !llvm.loop !89

186:                                              ; preds = %181, %178
  %187 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %188 = load ptr, ptr %187, align 8, !tbaa !86
  tail call void @png_free(ptr noundef %0, ptr noundef %188) #22
  store ptr null, ptr %187, align 8, !tbaa !86
  store i32 0, ptr %175, align 8, !tbaa !88
  br label %189

189:                                              ; preds = %174, %186, %168, %164, %157
  %190 = and i32 %2, 8
  %191 = load i32, ptr %10, align 4, !tbaa !60
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 32
  %196 = load ptr, ptr %195, align 8, !tbaa !90
  tail call void @png_free(ptr noundef %0, ptr noundef %196) #22
  store ptr null, ptr %195, align 8, !tbaa !90
  %197 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !69
  %199 = and i32 %198, -65
  store i32 %199, ptr %197, align 8, !tbaa !69
  br label %200

200:                                              ; preds = %194, %189
  %201 = and i32 %2, 4096
  %202 = load i32, ptr %10, align 4, !tbaa !60
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 4
  %207 = load ptr, ptr %206, align 8, !tbaa !91
  tail call void @png_free(ptr noundef %0, ptr noundef %207) #22
  store ptr null, ptr %206, align 8, !tbaa !91
  %208 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %209 = load i32, ptr %208, align 8, !tbaa !69
  %210 = and i32 %209, -9
  store i32 %210, ptr %208, align 8, !tbaa !69
  %211 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  store i16 0, ptr %211, align 8, !tbaa !92
  br label %212

212:                                              ; preds = %205, %200
  %213 = and i32 %2, 64
  %214 = load i32, ptr %10, align 4, !tbaa !60
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %242, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %219 = load ptr, ptr %218, align 8, !tbaa !93
  %220 = icmp eq ptr %219, null
  br i1 %220, label %238, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !94
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %221, %225
  %226 = phi i64 [ %232, %225 ], [ 0, %221 ]
  %227 = load ptr, ptr %218, align 8, !tbaa !93
  %228 = getelementptr inbounds ptr, ptr %227, i64 %226
  %229 = load ptr, ptr %228, align 8, !tbaa !56
  tail call void @png_free(ptr noundef %0, ptr noundef %229) #22
  %230 = load ptr, ptr %218, align 8, !tbaa !93
  %231 = getelementptr inbounds ptr, ptr %230, i64 %226
  store ptr null, ptr %231, align 8, !tbaa !56
  %232 = add nuw nsw i64 %226, 1
  %233 = load i32, ptr %222, align 4, !tbaa !94
  %234 = sext i32 %233 to i64
  %235 = icmp slt i64 %232, %234
  br i1 %235, label %225, label %236, !llvm.loop !95

236:                                              ; preds = %225, %221
  %237 = load ptr, ptr %218, align 8, !tbaa !93
  tail call void @png_free(ptr noundef %0, ptr noundef %237) #22
  store ptr null, ptr %218, align 8, !tbaa !93
  br label %238

238:                                              ; preds = %236, %217
  %239 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %240 = load i32, ptr %239, align 8, !tbaa !69
  %241 = and i32 %240, -32769
  store i32 %241, ptr %239, align 8, !tbaa !69
  br label %242

242:                                              ; preds = %238, %212
  %243 = icmp eq i32 %3, -1
  %244 = and i32 %2, -16929
  %245 = select i1 %243, i32 %2, i32 %244
  %246 = xor i32 %245, -1
  %247 = load i32, ptr %10, align 4, !tbaa !60
  %248 = and i32 %247, %246
  store i32 %248, ptr %10, align 4, !tbaa !60
  br label %249

249:                                              ; preds = %4, %242
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_io_ptr(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_init_io(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 7
  store ptr %1, ptr %5, align 8, !tbaa !96
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @png_convert_to_rfc1123(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [5 x i8], align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %1, align 2, !tbaa !97
  %7 = icmp ugt i16 %6, 9999
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 1
  %10 = load i8, ptr %9, align 2, !tbaa !98
  %11 = add i8 %10, -13
  %12 = icmp ult i8 %11, -12
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !99
  %16 = add i8 %15, -32
  %17 = icmp ult i8 %16, -31
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !100
  %21 = icmp ugt i8 %20, 23
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 4
  %24 = load i8, ptr %23, align 1, !tbaa !101
  %25 = icmp ugt i8 %24, 59
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 5
  %28 = load i8, ptr %27, align 2, !tbaa !102
  %29 = icmp ugt i8 %28, 60
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18, %13, %8, %5
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #22
  br label %89

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #22
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114
  %33 = getelementptr inbounds i8, ptr %3, i64 5
  %34 = zext nneg i8 %15 to i64
  %35 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 1, i64 noundef %34) #22
  %36 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef 0, ptr noundef %35) #22
  %37 = icmp ult i64 %36, 28
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = add nuw nsw i64 %36, 1
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %36
  store i8 32, ptr %40, align 1, !tbaa !52
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i64 [ %39, %38 ], [ %36, %31 ]
  %43 = load i8, ptr %9, align 2, !tbaa !98
  %44 = zext i8 %43 to i64
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds [12 x [4 x i8]], ptr @png_convert_to_rfc1123.short_months, i64 0, i64 %45
  %47 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %42, ptr noundef nonnull %46) #22
  %48 = icmp ult i64 %47, 28
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = add nuw nsw i64 %47, 1
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %47
  store i8 32, ptr %51, align 1, !tbaa !52
  br label %52

52:                                               ; preds = %49, %41
  %53 = phi i64 [ %50, %49 ], [ %47, %41 ]
  %54 = load i16, ptr %1, align 2, !tbaa !97
  %55 = zext i16 %54 to i64
  %56 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 1, i64 noundef %55) #22
  %57 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %53, ptr noundef %56) #22
  %58 = icmp ult i64 %57, 28
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = add nuw nsw i64 %57, 1
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %57
  store i8 32, ptr %61, align 1, !tbaa !52
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i64 [ %60, %59 ], [ %57, %52 ]
  %64 = load i8, ptr %19, align 2, !tbaa !100
  %65 = zext i8 %64 to i64
  %66 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 2, i64 noundef %65) #22
  %67 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %63, ptr noundef %66) #22
  %68 = icmp ult i64 %67, 28
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = add nuw nsw i64 %67, 1
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %67
  store i8 58, ptr %71, align 1, !tbaa !52
  br label %72

72:                                               ; preds = %69, %62
  %73 = phi i64 [ %70, %69 ], [ %67, %62 ]
  %74 = load i8, ptr %23, align 1, !tbaa !101
  %75 = zext i8 %74 to i64
  %76 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 2, i64 noundef %75) #22
  %77 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %73, ptr noundef %76) #22
  %78 = icmp ult i64 %77, 28
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %77, 1
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %77
  store i8 58, ptr %81, align 1, !tbaa !52
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi i64 [ %80, %79 ], [ %77, %72 ]
  %84 = load i8, ptr %27, align 2, !tbaa !102
  %85 = zext i8 %84 to i64
  %86 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 2, i64 noundef %85) #22
  %87 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %83, ptr noundef %86) #22
  %88 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %87, ptr noundef nonnull @.str.6) #22
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #22
  br label %89

89:                                               ; preds = %2, %82, %30
  %90 = phi ptr [ null, %30 ], [ %32, %82 ], [ null, %2 ]
  ret ptr %90
}

declare ptr @png_format_number(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_copyright(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_libpng_ver(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_header_version(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.9
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @png_handle_as_unknown(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 118
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 119
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = mul nsw i32 %8, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  br label %16

16:                                               ; preds = %25, %10
  %17 = phi ptr [ %15, %10 ], [ %18, %25 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 -5
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) %18, i64 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %17, i64 -1
  %23 = load i8, ptr %22, align 1, !tbaa !52
  %24 = zext i8 %23 to i32
  br label %27

25:                                               ; preds = %16
  %26 = icmp ugt ptr %18, %12
  br i1 %26, label %16, label %27, !llvm.loop !103

27:                                               ; preds = %25, %2, %6, %21
  %28 = phi i32 [ %24, %21 ], [ 0, %6 ], [ 0, %2 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @png_chunk_unknown_handling(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #22
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !52
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !52
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !52
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !52
  %14 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 0, ptr %14, align 1, !tbaa !52
  %15 = icmp eq ptr %0, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 118
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 119
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = mul nsw i32 %18, 5
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  br label %26

26:                                               ; preds = %35, %20
  %27 = phi ptr [ %25, %20 ], [ %28, %35 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 -5
  %29 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %3, ptr noundef nonnull dereferenceable(4) %28, i64 4)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %27, i64 -1
  %33 = load i8, ptr %32, align 1, !tbaa !52
  %34 = zext i8 %33 to i32
  br label %37

35:                                               ; preds = %26
  %36 = icmp ugt ptr %28, %22
  br i1 %36, label %26, label %37, !llvm.loop !103

37:                                               ; preds = %35, %2, %16, %31
  %38 = phi i32 [ %34, %31 ], [ 0, %16 ], [ 0, %2 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #22
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_reset_zstream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %5 = tail call i32 @inflateReset(ptr noundef nonnull %4) #22
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -2, %1 ]
  ret i32 %7
}

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @png_access_version_number() local_unnamed_addr #6 {
  ret i32 10510
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = icmp eq ptr %0, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %9
  %12 = icmp slt i32 %2, 1
  %13 = or i32 %3, %1
  %14 = or i32 %13, %4
  %15 = or i32 %14, %5
  %16 = or i32 %15, %6
  %17 = or i32 %16, %7
  %18 = or i32 %17, %8
  %19 = icmp slt i32 %18, 0
  %20 = or i1 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #22
  br label %22

22:                                               ; preds = %11, %21
  %23 = phi i32 [ 0, %21 ], [ 1, %11 ]
  %24 = sub nsw i32 100000, %2
  %25 = icmp slt i32 %24, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #22
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ 0, %26 ], [ %23, %22 ]
  %29 = sub nsw i32 100000, %4
  %30 = icmp slt i32 %29, %3
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #22
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ 0, %31 ], [ %28, %27 ]
  %34 = sub nsw i32 100000, %6
  %35 = icmp slt i32 %34, %5
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #22
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ 0, %36 ], [ %33, %32 ]
  %39 = sub nsw i32 100000, %8
  %40 = icmp slt i32 %39, %7
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #22
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ 0, %41 ], [ %38, %37 ]
  %44 = sub nsw i32 %5, %3
  %45 = sub nsw i32 %8, %4
  %46 = lshr i32 %44, 16
  %47 = and i32 %44, 65535
  %48 = lshr i32 %45, 16
  %49 = and i32 %45, 65535
  %50 = mul nuw nsw i32 %49, %47
  %51 = zext nneg i32 %50 to i64
  %52 = mul nuw nsw i32 %49, %46
  %53 = mul nuw nsw i32 %48, %47
  %54 = add nuw nsw i32 %52, %53
  %55 = zext nneg i32 %54 to i64
  %56 = lshr i64 %51, 16
  %57 = add nuw nsw i64 %56, %55
  %58 = and i64 %51, 65535
  %59 = shl nuw nsw i64 %57, 16
  %60 = and i64 %59, 4294901760
  %61 = or disjoint i64 %60, %58
  %62 = lshr i64 %57, 16
  %63 = mul nuw nsw i32 %48, %46
  %64 = zext nneg i32 %63 to i64
  %65 = add nuw nsw i64 %62, %64
  %66 = sub nsw i32 %6, %4
  %67 = sub nsw i32 %7, %3
  %68 = lshr i32 %66, 16
  %69 = and i32 %66, 65535
  %70 = lshr i32 %67, 16
  %71 = and i32 %67, 65535
  %72 = mul nuw nsw i32 %71, %69
  %73 = zext nneg i32 %72 to i64
  %74 = mul nuw nsw i32 %71, %68
  %75 = mul nuw nsw i32 %70, %69
  %76 = add nuw nsw i32 %74, %75
  %77 = zext nneg i32 %76 to i64
  %78 = lshr i64 %73, 16
  %79 = add nuw nsw i64 %78, %77
  %80 = and i64 %73, 65535
  %81 = shl nuw nsw i64 %79, 16
  %82 = and i64 %81, 4294901760
  %83 = or disjoint i64 %82, %80
  %84 = lshr i64 %79, 16
  %85 = mul nuw nsw i32 %70, %68
  %86 = zext nneg i32 %85 to i64
  %87 = add nuw nsw i64 %84, %86
  %88 = icmp eq i64 %65, %87
  %89 = icmp eq i64 %61, %83
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %92

91:                                               ; preds = %42
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #22
  br label %92

92:                                               ; preds = %42, %91, %9
  %93 = phi i32 [ 0, %9 ], [ 0, %91 ], [ %43, %42 ]
  ret i32 %93
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_64bit_product(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  %5 = trunc i64 %0 to i32
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = trunc i64 %1 to i32
  %9 = lshr i32 %8, 16
  %10 = and i32 %8, 65535
  %11 = mul nuw nsw i32 %10, %7
  %12 = zext nneg i32 %11 to i64
  %13 = mul nuw nsw i32 %10, %6
  %14 = mul nuw nsw i32 %9, %7
  %15 = add nuw nsw i32 %13, %14
  %16 = zext nneg i32 %15 to i64
  %17 = lshr i64 %12, 16
  %18 = add nuw nsw i64 %17, %16
  %19 = and i64 %12, 65535
  %20 = shl nuw nsw i64 %18, 16
  %21 = and i64 %20, 4294901760
  %22 = or disjoint i64 %21, %19
  %23 = lshr i64 %18, 16
  %24 = mul nuw nsw i32 %9, %6
  %25 = zext nneg i32 %24 to i64
  %26 = add nuw nsw i64 %23, %25
  store i64 %26, ptr %2, align 8, !tbaa !104
  store i64 %22, ptr %3, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_xy_from_XYZ(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly byval(%struct.png_XYZ) align 8 %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !108
  %9 = add nsw i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %171, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  %14 = sitofp i32 %3 to double
  %15 = fmul double %14, 1.000000e+05
  %16 = sitofp i32 %9 to double
  %17 = fdiv double %15, %16
  %18 = fadd double %17, 5.000000e-01
  %19 = tail call double @llvm.floor.f64(double %18)
  %20 = fcmp ugt double %19, 0x41DFFFFFFFC00000
  %21 = fcmp ult double %19, 0xC1E0000000000000
  %22 = or i1 %20, %21
  br i1 %22, label %171, label %23

23:                                               ; preds = %13
  %24 = fptosi double %19 to i32
  br label %25

25:                                               ; preds = %11, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %11 ]
  store i32 %26, ptr %0, align 4, !tbaa !109
  %27 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 1
  br i1 %10, label %171, label %28

28:                                               ; preds = %25
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %28
  %31 = sitofp i32 %5 to double
  %32 = fmul double %31, 1.000000e+05
  %33 = sitofp i32 %9 to double
  %34 = fdiv double %32, %33
  %35 = fadd double %34, 5.000000e-01
  %36 = tail call double @llvm.floor.f64(double %35)
  %37 = fcmp ugt double %36, 0x41DFFFFFFFC00000
  %38 = fcmp ult double %36, 0xC1E0000000000000
  %39 = or i1 %37, %38
  br i1 %39, label %171, label %40

40:                                               ; preds = %30
  %41 = fptosi double %36 to i32
  br label %42

42:                                               ; preds = %28, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %28 ]
  store i32 %43, ptr %27, align 4, !tbaa !109
  %44 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !111
  %48 = add nsw i32 %47, %45
  %49 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !112
  %51 = add nsw i32 %48, %50
  %52 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 2
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %171, label %54

54:                                               ; preds = %42
  %55 = icmp eq i32 %45, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %54
  %57 = sitofp i32 %45 to double
  %58 = fmul double %57, 1.000000e+05
  %59 = sitofp i32 %51 to double
  %60 = fdiv double %58, %59
  %61 = fadd double %60, 5.000000e-01
  %62 = tail call double @llvm.floor.f64(double %61)
  %63 = fcmp ugt double %62, 0x41DFFFFFFFC00000
  %64 = fcmp ult double %62, 0xC1E0000000000000
  %65 = or i1 %63, %64
  br i1 %65, label %171, label %66

66:                                               ; preds = %56
  %67 = fptosi double %62 to i32
  br label %68

68:                                               ; preds = %54, %66
  %69 = phi i32 [ %67, %66 ], [ 0, %54 ]
  store i32 %69, ptr %52, align 4, !tbaa !109
  %70 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 3
  br i1 %53, label %171, label %71

71:                                               ; preds = %68
  %72 = icmp eq i32 %47, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %71
  %74 = sitofp i32 %47 to double
  %75 = fmul double %74, 1.000000e+05
  %76 = sitofp i32 %51 to double
  %77 = fdiv double %75, %76
  %78 = fadd double %77, 5.000000e-01
  %79 = tail call double @llvm.floor.f64(double %78)
  %80 = fcmp ugt double %79, 0x41DFFFFFFFC00000
  %81 = fcmp ult double %79, 0xC1E0000000000000
  %82 = or i1 %80, %81
  br i1 %82, label %171, label %83

83:                                               ; preds = %73
  %84 = fptosi double %79 to i32
  br label %85

85:                                               ; preds = %71, %83
  %86 = phi i32 [ %84, %83 ], [ 0, %71 ]
  store i32 %86, ptr %70, align 4, !tbaa !109
  %87 = add nsw i32 %51, %9
  %88 = add nsw i32 %45, %3
  %89 = add nsw i32 %47, %5
  %90 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 6
  %91 = load i32, ptr %90, align 8, !tbaa !113
  %92 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !114
  %94 = add nsw i32 %93, %91
  %95 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 8
  %96 = load i32, ptr %95, align 8, !tbaa !115
  %97 = add nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 4
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %171, label %100

100:                                              ; preds = %85
  %101 = icmp eq i32 %91, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %100
  %103 = sitofp i32 %91 to double
  %104 = fmul double %103, 1.000000e+05
  %105 = sitofp i32 %97 to double
  %106 = fdiv double %104, %105
  %107 = fadd double %106, 5.000000e-01
  %108 = tail call double @llvm.floor.f64(double %107)
  %109 = fcmp ugt double %108, 0x41DFFFFFFFC00000
  %110 = fcmp ult double %108, 0xC1E0000000000000
  %111 = or i1 %109, %110
  br i1 %111, label %171, label %112

112:                                              ; preds = %102
  %113 = fptosi double %108 to i32
  br label %114

114:                                              ; preds = %100, %112
  %115 = phi i32 [ %113, %112 ], [ 0, %100 ]
  store i32 %115, ptr %98, align 4, !tbaa !109
  %116 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 5
  br i1 %99, label %171, label %117

117:                                              ; preds = %114
  %118 = icmp eq i32 %93, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %117
  %120 = sitofp i32 %93 to double
  %121 = fmul double %120, 1.000000e+05
  %122 = sitofp i32 %97 to double
  %123 = fdiv double %121, %122
  %124 = fadd double %123, 5.000000e-01
  %125 = tail call double @llvm.floor.f64(double %124)
  %126 = fcmp ugt double %125, 0x41DFFFFFFFC00000
  %127 = fcmp ult double %125, 0xC1E0000000000000
  %128 = or i1 %126, %127
  br i1 %128, label %171, label %129

129:                                              ; preds = %119
  %130 = fptosi double %125 to i32
  br label %131

131:                                              ; preds = %117, %129
  %132 = phi i32 [ %130, %129 ], [ 0, %117 ]
  store i32 %132, ptr %116, align 4, !tbaa !109
  %133 = add nsw i32 %87, %97
  %134 = add nsw i32 %88, %91
  %135 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 6
  %136 = icmp eq i32 %133, 0
  br i1 %136, label %171, label %137

137:                                              ; preds = %131
  %138 = icmp eq i32 %134, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %137
  %140 = sitofp i32 %134 to double
  %141 = fmul double %140, 1.000000e+05
  %142 = sitofp i32 %133 to double
  %143 = fdiv double %141, %142
  %144 = fadd double %143, 5.000000e-01
  %145 = tail call double @llvm.floor.f64(double %144)
  %146 = fcmp ugt double %145, 0x41DFFFFFFFC00000
  %147 = fcmp ult double %145, 0xC1E0000000000000
  %148 = or i1 %146, %147
  br i1 %148, label %171, label %149

149:                                              ; preds = %139
  %150 = fptosi double %145 to i32
  br label %151

151:                                              ; preds = %137, %149
  %152 = phi i32 [ %150, %149 ], [ 0, %137 ]
  store i32 %152, ptr %135, align 4, !tbaa !109
  %153 = add nsw i32 %89, %93
  %154 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 7
  br i1 %136, label %171, label %155

155:                                              ; preds = %151
  %156 = icmp eq i32 %153, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %155
  %158 = sitofp i32 %153 to double
  %159 = fmul double %158, 1.000000e+05
  %160 = sitofp i32 %133 to double
  %161 = fdiv double %159, %160
  %162 = fadd double %161, 5.000000e-01
  %163 = tail call double @llvm.floor.f64(double %162)
  %164 = fcmp ugt double %163, 0x41DFFFFFFFC00000
  %165 = fcmp ult double %163, 0xC1E0000000000000
  %166 = or i1 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %157
  %168 = fptosi double %163 to i32
  br label %169

169:                                              ; preds = %155, %167
  %170 = phi i32 [ %168, %167 ], [ 0, %155 ]
  store i32 %170, ptr %154, align 4, !tbaa !109
  br label %171

171:                                              ; preds = %169, %157, %151, %139, %131, %119, %114, %102, %85, %73, %68, %56, %42, %30, %25, %13, %2
  %172 = phi i32 [ 1, %2 ], [ 1, %13 ], [ 1, %25 ], [ 1, %30 ], [ 1, %42 ], [ 1, %56 ], [ 1, %68 ], [ 1, %73 ], [ 1, %85 ], [ 1, %102 ], [ 1, %114 ], [ 1, %119 ], [ 1, %131 ], [ 1, %139 ], [ 1, %157 ], [ 1, %151 ], [ 0, %169 ]
  ret i32 %172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @png_muldiv(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = sitofp i32 %1 to double
  %12 = sitofp i32 %2 to double
  %13 = fmul double %11, %12
  %14 = sitofp i32 %3 to double
  %15 = fdiv double %13, %14
  %16 = fadd double %15, 5.000000e-01
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = fcmp ugt double %17, 0x41DFFFFFFFC00000
  %19 = fcmp ult double %17, 0xC1E0000000000000
  %20 = or i1 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = fptosi double %17 to i32
  br label %23

23:                                               ; preds = %6, %21
  %24 = phi i32 [ %22, %21 ], [ 0, %6 ]
  store i32 %24, ptr %0, align 4, !tbaa !109
  br label %25

25:                                               ; preds = %23, %4, %10
  %26 = phi i32 [ 0, %10 ], [ 0, %4 ], [ 1, %23 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_XYZ_from_xy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly byval(%struct.png_xy) align 8 %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8
  %4 = icmp ugt i32 %3, 100000
  br i1 %4, label %412, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = icmp slt i32 %7, 0
  %9 = sub nuw nsw i32 100000, %3
  %10 = icmp sgt i32 %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %412, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp ugt i32 %14, 100000
  br i1 %15, label %412, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !118
  %19 = icmp slt i32 %18, 0
  %20 = sub nuw nsw i32 100000, %14
  %21 = icmp sgt i32 %18, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %412, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp ugt i32 %25, 100000
  br i1 %26, label %412, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !119
  %30 = icmp slt i32 %29, 0
  %31 = sub nuw nsw i32 100000, %25
  %32 = icmp sgt i32 %29, %31
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %412, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = icmp ugt i32 %36, 100000
  br i1 %37, label %412, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 0
  %42 = sub nuw nsw i32 100000, %36
  %43 = icmp sgt i32 %40, %42
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %412, label %45

45:                                               ; preds = %38
  %46 = icmp eq i32 %14, %25
  %47 = icmp eq i32 %7, %29
  %48 = or i1 %46, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = sub nsw i32 %7, %29
  %51 = sub nsw i32 %14, %25
  %52 = sitofp i32 %51 to double
  %53 = sitofp i32 %50 to double
  %54 = fmul double %52, %53
  %55 = fdiv double %54, 7.000000e+00
  %56 = fadd double %55, 5.000000e-01
  %57 = tail call double @llvm.floor.f64(double %56)
  %58 = fcmp ole double %57, 0x41DFFFFFFFC00000
  %59 = fcmp oge double %57, 0xC1E0000000000000
  %60 = and i1 %58, %59
  %61 = fptosi double %57 to i32
  %62 = select i1 %60, i32 %61, i32 undef
  %63 = zext i1 %60 to i32
  br label %64

64:                                               ; preds = %49, %45
  %65 = phi i32 [ 0, %45 ], [ %62, %49 ]
  %66 = phi i32 [ 1, %45 ], [ %63, %49 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %412, label %68

68:                                               ; preds = %64
  %69 = icmp eq i32 %18, %29
  %70 = icmp eq i32 %3, %25
  %71 = or i1 %70, %69
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = sub nsw i32 %3, %25
  %74 = sub nsw i32 %18, %29
  %75 = sitofp i32 %74 to double
  %76 = sitofp i32 %73 to double
  %77 = fmul double %76, %75
  %78 = fdiv double %77, 7.000000e+00
  %79 = fadd double %78, 5.000000e-01
  %80 = tail call double @llvm.floor.f64(double %79)
  %81 = fcmp ole double %80, 0x41DFFFFFFFC00000
  %82 = fcmp oge double %80, 0xC1E0000000000000
  %83 = and i1 %81, %82
  %84 = fptosi double %80 to i32
  %85 = select i1 %83, i32 %84, i32 undef
  %86 = zext i1 %83 to i32
  br label %87

87:                                               ; preds = %72, %68
  %88 = phi i32 [ 0, %68 ], [ %85, %72 ]
  %89 = phi i32 [ 1, %68 ], [ %86, %72 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %412, label %91

91:                                               ; preds = %87
  %92 = sub nsw i32 %65, %88
  %93 = icmp eq i32 %40, %29
  %94 = or i1 %46, %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  %96 = sub nsw i32 %40, %29
  %97 = sub nsw i32 %14, %25
  %98 = sitofp i32 %97 to double
  %99 = sitofp i32 %96 to double
  %100 = fmul double %98, %99
  %101 = fdiv double %100, 7.000000e+00
  %102 = fadd double %101, 5.000000e-01
  %103 = tail call double @llvm.floor.f64(double %102)
  %104 = fcmp ole double %103, 0x41DFFFFFFFC00000
  %105 = fcmp oge double %103, 0xC1E0000000000000
  %106 = and i1 %104, %105
  %107 = fptosi double %103 to i32
  %108 = select i1 %106, i32 %107, i32 %65
  %109 = zext i1 %106 to i32
  br label %110

110:                                              ; preds = %95, %91
  %111 = phi i32 [ 0, %91 ], [ %108, %95 ]
  %112 = phi i32 [ 1, %91 ], [ %109, %95 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %412, label %114

114:                                              ; preds = %110
  %115 = icmp eq i32 %36, %25
  %116 = or i1 %69, %115
  br i1 %116, label %132, label %117

117:                                              ; preds = %114
  %118 = sub nsw i32 %36, %25
  %119 = sub nsw i32 %18, %29
  %120 = sitofp i32 %119 to double
  %121 = sitofp i32 %118 to double
  %122 = fmul double %120, %121
  %123 = fdiv double %122, 7.000000e+00
  %124 = fadd double %123, 5.000000e-01
  %125 = tail call double @llvm.floor.f64(double %124)
  %126 = fcmp ole double %125, 0x41DFFFFFFFC00000
  %127 = fcmp oge double %125, 0xC1E0000000000000
  %128 = and i1 %126, %127
  %129 = fptosi double %125 to i32
  %130 = select i1 %128, i32 %129, i32 %88
  %131 = zext i1 %128 to i32
  br label %132

132:                                              ; preds = %117, %114
  %133 = phi i32 [ 0, %114 ], [ %130, %117 ]
  %134 = phi i32 [ 1, %114 ], [ %131, %117 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %412, label %136

136:                                              ; preds = %132
  %137 = sub nsw i32 %111, %133
  %138 = icmp eq i32 %111, %133
  br i1 %138, label %156, label %139

139:                                              ; preds = %136
  %140 = icmp eq i32 %40, 0
  %141 = icmp eq i32 %65, %88
  %142 = or i1 %140, %141
  br i1 %142, label %156, label %143

143:                                              ; preds = %139
  %144 = sitofp i32 %40 to double
  %145 = sitofp i32 %92 to double
  %146 = fmul double %144, %145
  %147 = sitofp i32 %137 to double
  %148 = fdiv double %146, %147
  %149 = fadd double %148, 5.000000e-01
  %150 = tail call double @llvm.floor.f64(double %149)
  %151 = fcmp ole double %150, 0x41DFFFFFFFC00000
  %152 = fcmp oge double %150, 0xC1E0000000000000
  %153 = and i1 %151, %152
  %154 = fptosi double %150 to i32
  %155 = select i1 %153, i32 %154, i32 undef
  br label %156

156:                                              ; preds = %143, %136, %139
  %157 = phi i32 [ 0, %139 ], [ undef, %136 ], [ %155, %143 ]
  %158 = phi i1 [ true, %139 ], [ false, %136 ], [ %153, %143 ]
  %159 = icmp sgt i32 %157, %40
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %412

161:                                              ; preds = %156
  %162 = or i1 %47, %115
  br i1 %162, label %178, label %163

163:                                              ; preds = %161
  %164 = sub nsw i32 %36, %25
  %165 = sub nsw i32 %7, %29
  %166 = sitofp i32 %165 to double
  %167 = sitofp i32 %164 to double
  %168 = fmul double %166, %167
  %169 = fdiv double %168, 7.000000e+00
  %170 = fadd double %169, 5.000000e-01
  %171 = tail call double @llvm.floor.f64(double %170)
  %172 = fcmp ole double %171, 0x41DFFFFFFFC00000
  %173 = fcmp oge double %171, 0xC1E0000000000000
  %174 = and i1 %172, %173
  %175 = fptosi double %171 to i32
  %176 = select i1 %174, i32 %175, i32 %111
  %177 = zext i1 %174 to i32
  br label %178

178:                                              ; preds = %163, %161
  %179 = phi i32 [ 0, %161 ], [ %176, %163 ]
  %180 = phi i32 [ 1, %161 ], [ %177, %163 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %412, label %182

182:                                              ; preds = %178
  %183 = or i1 %70, %93
  br i1 %183, label %199, label %184

184:                                              ; preds = %182
  %185 = sub nsw i32 %40, %29
  %186 = sub nsw i32 %3, %25
  %187 = sitofp i32 %186 to double
  %188 = sitofp i32 %185 to double
  %189 = fmul double %187, %188
  %190 = fdiv double %189, 7.000000e+00
  %191 = fadd double %190, 5.000000e-01
  %192 = tail call double @llvm.floor.f64(double %191)
  %193 = fcmp ole double %192, 0x41DFFFFFFFC00000
  %194 = fcmp oge double %192, 0xC1E0000000000000
  %195 = and i1 %193, %194
  %196 = fptosi double %192 to i32
  %197 = select i1 %195, i32 %196, i32 %133
  %198 = zext i1 %195 to i32
  br label %199

199:                                              ; preds = %184, %182
  %200 = phi i32 [ 0, %182 ], [ %197, %184 ]
  %201 = phi i32 [ 1, %182 ], [ %198, %184 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %412, label %203

203:                                              ; preds = %199
  %204 = sub nsw i32 %179, %200
  %205 = icmp eq i32 %179, %200
  br i1 %205, label %223, label %206

206:                                              ; preds = %203
  %207 = icmp eq i32 %40, 0
  %208 = icmp eq i32 %65, %88
  %209 = or i1 %207, %208
  br i1 %209, label %223, label %210

210:                                              ; preds = %206
  %211 = sitofp i32 %40 to double
  %212 = sitofp i32 %92 to double
  %213 = fmul double %211, %212
  %214 = sitofp i32 %204 to double
  %215 = fdiv double %213, %214
  %216 = fadd double %215, 5.000000e-01
  %217 = tail call double @llvm.floor.f64(double %216)
  %218 = fcmp ole double %217, 0x41DFFFFFFFC00000
  %219 = fcmp oge double %217, 0xC1E0000000000000
  %220 = and i1 %218, %219
  %221 = fptosi double %217 to i32
  %222 = select i1 %220, i32 %221, i32 undef
  br label %223

223:                                              ; preds = %210, %203, %206
  %224 = phi i32 [ 0, %206 ], [ undef, %203 ], [ %222, %210 ]
  %225 = phi i1 [ true, %206 ], [ false, %203 ], [ %220, %210 ]
  %226 = icmp sgt i32 %224, %40
  %227 = select i1 %225, i1 %226, i1 false
  br i1 %227, label %228, label %412

228:                                              ; preds = %223
  %229 = sitofp i32 %40 to double
  %230 = fdiv double 1.000000e+10, %229
  %231 = fadd double %230, 5.000000e-01
  %232 = tail call double @llvm.floor.f64(double %231)
  %233 = fcmp ole double %232, 0x41DFFFFFFFC00000
  %234 = fcmp oge double %232, 0xC1E0000000000000
  %235 = and i1 %233, %234
  %236 = fptosi double %232 to i32
  %237 = select i1 %235, i32 %236, i32 0
  %238 = sitofp i32 %157 to double
  %239 = fdiv double 1.000000e+10, %238
  %240 = fadd double %239, 5.000000e-01
  %241 = tail call double @llvm.floor.f64(double %240)
  %242 = fcmp ole double %241, 0x41DFFFFFFFC00000
  %243 = fcmp oge double %241, 0xC1E0000000000000
  %244 = and i1 %242, %243
  %245 = fptosi double %241 to i32
  %246 = select i1 %244, i32 %245, i32 0
  %247 = sitofp i32 %224 to double
  %248 = fdiv double 1.000000e+10, %247
  %249 = fadd double %248, 5.000000e-01
  %250 = tail call double @llvm.floor.f64(double %249)
  %251 = fcmp ole double %250, 0x41DFFFFFFFC00000
  %252 = fcmp oge double %250, 0xC1E0000000000000
  %253 = and i1 %251, %252
  %254 = fptosi double %250 to i32
  %255 = select i1 %253, i32 %254, i32 0
  %256 = add i32 %246, %255
  %257 = sub i32 %237, %256
  %258 = icmp slt i32 %257, 1
  br i1 %258, label %412, label %259

259:                                              ; preds = %228
  %260 = icmp eq i32 %157, 0
  br i1 %260, label %412, label %261

261:                                              ; preds = %259
  %262 = icmp eq i32 %3, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %261
  %264 = sitofp i32 %3 to double
  %265 = fmul double %264, 1.000000e+05
  %266 = fdiv double %265, %238
  %267 = fadd double %266, 5.000000e-01
  %268 = tail call double @llvm.floor.f64(double %267)
  %269 = fcmp ugt double %268, 0x41DFFFFFFFC00000
  %270 = fcmp ult double %268, 0xC1E0000000000000
  %271 = or i1 %269, %270
  br i1 %271, label %412, label %272

272:                                              ; preds = %263
  %273 = fptosi double %268 to i32
  br label %274

274:                                              ; preds = %261, %272
  %275 = phi i32 [ %273, %272 ], [ 0, %261 ]
  store i32 %275, ptr %0, align 4, !tbaa !109
  %276 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 1
  br i1 %260, label %412, label %277

277:                                              ; preds = %274
  %278 = icmp eq i32 %7, 0
  br i1 %278, label %290, label %279

279:                                              ; preds = %277
  %280 = sitofp i32 %7 to double
  %281 = fmul double %280, 1.000000e+05
  %282 = fdiv double %281, %238
  %283 = fadd double %282, 5.000000e-01
  %284 = tail call double @llvm.floor.f64(double %283)
  %285 = fcmp ugt double %284, 0x41DFFFFFFFC00000
  %286 = fcmp ult double %284, 0xC1E0000000000000
  %287 = or i1 %285, %286
  br i1 %287, label %412, label %288

288:                                              ; preds = %279
  %289 = fptosi double %284 to i32
  br label %290

290:                                              ; preds = %277, %288
  %291 = phi i32 [ %289, %288 ], [ 0, %277 ]
  store i32 %291, ptr %276, align 4, !tbaa !109
  %292 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 2
  %293 = add i32 %7, %3
  %294 = sub i32 100000, %293
  br i1 %260, label %412, label %295

295:                                              ; preds = %290
  %296 = icmp eq i32 %293, 100000
  br i1 %296, label %308, label %297

297:                                              ; preds = %295
  %298 = sitofp i32 %294 to double
  %299 = fmul double %298, 1.000000e+05
  %300 = fdiv double %299, %238
  %301 = fadd double %300, 5.000000e-01
  %302 = tail call double @llvm.floor.f64(double %301)
  %303 = fcmp ugt double %302, 0x41DFFFFFFFC00000
  %304 = fcmp ult double %302, 0xC1E0000000000000
  %305 = or i1 %303, %304
  br i1 %305, label %412, label %306

306:                                              ; preds = %297
  %307 = fptosi double %302 to i32
  br label %308

308:                                              ; preds = %295, %306
  %309 = phi i32 [ %307, %306 ], [ 0, %295 ]
  store i32 %309, ptr %292, align 4, !tbaa !109
  %310 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 3
  %311 = icmp eq i32 %224, 0
  br i1 %311, label %412, label %312

312:                                              ; preds = %308
  %313 = icmp eq i32 %14, 0
  br i1 %313, label %325, label %314

314:                                              ; preds = %312
  %315 = sitofp i32 %14 to double
  %316 = fmul double %315, 1.000000e+05
  %317 = fdiv double %316, %247
  %318 = fadd double %317, 5.000000e-01
  %319 = tail call double @llvm.floor.f64(double %318)
  %320 = fcmp ugt double %319, 0x41DFFFFFFFC00000
  %321 = fcmp ult double %319, 0xC1E0000000000000
  %322 = or i1 %320, %321
  br i1 %322, label %412, label %323

323:                                              ; preds = %314
  %324 = fptosi double %319 to i32
  br label %325

325:                                              ; preds = %312, %323
  %326 = phi i32 [ %324, %323 ], [ 0, %312 ]
  store i32 %326, ptr %310, align 4, !tbaa !109
  %327 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 4
  br i1 %311, label %412, label %328

328:                                              ; preds = %325
  %329 = icmp eq i32 %18, 0
  br i1 %329, label %341, label %330

330:                                              ; preds = %328
  %331 = sitofp i32 %18 to double
  %332 = fmul double %331, 1.000000e+05
  %333 = fdiv double %332, %247
  %334 = fadd double %333, 5.000000e-01
  %335 = tail call double @llvm.floor.f64(double %334)
  %336 = fcmp ugt double %335, 0x41DFFFFFFFC00000
  %337 = fcmp ult double %335, 0xC1E0000000000000
  %338 = or i1 %336, %337
  br i1 %338, label %412, label %339

339:                                              ; preds = %330
  %340 = fptosi double %335 to i32
  br label %341

341:                                              ; preds = %328, %339
  %342 = phi i32 [ %340, %339 ], [ 0, %328 ]
  store i32 %342, ptr %327, align 4, !tbaa !109
  %343 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 5
  %344 = add i32 %18, %14
  %345 = sub i32 100000, %344
  br i1 %311, label %412, label %346

346:                                              ; preds = %341
  %347 = icmp eq i32 %344, 100000
  br i1 %347, label %359, label %348

348:                                              ; preds = %346
  %349 = sitofp i32 %345 to double
  %350 = fmul double %349, 1.000000e+05
  %351 = fdiv double %350, %247
  %352 = fadd double %351, 5.000000e-01
  %353 = tail call double @llvm.floor.f64(double %352)
  %354 = fcmp ugt double %353, 0x41DFFFFFFFC00000
  %355 = fcmp ult double %353, 0xC1E0000000000000
  %356 = or i1 %354, %355
  br i1 %356, label %412, label %357

357:                                              ; preds = %348
  %358 = fptosi double %353 to i32
  br label %359

359:                                              ; preds = %346, %357
  %360 = phi i32 [ %358, %357 ], [ 0, %346 ]
  store i32 %360, ptr %343, align 4, !tbaa !109
  %361 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 6
  %362 = icmp eq i32 %25, 0
  br i1 %362, label %375, label %363

363:                                              ; preds = %359
  %364 = sitofp i32 %25 to double
  %365 = sitofp i32 %257 to double
  %366 = fmul double %364, %365
  %367 = fdiv double %366, 1.000000e+05
  %368 = fadd double %367, 5.000000e-01
  %369 = tail call double @llvm.floor.f64(double %368)
  %370 = fcmp ugt double %369, 0x41DFFFFFFFC00000
  %371 = fcmp ult double %369, 0xC1E0000000000000
  %372 = or i1 %370, %371
  br i1 %372, label %412, label %373

373:                                              ; preds = %363
  %374 = fptosi double %369 to i32
  br label %375

375:                                              ; preds = %359, %373
  %376 = phi i32 [ %374, %373 ], [ 0, %359 ]
  store i32 %376, ptr %361, align 4, !tbaa !109
  %377 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 7
  %378 = icmp eq i32 %29, 0
  br i1 %378, label %391, label %379

379:                                              ; preds = %375
  %380 = sitofp i32 %29 to double
  %381 = sitofp i32 %257 to double
  %382 = fmul double %380, %381
  %383 = fdiv double %382, 1.000000e+05
  %384 = fadd double %383, 5.000000e-01
  %385 = tail call double @llvm.floor.f64(double %384)
  %386 = fcmp ugt double %385, 0x41DFFFFFFFC00000
  %387 = fcmp ult double %385, 0xC1E0000000000000
  %388 = or i1 %386, %387
  br i1 %388, label %412, label %389

389:                                              ; preds = %379
  %390 = fptosi double %385 to i32
  br label %391

391:                                              ; preds = %375, %389
  %392 = phi i32 [ %390, %389 ], [ 0, %375 ]
  store i32 %392, ptr %377, align 4, !tbaa !109
  %393 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 8
  %394 = add i32 %29, %25
  %395 = icmp eq i32 %394, 100000
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  store i32 0, ptr %393, align 4, !tbaa !109
  br label %412

397:                                              ; preds = %391
  %398 = sub i32 100000, %394
  %399 = sitofp i32 %398 to double
  %400 = sitofp i32 %257 to double
  %401 = fmul double %399, %400
  %402 = fdiv double %401, 1.000000e+05
  %403 = fadd double %402, 5.000000e-01
  %404 = tail call double @llvm.floor.f64(double %403)
  %405 = fcmp ugt double %404, 0x41DFFFFFFFC00000
  %406 = fcmp ult double %404, 0xC1E0000000000000
  %407 = or i1 %405, %406
  br i1 %407, label %410, label %408

408:                                              ; preds = %397
  %409 = fptosi double %404 to i32
  store i32 %409, ptr %393, align 4, !tbaa !109
  br label %410

410:                                              ; preds = %408, %397
  %411 = zext i1 %407 to i32
  br label %412

412:                                              ; preds = %379, %363, %396, %410, %348, %341, %330, %325, %314, %308, %297, %290, %279, %274, %263, %259, %228, %223, %199, %178, %156, %132, %110, %87, %64, %38, %34, %27, %23, %16, %12, %5, %2
  %413 = phi i32 [ 1, %2 ], [ 1, %5 ], [ 1, %12 ], [ 1, %16 ], [ 1, %23 ], [ 1, %27 ], [ 1, %34 ], [ 1, %38 ], [ 2, %64 ], [ 2, %87 ], [ 2, %110 ], [ 2, %132 ], [ 1, %156 ], [ 2, %178 ], [ 2, %199 ], [ 1, %223 ], [ 1, %228 ], [ 1, %259 ], [ 1, %263 ], [ 1, %274 ], [ 1, %279 ], [ 1, %290 ], [ 1, %297 ], [ 1, %308 ], [ 1, %314 ], [ 1, %325 ], [ 1, %330 ], [ 1, %341 ], [ 1, %348 ], [ 0, %396 ], [ %411, %410 ], [ 1, %363 ], [ 1, %379 ]
  ret i32 %413
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @png_reciprocal(i32 noundef %0) local_unnamed_addr #6 {
  %2 = sitofp i32 %0 to double
  %3 = fdiv double 1.000000e+10, %2
  %4 = fadd double %3, 5.000000e-01
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = fcmp ole double %5, 0x41DFFFFFFFC00000
  %7 = fcmp oge double %5, 0xC1E0000000000000
  %8 = and i1 %6, %7
  %9 = fptosi double %5 to i32
  %10 = select i1 %8, i32 %9, i32 0
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_XYZ_from_xy_checked(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly byval(%struct.png_xy) align 8 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @png_XYZ_from_xy(ptr noundef %1, ptr noundef nonnull byval(%struct.png_xy) align 8 %2), !range !120
  switch i32 %4, label %6 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %3
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #22
  br label %7

6:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.17) #20
  unreachable

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @png_check_IHDR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.18) #22
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ 1, %10 ], [ 0, %8 ]
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.19) #22
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 1, %14 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 135
  %18 = load i32, ptr %17, align 4, !tbaa !121
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.20) #22
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ 1, %20 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 136
  %24 = load i32, ptr %23, align 8, !tbaa !122
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.21) #22
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ 1, %26 ], [ %22, %21 ]
  %29 = icmp slt i32 %1, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.22) #22
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 1, %30 ], [ %28, %27 ]
  %33 = icmp slt i32 %2, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.23) #22
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ 1, %34 ], [ %32, %31 ]
  %37 = icmp ugt i32 %1, 536870798
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #22
  br label %39

39:                                               ; preds = %38, %35
  switch i32 %3, label %40 [
    i32 16, label %41
    i32 8, label %41
    i32 4, label %41
    i32 2, label %41
    i32 1, label %41
  ]

40:                                               ; preds = %39
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.25) #22
  br label %41

41:                                               ; preds = %39, %39, %39, %39, %39, %40
  %42 = phi i32 [ 1, %40 ], [ %36, %39 ], [ %36, %39 ], [ %36, %39 ], [ %36, %39 ], [ %36, %39 ]
  %43 = and i32 %4, -5
  %44 = icmp eq i32 %43, 1
  %45 = icmp ugt i32 %4, 6
  %46 = or i1 %45, %44
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.26) #22
  br label %48

48:                                               ; preds = %41, %47
  %49 = phi i32 [ 1, %47 ], [ %42, %41 ]
  %50 = icmp eq i32 %4, 3
  %51 = icmp sgt i32 %3, 8
  %52 = and i1 %51, %50
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = icmp eq i32 %4, 4
  %55 = icmp eq i32 %43, 2
  %56 = or i1 %54, %55
  %57 = icmp slt i32 %3, 8
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %48
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.27) #22
  br label %60

60:                                               ; preds = %53, %59
  %61 = phi i32 [ 1, %59 ], [ %49, %53 ]
  %62 = icmp sgt i32 %5, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.28) #22
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ 1, %63 ], [ %61, %60 ]
  %66 = icmp eq i32 %6, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.29) #22
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ 1, %67 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %71 = load i32, ptr %70, align 4, !tbaa !123
  %72 = and i32 %71, 4096
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %76 = load i32, ptr %75, align 8, !tbaa !124
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.30) #22
  br label %79

79:                                               ; preds = %78, %74, %68
  %80 = icmp eq i32 %7, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %83 = load i32, ptr %82, align 8, !tbaa !124
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  %86 = icmp eq i32 %7, 64
  %87 = and i1 %86, %85
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, ptr %70, align 4, !tbaa !123
  %90 = and i32 %89, 4096
  %91 = icmp eq i32 %90, 0
  %92 = icmp eq i32 %43, 2
  %93 = and i1 %92, %91
  br i1 %93, label %95, label %94

94:                                               ; preds = %88, %81
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.31) #22
  br label %95

95:                                               ; preds = %88, %94
  %96 = phi i32 [ 1, %94 ], [ %69, %88 ]
  %97 = load i32, ptr %70, align 4, !tbaa !123
  %98 = and i32 %97, 4096
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.32) #22
  br label %101

101:                                              ; preds = %95, %100, %79
  %102 = phi i32 [ 1, %100 ], [ %96, %95 ], [ %69, %79 ]
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.33) #20
  unreachable

105:                                              ; preds = %101
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @png_check_fp_number(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 {
  %5 = load i32, ptr %2, align 4, !tbaa !109
  %6 = load i64, ptr %3, align 8, !tbaa !104
  br label %7

7:                                                ; preds = %74, %4
  %8 = phi i32 [ %5, %4 ], [ %75, %74 ]
  %9 = phi i64 [ %6, %4 ], [ %76, %74 ]
  %10 = icmp ult i64 %9, %1
  br i1 %10, label %11, label %78

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 %9
  %13 = load i8, ptr %12, align 1, !tbaa !52
  switch i8 %13, label %74 [
    i8 43, label %19
    i8 45, label %14
    i8 46, label %15
    i8 48, label %16
    i8 49, label %17
    i8 50, label %17
    i8 51, label %17
    i8 52, label %17
    i8 53, label %17
    i8 54, label %17
    i8 55, label %17
    i8 56, label %17
    i8 57, label %17
    i8 69, label %18
    i8 101, label %18
  ]

14:                                               ; preds = %11
  br label %19

15:                                               ; preds = %11
  br label %19

16:                                               ; preds = %11
  br label %19

17:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11
  br label %19

18:                                               ; preds = %11, %11
  br label %19

19:                                               ; preds = %11, %18, %17, %16, %15, %14
  %20 = phi i32 [ 32, %18 ], [ 264, %17 ], [ 8, %16 ], [ 16, %15 ], [ 132, %14 ], [ 4, %11 ]
  %21 = and i32 %8, 3
  %22 = and i32 %20, 60
  %23 = or disjoint i32 %22, %21
  switch i32 %23, label %74 [
    i32 4, label %24
    i32 16, label %29
    i32 8, label %41
    i32 32, label %49
    i32 9, label %55
    i32 33, label %58
    i32 6, label %64
    i32 10, label %69
  ]

24:                                               ; preds = %19
  %25 = and i32 %8, 60
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = or i32 %20, %8
  br label %71

29:                                               ; preds = %19
  %30 = and i32 %8, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %29
  %33 = and i32 %8, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = or i32 %20, %8
  br label %71

37:                                               ; preds = %32
  %38 = and i32 %8, 448
  %39 = or i32 %38, %20
  %40 = or disjoint i32 %39, 1
  br label %71

41:                                               ; preds = %19
  %42 = and i32 %8, 16
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %8, 384
  %45 = or disjoint i32 %44, 17
  %46 = select i1 %43, i32 %8, i32 %45
  %47 = or i32 %46, %20
  %48 = or i32 %47, 64
  br label %71

49:                                               ; preds = %19
  %50 = and i32 %8, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = and i32 %8, 448
  %54 = or disjoint i32 %53, 2
  br label %71

55:                                               ; preds = %19
  %56 = or i32 %8, %20
  %57 = or i32 %56, 64
  br label %71

58:                                               ; preds = %19
  %59 = and i32 %8, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = and i32 %8, 448
  %63 = or disjoint i32 %62, 2
  br label %71

64:                                               ; preds = %19
  %65 = and i32 %8, 60
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = or disjoint i32 %8, 4
  br label %71

69:                                               ; preds = %19
  %70 = or i32 %8, 72
  br label %71

71:                                               ; preds = %37, %35, %69, %67, %61, %55, %52, %41, %27
  %72 = phi i32 [ %70, %69 ], [ %68, %67 ], [ %63, %61 ], [ %57, %55 ], [ %54, %52 ], [ %48, %41 ], [ %36, %35 ], [ %40, %37 ], [ %28, %27 ]
  %73 = add i64 %9, 1
  br label %74

74:                                               ; preds = %19, %64, %58, %49, %29, %24, %11, %71
  %75 = phi i32 [ %72, %71 ], [ %8, %11 ], [ %8, %24 ], [ %8, %29 ], [ %8, %49 ], [ %8, %58 ], [ %8, %64 ], [ %8, %19 ]
  %76 = phi i64 [ %73, %71 ], [ %9, %11 ], [ %9, %24 ], [ %9, %29 ], [ %9, %49 ], [ %9, %58 ], [ %9, %64 ], [ %9, %19 ]
  %77 = phi i32 [ 0, %71 ], [ 5, %11 ], [ 5, %24 ], [ 5, %29 ], [ 5, %49 ], [ 5, %58 ], [ 5, %64 ], [ 5, %19 ]
  switch i32 %77, label %83 [
    i32 0, label %7
    i32 5, label %78
  ], !llvm.loop !125

78:                                               ; preds = %7, %74
  %79 = phi i32 [ %75, %74 ], [ %8, %7 ]
  %80 = phi i64 [ %76, %74 ], [ %9, %7 ]
  store i32 %79, ptr %2, align 4, !tbaa !109
  store i64 %80, ptr %3, align 8, !tbaa !104
  %81 = lshr i32 %79, 3
  %82 = and i32 %81, 1
  br label %83

83:                                               ; preds = %74, %78
  %84 = phi i32 [ %82, %78 ], [ undef, %74 ]
  ret i32 %84
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @png_check_fp_string(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !104
  %5 = call i32 @png_check_fp_number(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !tbaa !104
  %9 = icmp eq i64 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !52
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %7
  %15 = load i32, ptr %3, align 4, !tbaa !109
  br label %16

16:                                               ; preds = %2, %10, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @png_ascii_from_fp(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca double, align 8
  %9 = icmp eq i32 %4, 0
  %10 = tail call i32 @llvm.umin.i32(i32 %4, i32 16)
  %11 = select i1 %9, i32 15, i32 %10
  %12 = add nuw nsw i32 %11, 5
  %13 = zext nneg i32 %12 to i64
  %14 = icmp ugt i64 %13, %2
  br i1 %14, label %327, label %15

15:                                               ; preds = %5
  %16 = fcmp olt double %3, 0.000000e+00
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = fneg double %3
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !52
  %20 = add i64 %2, -1
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi double [ %18, %17 ], [ %3, %15 ]
  %23 = phi i64 [ %20, %17 ], [ %2, %15 ]
  %24 = phi ptr [ %19, %17 ], [ %1, %15 ]
  %25 = fcmp oge double %22, 0x10000000000000
  %26 = fcmp ole double %22, 0x7FEFFFFFFFFFFFFF
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %321

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %29 = call double @frexp(double noundef %22, ptr noundef nonnull %6) #22
  %30 = load i32, ptr %6, align 4, !tbaa !109
  %31 = mul nsw i32 %30, 77
  %32 = ashr i32 %31, 8
  store i32 %32, ptr %6, align 4, !tbaa !109
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = icmp slt i32 %32, -307
  br i1 %35, label %55, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %32
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi i32 [ %37, %36 ], [ %32, %28 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38, %41
  %42 = phi i32 [ %50, %41 ], [ %39, %38 ]
  %43 = phi double [ %48, %41 ], [ 1.000000e+00, %38 ]
  %44 = phi double [ %49, %41 ], [ 1.000000e+01, %38 ]
  %45 = and i32 %42, 1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, double 1.000000e+00, double %44
  %48 = fmul double %43, %47
  %49 = fmul double %44, %44
  %50 = lshr i32 %42, 1
  %51 = icmp ult i32 %42, 2
  br i1 %51, label %52, label %41, !llvm.loop !126

52:                                               ; preds = %41
  %53 = fdiv double 1.000000e+00, %48
  %54 = select i1 %33, double %48, double %53
  br label %55

55:                                               ; preds = %34, %38, %52
  %56 = phi double [ 0.000000e+00, %34 ], [ %54, %52 ], [ 1.000000e+00, %38 ]
  %57 = load i32, ptr %6, align 4, !tbaa !109
  br label %58

58:                                               ; preds = %88, %55
  %59 = phi i32 [ %57, %55 ], [ %91, %88 ]
  %60 = phi double [ %56, %55 ], [ %92, %88 ]
  %61 = fcmp olt double %60, 0x10000000000000
  %62 = fcmp olt double %60, %22
  %63 = or i1 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %58
  %65 = add nsw i32 %59, 1
  %66 = icmp sgt i32 %59, -2
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = icmp slt i32 %59, -308
  br i1 %68, label %88, label %69

69:                                               ; preds = %67
  %70 = xor i32 %59, -1
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi i32 [ %70, %69 ], [ %65, %64 ]
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71, %74
  %75 = phi i32 [ %83, %74 ], [ %72, %71 ]
  %76 = phi double [ %81, %74 ], [ 1.000000e+00, %71 ]
  %77 = phi double [ %82, %74 ], [ 1.000000e+01, %71 ]
  %78 = and i32 %75, 1
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, double 1.000000e+00, double %77
  %81 = fmul double %76, %80
  %82 = fmul double %77, %77
  %83 = lshr i32 %75, 1
  %84 = icmp ult i32 %75, 2
  br i1 %84, label %85, label %74, !llvm.loop !126

85:                                               ; preds = %74
  %86 = fdiv double 1.000000e+00, %81
  %87 = select i1 %66, double %81, double %86
  br label %88

88:                                               ; preds = %67, %71, %85
  %89 = phi double [ 0.000000e+00, %67 ], [ %87, %85 ], [ 1.000000e+00, %71 ]
  %90 = fcmp ole double %89, 0x7FEFFFFFFFFFFFFF
  %91 = select i1 %90, i32 %65, i32 %59
  %92 = select i1 %90, double %89, double %60
  br i1 %90, label %58, label %93

93:                                               ; preds = %88, %58
  %94 = phi i32 [ %91, %88 ], [ %59, %58 ]
  %95 = phi double [ %92, %88 ], [ %60, %58 ]
  store i32 %94, ptr %6, align 4, !tbaa !109
  %96 = fdiv double %22, %95
  %97 = fcmp ult double %96, 1.000000e+00
  br i1 %97, label %104, label %98

98:                                               ; preds = %93, %98
  %99 = phi double [ %101, %98 ], [ %96, %93 ]
  %100 = phi i32 [ %102, %98 ], [ %94, %93 ]
  %101 = fdiv double %99, 1.000000e+01
  %102 = add nsw i32 %100, 1
  %103 = fcmp ult double %101, 1.000000e+00
  br i1 %103, label %104, label %98, !llvm.loop !127

104:                                              ; preds = %98, %93
  %105 = phi i32 [ %94, %93 ], [ %102, %98 ]
  %106 = phi double [ %96, %93 ], [ %101, %98 ]
  store i32 %105, ptr %6, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #22
  %107 = icmp ugt i32 %105, -3
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = sub nsw i32 0, %105
  store i32 0, ptr %6, align 4, !tbaa !109
  br label %110

110:                                              ; preds = %104, %108
  %111 = phi i32 [ %109, %108 ], [ 0, %104 ]
  br label %112

112:                                              ; preds = %110, %250
  %113 = phi double [ %192, %250 ], [ %106, %110 ]
  %114 = phi i64 [ %251, %250 ], [ %23, %110 ]
  %115 = phi i32 [ %252, %250 ], [ %111, %110 ]
  %116 = phi i32 [ %253, %250 ], [ %111, %110 ]
  %117 = phi i32 [ %254, %250 ], [ 0, %110 ]
  %118 = phi ptr [ %255, %250 ], [ %24, %110 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  %119 = fmul double %113, 1.000000e+01
  %120 = add i32 %115, 1
  %121 = sub i32 %120, %116
  %122 = add i32 %121, %117
  %123 = icmp slt i32 %122, %11
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = call double @modf(double noundef %119, ptr noundef nonnull %8) #22
  br label %191

126:                                              ; preds = %112
  %127 = fadd double %119, 5.000000e-01
  %128 = tail call double @llvm.floor.f64(double %127)
  store double %128, ptr %8, align 8, !tbaa !128
  %129 = fcmp ogt double %128, 9.000000e+00
  br i1 %129, label %130, label %191

130:                                              ; preds = %126
  %131 = icmp sgt i32 %115, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %130
  %133 = load double, ptr %8, align 8
  %134 = icmp sgt i32 %117, 0
  %135 = fcmp ogt double %133, 9.000000e+00
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %172

137:                                              ; preds = %132
  %138 = load i32, ptr %6, align 4, !tbaa !109
  br label %144

139:                                              ; preds = %130
  %140 = add nsw i32 %115, -1
  store double 1.000000e+00, ptr %8, align 8, !tbaa !128
  %141 = icmp eq i32 %117, 0
  %142 = sext i1 %141 to i32
  %143 = add nsw i32 %116, %142
  br label %191

144:                                              ; preds = %137, %160
  %145 = phi ptr [ %164, %160 ], [ %118, %137 ]
  %146 = phi i32 [ %166, %160 ], [ %117, %137 ]
  %147 = phi i64 [ %162, %160 ], [ %114, %137 ]
  %148 = phi i32 [ %161, %160 ], [ %138, %137 ]
  %149 = getelementptr inbounds i8, ptr %145, i64 -1
  %150 = load i8, ptr %149, align 1, !tbaa !52
  %151 = icmp eq i32 %148, -1
  br i1 %151, label %154, label %152

152:                                              ; preds = %144
  %153 = add nuw nsw i32 %148, 1
  store i32 %153, ptr %6, align 4, !tbaa !109
  br label %160

154:                                              ; preds = %144
  %155 = icmp eq i8 %150, 46
  br i1 %155, label %156, label %160

156:                                              ; preds = %154
  %157 = getelementptr inbounds i8, ptr %145, i64 -2
  %158 = load i8, ptr %157, align 1, !tbaa !52
  %159 = add i64 %147, 1
  store i32 1, ptr %6, align 4, !tbaa !109
  br label %160

160:                                              ; preds = %154, %156, %152
  %161 = phi i32 [ %153, %152 ], [ 1, %156 ], [ %148, %154 ]
  %162 = phi i64 [ %147, %152 ], [ %159, %156 ], [ %147, %154 ]
  %163 = phi i8 [ %150, %152 ], [ %158, %156 ], [ %150, %154 ]
  %164 = phi ptr [ %149, %152 ], [ %157, %156 ], [ %149, %154 ]
  %165 = zext i8 %163 to i32
  %166 = add nsw i32 %146, -1
  %167 = add nsw i32 %165, -47
  %168 = sitofp i32 %167 to double
  store double %168, ptr %8, align 8, !tbaa !128
  %169 = icmp sgt i32 %146, 1
  %170 = icmp ugt i8 %163, 56
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %144, label %172, !llvm.loop !130

172:                                              ; preds = %160, %132
  %173 = phi i64 [ %114, %132 ], [ %162, %160 ]
  %174 = phi i32 [ %117, %132 ], [ %166, %160 ]
  %175 = phi ptr [ %118, %132 ], [ %164, %160 ]
  %176 = phi i1 [ %135, %132 ], [ %170, %160 ]
  br i1 %176, label %177, label %191

177:                                              ; preds = %172
  %178 = load i32, ptr %6, align 4, !tbaa !109
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = getelementptr inbounds i8, ptr %175, i64 -1
  %182 = load i8, ptr %181, align 1, !tbaa !52
  %183 = icmp eq i8 %182, 46
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = add i64 %173, 1
  store i32 1, ptr %6, align 4, !tbaa !109
  br label %188

186:                                              ; preds = %177
  %187 = add nuw nsw i32 %178, 1
  store i32 %187, ptr %6, align 4, !tbaa !109
  br label %188

188:                                              ; preds = %180, %184, %186
  %189 = phi i64 [ %173, %186 ], [ %185, %184 ], [ %173, %180 ]
  %190 = phi ptr [ %175, %186 ], [ %181, %184 ], [ %181, %180 ]
  store double 1.000000e+00, ptr %8, align 8, !tbaa !128
  br label %191

191:                                              ; preds = %139, %126, %172, %188, %124
  %192 = phi double [ %125, %124 ], [ 0.000000e+00, %139 ], [ 0.000000e+00, %188 ], [ 0.000000e+00, %172 ], [ 0.000000e+00, %126 ]
  %193 = phi i64 [ %114, %124 ], [ %114, %139 ], [ %189, %188 ], [ %173, %172 ], [ %114, %126 ]
  %194 = phi i32 [ %115, %124 ], [ %140, %139 ], [ %115, %188 ], [ %115, %172 ], [ %115, %126 ]
  %195 = phi i32 [ %116, %124 ], [ %143, %139 ], [ %116, %188 ], [ %116, %172 ], [ %116, %126 ]
  %196 = phi i32 [ %117, %124 ], [ %117, %139 ], [ %174, %188 ], [ %174, %172 ], [ %117, %126 ]
  %197 = phi ptr [ %118, %124 ], [ %118, %139 ], [ %190, %188 ], [ %175, %172 ], [ %118, %126 ]
  %198 = load double, ptr %8, align 8, !tbaa !128
  %199 = fcmp oeq double %198, 0.000000e+00
  br i1 %199, label %200, label %205

200:                                              ; preds = %191
  %201 = add nsw i32 %194, 1
  %202 = icmp eq i32 %196, 0
  %203 = zext i1 %202 to i32
  %204 = add nsw i32 %195, %203
  br label %250

205:                                              ; preds = %191
  %206 = icmp sgt i32 %194, 0
  br i1 %206, label %207, label %226

207:                                              ; preds = %205, %220
  %208 = phi ptr [ %223, %220 ], [ %197, %205 ]
  %209 = phi i32 [ %224, %220 ], [ %194, %205 ]
  %210 = phi i64 [ %221, %220 ], [ %193, %205 ]
  %211 = load i32, ptr %6, align 4, !tbaa !109
  switch i32 %211, label %215 [
    i32 -1, label %220
    i32 0, label %212
  ]

212:                                              ; preds = %207
  %213 = getelementptr inbounds i8, ptr %208, i64 1
  store i8 46, ptr %208, align 1, !tbaa !52
  %214 = add i64 %210, -1
  br label %215

215:                                              ; preds = %207, %212
  %216 = phi i64 [ %214, %212 ], [ %210, %207 ]
  %217 = phi ptr [ %213, %212 ], [ %208, %207 ]
  %218 = load i32, ptr %6, align 4, !tbaa !109
  %219 = add nsw i32 %218, -1
  store i32 %219, ptr %6, align 4, !tbaa !109
  br label %220

220:                                              ; preds = %207, %215
  %221 = phi i64 [ %216, %215 ], [ %210, %207 ]
  %222 = phi ptr [ %217, %215 ], [ %208, %207 ]
  %223 = getelementptr inbounds i8, ptr %222, i64 1
  store i8 48, ptr %222, align 1, !tbaa !52
  %224 = add nsw i32 %209, -1
  %225 = icmp sgt i32 %209, 1
  br i1 %225, label %207, label %226, !llvm.loop !131

226:                                              ; preds = %220, %205
  %227 = phi i64 [ %193, %205 ], [ %221, %220 ]
  %228 = phi i32 [ %194, %205 ], [ 0, %220 ]
  %229 = phi ptr [ %197, %205 ], [ %223, %220 ]
  %230 = load i32, ptr %6, align 4, !tbaa !109
  switch i32 %230, label %234 [
    i32 -1, label %239
    i32 0, label %231
  ]

231:                                              ; preds = %226
  %232 = getelementptr inbounds i8, ptr %229, i64 1
  store i8 46, ptr %229, align 1, !tbaa !52
  %233 = add i64 %227, -1
  br label %234

234:                                              ; preds = %226, %231
  %235 = phi i64 [ %233, %231 ], [ %227, %226 ]
  %236 = phi ptr [ %232, %231 ], [ %229, %226 ]
  %237 = load i32, ptr %6, align 4, !tbaa !109
  %238 = add nsw i32 %237, -1
  store i32 %238, ptr %6, align 4, !tbaa !109
  br label %239

239:                                              ; preds = %226, %234
  %240 = phi i64 [ %235, %234 ], [ %227, %226 ]
  %241 = phi ptr [ %236, %234 ], [ %229, %226 ]
  %242 = load double, ptr %8, align 8, !tbaa !128
  %243 = fptosi double %242 to i32
  %244 = trunc i32 %243 to i8
  %245 = add i8 %244, 48
  %246 = getelementptr inbounds i8, ptr %241, i64 1
  store i8 %245, ptr %241, align 1, !tbaa !52
  %247 = add i32 %194, 1
  %248 = sub i32 %247, %195
  %249 = add i32 %248, %196
  br label %250

250:                                              ; preds = %200, %239
  %251 = phi i64 [ %240, %239 ], [ %193, %200 ]
  %252 = phi i32 [ %228, %239 ], [ %201, %200 ]
  %253 = phi i32 [ 0, %239 ], [ %204, %200 ]
  %254 = phi i32 [ %249, %239 ], [ %196, %200 ]
  %255 = phi ptr [ %246, %239 ], [ %197, %200 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  %256 = sub i32 %252, %253
  %257 = add i32 %256, %254
  %258 = icmp slt i32 %257, %11
  %259 = fcmp ogt double %192, 0x10000000000000
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %112, label %261, !llvm.loop !132

261:                                              ; preds = %250
  %262 = load i32, ptr %6, align 4
  %263 = add i32 %262, 1
  %264 = icmp ult i32 %263, 4
  br i1 %264, label %265, label %275

265:                                              ; preds = %261
  %266 = load i32, ptr %6, align 4, !tbaa !109
  %267 = add nsw i32 %266, -1
  store i32 %267, ptr %6, align 4, !tbaa !109
  %268 = icmp sgt i32 %266, 0
  br i1 %268, label %269, label %328

269:                                              ; preds = %265, %269
  %270 = phi ptr [ %271, %269 ], [ %255, %265 ]
  %271 = getelementptr inbounds i8, ptr %270, i64 1
  store i8 48, ptr %270, align 1, !tbaa !52
  %272 = load i32, ptr %6, align 4, !tbaa !109
  %273 = add nsw i32 %272, -1
  store i32 %273, ptr %6, align 4, !tbaa !109
  %274 = icmp sgt i32 %272, 0
  br i1 %274, label %269, label %328, !llvm.loop !133

275:                                              ; preds = %261
  %276 = getelementptr inbounds i8, ptr %255, i64 1
  store i8 69, ptr %255, align 1, !tbaa !52
  %277 = xor i32 %254, -1
  %278 = zext i32 %277 to i64
  %279 = add i64 %251, %278
  %280 = load i32, ptr %6, align 4, !tbaa !109
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %275
  %283 = getelementptr inbounds i8, ptr %255, i64 2
  store i8 45, ptr %276, align 1, !tbaa !52
  %284 = add i64 %279, -1
  %285 = load i32, ptr %6, align 4, !tbaa !109
  %286 = sub nsw i32 0, %285
  br label %287

287:                                              ; preds = %275, %282
  %288 = phi i64 [ %284, %282 ], [ %279, %275 ]
  %289 = phi ptr [ %283, %282 ], [ %276, %275 ]
  %290 = phi i32 [ %286, %282 ], [ %280, %275 ]
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %287, %292
  %293 = phi i64 [ %298, %292 ], [ 0, %287 ]
  %294 = phi i32 [ %300, %292 ], [ %290, %287 ]
  %295 = urem i32 %294, 10
  %296 = trunc i32 %295 to i8
  %297 = or disjoint i8 %296, 48
  %298 = add nuw i64 %293, 1
  %299 = getelementptr inbounds [10 x i8], ptr %7, i64 0, i64 %293
  store i8 %297, ptr %299, align 1, !tbaa !52
  %300 = udiv i32 %294, 10
  %301 = icmp ult i32 %294, 10
  br i1 %301, label %302, label %292, !llvm.loop !134

302:                                              ; preds = %292
  %303 = trunc i64 %298 to i32
  br label %304

304:                                              ; preds = %302, %287
  %305 = phi i32 [ 0, %287 ], [ %303, %302 ]
  %306 = trunc i64 %288 to i32
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %320

308:                                              ; preds = %304
  %309 = icmp sgt i32 %305, 0
  br i1 %309, label %310, label %328

310:                                              ; preds = %308
  %311 = zext nneg i32 %305 to i64
  br label %312

312:                                              ; preds = %310, %312
  %313 = phi i64 [ %311, %310 ], [ %315, %312 ]
  %314 = phi ptr [ %289, %310 ], [ %318, %312 ]
  %315 = add nsw i64 %313, -1
  %316 = getelementptr inbounds [10 x i8], ptr %7, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !52
  %318 = getelementptr inbounds i8, ptr %314, i64 1
  store i8 %317, ptr %314, align 1, !tbaa !52
  %319 = icmp sgt i64 %313, 1
  br i1 %319, label %312, label %328, !llvm.loop !135

320:                                              ; preds = %304
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  br label %327

321:                                              ; preds = %21
  %322 = getelementptr inbounds i8, ptr %24, i64 1
  br i1 %25, label %324, label %323

323:                                              ; preds = %321
  store i8 48, ptr %24, align 1, !tbaa !52
  store i8 0, ptr %322, align 1, !tbaa !52
  br label %330

324:                                              ; preds = %321
  store i8 105, ptr %24, align 1, !tbaa !52
  %325 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 110, ptr %322, align 1, !tbaa !52
  %326 = getelementptr inbounds i8, ptr %24, i64 3
  store i8 102, ptr %325, align 1, !tbaa !52
  store i8 0, ptr %326, align 1, !tbaa !52
  br label %330

327:                                              ; preds = %320, %5
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.34) #20
  unreachable

328:                                              ; preds = %312, %269, %308, %265
  %329 = phi ptr [ %255, %265 ], [ %289, %308 ], [ %271, %269 ], [ %318, %312 ]
  store i8 0, ptr %329, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  br label %330

330:                                              ; preds = %328, %324, %323
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nounwind uwtable
define dso_local void @png_ascii_from_fixed(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [10 x i8], align 1
  %6 = icmp ugt i64 %2, 12
  br i1 %6, label %7, label %82

7:                                                ; preds = %4
  %8 = icmp slt i32 %3, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !52
  %11 = sub nsw i32 0, %3
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %11, %9 ], [ %3, %7 ]
  %14 = phi ptr [ %10, %9 ], [ %1, %7 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #22
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %31, %16 ], [ 16, %12 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %12 ]
  %19 = phi i32 [ %20, %16 ], [ %13, %12 ]
  %20 = udiv i32 %19, 10
  %21 = mul i32 %20, -10
  %22 = add i32 %21, %19
  %23 = trunc i32 %22 to i8
  %24 = add i8 %23, 48
  %25 = add i32 %18, 1
  %26 = zext i32 %18 to i64
  %27 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %26
  store i8 %24, ptr %27, align 1, !tbaa !52
  %28 = icmp eq i32 %17, 16
  %29 = icmp ne i32 %22, 0
  %30 = and i1 %28, %29
  %31 = select i1 %30, i32 %25, i32 %17
  %32 = icmp ult i32 %19, 10
  br i1 %32, label %33, label %16, !llvm.loop !136

33:                                               ; preds = %16, %12
  %34 = phi i32 [ 0, %12 ], [ %25, %16 ]
  %35 = phi i32 [ 16, %12 ], [ %31, %16 ]
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %33
  %38 = icmp ugt i32 %34, 5
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = zext i32 %34 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %40, %39 ], [ %45, %41 ]
  %43 = phi ptr [ %14, %39 ], [ %48, %41 ]
  %44 = add nsw i64 %42, -1
  %45 = add nsw i64 %42, -1
  %46 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !52
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %47, ptr %43, align 1, !tbaa !52
  %49 = icmp ugt i64 %44, 5
  br i1 %49, label %41, label %50, !llvm.loop !137

50:                                               ; preds = %41
  %51 = trunc i64 %44 to i32
  br label %52

52:                                               ; preds = %50, %37
  %53 = phi i32 [ %34, %37 ], [ %51, %50 ]
  %54 = phi ptr [ %14, %37 ], [ %48, %50 ]
  %55 = icmp ult i32 %35, 6
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  store i8 46, ptr %54, align 1, !tbaa !52
  %57 = getelementptr i8, ptr %54, i64 1
  %58 = icmp ult i32 %53, 5
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = sub nsw i32 4, %53
  %61 = zext i32 %60 to i64
  %62 = add nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %57, i8 48, i64 %62, i1 false), !tbaa !52
  %63 = zext i32 %60 to i64
  %64 = add nuw nsw i64 %63, 2
  %65 = getelementptr i8, ptr %54, i64 %64
  br label %66

66:                                               ; preds = %59, %56
  %67 = phi ptr [ %57, %56 ], [ %65, %59 ]
  %68 = icmp ult i32 %53, %35
  br i1 %68, label %80, label %69

69:                                               ; preds = %66, %69
  %70 = phi ptr [ %76, %69 ], [ %67, %66 ]
  %71 = phi i32 [ %72, %69 ], [ %53, %66 ]
  %72 = add i32 %71, -1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !52
  %76 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %75, ptr %70, align 1, !tbaa !52
  %77 = icmp ult i32 %72, %35
  br i1 %77, label %80, label %69, !llvm.loop !138

78:                                               ; preds = %33
  %79 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 48, ptr %14, align 1, !tbaa !52
  br label %80

80:                                               ; preds = %69, %66, %52, %78
  %81 = phi ptr [ %54, %52 ], [ %79, %78 ], [ %67, %66 ], [ %76, %69 ]
  store i8 0, ptr %81, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #22
  ret void

82:                                               ; preds = %4
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.34) #20
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_fixed(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+05, double 5.000000e-01)
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = fcmp ogt double %5, 0x41DFFFFFFFC00000
  %7 = fcmp olt double %5, 0xC1E0000000000000
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #20
  unreachable

10:                                               ; preds = %3
  %11 = fptosi double %5 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @png_muldiv_warn(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = sitofp i32 %1 to double
  %12 = sitofp i32 %2 to double
  %13 = fmul double %11, %12
  %14 = sitofp i32 %3 to double
  %15 = fdiv double %13, %14
  %16 = fadd double %15, 5.000000e-01
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = fcmp ugt double %17, 0x41DFFFFFFFC00000
  %19 = fcmp ult double %17, 0xC1E0000000000000
  %20 = or i1 %18, %19
  %21 = fptosi double %17 to i32
  %22 = select i1 %20, i32 undef, i32 %21
  br label %23

23:                                               ; preds = %10, %4, %6
  %24 = phi i32 [ 0, %6 ], [ undef, %4 ], [ %22, %10 ]
  %25 = phi i1 [ false, %6 ], [ true, %4 ], [ %20, %10 ]
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #22
  br label %27

27:                                               ; preds = %23, %26
  %28 = phi i32 [ 0, %26 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @png_reciprocal2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = sitofp i32 %0 to double
  %4 = fdiv double 1.000000e+15, %3
  %5 = sitofp i32 %1 to double
  %6 = fdiv double %4, %5
  %7 = fadd double %6, 5.000000e-01
  %8 = tail call double @llvm.floor.f64(double %7)
  %9 = fcmp ole double %8, 0x41DFFFFFFFC00000
  %10 = fcmp oge double %8, 0xC1E0000000000000
  %11 = and i1 %9, %10
  %12 = fptosi double %8 to i32
  %13 = select i1 %11, i32 %12, i32 0
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local zeroext i8 @png_gamma_8bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 254
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = uitofp i32 %0 to double
  %7 = fdiv double %6, 2.550000e+02
  %8 = sitofp i32 %1 to double
  %9 = fmul double %8, 1.000000e-05
  %10 = tail call double @pow(double noundef %7, double noundef %9) #22
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 2.550000e+02, double 5.000000e-01)
  %12 = tail call double @llvm.floor.f64(double %11)
  %13 = fptoui double %12 to i8
  br label %16

14:                                               ; preds = %2
  %15 = trunc i32 %0 to i8
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i8 [ %13, %5 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local zeroext i16 @png_gamma_16bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 65534
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = uitofp i32 %0 to double
  %7 = fdiv double %6, 6.553500e+04
  %8 = sitofp i32 %1 to double
  %9 = fmul double %8, 1.000000e-05
  %10 = tail call double @pow(double noundef %7, double noundef %9) #22
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 6.553500e+04, double 5.000000e-01)
  %12 = tail call double @llvm.floor.f64(double %11)
  %13 = fptoui double %12 to i16
  br label %16

14:                                               ; preds = %2
  %15 = trunc i32 %0 to i16
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i16 [ %13, %5 ], [ %15, %14 ]
  ret i16 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local zeroext i16 @png_gamma_correct(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %5 = load i8, ptr %4, align 8, !tbaa !139
  %6 = icmp eq i8 %5, 8
  %7 = add i32 %1, -1
  br i1 %6, label %8, label %24

8:                                                ; preds = %3
  %9 = icmp ult i32 %7, 254
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = uitofp i32 %1 to double
  %12 = fdiv double %11, 2.550000e+02
  %13 = sitofp i32 %2 to double
  %14 = fmul double %13, 1.000000e-05
  %15 = tail call double @pow(double noundef %12, double noundef %14) #22
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 2.550000e+02, double 5.000000e-01)
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = fptoui double %17 to i8
  br label %21

19:                                               ; preds = %8
  %20 = trunc i32 %1 to i8
  br label %21

21:                                               ; preds = %10, %19
  %22 = phi i8 [ %18, %10 ], [ %20, %19 ]
  %23 = zext i8 %22 to i16
  br label %37

24:                                               ; preds = %3
  %25 = icmp ult i32 %7, 65534
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = uitofp i32 %1 to double
  %28 = fdiv double %27, 6.553500e+04
  %29 = sitofp i32 %2 to double
  %30 = fmul double %29, 1.000000e-05
  %31 = tail call double @pow(double noundef %28, double noundef %30) #22
  %32 = tail call double @llvm.fmuladd.f64(double %31, double 6.553500e+04, double 5.000000e-01)
  %33 = tail call double @llvm.floor.f64(double %32)
  %34 = fptoui double %33 to i16
  br label %37

35:                                               ; preds = %24
  %36 = trunc i32 %1 to i16
  br label %37

37:                                               ; preds = %35, %26, %21
  %38 = phi i16 [ %23, %21 ], [ %34, %26 ], [ %36, %35 ]
  ret i16 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @png_gamma_significant(i32 noundef %0) local_unnamed_addr #6 {
  %2 = add i32 %0, -105001
  %3 = icmp ult i32 %2, -10001
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_gamma_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  tail call void @png_free(ptr noundef %0, ptr noundef %3) #22
  store ptr null, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %9 = load i32, ptr %8, align 8, !tbaa !142
  %10 = icmp eq i32 %9, -23
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = sub nsw i32 8, %9
  %13 = shl nuw i32 1, %12
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %11, %16
  %17 = phi i64 [ 0, %11 ], [ %21, %16 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !141
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  tail call void @png_free(ptr noundef %0, ptr noundef %20) #22
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %23, label %16, !llvm.loop !143

23:                                               ; preds = %16, %7
  %24 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void @png_free(ptr noundef %0, ptr noundef %24) #22
  store ptr null, ptr %4, align 8, !tbaa !141
  br label %25

25:                                               ; preds = %23, %1
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %27 = load ptr, ptr %26, align 8, !tbaa !144
  tail call void @png_free(ptr noundef %0, ptr noundef %27) #22
  store ptr null, ptr %26, align 8, !tbaa !144
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %29 = load ptr, ptr %28, align 8, !tbaa !145
  tail call void @png_free(ptr noundef %0, ptr noundef %29) #22
  store ptr null, ptr %28, align 8, !tbaa !145
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %35 = load i32, ptr %34, align 8, !tbaa !142
  %36 = icmp eq i32 %35, -23
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = sub nsw i32 8, %35
  %39 = shl nuw i32 1, %38
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 1)
  %41 = zext nneg i32 %40 to i64
  br label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ 0, %37 ], [ %47, %42 ]
  %44 = load ptr, ptr %30, align 8, !tbaa !146
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  tail call void @png_free(ptr noundef %0, ptr noundef %46) #22
  %47 = add nuw nsw i64 %43, 1
  %48 = icmp eq i64 %47, %41
  br i1 %48, label %49, label %42, !llvm.loop !147

49:                                               ; preds = %42, %33
  %50 = load ptr, ptr %30, align 8, !tbaa !146
  tail call void @png_free(ptr noundef %0, ptr noundef %50) #22
  store ptr null, ptr %30, align 8, !tbaa !146
  br label %51

51:                                               ; preds = %49, %25
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 82
  %53 = load ptr, ptr %52, align 8, !tbaa !148
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %57 = load i32, ptr %56, align 8, !tbaa !142
  %58 = icmp eq i32 %57, -23
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = sub nsw i32 8, %57
  %61 = shl nuw i32 1, %60
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 1)
  %63 = zext nneg i32 %62 to i64
  br label %64

64:                                               ; preds = %59, %64
  %65 = phi i64 [ 0, %59 ], [ %69, %64 ]
  %66 = load ptr, ptr %52, align 8, !tbaa !148
  %67 = getelementptr inbounds ptr, ptr %66, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  tail call void @png_free(ptr noundef %0, ptr noundef %68) #22
  %69 = add nuw nsw i64 %65, 1
  %70 = icmp eq i64 %69, %63
  br i1 %70, label %71, label %64, !llvm.loop !149

71:                                               ; preds = %64, %55
  %72 = load ptr, ptr %52, align 8, !tbaa !148
  tail call void @png_free(ptr noundef %0, ptr noundef %72) #22
  store ptr null, ptr %52, align 8, !tbaa !148
  br label %73

73:                                               ; preds = %71, %51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_build_gamma_table(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.36) #22
  tail call void @png_destroy_gamma_table(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %6
  %12 = icmp slt i32 %1, 9
  br i1 %12, label %13, label %162

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %15 = load i32, ptr %14, align 8, !tbaa !150
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %19 = load i32, ptr %18, align 4, !tbaa !151
  %20 = sitofp i32 %19 to double
  %21 = fdiv double 1.000000e+15, %20
  %22 = sitofp i32 %15 to double
  %23 = fdiv double %21, %22
  %24 = fadd double %23, 5.000000e-01
  %25 = tail call double @llvm.floor.f64(double %24)
  %26 = fcmp ole double %25, 0x41DFFFFFFFC00000
  %27 = fcmp oge double %25, 0xC1E0000000000000
  %28 = and i1 %26, %27
  %29 = fptosi double %25 to i32
  %30 = select i1 %28, i32 %29, i32 0
  br label %31

31:                                               ; preds = %13, %17
  %32 = phi i32 [ %30, %17 ], [ 100000, %13 ]
  %33 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 256) #22
  store ptr %33, ptr %3, align 8, !tbaa !56
  %34 = add i32 %32, -95000
  %35 = icmp ult i32 %34, 10001
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = sitofp i32 %32 to double
  %38 = fmul double %37, 1.000000e-05
  br label %39

39:                                               ; preds = %53, %36
  %40 = phi i64 [ 0, %36 ], [ %56, %53 ]
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 254
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = uitofp i32 %41 to double
  %46 = fdiv double %45, 2.550000e+02
  %47 = tail call double @pow(double noundef %46, double noundef %38) #22
  %48 = tail call double @llvm.fmuladd.f64(double %47, double 2.550000e+02, double 5.000000e-01)
  %49 = tail call double @llvm.floor.f64(double %48)
  %50 = fptoui double %49 to i8
  br label %53

51:                                               ; preds = %39
  %52 = trunc i64 %40 to i8
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i8 [ %50, %44 ], [ %52, %51 ]
  %55 = getelementptr inbounds i8, ptr %33, i64 %40
  store i8 %54, ptr %55, align 1, !tbaa !52
  %56 = add nuw nsw i64 %40, 1
  %57 = icmp eq i64 %56, 256
  br i1 %57, label %64, label %39, !llvm.loop !152

58:                                               ; preds = %31, %58
  %59 = phi i64 [ %62, %58 ], [ 0, %31 ]
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds i8, ptr %33, i64 %59
  store i8 %60, ptr %61, align 1, !tbaa !52
  %62 = add nuw nsw i64 %59, 1
  %63 = icmp eq i64 %62, 256
  br i1 %63, label %64, label %58, !llvm.loop !153

64:                                               ; preds = %53, %58
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %66 = load i32, ptr %65, align 4, !tbaa !154
  %67 = and i32 %66, 6291584
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %341, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %72 = load i32, ptr %71, align 4, !tbaa !151
  %73 = sitofp i32 %72 to double
  %74 = fdiv double 1.000000e+10, %73
  %75 = fadd double %74, 5.000000e-01
  %76 = tail call double @llvm.floor.f64(double %75)
  %77 = fcmp ole double %76, 0x41DFFFFFFFC00000
  %78 = fcmp oge double %76, 0xC1E0000000000000
  %79 = and i1 %77, %78
  %80 = fptosi double %76 to i32
  %81 = select i1 %79, i32 %80, i32 0
  %82 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 256) #22
  store ptr %82, ptr %70, align 8, !tbaa !56
  %83 = add i32 %81, -95000
  %84 = icmp ult i32 %83, 10001
  br i1 %84, label %107, label %85

85:                                               ; preds = %69
  %86 = sitofp i32 %81 to double
  %87 = fmul double %86, 1.000000e-05
  br label %88

88:                                               ; preds = %102, %85
  %89 = phi i64 [ 0, %85 ], [ %105, %102 ]
  %90 = trunc i64 %89 to i32
  %91 = add i32 %90, -1
  %92 = icmp ult i32 %91, 254
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = uitofp i32 %90 to double
  %95 = fdiv double %94, 2.550000e+02
  %96 = tail call double @pow(double noundef %95, double noundef %87) #22
  %97 = tail call double @llvm.fmuladd.f64(double %96, double 2.550000e+02, double 5.000000e-01)
  %98 = tail call double @llvm.floor.f64(double %97)
  %99 = fptoui double %98 to i8
  br label %102

100:                                              ; preds = %88
  %101 = trunc i64 %89 to i8
  br label %102

102:                                              ; preds = %100, %93
  %103 = phi i8 [ %99, %93 ], [ %101, %100 ]
  %104 = getelementptr inbounds i8, ptr %82, i64 %89
  store i8 %103, ptr %104, align 1, !tbaa !52
  %105 = add nuw nsw i64 %89, 1
  %106 = icmp eq i64 %105, 256
  br i1 %106, label %113, label %88, !llvm.loop !152

107:                                              ; preds = %69, %107
  %108 = phi i64 [ %111, %107 ], [ 0, %69 ]
  %109 = trunc i64 %108 to i8
  %110 = getelementptr inbounds i8, ptr %82, i64 %108
  store i8 %109, ptr %110, align 1, !tbaa !52
  %111 = add nuw nsw i64 %108, 1
  %112 = icmp eq i64 %111, 256
  br i1 %112, label %113, label %107, !llvm.loop !153

113:                                              ; preds = %102, %107
  %114 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %115 = load i32, ptr %14, align 8, !tbaa !150
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = sitofp i32 %115 to double
  %119 = fdiv double 1.000000e+10, %118
  %120 = fadd double %119, 5.000000e-01
  %121 = tail call double @llvm.floor.f64(double %120)
  %122 = fcmp ole double %121, 0x41DFFFFFFFC00000
  %123 = fcmp oge double %121, 0xC1E0000000000000
  %124 = and i1 %122, %123
  %125 = fptosi double %121 to i32
  %126 = select i1 %124, i32 %125, i32 0
  br label %129

127:                                              ; preds = %113
  %128 = load i32, ptr %71, align 4, !tbaa !151
  br label %129

129:                                              ; preds = %127, %117
  %130 = phi i32 [ %126, %117 ], [ %128, %127 ]
  %131 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 256) #22
  store ptr %131, ptr %114, align 8, !tbaa !56
  %132 = add i32 %130, -95000
  %133 = icmp ult i32 %132, 10001
  br i1 %133, label %156, label %134

134:                                              ; preds = %129
  %135 = sitofp i32 %130 to double
  %136 = fmul double %135, 1.000000e-05
  br label %137

137:                                              ; preds = %151, %134
  %138 = phi i64 [ 0, %134 ], [ %154, %151 ]
  %139 = trunc i64 %138 to i32
  %140 = add i32 %139, -1
  %141 = icmp ult i32 %140, 254
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = uitofp i32 %139 to double
  %144 = fdiv double %143, 2.550000e+02
  %145 = tail call double @pow(double noundef %144, double noundef %136) #22
  %146 = tail call double @llvm.fmuladd.f64(double %145, double 2.550000e+02, double 5.000000e-01)
  %147 = tail call double @llvm.floor.f64(double %146)
  %148 = fptoui double %147 to i8
  br label %151

149:                                              ; preds = %137
  %150 = trunc i64 %138 to i8
  br label %151

151:                                              ; preds = %149, %142
  %152 = phi i8 [ %148, %142 ], [ %150, %149 ]
  %153 = getelementptr inbounds i8, ptr %131, i64 %138
  store i8 %152, ptr %153, align 1, !tbaa !52
  %154 = add nuw nsw i64 %138, 1
  %155 = icmp eq i64 %154, 256
  br i1 %155, label %341, label %137, !llvm.loop !152

156:                                              ; preds = %129, %156
  %157 = phi i64 [ %160, %156 ], [ 0, %129 ]
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds i8, ptr %131, i64 %157
  store i8 %158, ptr %159, align 1, !tbaa !52
  %160 = add nuw nsw i64 %157, 1
  %161 = icmp eq i64 %160, 256
  br i1 %161, label %341, label %156, !llvm.loop !153

162:                                              ; preds = %11
  %163 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %164 = load i8, ptr %163, align 1, !tbaa !155
  %165 = and i8 %164, 2
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  %169 = load i8, ptr %168, align 8, !tbaa !156
  %170 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  %171 = load i8, ptr %170, align 1, !tbaa !157
  %172 = tail call i8 @llvm.umax.i8(i8 %171, i8 %169)
  %173 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 2
  %174 = load i8, ptr %173, align 2, !tbaa !158
  %175 = tail call i8 @llvm.umax.i8(i8 %174, i8 %172)
  br label %179

176:                                              ; preds = %162
  %177 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 3
  %178 = load i8, ptr %177, align 1, !tbaa !159
  br label %179

179:                                              ; preds = %167, %176
  %180 = phi i8 [ %178, %176 ], [ %175, %167 ]
  %181 = add i8 %180, -1
  %182 = icmp ult i8 %181, 15
  %183 = sub nuw nsw i8 16, %180
  %184 = select i1 %182, i8 %183, i8 0
  %185 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %186 = load i32, ptr %185, align 4, !tbaa !154
  %187 = and i32 %186, 67109888
  %188 = icmp eq i32 %187, 0
  %189 = tail call i8 @llvm.umax.i8(i8 %184, i8 5)
  %190 = select i1 %188, i8 %184, i8 %189
  %191 = tail call i8 @llvm.umin.i8(i8 %190, i8 8)
  %192 = zext nneg i8 %191 to i32
  %193 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  store i32 %192, ptr %193, align 8, !tbaa !142
  %194 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %195 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %196 = load i32, ptr %195, align 8, !tbaa !150
  %197 = icmp sgt i32 %196, 0
  br i1 %188, label %289, label %198

198:                                              ; preds = %179
  br i1 %197, label %199, label %215

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %201 = load i32, ptr %200, align 4, !tbaa !151
  %202 = sitofp i32 %201 to double
  %203 = fmul double %202, 1.000000e-05
  %204 = sitofp i32 %196 to double
  %205 = fmul double %203, %204
  %206 = fadd double %205, 5.000000e-01
  %207 = tail call double @llvm.floor.f64(double %206)
  %208 = fcmp ole double %207, 0x41DFFFFFFFC00000
  %209 = fcmp oge double %207, 0xC1E0000000000000
  %210 = and i1 %208, %209
  %211 = fptosi double %207 to i32
  %212 = sitofp i32 %211 to double
  %213 = fmul double %212, 1.000000e-05
  %214 = select i1 %210, double %213, double 0.000000e+00
  br label %215

215:                                              ; preds = %198, %199
  %216 = phi double [ %214, %199 ], [ 1.000000e+00, %198 ]
  %217 = sub nuw nsw i32 8, %192
  %218 = shl nuw nsw i32 1, %217
  %219 = zext nneg i32 %218 to i64
  %220 = shl nuw nsw i64 %219, 3
  %221 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %220) #22
  store ptr %221, ptr %194, align 8, !tbaa !56
  %222 = zext nneg i32 %218 to i64
  br label %226

223:                                              ; preds = %226
  %224 = sub nuw nsw i32 16, %192
  %225 = lshr i32 255, %192
  br label %237

226:                                              ; preds = %215, %226
  %227 = phi i64 [ 0, %215 ], [ %230, %226 ]
  %228 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #22
  %229 = getelementptr inbounds ptr, ptr %221, i64 %227
  store ptr %228, ptr %229, align 8, !tbaa !56
  %230 = add nuw nsw i64 %227, 1
  %231 = icmp eq i64 %230, %222
  br i1 %231, label %223, label %226, !llvm.loop !160

232:                                              ; preds = %274
  %233 = shl nuw nsw i32 256, %217
  %234 = icmp ult i32 %275, %233
  br i1 %234, label %235, label %306

235:                                              ; preds = %232
  %236 = lshr i32 255, %192
  br label %278

237:                                              ; preds = %223, %274
  %238 = phi i32 [ 0, %223 ], [ %276, %274 ]
  %239 = phi i32 [ 0, %223 ], [ %275, %274 ]
  %240 = trunc i32 %238 to i16
  %241 = mul nuw i16 %240, 257
  %242 = zext i16 %241 to i32
  %243 = add nuw nsw i32 %242, 128
  %244 = icmp ult i16 %240, 255
  br i1 %244, label %245, label %252

245:                                              ; preds = %237
  %246 = uitofp i32 %243 to double
  %247 = fdiv double %246, 6.553500e+04
  %248 = tail call double @pow(double noundef %247, double noundef %216) #22
  %249 = tail call double @llvm.fmuladd.f64(double %248, double 6.553500e+04, double 5.000000e-01)
  %250 = tail call double @llvm.floor.f64(double %249)
  %251 = fptoui double %250 to i16
  br label %254

252:                                              ; preds = %237
  %253 = trunc i32 %243 to i16
  br label %254

254:                                              ; preds = %252, %245
  %255 = phi i16 [ %251, %245 ], [ %253, %252 ]
  %256 = freeze i16 %255
  %257 = zext i16 %256 to i32
  %258 = shl nuw i32 %257, %224
  %259 = sub i32 %258, %257
  %260 = add i32 %259, 32768
  %261 = udiv i32 %260, 65535
  %262 = icmp ugt i32 %239, %261
  br i1 %262, label %274, label %263

263:                                              ; preds = %254, %263
  %264 = phi i32 [ %272, %263 ], [ %239, %254 ]
  %265 = and i32 %264, %225
  %266 = zext nneg i32 %265 to i64
  %267 = getelementptr inbounds ptr, ptr %221, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !56
  %269 = lshr i32 %264, %217
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds i16, ptr %268, i64 %270
  store i16 %241, ptr %271, align 2, !tbaa !161
  %272 = add i32 %264, 1
  %273 = icmp eq i32 %264, %261
  br i1 %273, label %274, label %263, !llvm.loop !162

274:                                              ; preds = %263, %254
  %275 = phi i32 [ %239, %254 ], [ %272, %263 ]
  %276 = add nuw nsw i32 %238, 1
  %277 = icmp eq i32 %276, 255
  br i1 %277, label %232, label %237, !llvm.loop !163

278:                                              ; preds = %235, %278
  %279 = phi i32 [ %275, %235 ], [ %287, %278 ]
  %280 = and i32 %279, %236
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds ptr, ptr %221, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !56
  %284 = lshr i32 %279, %217
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i16, ptr %283, i64 %285
  store i16 -1, ptr %286, align 2, !tbaa !161
  %287 = add nuw i32 %279, 1
  %288 = icmp eq i32 %287, %233
  br i1 %288, label %306, label %278, !llvm.loop !164

289:                                              ; preds = %179
  br i1 %197, label %290, label %304

290:                                              ; preds = %289
  %291 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %292 = load i32, ptr %291, align 4, !tbaa !151
  %293 = sitofp i32 %292 to double
  %294 = fdiv double 1.000000e+15, %293
  %295 = sitofp i32 %196 to double
  %296 = fdiv double %294, %295
  %297 = fadd double %296, 5.000000e-01
  %298 = tail call double @llvm.floor.f64(double %297)
  %299 = fcmp ole double %298, 0x41DFFFFFFFC00000
  %300 = fcmp oge double %298, 0xC1E0000000000000
  %301 = and i1 %299, %300
  %302 = fptosi double %298 to i32
  %303 = select i1 %301, i32 %302, i32 0
  br label %304

304:                                              ; preds = %289, %290
  %305 = phi i32 [ %303, %290 ], [ 100000, %289 ]
  tail call fastcc void @png_build_16bit_table(ptr noundef %0, ptr noundef nonnull %194, i32 noundef %192, i32 noundef %305)
  br label %306

306:                                              ; preds = %278, %232, %304
  %307 = load i32, ptr %185, align 4, !tbaa !154
  %308 = and i32 %307, 6291584
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %341, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 82
  %312 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %313 = load i32, ptr %312, align 4, !tbaa !151
  %314 = sitofp i32 %313 to double
  %315 = fdiv double 1.000000e+10, %314
  %316 = fadd double %315, 5.000000e-01
  %317 = tail call double @llvm.floor.f64(double %316)
  %318 = fcmp ole double %317, 0x41DFFFFFFFC00000
  %319 = fcmp oge double %317, 0xC1E0000000000000
  %320 = and i1 %318, %319
  %321 = fptosi double %317 to i32
  %322 = select i1 %320, i32 %321, i32 0
  tail call fastcc void @png_build_16bit_table(ptr noundef %0, ptr noundef nonnull %311, i32 noundef %192, i32 noundef %322)
  %323 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %324 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %325 = load i32, ptr %324, align 8, !tbaa !150
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %310
  %328 = sitofp i32 %325 to double
  %329 = fdiv double 1.000000e+10, %328
  %330 = fadd double %329, 5.000000e-01
  %331 = tail call double @llvm.floor.f64(double %330)
  %332 = fcmp ole double %331, 0x41DFFFFFFFC00000
  %333 = fcmp oge double %331, 0xC1E0000000000000
  %334 = and i1 %332, %333
  %335 = fptosi double %331 to i32
  %336 = select i1 %334, i32 %335, i32 0
  br label %339

337:                                              ; preds = %310
  %338 = load i32, ptr %312, align 4, !tbaa !151
  br label %339

339:                                              ; preds = %337, %327
  %340 = phi i32 [ %336, %327 ], [ %338, %337 ]
  tail call fastcc void @png_build_16bit_table(ptr noundef %0, ptr noundef nonnull %323, i32 noundef %192, i32 noundef %340)
  br label %341

341:                                              ; preds = %151, %156, %306, %339, %64
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_build_16bit_table(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = sub nsw i32 8, %2
  %6 = shl nuw nsw i32 1, %5
  %7 = sub nuw nsw i32 16, %2
  %8 = shl nsw i32 -1, %7
  %9 = xor i32 %8, -1
  %10 = sub nuw nsw i32 15, %2
  %11 = shl nuw nsw i32 1, %10
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %13) #22
  store ptr %14, ptr %1, align 8, !tbaa !56
  %15 = add i32 %3, -95000
  %16 = icmp ult i32 %15, 10001
  %17 = uitofp i32 %9 to double
  %18 = sitofp i32 %3 to double
  %19 = fmul double %18, 1.000000e-05
  %20 = icmp eq i32 %2, 0
  %21 = zext nneg i32 %6 to i64
  br label %22

22:                                               ; preds = %4, %59
  %23 = phi i64 [ 0, %4 ], [ %60, %59 ]
  %24 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #22
  %25 = getelementptr inbounds ptr, ptr %14, i64 %23
  store ptr %24, ptr %25, align 8, !tbaa !56
  br i1 %16, label %28, label %26

26:                                               ; preds = %22
  %27 = trunc i64 %23 to i32
  br label %30

28:                                               ; preds = %22
  %29 = trunc i64 %23 to i32
  br label %44

30:                                               ; preds = %26, %30
  %31 = phi i64 [ %42, %30 ], [ 0, %26 ]
  %32 = trunc i64 %31 to i32
  %33 = shl nuw nsw i32 %32, %5
  %34 = add i32 %33, %27
  %35 = uitofp i32 %34 to double
  %36 = fdiv double %35, %17
  %37 = tail call double @pow(double noundef %36, double noundef %19) #22
  %38 = tail call double @llvm.fmuladd.f64(double %37, double 6.553500e+04, double 5.000000e-01)
  %39 = tail call double @llvm.floor.f64(double %38)
  %40 = fptoui double %39 to i16
  %41 = getelementptr inbounds i16, ptr %24, i64 %31
  store i16 %40, ptr %41, align 2, !tbaa !161
  %42 = add nuw nsw i64 %31, 1
  %43 = icmp eq i64 %42, 256
  br i1 %43, label %59, label %30, !llvm.loop !165

44:                                               ; preds = %28, %53
  %45 = phi i64 [ %57, %53 ], [ 0, %28 ]
  %46 = trunc i64 %45 to i32
  %47 = shl nuw nsw i32 %46, %5
  %48 = add i32 %47, %29
  br i1 %20, label %53, label %49

49:                                               ; preds = %44
  %50 = mul i32 %48, 65535
  %51 = add i32 %50, %11
  %52 = udiv i32 %51, %9
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %52, %49 ], [ %48, %44 ]
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds i16, ptr %24, i64 %45
  store i16 %55, ptr %56, align 2, !tbaa !161
  %57 = add nuw nsw i64 %45, 1
  %58 = icmp eq i64 %57, 256
  br i1 %58, label %59, label %44, !llvm.loop !166

59:                                               ; preds = %30, %53
  %60 = add nuw nsw i64 %23, 1
  %61 = icmp eq i64 %60, %21
  br i1 %61, label %62, label %22, !llvm.loop !167

62:                                               ; preds = %59
  ret void
}

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }

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
!34 = !{!35, !36, i64 597}
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
!46 = !{!35, !39, i64 288}
!47 = !{!35, !39, i64 564}
!48 = !{!35, !39, i64 496}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!36, !36, i64 0}
!53 = distinct !{!53, !50, !51}
!54 = !{!35, !38, i64 1048}
!55 = !{!35, !38, i64 1040}
!56 = !{!38, !38, i64 0}
!57 = !{!35, !39, i64 1008}
!58 = !{!35, !38, i64 1016}
!59 = !{!35, !38, i64 1056}
!60 = !{!61, !39, i64 228}
!61 = !{!"png_info_def", !39, i64 0, !39, i64 4, !39, i64 8, !41, i64 16, !38, i64 24, !42, i64 32, !42, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !39, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !38, i64 72, !62, i64 80, !44, i64 88, !38, i64 96, !43, i64 104, !43, i64 114, !39, i64 124, !39, i64 128, !36, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !38, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !38, i64 192, !39, i64 200, !39, i64 204, !38, i64 208, !38, i64 216, !36, i64 224, !36, i64 225, !39, i64 228, !38, i64 232, !39, i64 240, !38, i64 248, !38, i64 256, !39, i64 264, !36, i64 268, !38, i64 272, !39, i64 280, !36, i64 284, !38, i64 288, !38, i64 296, !38, i64 304}
!62 = !{!"png_time_struct", !42, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!63 = !{!61, !39, i64 60}
!64 = !{!61, !38, i64 72}
!65 = !{!66, !38, i64 8}
!66 = !{!"png_text_struct", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 32, !38, i64 40, !38, i64 48}
!67 = distinct !{!67, !50, !51}
!68 = !{!61, !38, i64 96}
!69 = !{!61, !39, i64 8}
!70 = !{!61, !38, i64 288}
!71 = !{!61, !38, i64 296}
!72 = !{!61, !38, i64 192}
!73 = !{!61, !38, i64 208}
!74 = !{!61, !38, i64 216}
!75 = !{!61, !36, i64 225}
!76 = distinct !{!76, !50, !51}
!77 = !{!61, !38, i64 248}
!78 = !{!61, !38, i64 256}
!79 = !{!61, !38, i64 272}
!80 = !{!81, !38, i64 0}
!81 = !{!"png_sPLT_struct", !38, i64 0, !36, i64 8, !38, i64 16, !39, i64 24}
!82 = !{!81, !38, i64 16}
!83 = !{!61, !39, i64 280}
!84 = distinct !{!84, !50, !51}
!85 = !{!35, !38, i64 1128}
!86 = !{!61, !38, i64 232}
!87 = !{!45, !38, i64 8}
!88 = !{!61, !39, i64 240}
!89 = distinct !{!89, !50, !51}
!90 = !{!61, !38, i64 152}
!91 = !{!61, !38, i64 24}
!92 = !{!61, !42, i64 32}
!93 = !{!61, !38, i64 304}
!94 = !{!61, !39, i64 4}
!95 = distinct !{!95, !50, !51}
!96 = !{!35, !38, i64 248}
!97 = !{!62, !42, i64 0}
!98 = !{!62, !36, i64 2}
!99 = !{!62, !36, i64 3}
!100 = !{!62, !36, i64 4}
!101 = !{!62, !36, i64 5}
!102 = !{!62, !36, i64 6}
!103 = distinct !{!103, !50, !51}
!104 = !{!41, !41, i64 0}
!105 = !{!106, !39, i64 0}
!106 = !{!"png_XYZ", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32}
!107 = !{!106, !39, i64 4}
!108 = !{!106, !39, i64 8}
!109 = !{!39, !39, i64 0}
!110 = !{!106, !39, i64 12}
!111 = !{!106, !39, i64 16}
!112 = !{!106, !39, i64 20}
!113 = !{!106, !39, i64 24}
!114 = !{!106, !39, i64 28}
!115 = !{!106, !39, i64 32}
!116 = !{!117, !39, i64 4}
!117 = !{!"png_xy", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!118 = !{!117, !39, i64 12}
!119 = !{!117, !39, i64 20}
!120 = !{i32 0, i32 3}
!121 = !{!35, !39, i64 1100}
!122 = !{!35, !39, i64 1104}
!123 = !{!35, !39, i64 284}
!124 = !{!35, !39, i64 1032}
!125 = distinct !{!125, !50, !51}
!126 = distinct !{!126, !50, !51}
!127 = distinct !{!127, !50, !51}
!128 = !{!129, !129, i64 0}
!129 = !{!"double", !36, i64 0}
!130 = distinct !{!130, !50, !51}
!131 = distinct !{!131, !50, !51}
!132 = distinct !{!132, !50, !51}
!133 = distinct !{!133, !50, !51}
!134 = distinct !{!134, !50, !51}
!135 = distinct !{!135, !50, !51}
!136 = distinct !{!136, !50, !51}
!137 = distinct !{!137, !50, !51}
!138 = distinct !{!138, !50, !51}
!139 = !{!35, !36, i64 592}
!140 = !{!35, !38, i64 672}
!141 = !{!35, !38, i64 680}
!142 = !{!35, !39, i64 656}
!143 = distinct !{!143, !50, !51}
!144 = !{!35, !38, i64 688}
!145 = !{!35, !38, i64 696}
!146 = !{!35, !38, i64 704}
!147 = distinct !{!147, !50, !51}
!148 = !{!35, !38, i64 712}
!149 = distinct !{!149, !50, !51}
!150 = !{!35, !39, i64 664}
!151 = !{!35, !39, i64 660}
!152 = distinct !{!152, !50, !51}
!153 = distinct !{!153, !50, !51}
!154 = !{!35, !39, i64 292}
!155 = !{!35, !36, i64 591}
!156 = !{!35, !36, i64 720}
!157 = !{!35, !36, i64 721}
!158 = !{!35, !36, i64 722}
!159 = !{!35, !36, i64 723}
!160 = distinct !{!160, !50, !51}
!161 = !{!42, !42, i64 0}
!162 = distinct !{!162, !50, !51}
!163 = distinct !{!163, !50, !51}
!164 = distinct !{!164, !50, !51}
!165 = distinct !{!165, !50, !51}
!166 = distinct !{!166, !50, !51}
!167 = distinct !{!167, !50, !51}

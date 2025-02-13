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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_sig_bytes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 8
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #21
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

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
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
  %17 = tail call i32 @memcmp(ptr noundef %15, ptr noundef nonnull %16, i64 noundef %14) #22
  br label %18

18:                                               ; preds = %7, %5, %10
  %19 = phi i32 [ %17, %10 ], [ -1, %5 ], [ -1, %7 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @png_zalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %1)
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #23
  br label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = zext i32 %1 to i64
  %11 = zext i32 %2 to i64
  %12 = mul nuw i64 %11, %10
  %13 = or i32 %9, 1048576
  store i32 %13, ptr %8, align 8, !tbaa !46
  %14 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %12) #23
  store i32 %9, ptr %8, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %7, %6
  %16 = phi ptr [ null, %6 ], [ %14, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_zfree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @png_free(ptr noundef %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_reset_crc(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #23
  %3 = trunc i64 %2 to i32
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  store i32 %3, ptr %4, align 4, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
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
  %28 = tail call i64 @crc32(i64 noundef %23, ptr noundef %24, i32 noundef %27) #23
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @png_user_version_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br i1 %4, label %23, label %6

6:                                                ; preds = %2, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %2 ]
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !51
  %10 = getelementptr inbounds i8, ptr @.str.8, i64 %7
  %11 = load i8, ptr %10, align 1, !tbaa !51
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
  br i1 %18, label %19, label %6, !llvm.loop !52

19:                                               ; preds = %16
  %20 = load i32, ptr %5, align 8, !tbaa !46
  %21 = and i32 %20, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %26

23:                                               ; preds = %2
  %24 = load i32, ptr %5, align 8, !tbaa !46
  %25 = or i32 %24, 131072
  store i32 %25, ptr %5, align 8, !tbaa !46
  br label %33

26:                                               ; preds = %19
  %27 = load i8, ptr %1, align 1, !tbaa !51
  %28 = icmp eq i8 %27, 49
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %1, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !51
  %32 = icmp eq i8 %31, 53
  br i1 %32, label %38, label %33

33:                                               ; preds = %23, %29, %26
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #24
  %34 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef 0, ptr noundef nonnull @.str.2) #23
  %35 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef %34, ptr noundef %1) #23
  %36 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef %35, ptr noundef nonnull @.str.3) #23
  %37 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 128, i64 noundef %36, ptr noundef nonnull @.str.8) #23
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #24
  br label %38

38:                                               ; preds = %29, %19, %33
  %39 = phi i32 [ 0, %33 ], [ 1, %19 ], [ 1, %29 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_header_ver(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.8
}

; Function Attrs: optsize
declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @png_create_info_struct(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 128
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 127
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call noalias ptr @png_create_struct_2(i32 noundef 2, ptr noundef %6, ptr noundef %8) #23
  store ptr %9, ptr %2, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  call void @png_info_init_3(ptr noundef nonnull %2, i64 noundef 312) #25
  %12 = load ptr, ptr %2, align 8, !tbaa !55
  br label %13

13:                                               ; preds = %4, %11, %1
  %14 = phi ptr [ null, %1 ], [ %12, %11 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr %14
}

; Function Attrs: optsize
declare noalias ptr @png_create_struct_2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_info_init_3(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = icmp ult i64 %1, 312
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  tail call void @png_destroy_struct(ptr noundef nonnull %3) #23
  %8 = tail call noalias ptr @png_create_struct(i32 noundef 2) #23
  store ptr %8, ptr %0, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %3, %5 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, i8 0, i64 312, i1 false)
  br label %11

11:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_destroy_info_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  tail call void @png_info_destroy(ptr noundef nonnull %0, ptr noundef nonnull %7) #25
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 129
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 127
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  tail call void @png_destroy_struct_2(ptr noundef nonnull %7, ptr noundef %11, ptr noundef %13) #23
  store ptr null, ptr %1, align 8, !tbaa !55
  br label %14

14:                                               ; preds = %6, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_info_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !55
  tail call void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef 32767, i32 noundef -1) #25
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 118
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 119
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %9) #23
  store ptr null, ptr %8, align 8, !tbaa !58
  store i32 0, ptr %4, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %7, %2
  call void @png_info_init_3(ptr noundef nonnull %3, i64 noundef 312) #25
  ret void
}

; Function Attrs: optsize
declare void @png_destroy_struct_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_destroy_struct(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noalias ptr @png_create_struct(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = or i32 %11, %3
  store i32 %12, ptr %10, align 4, !tbaa !59
  br label %19

13:                                               ; preds = %8
  %14 = xor i32 %3, -1
  %15 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %16 = load i32, ptr %15, align 4, !tbaa !59
  %17 = and i32 %16, %14
  store i32 %17, ptr %15, align 4, !tbaa !59
  br label %19

18:                                               ; preds = %8
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #23
  br label %19

19:                                               ; preds = %13, %18, %4, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_free_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %258, label %8

8:                                                ; preds = %4
  %9 = and i32 %2, 16384
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 48
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %3, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !62
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %32, label %37

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = sext i32 %3 to i64
  %26 = getelementptr inbounds %struct.png_text_struct, ptr %22, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %27) #23
  %30 = load ptr, ptr %21, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.png_text_struct, ptr %30, i64 %25, i32 1
  store ptr null, ptr %31, align 8, !tbaa !64
  br label %40

32:                                               ; preds = %16, %32
  %33 = phi i32 [ %34, %32 ], [ 0, %16 ]
  tail call void @png_free_data(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 16384, i32 noundef %33) #25
  %34 = add nuw nsw i32 %33, 1
  %35 = load i32, ptr %17, align 4, !tbaa !62
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %32, label %37, !llvm.loop !66

37:                                               ; preds = %32, %16
  %38 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  tail call void @png_free(ptr noundef %0, ptr noundef %39) #23
  store ptr null, ptr %38, align 8, !tbaa !63
  store i32 0, ptr %17, align 4, !tbaa !62
  br label %40

40:                                               ; preds = %37, %29, %24, %20, %8
  %41 = and i32 %2, 8192
  %42 = load i32, ptr %10, align 4, !tbaa !59
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  tail call void @png_free(ptr noundef %0, ptr noundef %47) #23
  store ptr null, ptr %46, align 8, !tbaa !67
  %48 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !68
  %50 = and i32 %49, -17
  store i32 %50, ptr %48, align 8, !tbaa !68
  %51 = load i32, ptr %10, align 4, !tbaa !59
  br label %52

52:                                               ; preds = %45, %40
  %53 = phi i32 [ %51, %45 ], [ %42, %40 ]
  %54 = and i32 %2, 256
  %55 = and i32 %54, %53
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %59 = load ptr, ptr %58, align 8, !tbaa !69
  tail call void @png_free(ptr noundef %0, ptr noundef %59) #23
  %60 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  tail call void @png_free(ptr noundef %0, ptr noundef %61) #23
  %62 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %63 = load i32, ptr %62, align 8, !tbaa !68
  %64 = and i32 %63, -16385
  store i32 %64, ptr %62, align 8, !tbaa !68
  %65 = load i32, ptr %10, align 4, !tbaa !59
  br label %66

66:                                               ; preds = %57, %52
  %67 = phi i32 [ %65, %57 ], [ %53, %52 ]
  %68 = and i32 %2, 128
  %69 = and i32 %68, %67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 41
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  tail call void @png_free(ptr noundef %0, ptr noundef %73) #23
  %74 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 44
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  tail call void @png_free(ptr noundef %0, ptr noundef %75) #23
  store ptr null, ptr %72, align 8, !tbaa !71
  store ptr null, ptr %74, align 8, !tbaa !72
  %76 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 45
  %77 = load ptr, ptr %76, align 8, !tbaa !73
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 47
  %81 = load i8, ptr %80, align 1, !tbaa !74
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %79, %83
  %84 = phi i64 [ %90, %83 ], [ 0, %79 ]
  %85 = load ptr, ptr %76, align 8, !tbaa !73
  %86 = getelementptr inbounds ptr, ptr %85, i64 %84
  %87 = load ptr, ptr %86, align 8, !tbaa !55
  tail call void @png_free(ptr noundef %0, ptr noundef %87) #23
  %88 = load ptr, ptr %76, align 8, !tbaa !73
  %89 = getelementptr inbounds ptr, ptr %88, i64 %84
  store ptr null, ptr %89, align 8, !tbaa !55
  %90 = add nuw nsw i64 %84, 1
  %91 = load i8, ptr %80, align 1, !tbaa !74
  %92 = zext i8 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %83, label %94, !llvm.loop !75

94:                                               ; preds = %83
  %95 = load ptr, ptr %76, align 8, !tbaa !73
  br label %96

96:                                               ; preds = %94, %79
  %97 = phi ptr [ %95, %94 ], [ %77, %79 ]
  tail call void @png_free(ptr noundef %0, ptr noundef %97) #23
  store ptr null, ptr %76, align 8, !tbaa !73
  br label %98

98:                                               ; preds = %96, %71
  %99 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !68
  %101 = and i32 %100, -1025
  store i32 %101, ptr %99, align 8, !tbaa !68
  %102 = load i32, ptr %10, align 4, !tbaa !59
  br label %103

103:                                              ; preds = %98, %66
  %104 = phi i32 [ %102, %98 ], [ %67, %66 ]
  %105 = and i32 %2, 16
  %106 = and i32 %105, %104
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 51
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  tail call void @png_free(ptr noundef %0, ptr noundef %110) #23
  %111 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 52
  %112 = load ptr, ptr %111, align 8, !tbaa !77
  tail call void @png_free(ptr noundef %0, ptr noundef %112) #23
  %113 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %109, i8 0, i64 16, i1 false)
  %114 = load i32, ptr %113, align 8, !tbaa !68
  %115 = and i32 %114, -4097
  store i32 %115, ptr %113, align 8, !tbaa !68
  %116 = load i32, ptr %10, align 4, !tbaa !59
  br label %117

117:                                              ; preds = %108, %103
  %118 = phi i32 [ %116, %108 ], [ %104, %103 ]
  %119 = and i32 %2, 32
  %120 = and i32 %119, %118
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %156, label %122

122:                                              ; preds = %117
  %123 = icmp eq i32 %3, -1
  br i1 %123, label %138, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  %126 = load ptr, ptr %125, align 8, !tbaa !78
  %127 = icmp eq ptr %126, null
  br i1 %127, label %156, label %128

128:                                              ; preds = %124
  %129 = sext i32 %3 to i64
  %130 = getelementptr inbounds %struct.png_sPLT_struct, ptr %126, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !79
  tail call void @png_free(ptr noundef %0, ptr noundef %131) #23
  %132 = load ptr, ptr %125, align 8, !tbaa !78
  %133 = getelementptr inbounds %struct.png_sPLT_struct, ptr %132, i64 %129, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !81
  tail call void @png_free(ptr noundef %0, ptr noundef %134) #23
  %135 = load ptr, ptr %125, align 8, !tbaa !78
  %136 = getelementptr inbounds %struct.png_sPLT_struct, ptr %135, i64 %129
  store ptr null, ptr %136, align 8, !tbaa !79
  %137 = getelementptr inbounds %struct.png_sPLT_struct, ptr %135, i64 %129, i32 2
  store ptr null, ptr %137, align 8, !tbaa !81
  br label %156

138:                                              ; preds = %122
  %139 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 56
  %140 = load i32, ptr %139, align 8, !tbaa !82
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %138
  %143 = icmp sgt i32 %140, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %142, %144
  %145 = phi i32 [ %146, %144 ], [ 0, %142 ]
  tail call void @png_free_data(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 32, i32 noundef %145) #25
  %146 = add nuw nsw i32 %145, 1
  %147 = load i32, ptr %139, align 8, !tbaa !82
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %144, label %149, !llvm.loop !83

149:                                              ; preds = %144, %142
  %150 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  %151 = load ptr, ptr %150, align 8, !tbaa !78
  tail call void @png_free(ptr noundef %0, ptr noundef %151) #23
  store ptr null, ptr %150, align 8, !tbaa !78
  store i32 0, ptr %139, align 8, !tbaa !82
  br label %152

152:                                              ; preds = %149, %138
  %153 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !68
  %155 = and i32 %154, -8193
  store i32 %155, ptr %153, align 8, !tbaa !68
  br label %156

156:                                              ; preds = %152, %128, %124, %117
  %157 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !84
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %158) #23
  store ptr null, ptr %157, align 8, !tbaa !84
  br label %161

161:                                              ; preds = %160, %156
  %162 = and i32 %2, 512
  %163 = load i32, ptr %10, align 4, !tbaa !59
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %192, label %166

166:                                              ; preds = %161
  %167 = icmp eq i32 %3, -1
  br i1 %167, label %178, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %170 = load ptr, ptr %169, align 8, !tbaa !85
  %171 = icmp eq ptr %170, null
  br i1 %171, label %192, label %172

172:                                              ; preds = %168
  %173 = sext i32 %3 to i64
  %174 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %170, i64 %173, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !86
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %175) #23
  %176 = load ptr, ptr %169, align 8, !tbaa !85
  %177 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %176, i64 %173, i32 1
  store ptr null, ptr %177, align 8, !tbaa !86
  br label %192

178:                                              ; preds = %166
  %179 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %180 = load i32, ptr %179, align 8, !tbaa !87
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %182, %184
  %185 = phi i32 [ %186, %184 ], [ 0, %182 ]
  tail call void @png_free_data(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 512, i32 noundef %185) #25
  %186 = add nuw nsw i32 %185, 1
  %187 = load i32, ptr %179, align 8, !tbaa !87
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %184, label %189, !llvm.loop !88

189:                                              ; preds = %184, %182
  %190 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %191 = load ptr, ptr %190, align 8, !tbaa !85
  tail call void @png_free(ptr noundef %0, ptr noundef %191) #23
  store ptr null, ptr %190, align 8, !tbaa !85
  store i32 0, ptr %179, align 8, !tbaa !87
  br label %192

192:                                              ; preds = %178, %189, %172, %168, %161
  %193 = and i32 %2, 8
  %194 = load i32, ptr %10, align 4, !tbaa !59
  %195 = and i32 %193, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 32
  %199 = load ptr, ptr %198, align 8, !tbaa !89
  tail call void @png_free(ptr noundef %0, ptr noundef %199) #23
  store ptr null, ptr %198, align 8, !tbaa !89
  %200 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %201 = load i32, ptr %200, align 8, !tbaa !68
  %202 = and i32 %201, -65
  store i32 %202, ptr %200, align 8, !tbaa !68
  %203 = load i32, ptr %10, align 4, !tbaa !59
  br label %204

204:                                              ; preds = %197, %192
  %205 = phi i32 [ %203, %197 ], [ %194, %192 ]
  %206 = and i32 %2, 4096
  %207 = and i32 %206, %205
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !90
  tail call void @png_zfree(ptr noundef %0, ptr noundef %211) #25
  store ptr null, ptr %210, align 8, !tbaa !90
  %212 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !68
  %214 = and i32 %213, -9
  store i32 %214, ptr %212, align 8, !tbaa !68
  %215 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  store i16 0, ptr %215, align 8, !tbaa !91
  %216 = load i32, ptr %10, align 4, !tbaa !59
  br label %217

217:                                              ; preds = %209, %204
  %218 = phi i32 [ %216, %209 ], [ %205, %204 ]
  %219 = and i32 %2, 64
  %220 = and i32 %219, %218
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %251, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %224 = load ptr, ptr %223, align 8, !tbaa !92
  %225 = icmp eq ptr %224, null
  br i1 %225, label %246, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !93
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %226, %230
  %231 = phi i64 [ %237, %230 ], [ 0, %226 ]
  %232 = load ptr, ptr %223, align 8, !tbaa !92
  %233 = getelementptr inbounds ptr, ptr %232, i64 %231
  %234 = load ptr, ptr %233, align 8, !tbaa !55
  tail call void @png_free(ptr noundef %0, ptr noundef %234) #23
  %235 = load ptr, ptr %223, align 8, !tbaa !92
  %236 = getelementptr inbounds ptr, ptr %235, i64 %231
  store ptr null, ptr %236, align 8, !tbaa !55
  %237 = add nuw nsw i64 %231, 1
  %238 = load i32, ptr %227, align 4, !tbaa !93
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %230, label %241, !llvm.loop !94

241:                                              ; preds = %230
  %242 = load ptr, ptr %223, align 8, !tbaa !92
  br label %243

243:                                              ; preds = %241, %226
  %244 = phi ptr [ %242, %241 ], [ %224, %226 ]
  tail call void @png_free(ptr noundef %0, ptr noundef %244) #23
  store ptr null, ptr %223, align 8, !tbaa !92
  %245 = load i32, ptr %10, align 4, !tbaa !59
  br label %246

246:                                              ; preds = %243, %222
  %247 = phi i32 [ %245, %243 ], [ %218, %222 ]
  %248 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %249 = load i32, ptr %248, align 8, !tbaa !68
  %250 = and i32 %249, -32769
  store i32 %250, ptr %248, align 8, !tbaa !68
  br label %251

251:                                              ; preds = %246, %217
  %252 = phi i32 [ %247, %246 ], [ %218, %217 ]
  %253 = icmp eq i32 %3, -1
  %254 = and i32 %2, -16929
  %255 = select i1 %253, i32 %2, i32 %254
  %256 = xor i32 %255, -1
  %257 = and i32 %252, %256
  store i32 %257, ptr %10, align 4, !tbaa !59
  br label %258

258:                                              ; preds = %4, %251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_io_ptr(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_init_io(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 7
  store ptr %1, ptr %5, align 8, !tbaa !95
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @png_convert_to_rfc1123(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [5 x i8], align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %1, align 2, !tbaa !96
  %7 = icmp ugt i16 %6, 9999
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 1
  %10 = load i8, ptr %9, align 2, !tbaa !97
  %11 = add i8 %10, -13
  %12 = icmp ult i8 %11, -12
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !98
  %16 = add i8 %15, -32
  %17 = icmp ult i8 %16, -31
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !99
  %21 = icmp ugt i8 %20, 23
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 4
  %24 = load i8, ptr %23, align 1, !tbaa !100
  %25 = icmp ugt i8 %24, 59
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 5
  %28 = load i8, ptr %27, align 2, !tbaa !101
  %29 = icmp ugt i8 %28, 60
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18, %13, %8, %5
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #23
  br label %89

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #24
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114
  %33 = getelementptr inbounds i8, ptr %3, i64 5
  %34 = zext nneg i8 %15 to i64
  %35 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 1, i64 noundef %34) #23
  %36 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef 0, ptr noundef %35) #23
  %37 = icmp ult i64 %36, 28
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = add nuw nsw i64 %36, 1
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %36
  store i8 32, ptr %40, align 1, !tbaa !51
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i64 [ %39, %38 ], [ %36, %31 ]
  %43 = load i8, ptr %9, align 2, !tbaa !97
  %44 = zext i8 %43 to i64
  %45 = add nsw i64 %44, -1
  %46 = getelementptr inbounds [12 x [4 x i8]], ptr @png_convert_to_rfc1123.short_months, i64 0, i64 %45
  %47 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %42, ptr noundef nonnull %46) #23
  %48 = icmp ult i64 %47, 28
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = add nuw nsw i64 %47, 1
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %47
  store i8 32, ptr %51, align 1, !tbaa !51
  br label %52

52:                                               ; preds = %49, %41
  %53 = phi i64 [ %50, %49 ], [ %47, %41 ]
  %54 = load i16, ptr %1, align 2, !tbaa !96
  %55 = zext i16 %54 to i64
  %56 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 1, i64 noundef %55) #23
  %57 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %53, ptr noundef %56) #23
  %58 = icmp ult i64 %57, 28
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = add nuw nsw i64 %57, 1
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %57
  store i8 32, ptr %61, align 1, !tbaa !51
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i64 [ %60, %59 ], [ %57, %52 ]
  %64 = load i8, ptr %19, align 2, !tbaa !99
  %65 = zext i8 %64 to i64
  %66 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 2, i64 noundef %65) #23
  %67 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %63, ptr noundef %66) #23
  %68 = icmp ult i64 %67, 28
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = add nuw nsw i64 %67, 1
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %67
  store i8 58, ptr %71, align 1, !tbaa !51
  br label %72

72:                                               ; preds = %69, %62
  %73 = phi i64 [ %70, %69 ], [ %67, %62 ]
  %74 = load i8, ptr %23, align 1, !tbaa !100
  %75 = zext i8 %74 to i64
  %76 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 2, i64 noundef %75) #23
  %77 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %73, ptr noundef %76) #23
  %78 = icmp ult i64 %77, 28
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %77, 1
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 114, i64 %77
  store i8 58, ptr %81, align 1, !tbaa !51
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi i64 [ %80, %79 ], [ %77, %72 ]
  %84 = load i8, ptr %27, align 2, !tbaa !101
  %85 = zext i8 %84 to i64
  %86 = call ptr @png_format_number(ptr noundef nonnull %3, ptr noundef nonnull %33, i32 noundef 2, i64 noundef %85) #23
  %87 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %83, ptr noundef %86) #23
  %88 = call i64 @png_safecat(ptr noundef nonnull %32, i64 noundef 29, i64 noundef %87, ptr noundef nonnull @.str.6) #23
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #24
  br label %89

89:                                               ; preds = %2, %82, %30
  %90 = phi ptr [ null, %30 ], [ %32, %82 ], [ null, %2 ]
  ret ptr %90
}

; Function Attrs: optsize
declare ptr @png_format_number(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_copyright(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_libpng_ver(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @png_get_header_version(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret ptr @.str.9
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %23 = load i8, ptr %22, align 1, !tbaa !51
  %24 = zext i8 %23 to i32
  br label %27

25:                                               ; preds = %16
  %26 = icmp ugt ptr %18, %12
  br i1 %26, label %16, label %27, !llvm.loop !102

27:                                               ; preds = %25, %2, %6, %21
  %28 = phi i32 [ %24, %21 ], [ 0, %6 ], [ 0, %2 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @png_chunk_unknown_handling(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #24
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !51
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !51
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !51
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !51
  %14 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 0, ptr %14, align 1, !tbaa !51
  %15 = call i32 @png_handle_as_unknown(ptr noundef %0, ptr noundef nonnull %3) #25, !range !103
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #24
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_reset_zstream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %5 = tail call i32 @inflateReset(ptr noundef nonnull %4) #23
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -2, %1 ]
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @inflateReset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @png_access_version_number() local_unnamed_addr #6 {
  ret i32 10510
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  %14 = icmp eq ptr %0, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %9
  %16 = icmp slt i32 %2, 1
  %17 = or i32 %3, %1
  %18 = or i32 %17, %4
  %19 = or i32 %18, %5
  %20 = or i32 %19, %6
  %21 = or i32 %20, %7
  %22 = or i32 %21, %8
  %23 = icmp slt i32 %22, 0
  %24 = or i1 %16, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #23
  br label %26

26:                                               ; preds = %15, %25
  %27 = phi i32 [ 0, %25 ], [ 1, %15 ]
  %28 = sub nsw i32 100000, %2
  %29 = icmp slt i32 %28, %1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #23
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ 0, %30 ], [ %27, %26 ]
  %33 = sub nsw i32 100000, %4
  %34 = icmp slt i32 %33, %3
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #23
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ 0, %35 ], [ %32, %31 ]
  %38 = sub nsw i32 100000, %6
  %39 = icmp slt i32 %38, %5
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #23
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ 0, %40 ], [ %37, %36 ]
  %43 = sub nsw i32 100000, %8
  %44 = icmp slt i32 %43, %7
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #23
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ 0, %45 ], [ %42, %41 ]
  %48 = sub nsw i32 %5, %3
  %49 = sext i32 %48 to i64
  %50 = sub nsw i32 %8, %4
  %51 = sext i32 %50 to i64
  call void @png_64bit_product(i64 noundef %49, i64 noundef %51, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  %52 = sub nsw i32 %6, %4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i32 %7, %3
  %55 = sext i32 %54 to i64
  call void @png_64bit_product(i64 noundef %53, i64 noundef %55, ptr noundef nonnull %12, ptr noundef nonnull %13) #25
  %56 = load i64, ptr %10, align 8, !tbaa !104
  %57 = load i64, ptr %12, align 8, !tbaa !104
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load i64, ptr %11, align 8, !tbaa !104
  %61 = load i64, ptr %13, align 8, !tbaa !104
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #23
  br label %64

64:                                               ; preds = %46, %59, %63, %9
  %65 = phi i32 [ 0, %9 ], [ 0, %63 ], [ %47, %59 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  ret i32 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_xy_from_XYZ(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly byval(%struct.png_XYZ) align 8 %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !108
  %9 = add nsw i32 %6, %8
  %10 = tail call i32 @png_muldiv(ptr noundef %0, i32 noundef %3, i32 noundef 100000, i32 noundef %9) #25, !range !109
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 1
  %14 = tail call i32 @png_muldiv(ptr noundef nonnull %13, i32 noundef %5, i32 noundef 100000, i32 noundef %9) #25, !range !109
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !110
  %19 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !111
  %21 = add nsw i32 %20, %18
  %22 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !112
  %24 = add nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 2
  %26 = tail call i32 @png_muldiv(ptr noundef nonnull %25, i32 noundef %18, i32 noundef 100000, i32 noundef %24) #25, !range !109
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 3
  %30 = tail call i32 @png_muldiv(ptr noundef nonnull %29, i32 noundef %20, i32 noundef 100000, i32 noundef %24) #25, !range !109
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %28
  %33 = add nsw i32 %24, %9
  %34 = add nsw i32 %18, %3
  %35 = add nsw i32 %20, %5
  %36 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !113
  %38 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !114
  %40 = add nsw i32 %39, %37
  %41 = getelementptr inbounds %struct.png_XYZ, ptr %1, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !115
  %43 = add nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 4
  %45 = tail call i32 @png_muldiv(ptr noundef nonnull %44, i32 noundef %37, i32 noundef 100000, i32 noundef %43) #25, !range !109
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 5
  %49 = tail call i32 @png_muldiv(ptr noundef nonnull %48, i32 noundef %39, i32 noundef 100000, i32 noundef %43) #25, !range !109
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %33, %43
  %53 = add nsw i32 %34, %37
  %54 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 6
  %55 = tail call i32 @png_muldiv(ptr noundef nonnull %54, i32 noundef %53, i32 noundef 100000, i32 noundef %52) #25, !range !109
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = add nsw i32 %35, %39
  %59 = getelementptr inbounds %struct.png_xy, ptr %0, i64 0, i32 7
  %60 = tail call i32 @png_muldiv(ptr noundef nonnull %59, i32 noundef %58, i32 noundef 100000, i32 noundef %52) #25, !range !109
  %61 = xor i32 %60, 1
  br label %62

62:                                               ; preds = %57, %51, %47, %32, %28, %16, %12, %2
  %63 = phi i32 [ 1, %2 ], [ 1, %12 ], [ 1, %16 ], [ 1, %28 ], [ 1, %32 ], [ 1, %47 ], [ 1, %51 ], [ %61, %57 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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
  %18 = fcmp ole double %17, 0x41DFFFFFFFC00000
  %19 = fcmp oge double %17, 0xC1E0000000000000
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = fptosi double %17 to i32
  br label %23

23:                                               ; preds = %6, %21
  %24 = phi i32 [ %22, %21 ], [ 0, %6 ]
  store i32 %24, ptr %0, align 4, !tbaa !116
  br label %25

25:                                               ; preds = %23, %10, %4
  %26 = phi i32 [ 0, %4 ], [ 0, %10 ], [ 1, %23 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_XYZ_from_xy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly byval(%struct.png_xy) align 8 %1) local_unnamed_addr #11 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %7 = load i32, ptr %1, align 8
  %8 = icmp ugt i32 %7, 100000
  br i1 %8, label %142, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !117
  %12 = icmp slt i32 %11, 0
  %13 = sub nuw nsw i32 100000, %7
  %14 = icmp sgt i32 %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %142, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp ugt i32 %18, 100000
  br i1 %19, label %142, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !119
  %23 = icmp slt i32 %22, 0
  %24 = sub nuw nsw i32 100000, %18
  %25 = icmp sgt i32 %22, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %142, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %29, 100000
  br i1 %30, label %142, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !120
  %34 = icmp slt i32 %33, 0
  %35 = sub nuw nsw i32 100000, %29
  %36 = icmp sgt i32 %33, %35
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %142, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 6
  %40 = load i32, ptr %39, align 8
  %41 = icmp ugt i32 %40, 100000
  br i1 %41, label %142, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.png_xy, ptr %1, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !121
  %45 = icmp slt i32 %44, 0
  %46 = sub nuw nsw i32 100000, %40
  %47 = icmp sgt i32 %44, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %142, label %49

49:                                               ; preds = %42
  %50 = sub nsw i32 %18, %29
  %51 = sub nsw i32 %11, %33
  %52 = call i32 @png_muldiv(ptr noundef nonnull %5, i32 noundef %50, i32 noundef %51, i32 noundef 7) #25, !range !109
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %142, label %54

54:                                               ; preds = %49
  %55 = sub nsw i32 %22, %33
  %56 = sub nsw i32 %7, %29
  %57 = call i32 @png_muldiv(ptr noundef nonnull %6, i32 noundef %55, i32 noundef %56, i32 noundef 7) #25, !range !109
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %142, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %5, align 4, !tbaa !116
  %61 = load i32, ptr %6, align 4, !tbaa !116
  %62 = sub nsw i32 %60, %61
  %63 = sub nsw i32 %44, %33
  %64 = call i32 @png_muldiv(ptr noundef nonnull %5, i32 noundef %50, i32 noundef %63, i32 noundef 7) #25, !range !109
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %142, label %66

66:                                               ; preds = %59
  %67 = sub nsw i32 %40, %29
  %68 = call i32 @png_muldiv(ptr noundef nonnull %6, i32 noundef %55, i32 noundef %67, i32 noundef 7) #25, !range !109
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %142, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %5, align 4, !tbaa !116
  %72 = load i32, ptr %6, align 4, !tbaa !116
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @png_muldiv(ptr noundef nonnull %3, i32 noundef %44, i32 noundef %62, i32 noundef %73) #25, !range !109
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %142, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr %3, align 4, !tbaa !116
  %78 = icmp sgt i32 %77, %44
  br i1 %78, label %79, label %142

79:                                               ; preds = %76
  %80 = call i32 @png_muldiv(ptr noundef nonnull %5, i32 noundef %51, i32 noundef %67, i32 noundef 7) #25, !range !109
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %142, label %82

82:                                               ; preds = %79
  %83 = call i32 @png_muldiv(ptr noundef nonnull %6, i32 noundef %56, i32 noundef %63, i32 noundef 7) #25, !range !109
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %142, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %5, align 4, !tbaa !116
  %87 = load i32, ptr %6, align 4, !tbaa !116
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @png_muldiv(ptr noundef nonnull %4, i32 noundef %44, i32 noundef %62, i32 noundef %88) #25, !range !109
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %142, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr %4, align 4, !tbaa !116
  %93 = icmp sgt i32 %92, %44
  br i1 %93, label %94, label %142

94:                                               ; preds = %91
  %95 = tail call i32 @png_reciprocal(i32 noundef %44) #25
  %96 = tail call i32 @png_reciprocal(i32 noundef %77) #25
  %97 = tail call i32 @png_reciprocal(i32 noundef %92) #25
  %98 = add i32 %96, %97
  %99 = sub i32 %95, %98
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %142, label %101

101:                                              ; preds = %94
  %102 = tail call i32 @png_muldiv(ptr noundef %0, i32 noundef %7, i32 noundef 100000, i32 noundef %77) #25, !range !109
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %142, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 1
  %106 = tail call i32 @png_muldiv(ptr noundef nonnull %105, i32 noundef %11, i32 noundef 100000, i32 noundef %77) #25, !range !109
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 2
  %110 = add nuw nsw i32 %7, %11
  %111 = sub nsw i32 100000, %110
  %112 = tail call i32 @png_muldiv(ptr noundef nonnull %109, i32 noundef %111, i32 noundef 100000, i32 noundef %77) #25, !range !109
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 3
  %116 = tail call i32 @png_muldiv(ptr noundef nonnull %115, i32 noundef %18, i32 noundef 100000, i32 noundef %92) #25, !range !109
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %142, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 4
  %120 = tail call i32 @png_muldiv(ptr noundef nonnull %119, i32 noundef %22, i32 noundef 100000, i32 noundef %92) #25, !range !109
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 5
  %124 = add nuw nsw i32 %18, %22
  %125 = sub nsw i32 100000, %124
  %126 = tail call i32 @png_muldiv(ptr noundef nonnull %123, i32 noundef %125, i32 noundef 100000, i32 noundef %92) #25, !range !109
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 6
  %130 = tail call i32 @png_muldiv(ptr noundef nonnull %129, i32 noundef %29, i32 noundef %99, i32 noundef 100000) #25, !range !109
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 7
  %134 = tail call i32 @png_muldiv(ptr noundef nonnull %133, i32 noundef %33, i32 noundef %99, i32 noundef 100000) #25, !range !109
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.png_XYZ, ptr %0, i64 0, i32 8
  %138 = add nuw nsw i32 %29, %33
  %139 = sub nsw i32 100000, %138
  %140 = tail call i32 @png_muldiv(ptr noundef nonnull %137, i32 noundef %139, i32 noundef %99, i32 noundef 100000) #25, !range !109
  %141 = xor i32 %140, 1
  br label %142

142:                                              ; preds = %136, %132, %128, %122, %118, %114, %108, %104, %101, %94, %85, %91, %82, %79, %70, %76, %66, %59, %54, %49, %42, %38, %31, %27, %20, %16, %9, %2
  %143 = phi i32 [ 1, %2 ], [ 1, %9 ], [ 1, %16 ], [ 1, %20 ], [ 1, %27 ], [ 1, %31 ], [ 1, %38 ], [ 1, %42 ], [ 2, %49 ], [ 2, %54 ], [ 2, %59 ], [ 2, %66 ], [ 1, %76 ], [ 1, %70 ], [ 2, %79 ], [ 2, %82 ], [ 1, %91 ], [ 1, %85 ], [ 1, %94 ], [ 1, %101 ], [ 1, %104 ], [ 1, %108 ], [ 1, %114 ], [ 1, %118 ], [ 1, %122 ], [ 1, %128 ], [ 1, %132 ], [ %141, %136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %143
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @png_XYZ_from_xy_checked(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly byval(%struct.png_xy) align 8 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @png_XYZ_from_xy(ptr noundef %1, ptr noundef nonnull byval(%struct.png_xy) align 8 %2) #25, !range !122
  switch i32 %4, label %6 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %3
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #23
  br label %7

6:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.17) #21
  unreachable

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %3 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_check_IHDR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.18) #23
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ 1, %10 ], [ 0, %8 ]
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.19) #23
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 1, %14 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 135
  %18 = load i32, ptr %17, align 4, !tbaa !123
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #23
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ 1, %20 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 136
  %24 = load i32, ptr %23, align 8, !tbaa !124
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #23
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ 1, %26 ], [ %22, %21 ]
  %29 = icmp slt i32 %1, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #23
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 1, %30 ], [ %28, %27 ]
  %33 = icmp slt i32 %2, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #23
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ 1, %34 ], [ %32, %31 ]
  %37 = icmp ugt i32 %1, 536870798
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #23
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #23
  br label %41

41:                                               ; preds = %39, %39, %39, %39, %39, %40
  %42 = phi i32 [ 1, %40 ], [ %36, %39 ], [ %36, %39 ], [ %36, %39 ], [ %36, %39 ], [ %36, %39 ]
  %43 = and i32 %4, -5
  %44 = icmp eq i32 %43, 1
  %45 = icmp ugt i32 %4, 6
  %46 = or i1 %45, %44
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #23
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #23
  br label %60

60:                                               ; preds = %53, %59
  %61 = phi i32 [ 1, %59 ], [ %49, %53 ]
  %62 = icmp sgt i32 %5, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #23
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ 1, %63 ], [ %61, %60 ]
  %66 = icmp eq i32 %6, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #23
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ 1, %67 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %71 = load i32, ptr %70, align 4, !tbaa !125
  %72 = and i32 %71, 4096
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %76 = load i32, ptr %75, align 8, !tbaa !126
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #23
  br label %79

79:                                               ; preds = %78, %74, %68
  %80 = icmp eq i32 %7, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %83 = load i32, ptr %82, align 8, !tbaa !126
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  %86 = icmp eq i32 %7, 64
  %87 = and i1 %86, %85
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, ptr %70, align 4, !tbaa !125
  %90 = and i32 %89, 4096
  %91 = icmp eq i32 %90, 0
  %92 = icmp eq i32 %43, 2
  %93 = and i1 %92, %91
  br i1 %93, label %99, label %94

94:                                               ; preds = %81, %88
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #23
  %95 = load i32, ptr %70, align 4, !tbaa !125
  %96 = and i32 %95, 4096
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #23
  br label %101

99:                                               ; preds = %88, %79
  %100 = icmp eq i32 %69, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %98, %99
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #21
  unreachable

102:                                              ; preds = %99
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @png_check_fp_number(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 {
  %5 = load i32, ptr %2, align 4, !tbaa !116
  %6 = load i64, ptr %3, align 8, !tbaa !104
  %7 = icmp ult i64 %6, %1
  br i1 %7, label %8, label %74

8:                                                ; preds = %4, %70
  %9 = phi i64 [ %72, %70 ], [ %6, %4 ]
  %10 = phi i32 [ %71, %70 ], [ %5, %4 ]
  %11 = getelementptr inbounds i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !51
  switch i8 %12, label %74 [
    i8 43, label %18
    i8 45, label %13
    i8 46, label %14
    i8 48, label %15
    i8 49, label %16
    i8 50, label %16
    i8 51, label %16
    i8 52, label %16
    i8 53, label %16
    i8 54, label %16
    i8 55, label %16
    i8 56, label %16
    i8 57, label %16
    i8 69, label %17
    i8 101, label %17
  ]

13:                                               ; preds = %8
  br label %18

14:                                               ; preds = %8
  br label %18

15:                                               ; preds = %8
  br label %18

16:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8
  br label %18

17:                                               ; preds = %8, %8
  br label %18

18:                                               ; preds = %8, %17, %16, %15, %14, %13
  %19 = phi i32 [ 32, %17 ], [ 264, %16 ], [ 8, %15 ], [ 16, %14 ], [ 132, %13 ], [ 4, %8 ]
  %20 = and i32 %10, 3
  %21 = and i32 %19, 60
  %22 = or disjoint i32 %21, %20
  switch i32 %22, label %74 [
    i32 4, label %23
    i32 16, label %28
    i32 8, label %40
    i32 32, label %48
    i32 9, label %54
    i32 33, label %57
    i32 6, label %63
    i32 10, label %68
  ]

23:                                               ; preds = %18
  %24 = and i32 %10, 60
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = or i32 %19, %10
  br label %70

28:                                               ; preds = %18
  %29 = and i32 %10, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %28
  %32 = and i32 %10, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = or i32 %19, %10
  br label %70

36:                                               ; preds = %31
  %37 = and i32 %10, 448
  %38 = or i32 %37, %19
  %39 = or disjoint i32 %38, 1
  br label %70

40:                                               ; preds = %18
  %41 = and i32 %10, 16
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %10, 384
  %44 = or disjoint i32 %43, 17
  %45 = select i1 %42, i32 %10, i32 %44
  %46 = or i32 %45, %19
  %47 = or i32 %46, 64
  br label %70

48:                                               ; preds = %18
  %49 = and i32 %10, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = and i32 %10, 448
  %53 = or disjoint i32 %52, 2
  br label %70

54:                                               ; preds = %18
  %55 = or i32 %10, %19
  %56 = or i32 %55, 64
  br label %70

57:                                               ; preds = %18
  %58 = and i32 %10, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = and i32 %10, 448
  %62 = or disjoint i32 %61, 2
  br label %70

63:                                               ; preds = %18
  %64 = and i32 %10, 60
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = or disjoint i32 %10, 4
  br label %70

68:                                               ; preds = %18
  %69 = or i32 %10, 72
  br label %70

70:                                               ; preds = %26, %40, %51, %54, %60, %66, %68, %34, %36
  %71 = phi i32 [ %69, %68 ], [ %67, %66 ], [ %62, %60 ], [ %56, %54 ], [ %53, %51 ], [ %47, %40 ], [ %35, %34 ], [ %39, %36 ], [ %27, %26 ]
  %72 = add i64 %9, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %74, label %8

74:                                               ; preds = %70, %8, %23, %28, %48, %57, %63, %18, %4
  %75 = phi i32 [ %5, %4 ], [ %10, %18 ], [ %10, %63 ], [ %10, %57 ], [ %10, %48 ], [ %10, %28 ], [ %10, %23 ], [ %10, %8 ], [ %71, %70 ]
  %76 = phi i64 [ %6, %4 ], [ %9, %18 ], [ %9, %63 ], [ %9, %57 ], [ %9, %48 ], [ %9, %28 ], [ %9, %23 ], [ %9, %8 ], [ %1, %70 ]
  store i32 %75, ptr %2, align 4, !tbaa !116
  store i64 %76, ptr %3, align 8, !tbaa !104
  %77 = lshr i32 %75, 3
  %78 = and i32 %77, 1
  ret i32 %78
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @png_check_fp_string(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 0, ptr %4, align 8, !tbaa !104
  %5 = call i32 @png_check_fp_number(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !tbaa !104
  %9 = icmp eq i64 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !51
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %7
  %15 = load i32, ptr %3, align 4, !tbaa !116
  br label %16

16:                                               ; preds = %2, %10, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %14, label %289, label %15

15:                                               ; preds = %5
  %16 = fcmp olt double %3, 0.000000e+00
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = fneg double %3
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !51
  %20 = add i64 %2, -1
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi double [ %18, %17 ], [ %3, %15 ]
  %23 = phi i64 [ %20, %17 ], [ %2, %15 ]
  %24 = phi ptr [ %19, %17 ], [ %1, %15 ]
  %25 = fcmp oge double %22, 0x10000000000000
  %26 = fcmp ole double %22, 0x7FEFFFFFFFFFFFFF
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %285

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %29 = call double @frexp(double noundef %22, ptr noundef nonnull %6) #23
  %30 = load i32, ptr %6, align 4, !tbaa !116
  %31 = mul nsw i32 %30, 77
  %32 = ashr i32 %31, 8
  %33 = tail call fastcc double @png_pow10(i32 noundef %32) #25
  %34 = fcmp olt double %33, 0x10000000000000
  %35 = fcmp olt double %33, %22
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = add nsw i32 %32, 1
  %39 = tail call fastcc double @png_pow10(i32 noundef %38) #25
  %40 = fcmp ugt double %39, 0x7FEFFFFFFFFFFFFF
  br i1 %40, label %51, label %41

41:                                               ; preds = %37, %47
  %42 = phi double [ %49, %47 ], [ %39, %37 ]
  %43 = phi i32 [ %48, %47 ], [ %38, %37 ]
  %44 = fcmp olt double %42, 0x10000000000000
  %45 = fcmp olt double %42, %22
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = add nsw i32 %43, 1
  %49 = tail call fastcc double @png_pow10(i32 noundef %48) #25
  %50 = fcmp ugt double %49, 0x7FEFFFFFFFFFFFFF
  br i1 %50, label %51, label %41

51:                                               ; preds = %47, %41, %37, %28
  %52 = phi i32 [ %32, %28 ], [ %32, %37 ], [ %43, %41 ], [ %43, %47 ]
  %53 = phi double [ %33, %28 ], [ %33, %37 ], [ %42, %41 ], [ %42, %47 ]
  %54 = fdiv double %22, %53
  %55 = fcmp ult double %54, 1.000000e+00
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %56
  %57 = phi double [ %59, %56 ], [ %54, %51 ]
  %58 = phi i32 [ %60, %56 ], [ %52, %51 ]
  %59 = fdiv double %57, 1.000000e+01
  %60 = add nsw i32 %58, 1
  %61 = fcmp ult double %59, 1.000000e+00
  br i1 %61, label %62, label %56, !llvm.loop !127

62:                                               ; preds = %56, %51
  %63 = phi i32 [ %52, %51 ], [ %60, %56 ]
  %64 = phi double [ %54, %51 ], [ %59, %56 ]
  store i32 %63, ptr %6, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #24
  %65 = icmp ugt i32 %63, -3
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = sub nsw i32 0, %63
  store i32 0, ptr %6, align 4, !tbaa !116
  br label %68

68:                                               ; preds = %62, %66
  %69 = phi i32 [ %67, %66 ], [ 0, %62 ]
  br label %70

70:                                               ; preds = %68, %211
  %71 = phi double [ %212, %211 ], [ %64, %68 ]
  %72 = phi i64 [ %213, %211 ], [ %23, %68 ]
  %73 = phi i32 [ %214, %211 ], [ %69, %68 ]
  %74 = phi i32 [ %215, %211 ], [ %69, %68 ]
  %75 = phi i32 [ %216, %211 ], [ 0, %68 ]
  %76 = phi ptr [ %217, %211 ], [ %24, %68 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %77 = fmul double %71, 1.000000e+01
  %78 = add i32 %73, 1
  %79 = sub i32 %78, %74
  %80 = add i32 %79, %75
  %81 = icmp slt i32 %80, %11
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = call double @modf(double noundef %77, ptr noundef nonnull %8) #23
  %84 = load double, ptr %8, align 8, !tbaa !128
  br label %147

85:                                               ; preds = %70
  %86 = fadd double %77, 5.000000e-01
  %87 = tail call double @llvm.floor.f64(double %86)
  store double %87, ptr %8, align 8, !tbaa !128
  %88 = fcmp ogt double %87, 9.000000e+00
  br i1 %88, label %89, label %147

89:                                               ; preds = %85
  %90 = icmp sgt i32 %73, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %89
  %92 = load i32, ptr %6, align 4, !tbaa !116
  %93 = icmp sgt i32 %75, 0
  br i1 %93, label %99, label %130

94:                                               ; preds = %89
  %95 = add nsw i32 %73, -1
  store double 1.000000e+00, ptr %8, align 8, !tbaa !128
  %96 = icmp eq i32 %75, 0
  %97 = sext i1 %96 to i32
  %98 = add nsw i32 %74, %97
  br label %158

99:                                               ; preds = %91, %116
  %100 = phi i32 [ %117, %116 ], [ %92, %91 ]
  %101 = phi ptr [ %121, %116 ], [ %76, %91 ]
  %102 = phi i32 [ %123, %116 ], [ %75, %91 ]
  %103 = phi i64 [ %119, %116 ], [ %72, %91 ]
  %104 = phi i32 [ %118, %116 ], [ %92, %91 ]
  %105 = getelementptr inbounds i8, ptr %101, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !51
  %107 = icmp eq i32 %104, -1
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = add nuw nsw i32 %104, 1
  store i32 %109, ptr %6, align 4, !tbaa !116
  br label %116

110:                                              ; preds = %99
  %111 = icmp eq i8 %106, 46
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = getelementptr inbounds i8, ptr %101, i64 -2
  %114 = load i8, ptr %113, align 1, !tbaa !51
  %115 = add i64 %103, 1
  store i32 1, ptr %6, align 4, !tbaa !116
  br label %116

116:                                              ; preds = %110, %112, %108
  %117 = phi i32 [ %109, %108 ], [ 1, %112 ], [ %100, %110 ]
  %118 = phi i32 [ %109, %108 ], [ 1, %112 ], [ -1, %110 ]
  %119 = phi i64 [ %103, %108 ], [ %115, %112 ], [ %103, %110 ]
  %120 = phi i8 [ %106, %108 ], [ %114, %112 ], [ %106, %110 ]
  %121 = phi ptr [ %105, %108 ], [ %113, %112 ], [ %105, %110 ]
  %122 = zext i8 %120 to i32
  %123 = add nsw i32 %102, -1
  %124 = add nsw i32 %122, -47
  %125 = sitofp i32 %124 to double
  store double %125, ptr %8, align 8, !tbaa !128
  %126 = icmp ugt i32 %102, 1
  %127 = icmp ugt i8 %120, 56
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %99, label %129, !llvm.loop !130

129:                                              ; preds = %116
  br i1 %127, label %130, label %147

130:                                              ; preds = %91, %129
  %131 = phi ptr [ %121, %129 ], [ %76, %91 ]
  %132 = phi i32 [ %123, %129 ], [ %75, %91 ]
  %133 = phi i64 [ %119, %129 ], [ %72, %91 ]
  %134 = phi i32 [ %117, %129 ], [ %92, %91 ]
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = getelementptr inbounds i8, ptr %131, i64 -1
  %138 = load i8, ptr %137, align 1, !tbaa !51
  %139 = icmp eq i8 %138, 46
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = add i64 %133, 1
  store i32 1, ptr %6, align 4, !tbaa !116
  br label %144

142:                                              ; preds = %130
  %143 = add nuw nsw i32 %134, 1
  store i32 %143, ptr %6, align 4, !tbaa !116
  br label %144

144:                                              ; preds = %136, %140, %142
  %145 = phi i64 [ %133, %142 ], [ %141, %140 ], [ %133, %136 ]
  %146 = phi ptr [ %131, %142 ], [ %137, %140 ], [ %137, %136 ]
  store double 1.000000e+00, ptr %8, align 8, !tbaa !128
  br label %158

147:                                              ; preds = %129, %82, %85
  %148 = phi double [ %87, %85 ], [ %125, %129 ], [ %84, %82 ]
  %149 = phi double [ 0.000000e+00, %85 ], [ 0.000000e+00, %129 ], [ %83, %82 ]
  %150 = phi i64 [ %72, %85 ], [ %119, %129 ], [ %72, %82 ]
  %151 = phi i32 [ %75, %85 ], [ %123, %129 ], [ %75, %82 ]
  %152 = phi ptr [ %76, %85 ], [ %121, %129 ], [ %76, %82 ]
  %153 = fcmp oeq double %148, 0.000000e+00
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = icmp eq i32 %151, 0
  %156 = zext i1 %155 to i32
  %157 = add nsw i32 %74, %156
  br label %211

158:                                              ; preds = %144, %94, %147
  %159 = phi ptr [ %152, %147 ], [ %76, %94 ], [ %146, %144 ]
  %160 = phi i32 [ %151, %147 ], [ %75, %94 ], [ %132, %144 ]
  %161 = phi i32 [ %74, %147 ], [ %98, %94 ], [ %74, %144 ]
  %162 = phi i32 [ %73, %147 ], [ %95, %94 ], [ %73, %144 ]
  %163 = phi i64 [ %150, %147 ], [ %72, %94 ], [ %145, %144 ]
  %164 = phi double [ %149, %147 ], [ 0.000000e+00, %94 ], [ 0.000000e+00, %144 ]
  %165 = icmp sgt i32 %162, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %158, %180
  %167 = phi ptr [ %183, %180 ], [ %159, %158 ]
  %168 = phi i32 [ %184, %180 ], [ %162, %158 ]
  %169 = phi i64 [ %181, %180 ], [ %163, %158 ]
  %170 = load i32, ptr %6, align 4, !tbaa !116
  switch i32 %170, label %175 [
    i32 -1, label %180
    i32 0, label %171
  ]

171:                                              ; preds = %166
  %172 = getelementptr inbounds i8, ptr %167, i64 1
  store i8 46, ptr %167, align 1, !tbaa !51
  %173 = add i64 %169, -1
  %174 = load i32, ptr %6, align 4, !tbaa !116
  br label %175

175:                                              ; preds = %166, %171
  %176 = phi i32 [ %174, %171 ], [ %170, %166 ]
  %177 = phi i64 [ %173, %171 ], [ %169, %166 ]
  %178 = phi ptr [ %172, %171 ], [ %167, %166 ]
  %179 = add nsw i32 %176, -1
  store i32 %179, ptr %6, align 4, !tbaa !116
  br label %180

180:                                              ; preds = %166, %175
  %181 = phi i64 [ %177, %175 ], [ %169, %166 ]
  %182 = phi ptr [ %178, %175 ], [ %167, %166 ]
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 48, ptr %182, align 1, !tbaa !51
  %184 = add nsw i32 %168, -1
  %185 = icmp sgt i32 %168, 1
  br i1 %185, label %166, label %186, !llvm.loop !131

186:                                              ; preds = %180, %158
  %187 = phi i64 [ %163, %158 ], [ %181, %180 ]
  %188 = phi i32 [ %162, %158 ], [ 0, %180 ]
  %189 = phi ptr [ %159, %158 ], [ %183, %180 ]
  %190 = load i32, ptr %6, align 4, !tbaa !116
  switch i32 %190, label %195 [
    i32 -1, label %200
    i32 0, label %191
  ]

191:                                              ; preds = %186
  %192 = getelementptr inbounds i8, ptr %189, i64 1
  store i8 46, ptr %189, align 1, !tbaa !51
  %193 = add i64 %187, -1
  %194 = load i32, ptr %6, align 4, !tbaa !116
  br label %195

195:                                              ; preds = %186, %191
  %196 = phi i32 [ %194, %191 ], [ %190, %186 ]
  %197 = phi i64 [ %193, %191 ], [ %187, %186 ]
  %198 = phi ptr [ %192, %191 ], [ %189, %186 ]
  %199 = add nsw i32 %196, -1
  store i32 %199, ptr %6, align 4, !tbaa !116
  br label %200

200:                                              ; preds = %186, %195
  %201 = phi i64 [ %197, %195 ], [ %187, %186 ]
  %202 = phi ptr [ %198, %195 ], [ %189, %186 ]
  %203 = load double, ptr %8, align 8, !tbaa !128
  %204 = fptosi double %203 to i32
  %205 = trunc i32 %204 to i8
  %206 = add i8 %205, 48
  %207 = getelementptr inbounds i8, ptr %202, i64 1
  store i8 %206, ptr %202, align 1, !tbaa !51
  %208 = add i32 %160, 1
  %209 = sub i32 %208, %161
  %210 = add i32 %209, %162
  br label %211

211:                                              ; preds = %154, %200
  %212 = phi double [ %164, %200 ], [ %149, %154 ]
  %213 = phi i64 [ %201, %200 ], [ %150, %154 ]
  %214 = phi i32 [ %188, %200 ], [ %78, %154 ]
  %215 = phi i32 [ 0, %200 ], [ %157, %154 ]
  %216 = phi i32 [ %210, %200 ], [ %151, %154 ]
  %217 = phi ptr [ %207, %200 ], [ %152, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  %218 = sub i32 %214, %215
  %219 = add i32 %218, %216
  %220 = icmp slt i32 %219, %11
  %221 = fcmp ogt double %212, 0x10000000000000
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %70, label %223, !llvm.loop !132

223:                                              ; preds = %211
  %224 = load i32, ptr %6, align 4
  %225 = add i32 %224, 1
  %226 = icmp ult i32 %225, 4
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = add nsw i32 %224, -1
  store i32 %228, ptr %6, align 4, !tbaa !116
  %229 = icmp sgt i32 %224, 0
  br i1 %229, label %230, label %282

230:                                              ; preds = %227, %230
  %231 = phi ptr [ %232, %230 ], [ %217, %227 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  store i8 48, ptr %231, align 1, !tbaa !51
  %233 = load i32, ptr %6, align 4, !tbaa !116
  %234 = add nsw i32 %233, -1
  store i32 %234, ptr %6, align 4, !tbaa !116
  %235 = icmp sgt i32 %233, 0
  br i1 %235, label %230, label %282, !llvm.loop !133

236:                                              ; preds = %223
  %237 = getelementptr inbounds i8, ptr %217, i64 1
  store i8 69, ptr %217, align 1, !tbaa !51
  %238 = xor i32 %216, -1
  %239 = zext i32 %238 to i64
  %240 = add i64 %213, %239
  %241 = load i32, ptr %6, align 4, !tbaa !116
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = getelementptr inbounds i8, ptr %217, i64 2
  store i8 45, ptr %237, align 1, !tbaa !51
  %245 = add i64 %240, -1
  %246 = load i32, ptr %6, align 4, !tbaa !116
  %247 = sub nsw i32 0, %246
  br label %248

248:                                              ; preds = %236, %243
  %249 = phi i64 [ %245, %243 ], [ %240, %236 ]
  %250 = phi ptr [ %244, %243 ], [ %237, %236 ]
  %251 = phi i32 [ %247, %243 ], [ %241, %236 ]
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %267, label %253

253:                                              ; preds = %248, %253
  %254 = phi i64 [ %259, %253 ], [ 0, %248 ]
  %255 = phi i32 [ %261, %253 ], [ %251, %248 ]
  %256 = urem i32 %255, 10
  %257 = trunc i32 %256 to i8
  %258 = or disjoint i8 %257, 48
  %259 = add nuw i64 %254, 1
  %260 = getelementptr inbounds [10 x i8], ptr %7, i64 0, i64 %254
  store i8 %258, ptr %260, align 1, !tbaa !51
  %261 = udiv i32 %255, 10
  %262 = icmp ult i32 %255, 10
  br i1 %262, label %263, label %253, !llvm.loop !134

263:                                              ; preds = %253
  %264 = trunc i64 %259 to i32
  %265 = trunc i64 %249 to i32
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %270, label %284

267:                                              ; preds = %248
  %268 = trunc i64 %249 to i32
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %282, label %284

270:                                              ; preds = %263
  %271 = icmp sgt i32 %264, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %270
  %273 = and i64 %259, 4294967295
  br label %274

274:                                              ; preds = %272, %274
  %275 = phi i64 [ %273, %272 ], [ %277, %274 ]
  %276 = phi ptr [ %250, %272 ], [ %280, %274 ]
  %277 = add nsw i64 %275, -1
  %278 = getelementptr inbounds [10 x i8], ptr %7, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !51
  %280 = getelementptr inbounds i8, ptr %276, i64 1
  store i8 %279, ptr %276, align 1, !tbaa !51
  %281 = icmp ugt i64 %275, 1
  br i1 %281, label %274, label %282, !llvm.loop !135

282:                                              ; preds = %274, %230, %270, %267, %227
  %283 = phi ptr [ %217, %227 ], [ %250, %270 ], [ %250, %267 ], [ %232, %230 ], [ %280, %274 ]
  store i8 0, ptr %283, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %290

284:                                              ; preds = %267, %263
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %289

285:                                              ; preds = %21
  br i1 %25, label %288, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 48, ptr %24, align 1, !tbaa !51
  store i8 0, ptr %287, align 1, !tbaa !51
  br label %290

288:                                              ; preds = %285
  store <4 x i8> <i8 105, i8 110, i8 102, i8 0>, ptr %24, align 1, !tbaa !51
  br label %290

289:                                              ; preds = %284, %5
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.34) #21
  unreachable

290:                                              ; preds = %282, %288, %286
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @png_pow10(i32 noundef %0) unnamed_addr #14 !PGOFuncName !136 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, -307
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = sub nsw i32 0, %0
  br label %9

7:                                                ; preds = %1
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5, %7
  %10 = phi i32 [ %0, %7 ], [ %6, %5 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %20, %11 ], [ %10, %9 ]
  %13 = phi double [ %18, %11 ], [ 1.000000e+00, %9 ]
  %14 = phi double [ %19, %11 ], [ 1.000000e+01, %9 ]
  %15 = and i32 %12, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, double 1.000000e+00, double %14
  %18 = fmul double %13, %17
  %19 = fmul double %14, %14
  %20 = lshr i32 %12, 1
  %21 = icmp ult i32 %12, 2
  br i1 %21, label %22, label %11, !llvm.loop !137

22:                                               ; preds = %11
  %23 = fdiv double 1.000000e+00, %18
  %24 = select i1 %2, double %18, double %23
  br label %25

25:                                               ; preds = %7, %22, %3
  %26 = phi double [ 0.000000e+00, %3 ], [ %24, %22 ], [ 1.000000e+00, %7 ]
  ret double %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_ascii_from_fixed(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [10 x i8], align 1
  %6 = icmp ugt i64 %2, 12
  br i1 %6, label %7, label %78

7:                                                ; preds = %4
  %8 = icmp slt i32 %3, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !51
  %11 = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #24
  br label %14

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #24
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %9, %12
  %15 = phi ptr [ %10, %9 ], [ %1, %12 ]
  %16 = phi i32 [ %11, %9 ], [ %3, %12 ]
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %32, %17 ], [ 16, %14 ]
  %19 = phi i32 [ %26, %17 ], [ 0, %14 ]
  %20 = phi i32 [ %21, %17 ], [ %16, %14 ]
  %21 = udiv i32 %20, 10
  %22 = mul i32 %21, -10
  %23 = add i32 %22, %20
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, 48
  %26 = add i32 %19, 1
  %27 = zext i32 %19 to i64
  %28 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %27
  store i8 %25, ptr %28, align 1, !tbaa !51
  %29 = icmp eq i32 %18, 16
  %30 = icmp ne i32 %23, 0
  %31 = and i1 %29, %30
  %32 = select i1 %31, i32 %26, i32 %18
  %33 = icmp ult i32 %20, 10
  br i1 %33, label %34, label %17, !llvm.loop !138

34:                                               ; preds = %17
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %34
  %37 = icmp ugt i32 %26, 5
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = zext i32 %26 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %39, %38 ], [ %43, %40 ]
  %42 = phi ptr [ %15, %38 ], [ %46, %40 ]
  %43 = add nsw i64 %41, -1
  %44 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !51
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 %45, ptr %42, align 1, !tbaa !51
  %47 = icmp ugt i64 %43, 5
  br i1 %47, label %40, label %48, !llvm.loop !139

48:                                               ; preds = %40, %36
  %49 = phi i32 [ %26, %36 ], [ 5, %40 ]
  %50 = phi ptr [ %15, %36 ], [ %46, %40 ]
  %51 = icmp ult i32 %32, 6
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  store i8 46, ptr %50, align 1, !tbaa !51
  %53 = getelementptr i8, ptr %50, i64 1
  %54 = icmp ult i32 %49, 5
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = sub nuw nsw i32 4, %49
  %57 = zext nneg i32 %56 to i64
  %58 = add nuw nsw i64 %57, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %53, i8 48, i64 %58, i1 false), !tbaa !51
  %59 = add nuw nsw i64 %57, 2
  %60 = getelementptr i8, ptr %50, i64 %59
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi ptr [ %53, %52 ], [ %60, %55 ]
  %63 = icmp ult i32 %49, %32
  br i1 %63, label %76, label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %71, %64 ], [ %62, %61 ]
  %66 = phi i32 [ %67, %64 ], [ %49, %61 ]
  %67 = add i32 %66, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [10 x i8], ptr %5, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !51
  %71 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %70, ptr %65, align 1, !tbaa !51
  %72 = icmp ult i32 %67, %32
  br i1 %72, label %76, label %64, !llvm.loop !140

73:                                               ; preds = %12, %34
  %74 = phi ptr [ %15, %34 ], [ %1, %12 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 48, ptr %74, align 1, !tbaa !51
  br label %76

76:                                               ; preds = %64, %61, %48, %73
  %77 = phi ptr [ %50, %48 ], [ %75, %73 ], [ %62, %61 ], [ %71, %64 ]
  store i8 0, ptr %77, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #24
  ret void

78:                                               ; preds = %4
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.34) #21
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_fixed(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+05, double 5.000000e-01)
  %5 = tail call double @llvm.floor.f64(double %4)
  %6 = fcmp ogt double %5, 0x41DFFFFFFFC00000
  %7 = fcmp olt double %5, 0xC1E0000000000000
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #21
  unreachable

10:                                               ; preds = %3
  %11 = fptosi double %5 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: noreturn optsize
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_muldiv_warn(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = call i32 @png_muldiv(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, i32 noundef %3) #25, !range !109
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4, !tbaa !116
  br label %11

10:                                               ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #23
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local zeroext i8 @png_gamma_8bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 254
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = uitofp i32 %0 to double
  %7 = fdiv double %6, 2.550000e+02
  %8 = sitofp i32 %1 to double
  %9 = fmul double %8, 1.000000e-05
  %10 = tail call double @pow(double noundef %7, double noundef %9) #23
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local zeroext i16 @png_gamma_16bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 65534
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = uitofp i32 %0 to double
  %7 = fdiv double %6, 6.553500e+04
  %8 = sitofp i32 %1 to double
  %9 = fmul double %8, 1.000000e-05
  %10 = tail call double @pow(double noundef %7, double noundef %9) #23
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local zeroext i16 @png_gamma_correct(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #18 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %5 = load i8, ptr %4, align 8, !tbaa !141
  %6 = icmp eq i8 %5, 8
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %1, i32 noundef %2) #25
  %9 = zext i8 %8 to i16
  br label %12

10:                                               ; preds = %3
  %11 = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %1, i32 noundef %2) #25
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i16 [ %9, %7 ], [ %11, %10 ]
  ret i16 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @png_gamma_significant(i32 noundef %0) local_unnamed_addr #6 {
  %2 = add i32 %0, -105001
  %3 = icmp ult i32 %2, -10001
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_destroy_gamma_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  tail call void @png_free(ptr noundef %0, ptr noundef %3) #23
  store ptr null, ptr %2, align 8, !tbaa !142
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %9 = load i32, ptr %8, align 8, !tbaa !144
  %10 = icmp eq i32 %9, -23
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = sub nsw i32 8, %9
  %13 = shl nuw i32 1, %12
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %11, %16
  %17 = phi i64 [ 0, %11 ], [ %21, %16 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !143
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %20) #23
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %23, label %16, !llvm.loop !145

23:                                               ; preds = %16
  %24 = load ptr, ptr %4, align 8, !tbaa !143
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi ptr [ %24, %23 ], [ %5, %7 ]
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %26) #23
  store ptr null, ptr %4, align 8, !tbaa !143
  br label %27

27:                                               ; preds = %25, %1
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %29 = load ptr, ptr %28, align 8, !tbaa !146
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %29) #23
  store ptr null, ptr %28, align 8, !tbaa !146
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %31) #23
  store ptr null, ptr %30, align 8, !tbaa !147
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %33 = load ptr, ptr %32, align 8, !tbaa !148
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %37 = load i32, ptr %36, align 8, !tbaa !144
  %38 = icmp eq i32 %37, -23
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = sub nsw i32 8, %37
  %41 = shl nuw i32 1, %40
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 1)
  %43 = zext nneg i32 %42 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i64 [ 0, %39 ], [ %49, %44 ]
  %46 = load ptr, ptr %32, align 8, !tbaa !148
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %48) #23
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, %43
  br i1 %50, label %51, label %44, !llvm.loop !149

51:                                               ; preds = %44
  %52 = load ptr, ptr %32, align 8, !tbaa !148
  br label %53

53:                                               ; preds = %51, %35
  %54 = phi ptr [ %52, %51 ], [ %33, %35 ]
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %54) #23
  store ptr null, ptr %32, align 8, !tbaa !148
  br label %55

55:                                               ; preds = %53, %27
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 82
  %57 = load ptr, ptr %56, align 8, !tbaa !150
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  %61 = load i32, ptr %60, align 8, !tbaa !144
  %62 = icmp eq i32 %61, -23
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = sub nsw i32 8, %61
  %65 = shl nuw i32 1, %64
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 1)
  %67 = zext nneg i32 %66 to i64
  br label %68

68:                                               ; preds = %63, %68
  %69 = phi i64 [ 0, %63 ], [ %73, %68 ]
  %70 = load ptr, ptr %56, align 8, !tbaa !150
  %71 = getelementptr inbounds ptr, ptr %70, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %72) #23
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %67
  br i1 %74, label %75, label %68, !llvm.loop !151

75:                                               ; preds = %68
  %76 = load ptr, ptr %56, align 8, !tbaa !150
  br label %77

77:                                               ; preds = %75, %59
  %78 = phi ptr [ %76, %75 ], [ %57, %59 ]
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %78) #23
  store ptr null, ptr %56, align 8, !tbaa !150
  br label %79

79:                                               ; preds = %77, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_build_gamma_table(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 77
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #23
  tail call void @png_destroy_gamma_table(ptr noundef nonnull %0) #25
  br label %11

11:                                               ; preds = %10, %6
  %12 = icmp slt i32 %1, 9
  br i1 %12, label %13, label %41

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %15 = load i32, ptr %14, align 8, !tbaa !152
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %19 = load i32, ptr %18, align 4, !tbaa !153
  %20 = tail call i32 @png_reciprocal2(i32 noundef %19, i32 noundef %15) #25
  br label %21

21:                                               ; preds = %13, %17
  %22 = phi i32 [ %20, %17 ], [ 100000, %13 ]
  tail call fastcc void @png_build_8bit_table(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %22) #25
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 4, !tbaa !154
  %25 = and i32 %24, 6291584
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %110, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 80
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %30 = load i32, ptr %29, align 4, !tbaa !153
  %31 = tail call i32 @png_reciprocal(i32 noundef %30) #25
  tail call fastcc void @png_build_8bit_table(ptr noundef nonnull %0, ptr noundef nonnull %28, i32 noundef %31) #25
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 79
  %33 = load i32, ptr %14, align 8, !tbaa !152
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = tail call i32 @png_reciprocal(i32 noundef %33) #25
  br label %39

37:                                               ; preds = %27
  %38 = load i32, ptr %29, align 4, !tbaa !153
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  tail call fastcc void @png_build_8bit_table(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef %40) #25
  br label %110

41:                                               ; preds = %11
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %43 = load i8, ptr %42, align 1, !tbaa !155
  %44 = and i8 %43, 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  %48 = load i8, ptr %47, align 8, !tbaa !156
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  %50 = load i8, ptr %49, align 1, !tbaa !157
  %51 = tail call i8 @llvm.umax.i8(i8 %50, i8 %48)
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 2
  %53 = load i8, ptr %52, align 2, !tbaa !158
  %54 = tail call i8 @llvm.umax.i8(i8 %53, i8 %51)
  br label %58

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !159
  br label %58

58:                                               ; preds = %46, %55
  %59 = phi i8 [ %57, %55 ], [ %54, %46 ]
  %60 = add i8 %59, -1
  %61 = icmp ult i8 %60, 15
  %62 = sub nuw nsw i8 16, %59
  %63 = select i1 %61, i8 %62, i8 0
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %65 = load i32, ptr %64, align 4, !tbaa !154
  %66 = and i32 %65, 67109888
  %67 = icmp eq i32 %66, 0
  %68 = tail call i8 @llvm.umax.i8(i8 %63, i8 5)
  %69 = select i1 %67, i8 %63, i8 %68
  %70 = tail call i8 @llvm.umin.i8(i8 %69, i8 8)
  %71 = zext nneg i8 %70 to i32
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 74
  store i32 %71, ptr %72, align 8, !tbaa !144
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 78
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %75 = load i32, ptr %74, align 8, !tbaa !152
  %76 = icmp sgt i32 %75, 0
  br i1 %67, label %84, label %77

77:                                               ; preds = %58
  br i1 %76, label %78, label %82

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %80 = load i32, ptr %79, align 4, !tbaa !153
  %81 = tail call fastcc i32 @png_product2(i32 noundef %80, i32 noundef %75) #25
  br label %82

82:                                               ; preds = %77, %78
  %83 = phi i32 [ %81, %78 ], [ 100000, %77 ]
  tail call fastcc void @png_build_16to8_table(ptr noundef nonnull %0, ptr noundef nonnull %73, i32 noundef %71, i32 noundef %83) #25
  br label %91

84:                                               ; preds = %58
  br i1 %76, label %85, label %89

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %87 = load i32, ptr %86, align 4, !tbaa !153
  %88 = tail call i32 @png_reciprocal2(i32 noundef %87, i32 noundef %75) #25
  br label %89

89:                                               ; preds = %84, %85
  %90 = phi i32 [ %88, %85 ], [ 100000, %84 ]
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %73, i32 noundef %71, i32 noundef %90) #25
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i32, ptr %64, align 4, !tbaa !154
  %93 = and i32 %92, 6291584
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 82
  %97 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  %98 = load i32, ptr %97, align 4, !tbaa !153
  %99 = tail call i32 @png_reciprocal(i32 noundef %98) #25
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %96, i32 noundef %71, i32 noundef %99) #25
  %100 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 81
  %101 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 76
  %102 = load i32, ptr %101, align 8, !tbaa !152
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = tail call i32 @png_reciprocal(i32 noundef %102) #25
  br label %108

106:                                              ; preds = %95
  %107 = load i32, ptr %97, align 4, !tbaa !153
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  tail call fastcc void @png_build_16bit_table(ptr noundef nonnull %0, ptr noundef nonnull %100, i32 noundef %71, i32 noundef %109) #25
  br label %110

110:                                              ; preds = %91, %108, %21, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_build_8bit_table(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !160 {
  %4 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 256) #23
  store ptr %4, ptr %1, align 8, !tbaa !55
  %5 = tail call i32 @png_gamma_significant(i32 noundef %2) #25, !range !109
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = phi <16 x i8> [ %12, %7 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %3 ]
  %10 = getelementptr inbounds i8, ptr %4, i64 %8
  store <16 x i8> %9, ptr %10, align 1, !tbaa !51
  %11 = add nuw i64 %8, 16
  %12 = add <16 x i8> %9, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %13 = icmp eq i64 %11, 256
  br i1 %13, label %21, label %7, !llvm.loop !161

14:                                               ; preds = %3, %14
  %15 = phi i64 [ %19, %14 ], [ 0, %3 ]
  %16 = trunc i64 %15 to i32
  %17 = tail call zeroext i8 @png_gamma_8bit_correct(i32 noundef %16, i32 noundef %2) #25
  %18 = getelementptr inbounds i8, ptr %4, i64 %15
  store i8 %17, ptr %18, align 1, !tbaa !51
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, 256
  br i1 %20, label %21, label %14, !llvm.loop !164

21:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_build_16to8_table(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !165 {
  %5 = sub nsw i32 8, %2
  %6 = shl nuw nsw i32 1, %5
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %8) #23
  store ptr %9, ptr %1, align 8, !tbaa !55
  br label %13

10:                                               ; preds = %13
  %11 = sub nuw nsw i32 16, %2
  %12 = lshr i32 255, %2
  br label %22

13:                                               ; preds = %4, %13
  %14 = phi i64 [ 0, %4 ], [ %17, %13 ]
  %15 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #23
  %16 = getelementptr inbounds ptr, ptr %9, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !55
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %10, label %13, !llvm.loop !166

19:                                               ; preds = %50
  %20 = shl i32 256, %5
  %21 = icmp ult i32 %51, %20
  br i1 %21, label %54, label %65

22:                                               ; preds = %10, %50
  %23 = phi i32 [ 0, %10 ], [ %52, %50 ]
  %24 = phi i32 [ 0, %10 ], [ %51, %50 ]
  %25 = trunc i32 %23 to i16
  %26 = mul nuw i16 %25, 257
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, 128
  %29 = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %28, i32 noundef %3) #25
  %30 = freeze i16 %29
  %31 = zext i16 %30 to i32
  %32 = shl i32 %31, %11
  %33 = sub i32 %32, %31
  %34 = add i32 %33, 32768
  %35 = udiv i32 %34, 65535
  %36 = icmp ugt i32 %24, %35
  br i1 %36, label %50, label %37

37:                                               ; preds = %22
  %38 = add nuw nsw i32 %35, 1
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i32 [ %48, %39 ], [ %24, %37 ]
  %41 = and i32 %40, %12
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %9, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = lshr i32 %40, %5
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i16, ptr %44, i64 %46
  store i16 %26, ptr %47, align 2, !tbaa !167
  %48 = add i32 %40, 1
  %49 = icmp eq i32 %40, %35
  br i1 %49, label %50, label %39, !llvm.loop !168

50:                                               ; preds = %39, %22
  %51 = phi i32 [ %24, %22 ], [ %38, %39 ]
  %52 = add nuw nsw i32 %23, 1
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %19, label %22, !llvm.loop !169

54:                                               ; preds = %19, %54
  %55 = phi i32 [ %63, %54 ], [ %51, %19 ]
  %56 = and i32 %55, %12
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %9, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = lshr i32 %55, %5
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, ptr %59, i64 %61
  store i16 -1, ptr %62, align 2, !tbaa !167
  %63 = add nuw i32 %55, 1
  %64 = icmp eq i32 %63, %20
  br i1 %64, label %65, label %54, !llvm.loop !170

65:                                               ; preds = %54, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @png_product2(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !171 {
  %3 = sitofp i32 %0 to double
  %4 = fmul double %3, 1.000000e-05
  %5 = sitofp i32 %1 to double
  %6 = fmul double %4, %5
  %7 = fadd double %6, 5.000000e-01
  %8 = tail call double @llvm.floor.f64(double %7)
  %9 = fcmp ole double %8, 0x41DFFFFFFFC00000
  %10 = fcmp oge double %8, 0xC1E0000000000000
  %11 = and i1 %9, %10
  %12 = fptosi double %8 to i32
  %13 = select i1 %11, i32 %12, i32 0
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_build_16bit_table(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !172 {
  %5 = sub nsw i32 8, %2
  %6 = shl nuw nsw i32 1, %5
  %7 = sub nuw nsw i32 16, %2
  %8 = shl nsw i32 -1, %7
  %9 = xor i32 %8, -1
  %10 = sub nuw nsw i32 15, %2
  %11 = shl nuw nsw i32 1, %10
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %13) #23
  store ptr %14, ptr %1, align 8, !tbaa !55
  %15 = uitofp i32 %9 to double
  %16 = sitofp i32 %3 to double
  %17 = fmul double %16, 1.000000e-05
  %18 = icmp eq i32 %2, 0
  br label %19

19:                                               ; preds = %4, %55
  %20 = phi i64 [ 0, %4 ], [ %56, %55 ]
  %21 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #23
  %22 = getelementptr inbounds ptr, ptr %14, i64 %20
  store ptr %21, ptr %22, align 8, !tbaa !55
  %23 = tail call i32 @png_gamma_significant(i32 noundef %3) #25, !range !109
  %24 = icmp eq i32 %23, 0
  %25 = trunc i64 %20 to i32
  br i1 %24, label %40, label %26

26:                                               ; preds = %19, %26
  %27 = phi i64 [ %38, %26 ], [ 0, %19 ]
  %28 = trunc i64 %27 to i32
  %29 = shl nuw nsw i32 %28, %5
  %30 = add i32 %29, %25
  %31 = uitofp i32 %30 to double
  %32 = fdiv double %31, %15
  %33 = tail call double @pow(double noundef %32, double noundef %17) #23
  %34 = tail call double @llvm.fmuladd.f64(double %33, double 6.553500e+04, double 5.000000e-01)
  %35 = tail call double @llvm.floor.f64(double %34)
  %36 = fptoui double %35 to i16
  %37 = getelementptr inbounds i16, ptr %21, i64 %27
  store i16 %36, ptr %37, align 2, !tbaa !167
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, 256
  br i1 %39, label %55, label %26, !llvm.loop !173

40:                                               ; preds = %19, %49
  %41 = phi i64 [ %53, %49 ], [ 0, %19 ]
  %42 = trunc i64 %41 to i32
  %43 = shl nuw nsw i32 %42, %5
  %44 = add i32 %43, %25
  br i1 %18, label %49, label %45

45:                                               ; preds = %40
  %46 = mul i32 %44, 65535
  %47 = add i32 %46, %11
  %48 = udiv i32 %47, %9
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i32 [ %48, %45 ], [ %44, %40 ]
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds i16, ptr %21, i64 %41
  store i16 %51, ptr %52, align 2, !tbaa !167
  %53 = add nuw nsw i64 %41, 1
  %54 = icmp eq i64 %53, 256
  br i1 %54, label %55, label %40, !llvm.loop !174

55:                                               ; preds = %26, %49
  %56 = add nuw nsw i64 %20, 1
  %57 = icmp eq i64 %56, %12
  br i1 %57, label %58, label %19, !llvm.loop !175

58:                                               ; preds = %55
  ret void
}

; Function Attrs: optsize
declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #19

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }
attributes #25 = { optsize }

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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !50}
!53 = !{!35, !38, i64 1048}
!54 = !{!35, !38, i64 1040}
!55 = !{!38, !38, i64 0}
!56 = !{!35, !38, i64 1056}
!57 = !{!35, !39, i64 1008}
!58 = !{!35, !38, i64 1016}
!59 = !{!60, !39, i64 228}
!60 = !{!"png_info_def", !39, i64 0, !39, i64 4, !39, i64 8, !41, i64 16, !38, i64 24, !42, i64 32, !42, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !39, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !38, i64 72, !61, i64 80, !44, i64 88, !38, i64 96, !43, i64 104, !43, i64 114, !39, i64 124, !39, i64 128, !36, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !38, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !38, i64 192, !39, i64 200, !39, i64 204, !38, i64 208, !38, i64 216, !36, i64 224, !36, i64 225, !39, i64 228, !38, i64 232, !39, i64 240, !38, i64 248, !38, i64 256, !39, i64 264, !36, i64 268, !38, i64 272, !39, i64 280, !36, i64 284, !38, i64 288, !38, i64 296, !38, i64 304}
!61 = !{!"png_time_struct", !42, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!62 = !{!60, !39, i64 60}
!63 = !{!60, !38, i64 72}
!64 = !{!65, !38, i64 8}
!65 = !{!"png_text_struct", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 32, !38, i64 40, !38, i64 48}
!66 = distinct !{!66, !50}
!67 = !{!60, !38, i64 96}
!68 = !{!60, !39, i64 8}
!69 = !{!60, !38, i64 288}
!70 = !{!60, !38, i64 296}
!71 = !{!60, !38, i64 192}
!72 = !{!60, !38, i64 208}
!73 = !{!60, !38, i64 216}
!74 = !{!60, !36, i64 225}
!75 = distinct !{!75, !50}
!76 = !{!60, !38, i64 248}
!77 = !{!60, !38, i64 256}
!78 = !{!60, !38, i64 272}
!79 = !{!80, !38, i64 0}
!80 = !{!"png_sPLT_struct", !38, i64 0, !36, i64 8, !38, i64 16, !39, i64 24}
!81 = !{!80, !38, i64 16}
!82 = !{!60, !39, i64 280}
!83 = distinct !{!83, !50}
!84 = !{!35, !38, i64 1128}
!85 = !{!60, !38, i64 232}
!86 = !{!45, !38, i64 8}
!87 = !{!60, !39, i64 240}
!88 = distinct !{!88, !50}
!89 = !{!60, !38, i64 152}
!90 = !{!60, !38, i64 24}
!91 = !{!60, !42, i64 32}
!92 = !{!60, !38, i64 304}
!93 = !{!60, !39, i64 4}
!94 = distinct !{!94, !50}
!95 = !{!35, !38, i64 248}
!96 = !{!61, !42, i64 0}
!97 = !{!61, !36, i64 2}
!98 = !{!61, !36, i64 3}
!99 = !{!61, !36, i64 4}
!100 = !{!61, !36, i64 5}
!101 = !{!61, !36, i64 6}
!102 = distinct !{!102, !50}
!103 = !{i32 0, i32 256}
!104 = !{!41, !41, i64 0}
!105 = !{!106, !39, i64 0}
!106 = !{!"png_XYZ", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32}
!107 = !{!106, !39, i64 4}
!108 = !{!106, !39, i64 8}
!109 = !{i32 0, i32 2}
!110 = !{!106, !39, i64 12}
!111 = !{!106, !39, i64 16}
!112 = !{!106, !39, i64 20}
!113 = !{!106, !39, i64 24}
!114 = !{!106, !39, i64 28}
!115 = !{!106, !39, i64 32}
!116 = !{!39, !39, i64 0}
!117 = !{!118, !39, i64 4}
!118 = !{!"png_xy", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!119 = !{!118, !39, i64 12}
!120 = !{!118, !39, i64 20}
!121 = !{!118, !39, i64 28}
!122 = !{i32 0, i32 3}
!123 = !{!35, !39, i64 1100}
!124 = !{!35, !39, i64 1104}
!125 = !{!35, !39, i64 284}
!126 = !{!35, !39, i64 1032}
!127 = distinct !{!127, !50}
!128 = !{!129, !129, i64 0}
!129 = !{!"double", !36, i64 0}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !50}
!132 = distinct !{!132, !50}
!133 = distinct !{!133, !50}
!134 = distinct !{!134, !50}
!135 = distinct !{!135, !50}
!136 = !{!"png.c:png_pow10"}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = !{!35, !36, i64 592}
!142 = !{!35, !38, i64 672}
!143 = !{!35, !38, i64 680}
!144 = !{!35, !39, i64 656}
!145 = distinct !{!145, !50}
!146 = !{!35, !38, i64 688}
!147 = !{!35, !38, i64 696}
!148 = !{!35, !38, i64 704}
!149 = distinct !{!149, !50}
!150 = !{!35, !38, i64 712}
!151 = distinct !{!151, !50}
!152 = !{!35, !39, i64 664}
!153 = !{!35, !39, i64 660}
!154 = !{!35, !39, i64 292}
!155 = !{!35, !36, i64 591}
!156 = !{!35, !36, i64 720}
!157 = !{!35, !36, i64 721}
!158 = !{!35, !36, i64 722}
!159 = !{!35, !36, i64 723}
!160 = !{!"png.c:png_build_8bit_table"}
!161 = distinct !{!161, !50, !162, !163}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = distinct !{!164, !50}
!165 = !{!"png.c:png_build_16to8_table"}
!166 = distinct !{!166, !50}
!167 = !{!42, !42, i64 0}
!168 = distinct !{!168, !50}
!169 = distinct !{!169, !50}
!170 = distinct !{!170, !50}
!171 = !{!"png.c:png_product2"}
!172 = !{!"png.c:png_build_16bit_table"}
!173 = distinct !{!173, !50}
!174 = distinct !{!174, !50}
!175 = distinct !{!175, !50}

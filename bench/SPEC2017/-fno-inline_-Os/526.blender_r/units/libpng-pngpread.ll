; ModuleID = 'libpng/pngpread.c'
source_filename = "libpng/pngpread.c"
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
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [53 x i8] c"png_process_data_skip called inside png_process_data\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"png_process_data_skip called with saved data\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Not a PNG file\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"PNG file corrupted by ASCII conversion\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid IHDR length\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Too many IDATs found\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Potential overflow of save_buffer\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Insufficient memory for save_buffer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Not enough compressed data\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"No IDAT data (internal error)\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Truncated compressed data in IDAT\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Decompression error in IDAT\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Extra compressed data in IDAT\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Extra compression data in IDAT\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"progressive row overflow\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"internal progressive row size calculation error\00", align 1
@png_read_push_finish_row.png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_read_push_finish_row.png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_read_push_finish_row.png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_read_push_finish_row.png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_process_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  tail call void @png_push_restore_buffer(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3) #12
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %10 = load i64, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %12
  tail call void @png_process_some_data(ptr noundef nonnull %0, ptr noundef %1) #12
  %13 = load i64, ptr %9, align 8, !tbaa !34
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %12, !llvm.loop !46

15:                                               ; preds = %12, %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_push_restore_buffer(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 95
  store ptr %1, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  store i64 %2, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 %8, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  store ptr %1, ptr %10, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_process_some_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  %6 = load i32, ptr %5, align 8, !tbaa !52
  switch i32 %6, label %11 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
  ]

7:                                                ; preds = %4
  tail call void @png_push_read_sig(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %13

8:                                                ; preds = %4
  tail call void @png_push_read_chunk(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %13

9:                                                ; preds = %4
  tail call void @png_push_read_IDAT(ptr noundef nonnull %0) #12
  br label %13

10:                                               ; preds = %4
  tail call void @png_push_crc_finish(ptr noundef nonnull %0) #12
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 0, ptr %12, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %2, %11, %10, %9, %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @png_process_data_pause(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %9 = load i64, ptr %8, align 8, !tbaa !34
  store i64 0, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %11 = load i64, ptr %10, align 8, !tbaa !50
  %12 = icmp ult i64 %11, %9
  %13 = sub i64 %9, %11
  br i1 %12, label %15, label %14

14:                                               ; preds = %7, %6, %2
  br label %15

15:                                               ; preds = %7, %14
  %16 = phi i64 [ 0, %14 ], [ %13, %7 ]
  ret i64 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_save_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %3 = load i64, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %5, %11
  %12 = phi i64 [ %16, %11 ], [ 0, %5 ]
  %13 = phi ptr [ %17, %11 ], [ %7, %5 ]
  %14 = phi ptr [ %18, %11 ], [ %9, %5 ]
  %15 = load i8, ptr %13, align 1, !tbaa !55
  store i8 %15, ptr %14, align 1, !tbaa !55
  %16 = add nuw i64 %12, 1
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp eq i64 %16, %3
  br i1 %19, label %20, label %11, !llvm.loop !56

20:                                               ; preds = %11
  %21 = load i64, ptr %2, align 8, !tbaa !50
  br label %22

22:                                               ; preds = %20, %5, %1
  %23 = phi i64 [ %21, %20 ], [ %3, %5 ], [ 0, %1 ]
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %25 = load i64, ptr %24, align 8, !tbaa !49
  %26 = add i64 %25, %23
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 99
  %28 = load i64, ptr %27, align 8, !tbaa !57
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = sub i64 -257, %25
  %32 = icmp ugt i64 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #13
  unreachable

34:                                               ; preds = %30
  %35 = add i64 %26, 256
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %35) #14
  store ptr %38, ptr %36, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %37) #14
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  unreachable

41:                                               ; preds = %34
  %42 = load i64, ptr %2, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr align 1 %37, i64 %42, i1 false)
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %37) #14
  store i64 %35, ptr %27, align 8, !tbaa !57
  %43 = load i64, ptr %24, align 8, !tbaa !49
  br label %44

44:                                               ; preds = %41, %22
  %45 = phi i64 [ %43, %41 ], [ %25, %22 ]
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = load i64, ptr %2, align 8, !tbaa !50
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %53, i64 %45, i1 false)
  %54 = load i64, ptr %24, align 8, !tbaa !49
  %55 = load i64, ptr %2, align 8, !tbaa !50
  %56 = add i64 %55, %54
  store i64 %56, ptr %2, align 8, !tbaa !50
  store i64 0, ptr %24, align 8, !tbaa !49
  br label %57

57:                                               ; preds = %47, %44
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  store ptr %59, ptr %60, align 8, !tbaa !53
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 0, ptr %61, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_process_data_skip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 97
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %13 = load i64, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #13
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %18 = load i64, ptr %17, align 8, !tbaa !50
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #13
  unreachable

21:                                               ; preds = %16
  store i32 0, ptr %8, align 4, !tbaa !58
  store i32 1, ptr %4, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %21, %7, %3, %1
  %23 = phi i32 [ %9, %21 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_read_sig(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 62
  %4 = load i8, ptr %3, align 1, !tbaa !59
  %5 = zext i8 %4 to i64
  %6 = sub nsw i64 8, %5
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %8 = load i64, ptr %7, align 8, !tbaa !34
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %6)
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15, i64 %5
  tail call void @png_push_fill_buffer(ptr noundef %0, ptr noundef nonnull %11, i64 noundef %9) #12
  %12 = load i8, ptr %3, align 1, !tbaa !59
  %13 = trunc i64 %9 to i8
  %14 = add i8 %12, %13
  store i8 %14, ptr %3, align 1, !tbaa !59
  %15 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %5, i64 noundef %9) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = icmp ult i8 %4, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = add nsw i64 %9, -4
  %21 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %5, i64 noundef %20) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #13
  unreachable

24:                                               ; preds = %19, %17
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

25:                                               ; preds = %2
  %26 = load i8, ptr %3, align 1, !tbaa !59
  %27 = icmp ugt i8 %26, 7
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 1, ptr %29, align 8, !tbaa !52
  br label %30

30:                                               ; preds = %25, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_read_chunk(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !60
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %11 = load i64, ptr %10, align 8, !tbaa !34
  %12 = icmp ugt i64 %11, 7
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  call void @png_push_fill_buffer(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 4) #12
  %14 = call i32 @png_get_uint_31(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  store i32 %14, ptr %15, align 8, !tbaa !61
  call void @png_reset_crc(ptr noundef nonnull %0) #14
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 4) #14
  %16 = load i8, ptr %4, align 1, !tbaa !55
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !55
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or disjoint i32 %22, %18
  %24 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !55
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %23, %27
  %29 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !55
  %31 = zext i8 %30 to i32
  %32 = or disjoint i32 %28, %31
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %32, ptr %33, align 8, !tbaa !62
  call void @png_check_chunk_name(ptr noundef nonnull %0, i32 noundef %32) #14
  %34 = load i32, ptr %5, align 4, !tbaa !60
  %35 = or i32 %34, 256
  store i32 %35, ptr %5, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %37

36:                                               ; preds = %9
  tail call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %280

37:                                               ; preds = %13, %2
  %38 = phi i32 [ %35, %13 ], [ %6, %2 ]
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %40 = load i32, ptr %39, align 8, !tbaa !62
  switch i32 %40, label %68 [
    i32 1229209940, label %41
    i32 1229472850, label %46
    i32 1229278788, label %57
  ]

41:                                               ; preds = %37
  %42 = and i32 %38, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %41
  %45 = or i32 %38, 8192
  store i32 %45, ptr %5, align 4, !tbaa !60
  br label %71

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %48 = load i32, ptr %47, align 8, !tbaa !61
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #13
  unreachable

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %53 = load i64, ptr %52, align 8, !tbaa !34
  %54 = icmp ult i64 %53, 17
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

56:                                               ; preds = %51
  call void @png_handle_IHDR(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 13) #14
  br label %277

57:                                               ; preds = %37
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %59 = load i32, ptr %58, align 8, !tbaa !61
  %60 = add i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %63 = load i64, ptr %62, align 8, !tbaa !34
  %64 = icmp ult i64 %63, %61
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

66:                                               ; preds = %57
  call void @png_handle_IEND(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %59) #14
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 6, ptr %67, align 8, !tbaa !52
  call void @png_push_have_end(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %277

68:                                               ; preds = %37
  %69 = call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %40) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %111, label %74

71:                                               ; preds = %44, %41
  %72 = call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef 1229209940) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %123, label %82

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %76 = load i32, ptr %75, align 8, !tbaa !61
  %77 = add i32 %76, 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %80 = load i64, ptr %79, align 8, !tbaa !34
  %81 = icmp ult i64 %80, %78
  br i1 %81, label %90, label %91

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %84 = load i32, ptr %83, align 8, !tbaa !61
  %85 = add i32 %84, 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %88 = load i64, ptr %87, align 8, !tbaa !34
  %89 = icmp ult i64 %88, %86
  br i1 %89, label %90, label %96

90:                                               ; preds = %82, %74
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

91:                                               ; preds = %74
  call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %76) #14
  %92 = icmp eq i32 %40, 1347179589
  br i1 %92, label %93, label %277

93:                                               ; preds = %91
  %94 = load i32, ptr %5, align 4, !tbaa !60
  %95 = or i32 %94, 2
  store i32 %95, ptr %5, align 4, !tbaa !60
  br label %277

96:                                               ; preds = %82
  %97 = load i32, ptr %5, align 4, !tbaa !60
  %98 = or i32 %97, 4
  store i32 %98, ptr %5, align 4, !tbaa !60
  call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %84) #14
  %99 = load i32, ptr %5, align 4, !tbaa !60
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #13
  unreachable

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %105 = load i8, ptr %104, align 1, !tbaa !63
  %106 = icmp eq i8 %105, 3
  %107 = and i32 %99, 2
  %108 = icmp eq i32 %107, 0
  %109 = and i1 %108, %106
  br i1 %109, label %110, label %277

110:                                              ; preds = %103
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #13
  unreachable

111:                                              ; preds = %68
  %112 = icmp eq i32 %40, 1347179589
  br i1 %112, label %113, label %181

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %115 = load i32, ptr %114, align 8, !tbaa !61
  %116 = add i32 %115, 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %119 = load i64, ptr %118, align 8, !tbaa !34
  %120 = icmp ult i64 %119, %117
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

122:                                              ; preds = %113
  call void @png_handle_PLTE(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %115) #14
  br label %277

123:                                              ; preds = %71
  %124 = load i32, ptr %5, align 4, !tbaa !60
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #13
  unreachable

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %130 = load i8, ptr %129, align 1, !tbaa !63
  %131 = icmp eq i8 %130, 3
  %132 = and i32 %124, 2
  %133 = icmp eq i32 %132, 0
  %134 = and i1 %133, %131
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #13
  unreachable

136:                                              ; preds = %128
  %137 = and i32 %124, 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %136
  %140 = and i32 %124, 8192
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %144 = load i32, ptr %143, align 8, !tbaa !61
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %280, label %146

146:                                              ; preds = %142, %139
  %147 = and i32 %124, 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  %150 = load i32, ptr %5, align 4, !tbaa !60
  br label %151

151:                                              ; preds = %146, %149, %136
  %152 = phi i32 [ %124, %146 ], [ %150, %149 ], [ %124, %136 ]
  %153 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %154 = load i32, ptr %153, align 8, !tbaa !61
  %155 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  store i32 %154, ptr %155, align 8, !tbaa !64
  %156 = or i32 %152, 4
  store i32 %156, ptr %5, align 4, !tbaa !60
  %157 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 2, ptr %157, align 8, !tbaa !52
  call void @png_push_have_info(ptr noundef nonnull %0, ptr noundef %1) #12
  %158 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %159 = load i8, ptr %158, align 2, !tbaa !65
  %160 = icmp ugt i8 %159, 7
  %161 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %162 = load i32, ptr %161, align 8, !tbaa !66
  %163 = zext i32 %162 to i64
  br i1 %160, label %164, label %168

164:                                              ; preds = %151
  %165 = lshr i8 %159, 3
  %166 = zext nneg i8 %165 to i64
  %167 = mul nuw nsw i64 %163, %166
  br label %173

168:                                              ; preds = %151
  %169 = zext nneg i8 %159 to i64
  %170 = mul nuw nsw i64 %163, %169
  %171 = add nuw nsw i64 %170, 7
  %172 = lshr i64 %171, 3
  br label %173

173:                                              ; preds = %168, %164
  %174 = phi i64 [ %167, %164 ], [ %172, %168 ]
  %175 = trunc i64 %174 to i32
  %176 = add i32 %175, 1
  %177 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %176, ptr %177, align 8, !tbaa !67
  %178 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %179 = load ptr, ptr %178, align 8, !tbaa !68
  %180 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %179, ptr %180, align 8, !tbaa !69
  br label %280

181:                                              ; preds = %111
  %182 = load i32, ptr %39, align 8, !tbaa !62
  switch i32 %182, label %213 [
    i32 1732332865, label %183
    i32 1933723988, label %193
    i32 1665684045, label %203
  ]

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %185 = load i32, ptr %184, align 8, !tbaa !61
  %186 = add i32 %185, 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %189 = load i64, ptr %188, align 8, !tbaa !34
  %190 = icmp ult i64 %189, %187
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

192:                                              ; preds = %183
  call void @png_handle_gAMA(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %185) #14
  br label %277

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %195 = load i32, ptr %194, align 8, !tbaa !61
  %196 = add i32 %195, 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %199 = load i64, ptr %198, align 8, !tbaa !34
  %200 = icmp ult i64 %199, %197
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

202:                                              ; preds = %193
  call void @png_handle_sBIT(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %195) #14
  br label %277

203:                                              ; preds = %181
  %204 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %205 = load i32, ptr %204, align 8, !tbaa !61
  %206 = add i32 %205, 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %209 = load i64, ptr %208, align 8, !tbaa !34
  %210 = icmp ult i64 %209, %207
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

212:                                              ; preds = %203
  call void @png_handle_cHRM(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %205) #14
  br label %277

213:                                              ; preds = %181
  %214 = icmp eq i32 %40, 1934772034
  br i1 %214, label %215, label %225

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %217 = load i32, ptr %216, align 8, !tbaa !61
  %218 = add i32 %217, 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %221 = load i64, ptr %220, align 8, !tbaa !34
  %222 = icmp ult i64 %221, %219
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

224:                                              ; preds = %215
  call void @png_handle_sRGB(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %217) #14
  br label %277

225:                                              ; preds = %213
  %226 = icmp eq i32 %182, 1766015824
  %227 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %228 = load i32, ptr %227, align 8, !tbaa !61
  %229 = add i32 %228, 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %232 = load i64, ptr %231, align 8, !tbaa !34
  %233 = icmp ult i64 %232, %230
  br i1 %226, label %234, label %237

234:                                              ; preds = %225
  br i1 %233, label %235, label %236

235:                                              ; preds = %234
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

236:                                              ; preds = %234
  call void @png_handle_iCCP(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

237:                                              ; preds = %225
  switch i32 %40, label %274 [
    i32 1934642260, label %238
    i32 1951551059, label %241
    i32 1649100612, label %244
    i32 1749635924, label %247
    i32 1883789683, label %250
    i32 1866876531, label %253
    i32 1883455820, label %256
    i32 1933787468, label %259
    i32 1950960965, label %262
    i32 1950701684, label %265
    i32 2052348020, label %268
    i32 1767135348, label %271
  ]

238:                                              ; preds = %237
  br i1 %233, label %239, label %240

239:                                              ; preds = %238
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

240:                                              ; preds = %238
  call void @png_handle_sPLT(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

241:                                              ; preds = %237
  br i1 %233, label %242, label %243

242:                                              ; preds = %241
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

243:                                              ; preds = %241
  call void @png_handle_tRNS(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

244:                                              ; preds = %237
  br i1 %233, label %245, label %246

245:                                              ; preds = %244
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

246:                                              ; preds = %244
  call void @png_handle_bKGD(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

247:                                              ; preds = %237
  br i1 %233, label %248, label %249

248:                                              ; preds = %247
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

249:                                              ; preds = %247
  call void @png_handle_hIST(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

250:                                              ; preds = %237
  br i1 %233, label %251, label %252

251:                                              ; preds = %250
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

252:                                              ; preds = %250
  call void @png_handle_pHYs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

253:                                              ; preds = %237
  br i1 %233, label %254, label %255

254:                                              ; preds = %253
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

255:                                              ; preds = %253
  call void @png_handle_oFFs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

256:                                              ; preds = %237
  br i1 %233, label %257, label %258

257:                                              ; preds = %256
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

258:                                              ; preds = %256
  call void @png_handle_pCAL(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

259:                                              ; preds = %237
  br i1 %233, label %260, label %261

260:                                              ; preds = %259
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

261:                                              ; preds = %259
  call void @png_handle_sCAL(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

262:                                              ; preds = %237
  br i1 %233, label %263, label %264

263:                                              ; preds = %262
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

264:                                              ; preds = %262
  call void @png_handle_tIME(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

265:                                              ; preds = %237
  br i1 %233, label %266, label %267

266:                                              ; preds = %265
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

267:                                              ; preds = %265
  call void @png_handle_tEXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

268:                                              ; preds = %237
  br i1 %233, label %269, label %270

269:                                              ; preds = %268
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

270:                                              ; preds = %268
  call void @png_handle_zTXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

271:                                              ; preds = %237
  br i1 %233, label %272, label %273

272:                                              ; preds = %271
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

273:                                              ; preds = %271
  call void @png_handle_iTXt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

274:                                              ; preds = %237
  br i1 %233, label %275, label %276

275:                                              ; preds = %274
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %280

276:                                              ; preds = %274
  call void @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %228) #14
  br label %277

277:                                              ; preds = %91, %66, %122, %192, %212, %236, %243, %249, %255, %261, %267, %273, %276, %270, %264, %258, %252, %246, %240, %224, %202, %93, %103, %56
  %278 = load i32, ptr %5, align 4, !tbaa !60
  %279 = and i32 %278, -257
  store i32 %279, ptr %5, align 4, !tbaa !60
  br label %280

280:                                              ; preds = %36, %142, %277, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %235, %223, %211, %201, %191, %173, %121, %90, %65, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_read_IDAT(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %10 = load i32, ptr %9, align 8, !tbaa !64
  br label %51

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %13 = load i64, ptr %12, align 8, !tbaa !34
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %47

16:                                               ; preds = %11
  call void @png_push_fill_buffer(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4) #12
  %17 = call i32 @png_get_uint_31(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  store i32 %17, ptr %18, align 8, !tbaa !61
  call void @png_reset_crc(ptr noundef nonnull %0) #14
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 4) #14
  %19 = load i8, ptr %3, align 1, !tbaa !55
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !55
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or disjoint i32 %25, %21
  %27 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !55
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or disjoint i32 %26, %30
  %32 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !55
  %34 = zext i8 %33 to i32
  %35 = or disjoint i32 %31, %34
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %35, ptr %36, align 8, !tbaa !62
  %37 = load i32, ptr %4, align 4, !tbaa !60
  %38 = or i32 %37, 256
  store i32 %38, ptr %4, align 4, !tbaa !60
  %39 = icmp eq i32 %35, 1229209940
  br i1 %39, label %48, label %40

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 1, ptr %41, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %43 = load i32, ptr %42, align 8, !tbaa !70
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #13
  unreachable

47:                                               ; preds = %15, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %112

48:                                               ; preds = %16
  %49 = load i32, ptr %18, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  store i32 %49, ptr %50, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %51

51:                                               ; preds = %8, %48
  %52 = phi i32 [ %10, %8 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %57 = load i64, ptr %56, align 8, !tbaa !50
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %55
  %60 = zext i32 %52 to i64
  %61 = icmp ugt i64 %57, %60
  %62 = trunc i64 %57 to i32
  %63 = call i64 @llvm.umin.i64(i64 %57, i64 %60)
  %64 = select i1 %61, i32 %52, i32 %62
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %66, i64 noundef %63) #14
  %67 = load ptr, ptr %65, align 8, !tbaa !53
  call void @png_process_IDAT_data(ptr noundef nonnull %0, ptr noundef %67, i64 noundef %63) #12
  %68 = load i32, ptr %53, align 8, !tbaa !64
  %69 = sub i32 %68, %64
  store i32 %69, ptr %53, align 8, !tbaa !64
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %71 = load i64, ptr %70, align 8, !tbaa !34
  %72 = sub i64 %71, %63
  store i64 %72, ptr %70, align 8, !tbaa !34
  %73 = load i64, ptr %56, align 8, !tbaa !50
  %74 = sub i64 %73, %63
  store i64 %74, ptr %56, align 8, !tbaa !50
  %75 = load ptr, ptr %65, align 8, !tbaa !53
  %76 = getelementptr inbounds i8, ptr %75, i64 %63
  store ptr %76, ptr %65, align 8, !tbaa !53
  %77 = icmp eq i32 %69, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %55, %59
  %79 = phi i32 [ %69, %59 ], [ %52, %55 ]
  %80 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %81 = load i64, ptr %80, align 8, !tbaa !49
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %112, label %83

83:                                               ; preds = %78
  %84 = zext i32 %79 to i64
  %85 = icmp ugt i64 %81, %84
  %86 = trunc i64 %81 to i32
  %87 = call i64 @llvm.umin.i64(i64 %81, i64 %84)
  %88 = select i1 %85, i32 %79, i32 %86
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %90 = load ptr, ptr %89, align 8, !tbaa !51
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %90, i64 noundef %87) #14
  %91 = load ptr, ptr %89, align 8, !tbaa !51
  call void @png_process_IDAT_data(ptr noundef nonnull %0, ptr noundef %91, i64 noundef %87) #12
  %92 = load i32, ptr %53, align 8, !tbaa !64
  %93 = sub i32 %92, %88
  store i32 %93, ptr %53, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %95 = load <2 x i64>, ptr %94, align 8, !tbaa !71
  %96 = insertelement <2 x i64> poison, i64 %87, i64 0
  %97 = shufflevector <2 x i64> %96, <2 x i64> poison, <2 x i32> zeroinitializer
  %98 = sub <2 x i64> %95, %97
  store <2 x i64> %98, ptr %94, align 8, !tbaa !71
  %99 = load ptr, ptr %89, align 8, !tbaa !51
  %100 = getelementptr inbounds i8, ptr %99, i64 %87
  store ptr %100, ptr %89, align 8, !tbaa !51
  %101 = icmp eq i32 %92, %88
  br i1 %101, label %102, label %112

102:                                              ; preds = %51, %59, %83
  %103 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %104 = load i64, ptr %103, align 8, !tbaa !34
  %105 = icmp ult i64 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %112

107:                                              ; preds = %102
  %108 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14
  %109 = load i32, ptr %4, align 4, !tbaa !60
  %110 = and i32 %109, -265
  %111 = or disjoint i32 %110, 8
  store i32 %111, ptr %4, align 4, !tbaa !60
  br label %112

112:                                              ; preds = %78, %47, %106, %107, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_crc_finish(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 97
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = zext i32 %3 to i64
  %11 = icmp ugt i64 %7, %10
  %12 = trunc i64 %7 to i32
  %13 = tail call i64 @llvm.umin.i64(i64 %7, i64 %10)
  %14 = select i1 %11, i32 %3, i32 %12
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %16, i64 noundef %13) #14
  %17 = load i32, ptr %2, align 4, !tbaa !58
  %18 = sub i32 %17, %14
  store i32 %18, ptr %2, align 4, !tbaa !58
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %20 = load i64, ptr %19, align 8, !tbaa !34
  %21 = sub i64 %20, %13
  store i64 %21, ptr %19, align 8, !tbaa !34
  %22 = load i64, ptr %6, align 8, !tbaa !50
  %23 = sub i64 %22, %13
  store i64 %23, ptr %6, align 8, !tbaa !50
  %24 = load ptr, ptr %15, align 8, !tbaa !53
  %25 = getelementptr inbounds i8, ptr %24, i64 %13
  store ptr %25, ptr %15, align 8, !tbaa !53
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %5, %9
  %28 = phi i32 [ %18, %9 ], [ %3, %5 ]
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %30 = load i64, ptr %29, align 8, !tbaa !49
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %27
  %33 = zext i32 %28 to i64
  %34 = icmp ugt i64 %30, %33
  %35 = trunc i64 %30 to i32
  %36 = tail call i64 @llvm.umin.i64(i64 %30, i64 %33)
  %37 = select i1 %34, i32 %28, i32 %35
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %39, i64 noundef %36) #14
  %40 = load i32, ptr %2, align 4, !tbaa !58
  %41 = sub i32 %40, %37
  store i32 %41, ptr %2, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %43 = load <2 x i64>, ptr %42, align 8, !tbaa !71
  %44 = insertelement <2 x i64> poison, i64 %36, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer
  %46 = sub <2 x i64> %43, %45
  store <2 x i64> %46, ptr %42, align 8, !tbaa !71
  %47 = load ptr, ptr %38, align 8, !tbaa !51
  %48 = getelementptr inbounds i8, ptr %47, i64 %36
  store ptr %48, ptr %38, align 8, !tbaa !51
  %49 = icmp eq i32 %40, %37
  br i1 %49, label %50, label %58

50:                                               ; preds = %1, %9, %32
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %52 = load i64, ptr %51, align 8, !tbaa !34
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @png_push_save_buffer(ptr noundef nonnull %0) #12
  br label %58

55:                                               ; preds = %50
  %56 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 1, ptr %57, align 8, !tbaa !52
  br label %58

58:                                               ; preds = %27, %54, %55, %32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_push_fill_buffer(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @llvm.umin.i64(i64 %7, i64 %2)
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %12, i64 %10, i1 false)
  %13 = sub i64 %2, %10
  %14 = getelementptr inbounds i8, ptr %1, i64 %10
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %16 = load i64, ptr %15, align 8, !tbaa !34
  %17 = sub i64 %16, %10
  store i64 %17, ptr %15, align 8, !tbaa !34
  %18 = load i64, ptr %6, align 8, !tbaa !50
  %19 = sub i64 %18, %10
  store i64 %19, ptr %6, align 8, !tbaa !50
  %20 = load ptr, ptr %11, align 8, !tbaa !53
  %21 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %21, ptr %11, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %9, %5
  %23 = phi i64 [ %13, %9 ], [ %2, %5 ]
  %24 = phi ptr [ %14, %9 ], [ %1, %5 ]
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %28 = load i64, ptr %27, align 8, !tbaa !49
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @llvm.umin.i64(i64 %23, i64 %28)
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %33, i64 %31, i1 false)
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %35 = load <2 x i64>, ptr %34, align 8, !tbaa !71
  %36 = insertelement <2 x i64> poison, i64 %31, i64 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer
  %38 = sub <2 x i64> %35, %37
  store <2 x i64> %38, ptr %34, align 8, !tbaa !71
  %39 = load ptr, ptr %32, align 8, !tbaa !51
  %40 = getelementptr inbounds i8, ptr %39, i64 %31
  store ptr %40, ptr %32, align 8, !tbaa !51
  br label %41

41:                                               ; preds = %22, %26, %30, %3
  ret void
}

; Function Attrs: optsize
declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @png_get_uint_31(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_reset_crc(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_crc_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_check_chunk_name(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_IHDR(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_IEND(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_have_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_unknown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_PLTE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_have_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 89
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @png_handle_gAMA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_sBIT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_cHRM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_sRGB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_iCCP(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_sPLT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_tRNS(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_bKGD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_hIST(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_pHYs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_oFFs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_pCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_sCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_tIME(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_tEXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_zTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_handle_iTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_push_crc_skip(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 3, ptr %3, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 97
  store i32 %1, ptr %4, align 4, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @png_crc_finish(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_process_IDAT_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  %5 = icmp eq ptr %1, null
  %6 = or i1 %5, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #13
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  store ptr %1, ptr %9, align 8, !tbaa !74
  %10 = trunc i64 %2 to i32
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !75
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %90, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  br label %26

23:                                               ; preds = %86, %84
  %24 = load i32, ptr %11, align 8, !tbaa !75
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %90, label %26

26:                                               ; preds = %13, %23
  %27 = load i32, ptr %14, align 8, !tbaa !70
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = load i32, ptr %15, align 8, !tbaa !67
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i8, ptr %16, align 2, !tbaa !65
  %35 = icmp ugt i8 %34, 7
  %36 = load i32, ptr %17, align 8, !tbaa !66
  %37 = zext i32 %36 to i64
  br i1 %35, label %38, label %42

38:                                               ; preds = %33
  %39 = lshr i8 %34, 3
  %40 = zext nneg i8 %39 to i64
  %41 = mul nuw nsw i64 %37, %40
  br label %47

42:                                               ; preds = %33
  %43 = zext nneg i8 %34 to i64
  %44 = mul nuw nsw i64 %37, %43
  %45 = add nuw nsw i64 %44, 7
  %46 = lshr i64 %45, 3
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i64 [ %41, %38 ], [ %46, %42 ]
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 1
  store i32 %50, ptr %15, align 8, !tbaa !67
  %51 = load ptr, ptr %18, align 8, !tbaa !68
  store ptr %51, ptr %19, align 8, !tbaa !69
  br label %52

52:                                               ; preds = %47, %30
  %53 = tail call i32 @inflate(ptr noundef nonnull %9, i32 noundef 2) #14
  %54 = icmp ugt i32 %53, 1
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, ptr %14, align 8, !tbaa !70
  %57 = or i32 %56, 32
  store i32 %57, ptr %14, align 8, !tbaa !70
  %58 = load i32, ptr %20, align 4, !tbaa !76
  %59 = load i32, ptr %21, align 8, !tbaa !77
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8, ptr %22, align 1, !tbaa !78
  %63 = icmp ugt i8 %62, 6
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %55
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #14
  br label %90

65:                                               ; preds = %61
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #13
  unreachable

66:                                               ; preds = %52
  %67 = load ptr, ptr %19, align 8, !tbaa !69
  %68 = load ptr, ptr %18, align 8, !tbaa !68
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %20, align 4, !tbaa !76
  %72 = load i32, ptr %21, align 8, !tbaa !77
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8, ptr %22, align 1, !tbaa !78
  %76 = icmp ugt i8 %75, 6
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %70
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #14
  %78 = load i32, ptr %14, align 8, !tbaa !70
  %79 = or i32 %78, 32
  store i32 %79, ptr %14, align 8, !tbaa !70
  br label %90

80:                                               ; preds = %74
  %81 = load i32, ptr %15, align 8, !tbaa !67
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @png_push_process_row(ptr noundef nonnull %0) #12
  br label %84

84:                                               ; preds = %80, %83, %66
  %85 = icmp eq i32 %53, 1
  br i1 %85, label %86, label %23

86:                                               ; preds = %84
  %87 = load i32, ptr %14, align 8, !tbaa !70
  %88 = or i32 %87, 32
  store i32 %88, ptr %14, align 8, !tbaa !70
  br label %23

89:                                               ; preds = %26
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #14
  br label %90

90:                                               ; preds = %23, %8, %64, %77, %89
  ret void
}

; Function Attrs: optsize
declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_process_row(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.png_row_info_struct, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %4 = load i32, ptr %3, align 8, !tbaa !66
  store i32 %4, ptr %2, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %6 = load i8, ptr %5, align 1, !tbaa !63
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %2, i64 0, i32 2
  store i8 %6, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %9 = load i8, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.png_row_info_struct, ptr %2, i64 0, i32 3
  store i8 %9, ptr %10, align 1, !tbaa !83
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %12 = load i8, ptr %11, align 1, !tbaa !84
  %13 = getelementptr inbounds %struct.png_row_info_struct, ptr %2, i64 0, i32 4
  store i8 %12, ptr %13, align 2, !tbaa !85
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %15 = load i8, ptr %14, align 2, !tbaa !65
  %16 = getelementptr inbounds %struct.png_row_info_struct, ptr %2, i64 0, i32 5
  store i8 %15, ptr %16, align 1, !tbaa !86
  %17 = icmp ugt i8 %15, 7
  %18 = zext i32 %4 to i64
  br i1 %17, label %19, label %23

19:                                               ; preds = %1
  %20 = lshr i8 %15, 3
  %21 = zext nneg i8 %20 to i64
  %22 = mul nuw nsw i64 %21, %18
  br label %28

23:                                               ; preds = %1
  %24 = zext nneg i8 %15 to i64
  %25 = mul nuw nsw i64 %24, %18
  %26 = add nuw nsw i64 %25, 7
  %27 = lshr i64 %26, 3
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i64 [ %22, %19 ], [ %27, %23 ]
  %30 = getelementptr inbounds %struct.png_row_info_struct, ptr %2, i64 0, i32 1
  store i64 %29, ptr %30, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  %33 = load i8, ptr %32, align 1, !tbaa !55
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %28
  %37 = icmp ult i8 %33, 5
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %32, i64 1
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  call void @png_read_filter_row(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %39, ptr noundef nonnull %42, i32 noundef %34) #14
  %43 = load ptr, ptr %31, align 8, !tbaa !68
  %44 = load i64, ptr %30, align 8, !tbaa !87
  br label %46

45:                                               ; preds = %36
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #13
  unreachable

46:                                               ; preds = %38, %28
  %47 = phi i64 [ %44, %38 ], [ %29, %28 ]
  %48 = phi ptr [ %43, %38 ], [ %32, %28 ]
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = add i64 %47, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %48, i64 %51, i1 false)
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %53 = load i32, ptr %52, align 4, !tbaa !89
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  call void @png_do_read_transformations(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  br label %56

56:                                               ; preds = %55, %46
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %58 = load i8, ptr %57, align 1, !tbaa !90
  %59 = icmp eq i8 %58, 0
  %60 = load i8, ptr %16, align 1, !tbaa !86
  br i1 %59, label %61, label %66

61:                                               ; preds = %56
  store i8 %60, ptr %57, align 1, !tbaa !90
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  %63 = load i8, ptr %62, align 2, !tbaa !91
  %64 = icmp ugt i8 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #13
  unreachable

66:                                               ; preds = %56
  %67 = icmp eq i8 %58, %60
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #13
  unreachable

69:                                               ; preds = %66, %61
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %71 = load i8, ptr %70, align 4, !tbaa !92
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %238, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %52, align 4, !tbaa !89
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %238, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %79 = load i8, ptr %78, align 1, !tbaa !78
  %80 = icmp ult i8 %79, 6
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = zext nneg i8 %79 to i32
  %83 = load ptr, ptr %31, align 8, !tbaa !68
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  call void @png_do_read_interlace(ptr noundef nonnull %2, ptr noundef nonnull %84, i32 noundef %82, i32 noundef %74) #14
  %85 = load i8, ptr %78, align 1, !tbaa !78
  br label %86

86:                                               ; preds = %81, %77
  %87 = phi i8 [ %85, %81 ], [ %79, %77 ]
  switch i8 %87, label %232 [
    i8 0, label %88
    i8 1, label %133
    i8 2, label %154
    i8 3, label %181
    i8 4, label %200
    i8 5, label %219
  ]

88:                                               ; preds = %86, %92
  %89 = phi i32 [ %95, %92 ], [ 0, %86 ]
  %90 = load i8, ptr %78, align 1, !tbaa !78
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load ptr, ptr %31, align 8, !tbaa !68
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %94) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %95 = add nuw nsw i32 %89, 1
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %97, label %88, !llvm.loop !93

97:                                               ; preds = %92
  %98 = load i8, ptr %78, align 1, !tbaa !78
  br label %99

99:                                               ; preds = %88, %97
  %100 = phi i8 [ %98, %97 ], [ %90, %88 ]
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %106
  %103 = phi i32 [ %107, %106 ], [ 0, %99 ]
  %104 = load i8, ptr %78, align 1, !tbaa !78
  %105 = icmp eq i8 %104, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %107 = add nuw nsw i32 %103, 1
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %102, !llvm.loop !94

109:                                              ; preds = %106
  %110 = load i8, ptr %78, align 1, !tbaa !78
  br label %111

111:                                              ; preds = %102, %99, %109
  %112 = phi i8 [ %110, %109 ], [ %100, %99 ], [ %104, %102 ]
  %113 = icmp eq i8 %112, 4
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %116 = load i32, ptr %115, align 4, !tbaa !95
  %117 = icmp ult i32 %116, 5
  br i1 %117, label %118, label %242

118:                                              ; preds = %114, %122
  %119 = phi i1 [ false, %122 ], [ true, %114 ]
  %120 = load i8, ptr %78, align 1, !tbaa !78
  %121 = icmp eq i8 %120, 4
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br i1 %119, label %118, label %123, !llvm.loop !96

123:                                              ; preds = %122
  %124 = load i8, ptr %78, align 1, !tbaa !78
  br label %125

125:                                              ; preds = %118, %111, %123
  %126 = phi i8 [ %124, %123 ], [ %112, %111 ], [ %120, %118 ]
  %127 = icmp eq i8 %126, 6
  br i1 %127, label %128, label %242

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %130 = load i32, ptr %129, align 4, !tbaa !95
  %131 = icmp ult i32 %130, 5
  br i1 %131, label %132, label %242

132:                                              ; preds = %128
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  br label %241

133:                                              ; preds = %86, %137
  %134 = phi i32 [ %140, %137 ], [ 0, %86 ]
  %135 = load i8, ptr %78, align 1, !tbaa !78
  %136 = icmp eq i8 %135, 1
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load ptr, ptr %31, align 8, !tbaa !68
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %139) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %140 = add nuw nsw i32 %134, 1
  %141 = icmp eq i32 %140, 8
  br i1 %141, label %142, label %133, !llvm.loop !97

142:                                              ; preds = %137
  %143 = load i8, ptr %78, align 1, !tbaa !78
  br label %144

144:                                              ; preds = %133, %142
  %145 = phi i8 [ %143, %142 ], [ %135, %133 ]
  %146 = icmp eq i8 %145, 2
  br i1 %146, label %147, label %242

147:                                              ; preds = %144, %151
  %148 = phi i32 [ %152, %151 ], [ 0, %144 ]
  %149 = load i8, ptr %78, align 1, !tbaa !78
  %150 = icmp eq i8 %149, 2
  br i1 %150, label %151, label %242

151:                                              ; preds = %147
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %152 = add nuw nsw i32 %148, 1
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %242, label %147, !llvm.loop !98

154:                                              ; preds = %86, %158
  %155 = phi i32 [ %161, %158 ], [ 0, %86 ]
  %156 = load i8, ptr %78, align 1, !tbaa !78
  %157 = icmp eq i8 %156, 2
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load ptr, ptr %31, align 8, !tbaa !68
  %160 = getelementptr inbounds i8, ptr %159, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %160) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %161 = add nuw nsw i32 %155, 1
  %162 = icmp eq i32 %161, 4
  br i1 %162, label %163, label %154, !llvm.loop !99

163:                                              ; preds = %158, %154
  br label %164

164:                                              ; preds = %163, %168
  %165 = phi i32 [ %169, %168 ], [ 0, %163 ]
  %166 = load i8, ptr %78, align 1, !tbaa !78
  %167 = icmp eq i8 %166, 2
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %169 = add nuw nsw i32 %165, 1
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %171, label %164, !llvm.loop !100

171:                                              ; preds = %168
  %172 = load i8, ptr %78, align 1, !tbaa !78
  br label %173

173:                                              ; preds = %164, %171
  %174 = phi i8 [ %172, %171 ], [ %166, %164 ]
  %175 = icmp eq i8 %174, 4
  br i1 %175, label %176, label %242

176:                                              ; preds = %173, %180
  %177 = phi i1 [ false, %180 ], [ true, %173 ]
  %178 = load i8, ptr %78, align 1, !tbaa !78
  %179 = icmp eq i8 %178, 4
  br i1 %179, label %180, label %242

180:                                              ; preds = %176
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br i1 %177, label %176, label %242, !llvm.loop !101

181:                                              ; preds = %86, %185
  %182 = phi i32 [ %188, %185 ], [ 0, %86 ]
  %183 = load i8, ptr %78, align 1, !tbaa !78
  %184 = icmp eq i8 %183, 3
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load ptr, ptr %31, align 8, !tbaa !68
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %187) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %188 = add nuw nsw i32 %182, 1
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %190, label %181, !llvm.loop !102

190:                                              ; preds = %185
  %191 = load i8, ptr %78, align 1, !tbaa !78
  br label %192

192:                                              ; preds = %181, %190
  %193 = phi i8 [ %191, %190 ], [ %183, %181 ]
  %194 = icmp eq i8 %193, 4
  br i1 %194, label %195, label %242

195:                                              ; preds = %192, %199
  %196 = phi i1 [ false, %199 ], [ true, %192 ]
  %197 = load i8, ptr %78, align 1, !tbaa !78
  %198 = icmp eq i8 %197, 4
  br i1 %198, label %199, label %242

199:                                              ; preds = %195
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br i1 %196, label %195, label %242, !llvm.loop !103

200:                                              ; preds = %86, %204
  %201 = phi i1 [ false, %204 ], [ true, %86 ]
  %202 = load i8, ptr %78, align 1, !tbaa !78
  %203 = icmp eq i8 %202, 4
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load ptr, ptr %31, align 8, !tbaa !68
  %206 = getelementptr inbounds i8, ptr %205, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %206) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br i1 %201, label %200, label %207, !llvm.loop !104

207:                                              ; preds = %204, %200
  br label %208

208:                                              ; preds = %207, %212
  %209 = phi i1 [ false, %212 ], [ true, %207 ]
  %210 = load i8, ptr %78, align 1, !tbaa !78
  %211 = icmp eq i8 %210, 4
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br i1 %209, label %208, label %213, !llvm.loop !105

213:                                              ; preds = %212
  %214 = load i8, ptr %78, align 1, !tbaa !78
  br label %215

215:                                              ; preds = %208, %213
  %216 = phi i8 [ %214, %213 ], [ %210, %208 ]
  %217 = icmp eq i8 %216, 6
  br i1 %217, label %218, label %242

218:                                              ; preds = %215
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  br label %241

219:                                              ; preds = %86, %223
  %220 = phi i1 [ false, %223 ], [ true, %86 ]
  %221 = load i8, ptr %78, align 1, !tbaa !78
  %222 = icmp eq i8 %221, 5
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load ptr, ptr %31, align 8, !tbaa !68
  %225 = getelementptr inbounds i8, ptr %224, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %225) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br i1 %220, label %219, label %226, !llvm.loop !106

226:                                              ; preds = %223
  %227 = load i8, ptr %78, align 1, !tbaa !78
  br label %228

228:                                              ; preds = %219, %226
  %229 = phi i8 [ %227, %226 ], [ %221, %219 ]
  %230 = icmp eq i8 %229, 6
  br i1 %230, label %231, label %242

231:                                              ; preds = %228
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  br label %241

232:                                              ; preds = %86
  %233 = load ptr, ptr %31, align 8, !tbaa !68
  %234 = getelementptr inbounds i8, ptr %233, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %234) #12
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  %235 = load i8, ptr %78, align 1, !tbaa !78
  %236 = icmp eq i8 %235, 6
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef null) #12
  br label %241

238:                                              ; preds = %73, %69
  %239 = load ptr, ptr %31, align 8, !tbaa !68
  %240 = getelementptr inbounds i8, ptr %239, i64 1
  call void @png_push_have_row(ptr noundef nonnull %0, ptr noundef nonnull %240) #12
  br label %241

241:                                              ; preds = %238, %237, %132, %218, %231
  call void @png_read_push_finish_row(ptr noundef nonnull %0) #12
  br label %242

242:                                              ; preds = %199, %195, %180, %176, %151, %147, %241, %114, %228, %215, %192, %173, %144, %125, %128, %232
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @png_read_filter_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_do_read_transformations(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_do_read_interlace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_push_have_row(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %10 = load i8, ptr %9, align 1, !tbaa !78
  %11 = zext i8 %10 to i32
  tail call void %4(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8, i32 noundef %11) #14
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_read_push_finish_row(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !76
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %79, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %10 = load i8, ptr %9, align 4, !tbaa !92
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %79, label %12

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !tbaa !76
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = add i64 %16, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %19 = load i8, ptr %18, align 1, !tbaa !78
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %24

24:                                               ; preds = %62, %12
  %25 = phi i8 [ %47, %62 ], [ %19, %12 ]
  %26 = add i8 %25, 1
  switch i8 %25, label %39 [
    i8 0, label %27
    i8 2, label %30
    i8 4, label %33
  ]

27:                                               ; preds = %24
  %28 = load i32, ptr %20, align 8, !tbaa !109
  %29 = icmp ult i32 %28, 5
  br i1 %29, label %36, label %43

30:                                               ; preds = %24
  %31 = load i32, ptr %20, align 8, !tbaa !109
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %36, label %43

33:                                               ; preds = %24
  %34 = load i32, ptr %20, align 8, !tbaa !109
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %33, %30, %27
  %37 = phi i32 [ %34, %33 ], [ %31, %30 ], [ %28, %27 ]
  %38 = add nuw nsw i8 %25, 2
  br label %45

39:                                               ; preds = %24
  %40 = icmp ugt i8 %26, 7
  br i1 %40, label %77, label %41

41:                                               ; preds = %39
  %42 = icmp eq i8 %26, 7
  br i1 %42, label %77, label %43

43:                                               ; preds = %27, %30, %33, %41
  %44 = load i32, ptr %20, align 8, !tbaa !109
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ %37, %36 ], [ %44, %43 ]
  %47 = phi i8 [ %38, %36 ], [ %26, %43 ]
  %48 = zext nneg i8 %47 to i64
  %49 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_inc, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !55
  %51 = zext i8 %50 to i32
  %52 = add i32 %46, %51
  %53 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_start, i64 0, i64 %48
  %54 = load i8, ptr %53, align 1, !tbaa !55
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, -1
  %57 = add i32 %52, %56
  %58 = udiv i32 %57, %51
  store i32 %58, ptr %21, align 8, !tbaa !66
  %59 = load i32, ptr %22, align 4, !tbaa !89
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %45
  %63 = load i32, ptr %23, align 4, !tbaa !95
  %64 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_yinc, i64 0, i64 %48
  %65 = load i8, ptr %64, align 1, !tbaa !55
  %66 = zext i8 %65 to i32
  %67 = add i32 %63, %66
  %68 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_ystart, i64 0, i64 %48
  %69 = load i8, ptr %68, align 1, !tbaa !55
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, -1
  %72 = add i32 %67, %71
  %73 = udiv i32 %72, %66
  store i32 %73, ptr %5, align 8, !tbaa !77
  %74 = icmp ult i32 %57, %51
  %75 = icmp ult i32 %72, %66
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %24, label %77, !llvm.loop !110

77:                                               ; preds = %62, %41, %45, %39
  %78 = phi i8 [ %25, %39 ], [ %47, %45 ], [ 7, %41 ], [ %47, %62 ]
  store i8 %78, ptr %18, align 1, !tbaa !78
  br label %79

79:                                               ; preds = %77, %1, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_progressive_combine_row(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #14
  br label %8

8:                                                ; preds = %3, %7
  ret void
}

; Function Attrs: optsize
declare void @png_combine_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_progressive_read_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 89
  store ptr %2, ptr %8, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  store ptr %3, ptr %9, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 91
  store ptr %4, ptr %10, align 8, !tbaa !72
  tail call void @png_set_read_fn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @png_push_fill_buffer) #14
  br label %11

11:                                               ; preds = %5, %7
  ret void
}

; Function Attrs: optsize
declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_progressive_ptr(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize }
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
!34 = !{!35, !41, i64 856}
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
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!35, !38, i64 824}
!49 = !{!35, !41, i64 864}
!50 = !{!35, !41, i64 840}
!51 = !{!35, !38, i64 816}
!52 = !{!35, !39, i64 872}
!53 = !{!35, !38, i64 800}
!54 = !{!35, !38, i64 808}
!55 = !{!36, !36, i64 0}
!56 = distinct !{!56, !47}
!57 = !{!35, !41, i64 848}
!58 = !{!35, !39, i64 836}
!59 = !{!35, !36, i64 597}
!60 = !{!35, !39, i64 284}
!61 = !{!35, !39, i64 832}
!62 = !{!35, !39, i64 496}
!63 = !{!35, !36, i64 591}
!64 = !{!35, !39, i64 560}
!65 = !{!35, !36, i64 594}
!66 = !{!35, !39, i64 488}
!67 = !{!35, !39, i64 328}
!68 = !{!35, !38, i64 512}
!69 = !{!35, !38, i64 320}
!70 = !{!35, !39, i64 288}
!71 = !{!41, !41, i64 0}
!72 = !{!35, !38, i64 792}
!73 = !{!35, !38, i64 776}
!74 = !{!35, !38, i64 296}
!75 = !{!35, !39, i64 304}
!76 = !{!35, !39, i64 492}
!77 = !{!35, !39, i64 472}
!78 = !{!35, !36, i64 589}
!79 = !{!80, !39, i64 0}
!80 = !{!"png_row_info_struct", !39, i64 0, !41, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!81 = !{!80, !36, i64 16}
!82 = !{!35, !36, i64 592}
!83 = !{!80, !36, i64 17}
!84 = !{!35, !36, i64 595}
!85 = !{!80, !36, i64 18}
!86 = !{!80, !36, i64 19}
!87 = !{!80, !41, i64 8}
!88 = !{!35, !38, i64 504}
!89 = !{!35, !39, i64 292}
!90 = !{!35, !36, i64 599}
!91 = !{!35, !36, i64 598}
!92 = !{!35, !36, i64 588}
!93 = distinct !{!93, !47}
!94 = distinct !{!94, !47}
!95 = !{!35, !39, i64 468}
!96 = distinct !{!96, !47}
!97 = distinct !{!97, !47}
!98 = distinct !{!98, !47}
!99 = distinct !{!99, !47}
!100 = distinct !{!100, !47}
!101 = distinct !{!101, !47}
!102 = distinct !{!102, !47}
!103 = distinct !{!103, !47}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, !47}
!106 = distinct !{!106, !47}
!107 = !{!35, !38, i64 784}
!108 = !{!35, !41, i64 480}
!109 = !{!35, !39, i64 464}
!110 = distinct !{!110, !47}
!111 = !{!35, !38, i64 248}

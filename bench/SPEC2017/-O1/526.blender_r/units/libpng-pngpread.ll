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

; Function Attrs: nounwind uwtable
define dso_local void @png_process_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 95
  store ptr %2, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  store i64 %3, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = add i64 %12, %3
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 %13, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  store ptr %2, ptr %15, align 8, !tbaa !49
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  br label %19

19:                                               ; preds = %17, %26
  %20 = load i32, ptr %18, align 8, !tbaa !50
  switch i32 %20, label %25 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %23
    i32 3, label %24
  ]

21:                                               ; preds = %19
  tail call void @png_push_read_sig(ptr noundef nonnull %0, ptr noundef %1)
  br label %26

22:                                               ; preds = %19
  tail call void @png_push_read_chunk(ptr noundef nonnull %0, ptr noundef %1)
  br label %26

23:                                               ; preds = %19
  tail call void @png_push_read_IDAT(ptr noundef nonnull %0)
  br label %26

24:                                               ; preds = %19
  tail call void @png_push_crc_finish(ptr noundef nonnull %0)
  br label %26

25:                                               ; preds = %19
  store i64 0, ptr %14, align 8, !tbaa !48
  br label %26

26:                                               ; preds = %21, %22, %23, %24, %25
  %27 = load i64, ptr %14, align 8, !tbaa !48
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !51

29:                                               ; preds = %26, %8, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_push_restore_buffer(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 95
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  store i64 %2, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %7 = load i64, ptr %6, align 8, !tbaa !47
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 %8, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  store ptr %1, ptr %10, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_process_some_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  %6 = load i32, ptr %5, align 8, !tbaa !50
  switch i32 %6, label %11 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
  ]

7:                                                ; preds = %4
  tail call void @png_push_read_sig(ptr noundef nonnull %0, ptr noundef %1)
  br label %13

8:                                                ; preds = %4
  tail call void @png_push_read_chunk(ptr noundef nonnull %0, ptr noundef %1)
  br label %13

9:                                                ; preds = %4
  tail call void @png_push_read_IDAT(ptr noundef nonnull %0)
  br label %13

10:                                               ; preds = %4
  tail call void @png_push_crc_finish(ptr noundef nonnull %0)
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 0, ptr %12, align 8, !tbaa !48
  br label %13

13:                                               ; preds = %2, %11, %10, %9, %8, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @png_process_data_pause(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %9 = load i64, ptr %8, align 8, !tbaa !48
  store i64 0, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %11 = load i64, ptr %10, align 8, !tbaa !47
  %12 = icmp ult i64 %11, %9
  %13 = sub i64 %9, %11
  br i1 %12, label %15, label %14

14:                                               ; preds = %7, %6, %2
  br label %15

15:                                               ; preds = %7, %14
  %16 = phi i64 [ 0, %14 ], [ %13, %7 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @png_push_save_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %3 = load i64, ptr %2, align 8, !tbaa !47
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %5, %11
  %12 = phi i64 [ %16, %11 ], [ 0, %5 ]
  %13 = phi ptr [ %17, %11 ], [ %7, %5 ]
  %14 = phi ptr [ %18, %11 ], [ %9, %5 ]
  %15 = load i8, ptr %13, align 1, !tbaa !56
  store i8 %15, ptr %14, align 1, !tbaa !56
  %16 = add nuw i64 %12, 1
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp eq i64 %16, %3
  br i1 %19, label %20, label %11, !llvm.loop !57

20:                                               ; preds = %11, %5, %1
  %21 = load i64, ptr %2, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %23 = load i64, ptr %22, align 8, !tbaa !46
  %24 = add i64 %23, %21
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 99
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = sub i64 -257, %23
  %30 = icmp ugt i64 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  unreachable

32:                                               ; preds = %28
  %33 = add i64 %24, 256
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %33) #13
  store ptr %36, ptr %34, align 8, !tbaa !55
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @png_free(ptr noundef %0, ptr noundef %35) #13
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.9) #12
  unreachable

39:                                               ; preds = %32
  %40 = load i64, ptr %2, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr align 1 %35, i64 %40, i1 false)
  tail call void @png_free(ptr noundef %0, ptr noundef %35) #13
  store i64 %33, ptr %25, align 8, !tbaa !58
  br label %41

41:                                               ; preds = %39, %20
  %42 = load i64, ptr %22, align 8, !tbaa !46
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = load i64, ptr %2, align 8, !tbaa !47
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %50, i64 %42, i1 false)
  %51 = load i64, ptr %22, align 8, !tbaa !46
  %52 = load i64, ptr %2, align 8, !tbaa !47
  %53 = add i64 %52, %51
  store i64 %53, ptr %2, align 8, !tbaa !47
  store i64 0, ptr %22, align 8, !tbaa !46
  br label %54

54:                                               ; preds = %44, %41
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 93
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  store ptr %56, ptr %57, align 8, !tbaa !54
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  store i64 0, ptr %58, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @png_process_data_skip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 97
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %13 = load i64, ptr %12, align 8, !tbaa !48
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %18 = load i64, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #12
  unreachable

21:                                               ; preds = %16
  store i32 0, ptr %8, align 4, !tbaa !59
  store i32 1, ptr %4, align 8, !tbaa !50
  br label %22

22:                                               ; preds = %21, %7, %3, %1
  %23 = phi i32 [ %9, %21 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @png_push_read_sig(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 62
  %4 = load i8, ptr %3, align 1, !tbaa !60
  %5 = zext i8 %4 to i64
  %6 = sub nsw i64 8, %5
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %8 = load i64, ptr %7, align 8, !tbaa !48
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %6)
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15, i64 %5
  %12 = icmp eq ptr %0, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @llvm.umin.i64(i64 %15, i64 %9)
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %20, i64 %18, i1 false)
  %21 = sub i64 %9, %18
  %22 = getelementptr inbounds i8, ptr %11, i64 %18
  %23 = load i64, ptr %7, align 8, !tbaa !48
  %24 = sub i64 %23, %18
  store i64 %24, ptr %7, align 8, !tbaa !48
  %25 = load i64, ptr %14, align 8, !tbaa !47
  %26 = sub i64 %25, %18
  store i64 %26, ptr %14, align 8, !tbaa !47
  %27 = load ptr, ptr %19, align 8, !tbaa !54
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  store ptr %28, ptr %19, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %17, %13
  %30 = phi i64 [ %21, %17 ], [ %9, %13 ]
  %31 = phi ptr [ %22, %17 ], [ %11, %13 ]
  %32 = icmp eq i64 %30, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %35 = load i64, ptr %34, align 8, !tbaa !46
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @llvm.umin.i64(i64 %30, i64 %35)
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %40, i64 %38, i1 false)
  %41 = load i64, ptr %7, align 8, !tbaa !48
  %42 = sub i64 %41, %38
  store i64 %42, ptr %7, align 8, !tbaa !48
  %43 = load i64, ptr %34, align 8, !tbaa !46
  %44 = sub i64 %43, %38
  store i64 %44, ptr %34, align 8, !tbaa !46
  %45 = load ptr, ptr %39, align 8, !tbaa !49
  %46 = getelementptr inbounds i8, ptr %45, i64 %38
  store ptr %46, ptr %39, align 8, !tbaa !49
  br label %47

47:                                               ; preds = %2, %29, %33, %37
  %48 = load i8, ptr %3, align 1, !tbaa !60
  %49 = trunc i64 %9 to i8
  %50 = add i8 %48, %49
  store i8 %50, ptr %3, align 1, !tbaa !60
  %51 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %5, i64 noundef %9) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = icmp ult i8 %4, 4
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = add nsw i64 %9, -4
  %57 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %5, i64 noundef %56) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  unreachable

60:                                               ; preds = %55, %53
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  unreachable

61:                                               ; preds = %47
  %62 = load i8, ptr %3, align 1, !tbaa !60
  %63 = icmp ugt i8 %62, 7
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 1, ptr %65, align 8, !tbaa !50
  br label %66

66:                                               ; preds = %61, %64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_push_read_chunk(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %11 = load i64, ptr %10, align 8, !tbaa !48
  %12 = icmp ugt i64 %11, 7
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @png_push_save_buffer(ptr noundef %0)
  br label %68

14:                                               ; preds = %9
  %15 = icmp eq ptr %0, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %18 = load i64, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @llvm.umin.i64(i64 %18, i64 4)
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %23, i64 %21, i1 false)
  %24 = sub nuw nsw i64 4, %21
  %25 = getelementptr inbounds i8, ptr %3, i64 %21
  %26 = sub i64 %11, %21
  store i64 %26, ptr %10, align 8, !tbaa !48
  %27 = sub i64 %18, %21
  store i64 %27, ptr %17, align 8, !tbaa !47
  %28 = getelementptr inbounds i8, ptr %23, i64 %21
  store ptr %28, ptr %22, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %20, %16
  %30 = phi i64 [ %24, %20 ], [ 4, %16 ]
  %31 = phi ptr [ %25, %20 ], [ %3, %16 ]
  %32 = icmp eq i64 %30, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %35 = load i64, ptr %34, align 8, !tbaa !46
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @llvm.umin.i64(i64 %30, i64 %35)
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %40, i64 %38, i1 false)
  %41 = load i64, ptr %10, align 8, !tbaa !48
  %42 = sub i64 %41, %38
  store i64 %42, ptr %10, align 8, !tbaa !48
  %43 = sub i64 %35, %38
  store i64 %43, ptr %34, align 8, !tbaa !46
  %44 = getelementptr inbounds i8, ptr %40, i64 %38
  store ptr %44, ptr %39, align 8, !tbaa !49
  br label %45

45:                                               ; preds = %14, %29, %33, %37
  %46 = call i32 @png_get_uint_31(ptr noundef %0, ptr noundef nonnull %3) #13
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  store i32 %46, ptr %47, align 8, !tbaa !62
  call void @png_reset_crc(ptr noundef %0) #13
  call void @png_crc_read(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 4) #13
  %48 = load i8, ptr %4, align 1, !tbaa !56
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, 24
  %51 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !56
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 16
  %55 = or disjoint i32 %54, %50
  %56 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !56
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or disjoint i32 %55, %59
  %61 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !56
  %63 = zext i8 %62 to i32
  %64 = or disjoint i32 %60, %63
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %64, ptr %65, align 8, !tbaa !63
  call void @png_check_chunk_name(ptr noundef %0, i32 noundef %64) #13
  %66 = load i32, ptr %5, align 4, !tbaa !61
  %67 = or i32 %66, 256
  store i32 %67, ptr %5, align 4, !tbaa !61
  br label %68

68:                                               ; preds = %45, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br i1 %12, label %69, label %315

69:                                               ; preds = %68, %2
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %71 = load i32, ptr %70, align 8, !tbaa !63
  %72 = icmp eq i32 %71, 1229209940
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, ptr %5, align 4, !tbaa !61
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = or i32 %74, 8192
  store i32 %78, ptr %5, align 4, !tbaa !61
  br label %79

79:                                               ; preds = %73, %77, %69
  switch i32 %71, label %106 [
    i32 1229472850, label %80
    i32 1229278788, label %91
  ]

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %82 = load i32, ptr %81, align 8, !tbaa !62
  %83 = icmp eq i32 %82, 13
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.4) #12
  unreachable

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %87 = load i64, ptr %86, align 8, !tbaa !48
  %88 = icmp ult i64 %87, 17
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

90:                                               ; preds = %85
  call void @png_handle_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef 13) #13
  br label %312

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %93 = load i32, ptr %92, align 8, !tbaa !62
  %94 = add i32 %93, 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %97 = load i64, ptr %96, align 8, !tbaa !48
  %98 = icmp ult i64 %97, %95
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

100:                                              ; preds = %91
  call void @png_handle_IEND(ptr noundef %0, ptr noundef %1, i32 noundef %93) #13
  %101 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 6, ptr %101, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 91
  %103 = load ptr, ptr %102, align 8, !tbaa !64
  %104 = icmp eq ptr %103, null
  br i1 %104, label %312, label %105

105:                                              ; preds = %100
  call void %103(ptr noundef %0, ptr noundef %1) #13
  br label %312

106:                                              ; preds = %79
  %107 = call i32 @png_chunk_unknown_handling(ptr noundef %0, i32 noundef %71) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %141, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %111 = load i32, ptr %110, align 8, !tbaa !62
  %112 = add i32 %111, 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %115 = load i64, ptr %114, align 8, !tbaa !48
  %116 = icmp ult i64 %115, %113
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

118:                                              ; preds = %109
  br i1 %72, label %119, label %122

119:                                              ; preds = %118
  %120 = load i32, ptr %5, align 4, !tbaa !61
  %121 = or i32 %120, 4
  store i32 %121, ptr %5, align 4, !tbaa !61
  br label %122

122:                                              ; preds = %119, %118
  call void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %111) #13
  %123 = icmp eq i32 %71, 1347179589
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i32, ptr %5, align 4, !tbaa !61
  %126 = or i32 %125, 2
  store i32 %126, ptr %5, align 4, !tbaa !61
  br label %312

127:                                              ; preds = %122
  br i1 %72, label %128, label %312

128:                                              ; preds = %127
  %129 = load i32, ptr %5, align 4, !tbaa !61
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  unreachable

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %135 = load i8, ptr %134, align 1, !tbaa !65
  %136 = icmp eq i8 %135, 3
  %137 = and i32 %129, 2
  %138 = icmp eq i32 %137, 0
  %139 = and i1 %138, %136
  br i1 %139, label %140, label %312

140:                                              ; preds = %133
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  unreachable

141:                                              ; preds = %106
  %142 = icmp eq i32 %71, 1347179589
  br i1 %142, label %143, label %153

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %145 = load i32, ptr %144, align 8, !tbaa !62
  %146 = add i32 %145, 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %149 = load i64, ptr %148, align 8, !tbaa !48
  %150 = icmp ult i64 %149, %147
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

152:                                              ; preds = %143
  call void @png_handle_PLTE(ptr noundef %0, ptr noundef %1, i32 noundef %145) #13
  br label %312

153:                                              ; preds = %141
  br i1 %72, label %154, label %216

154:                                              ; preds = %153
  %155 = load i32, ptr %5, align 4, !tbaa !61
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  unreachable

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %161 = load i8, ptr %160, align 1, !tbaa !65
  %162 = icmp eq i8 %161, 3
  %163 = and i32 %155, 2
  %164 = icmp eq i32 %163, 0
  %165 = and i1 %164, %162
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  unreachable

167:                                              ; preds = %159
  %168 = and i32 %155, 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %167
  %171 = and i32 %155, 8192
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %175 = load i32, ptr %174, align 8, !tbaa !62
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %315, label %177

177:                                              ; preds = %173, %170
  %178 = and i32 %155, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  call void @png_benign_error(ptr noundef %0, ptr noundef nonnull @.str.7) #13
  br label %181

181:                                              ; preds = %177, %180, %167
  %182 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %183 = load i32, ptr %182, align 8, !tbaa !62
  %184 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  store i32 %183, ptr %184, align 8, !tbaa !66
  %185 = load i32, ptr %5, align 4, !tbaa !61
  %186 = or i32 %185, 4
  store i32 %186, ptr %5, align 4, !tbaa !61
  %187 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 2, ptr %187, align 8, !tbaa !50
  %188 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 89
  %189 = load ptr, ptr %188, align 8, !tbaa !67
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %181
  call void %189(ptr noundef %0, ptr noundef %1) #13
  br label %192

192:                                              ; preds = %181, %191
  %193 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %194 = load i8, ptr %193, align 2, !tbaa !68
  %195 = icmp ugt i8 %194, 7
  %196 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %197 = load i32, ptr %196, align 8, !tbaa !69
  %198 = zext i32 %197 to i64
  br i1 %195, label %199, label %203

199:                                              ; preds = %192
  %200 = lshr i8 %194, 3
  %201 = zext nneg i8 %200 to i64
  %202 = mul nuw nsw i64 %198, %201
  br label %208

203:                                              ; preds = %192
  %204 = zext nneg i8 %194 to i64
  %205 = mul nuw nsw i64 %198, %204
  %206 = add nuw nsw i64 %205, 7
  %207 = lshr i64 %206, 3
  br label %208

208:                                              ; preds = %203, %199
  %209 = phi i64 [ %202, %199 ], [ %207, %203 ]
  %210 = trunc i64 %209 to i32
  %211 = add i32 %210, 1
  %212 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %211, ptr %212, align 8, !tbaa !70
  %213 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %214 = load ptr, ptr %213, align 8, !tbaa !71
  %215 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %214, ptr %215, align 8, !tbaa !72
  br label %315

216:                                              ; preds = %153
  %217 = load i32, ptr %70, align 8, !tbaa !63
  switch i32 %217, label %248 [
    i32 1732332865, label %218
    i32 1933723988, label %228
    i32 1665684045, label %238
  ]

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %220 = load i32, ptr %219, align 8, !tbaa !62
  %221 = add i32 %220, 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %224 = load i64, ptr %223, align 8, !tbaa !48
  %225 = icmp ult i64 %224, %222
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

227:                                              ; preds = %218
  call void @png_handle_gAMA(ptr noundef %0, ptr noundef %1, i32 noundef %220) #13
  br label %312

228:                                              ; preds = %216
  %229 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %230 = load i32, ptr %229, align 8, !tbaa !62
  %231 = add i32 %230, 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %234 = load i64, ptr %233, align 8, !tbaa !48
  %235 = icmp ult i64 %234, %232
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

237:                                              ; preds = %228
  call void @png_handle_sBIT(ptr noundef %0, ptr noundef %1, i32 noundef %230) #13
  br label %312

238:                                              ; preds = %216
  %239 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %240 = load i32, ptr %239, align 8, !tbaa !62
  %241 = add i32 %240, 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %244 = load i64, ptr %243, align 8, !tbaa !48
  %245 = icmp ult i64 %244, %242
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

247:                                              ; preds = %238
  call void @png_handle_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %240) #13
  br label %312

248:                                              ; preds = %216
  %249 = icmp eq i32 %71, 1934772034
  br i1 %249, label %250, label %260

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %252 = load i32, ptr %251, align 8, !tbaa !62
  %253 = add i32 %252, 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %256 = load i64, ptr %255, align 8, !tbaa !48
  %257 = icmp ult i64 %256, %254
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

259:                                              ; preds = %250
  call void @png_handle_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %252) #13
  br label %312

260:                                              ; preds = %248
  %261 = icmp eq i32 %217, 1766015824
  %262 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  %263 = load i32, ptr %262, align 8, !tbaa !62
  %264 = add i32 %263, 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %267 = load i64, ptr %266, align 8, !tbaa !48
  %268 = icmp ult i64 %267, %265
  br i1 %261, label %269, label %272

269:                                              ; preds = %260
  br i1 %268, label %270, label %271

270:                                              ; preds = %269
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

271:                                              ; preds = %269
  call void @png_handle_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

272:                                              ; preds = %260
  switch i32 %71, label %309 [
    i32 1934642260, label %273
    i32 1951551059, label %276
    i32 1649100612, label %279
    i32 1749635924, label %282
    i32 1883789683, label %285
    i32 1866876531, label %288
    i32 1883455820, label %291
    i32 1933787468, label %294
    i32 1950960965, label %297
    i32 1950701684, label %300
    i32 2052348020, label %303
    i32 1767135348, label %306
  ]

273:                                              ; preds = %272
  br i1 %268, label %274, label %275

274:                                              ; preds = %273
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

275:                                              ; preds = %273
  call void @png_handle_sPLT(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

276:                                              ; preds = %272
  br i1 %268, label %277, label %278

277:                                              ; preds = %276
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

278:                                              ; preds = %276
  call void @png_handle_tRNS(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

279:                                              ; preds = %272
  br i1 %268, label %280, label %281

280:                                              ; preds = %279
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

281:                                              ; preds = %279
  call void @png_handle_bKGD(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

282:                                              ; preds = %272
  br i1 %268, label %283, label %284

283:                                              ; preds = %282
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

284:                                              ; preds = %282
  call void @png_handle_hIST(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

285:                                              ; preds = %272
  br i1 %268, label %286, label %287

286:                                              ; preds = %285
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

287:                                              ; preds = %285
  call void @png_handle_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

288:                                              ; preds = %272
  br i1 %268, label %289, label %290

289:                                              ; preds = %288
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

290:                                              ; preds = %288
  call void @png_handle_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

291:                                              ; preds = %272
  br i1 %268, label %292, label %293

292:                                              ; preds = %291
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

293:                                              ; preds = %291
  call void @png_handle_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

294:                                              ; preds = %272
  br i1 %268, label %295, label %296

295:                                              ; preds = %294
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

296:                                              ; preds = %294
  call void @png_handle_sCAL(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

297:                                              ; preds = %272
  br i1 %268, label %298, label %299

298:                                              ; preds = %297
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

299:                                              ; preds = %297
  call void @png_handle_tIME(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

300:                                              ; preds = %272
  br i1 %268, label %301, label %302

301:                                              ; preds = %300
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

302:                                              ; preds = %300
  call void @png_handle_tEXt(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

303:                                              ; preds = %272
  br i1 %268, label %304, label %305

304:                                              ; preds = %303
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

305:                                              ; preds = %303
  call void @png_handle_zTXt(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

306:                                              ; preds = %272
  br i1 %268, label %307, label %308

307:                                              ; preds = %306
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

308:                                              ; preds = %306
  call void @png_handle_iTXt(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

309:                                              ; preds = %272
  br i1 %268, label %310, label %311

310:                                              ; preds = %309
  call void @png_push_save_buffer(ptr noundef %0)
  br label %315

311:                                              ; preds = %309
  call void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %263) #13
  br label %312

312:                                              ; preds = %105, %100, %152, %227, %247, %271, %278, %284, %290, %296, %302, %308, %311, %305, %299, %293, %287, %281, %275, %259, %237, %124, %133, %127, %90
  %313 = load i32, ptr %5, align 4, !tbaa !61
  %314 = and i32 %313, -257
  store i32 %314, ptr %5, align 4, !tbaa !61
  br label %315

315:                                              ; preds = %173, %68, %312, %310, %307, %304, %301, %298, %295, %292, %289, %286, %283, %280, %277, %274, %270, %258, %246, %236, %226, %208, %151, %117, %99, %89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_push_read_IDAT(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %10 = load i64, ptr %9, align 8, !tbaa !48
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @png_push_save_buffer(ptr noundef %0)
  br label %142

13:                                               ; preds = %8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = tail call i64 @llvm.umin.i64(i64 %17, i64 4)
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %22, i64 %20, i1 false)
  %23 = sub nuw nsw i64 4, %20
  %24 = getelementptr inbounds i8, ptr %2, i64 %20
  %25 = sub i64 %10, %20
  store i64 %25, ptr %9, align 8, !tbaa !48
  %26 = sub i64 %17, %20
  store i64 %26, ptr %16, align 8, !tbaa !47
  %27 = getelementptr inbounds i8, ptr %22, i64 %20
  store ptr %27, ptr %21, align 8, !tbaa !54
  br label %28

28:                                               ; preds = %19, %15
  %29 = phi i64 [ %23, %19 ], [ 4, %15 ]
  %30 = phi ptr [ %24, %19 ], [ %2, %15 ]
  %31 = icmp eq i64 %29, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %34 = load i64, ptr %33, align 8, !tbaa !46
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = tail call i64 @llvm.umin.i64(i64 %29, i64 %34)
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %39, i64 %37, i1 false)
  %40 = load i64, ptr %9, align 8, !tbaa !48
  %41 = sub i64 %40, %37
  store i64 %41, ptr %9, align 8, !tbaa !48
  %42 = sub i64 %34, %37
  store i64 %42, ptr %33, align 8, !tbaa !46
  %43 = getelementptr inbounds i8, ptr %39, i64 %37
  store ptr %43, ptr %38, align 8, !tbaa !49
  br label %44

44:                                               ; preds = %13, %28, %32, %36
  %45 = call i32 @png_get_uint_31(ptr noundef %0, ptr noundef nonnull %2) #13
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 96
  store i32 %45, ptr %46, align 8, !tbaa !62
  call void @png_reset_crc(ptr noundef %0) #13
  call void @png_crc_read(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 4) #13
  %47 = load i8, ptr %3, align 1, !tbaa !56
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !56
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or disjoint i32 %53, %49
  %55 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !56
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or disjoint i32 %54, %58
  %60 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !56
  %62 = zext i8 %61 to i32
  %63 = or disjoint i32 %59, %62
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %63, ptr %64, align 8, !tbaa !63
  %65 = load i32, ptr %4, align 4, !tbaa !61
  %66 = or i32 %65, 256
  store i32 %66, ptr %4, align 4, !tbaa !61
  %67 = icmp eq i32 %63, 1229209940
  br i1 %67, label %75, label %68

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 1, ptr %69, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %71 = load i32, ptr %70, align 8, !tbaa !73
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %142

74:                                               ; preds = %68
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.10) #12
  unreachable

75:                                               ; preds = %44
  %76 = load i32, ptr %46, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  store i32 %76, ptr %77, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %78

78:                                               ; preds = %75, %1
  %79 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %80 = load i32, ptr %79, align 8, !tbaa !66
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %84 = load i64, ptr %83, align 8, !tbaa !47
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %82
  %87 = zext i32 %80 to i64
  %88 = icmp ugt i64 %84, %87
  %89 = trunc i64 %84 to i32
  %90 = call i64 @llvm.umin.i64(i64 %84, i64 %87)
  %91 = select i1 %88, i32 %80, i32 %89
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  call void @png_calculate_crc(ptr noundef %0, ptr noundef %93, i64 noundef %90) #13
  %94 = load ptr, ptr %92, align 8, !tbaa !54
  call void @png_process_IDAT_data(ptr noundef %0, ptr noundef %94, i64 noundef %90)
  %95 = load i32, ptr %79, align 8, !tbaa !66
  %96 = sub i32 %95, %91
  store i32 %96, ptr %79, align 8, !tbaa !66
  %97 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %98 = load i64, ptr %97, align 8, !tbaa !48
  %99 = sub i64 %98, %90
  store i64 %99, ptr %97, align 8, !tbaa !48
  %100 = load i64, ptr %83, align 8, !tbaa !47
  %101 = sub i64 %100, %90
  store i64 %101, ptr %83, align 8, !tbaa !47
  %102 = load ptr, ptr %92, align 8, !tbaa !54
  %103 = getelementptr inbounds i8, ptr %102, i64 %90
  store ptr %103, ptr %92, align 8, !tbaa !54
  br label %104

104:                                              ; preds = %86, %82, %78
  %105 = load i32, ptr %79, align 8, !tbaa !66
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %109 = load i64, ptr %108, align 8, !tbaa !46
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %107
  %112 = zext i32 %105 to i64
  %113 = icmp ugt i64 %109, %112
  %114 = trunc i64 %109 to i32
  %115 = call i64 @llvm.umin.i64(i64 %109, i64 %112)
  %116 = select i1 %113, i32 %105, i32 %114
  %117 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %118 = load ptr, ptr %117, align 8, !tbaa !49
  call void @png_calculate_crc(ptr noundef %0, ptr noundef %118, i64 noundef %115) #13
  %119 = load ptr, ptr %117, align 8, !tbaa !49
  call void @png_process_IDAT_data(ptr noundef %0, ptr noundef %119, i64 noundef %115)
  %120 = load i32, ptr %79, align 8, !tbaa !66
  %121 = sub i32 %120, %116
  store i32 %121, ptr %79, align 8, !tbaa !66
  %122 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %123 = load i64, ptr %122, align 8, !tbaa !48
  %124 = sub i64 %123, %115
  store i64 %124, ptr %122, align 8, !tbaa !48
  %125 = load i64, ptr %108, align 8, !tbaa !46
  %126 = sub i64 %125, %115
  store i64 %126, ptr %108, align 8, !tbaa !46
  %127 = load ptr, ptr %117, align 8, !tbaa !49
  %128 = getelementptr inbounds i8, ptr %127, i64 %115
  store ptr %128, ptr %117, align 8, !tbaa !49
  br label %129

129:                                              ; preds = %111, %107, %104
  %130 = load i32, ptr %79, align 8, !tbaa !66
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %134 = load i64, ptr %133, align 8, !tbaa !48
  %135 = icmp ult i64 %134, 4
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  call void @png_push_save_buffer(ptr noundef %0)
  br label %143

137:                                              ; preds = %132
  %138 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0) #13
  %139 = load i32, ptr %4, align 4, !tbaa !61
  %140 = and i32 %139, -265
  %141 = or disjoint i32 %140, 8
  store i32 %141, ptr %4, align 4, !tbaa !61
  br label %143

142:                                              ; preds = %68, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %143

143:                                              ; preds = %142, %136, %137, %129
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_push_crc_finish(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 97
  %3 = load i32, ptr %2, align 4, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %7 = load i64, ptr %6, align 8, !tbaa !47
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = zext i32 %3 to i64
  %11 = icmp ugt i64 %7, %10
  %12 = trunc i64 %7 to i32
  %13 = tail call i64 @llvm.umin.i64(i64 %7, i64 %10)
  %14 = select i1 %11, i32 %3, i32 %12
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  tail call void @png_calculate_crc(ptr noundef %0, ptr noundef %16, i64 noundef %13) #13
  %17 = load i32, ptr %2, align 4, !tbaa !59
  %18 = sub i32 %17, %14
  store i32 %18, ptr %2, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %20 = load i64, ptr %19, align 8, !tbaa !48
  %21 = sub i64 %20, %13
  store i64 %21, ptr %19, align 8, !tbaa !48
  %22 = load i64, ptr %6, align 8, !tbaa !47
  %23 = sub i64 %22, %13
  store i64 %23, ptr %6, align 8, !tbaa !47
  %24 = load ptr, ptr %15, align 8, !tbaa !54
  %25 = getelementptr inbounds i8, ptr %24, i64 %13
  store ptr %25, ptr %15, align 8, !tbaa !54
  br label %26

26:                                               ; preds = %9, %5, %1
  %27 = load i32, ptr %2, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = zext i32 %27 to i64
  %35 = icmp ugt i64 %31, %34
  %36 = trunc i64 %31 to i32
  %37 = tail call i64 @llvm.umin.i64(i64 %31, i64 %34)
  %38 = select i1 %35, i32 %27, i32 %36
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  tail call void @png_calculate_crc(ptr noundef %0, ptr noundef %40, i64 noundef %37) #13
  %41 = load i32, ptr %2, align 4, !tbaa !59
  %42 = sub i32 %41, %38
  store i32 %42, ptr %2, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %44 = load i64, ptr %43, align 8, !tbaa !48
  %45 = sub i64 %44, %37
  store i64 %45, ptr %43, align 8, !tbaa !48
  %46 = load i64, ptr %30, align 8, !tbaa !46
  %47 = sub i64 %46, %37
  store i64 %47, ptr %30, align 8, !tbaa !46
  %48 = load ptr, ptr %39, align 8, !tbaa !49
  %49 = getelementptr inbounds i8, ptr %48, i64 %37
  store ptr %49, ptr %39, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %33, %29, %26
  %51 = load i32, ptr %2, align 4, !tbaa !59
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %55 = load i64, ptr %54, align 8, !tbaa !48
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @png_push_save_buffer(ptr noundef %0)
  br label %61

58:                                               ; preds = %53
  %59 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0) #13
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 1, ptr %60, align 8, !tbaa !50
  br label %61

61:                                               ; preds = %57, %58, %50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_push_fill_buffer(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 98
  %7 = load i64, ptr %6, align 8, !tbaa !47
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @llvm.umin.i64(i64 %7, i64 %2)
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 92
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %12, i64 %10, i1 false)
  %13 = sub i64 %2, %10
  %14 = getelementptr inbounds i8, ptr %1, i64 %10
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %16 = load i64, ptr %15, align 8, !tbaa !48
  %17 = sub i64 %16, %10
  store i64 %17, ptr %15, align 8, !tbaa !48
  %18 = load i64, ptr %6, align 8, !tbaa !47
  %19 = sub i64 %18, %10
  store i64 %19, ptr %6, align 8, !tbaa !47
  %20 = load ptr, ptr %11, align 8, !tbaa !54
  %21 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %21, ptr %11, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %9, %5
  %23 = phi i64 [ %13, %9 ], [ %2, %5 ]
  %24 = phi ptr [ %14, %9 ], [ %1, %5 ]
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 101
  %28 = load i64, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @llvm.umin.i64(i64 %23, i64 %28)
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 94
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %33, i64 %31, i1 false)
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 100
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = sub i64 %35, %31
  store i64 %36, ptr %34, align 8, !tbaa !48
  %37 = load i64, ptr %27, align 8, !tbaa !46
  %38 = sub i64 %37, %31
  store i64 %38, ptr %27, align 8, !tbaa !46
  %39 = load ptr, ptr %32, align 8, !tbaa !49
  %40 = getelementptr inbounds i8, ptr %39, i64 %31
  store ptr %40, ptr %32, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %22, %26, %30, %3
  ret void
}

declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @png_get_uint_31(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #5

declare void @png_crc_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @png_check_chunk_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_IHDR(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_IEND(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_push_have_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 91
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, ptr noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_unknown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_PLTE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_push_have_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 89
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, ptr noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

declare void @png_handle_gAMA(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_sBIT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_cHRM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_sRGB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_iCCP(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_sPLT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_tRNS(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_bKGD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_hIST(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_pHYs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_oFFs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_pCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_sCAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_tIME(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_tEXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_zTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_handle_iTXt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_push_crc_skip(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 102
  store i32 3, ptr %3, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 97
  store i32 %1, ptr %4, align 4, !tbaa !59
  ret void
}

declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @png_crc_finish(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_process_IDAT_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  %5 = icmp eq ptr %1, null
  %6 = or i1 %5, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #12
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  store ptr %1, ptr %9, align 8, !tbaa !74
  %10 = trunc i64 %2 to i32
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !75
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %26 = load i32, ptr %14, align 8, !tbaa !73
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %100

29:                                               ; preds = %97
  %30 = load i32, ptr %14, align 8, !tbaa !73
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %100

33:                                               ; preds = %13, %29
  %34 = load i32, ptr %15, align 8, !tbaa !70
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i8, ptr %16, align 2, !tbaa !68
  %38 = icmp ugt i8 %37, 7
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, ptr %18, align 8, !tbaa !69
  %41 = zext i32 %40 to i64
  %42 = lshr i8 %37, 3
  %43 = zext nneg i8 %42 to i64
  %44 = mul nuw nsw i64 %41, %43
  br label %52

45:                                               ; preds = %36
  %46 = load i32, ptr %17, align 8, !tbaa !69
  %47 = zext i32 %46 to i64
  %48 = zext nneg i8 %37 to i64
  %49 = mul nuw nsw i64 %47, %48
  %50 = add nuw nsw i64 %49, 7
  %51 = lshr i64 %50, 3
  br label %52

52:                                               ; preds = %45, %39
  %53 = phi i64 [ %44, %39 ], [ %51, %45 ]
  %54 = trunc i64 %53 to i32
  %55 = add i32 %54, 1
  store i32 %55, ptr %15, align 8, !tbaa !70
  %56 = load ptr, ptr %19, align 8, !tbaa !71
  store ptr %56, ptr %20, align 8, !tbaa !72
  br label %57

57:                                               ; preds = %52, %33
  %58 = tail call i32 @inflate(ptr noundef nonnull %9, i32 noundef 2) #13
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i32, ptr %14, align 8, !tbaa !73
  %62 = or i32 %61, 32
  store i32 %62, ptr %14, align 8, !tbaa !73
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %64 = load i32, ptr %63, align 4, !tbaa !76
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %66 = load i32, ptr %65, align 8, !tbaa !77
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %70 = load i8, ptr %69, align 1, !tbaa !78
  %71 = icmp ugt i8 %70, 6
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %60
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.12) #13
  br label %103

73:                                               ; preds = %68
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.13) #12
  unreachable

74:                                               ; preds = %57
  %75 = load ptr, ptr %21, align 8, !tbaa !72
  %76 = load ptr, ptr %22, align 8, !tbaa !71
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %23, align 4, !tbaa !76
  %80 = load i32, ptr %24, align 8, !tbaa !77
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8, ptr %25, align 1, !tbaa !78
  %84 = icmp ugt i8 %83, 6
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %78
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  %86 = load i32, ptr %14, align 8, !tbaa !73
  %87 = or i32 %86, 32
  store i32 %87, ptr %14, align 8, !tbaa !73
  br label %103

88:                                               ; preds = %82
  %89 = load i32, ptr %15, align 8, !tbaa !70
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  tail call void @png_push_process_row(ptr noundef %0)
  br label %92

92:                                               ; preds = %88, %91, %74
  %93 = icmp eq i32 %58, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i32, ptr %14, align 8, !tbaa !73
  %96 = or i32 %95, 32
  store i32 %96, ptr %14, align 8, !tbaa !73
  br label %97

97:                                               ; preds = %92, %94
  %98 = load i32, ptr %11, align 8, !tbaa !75
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %29

100:                                              ; preds = %29, %13
  %101 = phi i1 [ %12, %13 ], [ %99, %29 ]
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.15) #13
  br label %103

103:                                              ; preds = %97, %8, %72, %85, %102, %100
  ret void
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_push_process_row(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.png_row_info_struct, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %4 = load i32, ptr %3, align 8, !tbaa !69
  store i32 %4, ptr %2, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %6 = load i8, ptr %5, align 1, !tbaa !65
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
  %15 = load i8, ptr %14, align 2, !tbaa !68
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
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = load i8, ptr %32, align 1, !tbaa !56
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = icmp ult i8 %33, 5
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %32, i64 1
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  call void @png_read_filter_row(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %39, ptr noundef nonnull %42, i32 noundef %34) #13
  br label %44

43:                                               ; preds = %36
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.16) #12
  unreachable

44:                                               ; preds = %38, %28
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %46 = load ptr, ptr %45, align 8, !tbaa !88
  %47 = load ptr, ptr %31, align 8, !tbaa !71
  %48 = load i64, ptr %30, align 8, !tbaa !87
  %49 = add i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 %49, i1 false)
  %50 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %51 = load i32, ptr %50, align 4, !tbaa !89
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  call void @png_do_read_transformations(ptr noundef %0, ptr noundef nonnull %2) #13
  br label %54

54:                                               ; preds = %53, %44
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %56 = load i8, ptr %55, align 1, !tbaa !90
  %57 = icmp eq i8 %56, 0
  %58 = load i8, ptr %16, align 1, !tbaa !86
  br i1 %57, label %59, label %64

59:                                               ; preds = %54
  store i8 %58, ptr %55, align 1, !tbaa !90
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  %61 = load i8, ptr %60, align 2, !tbaa !91
  %62 = icmp ugt i8 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  unreachable

64:                                               ; preds = %54
  %65 = icmp eq i8 %56, %58
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.18) #12
  unreachable

67:                                               ; preds = %64, %59
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %69 = load i8, ptr %68, align 4, !tbaa !92
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %375, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %50, align 4, !tbaa !89
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %375, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %77 = load i8, ptr %76, align 1, !tbaa !78
  %78 = icmp ult i8 %77, 6
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = zext nneg i8 %77 to i32
  %81 = load ptr, ptr %31, align 8, !tbaa !71
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  call void @png_do_read_interlace(ptr noundef nonnull %2, ptr noundef nonnull %82, i32 noundef %80, i32 noundef %72) #13
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i8, ptr %76, align 1, !tbaa !78
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  switch i8 %84, label %356 [
    i8 0, label %96
    i8 1, label %94
    i8 2, label %92
    i8 3, label %90
    i8 4, label %88
    i8 5, label %86
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %330

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %288

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %254

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %204

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %170

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %98

98:                                               ; preds = %96, %110
  %99 = phi i32 [ 0, %96 ], [ %111, %110 ]
  %100 = load i8, ptr %76, align 1, !tbaa !78
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load ptr, ptr %85, align 8, !tbaa !93
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %31, align 8, !tbaa !71
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = load i32, ptr %97, align 4, !tbaa !76
  %109 = zext nneg i8 %100 to i32
  call void %103(ptr noundef %0, ptr noundef nonnull %107, i32 noundef %108, i32 noundef %109) #13
  br label %110

110:                                              ; preds = %102, %105
  call void @png_read_push_finish_row(ptr noundef %0)
  %111 = add nuw nsw i32 %99, 1
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %98, !llvm.loop !94

113:                                              ; preds = %110, %98
  %114 = load i8, ptr %76, align 1, !tbaa !78
  %115 = icmp eq i8 %114, 2
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %118 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %119

119:                                              ; preds = %116, %129
  %120 = phi i32 [ 0, %116 ], [ %130, %129 ]
  %121 = load i8, ptr %76, align 1, !tbaa !78
  %122 = icmp eq i8 %121, 2
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load ptr, ptr %117, align 8, !tbaa !93
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %118, align 4, !tbaa !76
  %128 = zext nneg i8 %121 to i32
  call void %124(ptr noundef %0, ptr noundef null, i32 noundef %127, i32 noundef %128) #13
  br label %129

129:                                              ; preds = %123, %126
  call void @png_read_push_finish_row(ptr noundef %0)
  %130 = add nuw nsw i32 %120, 1
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %132, label %119, !llvm.loop !95

132:                                              ; preds = %119, %129, %113
  %133 = load i8, ptr %76, align 1, !tbaa !78
  %134 = icmp eq i8 %133, 4
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %137 = load i32, ptr %136, align 4, !tbaa !96
  %138 = icmp ult i32 %137, 5
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %141 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %142

142:                                              ; preds = %139, %152
  %143 = phi i32 [ 0, %139 ], [ %153, %152 ]
  %144 = load i8, ptr %76, align 1, !tbaa !78
  %145 = icmp eq i8 %144, 4
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load ptr, ptr %140, align 8, !tbaa !93
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %141, align 4, !tbaa !76
  %151 = zext nneg i8 %144 to i32
  call void %147(ptr noundef %0, ptr noundef null, i32 noundef %150, i32 noundef %151) #13
  br label %152

152:                                              ; preds = %146, %149
  call void @png_read_push_finish_row(ptr noundef %0)
  %153 = add nuw nsw i32 %143, 1
  %154 = icmp eq i32 %143, 0
  br i1 %154, label %142, label %155, !llvm.loop !97

155:                                              ; preds = %142, %152, %135, %132
  %156 = load i8, ptr %76, align 1, !tbaa !78
  %157 = icmp eq i8 %156, 6
  br i1 %157, label %158, label %388

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %160 = load i32, ptr %159, align 4, !tbaa !96
  %161 = icmp ult i32 %160, 5
  br i1 %161, label %162, label %388

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %164 = load ptr, ptr %163, align 8, !tbaa !93
  %165 = icmp eq ptr %164, null
  br i1 %165, label %387, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %168 = load i32, ptr %167, align 4, !tbaa !76
  %169 = zext nneg i8 %156 to i32
  call void %164(ptr noundef %0, ptr noundef null, i32 noundef %168, i32 noundef %169) #13
  br label %387

170:                                              ; preds = %94, %182
  %171 = phi i32 [ 0, %94 ], [ %183, %182 ]
  %172 = load i8, ptr %76, align 1, !tbaa !78
  %173 = icmp eq i8 %172, 1
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load ptr, ptr %85, align 8, !tbaa !93
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %31, align 8, !tbaa !71
  %179 = getelementptr inbounds i8, ptr %178, i64 1
  %180 = load i32, ptr %95, align 4, !tbaa !76
  %181 = zext nneg i8 %172 to i32
  call void %175(ptr noundef %0, ptr noundef nonnull %179, i32 noundef %180, i32 noundef %181) #13
  br label %182

182:                                              ; preds = %174, %177
  call void @png_read_push_finish_row(ptr noundef %0)
  %183 = add nuw nsw i32 %171, 1
  %184 = icmp eq i32 %183, 8
  br i1 %184, label %185, label %170, !llvm.loop !98

185:                                              ; preds = %182, %170
  %186 = load i8, ptr %76, align 1, !tbaa !78
  %187 = icmp eq i8 %186, 2
  br i1 %187, label %188, label %388

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %190 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %191

191:                                              ; preds = %188, %201
  %192 = phi i32 [ 0, %188 ], [ %202, %201 ]
  %193 = load i8, ptr %76, align 1, !tbaa !78
  %194 = icmp eq i8 %193, 2
  br i1 %194, label %195, label %388

195:                                              ; preds = %191
  %196 = load ptr, ptr %189, align 8, !tbaa !93
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, ptr %190, align 4, !tbaa !76
  %200 = zext nneg i8 %193 to i32
  call void %196(ptr noundef %0, ptr noundef null, i32 noundef %199, i32 noundef %200) #13
  br label %201

201:                                              ; preds = %195, %198
  call void @png_read_push_finish_row(ptr noundef %0)
  %202 = add nuw nsw i32 %192, 1
  %203 = icmp eq i32 %202, 4
  br i1 %203, label %388, label %191, !llvm.loop !99

204:                                              ; preds = %92, %216
  %205 = phi i32 [ 0, %92 ], [ %217, %216 ]
  %206 = load i8, ptr %76, align 1, !tbaa !78
  %207 = icmp eq i8 %206, 2
  br i1 %207, label %208, label %219

208:                                              ; preds = %204
  %209 = load ptr, ptr %85, align 8, !tbaa !93
  %210 = icmp eq ptr %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr %31, align 8, !tbaa !71
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  %214 = load i32, ptr %93, align 4, !tbaa !76
  %215 = zext nneg i8 %206 to i32
  call void %209(ptr noundef %0, ptr noundef nonnull %213, i32 noundef %214, i32 noundef %215) #13
  br label %216

216:                                              ; preds = %208, %211
  call void @png_read_push_finish_row(ptr noundef %0)
  %217 = add nuw nsw i32 %205, 1
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %219, label %204, !llvm.loop !100

219:                                              ; preds = %216, %204
  %220 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %221 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %222

222:                                              ; preds = %219, %232
  %223 = phi i32 [ 0, %219 ], [ %233, %232 ]
  %224 = load i8, ptr %76, align 1, !tbaa !78
  %225 = icmp eq i8 %224, 2
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  %227 = load ptr, ptr %220, align 8, !tbaa !93
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i32, ptr %221, align 4, !tbaa !76
  %231 = zext nneg i8 %224 to i32
  call void %227(ptr noundef %0, ptr noundef null, i32 noundef %230, i32 noundef %231) #13
  br label %232

232:                                              ; preds = %226, %229
  call void @png_read_push_finish_row(ptr noundef %0)
  %233 = add nuw nsw i32 %223, 1
  %234 = icmp eq i32 %233, 4
  br i1 %234, label %235, label %222, !llvm.loop !101

235:                                              ; preds = %232, %222
  %236 = load i8, ptr %76, align 1, !tbaa !78
  %237 = icmp eq i8 %236, 4
  br i1 %237, label %238, label %388

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %240 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %241

241:                                              ; preds = %238, %251
  %242 = phi i32 [ 0, %238 ], [ %252, %251 ]
  %243 = load i8, ptr %76, align 1, !tbaa !78
  %244 = icmp eq i8 %243, 4
  br i1 %244, label %245, label %388

245:                                              ; preds = %241
  %246 = load ptr, ptr %239, align 8, !tbaa !93
  %247 = icmp eq ptr %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, ptr %240, align 4, !tbaa !76
  %250 = zext nneg i8 %243 to i32
  call void %246(ptr noundef %0, ptr noundef null, i32 noundef %249, i32 noundef %250) #13
  br label %251

251:                                              ; preds = %245, %248
  call void @png_read_push_finish_row(ptr noundef %0)
  %252 = add nuw nsw i32 %242, 1
  %253 = icmp eq i32 %242, 0
  br i1 %253, label %241, label %388, !llvm.loop !102

254:                                              ; preds = %90, %266
  %255 = phi i32 [ 0, %90 ], [ %267, %266 ]
  %256 = load i8, ptr %76, align 1, !tbaa !78
  %257 = icmp eq i8 %256, 3
  br i1 %257, label %258, label %269

258:                                              ; preds = %254
  %259 = load ptr, ptr %85, align 8, !tbaa !93
  %260 = icmp eq ptr %259, null
  br i1 %260, label %266, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %31, align 8, !tbaa !71
  %263 = getelementptr inbounds i8, ptr %262, i64 1
  %264 = load i32, ptr %91, align 4, !tbaa !76
  %265 = zext nneg i8 %256 to i32
  call void %259(ptr noundef %0, ptr noundef nonnull %263, i32 noundef %264, i32 noundef %265) #13
  br label %266

266:                                              ; preds = %258, %261
  call void @png_read_push_finish_row(ptr noundef %0)
  %267 = add nuw nsw i32 %255, 1
  %268 = icmp eq i32 %267, 4
  br i1 %268, label %269, label %254, !llvm.loop !103

269:                                              ; preds = %266, %254
  %270 = load i8, ptr %76, align 1, !tbaa !78
  %271 = icmp eq i8 %270, 4
  br i1 %271, label %272, label %388

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %274 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %275

275:                                              ; preds = %272, %285
  %276 = phi i32 [ 0, %272 ], [ %286, %285 ]
  %277 = load i8, ptr %76, align 1, !tbaa !78
  %278 = icmp eq i8 %277, 4
  br i1 %278, label %279, label %388

279:                                              ; preds = %275
  %280 = load ptr, ptr %273, align 8, !tbaa !93
  %281 = icmp eq ptr %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr %274, align 4, !tbaa !76
  %284 = zext nneg i8 %277 to i32
  call void %280(ptr noundef %0, ptr noundef null, i32 noundef %283, i32 noundef %284) #13
  br label %285

285:                                              ; preds = %279, %282
  call void @png_read_push_finish_row(ptr noundef %0)
  %286 = add nuw nsw i32 %276, 1
  %287 = icmp eq i32 %276, 0
  br i1 %287, label %275, label %388, !llvm.loop !104

288:                                              ; preds = %88, %300
  %289 = phi i32 [ 0, %88 ], [ %301, %300 ]
  %290 = load i8, ptr %76, align 1, !tbaa !78
  %291 = icmp eq i8 %290, 4
  br i1 %291, label %292, label %303

292:                                              ; preds = %288
  %293 = load ptr, ptr %85, align 8, !tbaa !93
  %294 = icmp eq ptr %293, null
  br i1 %294, label %300, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %31, align 8, !tbaa !71
  %297 = getelementptr inbounds i8, ptr %296, i64 1
  %298 = load i32, ptr %89, align 4, !tbaa !76
  %299 = zext nneg i8 %290 to i32
  call void %293(ptr noundef %0, ptr noundef nonnull %297, i32 noundef %298, i32 noundef %299) #13
  br label %300

300:                                              ; preds = %292, %295
  call void @png_read_push_finish_row(ptr noundef %0)
  %301 = add nuw nsw i32 %289, 1
  %302 = icmp eq i32 %289, 0
  br i1 %302, label %288, label %303, !llvm.loop !105

303:                                              ; preds = %300, %288
  %304 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %305 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  br label %306

306:                                              ; preds = %303, %316
  %307 = phi i32 [ 0, %303 ], [ %317, %316 ]
  %308 = load i8, ptr %76, align 1, !tbaa !78
  %309 = icmp eq i8 %308, 4
  br i1 %309, label %310, label %319

310:                                              ; preds = %306
  %311 = load ptr, ptr %304, align 8, !tbaa !93
  %312 = icmp eq ptr %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %305, align 4, !tbaa !76
  %315 = zext nneg i8 %308 to i32
  call void %311(ptr noundef %0, ptr noundef null, i32 noundef %314, i32 noundef %315) #13
  br label %316

316:                                              ; preds = %310, %313
  call void @png_read_push_finish_row(ptr noundef %0)
  %317 = add nuw nsw i32 %307, 1
  %318 = icmp eq i32 %307, 0
  br i1 %318, label %306, label %319, !llvm.loop !106

319:                                              ; preds = %316, %306
  %320 = load i8, ptr %76, align 1, !tbaa !78
  %321 = icmp eq i8 %320, 6
  br i1 %321, label %322, label %388

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %324 = load ptr, ptr %323, align 8, !tbaa !93
  %325 = icmp eq ptr %324, null
  br i1 %325, label %387, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %328 = load i32, ptr %327, align 4, !tbaa !76
  %329 = zext nneg i8 %320 to i32
  call void %324(ptr noundef %0, ptr noundef null, i32 noundef %328, i32 noundef %329) #13
  br label %387

330:                                              ; preds = %86, %342
  %331 = phi i32 [ 0, %86 ], [ %343, %342 ]
  %332 = load i8, ptr %76, align 1, !tbaa !78
  %333 = icmp eq i8 %332, 5
  br i1 %333, label %334, label %345

334:                                              ; preds = %330
  %335 = load ptr, ptr %85, align 8, !tbaa !93
  %336 = icmp eq ptr %335, null
  br i1 %336, label %342, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr %31, align 8, !tbaa !71
  %339 = getelementptr inbounds i8, ptr %338, i64 1
  %340 = load i32, ptr %87, align 4, !tbaa !76
  %341 = zext nneg i8 %332 to i32
  call void %335(ptr noundef %0, ptr noundef nonnull %339, i32 noundef %340, i32 noundef %341) #13
  br label %342

342:                                              ; preds = %334, %337
  call void @png_read_push_finish_row(ptr noundef %0)
  %343 = add nuw nsw i32 %331, 1
  %344 = icmp eq i32 %331, 0
  br i1 %344, label %330, label %345, !llvm.loop !107

345:                                              ; preds = %342, %330
  %346 = load i8, ptr %76, align 1, !tbaa !78
  %347 = icmp eq i8 %346, 6
  br i1 %347, label %348, label %388

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %350 = load ptr, ptr %349, align 8, !tbaa !93
  %351 = icmp eq ptr %350, null
  br i1 %351, label %387, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %354 = load i32, ptr %353, align 4, !tbaa !76
  %355 = zext nneg i8 %346 to i32
  call void %350(ptr noundef %0, ptr noundef null, i32 noundef %354, i32 noundef %355) #13
  br label %387

356:                                              ; preds = %83
  %357 = load ptr, ptr %85, align 8, !tbaa !93
  %358 = icmp eq ptr %357, null
  br i1 %358, label %365, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr %31, align 8, !tbaa !71
  %361 = getelementptr inbounds i8, ptr %360, i64 1
  %362 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %363 = load i32, ptr %362, align 4, !tbaa !76
  %364 = zext i8 %84 to i32
  call void %357(ptr noundef %0, ptr noundef nonnull %361, i32 noundef %363, i32 noundef %364) #13
  br label %365

365:                                              ; preds = %356, %359
  call void @png_read_push_finish_row(ptr noundef %0)
  %366 = load i8, ptr %76, align 1, !tbaa !78
  %367 = icmp eq i8 %366, 6
  br i1 %367, label %368, label %388

368:                                              ; preds = %365
  %369 = load ptr, ptr %85, align 8, !tbaa !93
  %370 = icmp eq ptr %369, null
  br i1 %370, label %387, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %373 = load i32, ptr %372, align 4, !tbaa !76
  %374 = zext nneg i8 %366 to i32
  call void %369(ptr noundef %0, ptr noundef null, i32 noundef %373, i32 noundef %374) #13
  br label %387

375:                                              ; preds = %71, %67
  %376 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %377 = load ptr, ptr %376, align 8, !tbaa !93
  %378 = icmp eq ptr %377, null
  br i1 %378, label %387, label %379

379:                                              ; preds = %375
  %380 = load ptr, ptr %31, align 8, !tbaa !71
  %381 = getelementptr inbounds i8, ptr %380, i64 1
  %382 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %383 = load i32, ptr %382, align 4, !tbaa !76
  %384 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %385 = load i8, ptr %384, align 1, !tbaa !78
  %386 = zext i8 %385 to i32
  call void %377(ptr noundef %0, ptr noundef nonnull %381, i32 noundef %383, i32 noundef %386) #13
  br label %387

387:                                              ; preds = %379, %375, %371, %368, %352, %348, %326, %322, %166, %162
  call void @png_read_push_finish_row(ptr noundef %0)
  br label %388

388:                                              ; preds = %285, %275, %251, %241, %201, %191, %387, %345, %319, %269, %235, %185, %155, %158, %365
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  ret void
}

declare void @png_read_filter_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @png_do_read_transformations(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_do_read_interlace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_push_have_row(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %10 = load i8, ptr %9, align 1, !tbaa !78
  %11 = zext i8 %10 to i32
  tail call void %4(ptr noundef %0, ptr noundef %1, i32 noundef %8, i32 noundef %11) #13
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_read_push_finish_row(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !76
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %82, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %10 = load i8, ptr %9, align 4, !tbaa !92
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !tbaa !76
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = add i64 %16, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %20 = load i8, ptr %19, align 1, !tbaa !78
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %27

27:                                               ; preds = %66, %12
  %28 = phi i8 [ %48, %66 ], [ %20, %12 ]
  %29 = add i8 %28, 1
  switch i8 %28, label %44 [
    i8 0, label %30
    i8 2, label %34
    i8 4, label %39
  ]

30:                                               ; preds = %27
  %31 = load i32, ptr %21, align 8, !tbaa !109
  %32 = icmp ult i32 %31, 5
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  switch i8 %28, label %44 [
    i8 2, label %34
    i8 4, label %39
  ]

34:                                               ; preds = %27, %33
  %35 = load i32, ptr %22, align 8, !tbaa !109
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = icmp eq i8 %29, 5
  br i1 %38, label %39, label %44

39:                                               ; preds = %27, %33, %37
  %40 = load i32, ptr %23, align 8, !tbaa !109
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %34, %30
  %43 = add i8 %28, 2
  br label %44

44:                                               ; preds = %27, %33, %42, %39, %37
  %45 = phi i8 [ %29, %27 ], [ %29, %33 ], [ %43, %42 ], [ %29, %39 ], [ %29, %37 ]
  %46 = icmp ugt i8 %45, 7
  %47 = sext i1 %46 to i8
  %48 = add i8 %45, %47
  %49 = icmp ugt i8 %48, 6
  br i1 %49, label %81, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %18, align 8, !tbaa !109
  %52 = zext nneg i8 %48 to i64
  %53 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_inc, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !56
  %55 = zext i8 %54 to i32
  %56 = add i32 %51, %55
  %57 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_start, i64 0, i64 %52
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, -1
  %61 = add i32 %56, %60
  %62 = udiv i32 %61, %55
  store i32 %62, ptr %24, align 8, !tbaa !69
  %63 = load i32, ptr %25, align 4, !tbaa !89
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %50
  %67 = load i32, ptr %26, align 4, !tbaa !96
  %68 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_yinc, i64 0, i64 %52
  %69 = load i8, ptr %68, align 1, !tbaa !56
  %70 = zext i8 %69 to i32
  %71 = add i32 %67, %70
  %72 = getelementptr inbounds [7 x i8], ptr @png_read_push_finish_row.png_pass_ystart, i64 0, i64 %52
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, -1
  %76 = add i32 %71, %75
  %77 = udiv i32 %76, %70
  store i32 %77, ptr %5, align 8, !tbaa !77
  %78 = icmp ult i32 %61, %55
  %79 = icmp ult i32 %76, %70
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %27, label %81, !llvm.loop !110

81:                                               ; preds = %50, %44, %66
  store i8 %48, ptr %19, align 1, !tbaa !78
  br label %82

82:                                               ; preds = %81, %1, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @png_progressive_combine_row(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #13
  br label %8

8:                                                ; preds = %3, %7
  ret void
}

declare void @png_combine_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @png_set_progressive_read_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 89
  store ptr %2, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 90
  store ptr %3, ptr %9, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 91
  store ptr %4, ptr %10, align 8, !tbaa !64
  tail call void @png_set_read_fn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @png_push_fill_buffer) #13
  br label %11

11:                                               ; preds = %5, %7
  ret void
}

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

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
!34 = !{!35, !38, i64 824}
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
!46 = !{!35, !41, i64 864}
!47 = !{!35, !41, i64 840}
!48 = !{!35, !41, i64 856}
!49 = !{!35, !38, i64 816}
!50 = !{!35, !39, i64 872}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!35, !38, i64 800}
!55 = !{!35, !38, i64 808}
!56 = !{!36, !36, i64 0}
!57 = distinct !{!57, !52, !53}
!58 = !{!35, !41, i64 848}
!59 = !{!35, !39, i64 836}
!60 = !{!35, !36, i64 597}
!61 = !{!35, !39, i64 284}
!62 = !{!35, !39, i64 832}
!63 = !{!35, !39, i64 496}
!64 = !{!35, !38, i64 792}
!65 = !{!35, !36, i64 591}
!66 = !{!35, !39, i64 560}
!67 = !{!35, !38, i64 776}
!68 = !{!35, !36, i64 594}
!69 = !{!35, !39, i64 488}
!70 = !{!35, !39, i64 328}
!71 = !{!35, !38, i64 512}
!72 = !{!35, !38, i64 320}
!73 = !{!35, !39, i64 288}
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
!93 = !{!35, !38, i64 784}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = !{!35, !39, i64 468}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = !{!35, !41, i64 480}
!109 = !{!35, !39, i64 464}
!110 = distinct !{!110, !52, !53}
!111 = !{!35, !38, i64 248}

; ModuleID = 'ldecod_src/mbuffer.c'
source_filename = "ldecod_src/mbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [1024 x i32], i32, i32, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [2 x i32], [2 x i32] }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, ptr }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@.str = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"max_dec_frame_buffering larger than MaxDpbSize\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Max. number of reference frames exceeded. Invalid stream.\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"init_dpb: p_Dpb->fs\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"init_dpb: p_Dpb->fs_ref\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"init_dpb: p_Dpb->fs_ltref\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"re_init_dpb: p_Dpb->fs\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"re_init_dpb: p_Dpb->fs_ref\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"re_init_dpb: p_Dpb->fs_ltref\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"alloc_frame_store: f\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"alloc_storable_picture: motion->mb_field\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"alloc_storable_picture: s\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"alloc_storable_picture: s->listX[i]\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview0\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview1\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"duplicate frame_num in short-term reference picture buffer\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l0\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l0\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l1\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l1\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Error: iVOIdx: %d is not less than 0\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@str = private unnamed_addr constant [48 x i8] c"A gap in frame number is found, try to fill it.\00", align 1
@str.42 = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00", align 1
@str.44 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00", align 1
@str.45 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_dpb(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getDpbSize(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 29
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = add i32 %6, 1
  %8 = mul i32 %7, %4
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = shl i32 %8, %12
  %14 = mul i32 %13, 384
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !44
  switch i32 %16, label %41 [
    i32 9, label %42
    i32 10, label %42
    i32 11, label %17
    i32 12, label %28
    i32 13, label %29
    i32 20, label %30
    i32 21, label %31
    i32 22, label %32
    i32 30, label %33
    i32 31, label %34
    i32 32, label %35
    i32 40, label %36
    i32 41, label %37
    i32 42, label %38
    i32 50, label %39
    i32 51, label %40
  ]

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp ugt i32 %19, 99
  %21 = icmp eq i32 %19, 44
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %42, label %27

27:                                               ; preds = %23, %17
  br label %42

28:                                               ; preds = %1
  br label %42

29:                                               ; preds = %1
  br label %42

30:                                               ; preds = %1
  br label %42

31:                                               ; preds = %1
  br label %42

32:                                               ; preds = %1
  br label %42

33:                                               ; preds = %1
  br label %42

34:                                               ; preds = %1
  br label %42

35:                                               ; preds = %1
  br label %42

36:                                               ; preds = %1
  br label %42

37:                                               ; preds = %1
  br label %42

38:                                               ; preds = %1
  br label %42

39:                                               ; preds = %1
  br label %42

40:                                               ; preds = %1
  br label %42

41:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #20
  br label %42

42:                                               ; preds = %23, %1, %1, %27, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28
  %43 = phi i32 [ 0, %41 ], [ 70778880, %40 ], [ 42393600, %39 ], [ 13369344, %38 ], [ 12582912, %37 ], [ 12582912, %36 ], [ 7864320, %35 ], [ 6912000, %34 ], [ 3110400, %33 ], [ 3110400, %32 ], [ 1824768, %31 ], [ 912384, %30 ], [ 912384, %29 ], [ 912384, %28 ], [ 345600, %27 ], [ 152064, %1 ], [ 152064, %1 ], [ 152064, %23 ]
  %44 = sdiv i32 %43, %14
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 16)
  %46 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 38
  %47 = load i32, ptr %46, align 4, !tbaa !47
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 39, i32 26
  %51 = load i32, ptr %50, align 4, !tbaa !48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 39, i32 33
  %55 = load i32, ptr %54, align 4, !tbaa !49
  %56 = icmp sgt i32 %55, %45
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #20
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, ptr %54, align 4, !tbaa !49
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 1)
  br label %61

61:                                               ; preds = %58, %49, %42
  %62 = phi i32 [ %60, %58 ], [ %45, %49 ], [ %45, %42 ]
  ret i32 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @check_num_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #20
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_dpb(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  store ptr %0, ptr %1, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @free_dpb(ptr noundef nonnull %1)
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 71
  %11 = load i32, ptr %10, align 4, !tbaa !63
  switch i32 %11, label %15 [
    i32 118, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef %0), !range !64
  %14 = add nsw i32 %13, 2
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 @getDpbSize(ptr noundef %4)
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  store i32 %18, ptr %19, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !45
  switch i32 %21, label %27 [
    i32 118, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !65
  %25 = shl i32 %24, 1
  %26 = add i32 %25, 2
  store i32 %26, ptr %23, align 8, !tbaa !65
  br label %27

27:                                               ; preds = %17, %22
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 26
  %29 = load i32, ptr %28, align 4, !tbaa !66
  %30 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 13
  store i32 %29, ptr %30, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 41
  %32 = load i32, ptr %31, align 4, !tbaa !67
  %33 = icmp ult i32 %32, %29
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 1000) #20
  br label %35

35:                                               ; preds = %34, %27
  %36 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 6
  store i32 0, ptr %36, align 4, !tbaa !68
  %37 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 14
  store ptr null, ptr %37, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 7
  store i32 0, ptr %38, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 8
  store i32 0, ptr %39, align 4, !tbaa !50
  %40 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !65
  %42 = zext i32 %41 to i64
  %43 = tail call noalias ptr @calloc(i64 noundef %42, i64 noundef 8) #21
  %44 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !70
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #20
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, ptr %40, align 8, !tbaa !65
  %49 = zext i32 %48 to i64
  %50 = tail call noalias ptr @calloc(i64 noundef %49, i64 noundef 8) #21
  %51 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !71
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #20
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, ptr %40, align 8, !tbaa !65
  %56 = zext i32 %55 to i64
  %57 = tail call noalias ptr @calloc(i64 noundef %56, i64 noundef 8) #21
  %58 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 4
  store ptr %57, ptr %58, align 8, !tbaa !72
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #20
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, ptr %40, align 8, !tbaa !65
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %61, %69
  %65 = phi i64 [ %83, %69 ], [ 0, %61 ]
  %66 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %69

69:                                               ; preds = %64, %68
  %70 = getelementptr inbounds %struct.frame_store, ptr %66, i64 0, i32 9
  store i32 0, ptr %70, align 4, !tbaa !73
  %71 = getelementptr inbounds %struct.frame_store, ptr %66, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  %72 = load ptr, ptr %44, align 8, !tbaa !70
  %73 = getelementptr inbounds ptr, ptr %72, i64 %65
  store ptr %66, ptr %73, align 8, !tbaa !75
  %74 = load ptr, ptr %51, align 8, !tbaa !71
  %75 = getelementptr inbounds ptr, ptr %74, i64 %65
  store ptr null, ptr %75, align 8, !tbaa !75
  %76 = load ptr, ptr %58, align 8, !tbaa !72
  %77 = getelementptr inbounds ptr, ptr %76, i64 %65
  store ptr null, ptr %77, align 8, !tbaa !75
  %78 = load ptr, ptr %44, align 8, !tbaa !70
  %79 = getelementptr inbounds ptr, ptr %78, i64 %65
  %80 = load ptr, ptr %79, align 8, !tbaa !75
  %81 = getelementptr inbounds %struct.frame_store, ptr %80, i64 0, i32 15
  store i32 -1, ptr %81, align 8, !tbaa !76
  %82 = getelementptr inbounds %struct.frame_store, ptr %80, i64 0, i32 16
  %83 = add nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %82, i8 0, i64 16, i1 false)
  %84 = load i32, ptr %40, align 8, !tbaa !65
  %85 = zext i32 %84 to i64
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %64, label %87, !llvm.loop !77

87:                                               ; preds = %69, %61
  %88 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %89 = load i32, ptr %88, align 4, !tbaa !80
  %90 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %91 = load i32, ptr %90, align 8, !tbaa !81
  %92 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %93 = load i32, ptr %92, align 4, !tbaa !82
  %94 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %95 = load i32, ptr %94, align 8, !tbaa !83
  %96 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 0, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95)
  %97 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  store ptr %96, ptr %97, align 8, !tbaa !84
  %98 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 40
  store ptr %96, ptr %98, align 8, !tbaa !85
  %99 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 41
  store ptr %96, ptr %99, align 8, !tbaa !88
  %100 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 42
  store ptr %96, ptr %100, align 8, !tbaa !89
  %101 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 9
  store i32 -2147483648, ptr %101, align 8, !tbaa !90
  %102 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 10
  store i32 -1, ptr %102, align 4, !tbaa !91
  %103 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  store i32 0, ptr %103, align 4, !tbaa !92
  store i32 1, ptr %5, align 8, !tbaa !62
  %104 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 95
  %105 = load i32, ptr %104, align 8, !tbaa !93
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %87
  %108 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %111

111:                                              ; preds = %107, %110
  %112 = getelementptr inbounds %struct.frame_store, ptr %108, i64 0, i32 9
  store i32 0, ptr %112, align 4, !tbaa !73
  %113 = getelementptr inbounds %struct.frame_store, ptr %108, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %108, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %113, i8 0, i64 24, i1 false)
  %114 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 134
  store ptr %108, ptr %114, align 8, !tbaa !94
  br label %115

115:                                              ; preds = %111, %87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_dpb(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %6, %32
  %11 = phi i64 [ %33, %32 ], [ 0, %6 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free_storable_picture(ptr noundef nonnull %18)
  store ptr null, ptr %17, align 8, !tbaa !95
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free_storable_picture(ptr noundef nonnull %23)
  store ptr null, ptr %22, align 8, !tbaa !96
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free_storable_picture(ptr noundef nonnull %28)
  store ptr null, ptr %27, align 8, !tbaa !97
  br label %31

31:                                               ; preds = %30, %26
  tail call void @free(ptr noundef %14) #20
  br label %32

32:                                               ; preds = %10, %31
  %33 = add nuw nsw i64 %11, 1
  %34 = load i32, ptr %7, align 8, !tbaa !65
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %10, label %37, !llvm.loop !98

37:                                               ; preds = %32, %6
  %38 = load ptr, ptr %3, align 8, !tbaa !70
  tail call void @free(ptr noundef %38) #20
  store ptr null, ptr %3, align 8, !tbaa !70
  br label %39

39:                                               ; preds = %37, %1
  %40 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @free(ptr noundef %41) #20
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @free(ptr noundef %46) #20
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 -2147483648, ptr %50, align 8, !tbaa !90
  %51 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  store i32 -1, ptr %51, align 4, !tbaa !91
  %52 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 12
  store i32 0, ptr %52, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 95
  %54 = load i32, ptr %53, align 8, !tbaa !93
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 134
  %58 = load ptr, ptr %57, align 8, !tbaa !94
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.frame_store, ptr %58, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @free_storable_picture(ptr noundef nonnull %62)
  store ptr null, ptr %61, align 8, !tbaa !95
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.frame_store, ptr %58, i64 0, i32 13
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @free_storable_picture(ptr noundef nonnull %67)
  store ptr null, ptr %66, align 8, !tbaa !96
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %struct.frame_store, ptr %58, i64 0, i32 14
  %72 = load ptr, ptr %71, align 8, !tbaa !97
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @free_storable_picture(ptr noundef nonnull %72)
  store ptr null, ptr %71, align 8, !tbaa !97
  br label %75

75:                                               ; preds = %74, %70
  tail call void @free(ptr noundef %58) #20
  br label %76

76:                                               ; preds = %75, %56, %49
  %77 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %78 = load ptr, ptr %77, align 8, !tbaa !84
  tail call void @free_storable_picture(ptr noundef %78)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMaxDecFrameBuffering(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %1, %63
  %5 = phi ptr [ %3, %1 ], [ %66, %63 ]
  %6 = phi ptr [ %2, %1 ], [ %65, %63 ]
  %7 = phi i32 [ 0, %1 ], [ %39, %63 ]
  %8 = phi i32 [ 0, %1 ], [ %64, %63 ]
  %9 = phi i32 [ 0, %1 ], [ %67, %63 ]
  %10 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 20
  %11 = load i32, ptr %10, align 4, !tbaa !99
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 41
  %19 = load i32, ptr %18, align 4, !tbaa !103
  %20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 38
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 39, i32 26
  %25 = load i32, ptr %24, align 4, !tbaa !105
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 39, i32 33
  %29 = load i32, ptr %28, align 4, !tbaa !106
  %30 = icmp sgt i32 %29, %19
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #20
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr %28, align 4, !tbaa !106
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 1)
  br label %35

35:                                               ; preds = %32, %23, %17
  %36 = phi i32 [ %34, %32 ], [ %19, %23 ], [ %19, %17 ]
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 %7)
  br label %38

38:                                               ; preds = %35, %13, %4
  %39 = phi i32 [ %7, %13 ], [ %7, %4 ], [ %37, %35 ]
  %40 = load i32, ptr %5, align 4, !tbaa !107
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 41
  %44 = load i32, ptr %43, align 4, !tbaa !67
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 38
  %46 = load i32, ptr %45, align 4, !tbaa !47
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 26
  %50 = load i32, ptr %49, align 4, !tbaa !48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 33
  %54 = load i32, ptr %53, align 4, !tbaa !49
  %55 = icmp sgt i32 %54, %44
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #20
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, ptr %53, align 4, !tbaa !49
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 1)
  br label %60

60:                                               ; preds = %57, %48, %42
  %61 = phi i32 [ %59, %57 ], [ %44, %48 ], [ %44, %42 ]
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 %8)
  br label %63

63:                                               ; preds = %60, %38
  %64 = phi i32 [ %8, %38 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 1
  %66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 1
  %67 = add nuw nsw i32 %9, 1
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %4, !llvm.loop !108

69:                                               ; preds = %63
  %70 = icmp sgt i32 %64, 0
  %71 = icmp sgt i32 %39, 0
  %72 = select i1 %70, i1 %71, i1 false
  %73 = add nuw nsw i32 %39, %64
  %74 = select i1 %70, i32 %64, i32 %39
  %75 = shl nuw nsw i32 %74, 1
  %76 = select i1 %72, i32 %73, i32 %75
  ret i32 %76
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @alloc_frame_store() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %4

4:                                                ; preds = %3, %0
  %5 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 9
  store i32 0, ptr %5, align 4, !tbaa !73
  %6 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @alloc_storable_picture(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call noalias dereferenceable_or_null(416) ptr @calloc(i64 noundef 1, i64 noundef 416) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #20
  br label %12

12:                                               ; preds = %11, %6
  %13 = icmp ne i32 %1, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = sdiv i32 %3, 2
  %16 = sdiv i32 %5, 2
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %16, %14 ], [ %5, %12 ]
  %19 = phi i32 [ %15, %14 ], [ %3, %12 ]
  %20 = mul nsw i32 %19, %2
  %21 = sdiv i32 %20, 256
  %22 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 27
  store i32 %21, ptr %22, align 4, !tbaa !109
  %23 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  store ptr null, ptr %23, align 8, !tbaa !110
  %24 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 32
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 173
  %26 = load i32, ptr %25, align 4, !tbaa !111
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 172
  %28 = load i32, ptr %27, align 8, !tbaa !112
  %29 = tail call i32 @get_mem2DpelWithPad(ptr noundef nonnull %24, i32 noundef %19, i32 noundef %2, i32 noundef %26, i32 noundef %28) #20
  %30 = load i32, ptr %27, align 8, !tbaa !112
  %31 = shl nsw i32 %30, 1
  %32 = add nsw i32 %31, %2
  %33 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 67
  store i32 %32, ptr %33, align 4, !tbaa !113
  %34 = load i32, ptr %25, align 4, !tbaa !111
  %35 = shl nsw i32 %34, 1
  %36 = add nsw i32 %35, %19
  %37 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 69
  store i32 %36, ptr %37, align 4, !tbaa !114
  %38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %8, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !115
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  %43 = load i32, ptr %42, align 4, !tbaa !116
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  %45 = load i32, ptr %44, align 8, !tbaa !117
  %46 = tail call i32 @get_mem3DpelWithPad(ptr noundef nonnull %23, i32 noundef 2, i32 noundef %18, i32 noundef %4, i32 noundef %43, i32 noundef %45) #20
  br label %47

47:                                               ; preds = %41, %17
  %48 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  %49 = load i32, ptr %48, align 8, !tbaa !117
  %50 = shl nsw i32 %49, 1
  %51 = add nsw i32 %50, %4
  %52 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 68
  store i32 %51, ptr %52, align 8, !tbaa !118
  %53 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  %54 = load i32, ptr %53, align 4, !tbaa !116
  %55 = shl nsw i32 %54, 1
  %56 = add nsw i32 %55, %18
  %57 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 70
  store i32 %56, ptr %57, align 8, !tbaa !119
  %58 = load i32, ptr %25, align 4, !tbaa !111
  %59 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 28
  store i32 %58, ptr %59, align 8, !tbaa !120
  %60 = load i32, ptr %27, align 8, !tbaa !112
  %61 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 29
  store i32 %60, ptr %61, align 4, !tbaa !121
  %62 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 30
  store i32 %54, ptr %62, align 8, !tbaa !122
  %63 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 31
  store i32 %49, ptr %63, align 4, !tbaa !123
  %64 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %65 = load i32, ptr %64, align 8, !tbaa !124
  %66 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 14
  store i32 %65, ptr %66, align 8, !tbaa !125
  %67 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 39
  %68 = sdiv i32 %19, 16
  %69 = sdiv i32 %2, 16
  %70 = tail call i32 @get_mem2Dshort(ptr noundef nonnull %67, i32 noundef %68, i32 noundef %69) #20
  %71 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 35
  %72 = sdiv i32 %19, 4
  %73 = sdiv i32 %2, 4
  %74 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %71, i32 noundef %72, i32 noundef %73) #20
  %75 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 37
  %76 = mul nsw i32 %72, %73
  %77 = sext i32 %76 to i64
  %78 = tail call noalias ptr @calloc(i64 noundef %77, i64 noundef 1) #21
  store ptr %78, ptr %75, align 8, !tbaa !126
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %81

81:                                               ; preds = %47, %80
  %82 = load i32, ptr %64, align 8, !tbaa !124
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81, %92
  %85 = phi i64 [ %93, %92 ], [ 0, %81 ]
  %86 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 36, i64 %85
  %87 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %86, i32 noundef %72, i32 noundef %73) #20
  %88 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 38, i64 %85
  %89 = tail call noalias ptr @calloc(i64 noundef %77, i64 noundef 1) #21
  store ptr %89, ptr %88, align 8, !tbaa !126
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %92

92:                                               ; preds = %84, %91
  %93 = add nuw nsw i64 %85, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %95, label %84, !llvm.loop !127

95:                                               ; preds = %92, %81
  %96 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 7
  %97 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 5
  store i32 0, ptr %97, align 4, !tbaa !128
  %98 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 11
  store i32 0, ptr %98, align 4, !tbaa !129
  %99 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 13
  store i32 0, ptr %99, align 4, !tbaa !130
  %100 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 12
  store i32 0, ptr %100, align 8, !tbaa !131
  %101 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 15
  store i16 0, ptr %101, align 4, !tbaa !132
  %102 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %96, i8 0, i64 13, i1 false)
  store i32 -1, ptr %102, align 8, !tbaa !133
  store i32 %1, ptr %9, align 8, !tbaa !134
  %103 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 16
  store i32 %2, ptr %103, align 8, !tbaa !135
  %104 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  store i32 %19, ptr %104, align 4, !tbaa !136
  %105 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 18
  store i32 %4, ptr %105, align 8, !tbaa !137
  %106 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 19
  store i32 %18, ptr %106, align 4, !tbaa !138
  %107 = add nsw i32 %2, -1
  %108 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 20
  store i32 %107, ptr %108, align 8, !tbaa !139
  %109 = add nsw i32 %19, -1
  %110 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 21
  store i32 %109, ptr %110, align 4, !tbaa !140
  %111 = add nsw i32 %4, -1
  %112 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 22
  store i32 %111, ptr %112, align 8, !tbaa !141
  %113 = add nsw i32 %18, -1
  %114 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 23
  store i32 %113, ptr %114, align 4, !tbaa !142
  %115 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  %116 = load ptr, ptr %115, align 8, !tbaa !84
  %117 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 40
  store ptr %116, ptr %117, align 8, !tbaa !85
  %118 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 41
  store ptr %116, ptr %118, align 8, !tbaa !88
  %119 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 42
  store ptr %116, ptr %119, align 8, !tbaa !89
  %120 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 58
  store ptr null, ptr %120, align 8, !tbaa !143
  %121 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 24
  store i32 0, ptr %121, align 8, !tbaa !144
  %122 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 25
  store i32 0, ptr %122, align 4, !tbaa !145
  %123 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 1
  store i32 0, ptr %123, align 4, !tbaa !146
  %124 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 3
  store i32 0, ptr %124, align 4, !tbaa !147
  %125 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 2
  store i32 0, ptr %125, align 8, !tbaa !148
  %126 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 60
  store i32 0, ptr %126, align 4, !tbaa !149
  %127 = load ptr, ptr %7, align 8, !tbaa !55
  %128 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %127, i64 0, i32 30
  %129 = load i32, ptr %128, align 4, !tbaa !43
  %130 = icmp eq i32 %129, 0
  %131 = and i1 %13, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %95, %138
  %133 = phi i64 [ %139, %138 ], [ 0, %95 ]
  %134 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #21
  %135 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 75, i64 %133
  store ptr %134, ptr %135, align 8, !tbaa !75
  %136 = icmp eq ptr %134, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #20
  br label %138

138:                                              ; preds = %132, %137
  %139 = add nuw nsw i64 %133, 1
  %140 = icmp eq i64 %133, 0
  br i1 %140, label %132, label %141, !llvm.loop !150

141:                                              ; preds = %138, %95
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @re_init_dpb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 71
  %6 = load i32, ptr %5, align 4, !tbaa !63
  switch i32 %6, label %10 [
    i32 118, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef %0), !range !64
  %9 = add nsw i32 %8, 2
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @getDpbSize(ptr noundef %4)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !45
  switch i32 %15, label %19 [
    i32 118, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %12, %12
  %17 = shl i32 %13, 1
  %18 = add nsw i32 %17, 2
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi i32 [ %18, %16 ], [ %13, %12 ]
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 26
  %22 = load i32, ptr %21, align 4, !tbaa !66
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 13
  store i32 %22, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !65
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 41
  %29 = load i32, ptr %28, align 4, !tbaa !67
  %30 = icmp ult i32 %29, %22
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 1000) #20
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = sext i32 %20 to i64
  %36 = shl nsw i64 %35, 3
  %37 = tail call ptr @realloc(ptr noundef %34, i64 noundef %36) #22
  store ptr %37, ptr %33, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #20
  br label %40

40:                                               ; preds = %39, %32
  %41 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = tail call ptr @realloc(ptr noundef %42, i64 noundef %36) #22
  store ptr %43, ptr %41, align 8, !tbaa !71
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #20
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = tail call ptr @realloc(ptr noundef %48, i64 noundef %36) #22
  store ptr %49, ptr %47, align 8, !tbaa !72
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #20
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, ptr %24, align 8, !tbaa !65
  %54 = icmp slt i32 %53, %20
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = sext i32 %53 to i64
  br label %57

57:                                               ; preds = %55, %62
  %58 = phi i64 [ %56, %55 ], [ %76, %62 ]
  %59 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %62

62:                                               ; preds = %57, %61
  %63 = getelementptr inbounds %struct.frame_store, ptr %59, i64 0, i32 9
  store i32 0, ptr %63, align 4, !tbaa !73
  %64 = getelementptr inbounds %struct.frame_store, ptr %59, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %65 = load ptr, ptr %33, align 8, !tbaa !70
  %66 = getelementptr inbounds ptr, ptr %65, i64 %58
  store ptr %59, ptr %66, align 8, !tbaa !75
  %67 = load ptr, ptr %41, align 8, !tbaa !71
  %68 = getelementptr inbounds ptr, ptr %67, i64 %58
  store ptr null, ptr %68, align 8, !tbaa !75
  %69 = load ptr, ptr %47, align 8, !tbaa !72
  %70 = getelementptr inbounds ptr, ptr %69, i64 %58
  store ptr null, ptr %70, align 8, !tbaa !75
  %71 = load ptr, ptr %33, align 8, !tbaa !70
  %72 = getelementptr inbounds ptr, ptr %71, i64 %58
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 15
  store i32 -1, ptr %74, align 8, !tbaa !76
  %75 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 16
  %76 = add nsw i64 %58, 1
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %20, %77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  br i1 %78, label %79, label %57, !llvm.loop !151

79:                                               ; preds = %62, %52
  store i32 %20, ptr %24, align 8, !tbaa !65
  br label %80

80:                                               ; preds = %79, %19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @free_frame_store(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_storable_picture(ptr noundef nonnull %5)
  store ptr null, ptr %4, align 8, !tbaa !95
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free_storable_picture(ptr noundef nonnull %10)
  store ptr null, ptr %9, align 8, !tbaa !96
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free_storable_picture(ptr noundef nonnull %15)
  store ptr null, ptr %14, align 8, !tbaa !97
  br label %18

18:                                               ; preds = %17, %13
  tail call void @free(ptr noundef %0) #20
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_storable_picture(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %72, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 35
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_mem2Dmp(ptr noundef nonnull %5) #20
  store ptr null, ptr %4, align 8, !tbaa !152
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 37
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef %10) #20
  store ptr null, ptr %9, align 8, !tbaa !126
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !125
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13, %28
  %18 = phi i64 [ %29, %28 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 36, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @free_mem2Dmp(ptr noundef nonnull %20) #20
  store ptr null, ptr %19, align 8, !tbaa !75
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 38, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free(ptr noundef %25) #20
  store ptr null, ptr %24, align 8, !tbaa !126
  br label %28

28:                                               ; preds = %23, %27
  %29 = add nuw nsw i64 %18, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %17, !llvm.loop !153

31:                                               ; preds = %28, %13
  %32 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 32
  %33 = load ptr, ptr %32, align 8, !tbaa !154
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 28
  %37 = load i32, ptr %36, align 8, !tbaa !120
  %38 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 29
  %39 = load i32, ptr %38, align 4, !tbaa !121
  tail call void @free_mem2DpelWithPad(ptr noundef nonnull %33, i32 noundef %37, i32 noundef %39) #20
  store ptr null, ptr %32, align 8, !tbaa !154
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !110
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 30
  %46 = load i32, ptr %45, align 8, !tbaa !122
  %47 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 31
  %48 = load i32, ptr %47, align 4, !tbaa !123
  tail call void @free_mem3DpelWithPad(ptr noundef nonnull %42, i32 noundef %46, i32 noundef %48) #20
  store ptr null, ptr %41, align 8, !tbaa !110
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 39
  %51 = load ptr, ptr %50, align 8, !tbaa !155
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @free_mem2Dshort(ptr noundef nonnull %51) #20
  store ptr null, ptr %50, align 8, !tbaa !155
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 60
  %56 = load i32, ptr %55, align 4, !tbaa !149
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 63
  %60 = load ptr, ptr %59, align 8, !tbaa !156
  tail call void @free(ptr noundef %60) #20
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %68
  %63 = phi i64 [ %69, %68 ], [ 0, %61 ]
  %64 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 75, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void @free(ptr noundef %65) #20
  store ptr null, ptr %64, align 8, !tbaa !75
  br label %68

68:                                               ; preds = %62, %67
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %63, 0
  br i1 %70, label %62, label %71, !llvm.loop !157

71:                                               ; preds = %68
  tail call void @free(ptr noundef %0) #20
  br label %72

72:                                               ; preds = %71, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_pic_motion(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = mul nsw i32 %2, %1
  %5 = sext i32 %4 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !126
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #20
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

declare i32 @get_mem2DpelWithPad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem3DpelWithPad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem2Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem2Dmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_pic_motion(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !126
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #20
  store ptr null, ptr %0, align 8, !tbaa !126
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare void @free_mem2Dmp(ptr noundef) local_unnamed_addr #3

declare void @free_mem2DpelWithPad(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @free_mem3DpelWithPad(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @free_mem2Dshort(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @is_short_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !129
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !158
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @is_long_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !129
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !158
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @gen_pic_list_from_frame_list(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, ptr @is_short_ref, ptr @is_long_ref
  %9 = icmp eq i32 %0, 1
  %10 = icmp sgt i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %88

12:                                               ; preds = %6, %83
  %13 = phi i32 [ %84, %83 ], [ 0, %6 ]
  %14 = phi i32 [ %49, %83 ], [ 0, %6 ]
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %42
  %19 = phi i64 [ %17, %16 ], [ %43, %42 ]
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = load i32, ptr %21, align 8, !tbaa !159
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.frame_store, ptr %21, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !96
  %28 = tail call i32 %8(ptr noundef %27) #20, !callees !160
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = trunc i64 %19 to i32
  %32 = getelementptr inbounds ptr, ptr %1, i64 %19
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  %36 = load i8, ptr %4, align 1, !tbaa !161
  %37 = sext i8 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %3, i64 %37
  store ptr %35, ptr %38, align 8, !tbaa !75
  %39 = load i8, ptr %4, align 1, !tbaa !161
  %40 = add i8 %39, 1
  store i8 %40, ptr %4, align 1, !tbaa !161
  %41 = add nsw i32 %31, 1
  br label %48

42:                                               ; preds = %18, %25
  %43 = add nsw i64 %19, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, %2
  br i1 %45, label %46, label %18, !llvm.loop !162

46:                                               ; preds = %42
  %47 = trunc i64 %43 to i32
  br label %48

48:                                               ; preds = %46, %12, %30
  %49 = phi i32 [ %41, %30 ], [ %14, %12 ], [ %47, %46 ]
  %50 = icmp slt i32 %13, %2
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = sext i32 %13 to i64
  br label %53

53:                                               ; preds = %51, %77
  %54 = phi i64 [ %52, %51 ], [ %78, %77 ]
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = load i32, ptr %56, align 8, !tbaa !159
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.frame_store, ptr %56, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !97
  %63 = tail call i32 %8(ptr noundef %62) #20, !callees !160
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = trunc i64 %54 to i32
  %67 = getelementptr inbounds ptr, ptr %1, i64 %54
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  %69 = getelementptr inbounds %struct.frame_store, ptr %68, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !97
  %71 = load i8, ptr %4, align 1, !tbaa !161
  %72 = sext i8 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %3, i64 %72
  store ptr %70, ptr %73, align 8, !tbaa !75
  %74 = load i8, ptr %4, align 1, !tbaa !161
  %75 = add i8 %74, 1
  store i8 %75, ptr %4, align 1, !tbaa !161
  %76 = add nsw i32 %66, 1
  br label %83

77:                                               ; preds = %53, %60
  %78 = add nsw i64 %54, 1
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %79, %2
  br i1 %80, label %81, label %53, !llvm.loop !163

81:                                               ; preds = %77
  %82 = trunc i64 %78 to i32
  br label %83

83:                                               ; preds = %81, %48, %65
  %84 = phi i32 [ %76, %65 ], [ %13, %48 ], [ %82, %81 ]
  %85 = icmp slt i32 %49, %2
  %86 = icmp slt i32 %84, %2
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %12, label %88, !llvm.loop !164

88:                                               ; preds = %83, %6
  %89 = phi i32 [ 0, %6 ], [ %49, %83 ]
  %90 = phi i32 [ 0, %6 ], [ %84, %83 ]
  %91 = icmp eq i32 %0, 2
  br i1 %91, label %92, label %172

92:                                               ; preds = %88
  %93 = icmp slt i32 %89, %2
  %94 = icmp slt i32 %90, %2
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %96, label %172

96:                                               ; preds = %92, %167
  %97 = phi i32 [ %133, %167 ], [ %90, %92 ]
  %98 = phi i32 [ %168, %167 ], [ %89, %92 ]
  %99 = icmp slt i32 %97, %2
  br i1 %99, label %100, label %132

100:                                              ; preds = %96
  %101 = sext i32 %97 to i64
  br label %102

102:                                              ; preds = %100, %126
  %103 = phi i64 [ %101, %100 ], [ %127, %126 ]
  %104 = getelementptr inbounds ptr, ptr %1, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !75
  %106 = load i32, ptr %105, align 8, !tbaa !159
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.frame_store, ptr %105, i64 0, i32 14
  %111 = load ptr, ptr %110, align 8, !tbaa !97
  %112 = tail call i32 %8(ptr noundef %111) #20, !callees !160
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %109
  %115 = trunc i64 %103 to i32
  %116 = getelementptr inbounds ptr, ptr %1, i64 %103
  %117 = load ptr, ptr %116, align 8, !tbaa !75
  %118 = getelementptr inbounds %struct.frame_store, ptr %117, i64 0, i32 14
  %119 = load ptr, ptr %118, align 8, !tbaa !97
  %120 = load i8, ptr %4, align 1, !tbaa !161
  %121 = sext i8 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %3, i64 %121
  store ptr %119, ptr %122, align 8, !tbaa !75
  %123 = load i8, ptr %4, align 1, !tbaa !161
  %124 = add i8 %123, 1
  store i8 %124, ptr %4, align 1, !tbaa !161
  %125 = add nsw i32 %115, 1
  br label %132

126:                                              ; preds = %102, %109
  %127 = add nsw i64 %103, 1
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, %2
  br i1 %129, label %130, label %102, !llvm.loop !165

130:                                              ; preds = %126
  %131 = trunc i64 %127 to i32
  br label %132

132:                                              ; preds = %130, %96, %114
  %133 = phi i32 [ %125, %114 ], [ %97, %96 ], [ %131, %130 ]
  %134 = icmp slt i32 %98, %2
  br i1 %134, label %135, label %167

135:                                              ; preds = %132
  %136 = sext i32 %98 to i64
  br label %137

137:                                              ; preds = %135, %161
  %138 = phi i64 [ %136, %135 ], [ %162, %161 ]
  %139 = getelementptr inbounds ptr, ptr %1, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !75
  %141 = load i32, ptr %140, align 8, !tbaa !159
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.frame_store, ptr %140, i64 0, i32 13
  %146 = load ptr, ptr %145, align 8, !tbaa !96
  %147 = tail call i32 %8(ptr noundef %146) #20, !callees !160
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %144
  %150 = trunc i64 %138 to i32
  %151 = getelementptr inbounds ptr, ptr %1, i64 %138
  %152 = load ptr, ptr %151, align 8, !tbaa !75
  %153 = getelementptr inbounds %struct.frame_store, ptr %152, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !96
  %155 = load i8, ptr %4, align 1, !tbaa !161
  %156 = sext i8 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %3, i64 %156
  store ptr %154, ptr %157, align 8, !tbaa !75
  %158 = load i8, ptr %4, align 1, !tbaa !161
  %159 = add i8 %158, 1
  store i8 %159, ptr %4, align 1, !tbaa !161
  %160 = add nsw i32 %150, 1
  br label %167

161:                                              ; preds = %137, %144
  %162 = add nsw i64 %138, 1
  %163 = trunc i64 %162 to i32
  %164 = icmp eq i32 %163, %2
  br i1 %164, label %165, label %137, !llvm.loop !166

165:                                              ; preds = %161
  %166 = trunc i64 %162 to i32
  br label %167

167:                                              ; preds = %165, %132, %149
  %168 = phi i32 [ %160, %149 ], [ %98, %132 ], [ %166, %165 ]
  %169 = icmp slt i32 %168, %2
  %170 = icmp slt i32 %133, %2
  %171 = select i1 %169, i1 true, i1 %170
  br i1 %171, label %96, label %172, !llvm.loop !167

172:                                              ; preds = %167, %92, %88
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_pic_num(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !172
  %9 = add i32 %8, 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %12 = load i32, ptr %11, align 8, !tbaa !173
  switch i32 %12, label %77 [
    i32 0, label %13
    i32 1, label %78
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !53
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %21 = zext i32 %15 to i64
  br label %30

22:                                               ; preds = %55, %13
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %166, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = zext i32 %24 to i64
  br label %58

30:                                               ; preds = %17, %55
  %31 = phi i64 [ 0, %17 ], [ %56, %55 ]
  %32 = getelementptr inbounds ptr, ptr %19, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = load i32, ptr %33, align 8, !tbaa !159
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  %39 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 11
  %40 = load i32, ptr %39, align 4, !tbaa !129
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 10
  %44 = load i8, ptr %43, align 8, !tbaa !158
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !174
  %49 = load i32, ptr %20, align 4, !tbaa !175
  %50 = icmp ugt i32 %48, %49
  %51 = select i1 %50, i32 %10, i32 0
  %52 = sub i32 %48, %51
  %53 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 7
  store i32 %52, ptr %53, align 4, !tbaa !176
  %54 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 7
  store i32 %52, ptr %54, align 4, !tbaa !177
  br label %55

55:                                               ; preds = %30, %46, %42, %36
  %56 = add nuw nsw i64 %31, 1
  %57 = icmp eq i64 %56, %21
  br i1 %57, label %22, label %30, !llvm.loop !178

58:                                               ; preds = %26, %74
  %59 = phi i64 [ 0, %26 ], [ %75, %74 ]
  %60 = getelementptr inbounds ptr, ptr %28, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = load i32, ptr %61, align 8, !tbaa !159
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.frame_store, ptr %61, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !95
  %67 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 10
  %68 = load i8, ptr %67, align 8, !tbaa !158
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 9
  %72 = load i32, ptr %71, align 4, !tbaa !179
  %73 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 8
  store i32 %72, ptr %73, align 8, !tbaa !180
  br label %74

74:                                               ; preds = %58, %70, %64
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, %29
  br i1 %76, label %166, label %58, !llvm.loop !181

77:                                               ; preds = %1
  br label %78

78:                                               ; preds = %1, %77
  %79 = phi i32 [ 0, %77 ], [ %12, %1 ]
  %80 = phi i32 [ 1, %77 ], [ 0, %1 ]
  %81 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !53
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  %87 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %88 = zext i32 %82 to i64
  br label %97

89:                                               ; preds = %133, %78
  %90 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !50
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %166, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !72
  %96 = zext i32 %91 to i64
  br label %136

97:                                               ; preds = %84, %133
  %98 = phi i64 [ 0, %84 ], [ %134, %133 ]
  %99 = getelementptr inbounds ptr, ptr %86, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !182
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %133, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !174
  %107 = load i32, ptr %87, align 4, !tbaa !175
  %108 = icmp ugt i32 %106, %107
  %109 = select i1 %108, i32 %10, i32 0
  %110 = sub i32 %106, %109
  %111 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 7
  store i32 %110, ptr %111, align 4, !tbaa !176
  %112 = and i32 %102, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 7
  %116 = load i32, ptr %115, align 4, !tbaa !176
  %117 = shl nsw i32 %116, 1
  %118 = or disjoint i32 %117, %79
  %119 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 13
  %120 = load ptr, ptr %119, align 8, !tbaa !96
  %121 = getelementptr inbounds %struct.storable_picture, ptr %120, i64 0, i32 7
  store i32 %118, ptr %121, align 4, !tbaa !177
  br label %122

122:                                              ; preds = %114, %104
  %123 = and i32 %102, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 7
  %127 = load i32, ptr %126, align 4, !tbaa !176
  %128 = shl nsw i32 %127, 1
  %129 = or disjoint i32 %128, %80
  %130 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 14
  %131 = load ptr, ptr %130, align 8, !tbaa !97
  %132 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 7
  store i32 %129, ptr %132, align 4, !tbaa !177
  br label %133

133:                                              ; preds = %97, %125, %122
  %134 = add nuw nsw i64 %98, 1
  %135 = icmp eq i64 %134, %88
  br i1 %135, label %89, label %97, !llvm.loop !183

136:                                              ; preds = %93, %163
  %137 = phi i64 [ 0, %93 ], [ %164, %163 ]
  %138 = getelementptr inbounds ptr, ptr %95, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !75
  %140 = getelementptr inbounds %struct.frame_store, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !184
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.frame_store, ptr %139, i64 0, i32 13
  %146 = load ptr, ptr %145, align 8, !tbaa !96
  %147 = getelementptr inbounds %struct.storable_picture, ptr %146, i64 0, i32 9
  %148 = load i32, ptr %147, align 4, !tbaa !179
  %149 = shl nsw i32 %148, 1
  %150 = or disjoint i32 %149, %79
  %151 = getelementptr inbounds %struct.storable_picture, ptr %146, i64 0, i32 8
  store i32 %150, ptr %151, align 8, !tbaa !180
  br label %152

152:                                              ; preds = %144, %136
  %153 = and i32 %141, 2
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.frame_store, ptr %139, i64 0, i32 14
  %157 = load ptr, ptr %156, align 8, !tbaa !97
  %158 = getelementptr inbounds %struct.storable_picture, ptr %157, i64 0, i32 9
  %159 = load i32, ptr %158, align 4, !tbaa !179
  %160 = shl nsw i32 %159, 1
  %161 = or disjoint i32 %160, %80
  %162 = getelementptr inbounds %struct.storable_picture, ptr %157, i64 0, i32 8
  store i32 %161, ptr %162, align 8, !tbaa !180
  br label %163

163:                                              ; preds = %152, %155
  %164 = add nuw nsw i64 %137, 1
  %165 = icmp eq i64 %164, %96
  br i1 %165, label %166, label %136, !llvm.loop !185

166:                                              ; preds = %74, %163, %22, %89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_lists_i_slice(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %2, align 4, !tbaa !186
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %3, align 8, !tbaa !187
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %5, align 1, !tbaa !161
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_p_slice(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !190
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !186
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !187
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %23 = zext i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %51
  %25 = phi i64 [ 0, %20 ], [ %53, %51 ]
  %26 = phi i32 [ 0, %20 ], [ %52, %51 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !71
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = load i32, ptr %29, align 8, !tbaa !159
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !129
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  %40 = load i8, ptr %39, align 8, !tbaa !158
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 64
  %44 = load i32, ptr %43, align 8, !tbaa !133
  %45 = icmp eq i32 %44, %8
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr %22, align 8, !tbaa !75
  %48 = add nsw i32 %26, 1
  %49 = sext i32 %26 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %34, ptr %50, align 8, !tbaa !75
  br label %51

51:                                               ; preds = %24, %46, %42, %38, %32
  %52 = phi i32 [ %26, %38 ], [ %48, %46 ], [ %26, %42 ], [ %26, %32 ], [ %26, %24 ]
  %53 = add nuw nsw i64 %25, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %55, label %24, !llvm.loop !191

55:                                               ; preds = %51, %16
  %56 = phi i32 [ 0, %16 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = sext i32 %56 to i64
  tail call void @qsort(ptr noundef %58, i64 noundef %59, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #20
  %60 = trunc i32 %56 to i8
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %60, ptr %61, align 8, !tbaa !161
  %62 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %67 = zext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %91
  %69 = phi i64 [ 0, %65 ], [ %93, %91 ]
  %70 = phi i32 [ %56, %65 ], [ %92, %91 ]
  %71 = load ptr, ptr %66, align 8, !tbaa !72
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = load i32, ptr %73, align 8, !tbaa !159
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !95
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 10
  %80 = load i8, ptr %79, align 8, !tbaa !158
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 64
  %84 = load i32, ptr %83, align 8, !tbaa !133
  %85 = icmp eq i32 %84, %8
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %57, align 8, !tbaa !75
  %88 = add nsw i32 %70, 1
  %89 = sext i32 %70 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  store ptr %78, ptr %90, align 8, !tbaa !75
  br label %91

91:                                               ; preds = %68, %86, %82, %76
  %92 = phi i32 [ %88, %86 ], [ %70, %82 ], [ %70, %76 ], [ %70, %68 ]
  %93 = add nuw nsw i64 %69, 1
  %94 = icmp eq i64 %93, %67
  br i1 %94, label %95, label %68, !llvm.loop !192

95:                                               ; preds = %91, %55
  %96 = phi i32 [ %56, %55 ], [ %92, %91 ]
  %97 = load ptr, ptr %57, align 8, !tbaa !75
  %98 = load i8, ptr %61, align 8, !tbaa !161
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = sext i8 %98 to i32
  %102 = sub nsw i32 %96, %101
  %103 = sext i32 %102 to i64
  tail call void @qsort(ptr noundef %100, i64 noundef %103, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %104 = trunc i32 %96 to i8
  store i8 %104, ptr %61, align 8, !tbaa !161
  br label %549

105:                                              ; preds = %1
  %106 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !65
  %108 = zext i32 %107 to i64
  %109 = tail call noalias ptr @calloc(i64 noundef %108, i64 noundef 8) #21
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  br label %112

112:                                              ; preds = %111, %105
  %113 = load i32, ptr %106, align 8, !tbaa !65
  %114 = zext i32 %113 to i64
  %115 = tail call noalias ptr @calloc(i64 noundef %114, i64 noundef 8) #21
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %118

118:                                              ; preds = %117, %112
  %119 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %120 = load i32, ptr %119, align 8, !tbaa !53
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %124 = zext i32 %120 to i64
  br label %125

125:                                              ; preds = %122, %142
  %126 = phi i64 [ 0, %122 ], [ %144, %142 ]
  %127 = phi i32 [ 0, %122 ], [ %143, %142 ]
  %128 = load ptr, ptr %123, align 8, !tbaa !71
  %129 = getelementptr inbounds ptr, ptr %128, i64 %126
  %130 = load ptr, ptr %129, align 8, !tbaa !75
  %131 = getelementptr inbounds %struct.frame_store, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !182
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.frame_store, ptr %130, i64 0, i32 15
  %136 = load i32, ptr %135, align 8, !tbaa !76
  %137 = icmp eq i32 %136, %8
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = add nsw i32 %127, 1
  %140 = sext i32 %127 to i64
  %141 = getelementptr inbounds ptr, ptr %109, i64 %140
  store ptr %130, ptr %141, align 8, !tbaa !75
  br label %142

142:                                              ; preds = %125, %134, %138
  %143 = phi i32 [ %139, %138 ], [ %127, %134 ], [ %127, %125 ]
  %144 = add nuw nsw i64 %126, 1
  %145 = icmp eq i64 %144, %124
  br i1 %145, label %146, label %125, !llvm.loop !193

146:                                              ; preds = %142, %118
  %147 = phi i32 [ 0, %118 ], [ %143, %142 ]
  %148 = sext i32 %147 to i64
  tail call void @qsort(ptr noundef %109, i64 noundef %148, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #20
  %149 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %149, align 8, !tbaa !161
  %150 = load i32, ptr %13, align 8, !tbaa !173
  %151 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %152 = load ptr, ptr %151, align 8, !tbaa !75
  %153 = icmp eq i32 %150, 1
  %154 = icmp sgt i32 %147, 0
  %155 = and i1 %153, %154
  br i1 %155, label %156, label %242

156:                                              ; preds = %146, %237
  %157 = phi i32 [ %238, %237 ], [ 0, %146 ]
  %158 = phi i32 [ %198, %237 ], [ 0, %146 ]
  %159 = icmp slt i32 %158, %147
  br i1 %159, label %160, label %197

160:                                              ; preds = %156
  %161 = sext i32 %158 to i64
  br label %162

162:                                              ; preds = %160, %191
  %163 = phi i64 [ %161, %160 ], [ %192, %191 ]
  %164 = getelementptr inbounds ptr, ptr %109, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !75
  %166 = load i32, ptr %165, align 8, !tbaa !159
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %191, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.frame_store, ptr %165, i64 0, i32 13
  %171 = load ptr, ptr %170, align 8, !tbaa !96
  %172 = getelementptr inbounds %struct.storable_picture, ptr %171, i64 0, i32 11
  %173 = load i32, ptr %172, align 4, !tbaa !129
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.storable_picture, ptr %171, i64 0, i32 10
  %177 = load i8, ptr %176, align 8, !tbaa !158
  %178 = icmp eq i8 %177, 0
  %179 = zext i1 %178 to i32
  br label %180

180:                                              ; preds = %169, %175
  %181 = phi i32 [ 0, %169 ], [ %179, %175 ]
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %180
  %184 = trunc i64 %163 to i32
  %185 = load i8, ptr %149, align 1, !tbaa !161
  %186 = sext i8 %185 to i64
  %187 = getelementptr inbounds ptr, ptr %152, i64 %186
  store ptr %171, ptr %187, align 8, !tbaa !75
  %188 = load i8, ptr %149, align 1, !tbaa !161
  %189 = add i8 %188, 1
  store i8 %189, ptr %149, align 1, !tbaa !161
  %190 = add nsw i32 %184, 1
  br label %197

191:                                              ; preds = %180, %162
  %192 = add nsw i64 %163, 1
  %193 = trunc i64 %192 to i32
  %194 = icmp eq i32 %147, %193
  br i1 %194, label %195, label %162, !llvm.loop !162

195:                                              ; preds = %191
  %196 = trunc i64 %192 to i32
  br label %197

197:                                              ; preds = %195, %156, %183
  %198 = phi i32 [ %190, %183 ], [ %158, %156 ], [ %196, %195 ]
  %199 = icmp slt i32 %157, %147
  br i1 %199, label %200, label %237

200:                                              ; preds = %197
  %201 = sext i32 %157 to i64
  br label %202

202:                                              ; preds = %200, %231
  %203 = phi i64 [ %201, %200 ], [ %232, %231 ]
  %204 = getelementptr inbounds ptr, ptr %109, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !75
  %206 = load i32, ptr %205, align 8, !tbaa !159
  %207 = and i32 %206, 2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %231, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.frame_store, ptr %205, i64 0, i32 14
  %211 = load ptr, ptr %210, align 8, !tbaa !97
  %212 = getelementptr inbounds %struct.storable_picture, ptr %211, i64 0, i32 11
  %213 = load i32, ptr %212, align 4, !tbaa !129
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.storable_picture, ptr %211, i64 0, i32 10
  %217 = load i8, ptr %216, align 8, !tbaa !158
  %218 = icmp eq i8 %217, 0
  %219 = zext i1 %218 to i32
  br label %220

220:                                              ; preds = %209, %215
  %221 = phi i32 [ 0, %209 ], [ %219, %215 ]
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %220
  %224 = trunc i64 %203 to i32
  %225 = load i8, ptr %149, align 1, !tbaa !161
  %226 = sext i8 %225 to i64
  %227 = getelementptr inbounds ptr, ptr %152, i64 %226
  store ptr %211, ptr %227, align 8, !tbaa !75
  %228 = load i8, ptr %149, align 1, !tbaa !161
  %229 = add i8 %228, 1
  store i8 %229, ptr %149, align 1, !tbaa !161
  %230 = add nsw i32 %224, 1
  br label %237

231:                                              ; preds = %220, %202
  %232 = add nsw i64 %203, 1
  %233 = trunc i64 %232 to i32
  %234 = icmp eq i32 %147, %233
  br i1 %234, label %235, label %202, !llvm.loop !163

235:                                              ; preds = %231
  %236 = trunc i64 %232 to i32
  br label %237

237:                                              ; preds = %235, %197, %223
  %238 = phi i32 [ %230, %223 ], [ %157, %197 ], [ %236, %235 ]
  %239 = icmp slt i32 %198, %147
  %240 = icmp slt i32 %238, %147
  %241 = select i1 %239, i1 true, i1 %240
  br i1 %241, label %156, label %242, !llvm.loop !164

242:                                              ; preds = %237, %146
  %243 = phi i32 [ 0, %146 ], [ %198, %237 ]
  %244 = phi i32 [ 0, %146 ], [ %238, %237 ]
  %245 = icmp eq i32 %150, 2
  br i1 %245, label %246, label %336

246:                                              ; preds = %242
  %247 = icmp slt i32 %243, %147
  %248 = icmp slt i32 %244, %147
  %249 = select i1 %247, i1 true, i1 %248
  br i1 %249, label %250, label %336

250:                                              ; preds = %246, %331
  %251 = phi i32 [ %292, %331 ], [ %244, %246 ]
  %252 = phi i32 [ %332, %331 ], [ %243, %246 ]
  %253 = icmp slt i32 %251, %147
  br i1 %253, label %254, label %291

254:                                              ; preds = %250
  %255 = sext i32 %251 to i64
  br label %256

256:                                              ; preds = %254, %285
  %257 = phi i64 [ %255, %254 ], [ %286, %285 ]
  %258 = getelementptr inbounds ptr, ptr %109, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !75
  %260 = load i32, ptr %259, align 8, !tbaa !159
  %261 = and i32 %260, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %285, label %263

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.frame_store, ptr %259, i64 0, i32 14
  %265 = load ptr, ptr %264, align 8, !tbaa !97
  %266 = getelementptr inbounds %struct.storable_picture, ptr %265, i64 0, i32 11
  %267 = load i32, ptr %266, align 4, !tbaa !129
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.storable_picture, ptr %265, i64 0, i32 10
  %271 = load i8, ptr %270, align 8, !tbaa !158
  %272 = icmp eq i8 %271, 0
  %273 = zext i1 %272 to i32
  br label %274

274:                                              ; preds = %263, %269
  %275 = phi i32 [ 0, %263 ], [ %273, %269 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %274
  %278 = trunc i64 %257 to i32
  %279 = load i8, ptr %149, align 1, !tbaa !161
  %280 = sext i8 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %152, i64 %280
  store ptr %265, ptr %281, align 8, !tbaa !75
  %282 = load i8, ptr %149, align 1, !tbaa !161
  %283 = add i8 %282, 1
  store i8 %283, ptr %149, align 1, !tbaa !161
  %284 = add nsw i32 %278, 1
  br label %291

285:                                              ; preds = %274, %256
  %286 = add nsw i64 %257, 1
  %287 = trunc i64 %286 to i32
  %288 = icmp eq i32 %147, %287
  br i1 %288, label %289, label %256, !llvm.loop !165

289:                                              ; preds = %285
  %290 = trunc i64 %286 to i32
  br label %291

291:                                              ; preds = %289, %250, %277
  %292 = phi i32 [ %284, %277 ], [ %251, %250 ], [ %290, %289 ]
  %293 = icmp slt i32 %252, %147
  br i1 %293, label %294, label %331

294:                                              ; preds = %291
  %295 = sext i32 %252 to i64
  br label %296

296:                                              ; preds = %294, %325
  %297 = phi i64 [ %295, %294 ], [ %326, %325 ]
  %298 = getelementptr inbounds ptr, ptr %109, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !75
  %300 = load i32, ptr %299, align 8, !tbaa !159
  %301 = and i32 %300, 1
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %325, label %303

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.frame_store, ptr %299, i64 0, i32 13
  %305 = load ptr, ptr %304, align 8, !tbaa !96
  %306 = getelementptr inbounds %struct.storable_picture, ptr %305, i64 0, i32 11
  %307 = load i32, ptr %306, align 4, !tbaa !129
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.storable_picture, ptr %305, i64 0, i32 10
  %311 = load i8, ptr %310, align 8, !tbaa !158
  %312 = icmp eq i8 %311, 0
  %313 = zext i1 %312 to i32
  br label %314

314:                                              ; preds = %303, %309
  %315 = phi i32 [ 0, %303 ], [ %313, %309 ]
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %325, label %317

317:                                              ; preds = %314
  %318 = trunc i64 %297 to i32
  %319 = load i8, ptr %149, align 1, !tbaa !161
  %320 = sext i8 %319 to i64
  %321 = getelementptr inbounds ptr, ptr %152, i64 %320
  store ptr %305, ptr %321, align 8, !tbaa !75
  %322 = load i8, ptr %149, align 1, !tbaa !161
  %323 = add i8 %322, 1
  store i8 %323, ptr %149, align 1, !tbaa !161
  %324 = add nsw i32 %318, 1
  br label %331

325:                                              ; preds = %314, %296
  %326 = add nsw i64 %297, 1
  %327 = trunc i64 %326 to i32
  %328 = icmp eq i32 %147, %327
  br i1 %328, label %329, label %296, !llvm.loop !166

329:                                              ; preds = %325
  %330 = trunc i64 %326 to i32
  br label %331

331:                                              ; preds = %329, %291, %317
  %332 = phi i32 [ %324, %317 ], [ %252, %291 ], [ %330, %329 ]
  %333 = icmp slt i32 %332, %147
  %334 = icmp slt i32 %292, %147
  %335 = select i1 %333, i1 true, i1 %334
  br i1 %335, label %250, label %336, !llvm.loop !167

336:                                              ; preds = %331, %246, %242
  %337 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %338 = load i32, ptr %337, align 4, !tbaa !50
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %360, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %342 = zext i32 %338 to i64
  br label %343

343:                                              ; preds = %340, %356
  %344 = phi i64 [ 0, %340 ], [ %358, %356 ]
  %345 = phi i32 [ 0, %340 ], [ %357, %356 ]
  %346 = load ptr, ptr %341, align 8, !tbaa !72
  %347 = getelementptr inbounds ptr, ptr %346, i64 %344
  %348 = load ptr, ptr %347, align 8, !tbaa !75
  %349 = getelementptr inbounds %struct.frame_store, ptr %348, i64 0, i32 15
  %350 = load i32, ptr %349, align 8, !tbaa !76
  %351 = icmp eq i32 %350, %8
  br i1 %351, label %352, label %356

352:                                              ; preds = %343
  %353 = add nsw i32 %345, 1
  %354 = sext i32 %345 to i64
  %355 = getelementptr inbounds ptr, ptr %115, i64 %354
  store ptr %348, ptr %355, align 8, !tbaa !75
  br label %356

356:                                              ; preds = %343, %352
  %357 = phi i32 [ %353, %352 ], [ %345, %343 ]
  %358 = add nuw nsw i64 %344, 1
  %359 = icmp eq i64 %358, %342
  br i1 %359, label %360, label %343, !llvm.loop !194

360:                                              ; preds = %356, %336
  %361 = phi i32 [ 0, %336 ], [ %357, %356 ]
  %362 = sext i32 %361 to i64
  tail call void @qsort(ptr noundef %115, i64 noundef %362, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %363 = load i32, ptr %13, align 8, !tbaa !173
  %364 = load ptr, ptr %151, align 8, !tbaa !75
  %365 = icmp eq i32 %363, 1
  %366 = icmp sgt i32 %361, 0
  %367 = and i1 %365, %366
  br i1 %367, label %368, label %454

368:                                              ; preds = %360, %449
  %369 = phi i32 [ %450, %449 ], [ 0, %360 ]
  %370 = phi i32 [ %410, %449 ], [ 0, %360 ]
  %371 = icmp slt i32 %370, %361
  br i1 %371, label %372, label %409

372:                                              ; preds = %368
  %373 = sext i32 %370 to i64
  br label %374

374:                                              ; preds = %372, %403
  %375 = phi i64 [ %373, %372 ], [ %404, %403 ]
  %376 = getelementptr inbounds ptr, ptr %115, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !75
  %378 = load i32, ptr %377, align 8, !tbaa !159
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %403, label %381

381:                                              ; preds = %374
  %382 = getelementptr inbounds %struct.frame_store, ptr %377, i64 0, i32 13
  %383 = load ptr, ptr %382, align 8, !tbaa !96
  %384 = getelementptr inbounds %struct.storable_picture, ptr %383, i64 0, i32 11
  %385 = load i32, ptr %384, align 4, !tbaa !129
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.storable_picture, ptr %383, i64 0, i32 10
  %389 = load i8, ptr %388, align 8, !tbaa !158
  %390 = icmp ne i8 %389, 0
  %391 = zext i1 %390 to i32
  br label %392

392:                                              ; preds = %381, %387
  %393 = phi i32 [ 0, %381 ], [ %391, %387 ]
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %403, label %395

395:                                              ; preds = %392
  %396 = trunc i64 %375 to i32
  %397 = load i8, ptr %149, align 1, !tbaa !161
  %398 = sext i8 %397 to i64
  %399 = getelementptr inbounds ptr, ptr %364, i64 %398
  store ptr %383, ptr %399, align 8, !tbaa !75
  %400 = load i8, ptr %149, align 1, !tbaa !161
  %401 = add i8 %400, 1
  store i8 %401, ptr %149, align 1, !tbaa !161
  %402 = add nsw i32 %396, 1
  br label %409

403:                                              ; preds = %392, %374
  %404 = add nsw i64 %375, 1
  %405 = trunc i64 %404 to i32
  %406 = icmp eq i32 %361, %405
  br i1 %406, label %407, label %374, !llvm.loop !162

407:                                              ; preds = %403
  %408 = trunc i64 %404 to i32
  br label %409

409:                                              ; preds = %407, %368, %395
  %410 = phi i32 [ %402, %395 ], [ %370, %368 ], [ %408, %407 ]
  %411 = icmp slt i32 %369, %361
  br i1 %411, label %412, label %449

412:                                              ; preds = %409
  %413 = sext i32 %369 to i64
  br label %414

414:                                              ; preds = %412, %443
  %415 = phi i64 [ %413, %412 ], [ %444, %443 ]
  %416 = getelementptr inbounds ptr, ptr %115, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !75
  %418 = load i32, ptr %417, align 8, !tbaa !159
  %419 = and i32 %418, 2
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %443, label %421

421:                                              ; preds = %414
  %422 = getelementptr inbounds %struct.frame_store, ptr %417, i64 0, i32 14
  %423 = load ptr, ptr %422, align 8, !tbaa !97
  %424 = getelementptr inbounds %struct.storable_picture, ptr %423, i64 0, i32 11
  %425 = load i32, ptr %424, align 4, !tbaa !129
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.storable_picture, ptr %423, i64 0, i32 10
  %429 = load i8, ptr %428, align 8, !tbaa !158
  %430 = icmp ne i8 %429, 0
  %431 = zext i1 %430 to i32
  br label %432

432:                                              ; preds = %421, %427
  %433 = phi i32 [ 0, %421 ], [ %431, %427 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %443, label %435

435:                                              ; preds = %432
  %436 = trunc i64 %415 to i32
  %437 = load i8, ptr %149, align 1, !tbaa !161
  %438 = sext i8 %437 to i64
  %439 = getelementptr inbounds ptr, ptr %364, i64 %438
  store ptr %423, ptr %439, align 8, !tbaa !75
  %440 = load i8, ptr %149, align 1, !tbaa !161
  %441 = add i8 %440, 1
  store i8 %441, ptr %149, align 1, !tbaa !161
  %442 = add nsw i32 %436, 1
  br label %449

443:                                              ; preds = %432, %414
  %444 = add nsw i64 %415, 1
  %445 = trunc i64 %444 to i32
  %446 = icmp eq i32 %361, %445
  br i1 %446, label %447, label %414, !llvm.loop !163

447:                                              ; preds = %443
  %448 = trunc i64 %444 to i32
  br label %449

449:                                              ; preds = %447, %409, %435
  %450 = phi i32 [ %442, %435 ], [ %369, %409 ], [ %448, %447 ]
  %451 = icmp slt i32 %410, %361
  %452 = icmp slt i32 %450, %361
  %453 = select i1 %451, i1 true, i1 %452
  br i1 %453, label %368, label %454, !llvm.loop !164

454:                                              ; preds = %449, %360
  %455 = phi i32 [ 0, %360 ], [ %410, %449 ]
  %456 = phi i32 [ 0, %360 ], [ %450, %449 ]
  %457 = icmp eq i32 %363, 2
  br i1 %457, label %458, label %548

458:                                              ; preds = %454
  %459 = icmp slt i32 %455, %361
  %460 = icmp slt i32 %456, %361
  %461 = select i1 %459, i1 true, i1 %460
  br i1 %461, label %462, label %548

462:                                              ; preds = %458, %543
  %463 = phi i32 [ %504, %543 ], [ %456, %458 ]
  %464 = phi i32 [ %544, %543 ], [ %455, %458 ]
  %465 = icmp slt i32 %463, %361
  br i1 %465, label %466, label %503

466:                                              ; preds = %462
  %467 = sext i32 %463 to i64
  br label %468

468:                                              ; preds = %466, %497
  %469 = phi i64 [ %467, %466 ], [ %498, %497 ]
  %470 = getelementptr inbounds ptr, ptr %115, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !75
  %472 = load i32, ptr %471, align 8, !tbaa !159
  %473 = and i32 %472, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %497, label %475

475:                                              ; preds = %468
  %476 = getelementptr inbounds %struct.frame_store, ptr %471, i64 0, i32 14
  %477 = load ptr, ptr %476, align 8, !tbaa !97
  %478 = getelementptr inbounds %struct.storable_picture, ptr %477, i64 0, i32 11
  %479 = load i32, ptr %478, align 4, !tbaa !129
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %486, label %481

481:                                              ; preds = %475
  %482 = getelementptr inbounds %struct.storable_picture, ptr %477, i64 0, i32 10
  %483 = load i8, ptr %482, align 8, !tbaa !158
  %484 = icmp ne i8 %483, 0
  %485 = zext i1 %484 to i32
  br label %486

486:                                              ; preds = %475, %481
  %487 = phi i32 [ 0, %475 ], [ %485, %481 ]
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %497, label %489

489:                                              ; preds = %486
  %490 = trunc i64 %469 to i32
  %491 = load i8, ptr %149, align 1, !tbaa !161
  %492 = sext i8 %491 to i64
  %493 = getelementptr inbounds ptr, ptr %364, i64 %492
  store ptr %477, ptr %493, align 8, !tbaa !75
  %494 = load i8, ptr %149, align 1, !tbaa !161
  %495 = add i8 %494, 1
  store i8 %495, ptr %149, align 1, !tbaa !161
  %496 = add nsw i32 %490, 1
  br label %503

497:                                              ; preds = %486, %468
  %498 = add nsw i64 %469, 1
  %499 = trunc i64 %498 to i32
  %500 = icmp eq i32 %361, %499
  br i1 %500, label %501, label %468, !llvm.loop !165

501:                                              ; preds = %497
  %502 = trunc i64 %498 to i32
  br label %503

503:                                              ; preds = %501, %462, %489
  %504 = phi i32 [ %496, %489 ], [ %463, %462 ], [ %502, %501 ]
  %505 = icmp slt i32 %464, %361
  br i1 %505, label %506, label %543

506:                                              ; preds = %503
  %507 = sext i32 %464 to i64
  br label %508

508:                                              ; preds = %506, %537
  %509 = phi i64 [ %507, %506 ], [ %538, %537 ]
  %510 = getelementptr inbounds ptr, ptr %115, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !75
  %512 = load i32, ptr %511, align 8, !tbaa !159
  %513 = and i32 %512, 1
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %537, label %515

515:                                              ; preds = %508
  %516 = getelementptr inbounds %struct.frame_store, ptr %511, i64 0, i32 13
  %517 = load ptr, ptr %516, align 8, !tbaa !96
  %518 = getelementptr inbounds %struct.storable_picture, ptr %517, i64 0, i32 11
  %519 = load i32, ptr %518, align 4, !tbaa !129
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %526, label %521

521:                                              ; preds = %515
  %522 = getelementptr inbounds %struct.storable_picture, ptr %517, i64 0, i32 10
  %523 = load i8, ptr %522, align 8, !tbaa !158
  %524 = icmp ne i8 %523, 0
  %525 = zext i1 %524 to i32
  br label %526

526:                                              ; preds = %515, %521
  %527 = phi i32 [ 0, %515 ], [ %525, %521 ]
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %537, label %529

529:                                              ; preds = %526
  %530 = trunc i64 %509 to i32
  %531 = load i8, ptr %149, align 1, !tbaa !161
  %532 = sext i8 %531 to i64
  %533 = getelementptr inbounds ptr, ptr %364, i64 %532
  store ptr %517, ptr %533, align 8, !tbaa !75
  %534 = load i8, ptr %149, align 1, !tbaa !161
  %535 = add i8 %534, 1
  store i8 %535, ptr %149, align 1, !tbaa !161
  %536 = add nsw i32 %530, 1
  br label %543

537:                                              ; preds = %526, %508
  %538 = add nsw i64 %509, 1
  %539 = trunc i64 %538 to i32
  %540 = icmp eq i32 %361, %539
  br i1 %540, label %541, label %508, !llvm.loop !166

541:                                              ; preds = %537
  %542 = trunc i64 %538 to i32
  br label %543

543:                                              ; preds = %541, %503, %529
  %544 = phi i32 [ %536, %529 ], [ %464, %503 ], [ %542, %541 ]
  %545 = icmp slt i32 %544, %361
  %546 = icmp slt i32 %504, %361
  %547 = select i1 %545, i1 true, i1 %546
  br i1 %547, label %462, label %548, !llvm.loop !167

548:                                              ; preds = %543, %458, %454
  tail call void @free(ptr noundef %109) #20
  tail call void @free(ptr noundef %115) #20
  br label %549

549:                                              ; preds = %548, %95
  %550 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %551 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %551, align 1, !tbaa !161
  %552 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %553 = load i32, ptr %552, align 8, !tbaa !195
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %637

555:                                              ; preds = %549
  %556 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %557 = load i32, ptr %556, align 8, !tbaa !65
  %558 = zext i32 %557 to i64
  %559 = tail call noalias ptr @calloc(i64 noundef %558, i64 noundef 8) #21
  %560 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %559, ptr %560, align 8, !tbaa !196
  %561 = icmp eq ptr %559, null
  br i1 %561, label %562, label %563

562:                                              ; preds = %555
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %563

563:                                              ; preds = %562, %555
  %564 = load i32, ptr %13, align 8, !tbaa !173
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %592

566:                                              ; preds = %563
  %567 = load i8, ptr %550, align 8, !tbaa !161
  %568 = load ptr, ptr %560, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %568, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %569 = load i32, ptr %11, align 4, !tbaa !186
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %590, label %571

571:                                              ; preds = %566
  %572 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %573 = sext i8 %567 to i64
  %574 = zext i32 %569 to i64
  br label %575

575:                                              ; preds = %571, %575
  %576 = phi i64 [ %573, %571 ], [ %584, %575 ]
  %577 = phi i64 [ 0, %571 ], [ %586, %575 ]
  %578 = load ptr, ptr %560, align 8, !tbaa !196
  %579 = getelementptr inbounds ptr, ptr %578, i64 %577
  %580 = load ptr, ptr %579, align 8, !tbaa !75
  %581 = getelementptr inbounds %struct.frame_store, ptr %580, i64 0, i32 12
  %582 = load ptr, ptr %581, align 8, !tbaa !95
  %583 = load ptr, ptr %572, align 8, !tbaa !75
  %584 = add nsw i64 %576, 1
  %585 = getelementptr inbounds ptr, ptr %583, i64 %576
  store ptr %582, ptr %585, align 8, !tbaa !75
  %586 = add nuw nsw i64 %577, 1
  %587 = icmp eq i64 %586, %574
  br i1 %587, label %588, label %575, !llvm.loop !197

588:                                              ; preds = %575
  %589 = trunc i64 %584 to i8
  br label %590

590:                                              ; preds = %588, %566
  %591 = phi i8 [ %567, %566 ], [ %589, %588 ]
  store i8 %591, ptr %550, align 8, !tbaa !161
  br label %637

592:                                              ; preds = %563
  %593 = load ptr, ptr %560, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %564, i32 noundef 0, ptr noundef %593, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %594 = load i32, ptr %13, align 8, !tbaa !173
  %595 = load ptr, ptr %560, align 8, !tbaa !196
  %596 = load i32, ptr %11, align 4, !tbaa !186
  %597 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %598 = load ptr, ptr %597, align 8, !tbaa !75
  switch i32 %594, label %637 [
    i32 1, label %599
    i32 2, label %619
  ]

599:                                              ; preds = %592
  %600 = icmp sgt i32 %596, 0
  br i1 %600, label %601, label %616

601:                                              ; preds = %599
  %602 = zext nneg i32 %596 to i64
  br label %603

603:                                              ; preds = %603, %601
  %604 = phi i64 [ 0, %601 ], [ %614, %603 ]
  %605 = getelementptr inbounds ptr, ptr %595, i64 %604
  %606 = load ptr, ptr %605, align 8, !tbaa !75
  %607 = getelementptr inbounds %struct.frame_store, ptr %606, i64 0, i32 13
  %608 = load ptr, ptr %607, align 8, !tbaa !96
  %609 = load i8, ptr %550, align 1, !tbaa !161
  %610 = sext i8 %609 to i64
  %611 = getelementptr inbounds ptr, ptr %598, i64 %610
  store ptr %608, ptr %611, align 8, !tbaa !75
  %612 = load i8, ptr %550, align 1, !tbaa !161
  %613 = add i8 %612, 1
  store i8 %613, ptr %550, align 1, !tbaa !161
  %614 = add nuw nsw i64 %604, 1
  %615 = icmp eq i64 %614, %602
  br i1 %615, label %616, label %603, !llvm.loop !198

616:                                              ; preds = %603, %599
  %617 = icmp eq i32 %594, 2
  %618 = and i1 %617, %600
  br i1 %618, label %621, label %637

619:                                              ; preds = %592
  %620 = icmp sgt i32 %596, 0
  br i1 %620, label %621, label %637

621:                                              ; preds = %619, %616
  %622 = tail call i32 @llvm.smax.i32(i32 %596, i32 1)
  %623 = zext nneg i32 %622 to i64
  br label %624

624:                                              ; preds = %624, %621
  %625 = phi i64 [ 0, %621 ], [ %635, %624 ]
  %626 = getelementptr inbounds ptr, ptr %595, i64 %625
  %627 = load ptr, ptr %626, align 8, !tbaa !75
  %628 = getelementptr inbounds %struct.frame_store, ptr %627, i64 0, i32 14
  %629 = load ptr, ptr %628, align 8, !tbaa !97
  %630 = load i8, ptr %550, align 1, !tbaa !161
  %631 = sext i8 %630 to i64
  %632 = getelementptr inbounds ptr, ptr %598, i64 %631
  store ptr %629, ptr %632, align 8, !tbaa !75
  %633 = load i8, ptr %550, align 1, !tbaa !161
  %634 = add i8 %633, 1
  store i8 %634, ptr %550, align 1, !tbaa !161
  %635 = add nuw nsw i64 %625, 1
  %636 = icmp eq i64 %635, %623
  br i1 %636, label %637, label %624, !llvm.loop !199

637:                                              ; preds = %624, %619, %616, %592, %590, %549
  %638 = load i8, ptr %550, align 8, !tbaa !161
  %639 = sext i8 %638 to i32
  %640 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %641 = load i32, ptr %640, align 8, !tbaa !200
  %642 = tail call i32 @llvm.smin.i32(i32 %639, i32 %641)
  %643 = trunc i32 %642 to i8
  store i8 %643, ptr %550, align 8, !tbaa !161
  %644 = load i8, ptr %551, align 1, !tbaa !161
  %645 = sext i8 %644 to i32
  %646 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %647 = load i32, ptr %646, align 4, !tbaa !200
  %648 = tail call i32 @llvm.smin.i32(i32 %645, i32 %647)
  %649 = trunc i32 %648 to i8
  store i8 %649, ptr %551, align 1, !tbaa !161
  %650 = shl i32 %642, 24
  %651 = ashr exact i32 %650, 24
  %652 = icmp ult i32 %651, 33
  br i1 %652, label %653, label %665

653:                                              ; preds = %637
  %654 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %655 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %656 = zext nneg i32 %651 to i64
  br label %657

657:                                              ; preds = %653, %657
  %658 = phi i64 [ %656, %653 ], [ %662, %657 ]
  %659 = load ptr, ptr %654, align 8, !tbaa !84
  %660 = load ptr, ptr %655, align 8, !tbaa !75
  %661 = getelementptr inbounds ptr, ptr %660, i64 %658
  store ptr %659, ptr %661, align 8, !tbaa !75
  %662 = add nuw nsw i64 %658, 1
  %663 = and i64 %662, 4294967295
  %664 = icmp eq i64 %663, 33
  br i1 %664, label %665, label %657, !llvm.loop !201

665:                                              ; preds = %657, %637
  %666 = load i8, ptr %551, align 1, !tbaa !161
  %667 = icmp ult i8 %666, 33
  br i1 %667, label %668, label %680

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %670 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %671 = zext nneg i8 %666 to i64
  br label %672

672:                                              ; preds = %668, %672
  %673 = phi i64 [ %671, %668 ], [ %677, %672 ]
  %674 = load ptr, ptr %669, align 8, !tbaa !84
  %675 = load ptr, ptr %670, align 8, !tbaa !75
  %676 = getelementptr inbounds ptr, ptr %675, i64 %673
  store ptr %674, ptr %676, align 8, !tbaa !75
  %677 = add nuw nsw i64 %673, 1
  %678 = and i64 %677, 4294967295
  %679 = icmp eq i64 %678, 33
  br i1 %679, label %680, label %672, !llvm.loop !202

680:                                              ; preds = %672, %665
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !177
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !177
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !180
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !180
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !176
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !176
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !203
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !203
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @append_interview_list(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = load ptr, ptr %0, align 8, !tbaa !61
  %10 = tail call i32 @GetVOIdx(ptr noundef %9, i32 noundef %6) #20
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %10)
  br label %14

14:                                               ; preds = %12, %8
  %15 = icmp eq i32 %7, 0
  %16 = icmp eq i32 %2, 0
  %17 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !204
  %19 = sext i32 %10 to i64
  br i1 %15, label %31, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 4
  %22 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 6
  %23 = select i1 %16, ptr %21, ptr %22
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds i32, ptr %24, i64 %19
  %26 = load i32, ptr %25, align 4, !tbaa !200
  br i1 %16, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 7
  br label %42

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 5
  br label %42

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 8
  %33 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 10
  %34 = select i1 %16, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = getelementptr inbounds i32, ptr %35, i64 %19
  %37 = load i32, ptr %36, align 4, !tbaa !200
  br i1 %16, label %40, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 11
  br label %42

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 9
  br label %42

42:                                               ; preds = %38, %40, %27, %29
  %43 = phi ptr [ %39, %38 ], [ %41, %40 ], [ %28, %27 ], [ %30, %29 ]
  %44 = phi i32 [ %37, %38 ], [ %37, %40 ], [ %26, %27 ], [ %26, %29 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !75
  %46 = sext i32 %10 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = icmp eq i32 %1, 2
  %50 = zext i1 %49 to i64
  %51 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !68
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %137, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %56 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %57 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %58 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %59 = icmp sgt i32 %44, 0
  %60 = sext i32 %44 to i64
  %61 = zext nneg i32 %44 to i64
  br label %62

62:                                               ; preds = %54, %132
  %63 = phi i64 [ 0, %54 ], [ %133, %132 ]
  %64 = phi i32 [ 0, %54 ], [ %99, %132 ]
  switch i32 %1, label %82 [
    i32 0, label %65
    i32 1, label %73
  ]

65:                                               ; preds = %62
  %66 = load ptr, ptr %56, align 8, !tbaa !70
  %67 = getelementptr inbounds ptr, ptr %66, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  %69 = load i32, ptr %68, align 8, !tbaa !159
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.frame_store, ptr %68, i64 0, i32 12
  br label %92

73:                                               ; preds = %62
  %74 = load ptr, ptr %55, align 8, !tbaa !70
  %75 = getelementptr inbounds ptr, ptr %74, i64 %63
  %76 = load ptr, ptr %75, align 8, !tbaa !75
  %77 = load i32, ptr %76, align 8, !tbaa !159
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.frame_store, ptr %76, i64 0, i32 13
  br label %92

82:                                               ; preds = %62
  br i1 %49, label %83, label %97

83:                                               ; preds = %82
  %84 = load ptr, ptr %57, align 8, !tbaa !70
  %85 = getelementptr inbounds ptr, ptr %84, i64 %63
  %86 = load ptr, ptr %85, align 8, !tbaa !75
  %87 = load i32, ptr %86, align 8, !tbaa !159
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.frame_store, ptr %86, i64 0, i32 14
  br label %92

92:                                               ; preds = %71, %90, %80
  %93 = phi ptr [ %81, %80 ], [ %91, %90 ], [ %72, %71 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.storable_picture, ptr %94, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !146
  br label %97

97:                                               ; preds = %92, %82, %73, %83, %65
  %98 = phi i1 [ %70, %65 ], [ false, %73 ], [ false, %83 ], [ false, %82 ], [ true, %92 ]
  %99 = phi i32 [ %64, %65 ], [ %64, %73 ], [ %64, %83 ], [ %64, %82 ], [ %96, %92 ]
  br i1 %98, label %100, label %132

100:                                              ; preds = %97
  %101 = load ptr, ptr %58, align 8, !tbaa !70
  %102 = getelementptr inbounds ptr, ptr %101, i64 %63
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  %104 = getelementptr inbounds %struct.frame_store, ptr %103, i64 0, i32 16, i64 %50
  %105 = load i32, ptr %104, align 4, !tbaa !200
  %106 = icmp ne i32 %105, 0
  %107 = icmp eq i32 %99, %5
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %132

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.frame_store, ptr %103, i64 0, i32 15
  %111 = load i32, ptr %110, align 8, !tbaa !76
  br i1 %59, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32, ptr %48, align 4, !tbaa !200
  %114 = icmp eq i32 %113, %111
  br i1 %114, label %125, label %115

115:                                              ; preds = %112, %119
  %116 = phi i64 [ %117, %119 ], [ 0, %112 ]
  %117 = add nuw nsw i64 %116, 1
  %118 = icmp eq i64 %117, %61
  br i1 %118, label %132, label %119, !llvm.loop !205

119:                                              ; preds = %115
  %120 = getelementptr inbounds i32, ptr %48, i64 %117
  %121 = load i32, ptr %120, align 4, !tbaa !200
  %122 = icmp eq i32 %121, %111
  br i1 %122, label %123, label %115, !llvm.loop !205

123:                                              ; preds = %119
  %124 = icmp slt i64 %117, %60
  br label %125

125:                                              ; preds = %123, %112
  %126 = phi i1 [ %124, %123 ], [ %59, %112 ]
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = load i32, ptr %4, align 4, !tbaa !200
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %3, i64 %129
  store ptr %103, ptr %130, align 8, !tbaa !75
  %131 = add nsw i32 %128, 1
  store i32 %131, ptr %4, align 4, !tbaa !200
  br label %132

132:                                              ; preds = %115, %109, %97, %100, %125, %127
  %133 = add nuw nsw i64 %63, 1
  %134 = load i32, ptr %51, align 4, !tbaa !68
  %135 = zext i32 %134 to i64
  %136 = icmp ult i64 %133, %135
  br i1 %136, label %62, label %137, !llvm.loop !206

137:                                              ; preds = %132, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_b_slice(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !190
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !186
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !187
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %210

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %24 = zext i32 %18 to i64
  br label %25

25:                                               ; preds = %20, %57
  %26 = phi i64 [ 0, %20 ], [ %59, %57 ]
  %27 = phi i32 [ 0, %20 ], [ %58, %57 ]
  %28 = load ptr, ptr %21, align 8, !tbaa !71
  %29 = getelementptr inbounds ptr, ptr %28, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = load i32, ptr %30, align 8, !tbaa !159
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !129
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !158
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 64
  %45 = load i32, ptr %44, align 8, !tbaa !133
  %46 = icmp eq i32 %45, %8
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, ptr %22, align 4, !tbaa !207
  %49 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !146
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %23, align 8, !tbaa !75
  %54 = add nsw i32 %27, 1
  %55 = sext i32 %27 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %35, ptr %56, align 8, !tbaa !75
  br label %57

57:                                               ; preds = %25, %47, %52, %43, %39, %33
  %58 = phi i32 [ %27, %39 ], [ %54, %52 ], [ %27, %47 ], [ %27, %43 ], [ %27, %33 ], [ %27, %25 ]
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %24
  br i1 %60, label %61, label %25, !llvm.loop !208

61:                                               ; preds = %57, %16
  %62 = phi i32 [ 0, %16 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %65, i64 noundef %66, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #20
  %67 = load i32, ptr %63, align 8, !tbaa !53
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %71 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %72 = zext i32 %67 to i64
  br label %73

73:                                               ; preds = %69, %105
  %74 = phi i64 [ 0, %69 ], [ %107, %105 ]
  %75 = phi i32 [ %62, %69 ], [ %106, %105 ]
  %76 = load ptr, ptr %70, align 8, !tbaa !71
  %77 = getelementptr inbounds ptr, ptr %76, i64 %74
  %78 = load ptr, ptr %77, align 8, !tbaa !75
  %79 = load i32, ptr %78, align 8, !tbaa !159
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %105

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.frame_store, ptr %78, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  %84 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 4, !tbaa !129
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 10
  %89 = load i8, ptr %88, align 8, !tbaa !158
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 64
  %93 = load i32, ptr %92, align 8, !tbaa !133
  %94 = icmp eq i32 %93, %8
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, ptr %71, align 4, !tbaa !207
  %97 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !146
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load ptr, ptr %64, align 8, !tbaa !75
  %102 = add nsw i32 %75, 1
  %103 = sext i32 %75 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  store ptr %83, ptr %104, align 8, !tbaa !75
  br label %105

105:                                              ; preds = %73, %95, %100, %91, %87, %81
  %106 = phi i32 [ %75, %87 ], [ %102, %100 ], [ %75, %95 ], [ %75, %91 ], [ %75, %81 ], [ %75, %73 ]
  %107 = add nuw nsw i64 %74, 1
  %108 = icmp eq i64 %107, %72
  br i1 %108, label %109, label %73, !llvm.loop !209

109:                                              ; preds = %105, %61
  %110 = phi i32 [ %62, %61 ], [ %106, %105 ]
  %111 = load ptr, ptr %64, align 8, !tbaa !75
  %112 = getelementptr inbounds ptr, ptr %111, i64 %66
  %113 = sub nsw i32 %110, %62
  %114 = sext i32 %113 to i64
  tail call void @qsort(ptr noundef %112, i64 noundef %114, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #20
  %115 = icmp sgt i32 %62, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %118 = sext i32 %113 to i64
  %119 = zext nneg i32 %62 to i64
  br label %127

120:                                              ; preds = %127, %109
  %121 = icmp slt i32 %62, %110
  br i1 %121, label %122, label %147

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %124 = sext i32 %62 to i64
  %125 = sext i32 %62 to i64
  %126 = sext i32 %110 to i64
  br label %137

127:                                              ; preds = %116, %127
  %128 = phi i64 [ 0, %116 ], [ %135, %127 ]
  %129 = load ptr, ptr %64, align 8, !tbaa !75
  %130 = getelementptr inbounds ptr, ptr %129, i64 %128
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  %132 = load ptr, ptr %117, align 8, !tbaa !75
  %133 = getelementptr ptr, ptr %132, i64 %128
  %134 = getelementptr ptr, ptr %133, i64 %118
  store ptr %131, ptr %134, align 8, !tbaa !75
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp eq i64 %135, %119
  br i1 %136, label %120, label %127, !llvm.loop !210

137:                                              ; preds = %122, %137
  %138 = phi i64 [ %124, %122 ], [ %145, %137 ]
  %139 = load ptr, ptr %64, align 8, !tbaa !75
  %140 = getelementptr inbounds ptr, ptr %139, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = load ptr, ptr %123, align 8, !tbaa !75
  %143 = sub nsw i64 %138, %125
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  store ptr %141, ptr %144, align 8, !tbaa !75
  %145 = add nsw i64 %138, 1
  %146 = icmp eq i64 %145, %126
  br i1 %146, label %147, label %137, !llvm.loop !211

147:                                              ; preds = %137, %120
  %148 = trunc i32 %110 to i8
  %149 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %150 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %148, ptr %150, align 1, !tbaa !161
  store i8 %148, ptr %149, align 8, !tbaa !161
  %151 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %152 = load i32, ptr %151, align 4, !tbaa !50
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %192, label %154

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %156 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %157 = zext i32 %152 to i64
  br label %158

158:                                              ; preds = %154, %188
  %159 = phi i64 [ 0, %154 ], [ %190, %188 ]
  %160 = phi i32 [ %110, %154 ], [ %189, %188 ]
  %161 = load ptr, ptr %155, align 8, !tbaa !72
  %162 = getelementptr inbounds ptr, ptr %161, i64 %159
  %163 = load ptr, ptr %162, align 8, !tbaa !75
  %164 = load i32, ptr %163, align 8, !tbaa !159
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %188

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.frame_store, ptr %163, i64 0, i32 12
  %168 = load ptr, ptr %167, align 8, !tbaa !95
  %169 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 10
  %170 = load i8, ptr %169, align 8, !tbaa !158
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 64
  %174 = load i32, ptr %173, align 8, !tbaa !133
  %175 = icmp eq i32 %174, %8
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load ptr, ptr %64, align 8, !tbaa !75
  %178 = sext i32 %160 to i64
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178
  store ptr %168, ptr %179, align 8, !tbaa !75
  %180 = load ptr, ptr %155, align 8, !tbaa !72
  %181 = getelementptr inbounds ptr, ptr %180, i64 %159
  %182 = load ptr, ptr %181, align 8, !tbaa !75
  %183 = getelementptr inbounds %struct.frame_store, ptr %182, i64 0, i32 12
  %184 = load ptr, ptr %183, align 8, !tbaa !95
  %185 = load ptr, ptr %156, align 8, !tbaa !75
  %186 = add nsw i32 %160, 1
  %187 = getelementptr inbounds ptr, ptr %185, i64 %178
  store ptr %184, ptr %187, align 8, !tbaa !75
  br label %188

188:                                              ; preds = %158, %176, %172, %166
  %189 = phi i32 [ %186, %176 ], [ %160, %172 ], [ %160, %166 ], [ %160, %158 ]
  %190 = add nuw nsw i64 %159, 1
  %191 = icmp eq i64 %190, %157
  br i1 %191, label %192, label %158, !llvm.loop !212

192:                                              ; preds = %188, %147
  %193 = phi i32 [ %110, %147 ], [ %189, %188 ]
  %194 = load ptr, ptr %64, align 8, !tbaa !75
  %195 = load i8, ptr %149, align 8, !tbaa !161
  %196 = sext i8 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  %198 = sext i8 %195 to i32
  %199 = sub nsw i32 %193, %198
  %200 = sext i32 %199 to i64
  tail call void @qsort(ptr noundef %197, i64 noundef %200, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %201 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !75
  %203 = load i8, ptr %149, align 8, !tbaa !161
  %204 = sext i8 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204
  %206 = sext i8 %203 to i32
  %207 = sub nsw i32 %193, %206
  %208 = sext i32 %207 to i64
  tail call void @qsort(ptr noundef %205, i64 noundef %208, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %209 = trunc i32 %193 to i8
  store i8 %209, ptr %150, align 1, !tbaa !161
  store i8 %209, ptr %149, align 8, !tbaa !161
  br label %1092

210:                                              ; preds = %1
  %211 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !65
  %213 = zext i32 %212 to i64
  %214 = tail call noalias ptr @calloc(i64 noundef %213, i64 noundef 8) #21
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  br label %217

217:                                              ; preds = %216, %210
  %218 = load i32, ptr %211, align 8, !tbaa !65
  %219 = zext i32 %218 to i64
  %220 = tail call noalias ptr @calloc(i64 noundef %219, i64 noundef 8) #21
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #20
  br label %223

223:                                              ; preds = %222, %217
  %224 = load i32, ptr %211, align 8, !tbaa !65
  %225 = zext i32 %224 to i64
  %226 = tail call noalias ptr @calloc(i64 noundef %225, i64 noundef 8) #21
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %229

229:                                              ; preds = %228, %223
  %230 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %230, align 8, !tbaa !161
  %231 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %231, align 1, !tbaa !161
  %232 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %233 = load i32, ptr %232, align 8, !tbaa !53
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %263, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %237 = zext i32 %233 to i64
  br label %238

238:                                              ; preds = %235, %259
  %239 = phi i64 [ 0, %235 ], [ %261, %259 ]
  %240 = phi i32 [ 0, %235 ], [ %260, %259 ]
  %241 = load ptr, ptr %236, align 8, !tbaa !71
  %242 = getelementptr inbounds ptr, ptr %241, i64 %239
  %243 = load ptr, ptr %242, align 8, !tbaa !75
  %244 = load i32, ptr %243, align 8, !tbaa !159
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %238
  %247 = load i32, ptr %5, align 8, !tbaa !188
  %248 = getelementptr inbounds %struct.frame_store, ptr %243, i64 0, i32 10
  %249 = load i32, ptr %248, align 8, !tbaa !213
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %259, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.frame_store, ptr %243, i64 0, i32 15
  %253 = load i32, ptr %252, align 8, !tbaa !76
  %254 = icmp eq i32 %253, %8
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = add nsw i32 %240, 1
  %257 = sext i32 %240 to i64
  %258 = getelementptr inbounds ptr, ptr %214, i64 %257
  store ptr %243, ptr %258, align 8, !tbaa !75
  br label %259

259:                                              ; preds = %238, %255, %251, %246
  %260 = phi i32 [ %256, %255 ], [ %240, %251 ], [ %240, %246 ], [ %240, %238 ]
  %261 = add nuw nsw i64 %239, 1
  %262 = icmp eq i64 %261, %237
  br i1 %262, label %263, label %238, !llvm.loop !214

263:                                              ; preds = %259, %229
  %264 = phi i32 [ 0, %229 ], [ %260, %259 ]
  %265 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %266 = sext i32 %264 to i64
  tail call void @qsort(ptr noundef %214, i64 noundef %266, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #20
  %267 = load i32, ptr %265, align 8, !tbaa !53
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %271 = zext i32 %267 to i64
  br label %272

272:                                              ; preds = %269, %293
  %273 = phi i64 [ 0, %269 ], [ %295, %293 ]
  %274 = phi i32 [ %264, %269 ], [ %294, %293 ]
  %275 = load ptr, ptr %270, align 8, !tbaa !71
  %276 = getelementptr inbounds ptr, ptr %275, i64 %273
  %277 = load ptr, ptr %276, align 8, !tbaa !75
  %278 = load i32, ptr %277, align 8, !tbaa !159
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %272
  %281 = load i32, ptr %5, align 8, !tbaa !188
  %282 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 10
  %283 = load i32, ptr %282, align 8, !tbaa !213
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 15
  %287 = load i32, ptr %286, align 8, !tbaa !76
  %288 = icmp eq i32 %287, %8
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = add nsw i32 %274, 1
  %291 = sext i32 %274 to i64
  %292 = getelementptr inbounds ptr, ptr %214, i64 %291
  store ptr %277, ptr %292, align 8, !tbaa !75
  br label %293

293:                                              ; preds = %272, %289, %285, %280
  %294 = phi i32 [ %290, %289 ], [ %274, %285 ], [ %274, %280 ], [ %274, %272 ]
  %295 = add nuw nsw i64 %273, 1
  %296 = icmp eq i64 %295, %271
  br i1 %296, label %297, label %272, !llvm.loop !215

297:                                              ; preds = %293, %263
  %298 = phi i32 [ %264, %263 ], [ %294, %293 ]
  %299 = getelementptr inbounds ptr, ptr %214, i64 %266
  %300 = sub nsw i32 %298, %264
  %301 = sext i32 %300 to i64
  tail call void @qsort(ptr noundef %299, i64 noundef %301, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #20
  %302 = icmp sgt i32 %264, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = sext i32 %300 to i64
  %305 = zext nneg i32 %264 to i64
  %306 = getelementptr ptr, ptr %220, i64 %304
  br label %318

307:                                              ; preds = %318, %297
  %308 = icmp slt i32 %264, %298
  br i1 %308, label %309, label %325

309:                                              ; preds = %307
  %310 = sext i32 %264 to i64
  %311 = shl nsw i64 %310, 3
  %312 = getelementptr i8, ptr %214, i64 %311
  %313 = xor i32 %264, -1
  %314 = add i32 %298, %313
  %315 = zext i32 %314 to i64
  %316 = shl nuw nsw i64 %315, 3
  %317 = add nuw nsw i64 %316, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %220, ptr noundef nonnull align 8 dereferenceable(1) %312, i64 %317, i1 false), !tbaa !75
  br label %325

318:                                              ; preds = %303, %318
  %319 = phi i64 [ 0, %303 ], [ %323, %318 ]
  %320 = getelementptr inbounds ptr, ptr %214, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !75
  %322 = getelementptr ptr, ptr %306, i64 %319
  store ptr %321, ptr %322, align 8, !tbaa !75
  %323 = add nuw nsw i64 %319, 1
  %324 = icmp eq i64 %323, %305
  br i1 %324, label %307, label %318, !llvm.loop !216

325:                                              ; preds = %309, %307
  store i8 0, ptr %230, align 8, !tbaa !161
  store i8 0, ptr %231, align 1, !tbaa !161
  %326 = load i32, ptr %13, align 8, !tbaa !173
  %327 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %328 = load ptr, ptr %327, align 8, !tbaa !75
  %329 = icmp eq i32 %326, 1
  %330 = icmp sgt i32 %298, 0
  %331 = and i1 %329, %330
  br i1 %331, label %332, label %418

332:                                              ; preds = %325, %413
  %333 = phi i32 [ %414, %413 ], [ 0, %325 ]
  %334 = phi i32 [ %374, %413 ], [ 0, %325 ]
  %335 = icmp slt i32 %334, %298
  br i1 %335, label %336, label %373

336:                                              ; preds = %332
  %337 = sext i32 %334 to i64
  br label %338

338:                                              ; preds = %336, %367
  %339 = phi i64 [ %337, %336 ], [ %368, %367 ]
  %340 = getelementptr inbounds ptr, ptr %214, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !75
  %342 = load i32, ptr %341, align 8, !tbaa !159
  %343 = and i32 %342, 1
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %367, label %345

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.frame_store, ptr %341, i64 0, i32 13
  %347 = load ptr, ptr %346, align 8, !tbaa !96
  %348 = getelementptr inbounds %struct.storable_picture, ptr %347, i64 0, i32 11
  %349 = load i32, ptr %348, align 4, !tbaa !129
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.storable_picture, ptr %347, i64 0, i32 10
  %353 = load i8, ptr %352, align 8, !tbaa !158
  %354 = icmp eq i8 %353, 0
  %355 = zext i1 %354 to i32
  br label %356

356:                                              ; preds = %345, %351
  %357 = phi i32 [ 0, %345 ], [ %355, %351 ]
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %356
  %360 = trunc i64 %339 to i32
  %361 = load i8, ptr %230, align 1, !tbaa !161
  %362 = sext i8 %361 to i64
  %363 = getelementptr inbounds ptr, ptr %328, i64 %362
  store ptr %347, ptr %363, align 8, !tbaa !75
  %364 = load i8, ptr %230, align 1, !tbaa !161
  %365 = add i8 %364, 1
  store i8 %365, ptr %230, align 1, !tbaa !161
  %366 = add nsw i32 %360, 1
  br label %373

367:                                              ; preds = %356, %338
  %368 = add nsw i64 %339, 1
  %369 = trunc i64 %368 to i32
  %370 = icmp eq i32 %298, %369
  br i1 %370, label %371, label %338, !llvm.loop !162

371:                                              ; preds = %367
  %372 = trunc i64 %368 to i32
  br label %373

373:                                              ; preds = %371, %332, %359
  %374 = phi i32 [ %366, %359 ], [ %334, %332 ], [ %372, %371 ]
  %375 = icmp slt i32 %333, %298
  br i1 %375, label %376, label %413

376:                                              ; preds = %373
  %377 = sext i32 %333 to i64
  br label %378

378:                                              ; preds = %376, %407
  %379 = phi i64 [ %377, %376 ], [ %408, %407 ]
  %380 = getelementptr inbounds ptr, ptr %214, i64 %379
  %381 = load ptr, ptr %380, align 8, !tbaa !75
  %382 = load i32, ptr %381, align 8, !tbaa !159
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %407, label %385

385:                                              ; preds = %378
  %386 = getelementptr inbounds %struct.frame_store, ptr %381, i64 0, i32 14
  %387 = load ptr, ptr %386, align 8, !tbaa !97
  %388 = getelementptr inbounds %struct.storable_picture, ptr %387, i64 0, i32 11
  %389 = load i32, ptr %388, align 4, !tbaa !129
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.storable_picture, ptr %387, i64 0, i32 10
  %393 = load i8, ptr %392, align 8, !tbaa !158
  %394 = icmp eq i8 %393, 0
  %395 = zext i1 %394 to i32
  br label %396

396:                                              ; preds = %385, %391
  %397 = phi i32 [ 0, %385 ], [ %395, %391 ]
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %407, label %399

399:                                              ; preds = %396
  %400 = trunc i64 %379 to i32
  %401 = load i8, ptr %230, align 1, !tbaa !161
  %402 = sext i8 %401 to i64
  %403 = getelementptr inbounds ptr, ptr %328, i64 %402
  store ptr %387, ptr %403, align 8, !tbaa !75
  %404 = load i8, ptr %230, align 1, !tbaa !161
  %405 = add i8 %404, 1
  store i8 %405, ptr %230, align 1, !tbaa !161
  %406 = add nsw i32 %400, 1
  br label %413

407:                                              ; preds = %396, %378
  %408 = add nsw i64 %379, 1
  %409 = trunc i64 %408 to i32
  %410 = icmp eq i32 %298, %409
  br i1 %410, label %411, label %378, !llvm.loop !163

411:                                              ; preds = %407
  %412 = trunc i64 %408 to i32
  br label %413

413:                                              ; preds = %411, %373, %399
  %414 = phi i32 [ %406, %399 ], [ %333, %373 ], [ %412, %411 ]
  %415 = icmp slt i32 %374, %298
  %416 = icmp slt i32 %414, %298
  %417 = select i1 %415, i1 true, i1 %416
  br i1 %417, label %332, label %418, !llvm.loop !164

418:                                              ; preds = %413, %325
  %419 = phi i32 [ 0, %325 ], [ %374, %413 ]
  %420 = phi i32 [ 0, %325 ], [ %414, %413 ]
  %421 = icmp eq i32 %326, 2
  br i1 %421, label %422, label %512

422:                                              ; preds = %418
  %423 = icmp slt i32 %419, %298
  %424 = icmp slt i32 %420, %298
  %425 = select i1 %423, i1 true, i1 %424
  br i1 %425, label %426, label %512

426:                                              ; preds = %422, %507
  %427 = phi i32 [ %468, %507 ], [ %420, %422 ]
  %428 = phi i32 [ %508, %507 ], [ %419, %422 ]
  %429 = icmp slt i32 %427, %298
  br i1 %429, label %430, label %467

430:                                              ; preds = %426
  %431 = sext i32 %427 to i64
  br label %432

432:                                              ; preds = %430, %461
  %433 = phi i64 [ %431, %430 ], [ %462, %461 ]
  %434 = getelementptr inbounds ptr, ptr %214, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !75
  %436 = load i32, ptr %435, align 8, !tbaa !159
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %461, label %439

439:                                              ; preds = %432
  %440 = getelementptr inbounds %struct.frame_store, ptr %435, i64 0, i32 14
  %441 = load ptr, ptr %440, align 8, !tbaa !97
  %442 = getelementptr inbounds %struct.storable_picture, ptr %441, i64 0, i32 11
  %443 = load i32, ptr %442, align 4, !tbaa !129
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %439
  %446 = getelementptr inbounds %struct.storable_picture, ptr %441, i64 0, i32 10
  %447 = load i8, ptr %446, align 8, !tbaa !158
  %448 = icmp eq i8 %447, 0
  %449 = zext i1 %448 to i32
  br label %450

450:                                              ; preds = %439, %445
  %451 = phi i32 [ 0, %439 ], [ %449, %445 ]
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %450
  %454 = trunc i64 %433 to i32
  %455 = load i8, ptr %230, align 1, !tbaa !161
  %456 = sext i8 %455 to i64
  %457 = getelementptr inbounds ptr, ptr %328, i64 %456
  store ptr %441, ptr %457, align 8, !tbaa !75
  %458 = load i8, ptr %230, align 1, !tbaa !161
  %459 = add i8 %458, 1
  store i8 %459, ptr %230, align 1, !tbaa !161
  %460 = add nsw i32 %454, 1
  br label %467

461:                                              ; preds = %450, %432
  %462 = add nsw i64 %433, 1
  %463 = trunc i64 %462 to i32
  %464 = icmp eq i32 %298, %463
  br i1 %464, label %465, label %432, !llvm.loop !165

465:                                              ; preds = %461
  %466 = trunc i64 %462 to i32
  br label %467

467:                                              ; preds = %465, %426, %453
  %468 = phi i32 [ %460, %453 ], [ %427, %426 ], [ %466, %465 ]
  %469 = icmp slt i32 %428, %298
  br i1 %469, label %470, label %507

470:                                              ; preds = %467
  %471 = sext i32 %428 to i64
  br label %472

472:                                              ; preds = %470, %501
  %473 = phi i64 [ %471, %470 ], [ %502, %501 ]
  %474 = getelementptr inbounds ptr, ptr %214, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !75
  %476 = load i32, ptr %475, align 8, !tbaa !159
  %477 = and i32 %476, 1
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %501, label %479

479:                                              ; preds = %472
  %480 = getelementptr inbounds %struct.frame_store, ptr %475, i64 0, i32 13
  %481 = load ptr, ptr %480, align 8, !tbaa !96
  %482 = getelementptr inbounds %struct.storable_picture, ptr %481, i64 0, i32 11
  %483 = load i32, ptr %482, align 4, !tbaa !129
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %490, label %485

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.storable_picture, ptr %481, i64 0, i32 10
  %487 = load i8, ptr %486, align 8, !tbaa !158
  %488 = icmp eq i8 %487, 0
  %489 = zext i1 %488 to i32
  br label %490

490:                                              ; preds = %479, %485
  %491 = phi i32 [ 0, %479 ], [ %489, %485 ]
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %501, label %493

493:                                              ; preds = %490
  %494 = trunc i64 %473 to i32
  %495 = load i8, ptr %230, align 1, !tbaa !161
  %496 = sext i8 %495 to i64
  %497 = getelementptr inbounds ptr, ptr %328, i64 %496
  store ptr %481, ptr %497, align 8, !tbaa !75
  %498 = load i8, ptr %230, align 1, !tbaa !161
  %499 = add i8 %498, 1
  store i8 %499, ptr %230, align 1, !tbaa !161
  %500 = add nsw i32 %494, 1
  br label %507

501:                                              ; preds = %490, %472
  %502 = add nsw i64 %473, 1
  %503 = trunc i64 %502 to i32
  %504 = icmp eq i32 %298, %503
  br i1 %504, label %505, label %472, !llvm.loop !166

505:                                              ; preds = %501
  %506 = trunc i64 %502 to i32
  br label %507

507:                                              ; preds = %505, %467, %493
  %508 = phi i32 [ %500, %493 ], [ %428, %467 ], [ %506, %505 ]
  %509 = icmp slt i32 %508, %298
  %510 = icmp slt i32 %468, %298
  %511 = select i1 %509, i1 true, i1 %510
  br i1 %511, label %426, label %512, !llvm.loop !167

512:                                              ; preds = %507, %422, %418
  %513 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %514 = load ptr, ptr %513, align 8, !tbaa !75
  %515 = icmp sgt i32 %298, 0
  %516 = and i1 %329, %515
  br i1 %516, label %517, label %603

517:                                              ; preds = %512, %598
  %518 = phi i32 [ %599, %598 ], [ 0, %512 ]
  %519 = phi i32 [ %559, %598 ], [ 0, %512 ]
  %520 = icmp slt i32 %519, %298
  br i1 %520, label %521, label %558

521:                                              ; preds = %517
  %522 = sext i32 %519 to i64
  br label %523

523:                                              ; preds = %521, %552
  %524 = phi i64 [ %522, %521 ], [ %553, %552 ]
  %525 = getelementptr inbounds ptr, ptr %220, i64 %524
  %526 = load ptr, ptr %525, align 8, !tbaa !75
  %527 = load i32, ptr %526, align 8, !tbaa !159
  %528 = and i32 %527, 1
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %552, label %530

530:                                              ; preds = %523
  %531 = getelementptr inbounds %struct.frame_store, ptr %526, i64 0, i32 13
  %532 = load ptr, ptr %531, align 8, !tbaa !96
  %533 = getelementptr inbounds %struct.storable_picture, ptr %532, i64 0, i32 11
  %534 = load i32, ptr %533, align 4, !tbaa !129
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %541, label %536

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.storable_picture, ptr %532, i64 0, i32 10
  %538 = load i8, ptr %537, align 8, !tbaa !158
  %539 = icmp eq i8 %538, 0
  %540 = zext i1 %539 to i32
  br label %541

541:                                              ; preds = %530, %536
  %542 = phi i32 [ 0, %530 ], [ %540, %536 ]
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %552, label %544

544:                                              ; preds = %541
  %545 = trunc i64 %524 to i32
  %546 = load i8, ptr %231, align 1, !tbaa !161
  %547 = sext i8 %546 to i64
  %548 = getelementptr inbounds ptr, ptr %514, i64 %547
  store ptr %532, ptr %548, align 8, !tbaa !75
  %549 = load i8, ptr %231, align 1, !tbaa !161
  %550 = add i8 %549, 1
  store i8 %550, ptr %231, align 1, !tbaa !161
  %551 = add nsw i32 %545, 1
  br label %558

552:                                              ; preds = %541, %523
  %553 = add nsw i64 %524, 1
  %554 = trunc i64 %553 to i32
  %555 = icmp eq i32 %298, %554
  br i1 %555, label %556, label %523, !llvm.loop !162

556:                                              ; preds = %552
  %557 = trunc i64 %553 to i32
  br label %558

558:                                              ; preds = %556, %517, %544
  %559 = phi i32 [ %551, %544 ], [ %519, %517 ], [ %557, %556 ]
  %560 = icmp slt i32 %518, %298
  br i1 %560, label %561, label %598

561:                                              ; preds = %558
  %562 = sext i32 %518 to i64
  br label %563

563:                                              ; preds = %561, %592
  %564 = phi i64 [ %562, %561 ], [ %593, %592 ]
  %565 = getelementptr inbounds ptr, ptr %220, i64 %564
  %566 = load ptr, ptr %565, align 8, !tbaa !75
  %567 = load i32, ptr %566, align 8, !tbaa !159
  %568 = and i32 %567, 2
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %592, label %570

570:                                              ; preds = %563
  %571 = getelementptr inbounds %struct.frame_store, ptr %566, i64 0, i32 14
  %572 = load ptr, ptr %571, align 8, !tbaa !97
  %573 = getelementptr inbounds %struct.storable_picture, ptr %572, i64 0, i32 11
  %574 = load i32, ptr %573, align 4, !tbaa !129
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %581, label %576

576:                                              ; preds = %570
  %577 = getelementptr inbounds %struct.storable_picture, ptr %572, i64 0, i32 10
  %578 = load i8, ptr %577, align 8, !tbaa !158
  %579 = icmp eq i8 %578, 0
  %580 = zext i1 %579 to i32
  br label %581

581:                                              ; preds = %570, %576
  %582 = phi i32 [ 0, %570 ], [ %580, %576 ]
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %592, label %584

584:                                              ; preds = %581
  %585 = trunc i64 %564 to i32
  %586 = load i8, ptr %231, align 1, !tbaa !161
  %587 = sext i8 %586 to i64
  %588 = getelementptr inbounds ptr, ptr %514, i64 %587
  store ptr %572, ptr %588, align 8, !tbaa !75
  %589 = load i8, ptr %231, align 1, !tbaa !161
  %590 = add i8 %589, 1
  store i8 %590, ptr %231, align 1, !tbaa !161
  %591 = add nsw i32 %585, 1
  br label %598

592:                                              ; preds = %581, %563
  %593 = add nsw i64 %564, 1
  %594 = trunc i64 %593 to i32
  %595 = icmp eq i32 %298, %594
  br i1 %595, label %596, label %563, !llvm.loop !163

596:                                              ; preds = %592
  %597 = trunc i64 %593 to i32
  br label %598

598:                                              ; preds = %596, %558, %584
  %599 = phi i32 [ %591, %584 ], [ %518, %558 ], [ %597, %596 ]
  %600 = icmp slt i32 %559, %298
  %601 = icmp slt i32 %599, %298
  %602 = select i1 %600, i1 true, i1 %601
  br i1 %602, label %517, label %603, !llvm.loop !164

603:                                              ; preds = %598, %512
  %604 = phi i32 [ 0, %512 ], [ %559, %598 ]
  %605 = phi i32 [ 0, %512 ], [ %599, %598 ]
  br i1 %421, label %606, label %696

606:                                              ; preds = %603
  %607 = icmp slt i32 %604, %298
  %608 = icmp slt i32 %605, %298
  %609 = select i1 %607, i1 true, i1 %608
  br i1 %609, label %610, label %696

610:                                              ; preds = %606, %691
  %611 = phi i32 [ %652, %691 ], [ %605, %606 ]
  %612 = phi i32 [ %692, %691 ], [ %604, %606 ]
  %613 = icmp slt i32 %611, %298
  br i1 %613, label %614, label %651

614:                                              ; preds = %610
  %615 = sext i32 %611 to i64
  br label %616

616:                                              ; preds = %614, %645
  %617 = phi i64 [ %615, %614 ], [ %646, %645 ]
  %618 = getelementptr inbounds ptr, ptr %220, i64 %617
  %619 = load ptr, ptr %618, align 8, !tbaa !75
  %620 = load i32, ptr %619, align 8, !tbaa !159
  %621 = and i32 %620, 2
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %645, label %623

623:                                              ; preds = %616
  %624 = getelementptr inbounds %struct.frame_store, ptr %619, i64 0, i32 14
  %625 = load ptr, ptr %624, align 8, !tbaa !97
  %626 = getelementptr inbounds %struct.storable_picture, ptr %625, i64 0, i32 11
  %627 = load i32, ptr %626, align 4, !tbaa !129
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %634, label %629

629:                                              ; preds = %623
  %630 = getelementptr inbounds %struct.storable_picture, ptr %625, i64 0, i32 10
  %631 = load i8, ptr %630, align 8, !tbaa !158
  %632 = icmp eq i8 %631, 0
  %633 = zext i1 %632 to i32
  br label %634

634:                                              ; preds = %623, %629
  %635 = phi i32 [ 0, %623 ], [ %633, %629 ]
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %645, label %637

637:                                              ; preds = %634
  %638 = trunc i64 %617 to i32
  %639 = load i8, ptr %231, align 1, !tbaa !161
  %640 = sext i8 %639 to i64
  %641 = getelementptr inbounds ptr, ptr %514, i64 %640
  store ptr %625, ptr %641, align 8, !tbaa !75
  %642 = load i8, ptr %231, align 1, !tbaa !161
  %643 = add i8 %642, 1
  store i8 %643, ptr %231, align 1, !tbaa !161
  %644 = add nsw i32 %638, 1
  br label %651

645:                                              ; preds = %634, %616
  %646 = add nsw i64 %617, 1
  %647 = trunc i64 %646 to i32
  %648 = icmp eq i32 %298, %647
  br i1 %648, label %649, label %616, !llvm.loop !165

649:                                              ; preds = %645
  %650 = trunc i64 %646 to i32
  br label %651

651:                                              ; preds = %649, %610, %637
  %652 = phi i32 [ %644, %637 ], [ %611, %610 ], [ %650, %649 ]
  %653 = icmp slt i32 %612, %298
  br i1 %653, label %654, label %691

654:                                              ; preds = %651
  %655 = sext i32 %612 to i64
  br label %656

656:                                              ; preds = %654, %685
  %657 = phi i64 [ %655, %654 ], [ %686, %685 ]
  %658 = getelementptr inbounds ptr, ptr %220, i64 %657
  %659 = load ptr, ptr %658, align 8, !tbaa !75
  %660 = load i32, ptr %659, align 8, !tbaa !159
  %661 = and i32 %660, 1
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %685, label %663

663:                                              ; preds = %656
  %664 = getelementptr inbounds %struct.frame_store, ptr %659, i64 0, i32 13
  %665 = load ptr, ptr %664, align 8, !tbaa !96
  %666 = getelementptr inbounds %struct.storable_picture, ptr %665, i64 0, i32 11
  %667 = load i32, ptr %666, align 4, !tbaa !129
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %674, label %669

669:                                              ; preds = %663
  %670 = getelementptr inbounds %struct.storable_picture, ptr %665, i64 0, i32 10
  %671 = load i8, ptr %670, align 8, !tbaa !158
  %672 = icmp eq i8 %671, 0
  %673 = zext i1 %672 to i32
  br label %674

674:                                              ; preds = %663, %669
  %675 = phi i32 [ 0, %663 ], [ %673, %669 ]
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %685, label %677

677:                                              ; preds = %674
  %678 = trunc i64 %657 to i32
  %679 = load i8, ptr %231, align 1, !tbaa !161
  %680 = sext i8 %679 to i64
  %681 = getelementptr inbounds ptr, ptr %514, i64 %680
  store ptr %665, ptr %681, align 8, !tbaa !75
  %682 = load i8, ptr %231, align 1, !tbaa !161
  %683 = add i8 %682, 1
  store i8 %683, ptr %231, align 1, !tbaa !161
  %684 = add nsw i32 %678, 1
  br label %691

685:                                              ; preds = %674, %656
  %686 = add nsw i64 %657, 1
  %687 = trunc i64 %686 to i32
  %688 = icmp eq i32 %298, %687
  br i1 %688, label %689, label %656, !llvm.loop !166

689:                                              ; preds = %685
  %690 = trunc i64 %686 to i32
  br label %691

691:                                              ; preds = %689, %651, %677
  %692 = phi i32 [ %684, %677 ], [ %612, %651 ], [ %690, %689 ]
  %693 = icmp slt i32 %692, %298
  %694 = icmp slt i32 %652, %298
  %695 = select i1 %693, i1 true, i1 %694
  br i1 %695, label %610, label %696, !llvm.loop !167

696:                                              ; preds = %691, %606, %603
  %697 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %698 = load i32, ptr %697, align 4, !tbaa !50
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %720, label %700

700:                                              ; preds = %696
  %701 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %702 = zext i32 %698 to i64
  br label %703

703:                                              ; preds = %700, %716
  %704 = phi i64 [ 0, %700 ], [ %718, %716 ]
  %705 = phi i32 [ 0, %700 ], [ %717, %716 ]
  %706 = load ptr, ptr %701, align 8, !tbaa !72
  %707 = getelementptr inbounds ptr, ptr %706, i64 %704
  %708 = load ptr, ptr %707, align 8, !tbaa !75
  %709 = getelementptr inbounds %struct.frame_store, ptr %708, i64 0, i32 15
  %710 = load i32, ptr %709, align 8, !tbaa !76
  %711 = icmp eq i32 %710, %8
  br i1 %711, label %712, label %716

712:                                              ; preds = %703
  %713 = add nsw i32 %705, 1
  %714 = sext i32 %705 to i64
  %715 = getelementptr inbounds ptr, ptr %226, i64 %714
  store ptr %708, ptr %715, align 8, !tbaa !75
  br label %716

716:                                              ; preds = %703, %712
  %717 = phi i32 [ %713, %712 ], [ %705, %703 ]
  %718 = add nuw nsw i64 %704, 1
  %719 = icmp eq i64 %718, %702
  br i1 %719, label %720, label %703, !llvm.loop !217

720:                                              ; preds = %716, %696
  %721 = phi i32 [ 0, %696 ], [ %717, %716 ]
  %722 = sext i32 %721 to i64
  tail call void @qsort(ptr noundef %226, i64 noundef %722, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %723 = load i32, ptr %13, align 8, !tbaa !173
  %724 = load ptr, ptr %327, align 8, !tbaa !75
  %725 = icmp eq i32 %723, 1
  %726 = icmp sgt i32 %721, 0
  %727 = and i1 %725, %726
  br i1 %727, label %728, label %814

728:                                              ; preds = %720, %809
  %729 = phi i32 [ %810, %809 ], [ 0, %720 ]
  %730 = phi i32 [ %770, %809 ], [ 0, %720 ]
  %731 = icmp slt i32 %730, %721
  br i1 %731, label %732, label %769

732:                                              ; preds = %728
  %733 = sext i32 %730 to i64
  br label %734

734:                                              ; preds = %732, %763
  %735 = phi i64 [ %733, %732 ], [ %764, %763 ]
  %736 = getelementptr inbounds ptr, ptr %226, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !75
  %738 = load i32, ptr %737, align 8, !tbaa !159
  %739 = and i32 %738, 1
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %763, label %741

741:                                              ; preds = %734
  %742 = getelementptr inbounds %struct.frame_store, ptr %737, i64 0, i32 13
  %743 = load ptr, ptr %742, align 8, !tbaa !96
  %744 = getelementptr inbounds %struct.storable_picture, ptr %743, i64 0, i32 11
  %745 = load i32, ptr %744, align 4, !tbaa !129
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %752, label %747

747:                                              ; preds = %741
  %748 = getelementptr inbounds %struct.storable_picture, ptr %743, i64 0, i32 10
  %749 = load i8, ptr %748, align 8, !tbaa !158
  %750 = icmp ne i8 %749, 0
  %751 = zext i1 %750 to i32
  br label %752

752:                                              ; preds = %741, %747
  %753 = phi i32 [ 0, %741 ], [ %751, %747 ]
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %763, label %755

755:                                              ; preds = %752
  %756 = trunc i64 %735 to i32
  %757 = load i8, ptr %230, align 1, !tbaa !161
  %758 = sext i8 %757 to i64
  %759 = getelementptr inbounds ptr, ptr %724, i64 %758
  store ptr %743, ptr %759, align 8, !tbaa !75
  %760 = load i8, ptr %230, align 1, !tbaa !161
  %761 = add i8 %760, 1
  store i8 %761, ptr %230, align 1, !tbaa !161
  %762 = add nsw i32 %756, 1
  br label %769

763:                                              ; preds = %752, %734
  %764 = add nsw i64 %735, 1
  %765 = trunc i64 %764 to i32
  %766 = icmp eq i32 %721, %765
  br i1 %766, label %767, label %734, !llvm.loop !162

767:                                              ; preds = %763
  %768 = trunc i64 %764 to i32
  br label %769

769:                                              ; preds = %767, %728, %755
  %770 = phi i32 [ %762, %755 ], [ %730, %728 ], [ %768, %767 ]
  %771 = icmp slt i32 %729, %721
  br i1 %771, label %772, label %809

772:                                              ; preds = %769
  %773 = sext i32 %729 to i64
  br label %774

774:                                              ; preds = %772, %803
  %775 = phi i64 [ %773, %772 ], [ %804, %803 ]
  %776 = getelementptr inbounds ptr, ptr %226, i64 %775
  %777 = load ptr, ptr %776, align 8, !tbaa !75
  %778 = load i32, ptr %777, align 8, !tbaa !159
  %779 = and i32 %778, 2
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %803, label %781

781:                                              ; preds = %774
  %782 = getelementptr inbounds %struct.frame_store, ptr %777, i64 0, i32 14
  %783 = load ptr, ptr %782, align 8, !tbaa !97
  %784 = getelementptr inbounds %struct.storable_picture, ptr %783, i64 0, i32 11
  %785 = load i32, ptr %784, align 4, !tbaa !129
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %792, label %787

787:                                              ; preds = %781
  %788 = getelementptr inbounds %struct.storable_picture, ptr %783, i64 0, i32 10
  %789 = load i8, ptr %788, align 8, !tbaa !158
  %790 = icmp ne i8 %789, 0
  %791 = zext i1 %790 to i32
  br label %792

792:                                              ; preds = %781, %787
  %793 = phi i32 [ 0, %781 ], [ %791, %787 ]
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %803, label %795

795:                                              ; preds = %792
  %796 = trunc i64 %775 to i32
  %797 = load i8, ptr %230, align 1, !tbaa !161
  %798 = sext i8 %797 to i64
  %799 = getelementptr inbounds ptr, ptr %724, i64 %798
  store ptr %783, ptr %799, align 8, !tbaa !75
  %800 = load i8, ptr %230, align 1, !tbaa !161
  %801 = add i8 %800, 1
  store i8 %801, ptr %230, align 1, !tbaa !161
  %802 = add nsw i32 %796, 1
  br label %809

803:                                              ; preds = %792, %774
  %804 = add nsw i64 %775, 1
  %805 = trunc i64 %804 to i32
  %806 = icmp eq i32 %721, %805
  br i1 %806, label %807, label %774, !llvm.loop !163

807:                                              ; preds = %803
  %808 = trunc i64 %804 to i32
  br label %809

809:                                              ; preds = %807, %769, %795
  %810 = phi i32 [ %802, %795 ], [ %729, %769 ], [ %808, %807 ]
  %811 = icmp slt i32 %770, %721
  %812 = icmp slt i32 %810, %721
  %813 = select i1 %811, i1 true, i1 %812
  br i1 %813, label %728, label %814, !llvm.loop !164

814:                                              ; preds = %809, %720
  %815 = phi i32 [ 0, %720 ], [ %770, %809 ]
  %816 = phi i32 [ 0, %720 ], [ %810, %809 ]
  %817 = icmp eq i32 %723, 2
  br i1 %817, label %818, label %908

818:                                              ; preds = %814
  %819 = icmp slt i32 %815, %721
  %820 = icmp slt i32 %816, %721
  %821 = select i1 %819, i1 true, i1 %820
  br i1 %821, label %822, label %908

822:                                              ; preds = %818, %903
  %823 = phi i32 [ %864, %903 ], [ %816, %818 ]
  %824 = phi i32 [ %904, %903 ], [ %815, %818 ]
  %825 = icmp slt i32 %823, %721
  br i1 %825, label %826, label %863

826:                                              ; preds = %822
  %827 = sext i32 %823 to i64
  br label %828

828:                                              ; preds = %826, %857
  %829 = phi i64 [ %827, %826 ], [ %858, %857 ]
  %830 = getelementptr inbounds ptr, ptr %226, i64 %829
  %831 = load ptr, ptr %830, align 8, !tbaa !75
  %832 = load i32, ptr %831, align 8, !tbaa !159
  %833 = and i32 %832, 2
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %857, label %835

835:                                              ; preds = %828
  %836 = getelementptr inbounds %struct.frame_store, ptr %831, i64 0, i32 14
  %837 = load ptr, ptr %836, align 8, !tbaa !97
  %838 = getelementptr inbounds %struct.storable_picture, ptr %837, i64 0, i32 11
  %839 = load i32, ptr %838, align 4, !tbaa !129
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %846, label %841

841:                                              ; preds = %835
  %842 = getelementptr inbounds %struct.storable_picture, ptr %837, i64 0, i32 10
  %843 = load i8, ptr %842, align 8, !tbaa !158
  %844 = icmp ne i8 %843, 0
  %845 = zext i1 %844 to i32
  br label %846

846:                                              ; preds = %835, %841
  %847 = phi i32 [ 0, %835 ], [ %845, %841 ]
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %857, label %849

849:                                              ; preds = %846
  %850 = trunc i64 %829 to i32
  %851 = load i8, ptr %230, align 1, !tbaa !161
  %852 = sext i8 %851 to i64
  %853 = getelementptr inbounds ptr, ptr %724, i64 %852
  store ptr %837, ptr %853, align 8, !tbaa !75
  %854 = load i8, ptr %230, align 1, !tbaa !161
  %855 = add i8 %854, 1
  store i8 %855, ptr %230, align 1, !tbaa !161
  %856 = add nsw i32 %850, 1
  br label %863

857:                                              ; preds = %846, %828
  %858 = add nsw i64 %829, 1
  %859 = trunc i64 %858 to i32
  %860 = icmp eq i32 %721, %859
  br i1 %860, label %861, label %828, !llvm.loop !165

861:                                              ; preds = %857
  %862 = trunc i64 %858 to i32
  br label %863

863:                                              ; preds = %861, %822, %849
  %864 = phi i32 [ %856, %849 ], [ %823, %822 ], [ %862, %861 ]
  %865 = icmp slt i32 %824, %721
  br i1 %865, label %866, label %903

866:                                              ; preds = %863
  %867 = sext i32 %824 to i64
  br label %868

868:                                              ; preds = %866, %897
  %869 = phi i64 [ %867, %866 ], [ %898, %897 ]
  %870 = getelementptr inbounds ptr, ptr %226, i64 %869
  %871 = load ptr, ptr %870, align 8, !tbaa !75
  %872 = load i32, ptr %871, align 8, !tbaa !159
  %873 = and i32 %872, 1
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %897, label %875

875:                                              ; preds = %868
  %876 = getelementptr inbounds %struct.frame_store, ptr %871, i64 0, i32 13
  %877 = load ptr, ptr %876, align 8, !tbaa !96
  %878 = getelementptr inbounds %struct.storable_picture, ptr %877, i64 0, i32 11
  %879 = load i32, ptr %878, align 4, !tbaa !129
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %886, label %881

881:                                              ; preds = %875
  %882 = getelementptr inbounds %struct.storable_picture, ptr %877, i64 0, i32 10
  %883 = load i8, ptr %882, align 8, !tbaa !158
  %884 = icmp ne i8 %883, 0
  %885 = zext i1 %884 to i32
  br label %886

886:                                              ; preds = %875, %881
  %887 = phi i32 [ 0, %875 ], [ %885, %881 ]
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %897, label %889

889:                                              ; preds = %886
  %890 = trunc i64 %869 to i32
  %891 = load i8, ptr %230, align 1, !tbaa !161
  %892 = sext i8 %891 to i64
  %893 = getelementptr inbounds ptr, ptr %724, i64 %892
  store ptr %877, ptr %893, align 8, !tbaa !75
  %894 = load i8, ptr %230, align 1, !tbaa !161
  %895 = add i8 %894, 1
  store i8 %895, ptr %230, align 1, !tbaa !161
  %896 = add nsw i32 %890, 1
  br label %903

897:                                              ; preds = %886, %868
  %898 = add nsw i64 %869, 1
  %899 = trunc i64 %898 to i32
  %900 = icmp eq i32 %721, %899
  br i1 %900, label %901, label %868, !llvm.loop !166

901:                                              ; preds = %897
  %902 = trunc i64 %898 to i32
  br label %903

903:                                              ; preds = %901, %863, %889
  %904 = phi i32 [ %896, %889 ], [ %824, %863 ], [ %902, %901 ]
  %905 = icmp slt i32 %904, %721
  %906 = icmp slt i32 %864, %721
  %907 = select i1 %905, i1 true, i1 %906
  br i1 %907, label %822, label %908, !llvm.loop !167

908:                                              ; preds = %903, %818, %814
  %909 = load ptr, ptr %513, align 8, !tbaa !75
  %910 = icmp sgt i32 %721, 0
  %911 = and i1 %725, %910
  br i1 %911, label %912, label %998

912:                                              ; preds = %908, %993
  %913 = phi i32 [ %994, %993 ], [ 0, %908 ]
  %914 = phi i32 [ %954, %993 ], [ 0, %908 ]
  %915 = icmp slt i32 %914, %721
  br i1 %915, label %916, label %953

916:                                              ; preds = %912
  %917 = sext i32 %914 to i64
  br label %918

918:                                              ; preds = %916, %947
  %919 = phi i64 [ %917, %916 ], [ %948, %947 ]
  %920 = getelementptr inbounds ptr, ptr %226, i64 %919
  %921 = load ptr, ptr %920, align 8, !tbaa !75
  %922 = load i32, ptr %921, align 8, !tbaa !159
  %923 = and i32 %922, 1
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %947, label %925

925:                                              ; preds = %918
  %926 = getelementptr inbounds %struct.frame_store, ptr %921, i64 0, i32 13
  %927 = load ptr, ptr %926, align 8, !tbaa !96
  %928 = getelementptr inbounds %struct.storable_picture, ptr %927, i64 0, i32 11
  %929 = load i32, ptr %928, align 4, !tbaa !129
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %936, label %931

931:                                              ; preds = %925
  %932 = getelementptr inbounds %struct.storable_picture, ptr %927, i64 0, i32 10
  %933 = load i8, ptr %932, align 8, !tbaa !158
  %934 = icmp ne i8 %933, 0
  %935 = zext i1 %934 to i32
  br label %936

936:                                              ; preds = %925, %931
  %937 = phi i32 [ 0, %925 ], [ %935, %931 ]
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %947, label %939

939:                                              ; preds = %936
  %940 = trunc i64 %919 to i32
  %941 = load i8, ptr %231, align 1, !tbaa !161
  %942 = sext i8 %941 to i64
  %943 = getelementptr inbounds ptr, ptr %909, i64 %942
  store ptr %927, ptr %943, align 8, !tbaa !75
  %944 = load i8, ptr %231, align 1, !tbaa !161
  %945 = add i8 %944, 1
  store i8 %945, ptr %231, align 1, !tbaa !161
  %946 = add nsw i32 %940, 1
  br label %953

947:                                              ; preds = %936, %918
  %948 = add nsw i64 %919, 1
  %949 = trunc i64 %948 to i32
  %950 = icmp eq i32 %721, %949
  br i1 %950, label %951, label %918, !llvm.loop !162

951:                                              ; preds = %947
  %952 = trunc i64 %948 to i32
  br label %953

953:                                              ; preds = %951, %912, %939
  %954 = phi i32 [ %946, %939 ], [ %914, %912 ], [ %952, %951 ]
  %955 = icmp slt i32 %913, %721
  br i1 %955, label %956, label %993

956:                                              ; preds = %953
  %957 = sext i32 %913 to i64
  br label %958

958:                                              ; preds = %956, %987
  %959 = phi i64 [ %957, %956 ], [ %988, %987 ]
  %960 = getelementptr inbounds ptr, ptr %226, i64 %959
  %961 = load ptr, ptr %960, align 8, !tbaa !75
  %962 = load i32, ptr %961, align 8, !tbaa !159
  %963 = and i32 %962, 2
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %987, label %965

965:                                              ; preds = %958
  %966 = getelementptr inbounds %struct.frame_store, ptr %961, i64 0, i32 14
  %967 = load ptr, ptr %966, align 8, !tbaa !97
  %968 = getelementptr inbounds %struct.storable_picture, ptr %967, i64 0, i32 11
  %969 = load i32, ptr %968, align 4, !tbaa !129
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %976, label %971

971:                                              ; preds = %965
  %972 = getelementptr inbounds %struct.storable_picture, ptr %967, i64 0, i32 10
  %973 = load i8, ptr %972, align 8, !tbaa !158
  %974 = icmp ne i8 %973, 0
  %975 = zext i1 %974 to i32
  br label %976

976:                                              ; preds = %965, %971
  %977 = phi i32 [ 0, %965 ], [ %975, %971 ]
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %987, label %979

979:                                              ; preds = %976
  %980 = trunc i64 %959 to i32
  %981 = load i8, ptr %231, align 1, !tbaa !161
  %982 = sext i8 %981 to i64
  %983 = getelementptr inbounds ptr, ptr %909, i64 %982
  store ptr %967, ptr %983, align 8, !tbaa !75
  %984 = load i8, ptr %231, align 1, !tbaa !161
  %985 = add i8 %984, 1
  store i8 %985, ptr %231, align 1, !tbaa !161
  %986 = add nsw i32 %980, 1
  br label %993

987:                                              ; preds = %976, %958
  %988 = add nsw i64 %959, 1
  %989 = trunc i64 %988 to i32
  %990 = icmp eq i32 %721, %989
  br i1 %990, label %991, label %958, !llvm.loop !163

991:                                              ; preds = %987
  %992 = trunc i64 %988 to i32
  br label %993

993:                                              ; preds = %991, %953, %979
  %994 = phi i32 [ %986, %979 ], [ %913, %953 ], [ %992, %991 ]
  %995 = icmp slt i32 %954, %721
  %996 = icmp slt i32 %994, %721
  %997 = select i1 %995, i1 true, i1 %996
  br i1 %997, label %912, label %998, !llvm.loop !164

998:                                              ; preds = %993, %908
  %999 = phi i32 [ 0, %908 ], [ %954, %993 ]
  %1000 = phi i32 [ 0, %908 ], [ %994, %993 ]
  br i1 %817, label %1001, label %1091

1001:                                             ; preds = %998
  %1002 = icmp slt i32 %999, %721
  %1003 = icmp slt i32 %1000, %721
  %1004 = select i1 %1002, i1 true, i1 %1003
  br i1 %1004, label %1005, label %1091

1005:                                             ; preds = %1001, %1086
  %1006 = phi i32 [ %1047, %1086 ], [ %1000, %1001 ]
  %1007 = phi i32 [ %1087, %1086 ], [ %999, %1001 ]
  %1008 = icmp slt i32 %1006, %721
  br i1 %1008, label %1009, label %1046

1009:                                             ; preds = %1005
  %1010 = sext i32 %1006 to i64
  br label %1011

1011:                                             ; preds = %1009, %1040
  %1012 = phi i64 [ %1010, %1009 ], [ %1041, %1040 ]
  %1013 = getelementptr inbounds ptr, ptr %226, i64 %1012
  %1014 = load ptr, ptr %1013, align 8, !tbaa !75
  %1015 = load i32, ptr %1014, align 8, !tbaa !159
  %1016 = and i32 %1015, 2
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1040, label %1018

1018:                                             ; preds = %1011
  %1019 = getelementptr inbounds %struct.frame_store, ptr %1014, i64 0, i32 14
  %1020 = load ptr, ptr %1019, align 8, !tbaa !97
  %1021 = getelementptr inbounds %struct.storable_picture, ptr %1020, i64 0, i32 11
  %1022 = load i32, ptr %1021, align 4, !tbaa !129
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1029, label %1024

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds %struct.storable_picture, ptr %1020, i64 0, i32 10
  %1026 = load i8, ptr %1025, align 8, !tbaa !158
  %1027 = icmp ne i8 %1026, 0
  %1028 = zext i1 %1027 to i32
  br label %1029

1029:                                             ; preds = %1018, %1024
  %1030 = phi i32 [ 0, %1018 ], [ %1028, %1024 ]
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1040, label %1032

1032:                                             ; preds = %1029
  %1033 = trunc i64 %1012 to i32
  %1034 = load i8, ptr %231, align 1, !tbaa !161
  %1035 = sext i8 %1034 to i64
  %1036 = getelementptr inbounds ptr, ptr %909, i64 %1035
  store ptr %1020, ptr %1036, align 8, !tbaa !75
  %1037 = load i8, ptr %231, align 1, !tbaa !161
  %1038 = add i8 %1037, 1
  store i8 %1038, ptr %231, align 1, !tbaa !161
  %1039 = add nsw i32 %1033, 1
  br label %1046

1040:                                             ; preds = %1029, %1011
  %1041 = add nsw i64 %1012, 1
  %1042 = trunc i64 %1041 to i32
  %1043 = icmp eq i32 %721, %1042
  br i1 %1043, label %1044, label %1011, !llvm.loop !165

1044:                                             ; preds = %1040
  %1045 = trunc i64 %1041 to i32
  br label %1046

1046:                                             ; preds = %1044, %1005, %1032
  %1047 = phi i32 [ %1039, %1032 ], [ %1006, %1005 ], [ %1045, %1044 ]
  %1048 = icmp slt i32 %1007, %721
  br i1 %1048, label %1049, label %1086

1049:                                             ; preds = %1046
  %1050 = sext i32 %1007 to i64
  br label %1051

1051:                                             ; preds = %1049, %1080
  %1052 = phi i64 [ %1050, %1049 ], [ %1081, %1080 ]
  %1053 = getelementptr inbounds ptr, ptr %226, i64 %1052
  %1054 = load ptr, ptr %1053, align 8, !tbaa !75
  %1055 = load i32, ptr %1054, align 8, !tbaa !159
  %1056 = and i32 %1055, 1
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1080, label %1058

1058:                                             ; preds = %1051
  %1059 = getelementptr inbounds %struct.frame_store, ptr %1054, i64 0, i32 13
  %1060 = load ptr, ptr %1059, align 8, !tbaa !96
  %1061 = getelementptr inbounds %struct.storable_picture, ptr %1060, i64 0, i32 11
  %1062 = load i32, ptr %1061, align 4, !tbaa !129
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1069, label %1064

1064:                                             ; preds = %1058
  %1065 = getelementptr inbounds %struct.storable_picture, ptr %1060, i64 0, i32 10
  %1066 = load i8, ptr %1065, align 8, !tbaa !158
  %1067 = icmp ne i8 %1066, 0
  %1068 = zext i1 %1067 to i32
  br label %1069

1069:                                             ; preds = %1058, %1064
  %1070 = phi i32 [ 0, %1058 ], [ %1068, %1064 ]
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1080, label %1072

1072:                                             ; preds = %1069
  %1073 = trunc i64 %1052 to i32
  %1074 = load i8, ptr %231, align 1, !tbaa !161
  %1075 = sext i8 %1074 to i64
  %1076 = getelementptr inbounds ptr, ptr %909, i64 %1075
  store ptr %1060, ptr %1076, align 8, !tbaa !75
  %1077 = load i8, ptr %231, align 1, !tbaa !161
  %1078 = add i8 %1077, 1
  store i8 %1078, ptr %231, align 1, !tbaa !161
  %1079 = add nsw i32 %1073, 1
  br label %1086

1080:                                             ; preds = %1069, %1051
  %1081 = add nsw i64 %1052, 1
  %1082 = trunc i64 %1081 to i32
  %1083 = icmp eq i32 %721, %1082
  br i1 %1083, label %1084, label %1051, !llvm.loop !166

1084:                                             ; preds = %1080
  %1085 = trunc i64 %1081 to i32
  br label %1086

1086:                                             ; preds = %1084, %1046, %1072
  %1087 = phi i32 [ %1079, %1072 ], [ %1007, %1046 ], [ %1085, %1084 ]
  %1088 = icmp slt i32 %1087, %721
  %1089 = icmp slt i32 %1047, %721
  %1090 = select i1 %1088, i1 true, i1 %1089
  br i1 %1090, label %1005, label %1091, !llvm.loop !167

1091:                                             ; preds = %1086, %1001, %998
  tail call void @free(ptr noundef %214) #20
  tail call void @free(ptr noundef %220) #20
  tail call void @free(ptr noundef %226) #20
  br label %1092

1092:                                             ; preds = %1091, %192
  %1093 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %1094 = load i8, ptr %1093, align 8, !tbaa !161
  %1095 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %1096 = load i8, ptr %1095, align 1, !tbaa !161
  %1097 = icmp eq i8 %1094, %1096
  %1098 = icmp sgt i8 %1094, 1
  %1099 = and i1 %1098, %1097
  br i1 %1099, label %1100, label %1125

1100:                                             ; preds = %1092
  %1101 = sext i8 %1094 to i64
  %1102 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1103 = load ptr, ptr %1102, align 8, !tbaa !75
  %1104 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1105 = load ptr, ptr %1104, align 8, !tbaa !75
  %1106 = and i64 %1101, 4294967295
  br label %1110

1107:                                             ; preds = %1110
  %1108 = add nuw nsw i64 %1111, 1
  %1109 = icmp eq i64 %1108, %1106
  br i1 %1109, label %1117, label %1110, !llvm.loop !218

1110:                                             ; preds = %1100, %1107
  %1111 = phi i64 [ 0, %1100 ], [ %1108, %1107 ]
  %1112 = getelementptr inbounds ptr, ptr %1103, i64 %1111
  %1113 = load ptr, ptr %1112, align 8, !tbaa !75
  %1114 = getelementptr inbounds ptr, ptr %1105, i64 %1111
  %1115 = load ptr, ptr %1114, align 8, !tbaa !75
  %1116 = icmp eq ptr %1113, %1115
  br i1 %1116, label %1107, label %1125

1117:                                             ; preds = %1107
  %1118 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !75
  %1120 = load ptr, ptr %1119, align 8, !tbaa !75
  %1121 = getelementptr inbounds ptr, ptr %1119, i64 1
  %1122 = load ptr, ptr %1121, align 8, !tbaa !75
  store ptr %1122, ptr %1119, align 8, !tbaa !75
  %1123 = load ptr, ptr %1118, align 8, !tbaa !75
  %1124 = getelementptr inbounds ptr, ptr %1123, i64 1
  store ptr %1120, ptr %1124, align 8, !tbaa !75
  br label %1125

1125:                                             ; preds = %1110, %1117, %1092
  %1126 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %1127 = load i32, ptr %1126, align 8, !tbaa !195
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1288

1129:                                             ; preds = %1125
  %1130 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %1131 = load i32, ptr %1130, align 8, !tbaa !65
  %1132 = zext i32 %1131 to i64
  %1133 = tail call noalias ptr @calloc(i64 noundef %1132, i64 noundef 8) #21
  %1134 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %1133, ptr %1134, align 8, !tbaa !196
  %1135 = icmp eq ptr %1133, null
  br i1 %1135, label %1136, label %1137

1136:                                             ; preds = %1129
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %1137

1137:                                             ; preds = %1136, %1129
  %1138 = load i32, ptr %1130, align 8, !tbaa !65
  %1139 = zext i32 %1138 to i64
  %1140 = tail call noalias ptr @calloc(i64 noundef %1139, i64 noundef 8) #21
  %1141 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %1140, ptr %1141, align 8, !tbaa !219
  %1142 = icmp eq ptr %1140, null
  br i1 %1142, label %1143, label %1144

1143:                                             ; preds = %1137
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #20
  br label %1144

1144:                                             ; preds = %1143, %1137
  %1145 = load i32, ptr %13, align 8, !tbaa !173
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1147, label %1198

1147:                                             ; preds = %1144
  %1148 = load i8, ptr %1093, align 8, !tbaa !161
  %1149 = load ptr, ptr %1134, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %1149, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1150 = load ptr, ptr %1141, align 8, !tbaa !219
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 1, ptr noundef %1150, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1151 = load i32, ptr %11, align 4, !tbaa !186
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1172, label %1153

1153:                                             ; preds = %1147
  %1154 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1155 = sext i8 %1148 to i64
  %1156 = zext i32 %1151 to i64
  br label %1157

1157:                                             ; preds = %1153, %1157
  %1158 = phi i64 [ %1155, %1153 ], [ %1166, %1157 ]
  %1159 = phi i64 [ 0, %1153 ], [ %1168, %1157 ]
  %1160 = load ptr, ptr %1134, align 8, !tbaa !196
  %1161 = getelementptr inbounds ptr, ptr %1160, i64 %1159
  %1162 = load ptr, ptr %1161, align 8, !tbaa !75
  %1163 = getelementptr inbounds %struct.frame_store, ptr %1162, i64 0, i32 12
  %1164 = load ptr, ptr %1163, align 8, !tbaa !95
  %1165 = load ptr, ptr %1154, align 8, !tbaa !75
  %1166 = add nsw i64 %1158, 1
  %1167 = getelementptr inbounds ptr, ptr %1165, i64 %1158
  store ptr %1164, ptr %1167, align 8, !tbaa !75
  %1168 = add nuw nsw i64 %1159, 1
  %1169 = icmp eq i64 %1168, %1156
  br i1 %1169, label %1170, label %1157, !llvm.loop !220

1170:                                             ; preds = %1157
  %1171 = trunc i64 %1166 to i8
  br label %1172

1172:                                             ; preds = %1170, %1147
  %1173 = phi i8 [ %1148, %1147 ], [ %1171, %1170 ]
  store i8 %1173, ptr %1093, align 8, !tbaa !161
  %1174 = load i8, ptr %1095, align 1, !tbaa !161
  %1175 = load i32, ptr %12, align 8, !tbaa !187
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1196, label %1177

1177:                                             ; preds = %1172
  %1178 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1179 = sext i8 %1174 to i64
  %1180 = zext i32 %1175 to i64
  br label %1181

1181:                                             ; preds = %1177, %1181
  %1182 = phi i64 [ %1179, %1177 ], [ %1190, %1181 ]
  %1183 = phi i64 [ 0, %1177 ], [ %1192, %1181 ]
  %1184 = load ptr, ptr %1141, align 8, !tbaa !219
  %1185 = getelementptr inbounds ptr, ptr %1184, i64 %1183
  %1186 = load ptr, ptr %1185, align 8, !tbaa !75
  %1187 = getelementptr inbounds %struct.frame_store, ptr %1186, i64 0, i32 12
  %1188 = load ptr, ptr %1187, align 8, !tbaa !95
  %1189 = load ptr, ptr %1178, align 8, !tbaa !75
  %1190 = add nsw i64 %1182, 1
  %1191 = getelementptr inbounds ptr, ptr %1189, i64 %1182
  store ptr %1188, ptr %1191, align 8, !tbaa !75
  %1192 = add nuw nsw i64 %1183, 1
  %1193 = icmp eq i64 %1192, %1180
  br i1 %1193, label %1194, label %1181, !llvm.loop !221

1194:                                             ; preds = %1181
  %1195 = trunc i64 %1190 to i8
  br label %1196

1196:                                             ; preds = %1194, %1172
  %1197 = phi i8 [ %1174, %1172 ], [ %1195, %1194 ]
  store i8 %1197, ptr %1095, align 1, !tbaa !161
  br label %1288

1198:                                             ; preds = %1144
  %1199 = load ptr, ptr %1134, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %1145, i32 noundef 0, ptr noundef %1199, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1200 = load i32, ptr %13, align 8, !tbaa !173
  %1201 = load ptr, ptr %1134, align 8, !tbaa !196
  %1202 = load i32, ptr %11, align 4, !tbaa !186
  %1203 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1204 = load ptr, ptr %1203, align 8, !tbaa !75
  switch i32 %1200, label %1243 [
    i32 1, label %1205
    i32 2, label %1225
  ]

1205:                                             ; preds = %1198
  %1206 = icmp sgt i32 %1202, 0
  br i1 %1206, label %1207, label %1222

1207:                                             ; preds = %1205
  %1208 = zext nneg i32 %1202 to i64
  br label %1209

1209:                                             ; preds = %1209, %1207
  %1210 = phi i64 [ 0, %1207 ], [ %1220, %1209 ]
  %1211 = getelementptr inbounds ptr, ptr %1201, i64 %1210
  %1212 = load ptr, ptr %1211, align 8, !tbaa !75
  %1213 = getelementptr inbounds %struct.frame_store, ptr %1212, i64 0, i32 13
  %1214 = load ptr, ptr %1213, align 8, !tbaa !96
  %1215 = load i8, ptr %1093, align 1, !tbaa !161
  %1216 = sext i8 %1215 to i64
  %1217 = getelementptr inbounds ptr, ptr %1204, i64 %1216
  store ptr %1214, ptr %1217, align 8, !tbaa !75
  %1218 = load i8, ptr %1093, align 1, !tbaa !161
  %1219 = add i8 %1218, 1
  store i8 %1219, ptr %1093, align 1, !tbaa !161
  %1220 = add nuw nsw i64 %1210, 1
  %1221 = icmp eq i64 %1220, %1208
  br i1 %1221, label %1222, label %1209, !llvm.loop !198

1222:                                             ; preds = %1209, %1205
  %1223 = icmp eq i32 %1200, 2
  %1224 = and i1 %1223, %1206
  br i1 %1224, label %1227, label %1243

1225:                                             ; preds = %1198
  %1226 = icmp sgt i32 %1202, 0
  br i1 %1226, label %1227, label %1243

1227:                                             ; preds = %1225, %1222
  %1228 = tail call i32 @llvm.smax.i32(i32 %1202, i32 1)
  %1229 = zext nneg i32 %1228 to i64
  br label %1230

1230:                                             ; preds = %1230, %1227
  %1231 = phi i64 [ 0, %1227 ], [ %1241, %1230 ]
  %1232 = getelementptr inbounds ptr, ptr %1201, i64 %1231
  %1233 = load ptr, ptr %1232, align 8, !tbaa !75
  %1234 = getelementptr inbounds %struct.frame_store, ptr %1233, i64 0, i32 14
  %1235 = load ptr, ptr %1234, align 8, !tbaa !97
  %1236 = load i8, ptr %1093, align 1, !tbaa !161
  %1237 = sext i8 %1236 to i64
  %1238 = getelementptr inbounds ptr, ptr %1204, i64 %1237
  store ptr %1235, ptr %1238, align 8, !tbaa !75
  %1239 = load i8, ptr %1093, align 1, !tbaa !161
  %1240 = add i8 %1239, 1
  store i8 %1240, ptr %1093, align 1, !tbaa !161
  %1241 = add nuw nsw i64 %1231, 1
  %1242 = icmp eq i64 %1241, %1229
  br i1 %1242, label %1243, label %1230, !llvm.loop !199

1243:                                             ; preds = %1230, %1198, %1222, %1225
  %1244 = load ptr, ptr %1141, align 8, !tbaa !219
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %1200, i32 noundef 1, ptr noundef %1244, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1245 = load i32, ptr %13, align 8, !tbaa !173
  %1246 = load ptr, ptr %1141, align 8, !tbaa !219
  %1247 = load i32, ptr %12, align 8, !tbaa !187
  %1248 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1249 = load ptr, ptr %1248, align 8, !tbaa !75
  switch i32 %1245, label %1288 [
    i32 1, label %1250
    i32 2, label %1270
  ]

1250:                                             ; preds = %1243
  %1251 = icmp sgt i32 %1247, 0
  br i1 %1251, label %1252, label %1267

1252:                                             ; preds = %1250
  %1253 = zext nneg i32 %1247 to i64
  br label %1254

1254:                                             ; preds = %1254, %1252
  %1255 = phi i64 [ 0, %1252 ], [ %1265, %1254 ]
  %1256 = getelementptr inbounds ptr, ptr %1246, i64 %1255
  %1257 = load ptr, ptr %1256, align 8, !tbaa !75
  %1258 = getelementptr inbounds %struct.frame_store, ptr %1257, i64 0, i32 13
  %1259 = load ptr, ptr %1258, align 8, !tbaa !96
  %1260 = load i8, ptr %1095, align 1, !tbaa !161
  %1261 = sext i8 %1260 to i64
  %1262 = getelementptr inbounds ptr, ptr %1249, i64 %1261
  store ptr %1259, ptr %1262, align 8, !tbaa !75
  %1263 = load i8, ptr %1095, align 1, !tbaa !161
  %1264 = add i8 %1263, 1
  store i8 %1264, ptr %1095, align 1, !tbaa !161
  %1265 = add nuw nsw i64 %1255, 1
  %1266 = icmp eq i64 %1265, %1253
  br i1 %1266, label %1267, label %1254, !llvm.loop !198

1267:                                             ; preds = %1254, %1250
  %1268 = icmp eq i32 %1245, 2
  %1269 = and i1 %1268, %1251
  br i1 %1269, label %1272, label %1288

1270:                                             ; preds = %1243
  %1271 = icmp sgt i32 %1247, 0
  br i1 %1271, label %1272, label %1288

1272:                                             ; preds = %1270, %1267
  %1273 = tail call i32 @llvm.smax.i32(i32 %1247, i32 1)
  %1274 = zext nneg i32 %1273 to i64
  br label %1275

1275:                                             ; preds = %1275, %1272
  %1276 = phi i64 [ 0, %1272 ], [ %1286, %1275 ]
  %1277 = getelementptr inbounds ptr, ptr %1246, i64 %1276
  %1278 = load ptr, ptr %1277, align 8, !tbaa !75
  %1279 = getelementptr inbounds %struct.frame_store, ptr %1278, i64 0, i32 14
  %1280 = load ptr, ptr %1279, align 8, !tbaa !97
  %1281 = load i8, ptr %1095, align 1, !tbaa !161
  %1282 = sext i8 %1281 to i64
  %1283 = getelementptr inbounds ptr, ptr %1249, i64 %1282
  store ptr %1280, ptr %1283, align 8, !tbaa !75
  %1284 = load i8, ptr %1095, align 1, !tbaa !161
  %1285 = add i8 %1284, 1
  store i8 %1285, ptr %1095, align 1, !tbaa !161
  %1286 = add nuw nsw i64 %1276, 1
  %1287 = icmp eq i64 %1286, %1274
  br i1 %1287, label %1288, label %1275, !llvm.loop !199

1288:                                             ; preds = %1275, %1270, %1267, %1243, %1196, %1125
  %1289 = load i8, ptr %1093, align 8, !tbaa !161
  %1290 = sext i8 %1289 to i32
  %1291 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %1292 = load i32, ptr %1291, align 8, !tbaa !200
  %1293 = tail call i32 @llvm.smin.i32(i32 %1290, i32 %1292)
  %1294 = trunc i32 %1293 to i8
  store i8 %1294, ptr %1093, align 8, !tbaa !161
  %1295 = load i8, ptr %1095, align 1, !tbaa !161
  %1296 = sext i8 %1295 to i32
  %1297 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %1298 = load i32, ptr %1297, align 4, !tbaa !200
  %1299 = tail call i32 @llvm.smin.i32(i32 %1296, i32 %1298)
  %1300 = trunc i32 %1299 to i8
  store i8 %1300, ptr %1095, align 1, !tbaa !161
  %1301 = shl i32 %1293, 24
  %1302 = ashr exact i32 %1301, 24
  %1303 = icmp ult i32 %1302, 33
  br i1 %1303, label %1304, label %1316

1304:                                             ; preds = %1288
  %1305 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %1306 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1307 = zext nneg i32 %1302 to i64
  br label %1308

1308:                                             ; preds = %1304, %1308
  %1309 = phi i64 [ %1307, %1304 ], [ %1313, %1308 ]
  %1310 = load ptr, ptr %1305, align 8, !tbaa !84
  %1311 = load ptr, ptr %1306, align 8, !tbaa !75
  %1312 = getelementptr inbounds ptr, ptr %1311, i64 %1309
  store ptr %1310, ptr %1312, align 8, !tbaa !75
  %1313 = add nuw nsw i64 %1309, 1
  %1314 = and i64 %1313, 4294967295
  %1315 = icmp eq i64 %1314, 33
  br i1 %1315, label %1316, label %1308, !llvm.loop !222

1316:                                             ; preds = %1308, %1288
  %1317 = load i8, ptr %1095, align 1, !tbaa !161
  %1318 = icmp ult i8 %1317, 33
  br i1 %1318, label %1319, label %1331

1319:                                             ; preds = %1316
  %1320 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %1321 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1322 = zext nneg i8 %1317 to i64
  br label %1323

1323:                                             ; preds = %1319, %1323
  %1324 = phi i64 [ %1322, %1319 ], [ %1328, %1323 ]
  %1325 = load ptr, ptr %1320, align 8, !tbaa !84
  %1326 = load ptr, ptr %1321, align 8, !tbaa !75
  %1327 = getelementptr inbounds ptr, ptr %1326, i64 %1324
  store ptr %1325, ptr %1327, align 8, !tbaa !75
  %1328 = add nuw nsw i64 %1324, 1
  %1329 = and i64 %1328, 4294967295
  %1330 = icmp eq i64 %1329, 33
  br i1 %1330, label %1331, label %1323, !llvm.loop !223

1331:                                             ; preds = %1323, %1316
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !146
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !146
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !213
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !213
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !213
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !213
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !190
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !186
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !187
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !224
  switch i32 %14, label %557 [
    i32 2, label %15
    i32 4, label %15
    i32 0, label %18
    i32 3, label %18
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %16, align 8, !tbaa !161
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %17, align 1, !tbaa !161
  br label %1965

18:                                               ; preds = %1, %1
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !173
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %29 = zext i32 %24 to i64
  br label %30

30:                                               ; preds = %26, %57
  %31 = phi i64 [ 0, %26 ], [ %59, %57 ]
  %32 = phi i32 [ 0, %26 ], [ %58, %57 ]
  %33 = load ptr, ptr %27, align 8, !tbaa !71
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = load i32, ptr %35, align 8, !tbaa !159
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !129
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 10
  %46 = load i8, ptr %45, align 8, !tbaa !158
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 64
  %50 = load i32, ptr %49, align 8, !tbaa !133
  %51 = icmp eq i32 %50, %8
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %28, align 8, !tbaa !75
  %54 = add nsw i32 %32, 1
  %55 = sext i32 %32 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %40, ptr %56, align 8, !tbaa !75
  br label %57

57:                                               ; preds = %30, %52, %48, %44, %38
  %58 = phi i32 [ %32, %44 ], [ %54, %52 ], [ %32, %48 ], [ %32, %38 ], [ %32, %30 ]
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, %29
  br i1 %60, label %61, label %30, !llvm.loop !225

61:                                               ; preds = %57, %22
  %62 = phi i32 [ 0, %22 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %64 = load ptr, ptr %63, align 8, !tbaa !75
  %65 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %64, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #20
  %66 = trunc i32 %62 to i8
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %66, ptr %67, align 8, !tbaa !161
  %68 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %73 = zext i32 %69 to i64
  br label %74

74:                                               ; preds = %71, %97
  %75 = phi i64 [ 0, %71 ], [ %99, %97 ]
  %76 = phi i32 [ %62, %71 ], [ %98, %97 ]
  %77 = load ptr, ptr %72, align 8, !tbaa !72
  %78 = getelementptr inbounds ptr, ptr %77, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !75
  %80 = load i32, ptr %79, align 8, !tbaa !159
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !95
  %85 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 10
  %86 = load i8, ptr %85, align 8, !tbaa !158
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 64
  %90 = load i32, ptr %89, align 8, !tbaa !133
  %91 = icmp eq i32 %90, %8
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load ptr, ptr %63, align 8, !tbaa !75
  %94 = add nsw i32 %76, 1
  %95 = sext i32 %76 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  store ptr %84, ptr %96, align 8, !tbaa !75
  br label %97

97:                                               ; preds = %74, %92, %88, %82
  %98 = phi i32 [ %94, %92 ], [ %76, %88 ], [ %76, %82 ], [ %76, %74 ]
  %99 = add nuw nsw i64 %75, 1
  %100 = icmp eq i64 %99, %73
  br i1 %100, label %101, label %74, !llvm.loop !226

101:                                              ; preds = %97, %61
  %102 = phi i32 [ %62, %61 ], [ %98, %97 ]
  %103 = load ptr, ptr %63, align 8, !tbaa !75
  %104 = load i8, ptr %67, align 8, !tbaa !161
  %105 = sext i8 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %103, i64 %105
  %107 = sext i8 %104 to i32
  %108 = sub nsw i32 %102, %107
  %109 = sext i32 %108 to i64
  tail call void @qsort(ptr noundef %106, i64 noundef %109, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %110 = trunc i32 %102 to i8
  store i8 %110, ptr %67, align 8, !tbaa !161
  br label %555

111:                                              ; preds = %18
  %112 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !65
  %114 = zext i32 %113 to i64
  %115 = tail call noalias ptr @calloc(i64 noundef %114, i64 noundef 8) #21
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  br label %118

118:                                              ; preds = %117, %111
  %119 = load i32, ptr %112, align 8, !tbaa !65
  %120 = zext i32 %119 to i64
  %121 = tail call noalias ptr @calloc(i64 noundef %120, i64 noundef 8) #21
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %124

124:                                              ; preds = %123, %118
  %125 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %126 = load i32, ptr %125, align 8, !tbaa !53
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %152, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %130 = zext i32 %126 to i64
  br label %131

131:                                              ; preds = %128, %148
  %132 = phi i64 [ 0, %128 ], [ %150, %148 ]
  %133 = phi i32 [ 0, %128 ], [ %149, %148 ]
  %134 = load ptr, ptr %129, align 8, !tbaa !71
  %135 = getelementptr inbounds ptr, ptr %134, i64 %132
  %136 = load ptr, ptr %135, align 8, !tbaa !75
  %137 = getelementptr inbounds %struct.frame_store, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !182
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.frame_store, ptr %136, i64 0, i32 15
  %142 = load i32, ptr %141, align 8, !tbaa !76
  %143 = icmp eq i32 %142, %8
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = add nsw i32 %133, 1
  %146 = sext i32 %133 to i64
  %147 = getelementptr inbounds ptr, ptr %115, i64 %146
  store ptr %136, ptr %147, align 8, !tbaa !75
  br label %148

148:                                              ; preds = %131, %140, %144
  %149 = phi i32 [ %145, %144 ], [ %133, %140 ], [ %133, %131 ]
  %150 = add nuw nsw i64 %132, 1
  %151 = icmp eq i64 %150, %130
  br i1 %151, label %152, label %131, !llvm.loop !227

152:                                              ; preds = %148, %124
  %153 = phi i32 [ 0, %124 ], [ %149, %148 ]
  %154 = sext i32 %153 to i64
  tail call void @qsort(ptr noundef %115, i64 noundef %154, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #20
  %155 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %155, align 8, !tbaa !161
  %156 = load i32, ptr %19, align 8, !tbaa !173
  %157 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %158 = load ptr, ptr %157, align 8, !tbaa !75
  %159 = icmp eq i32 %156, 1
  %160 = icmp sgt i32 %153, 0
  %161 = and i1 %159, %160
  br i1 %161, label %162, label %248

162:                                              ; preds = %152, %243
  %163 = phi i32 [ %244, %243 ], [ 0, %152 ]
  %164 = phi i32 [ %204, %243 ], [ 0, %152 ]
  %165 = icmp slt i32 %164, %153
  br i1 %165, label %166, label %203

166:                                              ; preds = %162
  %167 = sext i32 %164 to i64
  br label %168

168:                                              ; preds = %166, %197
  %169 = phi i64 [ %167, %166 ], [ %198, %197 ]
  %170 = getelementptr inbounds ptr, ptr %115, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !75
  %172 = load i32, ptr %171, align 8, !tbaa !159
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %197, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.frame_store, ptr %171, i64 0, i32 13
  %177 = load ptr, ptr %176, align 8, !tbaa !96
  %178 = getelementptr inbounds %struct.storable_picture, ptr %177, i64 0, i32 11
  %179 = load i32, ptr %178, align 4, !tbaa !129
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.storable_picture, ptr %177, i64 0, i32 10
  %183 = load i8, ptr %182, align 8, !tbaa !158
  %184 = icmp eq i8 %183, 0
  %185 = zext i1 %184 to i32
  br label %186

186:                                              ; preds = %175, %181
  %187 = phi i32 [ 0, %175 ], [ %185, %181 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %186
  %190 = trunc i64 %169 to i32
  %191 = load i8, ptr %155, align 1, !tbaa !161
  %192 = sext i8 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %158, i64 %192
  store ptr %177, ptr %193, align 8, !tbaa !75
  %194 = load i8, ptr %155, align 1, !tbaa !161
  %195 = add i8 %194, 1
  store i8 %195, ptr %155, align 1, !tbaa !161
  %196 = add nsw i32 %190, 1
  br label %203

197:                                              ; preds = %186, %168
  %198 = add nsw i64 %169, 1
  %199 = trunc i64 %198 to i32
  %200 = icmp eq i32 %153, %199
  br i1 %200, label %201, label %168, !llvm.loop !162

201:                                              ; preds = %197
  %202 = trunc i64 %198 to i32
  br label %203

203:                                              ; preds = %201, %162, %189
  %204 = phi i32 [ %196, %189 ], [ %164, %162 ], [ %202, %201 ]
  %205 = icmp slt i32 %163, %153
  br i1 %205, label %206, label %243

206:                                              ; preds = %203
  %207 = sext i32 %163 to i64
  br label %208

208:                                              ; preds = %206, %237
  %209 = phi i64 [ %207, %206 ], [ %238, %237 ]
  %210 = getelementptr inbounds ptr, ptr %115, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !75
  %212 = load i32, ptr %211, align 8, !tbaa !159
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %237, label %215

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.frame_store, ptr %211, i64 0, i32 14
  %217 = load ptr, ptr %216, align 8, !tbaa !97
  %218 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 11
  %219 = load i32, ptr %218, align 4, !tbaa !129
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 10
  %223 = load i8, ptr %222, align 8, !tbaa !158
  %224 = icmp eq i8 %223, 0
  %225 = zext i1 %224 to i32
  br label %226

226:                                              ; preds = %215, %221
  %227 = phi i32 [ 0, %215 ], [ %225, %221 ]
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %226
  %230 = trunc i64 %209 to i32
  %231 = load i8, ptr %155, align 1, !tbaa !161
  %232 = sext i8 %231 to i64
  %233 = getelementptr inbounds ptr, ptr %158, i64 %232
  store ptr %217, ptr %233, align 8, !tbaa !75
  %234 = load i8, ptr %155, align 1, !tbaa !161
  %235 = add i8 %234, 1
  store i8 %235, ptr %155, align 1, !tbaa !161
  %236 = add nsw i32 %230, 1
  br label %243

237:                                              ; preds = %226, %208
  %238 = add nsw i64 %209, 1
  %239 = trunc i64 %238 to i32
  %240 = icmp eq i32 %153, %239
  br i1 %240, label %241, label %208, !llvm.loop !163

241:                                              ; preds = %237
  %242 = trunc i64 %238 to i32
  br label %243

243:                                              ; preds = %241, %203, %229
  %244 = phi i32 [ %236, %229 ], [ %163, %203 ], [ %242, %241 ]
  %245 = icmp slt i32 %204, %153
  %246 = icmp slt i32 %244, %153
  %247 = select i1 %245, i1 true, i1 %246
  br i1 %247, label %162, label %248, !llvm.loop !164

248:                                              ; preds = %243, %152
  %249 = phi i32 [ 0, %152 ], [ %204, %243 ]
  %250 = phi i32 [ 0, %152 ], [ %244, %243 ]
  %251 = icmp eq i32 %156, 2
  br i1 %251, label %252, label %342

252:                                              ; preds = %248
  %253 = icmp slt i32 %249, %153
  %254 = icmp slt i32 %250, %153
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %256, label %342

256:                                              ; preds = %252, %337
  %257 = phi i32 [ %298, %337 ], [ %250, %252 ]
  %258 = phi i32 [ %338, %337 ], [ %249, %252 ]
  %259 = icmp slt i32 %257, %153
  br i1 %259, label %260, label %297

260:                                              ; preds = %256
  %261 = sext i32 %257 to i64
  br label %262

262:                                              ; preds = %260, %291
  %263 = phi i64 [ %261, %260 ], [ %292, %291 ]
  %264 = getelementptr inbounds ptr, ptr %115, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !75
  %266 = load i32, ptr %265, align 8, !tbaa !159
  %267 = and i32 %266, 2
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %291, label %269

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.frame_store, ptr %265, i64 0, i32 14
  %271 = load ptr, ptr %270, align 8, !tbaa !97
  %272 = getelementptr inbounds %struct.storable_picture, ptr %271, i64 0, i32 11
  %273 = load i32, ptr %272, align 4, !tbaa !129
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.storable_picture, ptr %271, i64 0, i32 10
  %277 = load i8, ptr %276, align 8, !tbaa !158
  %278 = icmp eq i8 %277, 0
  %279 = zext i1 %278 to i32
  br label %280

280:                                              ; preds = %269, %275
  %281 = phi i32 [ 0, %269 ], [ %279, %275 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %280
  %284 = trunc i64 %263 to i32
  %285 = load i8, ptr %155, align 1, !tbaa !161
  %286 = sext i8 %285 to i64
  %287 = getelementptr inbounds ptr, ptr %158, i64 %286
  store ptr %271, ptr %287, align 8, !tbaa !75
  %288 = load i8, ptr %155, align 1, !tbaa !161
  %289 = add i8 %288, 1
  store i8 %289, ptr %155, align 1, !tbaa !161
  %290 = add nsw i32 %284, 1
  br label %297

291:                                              ; preds = %280, %262
  %292 = add nsw i64 %263, 1
  %293 = trunc i64 %292 to i32
  %294 = icmp eq i32 %153, %293
  br i1 %294, label %295, label %262, !llvm.loop !165

295:                                              ; preds = %291
  %296 = trunc i64 %292 to i32
  br label %297

297:                                              ; preds = %295, %256, %283
  %298 = phi i32 [ %290, %283 ], [ %257, %256 ], [ %296, %295 ]
  %299 = icmp slt i32 %258, %153
  br i1 %299, label %300, label %337

300:                                              ; preds = %297
  %301 = sext i32 %258 to i64
  br label %302

302:                                              ; preds = %300, %331
  %303 = phi i64 [ %301, %300 ], [ %332, %331 ]
  %304 = getelementptr inbounds ptr, ptr %115, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !75
  %306 = load i32, ptr %305, align 8, !tbaa !159
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %331, label %309

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.frame_store, ptr %305, i64 0, i32 13
  %311 = load ptr, ptr %310, align 8, !tbaa !96
  %312 = getelementptr inbounds %struct.storable_picture, ptr %311, i64 0, i32 11
  %313 = load i32, ptr %312, align 4, !tbaa !129
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.storable_picture, ptr %311, i64 0, i32 10
  %317 = load i8, ptr %316, align 8, !tbaa !158
  %318 = icmp eq i8 %317, 0
  %319 = zext i1 %318 to i32
  br label %320

320:                                              ; preds = %309, %315
  %321 = phi i32 [ 0, %309 ], [ %319, %315 ]
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %331, label %323

323:                                              ; preds = %320
  %324 = trunc i64 %303 to i32
  %325 = load i8, ptr %155, align 1, !tbaa !161
  %326 = sext i8 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %158, i64 %326
  store ptr %311, ptr %327, align 8, !tbaa !75
  %328 = load i8, ptr %155, align 1, !tbaa !161
  %329 = add i8 %328, 1
  store i8 %329, ptr %155, align 1, !tbaa !161
  %330 = add nsw i32 %324, 1
  br label %337

331:                                              ; preds = %320, %302
  %332 = add nsw i64 %303, 1
  %333 = trunc i64 %332 to i32
  %334 = icmp eq i32 %153, %333
  br i1 %334, label %335, label %302, !llvm.loop !166

335:                                              ; preds = %331
  %336 = trunc i64 %332 to i32
  br label %337

337:                                              ; preds = %335, %297, %323
  %338 = phi i32 [ %330, %323 ], [ %258, %297 ], [ %336, %335 ]
  %339 = icmp slt i32 %338, %153
  %340 = icmp slt i32 %298, %153
  %341 = select i1 %339, i1 true, i1 %340
  br i1 %341, label %256, label %342, !llvm.loop !167

342:                                              ; preds = %337, %252, %248
  %343 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %344 = load i32, ptr %343, align 4, !tbaa !50
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %366, label %346

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %348 = zext i32 %344 to i64
  br label %349

349:                                              ; preds = %346, %362
  %350 = phi i64 [ 0, %346 ], [ %364, %362 ]
  %351 = phi i32 [ 0, %346 ], [ %363, %362 ]
  %352 = load ptr, ptr %347, align 8, !tbaa !72
  %353 = getelementptr inbounds ptr, ptr %352, i64 %350
  %354 = load ptr, ptr %353, align 8, !tbaa !75
  %355 = getelementptr inbounds %struct.frame_store, ptr %354, i64 0, i32 15
  %356 = load i32, ptr %355, align 8, !tbaa !76
  %357 = icmp eq i32 %356, %8
  br i1 %357, label %358, label %362

358:                                              ; preds = %349
  %359 = add nsw i32 %351, 1
  %360 = sext i32 %351 to i64
  %361 = getelementptr inbounds ptr, ptr %121, i64 %360
  store ptr %354, ptr %361, align 8, !tbaa !75
  br label %362

362:                                              ; preds = %349, %358
  %363 = phi i32 [ %359, %358 ], [ %351, %349 ]
  %364 = add nuw nsw i64 %350, 1
  %365 = icmp eq i64 %364, %348
  br i1 %365, label %366, label %349, !llvm.loop !228

366:                                              ; preds = %362, %342
  %367 = phi i32 [ 0, %342 ], [ %363, %362 ]
  %368 = sext i32 %367 to i64
  tail call void @qsort(ptr noundef %121, i64 noundef %368, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %369 = load i32, ptr %19, align 8, !tbaa !173
  %370 = load ptr, ptr %157, align 8, !tbaa !75
  %371 = icmp eq i32 %369, 1
  %372 = icmp sgt i32 %367, 0
  %373 = and i1 %371, %372
  br i1 %373, label %374, label %460

374:                                              ; preds = %366, %455
  %375 = phi i32 [ %456, %455 ], [ 0, %366 ]
  %376 = phi i32 [ %416, %455 ], [ 0, %366 ]
  %377 = icmp slt i32 %376, %367
  br i1 %377, label %378, label %415

378:                                              ; preds = %374
  %379 = sext i32 %376 to i64
  br label %380

380:                                              ; preds = %378, %409
  %381 = phi i64 [ %379, %378 ], [ %410, %409 ]
  %382 = getelementptr inbounds ptr, ptr %121, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !75
  %384 = load i32, ptr %383, align 8, !tbaa !159
  %385 = and i32 %384, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %409, label %387

387:                                              ; preds = %380
  %388 = getelementptr inbounds %struct.frame_store, ptr %383, i64 0, i32 13
  %389 = load ptr, ptr %388, align 8, !tbaa !96
  %390 = getelementptr inbounds %struct.storable_picture, ptr %389, i64 0, i32 11
  %391 = load i32, ptr %390, align 4, !tbaa !129
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %398, label %393

393:                                              ; preds = %387
  %394 = getelementptr inbounds %struct.storable_picture, ptr %389, i64 0, i32 10
  %395 = load i8, ptr %394, align 8, !tbaa !158
  %396 = icmp ne i8 %395, 0
  %397 = zext i1 %396 to i32
  br label %398

398:                                              ; preds = %387, %393
  %399 = phi i32 [ 0, %387 ], [ %397, %393 ]
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %398
  %402 = trunc i64 %381 to i32
  %403 = load i8, ptr %155, align 1, !tbaa !161
  %404 = sext i8 %403 to i64
  %405 = getelementptr inbounds ptr, ptr %370, i64 %404
  store ptr %389, ptr %405, align 8, !tbaa !75
  %406 = load i8, ptr %155, align 1, !tbaa !161
  %407 = add i8 %406, 1
  store i8 %407, ptr %155, align 1, !tbaa !161
  %408 = add nsw i32 %402, 1
  br label %415

409:                                              ; preds = %398, %380
  %410 = add nsw i64 %381, 1
  %411 = trunc i64 %410 to i32
  %412 = icmp eq i32 %367, %411
  br i1 %412, label %413, label %380, !llvm.loop !162

413:                                              ; preds = %409
  %414 = trunc i64 %410 to i32
  br label %415

415:                                              ; preds = %413, %374, %401
  %416 = phi i32 [ %408, %401 ], [ %376, %374 ], [ %414, %413 ]
  %417 = icmp slt i32 %375, %367
  br i1 %417, label %418, label %455

418:                                              ; preds = %415
  %419 = sext i32 %375 to i64
  br label %420

420:                                              ; preds = %418, %449
  %421 = phi i64 [ %419, %418 ], [ %450, %449 ]
  %422 = getelementptr inbounds ptr, ptr %121, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !75
  %424 = load i32, ptr %423, align 8, !tbaa !159
  %425 = and i32 %424, 2
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %449, label %427

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.frame_store, ptr %423, i64 0, i32 14
  %429 = load ptr, ptr %428, align 8, !tbaa !97
  %430 = getelementptr inbounds %struct.storable_picture, ptr %429, i64 0, i32 11
  %431 = load i32, ptr %430, align 4, !tbaa !129
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %438, label %433

433:                                              ; preds = %427
  %434 = getelementptr inbounds %struct.storable_picture, ptr %429, i64 0, i32 10
  %435 = load i8, ptr %434, align 8, !tbaa !158
  %436 = icmp ne i8 %435, 0
  %437 = zext i1 %436 to i32
  br label %438

438:                                              ; preds = %427, %433
  %439 = phi i32 [ 0, %427 ], [ %437, %433 ]
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %449, label %441

441:                                              ; preds = %438
  %442 = trunc i64 %421 to i32
  %443 = load i8, ptr %155, align 1, !tbaa !161
  %444 = sext i8 %443 to i64
  %445 = getelementptr inbounds ptr, ptr %370, i64 %444
  store ptr %429, ptr %445, align 8, !tbaa !75
  %446 = load i8, ptr %155, align 1, !tbaa !161
  %447 = add i8 %446, 1
  store i8 %447, ptr %155, align 1, !tbaa !161
  %448 = add nsw i32 %442, 1
  br label %455

449:                                              ; preds = %438, %420
  %450 = add nsw i64 %421, 1
  %451 = trunc i64 %450 to i32
  %452 = icmp eq i32 %367, %451
  br i1 %452, label %453, label %420, !llvm.loop !163

453:                                              ; preds = %449
  %454 = trunc i64 %450 to i32
  br label %455

455:                                              ; preds = %453, %415, %441
  %456 = phi i32 [ %448, %441 ], [ %375, %415 ], [ %454, %453 ]
  %457 = icmp slt i32 %416, %367
  %458 = icmp slt i32 %456, %367
  %459 = select i1 %457, i1 true, i1 %458
  br i1 %459, label %374, label %460, !llvm.loop !164

460:                                              ; preds = %455, %366
  %461 = phi i32 [ 0, %366 ], [ %416, %455 ]
  %462 = phi i32 [ 0, %366 ], [ %456, %455 ]
  %463 = icmp eq i32 %369, 2
  br i1 %463, label %464, label %554

464:                                              ; preds = %460
  %465 = icmp slt i32 %461, %367
  %466 = icmp slt i32 %462, %367
  %467 = select i1 %465, i1 true, i1 %466
  br i1 %467, label %468, label %554

468:                                              ; preds = %464, %549
  %469 = phi i32 [ %510, %549 ], [ %462, %464 ]
  %470 = phi i32 [ %550, %549 ], [ %461, %464 ]
  %471 = icmp slt i32 %469, %367
  br i1 %471, label %472, label %509

472:                                              ; preds = %468
  %473 = sext i32 %469 to i64
  br label %474

474:                                              ; preds = %472, %503
  %475 = phi i64 [ %473, %472 ], [ %504, %503 ]
  %476 = getelementptr inbounds ptr, ptr %121, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !75
  %478 = load i32, ptr %477, align 8, !tbaa !159
  %479 = and i32 %478, 2
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %503, label %481

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.frame_store, ptr %477, i64 0, i32 14
  %483 = load ptr, ptr %482, align 8, !tbaa !97
  %484 = getelementptr inbounds %struct.storable_picture, ptr %483, i64 0, i32 11
  %485 = load i32, ptr %484, align 4, !tbaa !129
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %492, label %487

487:                                              ; preds = %481
  %488 = getelementptr inbounds %struct.storable_picture, ptr %483, i64 0, i32 10
  %489 = load i8, ptr %488, align 8, !tbaa !158
  %490 = icmp ne i8 %489, 0
  %491 = zext i1 %490 to i32
  br label %492

492:                                              ; preds = %481, %487
  %493 = phi i32 [ 0, %481 ], [ %491, %487 ]
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %503, label %495

495:                                              ; preds = %492
  %496 = trunc i64 %475 to i32
  %497 = load i8, ptr %155, align 1, !tbaa !161
  %498 = sext i8 %497 to i64
  %499 = getelementptr inbounds ptr, ptr %370, i64 %498
  store ptr %483, ptr %499, align 8, !tbaa !75
  %500 = load i8, ptr %155, align 1, !tbaa !161
  %501 = add i8 %500, 1
  store i8 %501, ptr %155, align 1, !tbaa !161
  %502 = add nsw i32 %496, 1
  br label %509

503:                                              ; preds = %492, %474
  %504 = add nsw i64 %475, 1
  %505 = trunc i64 %504 to i32
  %506 = icmp eq i32 %367, %505
  br i1 %506, label %507, label %474, !llvm.loop !165

507:                                              ; preds = %503
  %508 = trunc i64 %504 to i32
  br label %509

509:                                              ; preds = %507, %468, %495
  %510 = phi i32 [ %502, %495 ], [ %469, %468 ], [ %508, %507 ]
  %511 = icmp slt i32 %470, %367
  br i1 %511, label %512, label %549

512:                                              ; preds = %509
  %513 = sext i32 %470 to i64
  br label %514

514:                                              ; preds = %512, %543
  %515 = phi i64 [ %513, %512 ], [ %544, %543 ]
  %516 = getelementptr inbounds ptr, ptr %121, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !75
  %518 = load i32, ptr %517, align 8, !tbaa !159
  %519 = and i32 %518, 1
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %543, label %521

521:                                              ; preds = %514
  %522 = getelementptr inbounds %struct.frame_store, ptr %517, i64 0, i32 13
  %523 = load ptr, ptr %522, align 8, !tbaa !96
  %524 = getelementptr inbounds %struct.storable_picture, ptr %523, i64 0, i32 11
  %525 = load i32, ptr %524, align 4, !tbaa !129
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %532, label %527

527:                                              ; preds = %521
  %528 = getelementptr inbounds %struct.storable_picture, ptr %523, i64 0, i32 10
  %529 = load i8, ptr %528, align 8, !tbaa !158
  %530 = icmp ne i8 %529, 0
  %531 = zext i1 %530 to i32
  br label %532

532:                                              ; preds = %521, %527
  %533 = phi i32 [ 0, %521 ], [ %531, %527 ]
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %543, label %535

535:                                              ; preds = %532
  %536 = trunc i64 %515 to i32
  %537 = load i8, ptr %155, align 1, !tbaa !161
  %538 = sext i8 %537 to i64
  %539 = getelementptr inbounds ptr, ptr %370, i64 %538
  store ptr %523, ptr %539, align 8, !tbaa !75
  %540 = load i8, ptr %155, align 1, !tbaa !161
  %541 = add i8 %540, 1
  store i8 %541, ptr %155, align 1, !tbaa !161
  %542 = add nsw i32 %536, 1
  br label %549

543:                                              ; preds = %532, %514
  %544 = add nsw i64 %515, 1
  %545 = trunc i64 %544 to i32
  %546 = icmp eq i32 %367, %545
  br i1 %546, label %547, label %514, !llvm.loop !166

547:                                              ; preds = %543
  %548 = trunc i64 %544 to i32
  br label %549

549:                                              ; preds = %547, %509, %535
  %550 = phi i32 [ %542, %535 ], [ %470, %509 ], [ %548, %547 ]
  %551 = icmp slt i32 %550, %367
  %552 = icmp slt i32 %510, %367
  %553 = select i1 %551, i1 true, i1 %552
  br i1 %553, label %468, label %554, !llvm.loop !167

554:                                              ; preds = %549, %464, %460
  tail call void @free(ptr noundef %115) #20
  tail call void @free(ptr noundef %121) #20
  br label %555

555:                                              ; preds = %554, %101
  %556 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %556, align 1, !tbaa !161
  br label %1637

557:                                              ; preds = %1
  %558 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %559 = load i32, ptr %558, align 8, !tbaa !173
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %755

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %563 = load i32, ptr %562, align 8, !tbaa !53
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %606, label %565

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %567 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %568 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %569 = zext i32 %563 to i64
  br label %570

570:                                              ; preds = %565, %602
  %571 = phi i64 [ 0, %565 ], [ %604, %602 ]
  %572 = phi i32 [ 0, %565 ], [ %603, %602 ]
  %573 = load ptr, ptr %566, align 8, !tbaa !71
  %574 = getelementptr inbounds ptr, ptr %573, i64 %571
  %575 = load ptr, ptr %574, align 8, !tbaa !75
  %576 = load i32, ptr %575, align 8, !tbaa !159
  %577 = icmp eq i32 %576, 3
  br i1 %577, label %578, label %602

578:                                              ; preds = %570
  %579 = getelementptr inbounds %struct.frame_store, ptr %575, i64 0, i32 12
  %580 = load ptr, ptr %579, align 8, !tbaa !95
  %581 = getelementptr inbounds %struct.storable_picture, ptr %580, i64 0, i32 11
  %582 = load i32, ptr %581, align 4, !tbaa !129
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %602, label %584

584:                                              ; preds = %578
  %585 = getelementptr inbounds %struct.storable_picture, ptr %580, i64 0, i32 10
  %586 = load i8, ptr %585, align 8, !tbaa !158
  %587 = icmp eq i8 %586, 0
  br i1 %587, label %588, label %602

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.storable_picture, ptr %580, i64 0, i32 64
  %590 = load i32, ptr %589, align 8, !tbaa !133
  %591 = icmp eq i32 %590, %8
  br i1 %591, label %592, label %602

592:                                              ; preds = %588
  %593 = load i32, ptr %567, align 4, !tbaa !207
  %594 = getelementptr inbounds %struct.storable_picture, ptr %580, i64 0, i32 1
  %595 = load i32, ptr %594, align 4, !tbaa !146
  %596 = icmp slt i32 %593, %595
  br i1 %596, label %602, label %597

597:                                              ; preds = %592
  %598 = load ptr, ptr %568, align 8, !tbaa !75
  %599 = add nsw i32 %572, 1
  %600 = sext i32 %572 to i64
  %601 = getelementptr inbounds ptr, ptr %598, i64 %600
  store ptr %580, ptr %601, align 8, !tbaa !75
  br label %602

602:                                              ; preds = %570, %592, %597, %588, %584, %578
  %603 = phi i32 [ %572, %584 ], [ %599, %597 ], [ %572, %592 ], [ %572, %588 ], [ %572, %578 ], [ %572, %570 ]
  %604 = add nuw nsw i64 %571, 1
  %605 = icmp eq i64 %604, %569
  br i1 %605, label %606, label %570, !llvm.loop !229

606:                                              ; preds = %602, %561
  %607 = phi i32 [ 0, %561 ], [ %603, %602 ]
  %608 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %609 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %610 = load ptr, ptr %609, align 8, !tbaa !75
  %611 = sext i32 %607 to i64
  tail call void @qsort(ptr noundef %610, i64 noundef %611, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #20
  %612 = load i32, ptr %608, align 8, !tbaa !53
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %654, label %614

614:                                              ; preds = %606
  %615 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %616 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %617 = zext i32 %612 to i64
  br label %618

618:                                              ; preds = %614, %650
  %619 = phi i64 [ 0, %614 ], [ %652, %650 ]
  %620 = phi i32 [ %607, %614 ], [ %651, %650 ]
  %621 = load ptr, ptr %615, align 8, !tbaa !71
  %622 = getelementptr inbounds ptr, ptr %621, i64 %619
  %623 = load ptr, ptr %622, align 8, !tbaa !75
  %624 = load i32, ptr %623, align 8, !tbaa !159
  %625 = icmp eq i32 %624, 3
  br i1 %625, label %626, label %650

626:                                              ; preds = %618
  %627 = getelementptr inbounds %struct.frame_store, ptr %623, i64 0, i32 12
  %628 = load ptr, ptr %627, align 8, !tbaa !95
  %629 = getelementptr inbounds %struct.storable_picture, ptr %628, i64 0, i32 11
  %630 = load i32, ptr %629, align 4, !tbaa !129
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %650, label %632

632:                                              ; preds = %626
  %633 = getelementptr inbounds %struct.storable_picture, ptr %628, i64 0, i32 10
  %634 = load i8, ptr %633, align 8, !tbaa !158
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %636, label %650

636:                                              ; preds = %632
  %637 = getelementptr inbounds %struct.storable_picture, ptr %628, i64 0, i32 64
  %638 = load i32, ptr %637, align 8, !tbaa !133
  %639 = icmp eq i32 %638, %8
  br i1 %639, label %640, label %650

640:                                              ; preds = %636
  %641 = load i32, ptr %616, align 4, !tbaa !207
  %642 = getelementptr inbounds %struct.storable_picture, ptr %628, i64 0, i32 1
  %643 = load i32, ptr %642, align 4, !tbaa !146
  %644 = icmp slt i32 %641, %643
  br i1 %644, label %645, label %650

645:                                              ; preds = %640
  %646 = load ptr, ptr %609, align 8, !tbaa !75
  %647 = add nsw i32 %620, 1
  %648 = sext i32 %620 to i64
  %649 = getelementptr inbounds ptr, ptr %646, i64 %648
  store ptr %628, ptr %649, align 8, !tbaa !75
  br label %650

650:                                              ; preds = %618, %640, %645, %636, %632, %626
  %651 = phi i32 [ %620, %632 ], [ %647, %645 ], [ %620, %640 ], [ %620, %636 ], [ %620, %626 ], [ %620, %618 ]
  %652 = add nuw nsw i64 %619, 1
  %653 = icmp eq i64 %652, %617
  br i1 %653, label %654, label %618, !llvm.loop !230

654:                                              ; preds = %650, %606
  %655 = phi i32 [ %607, %606 ], [ %651, %650 ]
  %656 = load ptr, ptr %609, align 8, !tbaa !75
  %657 = getelementptr inbounds ptr, ptr %656, i64 %611
  %658 = sub nsw i32 %655, %607
  %659 = sext i32 %658 to i64
  tail call void @qsort(ptr noundef %657, i64 noundef %659, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #20
  %660 = icmp sgt i32 %607, 0
  br i1 %660, label %661, label %665

661:                                              ; preds = %654
  %662 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %663 = sext i32 %658 to i64
  %664 = zext nneg i32 %607 to i64
  br label %672

665:                                              ; preds = %672, %654
  %666 = icmp slt i32 %607, %655
  br i1 %666, label %667, label %692

667:                                              ; preds = %665
  %668 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %669 = sext i32 %607 to i64
  %670 = sext i32 %607 to i64
  %671 = sext i32 %655 to i64
  br label %682

672:                                              ; preds = %661, %672
  %673 = phi i64 [ 0, %661 ], [ %680, %672 ]
  %674 = load ptr, ptr %609, align 8, !tbaa !75
  %675 = getelementptr inbounds ptr, ptr %674, i64 %673
  %676 = load ptr, ptr %675, align 8, !tbaa !75
  %677 = load ptr, ptr %662, align 8, !tbaa !75
  %678 = getelementptr ptr, ptr %677, i64 %673
  %679 = getelementptr ptr, ptr %678, i64 %663
  store ptr %676, ptr %679, align 8, !tbaa !75
  %680 = add nuw nsw i64 %673, 1
  %681 = icmp eq i64 %680, %664
  br i1 %681, label %665, label %672, !llvm.loop !231

682:                                              ; preds = %667, %682
  %683 = phi i64 [ %669, %667 ], [ %690, %682 ]
  %684 = load ptr, ptr %609, align 8, !tbaa !75
  %685 = getelementptr inbounds ptr, ptr %684, i64 %683
  %686 = load ptr, ptr %685, align 8, !tbaa !75
  %687 = load ptr, ptr %668, align 8, !tbaa !75
  %688 = sub nsw i64 %683, %670
  %689 = getelementptr inbounds ptr, ptr %687, i64 %688
  store ptr %686, ptr %689, align 8, !tbaa !75
  %690 = add nsw i64 %683, 1
  %691 = icmp eq i64 %690, %671
  br i1 %691, label %692, label %682, !llvm.loop !232

692:                                              ; preds = %682, %665
  %693 = trunc i32 %655 to i8
  %694 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %695 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %693, ptr %695, align 1, !tbaa !161
  store i8 %693, ptr %694, align 8, !tbaa !161
  %696 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %697 = load i32, ptr %696, align 4, !tbaa !50
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %737, label %699

699:                                              ; preds = %692
  %700 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %701 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %702 = zext i32 %697 to i64
  br label %703

703:                                              ; preds = %699, %733
  %704 = phi i64 [ 0, %699 ], [ %735, %733 ]
  %705 = phi i32 [ %655, %699 ], [ %734, %733 ]
  %706 = load ptr, ptr %700, align 8, !tbaa !72
  %707 = getelementptr inbounds ptr, ptr %706, i64 %704
  %708 = load ptr, ptr %707, align 8, !tbaa !75
  %709 = load i32, ptr %708, align 8, !tbaa !159
  %710 = icmp eq i32 %709, 3
  br i1 %710, label %711, label %733

711:                                              ; preds = %703
  %712 = getelementptr inbounds %struct.frame_store, ptr %708, i64 0, i32 12
  %713 = load ptr, ptr %712, align 8, !tbaa !95
  %714 = getelementptr inbounds %struct.storable_picture, ptr %713, i64 0, i32 10
  %715 = load i8, ptr %714, align 8, !tbaa !158
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %733, label %717

717:                                              ; preds = %711
  %718 = getelementptr inbounds %struct.storable_picture, ptr %713, i64 0, i32 64
  %719 = load i32, ptr %718, align 8, !tbaa !133
  %720 = icmp eq i32 %719, %8
  br i1 %720, label %721, label %733

721:                                              ; preds = %717
  %722 = load ptr, ptr %609, align 8, !tbaa !75
  %723 = sext i32 %705 to i64
  %724 = getelementptr inbounds ptr, ptr %722, i64 %723
  store ptr %713, ptr %724, align 8, !tbaa !75
  %725 = load ptr, ptr %700, align 8, !tbaa !72
  %726 = getelementptr inbounds ptr, ptr %725, i64 %704
  %727 = load ptr, ptr %726, align 8, !tbaa !75
  %728 = getelementptr inbounds %struct.frame_store, ptr %727, i64 0, i32 12
  %729 = load ptr, ptr %728, align 8, !tbaa !95
  %730 = load ptr, ptr %701, align 8, !tbaa !75
  %731 = add nsw i32 %705, 1
  %732 = getelementptr inbounds ptr, ptr %730, i64 %723
  store ptr %729, ptr %732, align 8, !tbaa !75
  br label %733

733:                                              ; preds = %703, %721, %717, %711
  %734 = phi i32 [ %731, %721 ], [ %705, %717 ], [ %705, %711 ], [ %705, %703 ]
  %735 = add nuw nsw i64 %704, 1
  %736 = icmp eq i64 %735, %702
  br i1 %736, label %737, label %703, !llvm.loop !233

737:                                              ; preds = %733, %692
  %738 = phi i32 [ %655, %692 ], [ %734, %733 ]
  %739 = load ptr, ptr %609, align 8, !tbaa !75
  %740 = load i8, ptr %694, align 8, !tbaa !161
  %741 = sext i8 %740 to i64
  %742 = getelementptr inbounds ptr, ptr %739, i64 %741
  %743 = sext i8 %740 to i32
  %744 = sub nsw i32 %738, %743
  %745 = sext i32 %744 to i64
  tail call void @qsort(ptr noundef %742, i64 noundef %745, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %746 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %747 = load ptr, ptr %746, align 8, !tbaa !75
  %748 = load i8, ptr %694, align 8, !tbaa !161
  %749 = sext i8 %748 to i64
  %750 = getelementptr inbounds ptr, ptr %747, i64 %749
  %751 = sext i8 %748 to i32
  %752 = sub nsw i32 %738, %751
  %753 = sext i32 %752 to i64
  tail call void @qsort(ptr noundef %750, i64 noundef %753, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #20
  %754 = trunc i32 %738 to i8
  store i8 %754, ptr %695, align 1, !tbaa !161
  store i8 %754, ptr %694, align 8, !tbaa !161
  br label %1637

755:                                              ; preds = %557
  %756 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %757 = load i32, ptr %756, align 8, !tbaa !65
  %758 = zext i32 %757 to i64
  %759 = tail call noalias ptr @calloc(i64 noundef %758, i64 noundef 8) #21
  %760 = icmp eq ptr %759, null
  br i1 %760, label %761, label %762

761:                                              ; preds = %755
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #20
  br label %762

762:                                              ; preds = %761, %755
  %763 = load i32, ptr %756, align 8, !tbaa !65
  %764 = zext i32 %763 to i64
  %765 = tail call noalias ptr @calloc(i64 noundef %764, i64 noundef 8) #21
  %766 = icmp eq ptr %765, null
  br i1 %766, label %767, label %768

767:                                              ; preds = %762
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #20
  br label %768

768:                                              ; preds = %767, %762
  %769 = load i32, ptr %756, align 8, !tbaa !65
  %770 = zext i32 %769 to i64
  %771 = tail call noalias ptr @calloc(i64 noundef %770, i64 noundef 8) #21
  %772 = icmp eq ptr %771, null
  br i1 %772, label %773, label %774

773:                                              ; preds = %768
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  br label %774

774:                                              ; preds = %773, %768
  %775 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %775, align 8, !tbaa !161
  %776 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %776, align 1, !tbaa !161
  %777 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %778 = load i32, ptr %777, align 8, !tbaa !53
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %808, label %780

780:                                              ; preds = %774
  %781 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %782 = zext i32 %778 to i64
  br label %783

783:                                              ; preds = %780, %804
  %784 = phi i64 [ 0, %780 ], [ %806, %804 ]
  %785 = phi i32 [ 0, %780 ], [ %805, %804 ]
  %786 = load ptr, ptr %781, align 8, !tbaa !71
  %787 = getelementptr inbounds ptr, ptr %786, i64 %784
  %788 = load ptr, ptr %787, align 8, !tbaa !75
  %789 = load i32, ptr %788, align 8, !tbaa !159
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %804, label %791

791:                                              ; preds = %783
  %792 = load i32, ptr %5, align 8, !tbaa !188
  %793 = getelementptr inbounds %struct.frame_store, ptr %788, i64 0, i32 10
  %794 = load i32, ptr %793, align 8, !tbaa !213
  %795 = icmp slt i32 %792, %794
  br i1 %795, label %804, label %796

796:                                              ; preds = %791
  %797 = getelementptr inbounds %struct.frame_store, ptr %788, i64 0, i32 15
  %798 = load i32, ptr %797, align 8, !tbaa !76
  %799 = icmp eq i32 %798, %8
  br i1 %799, label %800, label %804

800:                                              ; preds = %796
  %801 = add nsw i32 %785, 1
  %802 = sext i32 %785 to i64
  %803 = getelementptr inbounds ptr, ptr %759, i64 %802
  store ptr %788, ptr %803, align 8, !tbaa !75
  br label %804

804:                                              ; preds = %783, %800, %796, %791
  %805 = phi i32 [ %801, %800 ], [ %785, %796 ], [ %785, %791 ], [ %785, %783 ]
  %806 = add nuw nsw i64 %784, 1
  %807 = icmp eq i64 %806, %782
  br i1 %807, label %808, label %783, !llvm.loop !234

808:                                              ; preds = %804, %774
  %809 = phi i32 [ 0, %774 ], [ %805, %804 ]
  %810 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %811 = sext i32 %809 to i64
  tail call void @qsort(ptr noundef %759, i64 noundef %811, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #20
  %812 = load i32, ptr %810, align 8, !tbaa !53
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %842, label %814

814:                                              ; preds = %808
  %815 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %816 = zext i32 %812 to i64
  br label %817

817:                                              ; preds = %814, %838
  %818 = phi i64 [ 0, %814 ], [ %840, %838 ]
  %819 = phi i32 [ %809, %814 ], [ %839, %838 ]
  %820 = load ptr, ptr %815, align 8, !tbaa !71
  %821 = getelementptr inbounds ptr, ptr %820, i64 %818
  %822 = load ptr, ptr %821, align 8, !tbaa !75
  %823 = load i32, ptr %822, align 8, !tbaa !159
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %838, label %825

825:                                              ; preds = %817
  %826 = load i32, ptr %5, align 8, !tbaa !188
  %827 = getelementptr inbounds %struct.frame_store, ptr %822, i64 0, i32 10
  %828 = load i32, ptr %827, align 8, !tbaa !213
  %829 = icmp slt i32 %826, %828
  br i1 %829, label %830, label %838

830:                                              ; preds = %825
  %831 = getelementptr inbounds %struct.frame_store, ptr %822, i64 0, i32 15
  %832 = load i32, ptr %831, align 8, !tbaa !76
  %833 = icmp eq i32 %832, %8
  br i1 %833, label %834, label %838

834:                                              ; preds = %830
  %835 = add nsw i32 %819, 1
  %836 = sext i32 %819 to i64
  %837 = getelementptr inbounds ptr, ptr %759, i64 %836
  store ptr %822, ptr %837, align 8, !tbaa !75
  br label %838

838:                                              ; preds = %817, %834, %830, %825
  %839 = phi i32 [ %835, %834 ], [ %819, %830 ], [ %819, %825 ], [ %819, %817 ]
  %840 = add nuw nsw i64 %818, 1
  %841 = icmp eq i64 %840, %816
  br i1 %841, label %842, label %817, !llvm.loop !235

842:                                              ; preds = %838, %808
  %843 = phi i32 [ %809, %808 ], [ %839, %838 ]
  %844 = getelementptr inbounds ptr, ptr %759, i64 %811
  %845 = sub nsw i32 %843, %809
  %846 = sext i32 %845 to i64
  tail call void @qsort(ptr noundef %844, i64 noundef %846, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #20
  %847 = icmp sgt i32 %809, 0
  br i1 %847, label %848, label %852

848:                                              ; preds = %842
  %849 = sext i32 %845 to i64
  %850 = zext nneg i32 %809 to i64
  %851 = getelementptr ptr, ptr %765, i64 %849
  br label %863

852:                                              ; preds = %863, %842
  %853 = icmp slt i32 %809, %843
  br i1 %853, label %854, label %870

854:                                              ; preds = %852
  %855 = sext i32 %809 to i64
  %856 = shl nsw i64 %855, 3
  %857 = getelementptr i8, ptr %759, i64 %856
  %858 = xor i32 %809, -1
  %859 = add i32 %843, %858
  %860 = zext i32 %859 to i64
  %861 = shl nuw nsw i64 %860, 3
  %862 = add nuw nsw i64 %861, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %765, ptr noundef nonnull align 8 dereferenceable(1) %857, i64 %862, i1 false), !tbaa !75
  br label %870

863:                                              ; preds = %848, %863
  %864 = phi i64 [ 0, %848 ], [ %868, %863 ]
  %865 = getelementptr inbounds ptr, ptr %759, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !75
  %867 = getelementptr ptr, ptr %851, i64 %864
  store ptr %866, ptr %867, align 8, !tbaa !75
  %868 = add nuw nsw i64 %864, 1
  %869 = icmp eq i64 %868, %850
  br i1 %869, label %852, label %863, !llvm.loop !236

870:                                              ; preds = %854, %852
  store i8 0, ptr %775, align 8, !tbaa !161
  store i8 0, ptr %776, align 1, !tbaa !161
  %871 = load i32, ptr %558, align 8, !tbaa !173
  %872 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %873 = load ptr, ptr %872, align 8, !tbaa !75
  %874 = icmp eq i32 %871, 1
  %875 = icmp sgt i32 %843, 0
  %876 = and i1 %874, %875
  br i1 %876, label %877, label %963

877:                                              ; preds = %870, %958
  %878 = phi i32 [ %959, %958 ], [ 0, %870 ]
  %879 = phi i32 [ %919, %958 ], [ 0, %870 ]
  %880 = icmp slt i32 %879, %843
  br i1 %880, label %881, label %918

881:                                              ; preds = %877
  %882 = sext i32 %879 to i64
  br label %883

883:                                              ; preds = %881, %912
  %884 = phi i64 [ %882, %881 ], [ %913, %912 ]
  %885 = getelementptr inbounds ptr, ptr %759, i64 %884
  %886 = load ptr, ptr %885, align 8, !tbaa !75
  %887 = load i32, ptr %886, align 8, !tbaa !159
  %888 = and i32 %887, 1
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %912, label %890

890:                                              ; preds = %883
  %891 = getelementptr inbounds %struct.frame_store, ptr %886, i64 0, i32 13
  %892 = load ptr, ptr %891, align 8, !tbaa !96
  %893 = getelementptr inbounds %struct.storable_picture, ptr %892, i64 0, i32 11
  %894 = load i32, ptr %893, align 4, !tbaa !129
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %901, label %896

896:                                              ; preds = %890
  %897 = getelementptr inbounds %struct.storable_picture, ptr %892, i64 0, i32 10
  %898 = load i8, ptr %897, align 8, !tbaa !158
  %899 = icmp eq i8 %898, 0
  %900 = zext i1 %899 to i32
  br label %901

901:                                              ; preds = %890, %896
  %902 = phi i32 [ 0, %890 ], [ %900, %896 ]
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %912, label %904

904:                                              ; preds = %901
  %905 = trunc i64 %884 to i32
  %906 = load i8, ptr %775, align 1, !tbaa !161
  %907 = sext i8 %906 to i64
  %908 = getelementptr inbounds ptr, ptr %873, i64 %907
  store ptr %892, ptr %908, align 8, !tbaa !75
  %909 = load i8, ptr %775, align 1, !tbaa !161
  %910 = add i8 %909, 1
  store i8 %910, ptr %775, align 1, !tbaa !161
  %911 = add nsw i32 %905, 1
  br label %918

912:                                              ; preds = %901, %883
  %913 = add nsw i64 %884, 1
  %914 = trunc i64 %913 to i32
  %915 = icmp eq i32 %843, %914
  br i1 %915, label %916, label %883, !llvm.loop !162

916:                                              ; preds = %912
  %917 = trunc i64 %913 to i32
  br label %918

918:                                              ; preds = %916, %877, %904
  %919 = phi i32 [ %911, %904 ], [ %879, %877 ], [ %917, %916 ]
  %920 = icmp slt i32 %878, %843
  br i1 %920, label %921, label %958

921:                                              ; preds = %918
  %922 = sext i32 %878 to i64
  br label %923

923:                                              ; preds = %921, %952
  %924 = phi i64 [ %922, %921 ], [ %953, %952 ]
  %925 = getelementptr inbounds ptr, ptr %759, i64 %924
  %926 = load ptr, ptr %925, align 8, !tbaa !75
  %927 = load i32, ptr %926, align 8, !tbaa !159
  %928 = and i32 %927, 2
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %952, label %930

930:                                              ; preds = %923
  %931 = getelementptr inbounds %struct.frame_store, ptr %926, i64 0, i32 14
  %932 = load ptr, ptr %931, align 8, !tbaa !97
  %933 = getelementptr inbounds %struct.storable_picture, ptr %932, i64 0, i32 11
  %934 = load i32, ptr %933, align 4, !tbaa !129
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %941, label %936

936:                                              ; preds = %930
  %937 = getelementptr inbounds %struct.storable_picture, ptr %932, i64 0, i32 10
  %938 = load i8, ptr %937, align 8, !tbaa !158
  %939 = icmp eq i8 %938, 0
  %940 = zext i1 %939 to i32
  br label %941

941:                                              ; preds = %930, %936
  %942 = phi i32 [ 0, %930 ], [ %940, %936 ]
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %952, label %944

944:                                              ; preds = %941
  %945 = trunc i64 %924 to i32
  %946 = load i8, ptr %775, align 1, !tbaa !161
  %947 = sext i8 %946 to i64
  %948 = getelementptr inbounds ptr, ptr %873, i64 %947
  store ptr %932, ptr %948, align 8, !tbaa !75
  %949 = load i8, ptr %775, align 1, !tbaa !161
  %950 = add i8 %949, 1
  store i8 %950, ptr %775, align 1, !tbaa !161
  %951 = add nsw i32 %945, 1
  br label %958

952:                                              ; preds = %941, %923
  %953 = add nsw i64 %924, 1
  %954 = trunc i64 %953 to i32
  %955 = icmp eq i32 %843, %954
  br i1 %955, label %956, label %923, !llvm.loop !163

956:                                              ; preds = %952
  %957 = trunc i64 %953 to i32
  br label %958

958:                                              ; preds = %956, %918, %944
  %959 = phi i32 [ %951, %944 ], [ %878, %918 ], [ %957, %956 ]
  %960 = icmp slt i32 %919, %843
  %961 = icmp slt i32 %959, %843
  %962 = select i1 %960, i1 true, i1 %961
  br i1 %962, label %877, label %963, !llvm.loop !164

963:                                              ; preds = %958, %870
  %964 = phi i32 [ 0, %870 ], [ %919, %958 ]
  %965 = phi i32 [ 0, %870 ], [ %959, %958 ]
  %966 = icmp eq i32 %871, 2
  br i1 %966, label %967, label %1057

967:                                              ; preds = %963
  %968 = icmp slt i32 %964, %843
  %969 = icmp slt i32 %965, %843
  %970 = select i1 %968, i1 true, i1 %969
  br i1 %970, label %971, label %1057

971:                                              ; preds = %967, %1052
  %972 = phi i32 [ %1013, %1052 ], [ %965, %967 ]
  %973 = phi i32 [ %1053, %1052 ], [ %964, %967 ]
  %974 = icmp slt i32 %972, %843
  br i1 %974, label %975, label %1012

975:                                              ; preds = %971
  %976 = sext i32 %972 to i64
  br label %977

977:                                              ; preds = %975, %1006
  %978 = phi i64 [ %976, %975 ], [ %1007, %1006 ]
  %979 = getelementptr inbounds ptr, ptr %759, i64 %978
  %980 = load ptr, ptr %979, align 8, !tbaa !75
  %981 = load i32, ptr %980, align 8, !tbaa !159
  %982 = and i32 %981, 2
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1006, label %984

984:                                              ; preds = %977
  %985 = getelementptr inbounds %struct.frame_store, ptr %980, i64 0, i32 14
  %986 = load ptr, ptr %985, align 8, !tbaa !97
  %987 = getelementptr inbounds %struct.storable_picture, ptr %986, i64 0, i32 11
  %988 = load i32, ptr %987, align 4, !tbaa !129
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %995, label %990

990:                                              ; preds = %984
  %991 = getelementptr inbounds %struct.storable_picture, ptr %986, i64 0, i32 10
  %992 = load i8, ptr %991, align 8, !tbaa !158
  %993 = icmp eq i8 %992, 0
  %994 = zext i1 %993 to i32
  br label %995

995:                                              ; preds = %984, %990
  %996 = phi i32 [ 0, %984 ], [ %994, %990 ]
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1006, label %998

998:                                              ; preds = %995
  %999 = trunc i64 %978 to i32
  %1000 = load i8, ptr %775, align 1, !tbaa !161
  %1001 = sext i8 %1000 to i64
  %1002 = getelementptr inbounds ptr, ptr %873, i64 %1001
  store ptr %986, ptr %1002, align 8, !tbaa !75
  %1003 = load i8, ptr %775, align 1, !tbaa !161
  %1004 = add i8 %1003, 1
  store i8 %1004, ptr %775, align 1, !tbaa !161
  %1005 = add nsw i32 %999, 1
  br label %1012

1006:                                             ; preds = %995, %977
  %1007 = add nsw i64 %978, 1
  %1008 = trunc i64 %1007 to i32
  %1009 = icmp eq i32 %843, %1008
  br i1 %1009, label %1010, label %977, !llvm.loop !165

1010:                                             ; preds = %1006
  %1011 = trunc i64 %1007 to i32
  br label %1012

1012:                                             ; preds = %1010, %971, %998
  %1013 = phi i32 [ %1005, %998 ], [ %972, %971 ], [ %1011, %1010 ]
  %1014 = icmp slt i32 %973, %843
  br i1 %1014, label %1015, label %1052

1015:                                             ; preds = %1012
  %1016 = sext i32 %973 to i64
  br label %1017

1017:                                             ; preds = %1015, %1046
  %1018 = phi i64 [ %1016, %1015 ], [ %1047, %1046 ]
  %1019 = getelementptr inbounds ptr, ptr %759, i64 %1018
  %1020 = load ptr, ptr %1019, align 8, !tbaa !75
  %1021 = load i32, ptr %1020, align 8, !tbaa !159
  %1022 = and i32 %1021, 1
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1046, label %1024

1024:                                             ; preds = %1017
  %1025 = getelementptr inbounds %struct.frame_store, ptr %1020, i64 0, i32 13
  %1026 = load ptr, ptr %1025, align 8, !tbaa !96
  %1027 = getelementptr inbounds %struct.storable_picture, ptr %1026, i64 0, i32 11
  %1028 = load i32, ptr %1027, align 4, !tbaa !129
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1035, label %1030

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds %struct.storable_picture, ptr %1026, i64 0, i32 10
  %1032 = load i8, ptr %1031, align 8, !tbaa !158
  %1033 = icmp eq i8 %1032, 0
  %1034 = zext i1 %1033 to i32
  br label %1035

1035:                                             ; preds = %1024, %1030
  %1036 = phi i32 [ 0, %1024 ], [ %1034, %1030 ]
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1046, label %1038

1038:                                             ; preds = %1035
  %1039 = trunc i64 %1018 to i32
  %1040 = load i8, ptr %775, align 1, !tbaa !161
  %1041 = sext i8 %1040 to i64
  %1042 = getelementptr inbounds ptr, ptr %873, i64 %1041
  store ptr %1026, ptr %1042, align 8, !tbaa !75
  %1043 = load i8, ptr %775, align 1, !tbaa !161
  %1044 = add i8 %1043, 1
  store i8 %1044, ptr %775, align 1, !tbaa !161
  %1045 = add nsw i32 %1039, 1
  br label %1052

1046:                                             ; preds = %1035, %1017
  %1047 = add nsw i64 %1018, 1
  %1048 = trunc i64 %1047 to i32
  %1049 = icmp eq i32 %843, %1048
  br i1 %1049, label %1050, label %1017, !llvm.loop !166

1050:                                             ; preds = %1046
  %1051 = trunc i64 %1047 to i32
  br label %1052

1052:                                             ; preds = %1050, %1012, %1038
  %1053 = phi i32 [ %1045, %1038 ], [ %973, %1012 ], [ %1051, %1050 ]
  %1054 = icmp slt i32 %1053, %843
  %1055 = icmp slt i32 %1013, %843
  %1056 = select i1 %1054, i1 true, i1 %1055
  br i1 %1056, label %971, label %1057, !llvm.loop !167

1057:                                             ; preds = %1052, %967, %963
  %1058 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1059 = load ptr, ptr %1058, align 8, !tbaa !75
  %1060 = icmp sgt i32 %843, 0
  %1061 = and i1 %874, %1060
  br i1 %1061, label %1062, label %1148

1062:                                             ; preds = %1057, %1143
  %1063 = phi i32 [ %1144, %1143 ], [ 0, %1057 ]
  %1064 = phi i32 [ %1104, %1143 ], [ 0, %1057 ]
  %1065 = icmp slt i32 %1064, %843
  br i1 %1065, label %1066, label %1103

1066:                                             ; preds = %1062
  %1067 = sext i32 %1064 to i64
  br label %1068

1068:                                             ; preds = %1066, %1097
  %1069 = phi i64 [ %1067, %1066 ], [ %1098, %1097 ]
  %1070 = getelementptr inbounds ptr, ptr %765, i64 %1069
  %1071 = load ptr, ptr %1070, align 8, !tbaa !75
  %1072 = load i32, ptr %1071, align 8, !tbaa !159
  %1073 = and i32 %1072, 1
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1097, label %1075

1075:                                             ; preds = %1068
  %1076 = getelementptr inbounds %struct.frame_store, ptr %1071, i64 0, i32 13
  %1077 = load ptr, ptr %1076, align 8, !tbaa !96
  %1078 = getelementptr inbounds %struct.storable_picture, ptr %1077, i64 0, i32 11
  %1079 = load i32, ptr %1078, align 4, !tbaa !129
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1086, label %1081

1081:                                             ; preds = %1075
  %1082 = getelementptr inbounds %struct.storable_picture, ptr %1077, i64 0, i32 10
  %1083 = load i8, ptr %1082, align 8, !tbaa !158
  %1084 = icmp eq i8 %1083, 0
  %1085 = zext i1 %1084 to i32
  br label %1086

1086:                                             ; preds = %1075, %1081
  %1087 = phi i32 [ 0, %1075 ], [ %1085, %1081 ]
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1097, label %1089

1089:                                             ; preds = %1086
  %1090 = trunc i64 %1069 to i32
  %1091 = load i8, ptr %776, align 1, !tbaa !161
  %1092 = sext i8 %1091 to i64
  %1093 = getelementptr inbounds ptr, ptr %1059, i64 %1092
  store ptr %1077, ptr %1093, align 8, !tbaa !75
  %1094 = load i8, ptr %776, align 1, !tbaa !161
  %1095 = add i8 %1094, 1
  store i8 %1095, ptr %776, align 1, !tbaa !161
  %1096 = add nsw i32 %1090, 1
  br label %1103

1097:                                             ; preds = %1086, %1068
  %1098 = add nsw i64 %1069, 1
  %1099 = trunc i64 %1098 to i32
  %1100 = icmp eq i32 %843, %1099
  br i1 %1100, label %1101, label %1068, !llvm.loop !162

1101:                                             ; preds = %1097
  %1102 = trunc i64 %1098 to i32
  br label %1103

1103:                                             ; preds = %1101, %1062, %1089
  %1104 = phi i32 [ %1096, %1089 ], [ %1064, %1062 ], [ %1102, %1101 ]
  %1105 = icmp slt i32 %1063, %843
  br i1 %1105, label %1106, label %1143

1106:                                             ; preds = %1103
  %1107 = sext i32 %1063 to i64
  br label %1108

1108:                                             ; preds = %1106, %1137
  %1109 = phi i64 [ %1107, %1106 ], [ %1138, %1137 ]
  %1110 = getelementptr inbounds ptr, ptr %765, i64 %1109
  %1111 = load ptr, ptr %1110, align 8, !tbaa !75
  %1112 = load i32, ptr %1111, align 8, !tbaa !159
  %1113 = and i32 %1112, 2
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1137, label %1115

1115:                                             ; preds = %1108
  %1116 = getelementptr inbounds %struct.frame_store, ptr %1111, i64 0, i32 14
  %1117 = load ptr, ptr %1116, align 8, !tbaa !97
  %1118 = getelementptr inbounds %struct.storable_picture, ptr %1117, i64 0, i32 11
  %1119 = load i32, ptr %1118, align 4, !tbaa !129
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1126, label %1121

1121:                                             ; preds = %1115
  %1122 = getelementptr inbounds %struct.storable_picture, ptr %1117, i64 0, i32 10
  %1123 = load i8, ptr %1122, align 8, !tbaa !158
  %1124 = icmp eq i8 %1123, 0
  %1125 = zext i1 %1124 to i32
  br label %1126

1126:                                             ; preds = %1115, %1121
  %1127 = phi i32 [ 0, %1115 ], [ %1125, %1121 ]
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1137, label %1129

1129:                                             ; preds = %1126
  %1130 = trunc i64 %1109 to i32
  %1131 = load i8, ptr %776, align 1, !tbaa !161
  %1132 = sext i8 %1131 to i64
  %1133 = getelementptr inbounds ptr, ptr %1059, i64 %1132
  store ptr %1117, ptr %1133, align 8, !tbaa !75
  %1134 = load i8, ptr %776, align 1, !tbaa !161
  %1135 = add i8 %1134, 1
  store i8 %1135, ptr %776, align 1, !tbaa !161
  %1136 = add nsw i32 %1130, 1
  br label %1143

1137:                                             ; preds = %1126, %1108
  %1138 = add nsw i64 %1109, 1
  %1139 = trunc i64 %1138 to i32
  %1140 = icmp eq i32 %843, %1139
  br i1 %1140, label %1141, label %1108, !llvm.loop !163

1141:                                             ; preds = %1137
  %1142 = trunc i64 %1138 to i32
  br label %1143

1143:                                             ; preds = %1141, %1103, %1129
  %1144 = phi i32 [ %1136, %1129 ], [ %1063, %1103 ], [ %1142, %1141 ]
  %1145 = icmp slt i32 %1104, %843
  %1146 = icmp slt i32 %1144, %843
  %1147 = select i1 %1145, i1 true, i1 %1146
  br i1 %1147, label %1062, label %1148, !llvm.loop !164

1148:                                             ; preds = %1143, %1057
  %1149 = phi i32 [ 0, %1057 ], [ %1104, %1143 ]
  %1150 = phi i32 [ 0, %1057 ], [ %1144, %1143 ]
  br i1 %966, label %1151, label %1241

1151:                                             ; preds = %1148
  %1152 = icmp slt i32 %1149, %843
  %1153 = icmp slt i32 %1150, %843
  %1154 = select i1 %1152, i1 true, i1 %1153
  br i1 %1154, label %1155, label %1241

1155:                                             ; preds = %1151, %1236
  %1156 = phi i32 [ %1197, %1236 ], [ %1150, %1151 ]
  %1157 = phi i32 [ %1237, %1236 ], [ %1149, %1151 ]
  %1158 = icmp slt i32 %1156, %843
  br i1 %1158, label %1159, label %1196

1159:                                             ; preds = %1155
  %1160 = sext i32 %1156 to i64
  br label %1161

1161:                                             ; preds = %1159, %1190
  %1162 = phi i64 [ %1160, %1159 ], [ %1191, %1190 ]
  %1163 = getelementptr inbounds ptr, ptr %765, i64 %1162
  %1164 = load ptr, ptr %1163, align 8, !tbaa !75
  %1165 = load i32, ptr %1164, align 8, !tbaa !159
  %1166 = and i32 %1165, 2
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1190, label %1168

1168:                                             ; preds = %1161
  %1169 = getelementptr inbounds %struct.frame_store, ptr %1164, i64 0, i32 14
  %1170 = load ptr, ptr %1169, align 8, !tbaa !97
  %1171 = getelementptr inbounds %struct.storable_picture, ptr %1170, i64 0, i32 11
  %1172 = load i32, ptr %1171, align 4, !tbaa !129
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1179, label %1174

1174:                                             ; preds = %1168
  %1175 = getelementptr inbounds %struct.storable_picture, ptr %1170, i64 0, i32 10
  %1176 = load i8, ptr %1175, align 8, !tbaa !158
  %1177 = icmp eq i8 %1176, 0
  %1178 = zext i1 %1177 to i32
  br label %1179

1179:                                             ; preds = %1168, %1174
  %1180 = phi i32 [ 0, %1168 ], [ %1178, %1174 ]
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1190, label %1182

1182:                                             ; preds = %1179
  %1183 = trunc i64 %1162 to i32
  %1184 = load i8, ptr %776, align 1, !tbaa !161
  %1185 = sext i8 %1184 to i64
  %1186 = getelementptr inbounds ptr, ptr %1059, i64 %1185
  store ptr %1170, ptr %1186, align 8, !tbaa !75
  %1187 = load i8, ptr %776, align 1, !tbaa !161
  %1188 = add i8 %1187, 1
  store i8 %1188, ptr %776, align 1, !tbaa !161
  %1189 = add nsw i32 %1183, 1
  br label %1196

1190:                                             ; preds = %1179, %1161
  %1191 = add nsw i64 %1162, 1
  %1192 = trunc i64 %1191 to i32
  %1193 = icmp eq i32 %843, %1192
  br i1 %1193, label %1194, label %1161, !llvm.loop !165

1194:                                             ; preds = %1190
  %1195 = trunc i64 %1191 to i32
  br label %1196

1196:                                             ; preds = %1194, %1155, %1182
  %1197 = phi i32 [ %1189, %1182 ], [ %1156, %1155 ], [ %1195, %1194 ]
  %1198 = icmp slt i32 %1157, %843
  br i1 %1198, label %1199, label %1236

1199:                                             ; preds = %1196
  %1200 = sext i32 %1157 to i64
  br label %1201

1201:                                             ; preds = %1199, %1230
  %1202 = phi i64 [ %1200, %1199 ], [ %1231, %1230 ]
  %1203 = getelementptr inbounds ptr, ptr %765, i64 %1202
  %1204 = load ptr, ptr %1203, align 8, !tbaa !75
  %1205 = load i32, ptr %1204, align 8, !tbaa !159
  %1206 = and i32 %1205, 1
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1230, label %1208

1208:                                             ; preds = %1201
  %1209 = getelementptr inbounds %struct.frame_store, ptr %1204, i64 0, i32 13
  %1210 = load ptr, ptr %1209, align 8, !tbaa !96
  %1211 = getelementptr inbounds %struct.storable_picture, ptr %1210, i64 0, i32 11
  %1212 = load i32, ptr %1211, align 4, !tbaa !129
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1219, label %1214

1214:                                             ; preds = %1208
  %1215 = getelementptr inbounds %struct.storable_picture, ptr %1210, i64 0, i32 10
  %1216 = load i8, ptr %1215, align 8, !tbaa !158
  %1217 = icmp eq i8 %1216, 0
  %1218 = zext i1 %1217 to i32
  br label %1219

1219:                                             ; preds = %1208, %1214
  %1220 = phi i32 [ 0, %1208 ], [ %1218, %1214 ]
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1230, label %1222

1222:                                             ; preds = %1219
  %1223 = trunc i64 %1202 to i32
  %1224 = load i8, ptr %776, align 1, !tbaa !161
  %1225 = sext i8 %1224 to i64
  %1226 = getelementptr inbounds ptr, ptr %1059, i64 %1225
  store ptr %1210, ptr %1226, align 8, !tbaa !75
  %1227 = load i8, ptr %776, align 1, !tbaa !161
  %1228 = add i8 %1227, 1
  store i8 %1228, ptr %776, align 1, !tbaa !161
  %1229 = add nsw i32 %1223, 1
  br label %1236

1230:                                             ; preds = %1219, %1201
  %1231 = add nsw i64 %1202, 1
  %1232 = trunc i64 %1231 to i32
  %1233 = icmp eq i32 %843, %1232
  br i1 %1233, label %1234, label %1201, !llvm.loop !166

1234:                                             ; preds = %1230
  %1235 = trunc i64 %1231 to i32
  br label %1236

1236:                                             ; preds = %1234, %1196, %1222
  %1237 = phi i32 [ %1229, %1222 ], [ %1157, %1196 ], [ %1235, %1234 ]
  %1238 = icmp slt i32 %1237, %843
  %1239 = icmp slt i32 %1197, %843
  %1240 = select i1 %1238, i1 true, i1 %1239
  br i1 %1240, label %1155, label %1241, !llvm.loop !167

1241:                                             ; preds = %1236, %1151, %1148
  %1242 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %1243 = load i32, ptr %1242, align 4, !tbaa !50
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1265, label %1245

1245:                                             ; preds = %1241
  %1246 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %1247 = zext i32 %1243 to i64
  br label %1248

1248:                                             ; preds = %1245, %1261
  %1249 = phi i64 [ 0, %1245 ], [ %1263, %1261 ]
  %1250 = phi i32 [ 0, %1245 ], [ %1262, %1261 ]
  %1251 = load ptr, ptr %1246, align 8, !tbaa !72
  %1252 = getelementptr inbounds ptr, ptr %1251, i64 %1249
  %1253 = load ptr, ptr %1252, align 8, !tbaa !75
  %1254 = getelementptr inbounds %struct.frame_store, ptr %1253, i64 0, i32 15
  %1255 = load i32, ptr %1254, align 8, !tbaa !76
  %1256 = icmp eq i32 %1255, %8
  br i1 %1256, label %1257, label %1261

1257:                                             ; preds = %1248
  %1258 = add nsw i32 %1250, 1
  %1259 = sext i32 %1250 to i64
  %1260 = getelementptr inbounds ptr, ptr %771, i64 %1259
  store ptr %1253, ptr %1260, align 8, !tbaa !75
  br label %1261

1261:                                             ; preds = %1248, %1257
  %1262 = phi i32 [ %1258, %1257 ], [ %1250, %1248 ]
  %1263 = add nuw nsw i64 %1249, 1
  %1264 = icmp eq i64 %1263, %1247
  br i1 %1264, label %1265, label %1248, !llvm.loop !237

1265:                                             ; preds = %1261, %1241
  %1266 = phi i32 [ 0, %1241 ], [ %1262, %1261 ]
  %1267 = sext i32 %1266 to i64
  tail call void @qsort(ptr noundef %771, i64 noundef %1267, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #20
  %1268 = load i32, ptr %558, align 8, !tbaa !173
  %1269 = load ptr, ptr %872, align 8, !tbaa !75
  %1270 = icmp eq i32 %1268, 1
  %1271 = icmp sgt i32 %1266, 0
  %1272 = and i1 %1270, %1271
  br i1 %1272, label %1273, label %1359

1273:                                             ; preds = %1265, %1354
  %1274 = phi i32 [ %1355, %1354 ], [ 0, %1265 ]
  %1275 = phi i32 [ %1315, %1354 ], [ 0, %1265 ]
  %1276 = icmp slt i32 %1275, %1266
  br i1 %1276, label %1277, label %1314

1277:                                             ; preds = %1273
  %1278 = sext i32 %1275 to i64
  br label %1279

1279:                                             ; preds = %1277, %1308
  %1280 = phi i64 [ %1278, %1277 ], [ %1309, %1308 ]
  %1281 = getelementptr inbounds ptr, ptr %771, i64 %1280
  %1282 = load ptr, ptr %1281, align 8, !tbaa !75
  %1283 = load i32, ptr %1282, align 8, !tbaa !159
  %1284 = and i32 %1283, 1
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1308, label %1286

1286:                                             ; preds = %1279
  %1287 = getelementptr inbounds %struct.frame_store, ptr %1282, i64 0, i32 13
  %1288 = load ptr, ptr %1287, align 8, !tbaa !96
  %1289 = getelementptr inbounds %struct.storable_picture, ptr %1288, i64 0, i32 11
  %1290 = load i32, ptr %1289, align 4, !tbaa !129
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1297, label %1292

1292:                                             ; preds = %1286
  %1293 = getelementptr inbounds %struct.storable_picture, ptr %1288, i64 0, i32 10
  %1294 = load i8, ptr %1293, align 8, !tbaa !158
  %1295 = icmp ne i8 %1294, 0
  %1296 = zext i1 %1295 to i32
  br label %1297

1297:                                             ; preds = %1286, %1292
  %1298 = phi i32 [ 0, %1286 ], [ %1296, %1292 ]
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1308, label %1300

1300:                                             ; preds = %1297
  %1301 = trunc i64 %1280 to i32
  %1302 = load i8, ptr %775, align 1, !tbaa !161
  %1303 = sext i8 %1302 to i64
  %1304 = getelementptr inbounds ptr, ptr %1269, i64 %1303
  store ptr %1288, ptr %1304, align 8, !tbaa !75
  %1305 = load i8, ptr %775, align 1, !tbaa !161
  %1306 = add i8 %1305, 1
  store i8 %1306, ptr %775, align 1, !tbaa !161
  %1307 = add nsw i32 %1301, 1
  br label %1314

1308:                                             ; preds = %1297, %1279
  %1309 = add nsw i64 %1280, 1
  %1310 = trunc i64 %1309 to i32
  %1311 = icmp eq i32 %1266, %1310
  br i1 %1311, label %1312, label %1279, !llvm.loop !162

1312:                                             ; preds = %1308
  %1313 = trunc i64 %1309 to i32
  br label %1314

1314:                                             ; preds = %1312, %1273, %1300
  %1315 = phi i32 [ %1307, %1300 ], [ %1275, %1273 ], [ %1313, %1312 ]
  %1316 = icmp slt i32 %1274, %1266
  br i1 %1316, label %1317, label %1354

1317:                                             ; preds = %1314
  %1318 = sext i32 %1274 to i64
  br label %1319

1319:                                             ; preds = %1317, %1348
  %1320 = phi i64 [ %1318, %1317 ], [ %1349, %1348 ]
  %1321 = getelementptr inbounds ptr, ptr %771, i64 %1320
  %1322 = load ptr, ptr %1321, align 8, !tbaa !75
  %1323 = load i32, ptr %1322, align 8, !tbaa !159
  %1324 = and i32 %1323, 2
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1348, label %1326

1326:                                             ; preds = %1319
  %1327 = getelementptr inbounds %struct.frame_store, ptr %1322, i64 0, i32 14
  %1328 = load ptr, ptr %1327, align 8, !tbaa !97
  %1329 = getelementptr inbounds %struct.storable_picture, ptr %1328, i64 0, i32 11
  %1330 = load i32, ptr %1329, align 4, !tbaa !129
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1337, label %1332

1332:                                             ; preds = %1326
  %1333 = getelementptr inbounds %struct.storable_picture, ptr %1328, i64 0, i32 10
  %1334 = load i8, ptr %1333, align 8, !tbaa !158
  %1335 = icmp ne i8 %1334, 0
  %1336 = zext i1 %1335 to i32
  br label %1337

1337:                                             ; preds = %1326, %1332
  %1338 = phi i32 [ 0, %1326 ], [ %1336, %1332 ]
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1348, label %1340

1340:                                             ; preds = %1337
  %1341 = trunc i64 %1320 to i32
  %1342 = load i8, ptr %775, align 1, !tbaa !161
  %1343 = sext i8 %1342 to i64
  %1344 = getelementptr inbounds ptr, ptr %1269, i64 %1343
  store ptr %1328, ptr %1344, align 8, !tbaa !75
  %1345 = load i8, ptr %775, align 1, !tbaa !161
  %1346 = add i8 %1345, 1
  store i8 %1346, ptr %775, align 1, !tbaa !161
  %1347 = add nsw i32 %1341, 1
  br label %1354

1348:                                             ; preds = %1337, %1319
  %1349 = add nsw i64 %1320, 1
  %1350 = trunc i64 %1349 to i32
  %1351 = icmp eq i32 %1266, %1350
  br i1 %1351, label %1352, label %1319, !llvm.loop !163

1352:                                             ; preds = %1348
  %1353 = trunc i64 %1349 to i32
  br label %1354

1354:                                             ; preds = %1352, %1314, %1340
  %1355 = phi i32 [ %1347, %1340 ], [ %1274, %1314 ], [ %1353, %1352 ]
  %1356 = icmp slt i32 %1315, %1266
  %1357 = icmp slt i32 %1355, %1266
  %1358 = select i1 %1356, i1 true, i1 %1357
  br i1 %1358, label %1273, label %1359, !llvm.loop !164

1359:                                             ; preds = %1354, %1265
  %1360 = phi i32 [ 0, %1265 ], [ %1315, %1354 ]
  %1361 = phi i32 [ 0, %1265 ], [ %1355, %1354 ]
  %1362 = icmp eq i32 %1268, 2
  br i1 %1362, label %1363, label %1453

1363:                                             ; preds = %1359
  %1364 = icmp slt i32 %1360, %1266
  %1365 = icmp slt i32 %1361, %1266
  %1366 = select i1 %1364, i1 true, i1 %1365
  br i1 %1366, label %1367, label %1453

1367:                                             ; preds = %1363, %1448
  %1368 = phi i32 [ %1409, %1448 ], [ %1361, %1363 ]
  %1369 = phi i32 [ %1449, %1448 ], [ %1360, %1363 ]
  %1370 = icmp slt i32 %1368, %1266
  br i1 %1370, label %1371, label %1408

1371:                                             ; preds = %1367
  %1372 = sext i32 %1368 to i64
  br label %1373

1373:                                             ; preds = %1371, %1402
  %1374 = phi i64 [ %1372, %1371 ], [ %1403, %1402 ]
  %1375 = getelementptr inbounds ptr, ptr %771, i64 %1374
  %1376 = load ptr, ptr %1375, align 8, !tbaa !75
  %1377 = load i32, ptr %1376, align 8, !tbaa !159
  %1378 = and i32 %1377, 2
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1402, label %1380

1380:                                             ; preds = %1373
  %1381 = getelementptr inbounds %struct.frame_store, ptr %1376, i64 0, i32 14
  %1382 = load ptr, ptr %1381, align 8, !tbaa !97
  %1383 = getelementptr inbounds %struct.storable_picture, ptr %1382, i64 0, i32 11
  %1384 = load i32, ptr %1383, align 4, !tbaa !129
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1391, label %1386

1386:                                             ; preds = %1380
  %1387 = getelementptr inbounds %struct.storable_picture, ptr %1382, i64 0, i32 10
  %1388 = load i8, ptr %1387, align 8, !tbaa !158
  %1389 = icmp ne i8 %1388, 0
  %1390 = zext i1 %1389 to i32
  br label %1391

1391:                                             ; preds = %1380, %1386
  %1392 = phi i32 [ 0, %1380 ], [ %1390, %1386 ]
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1402, label %1394

1394:                                             ; preds = %1391
  %1395 = trunc i64 %1374 to i32
  %1396 = load i8, ptr %775, align 1, !tbaa !161
  %1397 = sext i8 %1396 to i64
  %1398 = getelementptr inbounds ptr, ptr %1269, i64 %1397
  store ptr %1382, ptr %1398, align 8, !tbaa !75
  %1399 = load i8, ptr %775, align 1, !tbaa !161
  %1400 = add i8 %1399, 1
  store i8 %1400, ptr %775, align 1, !tbaa !161
  %1401 = add nsw i32 %1395, 1
  br label %1408

1402:                                             ; preds = %1391, %1373
  %1403 = add nsw i64 %1374, 1
  %1404 = trunc i64 %1403 to i32
  %1405 = icmp eq i32 %1266, %1404
  br i1 %1405, label %1406, label %1373, !llvm.loop !165

1406:                                             ; preds = %1402
  %1407 = trunc i64 %1403 to i32
  br label %1408

1408:                                             ; preds = %1406, %1367, %1394
  %1409 = phi i32 [ %1401, %1394 ], [ %1368, %1367 ], [ %1407, %1406 ]
  %1410 = icmp slt i32 %1369, %1266
  br i1 %1410, label %1411, label %1448

1411:                                             ; preds = %1408
  %1412 = sext i32 %1369 to i64
  br label %1413

1413:                                             ; preds = %1411, %1442
  %1414 = phi i64 [ %1412, %1411 ], [ %1443, %1442 ]
  %1415 = getelementptr inbounds ptr, ptr %771, i64 %1414
  %1416 = load ptr, ptr %1415, align 8, !tbaa !75
  %1417 = load i32, ptr %1416, align 8, !tbaa !159
  %1418 = and i32 %1417, 1
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1442, label %1420

1420:                                             ; preds = %1413
  %1421 = getelementptr inbounds %struct.frame_store, ptr %1416, i64 0, i32 13
  %1422 = load ptr, ptr %1421, align 8, !tbaa !96
  %1423 = getelementptr inbounds %struct.storable_picture, ptr %1422, i64 0, i32 11
  %1424 = load i32, ptr %1423, align 4, !tbaa !129
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1431, label %1426

1426:                                             ; preds = %1420
  %1427 = getelementptr inbounds %struct.storable_picture, ptr %1422, i64 0, i32 10
  %1428 = load i8, ptr %1427, align 8, !tbaa !158
  %1429 = icmp ne i8 %1428, 0
  %1430 = zext i1 %1429 to i32
  br label %1431

1431:                                             ; preds = %1420, %1426
  %1432 = phi i32 [ 0, %1420 ], [ %1430, %1426 ]
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1442, label %1434

1434:                                             ; preds = %1431
  %1435 = trunc i64 %1414 to i32
  %1436 = load i8, ptr %775, align 1, !tbaa !161
  %1437 = sext i8 %1436 to i64
  %1438 = getelementptr inbounds ptr, ptr %1269, i64 %1437
  store ptr %1422, ptr %1438, align 8, !tbaa !75
  %1439 = load i8, ptr %775, align 1, !tbaa !161
  %1440 = add i8 %1439, 1
  store i8 %1440, ptr %775, align 1, !tbaa !161
  %1441 = add nsw i32 %1435, 1
  br label %1448

1442:                                             ; preds = %1431, %1413
  %1443 = add nsw i64 %1414, 1
  %1444 = trunc i64 %1443 to i32
  %1445 = icmp eq i32 %1266, %1444
  br i1 %1445, label %1446, label %1413, !llvm.loop !166

1446:                                             ; preds = %1442
  %1447 = trunc i64 %1443 to i32
  br label %1448

1448:                                             ; preds = %1446, %1408, %1434
  %1449 = phi i32 [ %1441, %1434 ], [ %1369, %1408 ], [ %1447, %1446 ]
  %1450 = icmp slt i32 %1449, %1266
  %1451 = icmp slt i32 %1409, %1266
  %1452 = select i1 %1450, i1 true, i1 %1451
  br i1 %1452, label %1367, label %1453, !llvm.loop !167

1453:                                             ; preds = %1448, %1363, %1359
  %1454 = load ptr, ptr %1058, align 8, !tbaa !75
  %1455 = icmp sgt i32 %1266, 0
  %1456 = and i1 %1270, %1455
  br i1 %1456, label %1457, label %1543

1457:                                             ; preds = %1453, %1538
  %1458 = phi i32 [ %1539, %1538 ], [ 0, %1453 ]
  %1459 = phi i32 [ %1499, %1538 ], [ 0, %1453 ]
  %1460 = icmp slt i32 %1459, %1266
  br i1 %1460, label %1461, label %1498

1461:                                             ; preds = %1457
  %1462 = sext i32 %1459 to i64
  br label %1463

1463:                                             ; preds = %1461, %1492
  %1464 = phi i64 [ %1462, %1461 ], [ %1493, %1492 ]
  %1465 = getelementptr inbounds ptr, ptr %771, i64 %1464
  %1466 = load ptr, ptr %1465, align 8, !tbaa !75
  %1467 = load i32, ptr %1466, align 8, !tbaa !159
  %1468 = and i32 %1467, 1
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1492, label %1470

1470:                                             ; preds = %1463
  %1471 = getelementptr inbounds %struct.frame_store, ptr %1466, i64 0, i32 13
  %1472 = load ptr, ptr %1471, align 8, !tbaa !96
  %1473 = getelementptr inbounds %struct.storable_picture, ptr %1472, i64 0, i32 11
  %1474 = load i32, ptr %1473, align 4, !tbaa !129
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1481, label %1476

1476:                                             ; preds = %1470
  %1477 = getelementptr inbounds %struct.storable_picture, ptr %1472, i64 0, i32 10
  %1478 = load i8, ptr %1477, align 8, !tbaa !158
  %1479 = icmp ne i8 %1478, 0
  %1480 = zext i1 %1479 to i32
  br label %1481

1481:                                             ; preds = %1470, %1476
  %1482 = phi i32 [ 0, %1470 ], [ %1480, %1476 ]
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1492, label %1484

1484:                                             ; preds = %1481
  %1485 = trunc i64 %1464 to i32
  %1486 = load i8, ptr %776, align 1, !tbaa !161
  %1487 = sext i8 %1486 to i64
  %1488 = getelementptr inbounds ptr, ptr %1454, i64 %1487
  store ptr %1472, ptr %1488, align 8, !tbaa !75
  %1489 = load i8, ptr %776, align 1, !tbaa !161
  %1490 = add i8 %1489, 1
  store i8 %1490, ptr %776, align 1, !tbaa !161
  %1491 = add nsw i32 %1485, 1
  br label %1498

1492:                                             ; preds = %1481, %1463
  %1493 = add nsw i64 %1464, 1
  %1494 = trunc i64 %1493 to i32
  %1495 = icmp eq i32 %1266, %1494
  br i1 %1495, label %1496, label %1463, !llvm.loop !162

1496:                                             ; preds = %1492
  %1497 = trunc i64 %1493 to i32
  br label %1498

1498:                                             ; preds = %1496, %1457, %1484
  %1499 = phi i32 [ %1491, %1484 ], [ %1459, %1457 ], [ %1497, %1496 ]
  %1500 = icmp slt i32 %1458, %1266
  br i1 %1500, label %1501, label %1538

1501:                                             ; preds = %1498
  %1502 = sext i32 %1458 to i64
  br label %1503

1503:                                             ; preds = %1501, %1532
  %1504 = phi i64 [ %1502, %1501 ], [ %1533, %1532 ]
  %1505 = getelementptr inbounds ptr, ptr %771, i64 %1504
  %1506 = load ptr, ptr %1505, align 8, !tbaa !75
  %1507 = load i32, ptr %1506, align 8, !tbaa !159
  %1508 = and i32 %1507, 2
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1532, label %1510

1510:                                             ; preds = %1503
  %1511 = getelementptr inbounds %struct.frame_store, ptr %1506, i64 0, i32 14
  %1512 = load ptr, ptr %1511, align 8, !tbaa !97
  %1513 = getelementptr inbounds %struct.storable_picture, ptr %1512, i64 0, i32 11
  %1514 = load i32, ptr %1513, align 4, !tbaa !129
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1521, label %1516

1516:                                             ; preds = %1510
  %1517 = getelementptr inbounds %struct.storable_picture, ptr %1512, i64 0, i32 10
  %1518 = load i8, ptr %1517, align 8, !tbaa !158
  %1519 = icmp ne i8 %1518, 0
  %1520 = zext i1 %1519 to i32
  br label %1521

1521:                                             ; preds = %1510, %1516
  %1522 = phi i32 [ 0, %1510 ], [ %1520, %1516 ]
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1532, label %1524

1524:                                             ; preds = %1521
  %1525 = trunc i64 %1504 to i32
  %1526 = load i8, ptr %776, align 1, !tbaa !161
  %1527 = sext i8 %1526 to i64
  %1528 = getelementptr inbounds ptr, ptr %1454, i64 %1527
  store ptr %1512, ptr %1528, align 8, !tbaa !75
  %1529 = load i8, ptr %776, align 1, !tbaa !161
  %1530 = add i8 %1529, 1
  store i8 %1530, ptr %776, align 1, !tbaa !161
  %1531 = add nsw i32 %1525, 1
  br label %1538

1532:                                             ; preds = %1521, %1503
  %1533 = add nsw i64 %1504, 1
  %1534 = trunc i64 %1533 to i32
  %1535 = icmp eq i32 %1266, %1534
  br i1 %1535, label %1536, label %1503, !llvm.loop !163

1536:                                             ; preds = %1532
  %1537 = trunc i64 %1533 to i32
  br label %1538

1538:                                             ; preds = %1536, %1498, %1524
  %1539 = phi i32 [ %1531, %1524 ], [ %1458, %1498 ], [ %1537, %1536 ]
  %1540 = icmp slt i32 %1499, %1266
  %1541 = icmp slt i32 %1539, %1266
  %1542 = select i1 %1540, i1 true, i1 %1541
  br i1 %1542, label %1457, label %1543, !llvm.loop !164

1543:                                             ; preds = %1538, %1453
  %1544 = phi i32 [ 0, %1453 ], [ %1499, %1538 ]
  %1545 = phi i32 [ 0, %1453 ], [ %1539, %1538 ]
  br i1 %1362, label %1546, label %1636

1546:                                             ; preds = %1543
  %1547 = icmp slt i32 %1544, %1266
  %1548 = icmp slt i32 %1545, %1266
  %1549 = select i1 %1547, i1 true, i1 %1548
  br i1 %1549, label %1550, label %1636

1550:                                             ; preds = %1546, %1631
  %1551 = phi i32 [ %1592, %1631 ], [ %1545, %1546 ]
  %1552 = phi i32 [ %1632, %1631 ], [ %1544, %1546 ]
  %1553 = icmp slt i32 %1551, %1266
  br i1 %1553, label %1554, label %1591

1554:                                             ; preds = %1550
  %1555 = sext i32 %1551 to i64
  br label %1556

1556:                                             ; preds = %1554, %1585
  %1557 = phi i64 [ %1555, %1554 ], [ %1586, %1585 ]
  %1558 = getelementptr inbounds ptr, ptr %771, i64 %1557
  %1559 = load ptr, ptr %1558, align 8, !tbaa !75
  %1560 = load i32, ptr %1559, align 8, !tbaa !159
  %1561 = and i32 %1560, 2
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1585, label %1563

1563:                                             ; preds = %1556
  %1564 = getelementptr inbounds %struct.frame_store, ptr %1559, i64 0, i32 14
  %1565 = load ptr, ptr %1564, align 8, !tbaa !97
  %1566 = getelementptr inbounds %struct.storable_picture, ptr %1565, i64 0, i32 11
  %1567 = load i32, ptr %1566, align 4, !tbaa !129
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1574, label %1569

1569:                                             ; preds = %1563
  %1570 = getelementptr inbounds %struct.storable_picture, ptr %1565, i64 0, i32 10
  %1571 = load i8, ptr %1570, align 8, !tbaa !158
  %1572 = icmp ne i8 %1571, 0
  %1573 = zext i1 %1572 to i32
  br label %1574

1574:                                             ; preds = %1563, %1569
  %1575 = phi i32 [ 0, %1563 ], [ %1573, %1569 ]
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1585, label %1577

1577:                                             ; preds = %1574
  %1578 = trunc i64 %1557 to i32
  %1579 = load i8, ptr %776, align 1, !tbaa !161
  %1580 = sext i8 %1579 to i64
  %1581 = getelementptr inbounds ptr, ptr %1454, i64 %1580
  store ptr %1565, ptr %1581, align 8, !tbaa !75
  %1582 = load i8, ptr %776, align 1, !tbaa !161
  %1583 = add i8 %1582, 1
  store i8 %1583, ptr %776, align 1, !tbaa !161
  %1584 = add nsw i32 %1578, 1
  br label %1591

1585:                                             ; preds = %1574, %1556
  %1586 = add nsw i64 %1557, 1
  %1587 = trunc i64 %1586 to i32
  %1588 = icmp eq i32 %1266, %1587
  br i1 %1588, label %1589, label %1556, !llvm.loop !165

1589:                                             ; preds = %1585
  %1590 = trunc i64 %1586 to i32
  br label %1591

1591:                                             ; preds = %1589, %1550, %1577
  %1592 = phi i32 [ %1584, %1577 ], [ %1551, %1550 ], [ %1590, %1589 ]
  %1593 = icmp slt i32 %1552, %1266
  br i1 %1593, label %1594, label %1631

1594:                                             ; preds = %1591
  %1595 = sext i32 %1552 to i64
  br label %1596

1596:                                             ; preds = %1594, %1625
  %1597 = phi i64 [ %1595, %1594 ], [ %1626, %1625 ]
  %1598 = getelementptr inbounds ptr, ptr %771, i64 %1597
  %1599 = load ptr, ptr %1598, align 8, !tbaa !75
  %1600 = load i32, ptr %1599, align 8, !tbaa !159
  %1601 = and i32 %1600, 1
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1625, label %1603

1603:                                             ; preds = %1596
  %1604 = getelementptr inbounds %struct.frame_store, ptr %1599, i64 0, i32 13
  %1605 = load ptr, ptr %1604, align 8, !tbaa !96
  %1606 = getelementptr inbounds %struct.storable_picture, ptr %1605, i64 0, i32 11
  %1607 = load i32, ptr %1606, align 4, !tbaa !129
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1614, label %1609

1609:                                             ; preds = %1603
  %1610 = getelementptr inbounds %struct.storable_picture, ptr %1605, i64 0, i32 10
  %1611 = load i8, ptr %1610, align 8, !tbaa !158
  %1612 = icmp ne i8 %1611, 0
  %1613 = zext i1 %1612 to i32
  br label %1614

1614:                                             ; preds = %1603, %1609
  %1615 = phi i32 [ 0, %1603 ], [ %1613, %1609 ]
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1625, label %1617

1617:                                             ; preds = %1614
  %1618 = trunc i64 %1597 to i32
  %1619 = load i8, ptr %776, align 1, !tbaa !161
  %1620 = sext i8 %1619 to i64
  %1621 = getelementptr inbounds ptr, ptr %1454, i64 %1620
  store ptr %1605, ptr %1621, align 8, !tbaa !75
  %1622 = load i8, ptr %776, align 1, !tbaa !161
  %1623 = add i8 %1622, 1
  store i8 %1623, ptr %776, align 1, !tbaa !161
  %1624 = add nsw i32 %1618, 1
  br label %1631

1625:                                             ; preds = %1614, %1596
  %1626 = add nsw i64 %1597, 1
  %1627 = trunc i64 %1626 to i32
  %1628 = icmp eq i32 %1266, %1627
  br i1 %1628, label %1629, label %1596, !llvm.loop !166

1629:                                             ; preds = %1625
  %1630 = trunc i64 %1626 to i32
  br label %1631

1631:                                             ; preds = %1629, %1591, %1617
  %1632 = phi i32 [ %1624, %1617 ], [ %1552, %1591 ], [ %1630, %1629 ]
  %1633 = icmp slt i32 %1632, %1266
  %1634 = icmp slt i32 %1592, %1266
  %1635 = select i1 %1633, i1 true, i1 %1634
  br i1 %1635, label %1550, label %1636, !llvm.loop !167

1636:                                             ; preds = %1631, %1546, %1543
  tail call void @free(ptr noundef %759) #20
  tail call void @free(ptr noundef %765) #20
  tail call void @free(ptr noundef %771) #20
  br label %1637

1637:                                             ; preds = %737, %1636, %555
  %1638 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %1639 = load i8, ptr %1638, align 8, !tbaa !161
  %1640 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %1641 = load i8, ptr %1640, align 1, !tbaa !161
  %1642 = icmp eq i8 %1639, %1641
  %1643 = icmp sgt i8 %1639, 1
  %1644 = and i1 %1643, %1642
  br i1 %1644, label %1645, label %1673

1645:                                             ; preds = %1637
  %1646 = sext i8 %1639 to i64
  %1647 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1648 = load ptr, ptr %1647, align 8, !tbaa !75
  %1649 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1650 = load ptr, ptr %1649, align 8, !tbaa !75
  %1651 = and i64 %1646, 4294967295
  br label %1652

1652:                                             ; preds = %1645, %1652
  %1653 = phi i64 [ 0, %1645 ], [ %1661, %1652 ]
  %1654 = phi i32 [ 0, %1645 ], [ %1660, %1652 ]
  %1655 = getelementptr inbounds ptr, ptr %1648, i64 %1653
  %1656 = load ptr, ptr %1655, align 8, !tbaa !75
  %1657 = getelementptr inbounds ptr, ptr %1650, i64 %1653
  %1658 = load ptr, ptr %1657, align 8, !tbaa !75
  %1659 = icmp eq ptr %1656, %1658
  %1660 = select i1 %1659, i32 %1654, i32 1
  %1661 = add nuw nsw i64 %1653, 1
  %1662 = icmp eq i64 %1661, %1651
  br i1 %1662, label %1663, label %1652, !llvm.loop !238

1663:                                             ; preds = %1652
  %1664 = icmp eq i32 %1660, 0
  br i1 %1664, label %1665, label %1673

1665:                                             ; preds = %1663
  %1666 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1667 = load ptr, ptr %1666, align 8, !tbaa !75
  %1668 = load ptr, ptr %1667, align 8, !tbaa !75
  %1669 = getelementptr inbounds ptr, ptr %1667, i64 1
  %1670 = load ptr, ptr %1669, align 8, !tbaa !75
  store ptr %1670, ptr %1667, align 8, !tbaa !75
  %1671 = load ptr, ptr %1666, align 8, !tbaa !75
  %1672 = getelementptr inbounds ptr, ptr %1671, i64 1
  store ptr %1668, ptr %1672, align 8, !tbaa !75
  br label %1673

1673:                                             ; preds = %1663, %1665, %1637
  %1674 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %1675 = load i32, ptr %1674, align 8, !tbaa !195
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1677, label %1922

1677:                                             ; preds = %1673
  %1678 = load i32, ptr %13, align 4, !tbaa !224
  switch i32 %1678, label %1762 [
    i32 0, label %1679
    i32 3, label %1679
  ]

1679:                                             ; preds = %1677, %1677
  %1680 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %1681 = load i32, ptr %1680, align 8, !tbaa !65
  %1682 = zext i32 %1681 to i64
  %1683 = tail call noalias ptr @calloc(i64 noundef %1682, i64 noundef 8) #21
  %1684 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %1683, ptr %1684, align 8, !tbaa !196
  %1685 = icmp eq ptr %1683, null
  br i1 %1685, label %1686, label %1687

1686:                                             ; preds = %1679
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %1687

1687:                                             ; preds = %1686, %1679
  %1688 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %1689 = load i32, ptr %1688, align 8, !tbaa !173
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1691, label %1717

1691:                                             ; preds = %1687
  %1692 = load i8, ptr %1638, align 8, !tbaa !161
  %1693 = load ptr, ptr %1684, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %1693, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1694 = load i32, ptr %11, align 4, !tbaa !186
  %1695 = icmp eq i32 %1694, 0
  br i1 %1695, label %1715, label %1696

1696:                                             ; preds = %1691
  %1697 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1698 = sext i8 %1692 to i64
  %1699 = zext i32 %1694 to i64
  br label %1700

1700:                                             ; preds = %1696, %1700
  %1701 = phi i64 [ %1698, %1696 ], [ %1709, %1700 ]
  %1702 = phi i64 [ 0, %1696 ], [ %1711, %1700 ]
  %1703 = load ptr, ptr %1684, align 8, !tbaa !196
  %1704 = getelementptr inbounds ptr, ptr %1703, i64 %1702
  %1705 = load ptr, ptr %1704, align 8, !tbaa !75
  %1706 = getelementptr inbounds %struct.frame_store, ptr %1705, i64 0, i32 12
  %1707 = load ptr, ptr %1706, align 8, !tbaa !95
  %1708 = load ptr, ptr %1697, align 8, !tbaa !75
  %1709 = add nsw i64 %1701, 1
  %1710 = getelementptr inbounds ptr, ptr %1708, i64 %1701
  store ptr %1707, ptr %1710, align 8, !tbaa !75
  %1711 = add nuw nsw i64 %1702, 1
  %1712 = icmp eq i64 %1711, %1699
  br i1 %1712, label %1713, label %1700, !llvm.loop !239

1713:                                             ; preds = %1700
  %1714 = trunc i64 %1709 to i8
  br label %1715

1715:                                             ; preds = %1713, %1691
  %1716 = phi i8 [ %1692, %1691 ], [ %1714, %1713 ]
  store i8 %1716, ptr %1638, align 8, !tbaa !161
  br label %1922

1717:                                             ; preds = %1687
  %1718 = load ptr, ptr %1684, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %1689, i32 noundef 0, ptr noundef %1718, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1719 = load i32, ptr %1688, align 8, !tbaa !173
  %1720 = load ptr, ptr %1684, align 8, !tbaa !196
  %1721 = load i32, ptr %11, align 4, !tbaa !186
  %1722 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1723 = load ptr, ptr %1722, align 8, !tbaa !75
  switch i32 %1719, label %1922 [
    i32 1, label %1724
    i32 2, label %1744
  ]

1724:                                             ; preds = %1717
  %1725 = icmp sgt i32 %1721, 0
  br i1 %1725, label %1726, label %1741

1726:                                             ; preds = %1724
  %1727 = zext nneg i32 %1721 to i64
  br label %1728

1728:                                             ; preds = %1728, %1726
  %1729 = phi i64 [ 0, %1726 ], [ %1739, %1728 ]
  %1730 = getelementptr inbounds ptr, ptr %1720, i64 %1729
  %1731 = load ptr, ptr %1730, align 8, !tbaa !75
  %1732 = getelementptr inbounds %struct.frame_store, ptr %1731, i64 0, i32 13
  %1733 = load ptr, ptr %1732, align 8, !tbaa !96
  %1734 = load i8, ptr %1638, align 1, !tbaa !161
  %1735 = sext i8 %1734 to i64
  %1736 = getelementptr inbounds ptr, ptr %1723, i64 %1735
  store ptr %1733, ptr %1736, align 8, !tbaa !75
  %1737 = load i8, ptr %1638, align 1, !tbaa !161
  %1738 = add i8 %1737, 1
  store i8 %1738, ptr %1638, align 1, !tbaa !161
  %1739 = add nuw nsw i64 %1729, 1
  %1740 = icmp eq i64 %1739, %1727
  br i1 %1740, label %1741, label %1728, !llvm.loop !198

1741:                                             ; preds = %1728, %1724
  %1742 = icmp eq i32 %1719, 2
  %1743 = and i1 %1742, %1725
  br i1 %1743, label %1746, label %1922

1744:                                             ; preds = %1717
  %1745 = icmp sgt i32 %1721, 0
  br i1 %1745, label %1746, label %1922

1746:                                             ; preds = %1744, %1741
  %1747 = tail call i32 @llvm.smax.i32(i32 %1721, i32 1)
  %1748 = zext nneg i32 %1747 to i64
  br label %1749

1749:                                             ; preds = %1749, %1746
  %1750 = phi i64 [ 0, %1746 ], [ %1760, %1749 ]
  %1751 = getelementptr inbounds ptr, ptr %1720, i64 %1750
  %1752 = load ptr, ptr %1751, align 8, !tbaa !75
  %1753 = getelementptr inbounds %struct.frame_store, ptr %1752, i64 0, i32 14
  %1754 = load ptr, ptr %1753, align 8, !tbaa !97
  %1755 = load i8, ptr %1638, align 1, !tbaa !161
  %1756 = sext i8 %1755 to i64
  %1757 = getelementptr inbounds ptr, ptr %1723, i64 %1756
  store ptr %1754, ptr %1757, align 8, !tbaa !75
  %1758 = load i8, ptr %1638, align 1, !tbaa !161
  %1759 = add i8 %1758, 1
  store i8 %1759, ptr %1638, align 1, !tbaa !161
  %1760 = add nuw nsw i64 %1750, 1
  %1761 = icmp eq i64 %1760, %1748
  br i1 %1761, label %1922, label %1749, !llvm.loop !199

1762:                                             ; preds = %1677
  %1763 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %1764 = load i32, ptr %1763, align 8, !tbaa !65
  %1765 = zext i32 %1764 to i64
  %1766 = tail call noalias ptr @calloc(i64 noundef %1765, i64 noundef 8) #21
  %1767 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %1766, ptr %1767, align 8, !tbaa !196
  %1768 = icmp eq ptr %1766, null
  br i1 %1768, label %1769, label %1770

1769:                                             ; preds = %1762
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %1770

1770:                                             ; preds = %1769, %1762
  %1771 = load i32, ptr %1763, align 8, !tbaa !65
  %1772 = zext i32 %1771 to i64
  %1773 = tail call noalias ptr @calloc(i64 noundef %1772, i64 noundef 8) #21
  %1774 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %1773, ptr %1774, align 8, !tbaa !219
  %1775 = icmp eq ptr %1773, null
  br i1 %1775, label %1776, label %1777

1776:                                             ; preds = %1770
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #20
  br label %1777

1777:                                             ; preds = %1776, %1770
  %1778 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %1779 = load i32, ptr %1778, align 8, !tbaa !173
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1781, label %1832

1781:                                             ; preds = %1777
  %1782 = load i8, ptr %1638, align 8, !tbaa !161
  %1783 = load ptr, ptr %1767, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %1783, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1784 = load ptr, ptr %1774, align 8, !tbaa !219
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 1, ptr noundef %1784, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1785 = load i32, ptr %11, align 4, !tbaa !186
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1806, label %1787

1787:                                             ; preds = %1781
  %1788 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1789 = sext i8 %1782 to i64
  %1790 = zext i32 %1785 to i64
  br label %1791

1791:                                             ; preds = %1787, %1791
  %1792 = phi i64 [ %1789, %1787 ], [ %1800, %1791 ]
  %1793 = phi i64 [ 0, %1787 ], [ %1802, %1791 ]
  %1794 = load ptr, ptr %1767, align 8, !tbaa !196
  %1795 = getelementptr inbounds ptr, ptr %1794, i64 %1793
  %1796 = load ptr, ptr %1795, align 8, !tbaa !75
  %1797 = getelementptr inbounds %struct.frame_store, ptr %1796, i64 0, i32 12
  %1798 = load ptr, ptr %1797, align 8, !tbaa !95
  %1799 = load ptr, ptr %1788, align 8, !tbaa !75
  %1800 = add nsw i64 %1792, 1
  %1801 = getelementptr inbounds ptr, ptr %1799, i64 %1792
  store ptr %1798, ptr %1801, align 8, !tbaa !75
  %1802 = add nuw nsw i64 %1793, 1
  %1803 = icmp eq i64 %1802, %1790
  br i1 %1803, label %1804, label %1791, !llvm.loop !240

1804:                                             ; preds = %1791
  %1805 = trunc i64 %1800 to i8
  br label %1806

1806:                                             ; preds = %1804, %1781
  %1807 = phi i8 [ %1782, %1781 ], [ %1805, %1804 ]
  store i8 %1807, ptr %1638, align 8, !tbaa !161
  %1808 = load i8, ptr %1640, align 1, !tbaa !161
  %1809 = load i32, ptr %12, align 8, !tbaa !187
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1830, label %1811

1811:                                             ; preds = %1806
  %1812 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1813 = sext i8 %1808 to i64
  %1814 = zext i32 %1809 to i64
  br label %1815

1815:                                             ; preds = %1811, %1815
  %1816 = phi i64 [ %1813, %1811 ], [ %1824, %1815 ]
  %1817 = phi i64 [ 0, %1811 ], [ %1826, %1815 ]
  %1818 = load ptr, ptr %1774, align 8, !tbaa !219
  %1819 = getelementptr inbounds ptr, ptr %1818, i64 %1817
  %1820 = load ptr, ptr %1819, align 8, !tbaa !75
  %1821 = getelementptr inbounds %struct.frame_store, ptr %1820, i64 0, i32 12
  %1822 = load ptr, ptr %1821, align 8, !tbaa !95
  %1823 = load ptr, ptr %1812, align 8, !tbaa !75
  %1824 = add nsw i64 %1816, 1
  %1825 = getelementptr inbounds ptr, ptr %1823, i64 %1816
  store ptr %1822, ptr %1825, align 8, !tbaa !75
  %1826 = add nuw nsw i64 %1817, 1
  %1827 = icmp eq i64 %1826, %1814
  br i1 %1827, label %1828, label %1815, !llvm.loop !241

1828:                                             ; preds = %1815
  %1829 = trunc i64 %1824 to i8
  br label %1830

1830:                                             ; preds = %1828, %1806
  %1831 = phi i8 [ %1808, %1806 ], [ %1829, %1828 ]
  store i8 %1831, ptr %1640, align 1, !tbaa !161
  br label %1922

1832:                                             ; preds = %1777
  %1833 = load ptr, ptr %1767, align 8, !tbaa !196
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %1779, i32 noundef 0, ptr noundef %1833, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1834 = load i32, ptr %1778, align 8, !tbaa !173
  %1835 = load ptr, ptr %1767, align 8, !tbaa !196
  %1836 = load i32, ptr %11, align 4, !tbaa !186
  %1837 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1838 = load ptr, ptr %1837, align 8, !tbaa !75
  switch i32 %1834, label %1877 [
    i32 1, label %1839
    i32 2, label %1859
  ]

1839:                                             ; preds = %1832
  %1840 = icmp sgt i32 %1836, 0
  br i1 %1840, label %1841, label %1856

1841:                                             ; preds = %1839
  %1842 = zext nneg i32 %1836 to i64
  br label %1843

1843:                                             ; preds = %1843, %1841
  %1844 = phi i64 [ 0, %1841 ], [ %1854, %1843 ]
  %1845 = getelementptr inbounds ptr, ptr %1835, i64 %1844
  %1846 = load ptr, ptr %1845, align 8, !tbaa !75
  %1847 = getelementptr inbounds %struct.frame_store, ptr %1846, i64 0, i32 13
  %1848 = load ptr, ptr %1847, align 8, !tbaa !96
  %1849 = load i8, ptr %1638, align 1, !tbaa !161
  %1850 = sext i8 %1849 to i64
  %1851 = getelementptr inbounds ptr, ptr %1838, i64 %1850
  store ptr %1848, ptr %1851, align 8, !tbaa !75
  %1852 = load i8, ptr %1638, align 1, !tbaa !161
  %1853 = add i8 %1852, 1
  store i8 %1853, ptr %1638, align 1, !tbaa !161
  %1854 = add nuw nsw i64 %1844, 1
  %1855 = icmp eq i64 %1854, %1842
  br i1 %1855, label %1856, label %1843, !llvm.loop !198

1856:                                             ; preds = %1843, %1839
  %1857 = icmp eq i32 %1834, 2
  %1858 = and i1 %1857, %1840
  br i1 %1858, label %1861, label %1877

1859:                                             ; preds = %1832
  %1860 = icmp sgt i32 %1836, 0
  br i1 %1860, label %1861, label %1877

1861:                                             ; preds = %1859, %1856
  %1862 = tail call i32 @llvm.smax.i32(i32 %1836, i32 1)
  %1863 = zext nneg i32 %1862 to i64
  br label %1864

1864:                                             ; preds = %1864, %1861
  %1865 = phi i64 [ 0, %1861 ], [ %1875, %1864 ]
  %1866 = getelementptr inbounds ptr, ptr %1835, i64 %1865
  %1867 = load ptr, ptr %1866, align 8, !tbaa !75
  %1868 = getelementptr inbounds %struct.frame_store, ptr %1867, i64 0, i32 14
  %1869 = load ptr, ptr %1868, align 8, !tbaa !97
  %1870 = load i8, ptr %1638, align 1, !tbaa !161
  %1871 = sext i8 %1870 to i64
  %1872 = getelementptr inbounds ptr, ptr %1838, i64 %1871
  store ptr %1869, ptr %1872, align 8, !tbaa !75
  %1873 = load i8, ptr %1638, align 1, !tbaa !161
  %1874 = add i8 %1873, 1
  store i8 %1874, ptr %1638, align 1, !tbaa !161
  %1875 = add nuw nsw i64 %1865, 1
  %1876 = icmp eq i64 %1875, %1863
  br i1 %1876, label %1877, label %1864, !llvm.loop !199

1877:                                             ; preds = %1864, %1832, %1856, %1859
  %1878 = load ptr, ptr %1774, align 8, !tbaa !219
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %1834, i32 noundef 1, ptr noundef %1878, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  %1879 = load i32, ptr %1778, align 8, !tbaa !173
  %1880 = load ptr, ptr %1774, align 8, !tbaa !219
  %1881 = load i32, ptr %12, align 8, !tbaa !187
  %1882 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1883 = load ptr, ptr %1882, align 8, !tbaa !75
  switch i32 %1879, label %1922 [
    i32 1, label %1884
    i32 2, label %1904
  ]

1884:                                             ; preds = %1877
  %1885 = icmp sgt i32 %1881, 0
  br i1 %1885, label %1886, label %1901

1886:                                             ; preds = %1884
  %1887 = zext nneg i32 %1881 to i64
  br label %1888

1888:                                             ; preds = %1888, %1886
  %1889 = phi i64 [ 0, %1886 ], [ %1899, %1888 ]
  %1890 = getelementptr inbounds ptr, ptr %1880, i64 %1889
  %1891 = load ptr, ptr %1890, align 8, !tbaa !75
  %1892 = getelementptr inbounds %struct.frame_store, ptr %1891, i64 0, i32 13
  %1893 = load ptr, ptr %1892, align 8, !tbaa !96
  %1894 = load i8, ptr %1640, align 1, !tbaa !161
  %1895 = sext i8 %1894 to i64
  %1896 = getelementptr inbounds ptr, ptr %1883, i64 %1895
  store ptr %1893, ptr %1896, align 8, !tbaa !75
  %1897 = load i8, ptr %1640, align 1, !tbaa !161
  %1898 = add i8 %1897, 1
  store i8 %1898, ptr %1640, align 1, !tbaa !161
  %1899 = add nuw nsw i64 %1889, 1
  %1900 = icmp eq i64 %1899, %1887
  br i1 %1900, label %1901, label %1888, !llvm.loop !198

1901:                                             ; preds = %1888, %1884
  %1902 = icmp eq i32 %1879, 2
  %1903 = and i1 %1902, %1885
  br i1 %1903, label %1906, label %1922

1904:                                             ; preds = %1877
  %1905 = icmp sgt i32 %1881, 0
  br i1 %1905, label %1906, label %1922

1906:                                             ; preds = %1904, %1901
  %1907 = tail call i32 @llvm.smax.i32(i32 %1881, i32 1)
  %1908 = zext nneg i32 %1907 to i64
  br label %1909

1909:                                             ; preds = %1909, %1906
  %1910 = phi i64 [ 0, %1906 ], [ %1920, %1909 ]
  %1911 = getelementptr inbounds ptr, ptr %1880, i64 %1910
  %1912 = load ptr, ptr %1911, align 8, !tbaa !75
  %1913 = getelementptr inbounds %struct.frame_store, ptr %1912, i64 0, i32 14
  %1914 = load ptr, ptr %1913, align 8, !tbaa !97
  %1915 = load i8, ptr %1640, align 1, !tbaa !161
  %1916 = sext i8 %1915 to i64
  %1917 = getelementptr inbounds ptr, ptr %1883, i64 %1916
  store ptr %1914, ptr %1917, align 8, !tbaa !75
  %1918 = load i8, ptr %1640, align 1, !tbaa !161
  %1919 = add i8 %1918, 1
  store i8 %1919, ptr %1640, align 1, !tbaa !161
  %1920 = add nuw nsw i64 %1910, 1
  %1921 = icmp eq i64 %1920, %1908
  br i1 %1921, label %1922, label %1909, !llvm.loop !199

1922:                                             ; preds = %1749, %1909, %1904, %1901, %1877, %1744, %1741, %1717, %1715, %1830, %1673
  %1923 = load i8, ptr %1638, align 8, !tbaa !161
  %1924 = sext i8 %1923 to i32
  %1925 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %1926 = load i32, ptr %1925, align 8, !tbaa !200
  %1927 = tail call i32 @llvm.smin.i32(i32 %1924, i32 %1926)
  %1928 = trunc i32 %1927 to i8
  store i8 %1928, ptr %1638, align 8, !tbaa !161
  %1929 = load i8, ptr %1640, align 1, !tbaa !161
  %1930 = sext i8 %1929 to i32
  %1931 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %1932 = load i32, ptr %1931, align 4, !tbaa !200
  %1933 = tail call i32 @llvm.smin.i32(i32 %1930, i32 %1932)
  %1934 = trunc i32 %1933 to i8
  store i8 %1934, ptr %1640, align 1, !tbaa !161
  %1935 = shl i32 %1927, 24
  %1936 = ashr exact i32 %1935, 24
  %1937 = icmp ult i32 %1936, 33
  br i1 %1937, label %1938, label %1950

1938:                                             ; preds = %1922
  %1939 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %1940 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %1941 = zext nneg i32 %1936 to i64
  br label %1942

1942:                                             ; preds = %1938, %1942
  %1943 = phi i64 [ %1941, %1938 ], [ %1947, %1942 ]
  %1944 = load ptr, ptr %1939, align 8, !tbaa !84
  %1945 = load ptr, ptr %1940, align 8, !tbaa !75
  %1946 = getelementptr inbounds ptr, ptr %1945, i64 %1943
  store ptr %1944, ptr %1946, align 8, !tbaa !75
  %1947 = add nuw nsw i64 %1943, 1
  %1948 = and i64 %1947, 4294967295
  %1949 = icmp eq i64 %1948, 33
  br i1 %1949, label %1950, label %1942, !llvm.loop !242

1950:                                             ; preds = %1942, %1922
  %1951 = load i8, ptr %1640, align 1, !tbaa !161
  %1952 = icmp ult i8 %1951, 33
  br i1 %1952, label %1953, label %1965

1953:                                             ; preds = %1950
  %1954 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %1955 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %1956 = zext nneg i8 %1951 to i64
  br label %1957

1957:                                             ; preds = %1953, %1957
  %1958 = phi i64 [ %1956, %1953 ], [ %1962, %1957 ]
  %1959 = load ptr, ptr %1954, align 8, !tbaa !84
  %1960 = load ptr, ptr %1955, align 8, !tbaa !75
  %1961 = getelementptr inbounds ptr, ptr %1960, i64 %1958
  store ptr %1959, ptr %1961, align 8, !tbaa !75
  %1962 = add nuw nsw i64 %1958, 1
  %1963 = and i64 %1962, 4294967295
  %1964 = icmp eq i64 %1963, 33
  br i1 %1964, label %1965, label %1957, !llvm.loop !243

1965:                                             ; preds = %1957, %1950, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_mbaff_lists(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  br label %4

4:                                                ; preds = %2, %22
  %5 = phi i64 [ 2, %2 ], [ %24, %22 ]
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 %5
  br label %15

7:                                                ; preds = %22
  %8 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55
  %9 = load i8, ptr %8, align 8, !tbaa !161
  %10 = icmp sgt i8 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56
  %13 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 2
  %14 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 4
  br label %26

15:                                               ; preds = %4, %15
  %16 = phi i64 [ 0, %4 ], [ %20, %15 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !84
  %18 = load ptr, ptr %6, align 8, !tbaa !75
  %19 = getelementptr inbounds ptr, ptr %18, i64 %16
  store ptr %17, ptr %19, align 8, !tbaa !75
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, 33
  br i1 %21, label %22, label %15, !llvm.loop !244

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 %5
  store i8 0, ptr %23, align 1, !tbaa !161
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 6
  br i1 %25, label %7, label %4, !llvm.loop !245

26:                                               ; preds = %11, %26
  %27 = phi i64 [ 0, %11 ], [ %58, %26 ]
  %28 = load ptr, ptr %12, align 8, !tbaa !75
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 40
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = load ptr, ptr %13, align 8, !tbaa !75
  %34 = shl nuw nsw i64 %27, 1
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  store ptr %32, ptr %35, align 8, !tbaa !75
  %36 = load ptr, ptr %12, align 8, !tbaa !75
  %37 = getelementptr inbounds ptr, ptr %36, i64 %27
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 41
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  %41 = load ptr, ptr %13, align 8, !tbaa !75
  %42 = or disjoint i64 %34, 1
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  store ptr %40, ptr %43, align 8, !tbaa !75
  %44 = load ptr, ptr %12, align 8, !tbaa !75
  %45 = getelementptr inbounds ptr, ptr %44, i64 %27
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 41
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = load ptr, ptr %14, align 8, !tbaa !75
  %50 = getelementptr inbounds ptr, ptr %49, i64 %34
  store ptr %48, ptr %50, align 8, !tbaa !75
  %51 = load ptr, ptr %12, align 8, !tbaa !75
  %52 = getelementptr inbounds ptr, ptr %51, i64 %27
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 40
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  %56 = load ptr, ptr %14, align 8, !tbaa !75
  %57 = getelementptr inbounds ptr, ptr %56, i64 %42
  store ptr %55, ptr %57, align 8, !tbaa !75
  %58 = add nuw nsw i64 %27, 1
  %59 = load i8, ptr %8, align 8, !tbaa !161
  %60 = sext i8 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %26, label %62, !llvm.loop !246

62:                                               ; preds = %26, %7
  %63 = phi i8 [ %9, %7 ], [ %59, %26 ]
  %64 = shl i8 %63, 1
  %65 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 4
  store i8 %64, ptr %65, align 4, !tbaa !161
  %66 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 2
  store i8 %64, ptr %66, align 2, !tbaa !161
  %67 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !161
  %69 = icmp sgt i8 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 1
  %72 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 3
  %73 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 5
  br label %74

74:                                               ; preds = %70, %74
  %75 = phi i64 [ 0, %70 ], [ %106, %74 ]
  %76 = load ptr, ptr %71, align 8, !tbaa !75
  %77 = getelementptr inbounds ptr, ptr %76, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !75
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 40
  %80 = load ptr, ptr %79, align 8, !tbaa !85
  %81 = load ptr, ptr %72, align 8, !tbaa !75
  %82 = shl nuw nsw i64 %75, 1
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82
  store ptr %80, ptr %83, align 8, !tbaa !75
  %84 = load ptr, ptr %71, align 8, !tbaa !75
  %85 = getelementptr inbounds ptr, ptr %84, i64 %75
  %86 = load ptr, ptr %85, align 8, !tbaa !75
  %87 = getelementptr inbounds %struct.storable_picture, ptr %86, i64 0, i32 41
  %88 = load ptr, ptr %87, align 8, !tbaa !88
  %89 = load ptr, ptr %72, align 8, !tbaa !75
  %90 = or disjoint i64 %82, 1
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  store ptr %88, ptr %91, align 8, !tbaa !75
  %92 = load ptr, ptr %71, align 8, !tbaa !75
  %93 = getelementptr inbounds ptr, ptr %92, i64 %75
  %94 = load ptr, ptr %93, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.storable_picture, ptr %94, i64 0, i32 41
  %96 = load ptr, ptr %95, align 8, !tbaa !88
  %97 = load ptr, ptr %73, align 8, !tbaa !75
  %98 = getelementptr inbounds ptr, ptr %97, i64 %82
  store ptr %96, ptr %98, align 8, !tbaa !75
  %99 = load ptr, ptr %71, align 8, !tbaa !75
  %100 = getelementptr inbounds ptr, ptr %99, i64 %75
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = getelementptr inbounds %struct.storable_picture, ptr %101, i64 0, i32 40
  %103 = load ptr, ptr %102, align 8, !tbaa !85
  %104 = load ptr, ptr %73, align 8, !tbaa !75
  %105 = getelementptr inbounds ptr, ptr %104, i64 %90
  store ptr %103, ptr %105, align 8, !tbaa !75
  %106 = add nuw nsw i64 %75, 1
  %107 = load i8, ptr %67, align 1, !tbaa !161
  %108 = sext i8 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %74, label %110, !llvm.loop !247

110:                                              ; preds = %74, %62
  %111 = phi i8 [ %68, %62 ], [ %107, %74 ]
  %112 = shl i8 %111, 1
  %113 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 5
  store i8 %112, ptr %113, align 1, !tbaa !161
  %114 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 3
  store i8 %112, ptr %114, align 1, !tbaa !161
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_short_term_pic(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !248
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %13 = zext i32 %5 to i64
  br label %14

14:                                               ; preds = %7, %64
  %15 = phi i64 [ 0, %7 ], [ %65, %64 ]
  br i1 %10, label %16, label %33

16:                                               ; preds = %14
  %17 = load ptr, ptr %12, align 8, !tbaa !71
  %18 = getelementptr inbounds ptr, ptr %17, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !182
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %64

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.storable_picture, ptr %25, i64 0, i32 10
  %27 = load i8, ptr %26, align 8, !tbaa !158
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.storable_picture, ptr %25, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !177
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %70, label %64

33:                                               ; preds = %14
  %34 = load ptr, ptr %11, align 8, !tbaa !71
  %35 = getelementptr inbounds ptr, ptr %34, i64 %15
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.frame_store, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !182
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.frame_store, ptr %36, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 10
  %45 = load i8, ptr %44, align 8, !tbaa !158
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !177
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %70, label %51

51:                                               ; preds = %41, %47, %33
  %52 = and i32 %38, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.frame_store, ptr %36, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 10
  %58 = load i8, ptr %57, align 8, !tbaa !158
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 7
  %62 = load i32, ptr %61, align 4, !tbaa !177
  %63 = icmp eq i32 %62, %1
  br i1 %63, label %70, label %64

64:                                               ; preds = %23, %29, %16, %54, %60, %51
  %65 = add nuw nsw i64 %15, 1
  %66 = icmp eq i64 %65, %13
  br i1 %66, label %67, label %14, !llvm.loop !249

67:                                               ; preds = %64, %2
  %68 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 138
  %69 = load ptr, ptr %68, align 8, !tbaa !84
  br label %70

70:                                               ; preds = %60, %47, %29, %67
  %71 = phi ptr [ %69, %67 ], [ %25, %29 ], [ %43, %47 ], [ %56, %60 ]
  ret ptr %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_long_term_pic(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !248
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %13 = zext i32 %4 to i64
  br label %14

14:                                               ; preds = %6, %64
  %15 = phi i64 [ 0, %6 ], [ %65, %64 ]
  br i1 %10, label %16, label %33

16:                                               ; preds = %14
  %17 = load ptr, ptr %12, align 8, !tbaa !72
  %18 = getelementptr inbounds ptr, ptr %17, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !182
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %64

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.storable_picture, ptr %25, i64 0, i32 10
  %27 = load i8, ptr %26, align 8, !tbaa !158
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.storable_picture, ptr %25, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !180
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %67, label %64

33:                                               ; preds = %14
  %34 = load ptr, ptr %11, align 8, !tbaa !72
  %35 = getelementptr inbounds ptr, ptr %34, i64 %15
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.frame_store, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !182
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.frame_store, ptr %36, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 10
  %45 = load i8, ptr %44, align 8, !tbaa !158
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !180
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %67, label %51

51:                                               ; preds = %41, %47, %33
  %52 = and i32 %38, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.frame_store, ptr %36, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 10
  %58 = load i8, ptr %57, align 8, !tbaa !158
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 8
  %62 = load i32, ptr %61, align 8, !tbaa !180
  %63 = icmp eq i32 %62, %1
  br i1 %63, label %67, label %64

64:                                               ; preds = %23, %29, %16, %54, %60, %51
  %65 = add nuw nsw i64 %15, 1
  %66 = icmp eq i64 %65, %13
  br i1 %66, label %67, label %14, !llvm.loop !250

67:                                               ; preds = %29, %47, %60, %64, %2
  %68 = phi ptr [ null, %2 ], [ %25, %29 ], [ %43, %47 ], [ %56, %60 ], [ null, %64 ]
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define dso_local void @reorder_ref_pic_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 %4
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 %4
  %12 = load i32, ptr %11, align 4, !tbaa !200
  %13 = add nsw i32 %12, -1
  %14 = load ptr, ptr %0, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !tbaa !200
  %15 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !248
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 52
  %19 = load i32, ptr %18, align 8, !tbaa !251
  br i1 %17, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %22 = load i32, ptr %21, align 4, !tbaa !175
  br label %29

23:                                               ; preds = %2
  %24 = shl nsw i32 %19, 1
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %26 = load i32, ptr %25, align 4, !tbaa !175
  %27 = shl i32 %26, 1
  %28 = or disjoint i32 %27, 1
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i32 [ %19, %20 ], [ %24, %23 ]
  %31 = phi i32 [ %22, %20 ], [ %28, %23 ]
  %32 = load i32, ptr %6, align 4, !tbaa !200
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %77, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %4
  br label %36

36:                                               ; preds = %34, %71
  %37 = phi i64 [ 0, %34 ], [ %73, %71 ]
  %38 = phi i32 [ %32, %34 ], [ %75, %71 ]
  %39 = phi ptr [ %6, %34 ], [ %74, %71 ]
  %40 = phi i32 [ %31, %34 ], [ %72, %71 ]
  %41 = icmp sgt i32 %38, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #20
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, ptr %39, align 4, !tbaa !200
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = icmp eq i32 %44, 0
  %48 = getelementptr inbounds i32, ptr %8, i64 %37
  %49 = load i32, ptr %48, align 4, !tbaa !200
  br i1 %47, label %50, label %56

50:                                               ; preds = %46
  %51 = xor i32 %49, -1
  %52 = add i32 %40, %51
  %53 = icmp slt i32 %52, 0
  %54 = select i1 %53, i32 %30, i32 0
  %55 = add nsw i32 %54, %52
  br label %62

56:                                               ; preds = %46
  %57 = add i32 %40, 1
  %58 = add i32 %57, %49
  %59 = icmp slt i32 %58, %30
  %60 = select i1 %59, i32 0, i32 %30
  %61 = sub nsw i32 %58, %60
  br label %62

62:                                               ; preds = %56, %50
  %63 = phi i32 [ %55, %50 ], [ %61, %56 ]
  %64 = icmp sgt i32 %63, %31
  %65 = select i1 %64, i32 %30, i32 0
  %66 = sub nsw i32 %63, %65
  call void @reorder_short_term(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %13, i32 noundef %66, ptr noundef nonnull %3, i32 noundef -1) #20
  br label %71

67:                                               ; preds = %43
  %68 = load ptr, ptr %35, align 8, !tbaa !75
  %69 = getelementptr inbounds i32, ptr %10, i64 %37
  %70 = load i32, ptr %69, align 4, !tbaa !200
  call void @reorder_long_term(ptr noundef nonnull %0, ptr noundef %68, i32 noundef %13, i32 noundef %70, ptr noundef nonnull %3, i32 noundef -1) #20
  br label %71

71:                                               ; preds = %62, %67
  %72 = phi i32 [ %63, %62 ], [ %40, %67 ]
  %73 = add nuw i64 %37, 1
  %74 = getelementptr inbounds i32, ptr %6, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !200
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %36, !llvm.loop !252

77:                                               ; preds = %71, %29
  %78 = trunc i32 %12 to i8
  %79 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 %4
  store i8 %78, ptr %79, align 1, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

declare void @reorder_short_term(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @reorder_long_term(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %67
  %11 = phi i64 [ 0, %6 ], [ %69, %67 ]
  %12 = phi i32 [ 0, %6 ], [ %68, %67 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = load i32, ptr %15, align 8, !tbaa !159
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !129
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 10
  %26 = load i8, ptr %25, align 8, !tbaa !158
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %24, %18, %10
  %29 = and i32 %16, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !129
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !158
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %39, %35, %31, %28
  %44 = and i32 %16, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 11
  %52 = load i32, ptr %51, align 4, !tbaa !129
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 10
  %56 = load i8, ptr %55, align 8, !tbaa !158
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54, %39, %24
  %59 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !76
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load ptr, ptr %8, align 8, !tbaa !71
  %64 = add i32 %12, 1
  %65 = zext i32 %12 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  store ptr %15, ptr %66, align 8, !tbaa !75
  br label %67

67:                                               ; preds = %43, %46, %50, %54, %58, %62
  %68 = phi i32 [ %64, %62 ], [ %12, %58 ], [ %12, %54 ], [ %12, %50 ], [ %12, %46 ], [ %12, %43 ]
  %69 = add nuw nsw i64 %11, 1
  %70 = icmp eq i64 %69, %9
  br i1 %70, label %71, label %10, !llvm.loop !253

71:                                               ; preds = %67, %2
  %72 = phi i32 [ 0, %2 ], [ %68, %67 ]
  %73 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  store i32 %72, ptr %73, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !65
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %79 = zext i32 %72 to i64
  %80 = zext i32 %75 to i64
  br label %81

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %79, %77 ], [ %84, %81 ]
  %83 = load ptr, ptr %78, align 8, !tbaa !71
  %84 = add nuw nsw i64 %82, 1
  %85 = getelementptr inbounds ptr, ptr %83, i64 %82
  store ptr null, ptr %85, align 8, !tbaa !75
  %86 = icmp eq i64 %84, %80
  br i1 %86, label %87, label %81, !llvm.loop !254

87:                                               ; preds = %81, %71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ltref_list(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %67
  %11 = phi i64 [ 0, %6 ], [ %69, %67 ]
  %12 = phi i32 [ 0, %6 ], [ %68, %67 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = load i32, ptr %15, align 8, !tbaa !159
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !129
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 10
  %26 = load i8, ptr %25, align 8, !tbaa !158
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %24, %18, %10
  %29 = and i32 %16, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !129
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !158
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39, %35, %31, %28
  %44 = and i32 %16, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 11
  %52 = load i32, ptr %51, align 4, !tbaa !129
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 10
  %56 = load i8, ptr %55, align 8, !tbaa !158
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54, %39, %24
  %59 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !76
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load ptr, ptr %8, align 8, !tbaa !72
  %64 = add i32 %12, 1
  %65 = zext i32 %12 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  store ptr %15, ptr %66, align 8, !tbaa !75
  br label %67

67:                                               ; preds = %43, %46, %50, %54, %58, %62
  %68 = phi i32 [ %64, %62 ], [ %12, %58 ], [ %12, %54 ], [ %12, %50 ], [ %12, %46 ], [ %12, %43 ]
  %69 = add nuw nsw i64 %11, 1
  %70 = icmp eq i64 %69, %9
  br i1 %70, label %71, label %10, !llvm.loop !255

71:                                               ; preds = %67, %2
  %72 = phi i32 [ 0, %2 ], [ %68, %67 ]
  %73 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  store i32 %72, ptr %73, align 4, !tbaa !50
  %74 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !65
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %79 = zext i32 %72 to i64
  %80 = zext i32 %75 to i64
  br label %81

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %79, %77 ], [ %84, %81 ]
  %83 = load ptr, ptr %78, align 8, !tbaa !72
  %84 = add nuw nsw i64 %82, 1
  %85 = getelementptr inbounds ptr, ptr %83, i64 %82
  store ptr null, ptr %85, align 8, !tbaa !75
  %86 = icmp eq i64 %84, %80
  br i1 %86, label %87, label %81, !llvm.loop !256

87:                                               ; preds = %81, %71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mm_update_max_long_term_frame_idx(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !61
  %5 = tail call i32 @GetVOIdx(ptr noundef %4, i32 noundef %2) #20
  %6 = add nsw i32 %1, -1
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 11, i64 %7
  store i32 %6, ptr %8, align 4, !tbaa !200
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = zext i32 %10 to i64
  br label %16

16:                                               ; preds = %12, %72
  %17 = phi i64 [ 0, %12 ], [ %73, %72 ]
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !203
  %22 = load i32, ptr %8, align 4, !tbaa !200
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !76
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load i32, ptr %19, align 8, !tbaa !159
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  store i32 0, ptr %37, align 4, !tbaa !129
  %38 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  store i8 0, ptr %38, align 8, !tbaa !158
  br label %39

39:                                               ; preds = %36, %32, %28
  %40 = and i32 %29, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.storable_picture, ptr %44, i64 0, i32 11
  store i32 0, ptr %47, align 4, !tbaa !129
  %48 = getelementptr inbounds %struct.storable_picture, ptr %44, i64 0, i32 10
  store i8 0, ptr %48, align 8, !tbaa !158
  br label %49

49:                                               ; preds = %46, %42, %39
  %50 = icmp eq i32 %29, 3
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 14
  %57 = load ptr, ptr %56, align 8, !tbaa !97
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 11
  store i32 0, ptr %60, align 4, !tbaa !129
  %61 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 10
  store i8 0, ptr %61, align 8, !tbaa !158
  %62 = getelementptr inbounds %struct.storable_picture, ptr %57, i64 0, i32 11
  store i32 0, ptr %62, align 4, !tbaa !129
  %63 = getelementptr inbounds %struct.storable_picture, ptr %57, i64 0, i32 10
  store i8 0, ptr %63, align 8, !tbaa !158
  br label %64

64:                                               ; preds = %59, %55, %51
  %65 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !95
  %67 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 11
  store i32 0, ptr %67, align 4, !tbaa !129
  %68 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 10
  store i8 0, ptr %68, align 8, !tbaa !158
  br label %69

69:                                               ; preds = %49, %64
  %70 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 1
  store i32 0, ptr %70, align 4, !tbaa !182
  %71 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 2
  store i32 0, ptr %71, align 8, !tbaa !184
  br label %72

72:                                               ; preds = %16, %24, %69
  %73 = add nuw nsw i64 %17, 1
  %74 = icmp eq i64 %73, %15
  br i1 %74, label %75, label %16, !llvm.loop !257

75:                                               ; preds = %72, %3
  ret void
}

declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @store_picture_in_dpb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 61
  store i32 0, ptr %4, align 4, !tbaa !92
  %5 = load i32, ptr %1, align 8, !tbaa !134
  %6 = icmp eq i32 %5, 2
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 62
  store i32 %7, ptr %8, align 8, !tbaa !258
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 44
  %10 = load i32, ptr %9, align 4, !tbaa !259
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %158, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %14 = load i32, ptr %13, align 8, !tbaa !133
  %15 = tail call i32 @GetVOIdx(ptr noundef %3, i32 noundef %14) #20
  %16 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !260
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !195
  %21 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !261
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %135, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !68
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %20, 0
  %30 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  br label %44

32:                                               ; preds = %86, %24
  %33 = phi i32 [ 0, %24 ], [ %87, %86 ]
  %34 = phi i32 [ %26, %24 ], [ %89, %86 ]
  %35 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %36 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !53
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %92, label %39

39:                                               ; preds = %32
  %40 = icmp eq i32 %20, 0
  %41 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %42 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %43 = zext i32 %37 to i64
  br label %101

44:                                               ; preds = %28, %86
  %45 = phi i64 [ 0, %28 ], [ %88, %86 ]
  %46 = phi i32 [ 0, %28 ], [ %87, %86 ]
  br i1 %29, label %55, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %30, align 8, !tbaa !70
  %49 = getelementptr inbounds ptr, ptr %48, i64 %45
  %50 = load ptr, ptr %49, align 8, !tbaa !75
  %51 = getelementptr inbounds %struct.frame_store, ptr %50, i64 0, i32 15
  %52 = load i32, ptr %51, align 8, !tbaa !76
  %53 = load i32, ptr %13, align 8, !tbaa !133
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %47, %44
  %56 = load ptr, ptr %31, align 8, !tbaa !70
  %57 = getelementptr inbounds ptr, ptr %56, i64 %45
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.frame_store, ptr %58, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @free_storable_picture(ptr noundef nonnull %62)
  store ptr null, ptr %61, align 8, !tbaa !95
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.frame_store, ptr %58, i64 0, i32 13
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @free_storable_picture(ptr noundef nonnull %67)
  store ptr null, ptr %66, align 8, !tbaa !96
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %struct.frame_store, ptr %58, i64 0, i32 14
  %72 = load ptr, ptr %71, align 8, !tbaa !97
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @free_storable_picture(ptr noundef nonnull %72)
  store ptr null, ptr %71, align 8, !tbaa !97
  br label %75

75:                                               ; preds = %74, %70
  tail call void @free(ptr noundef %58) #20
  br label %76

76:                                               ; preds = %55, %75
  %77 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %80

80:                                               ; preds = %76, %79
  %81 = getelementptr inbounds %struct.frame_store, ptr %77, i64 0, i32 9
  store i32 0, ptr %81, align 4, !tbaa !73
  %82 = getelementptr inbounds %struct.frame_store, ptr %77, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, i8 0, i64 24, i1 false)
  %83 = load ptr, ptr %31, align 8, !tbaa !70
  %84 = getelementptr inbounds ptr, ptr %83, i64 %45
  store ptr %77, ptr %84, align 8, !tbaa !75
  %85 = add nsw i32 %46, 1
  br label %86

86:                                               ; preds = %80, %47
  %87 = phi i32 [ %85, %80 ], [ %46, %47 ]
  %88 = add nuw nsw i64 %45, 1
  %89 = load i32, ptr %25, align 4, !tbaa !68
  %90 = zext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %44, label %32, !llvm.loop !262

92:                                               ; preds = %114, %32
  %93 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %133, label %96

96:                                               ; preds = %92
  %97 = icmp eq i32 %20, 0
  %98 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %99 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %100 = zext i32 %94 to i64
  br label %117

101:                                              ; preds = %39, %114
  %102 = phi i64 [ 0, %39 ], [ %115, %114 ]
  br i1 %40, label %111, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %41, align 8, !tbaa !71
  %105 = getelementptr inbounds ptr, ptr %104, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = getelementptr inbounds %struct.frame_store, ptr %106, i64 0, i32 15
  %108 = load i32, ptr %107, align 8, !tbaa !76
  %109 = load i32, ptr %13, align 8, !tbaa !133
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103, %101
  %112 = load ptr, ptr %42, align 8, !tbaa !71
  %113 = getelementptr inbounds ptr, ptr %112, i64 %102
  store ptr null, ptr %113, align 8, !tbaa !75
  br label %114

114:                                              ; preds = %111, %103
  %115 = add nuw nsw i64 %102, 1
  %116 = icmp eq i64 %115, %43
  br i1 %116, label %92, label %101, !llvm.loop !263

117:                                              ; preds = %96, %130
  %118 = phi i64 [ 0, %96 ], [ %131, %130 ]
  br i1 %97, label %127, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %98, align 8, !tbaa !72
  %121 = getelementptr inbounds ptr, ptr %120, i64 %118
  %122 = load ptr, ptr %121, align 8, !tbaa !75
  %123 = getelementptr inbounds %struct.frame_store, ptr %122, i64 0, i32 15
  %124 = load i32, ptr %123, align 8, !tbaa !76
  %125 = load i32, ptr %13, align 8, !tbaa !133
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119, %117
  %128 = load ptr, ptr %99, align 8, !tbaa !72
  %129 = getelementptr inbounds ptr, ptr %128, i64 %118
  store ptr null, ptr %129, align 8, !tbaa !75
  br label %130

130:                                              ; preds = %127, %119
  %131 = add nuw nsw i64 %118, 1
  %132 = icmp eq i64 %131, %100
  br i1 %132, label %133, label %117, !llvm.loop !264

133:                                              ; preds = %130, %92
  %134 = sub i32 %34, %33
  store i32 %134, ptr %35, align 4, !tbaa !68
  br label %141

135:                                              ; preds = %12
  %136 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 71
  %137 = load i32, ptr %136, align 4, !tbaa !63
  switch i32 %137, label %139 [
    i32 118, label %138
    i32 128, label %138
  ]

138:                                              ; preds = %135, %135
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef -1)
  br label %141

139:                                              ; preds = %135
  %140 = load i32, ptr %13, align 8, !tbaa !133
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef %140)
  br label %141

141:                                              ; preds = %139, %138, %133
  %142 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  store ptr null, ptr %142, align 8, !tbaa !69
  %143 = load i32, ptr %13, align 8, !tbaa !133
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %143)
  %144 = load i32, ptr %13, align 8, !tbaa !133
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %144)
  %145 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 -2147483648, ptr %145, align 8, !tbaa !90
  %146 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  store i32 -1, ptr %146, align 4, !tbaa !91
  %147 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 46
  %148 = load i32, ptr %147, align 4, !tbaa !265
  %149 = icmp eq i32 %148, 0
  %150 = sext i32 %15 to i64
  %151 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 11, i64 %150
  %152 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  br i1 %149, label %155, label %153

153:                                              ; preds = %141
  store i32 0, ptr %151, align 4, !tbaa !200
  store i8 1, ptr %152, align 8, !tbaa !158
  %154 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 9
  store i32 0, ptr %154, align 4, !tbaa !179
  br label %156

155:                                              ; preds = %141
  store i32 -1, ptr %151, align 4, !tbaa !200
  store i8 0, ptr %152, align 8, !tbaa !158
  br label %156

156:                                              ; preds = %153, %155
  %157 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %157, i8 0, i64 400, i1 false)
  br label %884

158:                                              ; preds = %2
  %159 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %160 = load i32, ptr %159, align 4, !tbaa !129
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %884, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  %164 = load i32, ptr %163, align 8, !tbaa !266
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %884, label %166

166:                                              ; preds = %162
  store i32 0, ptr %4, align 4, !tbaa !92
  %167 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 58
  %168 = load ptr, ptr %167, align 8, !tbaa !143
  %169 = icmp eq ptr %168, null
  br i1 %169, label %858, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  %172 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %173 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %174 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %175 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %176 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %177 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 9
  %178 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %179 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %180 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 13
  %181 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %182 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %183 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %184 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %185 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %186 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %187 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %188 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %189 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %190 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %191 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %192 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %193 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %194 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %195 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %196 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %197 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %198 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %199 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %200 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %201 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %202 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %203 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %204 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %205 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %206 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %207 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %208 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %209 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %210 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %211 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %212 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %213

213:                                              ; preds = %170, %853
  %214 = phi ptr [ %168, %170 ], [ %856, %853 ]
  %215 = load i32, ptr %214, align 8, !tbaa !267
  switch i32 %215, label %852 [
    i32 0, label %216
    i32 1, label %221
    i32 2, label %317
    i32 3, label %445
    i32 4, label %746
    i32 5, label %751
    i32 6, label %771
  ]

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 5
  %218 = load ptr, ptr %217, align 8, !tbaa !269
  %219 = icmp eq ptr %218, null
  br i1 %219, label %853, label %220

220:                                              ; preds = %216
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 500) #20
  br label %853

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !270
  %224 = load i32, ptr %1, align 8, !tbaa !134
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, ptr %208, align 4, !tbaa !128
  br label %232

228:                                              ; preds = %221
  %229 = load i32, ptr %207, align 4, !tbaa !128
  %230 = shl i32 %229, 1
  %231 = or disjoint i32 %230, 1
  br label %232

232:                                              ; preds = %228, %226
  %233 = phi i32 [ %227, %226 ], [ %231, %228 ]
  %234 = xor i32 %223, -1
  %235 = add i32 %233, %234
  %236 = load i32, ptr %209, align 8, !tbaa !53
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %315, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %210, align 8, !tbaa !71
  %240 = load i32, ptr %211, align 8, !tbaa !133
  %241 = zext i32 %236 to i64
  br label %242

242:                                              ; preds = %238, %312
  %243 = phi i64 [ 0, %238 ], [ %313, %312 ]
  %244 = getelementptr inbounds ptr, ptr %239, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !75
  %246 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 15
  %247 = load i32, ptr %246, align 8, !tbaa !76
  %248 = icmp eq i32 %247, %240
  br i1 %248, label %249, label %312

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !182
  br i1 %225, label %252, label %265

252:                                              ; preds = %249
  %253 = icmp eq i32 %251, 3
  br i1 %253, label %254, label %312

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 2
  %256 = load i32, ptr %255, align 8, !tbaa !184
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %312

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 12
  %260 = load ptr, ptr %259, align 8, !tbaa !95
  %261 = getelementptr inbounds %struct.storable_picture, ptr %260, i64 0, i32 7
  %262 = load i32, ptr %261, align 4, !tbaa !177
  %263 = icmp eq i32 %262, %235
  br i1 %263, label %264, label %312

264:                                              ; preds = %258
  tail call fastcc void @unmark_for_reference(ptr noundef %245)
  br label %315

265:                                              ; preds = %249
  %266 = and i32 %251, 1
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %289, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 2
  %270 = load i32, ptr %269, align 8, !tbaa !184
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %289

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 13
  %275 = load ptr, ptr %274, align 8, !tbaa !96
  %276 = getelementptr inbounds %struct.storable_picture, ptr %275, i64 0, i32 7
  %277 = load i32, ptr %276, align 4, !tbaa !177
  %278 = icmp eq i32 %277, %235
  br i1 %278, label %279, label %289

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 1
  %281 = getelementptr inbounds %struct.storable_picture, ptr %275, i64 0, i32 11
  store i32 0, ptr %281, align 4, !tbaa !129
  %282 = and i32 %251, 2
  store i32 %282, ptr %280, align 4, !tbaa !182
  %283 = load i32, ptr %245, align 8, !tbaa !159
  %284 = icmp eq i32 %283, 3
  br i1 %284, label %285, label %315

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 12
  %287 = load ptr, ptr %286, align 8, !tbaa !95
  %288 = getelementptr inbounds %struct.storable_picture, ptr %287, i64 0, i32 11
  store i32 0, ptr %288, align 4, !tbaa !129
  br label %315

289:                                              ; preds = %273, %268, %265
  %290 = and i32 %251, 2
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %312, label %292

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 2
  %294 = load i32, ptr %293, align 8, !tbaa !184
  %295 = and i32 %294, 2
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 14
  %299 = load ptr, ptr %298, align 8, !tbaa !97
  %300 = getelementptr inbounds %struct.storable_picture, ptr %299, i64 0, i32 7
  %301 = load i32, ptr %300, align 4, !tbaa !177
  %302 = icmp eq i32 %301, %235
  br i1 %302, label %303, label %312

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 1
  %305 = getelementptr inbounds %struct.storable_picture, ptr %299, i64 0, i32 11
  store i32 0, ptr %305, align 4, !tbaa !129
  store i32 %266, ptr %304, align 4, !tbaa !182
  %306 = load i32, ptr %245, align 8, !tbaa !159
  %307 = icmp eq i32 %306, 3
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct.frame_store, ptr %245, i64 0, i32 12
  %310 = load ptr, ptr %309, align 8, !tbaa !95
  %311 = getelementptr inbounds %struct.storable_picture, ptr %310, i64 0, i32 11
  store i32 0, ptr %311, align 4, !tbaa !129
  br label %315

312:                                              ; preds = %297, %292, %289, %258, %254, %252, %242
  %313 = add nuw nsw i64 %243, 1
  %314 = icmp eq i64 %313, %241
  br i1 %314, label %315, label %242, !llvm.loop !271

315:                                              ; preds = %312, %232, %308, %303, %285, %279, %264
  %316 = load i32, ptr %212, align 8, !tbaa !133
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %316)
  br label %853

317:                                              ; preds = %213
  %318 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 2
  %319 = load i32, ptr %318, align 8, !tbaa !272
  %320 = load i32, ptr %203, align 4, !tbaa !50
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %443, label %322

322:                                              ; preds = %317
  %323 = load ptr, ptr %204, align 8, !tbaa !72
  %324 = load i32, ptr %205, align 8, !tbaa !133
  %325 = zext i32 %320 to i64
  br label %326

326:                                              ; preds = %322, %435
  %327 = phi i64 [ 0, %322 ], [ %436, %435 ]
  %328 = getelementptr inbounds ptr, ptr %323, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !75
  %330 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 15
  %331 = load i32, ptr %330, align 8, !tbaa !76
  %332 = icmp eq i32 %331, %324
  br i1 %332, label %333, label %435

333:                                              ; preds = %326
  %334 = load i32, ptr %1, align 8, !tbaa !134
  %335 = icmp eq i32 %334, 0
  %336 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 1
  %337 = load i32, ptr %336, align 4, !tbaa !182
  br i1 %335, label %338, label %390

338:                                              ; preds = %333
  %339 = icmp eq i32 %337, 3
  br i1 %339, label %340, label %435

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 2
  %342 = load i32, ptr %341, align 8, !tbaa !184
  %343 = icmp eq i32 %342, 3
  br i1 %343, label %344, label %435

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 12
  %346 = load ptr, ptr %345, align 8, !tbaa !95
  %347 = getelementptr inbounds %struct.storable_picture, ptr %346, i64 0, i32 8
  %348 = load i32, ptr %347, align 8, !tbaa !180
  %349 = icmp eq i32 %348, %319
  br i1 %349, label %350, label %435

350:                                              ; preds = %344
  %351 = load i32, ptr %329, align 8, !tbaa !159
  %352 = and i32 %351, 1
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 13
  %356 = load ptr, ptr %355, align 8, !tbaa !96
  %357 = icmp eq ptr %356, null
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.storable_picture, ptr %356, i64 0, i32 11
  store i32 0, ptr %359, align 4, !tbaa !129
  %360 = getelementptr inbounds %struct.storable_picture, ptr %356, i64 0, i32 10
  store i8 0, ptr %360, align 8, !tbaa !158
  br label %361

361:                                              ; preds = %358, %354, %350
  %362 = and i32 %351, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %371, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 14
  %366 = load ptr, ptr %365, align 8, !tbaa !97
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.storable_picture, ptr %366, i64 0, i32 11
  store i32 0, ptr %369, align 4, !tbaa !129
  %370 = getelementptr inbounds %struct.storable_picture, ptr %366, i64 0, i32 10
  store i8 0, ptr %370, align 8, !tbaa !158
  br label %371

371:                                              ; preds = %368, %364, %361
  %372 = icmp eq i32 %351, 3
  br i1 %372, label %373, label %389

373:                                              ; preds = %371
  %374 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 13
  %375 = load ptr, ptr %374, align 8, !tbaa !96
  %376 = icmp eq ptr %375, null
  br i1 %376, label %386, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 14
  %379 = load ptr, ptr %378, align 8, !tbaa !97
  %380 = icmp eq ptr %379, null
  br i1 %380, label %386, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.storable_picture, ptr %375, i64 0, i32 11
  store i32 0, ptr %382, align 4, !tbaa !129
  %383 = getelementptr inbounds %struct.storable_picture, ptr %375, i64 0, i32 10
  store i8 0, ptr %383, align 8, !tbaa !158
  %384 = getelementptr inbounds %struct.storable_picture, ptr %379, i64 0, i32 11
  store i32 0, ptr %384, align 4, !tbaa !129
  %385 = getelementptr inbounds %struct.storable_picture, ptr %379, i64 0, i32 10
  store i8 0, ptr %385, align 8, !tbaa !158
  br label %386

386:                                              ; preds = %381, %377, %373
  %387 = getelementptr inbounds %struct.storable_picture, ptr %346, i64 0, i32 11
  store i32 0, ptr %387, align 4, !tbaa !129
  %388 = getelementptr inbounds %struct.storable_picture, ptr %346, i64 0, i32 10
  store i8 0, ptr %388, align 8, !tbaa !158
  br label %389

389:                                              ; preds = %371, %386
  store i32 0, ptr %336, align 4, !tbaa !182
  store i32 0, ptr %341, align 8, !tbaa !184
  br label %435

390:                                              ; preds = %333
  %391 = and i32 %337, 1
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %413, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 2
  %395 = load i32, ptr %394, align 8, !tbaa !184
  %396 = and i32 %395, 1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %413, label %398

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 13
  %400 = load ptr, ptr %399, align 8, !tbaa !96
  %401 = getelementptr inbounds %struct.storable_picture, ptr %400, i64 0, i32 8
  %402 = load i32, ptr %401, align 8, !tbaa !180
  %403 = icmp eq i32 %402, %319
  br i1 %403, label %404, label %413

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 1
  %406 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 2
  %407 = getelementptr inbounds %struct.storable_picture, ptr %400, i64 0, i32 11
  store i32 0, ptr %407, align 4, !tbaa !129
  %408 = getelementptr inbounds %struct.storable_picture, ptr %400, i64 0, i32 10
  store i8 0, ptr %408, align 8, !tbaa !158
  %409 = and i32 %337, 2
  store i32 %409, ptr %405, align 4, !tbaa !182
  %410 = and i32 %395, 2
  store i32 %410, ptr %406, align 8, !tbaa !184
  %411 = load i32, ptr %329, align 8, !tbaa !159
  %412 = icmp eq i32 %411, 3
  br i1 %412, label %438, label %443

413:                                              ; preds = %398, %393, %390
  %414 = and i32 %337, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %435, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 2
  %418 = load i32, ptr %417, align 8, !tbaa !184
  %419 = and i32 %418, 2
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %435, label %421

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 14
  %423 = load ptr, ptr %422, align 8, !tbaa !97
  %424 = getelementptr inbounds %struct.storable_picture, ptr %423, i64 0, i32 8
  %425 = load i32, ptr %424, align 8, !tbaa !180
  %426 = icmp eq i32 %425, %319
  br i1 %426, label %427, label %435

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 1
  %429 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 2
  %430 = getelementptr inbounds %struct.storable_picture, ptr %423, i64 0, i32 11
  store i32 0, ptr %430, align 4, !tbaa !129
  %431 = getelementptr inbounds %struct.storable_picture, ptr %423, i64 0, i32 10
  store i8 0, ptr %431, align 8, !tbaa !158
  store i32 %391, ptr %428, align 4, !tbaa !182
  %432 = and i32 %418, 1
  store i32 %432, ptr %429, align 8, !tbaa !184
  %433 = load i32, ptr %329, align 8, !tbaa !159
  %434 = icmp eq i32 %433, 3
  br i1 %434, label %438, label %443

435:                                              ; preds = %421, %416, %413, %389, %344, %340, %338, %326
  %436 = add nuw nsw i64 %327, 1
  %437 = icmp eq i64 %436, %325
  br i1 %437, label %443, label %326, !llvm.loop !273

438:                                              ; preds = %427, %404
  %439 = getelementptr inbounds %struct.frame_store, ptr %329, i64 0, i32 12
  %440 = load ptr, ptr %439, align 8, !tbaa !95
  %441 = getelementptr inbounds %struct.storable_picture, ptr %440, i64 0, i32 11
  store i32 0, ptr %441, align 4, !tbaa !129
  %442 = getelementptr inbounds %struct.storable_picture, ptr %440, i64 0, i32 10
  store i8 0, ptr %442, align 8, !tbaa !158
  br label %443

443:                                              ; preds = %435, %438, %317, %427, %404
  %444 = load i32, ptr %206, align 8, !tbaa !133
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %444)
  br label %853

445:                                              ; preds = %213
  %446 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 1
  %447 = load i32, ptr %446, align 4, !tbaa !270
  %448 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 3
  %449 = load i32, ptr %448, align 4, !tbaa !274
  %450 = load i32, ptr %1, align 8, !tbaa !134
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %445
  %453 = load i32, ptr %186, align 4, !tbaa !128
  br label %458

454:                                              ; preds = %445
  %455 = load i32, ptr %185, align 4, !tbaa !128
  %456 = shl i32 %455, 1
  %457 = or disjoint i32 %456, 1
  br label %458

458:                                              ; preds = %454, %452
  %459 = phi i32 [ %453, %452 ], [ %457, %454 ]
  %460 = xor i32 %447, -1
  %461 = add i32 %459, %460
  br i1 %451, label %470, label %462

462:                                              ; preds = %458
  %463 = load i32, ptr %187, align 8, !tbaa !53
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %567

465:                                              ; preds = %462
  %466 = load ptr, ptr %188, align 8, !tbaa !71
  %467 = load i32, ptr %189, align 8, !tbaa !133
  %468 = zext i32 %463 to i64
  %469 = zext i32 %463 to i64
  br label %535

470:                                              ; preds = %458
  %471 = load i32, ptr %191, align 8, !tbaa !133
  %472 = load i32, ptr %192, align 4, !tbaa !50
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %573, label %474

474:                                              ; preds = %470
  %475 = load ptr, ptr %193, align 8, !tbaa !72
  %476 = zext i32 %472 to i64
  br label %477

477:                                              ; preds = %474, %532
  %478 = phi i64 [ 0, %474 ], [ %533, %532 ]
  %479 = getelementptr inbounds ptr, ptr %475, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !75
  %481 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 8
  %482 = load i32, ptr %481, align 8, !tbaa !203
  %483 = icmp eq i32 %482, %449
  br i1 %483, label %484, label %532

484:                                              ; preds = %477
  %485 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 15
  %486 = load i32, ptr %485, align 8, !tbaa !76
  %487 = icmp eq i32 %486, %471
  br i1 %487, label %488, label %532

488:                                              ; preds = %484
  %489 = load i32, ptr %480, align 8, !tbaa !159
  %490 = and i32 %489, 1
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %499, label %492

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 13
  %494 = load ptr, ptr %493, align 8, !tbaa !96
  %495 = icmp eq ptr %494, null
  br i1 %495, label %499, label %496

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.storable_picture, ptr %494, i64 0, i32 11
  store i32 0, ptr %497, align 4, !tbaa !129
  %498 = getelementptr inbounds %struct.storable_picture, ptr %494, i64 0, i32 10
  store i8 0, ptr %498, align 8, !tbaa !158
  br label %499

499:                                              ; preds = %496, %492, %488
  %500 = and i32 %489, 2
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %509, label %502

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 14
  %504 = load ptr, ptr %503, align 8, !tbaa !97
  %505 = icmp eq ptr %504, null
  br i1 %505, label %509, label %506

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct.storable_picture, ptr %504, i64 0, i32 11
  store i32 0, ptr %507, align 4, !tbaa !129
  %508 = getelementptr inbounds %struct.storable_picture, ptr %504, i64 0, i32 10
  store i8 0, ptr %508, align 8, !tbaa !158
  br label %509

509:                                              ; preds = %506, %502, %499
  %510 = icmp eq i32 %489, 3
  br i1 %510, label %511, label %529

511:                                              ; preds = %509
  %512 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 13
  %513 = load ptr, ptr %512, align 8, !tbaa !96
  %514 = icmp eq ptr %513, null
  br i1 %514, label %524, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 14
  %517 = load ptr, ptr %516, align 8, !tbaa !97
  %518 = icmp eq ptr %517, null
  br i1 %518, label %524, label %519

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.storable_picture, ptr %513, i64 0, i32 11
  store i32 0, ptr %520, align 4, !tbaa !129
  %521 = getelementptr inbounds %struct.storable_picture, ptr %513, i64 0, i32 10
  store i8 0, ptr %521, align 8, !tbaa !158
  %522 = getelementptr inbounds %struct.storable_picture, ptr %517, i64 0, i32 11
  store i32 0, ptr %522, align 4, !tbaa !129
  %523 = getelementptr inbounds %struct.storable_picture, ptr %517, i64 0, i32 10
  store i8 0, ptr %523, align 8, !tbaa !158
  br label %524

524:                                              ; preds = %519, %515, %511
  %525 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 12
  %526 = load ptr, ptr %525, align 8, !tbaa !95
  %527 = getelementptr inbounds %struct.storable_picture, ptr %526, i64 0, i32 11
  store i32 0, ptr %527, align 4, !tbaa !129
  %528 = getelementptr inbounds %struct.storable_picture, ptr %526, i64 0, i32 10
  store i8 0, ptr %528, align 8, !tbaa !158
  br label %529

529:                                              ; preds = %509, %524
  %530 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 1
  store i32 0, ptr %530, align 4, !tbaa !182
  %531 = getelementptr inbounds %struct.frame_store, ptr %480, i64 0, i32 2
  store i32 0, ptr %531, align 8, !tbaa !184
  br label %532

532:                                              ; preds = %529, %484, %477
  %533 = add nuw nsw i64 %478, 1
  %534 = icmp eq i64 %533, %476
  br i1 %534, label %573, label %477, !llvm.loop !275

535:                                              ; preds = %465, %563
  %536 = phi i64 [ 0, %465 ], [ %564, %563 ]
  %537 = phi i1 [ %464, %465 ], [ %565, %563 ]
  %538 = getelementptr inbounds ptr, ptr %466, i64 %536
  %539 = load ptr, ptr %538, align 8, !tbaa !75
  %540 = getelementptr inbounds %struct.frame_store, ptr %539, i64 0, i32 15
  %541 = load i32, ptr %540, align 8, !tbaa !76
  %542 = icmp eq i32 %541, %467
  br i1 %542, label %543, label %563

543:                                              ; preds = %535
  %544 = getelementptr inbounds %struct.frame_store, ptr %539, i64 0, i32 1
  %545 = load i32, ptr %544, align 4, !tbaa !182
  %546 = and i32 %545, 1
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %543
  %549 = getelementptr inbounds %struct.frame_store, ptr %539, i64 0, i32 13
  %550 = load ptr, ptr %549, align 8, !tbaa !96
  %551 = getelementptr inbounds %struct.storable_picture, ptr %550, i64 0, i32 7
  %552 = load i32, ptr %551, align 4, !tbaa !177
  %553 = icmp eq i32 %552, %461
  br i1 %553, label %567, label %554

554:                                              ; preds = %548, %543
  %555 = and i32 %545, 2
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %563, label %557

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.frame_store, ptr %539, i64 0, i32 14
  %559 = load ptr, ptr %558, align 8, !tbaa !97
  %560 = getelementptr inbounds %struct.storable_picture, ptr %559, i64 0, i32 7
  %561 = load i32, ptr %560, align 4, !tbaa !177
  %562 = icmp eq i32 %561, %461
  br i1 %562, label %567, label %563

563:                                              ; preds = %557, %554, %535
  %564 = add nuw nsw i64 %536, 1
  %565 = icmp ult i64 %564, %468
  %566 = icmp eq i64 %564, %469
  br i1 %566, label %567, label %535, !llvm.loop !276

567:                                              ; preds = %563, %548, %557, %462
  %568 = phi i1 [ %464, %462 ], [ %565, %563 ], [ %537, %548 ], [ %537, %557 ]
  %569 = phi i32 [ 0, %462 ], [ 0, %563 ], [ 1, %548 ], [ 2, %557 ]
  br i1 %568, label %571, label %570

570:                                              ; preds = %567
  tail call void @error(ptr noundef nonnull @.str.33, i32 noundef 200) #20
  br label %571

571:                                              ; preds = %570, %567
  %572 = load i32, ptr %190, align 8, !tbaa !133
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr noundef %0, i32 noundef %569, i32 noundef %449, i32 noundef 0, i32 noundef 0, i32 noundef %461, i32 noundef %572)
  br label %573

573:                                              ; preds = %532, %470, %571
  %574 = load i32, ptr %1, align 8, !tbaa !134
  switch i32 %574, label %629 [
    i32 0, label %575
    i32 1, label %630
  ]

575:                                              ; preds = %573
  %576 = load i32, ptr %194, align 8, !tbaa !53
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %627, label %578

578:                                              ; preds = %575
  %579 = load ptr, ptr %195, align 8, !tbaa !71
  %580 = load i32, ptr %196, align 8, !tbaa !133
  %581 = zext i32 %576 to i64
  br label %582

582:                                              ; preds = %578, %624
  %583 = phi i64 [ 0, %578 ], [ %625, %624 ]
  %584 = getelementptr inbounds ptr, ptr %579, i64 %583
  %585 = load ptr, ptr %584, align 8, !tbaa !75
  %586 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 15
  %587 = load i32, ptr %586, align 8, !tbaa !76
  %588 = icmp eq i32 %587, %580
  br i1 %588, label %589, label %624

589:                                              ; preds = %582
  %590 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 1
  %591 = load i32, ptr %590, align 4, !tbaa !182
  %592 = icmp eq i32 %591, 3
  br i1 %592, label %593, label %624

593:                                              ; preds = %589
  %594 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 12
  %595 = load ptr, ptr %594, align 8, !tbaa !95
  %596 = getelementptr inbounds %struct.storable_picture, ptr %595, i64 0, i32 10
  %597 = load i8, ptr %596, align 8, !tbaa !158
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %599, label %624

599:                                              ; preds = %593
  %600 = getelementptr inbounds %struct.storable_picture, ptr %595, i64 0, i32 7
  %601 = load i32, ptr %600, align 4, !tbaa !177
  %602 = icmp eq i32 %601, %461
  br i1 %602, label %603, label %624

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.storable_picture, ptr %595, i64 0, i32 10
  %605 = getelementptr inbounds %struct.storable_picture, ptr %595, i64 0, i32 9
  store i32 %449, ptr %605, align 4, !tbaa !179
  %606 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 8
  store i32 %449, ptr %606, align 8, !tbaa !203
  %607 = getelementptr inbounds %struct.storable_picture, ptr %595, i64 0, i32 8
  store i32 %449, ptr %607, align 8, !tbaa !180
  store i8 1, ptr %604, align 8, !tbaa !158
  %608 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 13
  %609 = load ptr, ptr %608, align 8, !tbaa !96
  %610 = icmp eq ptr %609, null
  br i1 %610, label %622, label %611

611:                                              ; preds = %603
  %612 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 14
  %613 = load ptr, ptr %612, align 8, !tbaa !97
  %614 = icmp eq ptr %613, null
  br i1 %614, label %622, label %615

615:                                              ; preds = %611
  %616 = getelementptr inbounds %struct.storable_picture, ptr %613, i64 0, i32 9
  store i32 %449, ptr %616, align 4, !tbaa !179
  %617 = getelementptr inbounds %struct.storable_picture, ptr %609, i64 0, i32 9
  store i32 %449, ptr %617, align 4, !tbaa !179
  %618 = getelementptr inbounds %struct.storable_picture, ptr %609, i64 0, i32 8
  store i32 %449, ptr %618, align 8, !tbaa !180
  %619 = getelementptr inbounds %struct.storable_picture, ptr %613, i64 0, i32 8
  store i32 %449, ptr %619, align 8, !tbaa !180
  %620 = getelementptr inbounds %struct.storable_picture, ptr %613, i64 0, i32 10
  store i8 1, ptr %620, align 8, !tbaa !158
  %621 = getelementptr inbounds %struct.storable_picture, ptr %609, i64 0, i32 10
  store i8 1, ptr %621, align 8, !tbaa !158
  br label %622

622:                                              ; preds = %615, %611, %603
  %623 = getelementptr inbounds %struct.frame_store, ptr %585, i64 0, i32 2
  store i32 3, ptr %623, align 8, !tbaa !184
  br label %743

624:                                              ; preds = %599, %593, %589, %582
  %625 = add nuw nsw i64 %583, 1
  %626 = icmp eq i64 %625, %581
  br i1 %626, label %627, label %582, !llvm.loop !277

627:                                              ; preds = %624, %575
  %628 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  br label %743

629:                                              ; preds = %573
  br label %630

630:                                              ; preds = %629, %573
  %631 = phi i32 [ 0, %629 ], [ %574, %573 ]
  %632 = phi i32 [ 1, %629 ], [ 0, %573 ]
  %633 = load i32, ptr %197, align 8, !tbaa !53
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %741, label %635

635:                                              ; preds = %630
  %636 = load ptr, ptr %198, align 8, !tbaa !71
  %637 = load i32, ptr %199, align 8, !tbaa !133
  %638 = zext i32 %633 to i64
  br label %639

639:                                              ; preds = %635, %738
  %640 = phi i64 [ 0, %635 ], [ %739, %738 ]
  %641 = getelementptr inbounds ptr, ptr %636, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !75
  %643 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 15
  %644 = load i32, ptr %643, align 8, !tbaa !76
  %645 = icmp eq i32 %644, %637
  br i1 %645, label %646, label %738

646:                                              ; preds = %639
  %647 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 1
  %648 = load i32, ptr %647, align 4, !tbaa !182
  %649 = and i32 %648, 1
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %693, label %651

651:                                              ; preds = %646
  %652 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 13
  %653 = load ptr, ptr %652, align 8, !tbaa !96
  %654 = getelementptr inbounds %struct.storable_picture, ptr %653, i64 0, i32 10
  %655 = load i8, ptr %654, align 8, !tbaa !158
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %657, label %693

657:                                              ; preds = %651
  %658 = getelementptr inbounds %struct.storable_picture, ptr %653, i64 0, i32 7
  %659 = load i32, ptr %658, align 4, !tbaa !177
  %660 = icmp eq i32 %659, %461
  br i1 %660, label %661, label %693

661:                                              ; preds = %657
  %662 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 2
  %663 = load i32, ptr %662, align 8, !tbaa !184
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %671, label %665

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 8
  %667 = load i32, ptr %666, align 8, !tbaa !203
  %668 = icmp eq i32 %667, %449
  br i1 %668, label %671, label %669

669:                                              ; preds = %665
  %670 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  br label %671

671:                                              ; preds = %669, %665, %661
  %672 = load ptr, ptr %200, align 8, !tbaa !71
  %673 = getelementptr inbounds ptr, ptr %672, i64 %640
  %674 = load ptr, ptr %673, align 8, !tbaa !75
  %675 = getelementptr inbounds %struct.frame_store, ptr %674, i64 0, i32 13
  %676 = load ptr, ptr %675, align 8, !tbaa !96
  %677 = getelementptr inbounds %struct.storable_picture, ptr %676, i64 0, i32 9
  store i32 %449, ptr %677, align 4, !tbaa !179
  %678 = getelementptr inbounds %struct.frame_store, ptr %674, i64 0, i32 8
  store i32 %449, ptr %678, align 8, !tbaa !203
  %679 = shl nsw i32 %449, 1
  %680 = or disjoint i32 %631, %679
  %681 = getelementptr inbounds %struct.storable_picture, ptr %676, i64 0, i32 8
  store i32 %680, ptr %681, align 8, !tbaa !180
  %682 = getelementptr inbounds %struct.storable_picture, ptr %676, i64 0, i32 10
  store i8 1, ptr %682, align 8, !tbaa !158
  %683 = getelementptr inbounds %struct.frame_store, ptr %674, i64 0, i32 2
  %684 = load i32, ptr %683, align 8, !tbaa !184
  %685 = or i32 %684, 1
  store i32 %685, ptr %683, align 8, !tbaa !184
  %686 = icmp eq i32 %685, 3
  br i1 %686, label %687, label %743

687:                                              ; preds = %671
  %688 = getelementptr inbounds %struct.frame_store, ptr %674, i64 0, i32 12
  %689 = load ptr, ptr %688, align 8, !tbaa !95
  %690 = getelementptr inbounds %struct.storable_picture, ptr %689, i64 0, i32 10
  store i8 1, ptr %690, align 8, !tbaa !158
  %691 = getelementptr inbounds %struct.storable_picture, ptr %689, i64 0, i32 8
  store i32 %449, ptr %691, align 8, !tbaa !180
  %692 = getelementptr inbounds %struct.storable_picture, ptr %689, i64 0, i32 9
  store i32 %449, ptr %692, align 4, !tbaa !179
  br label %743

693:                                              ; preds = %657, %651, %646
  %694 = and i32 %648, 2
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %738, label %696

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 14
  %698 = load ptr, ptr %697, align 8, !tbaa !97
  %699 = getelementptr inbounds %struct.storable_picture, ptr %698, i64 0, i32 10
  %700 = load i8, ptr %699, align 8, !tbaa !158
  %701 = icmp eq i8 %700, 0
  br i1 %701, label %702, label %738

702:                                              ; preds = %696
  %703 = getelementptr inbounds %struct.storable_picture, ptr %698, i64 0, i32 7
  %704 = load i32, ptr %703, align 4, !tbaa !177
  %705 = icmp eq i32 %704, %461
  br i1 %705, label %706, label %738

706:                                              ; preds = %702
  %707 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 2
  %708 = load i32, ptr %707, align 8, !tbaa !184
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %716, label %710

710:                                              ; preds = %706
  %711 = getelementptr inbounds %struct.frame_store, ptr %642, i64 0, i32 8
  %712 = load i32, ptr %711, align 8, !tbaa !203
  %713 = icmp eq i32 %712, %449
  br i1 %713, label %716, label %714

714:                                              ; preds = %710
  %715 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  br label %716

716:                                              ; preds = %714, %710, %706
  %717 = load ptr, ptr %201, align 8, !tbaa !71
  %718 = getelementptr inbounds ptr, ptr %717, i64 %640
  %719 = load ptr, ptr %718, align 8, !tbaa !75
  %720 = getelementptr inbounds %struct.frame_store, ptr %719, i64 0, i32 14
  %721 = load ptr, ptr %720, align 8, !tbaa !97
  %722 = getelementptr inbounds %struct.storable_picture, ptr %721, i64 0, i32 9
  store i32 %449, ptr %722, align 4, !tbaa !179
  %723 = getelementptr inbounds %struct.frame_store, ptr %719, i64 0, i32 8
  store i32 %449, ptr %723, align 8, !tbaa !203
  %724 = shl nsw i32 %449, 1
  %725 = or disjoint i32 %632, %724
  %726 = getelementptr inbounds %struct.storable_picture, ptr %721, i64 0, i32 8
  store i32 %725, ptr %726, align 8, !tbaa !180
  %727 = getelementptr inbounds %struct.storable_picture, ptr %721, i64 0, i32 10
  store i8 1, ptr %727, align 8, !tbaa !158
  %728 = getelementptr inbounds %struct.frame_store, ptr %719, i64 0, i32 2
  %729 = load i32, ptr %728, align 8, !tbaa !184
  %730 = or i32 %729, 2
  store i32 %730, ptr %728, align 8, !tbaa !184
  %731 = icmp eq i32 %730, 3
  br i1 %731, label %732, label %743

732:                                              ; preds = %716
  %733 = getelementptr inbounds %struct.frame_store, ptr %719, i64 0, i32 12
  %734 = load ptr, ptr %733, align 8, !tbaa !95
  %735 = getelementptr inbounds %struct.storable_picture, ptr %734, i64 0, i32 10
  store i8 1, ptr %735, align 8, !tbaa !158
  %736 = getelementptr inbounds %struct.storable_picture, ptr %734, i64 0, i32 8
  store i32 %449, ptr %736, align 8, !tbaa !180
  %737 = getelementptr inbounds %struct.storable_picture, ptr %734, i64 0, i32 9
  store i32 %449, ptr %737, align 4, !tbaa !179
  br label %743

738:                                              ; preds = %702, %696, %693, %639
  %739 = add nuw nsw i64 %640, 1
  %740 = icmp eq i64 %739, %638
  br i1 %740, label %741, label %639, !llvm.loop !278

741:                                              ; preds = %738, %630
  %742 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  br label %743

743:                                              ; preds = %741, %732, %716, %687, %671, %627, %622
  %744 = load i32, ptr %202, align 8, !tbaa !133
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %744)
  %745 = load i32, ptr %202, align 8, !tbaa !133
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %745)
  br label %853

746:                                              ; preds = %213
  %747 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 4
  %748 = load i32, ptr %747, align 8, !tbaa !279
  %749 = load i32, ptr %184, align 8, !tbaa !133
  tail call void @mm_update_max_long_term_frame_idx(ptr noundef nonnull %0, i32 noundef %748, i32 noundef %749)
  %750 = load i32, ptr %184, align 8, !tbaa !133
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %750)
  br label %853

751:                                              ; preds = %213
  %752 = load i32, ptr %181, align 8, !tbaa !133
  %753 = load i32, ptr %182, align 8, !tbaa !53
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %769, label %755

755:                                              ; preds = %751, %764
  %756 = phi i64 [ %765, %764 ], [ 0, %751 ]
  %757 = load ptr, ptr %183, align 8, !tbaa !71
  %758 = getelementptr inbounds ptr, ptr %757, i64 %756
  %759 = load ptr, ptr %758, align 8, !tbaa !75
  %760 = getelementptr inbounds %struct.frame_store, ptr %759, i64 0, i32 15
  %761 = load i32, ptr %760, align 8, !tbaa !76
  %762 = icmp eq i32 %761, %752
  br i1 %762, label %763, label %764

763:                                              ; preds = %755
  tail call fastcc void @unmark_for_reference(ptr noundef %759)
  br label %764

764:                                              ; preds = %763, %755
  %765 = add nuw nsw i64 %756, 1
  %766 = load i32, ptr %182, align 8, !tbaa !53
  %767 = zext i32 %766 to i64
  %768 = icmp ult i64 %765, %767
  br i1 %768, label %755, label %769, !llvm.loop !280

769:                                              ; preds = %764, %751
  tail call void @update_ref_list(ptr noundef %0, i32 noundef %752)
  %770 = load i32, ptr %181, align 8, !tbaa !133
  tail call void @mm_update_max_long_term_frame_idx(ptr noundef %0, i32 noundef 0, i32 noundef %770)
  store i32 1, ptr %4, align 4, !tbaa !92
  br label %853

771:                                              ; preds = %213
  %772 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 3
  %773 = load i32, ptr %772, align 4, !tbaa !274
  %774 = load i32, ptr %1, align 8, !tbaa !134
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %841

776:                                              ; preds = %771
  %777 = load i32, ptr %173, align 8, !tbaa !133
  %778 = load i32, ptr %174, align 4, !tbaa !50
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %844, label %780

780:                                              ; preds = %776
  %781 = load ptr, ptr %175, align 8, !tbaa !72
  %782 = zext i32 %778 to i64
  br label %783

783:                                              ; preds = %780, %838
  %784 = phi i64 [ 0, %780 ], [ %839, %838 ]
  %785 = getelementptr inbounds ptr, ptr %781, i64 %784
  %786 = load ptr, ptr %785, align 8, !tbaa !75
  %787 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 8
  %788 = load i32, ptr %787, align 8, !tbaa !203
  %789 = icmp eq i32 %788, %773
  br i1 %789, label %790, label %838

790:                                              ; preds = %783
  %791 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 15
  %792 = load i32, ptr %791, align 8, !tbaa !76
  %793 = icmp eq i32 %792, %777
  br i1 %793, label %794, label %838

794:                                              ; preds = %790
  %795 = load i32, ptr %786, align 8, !tbaa !159
  %796 = and i32 %795, 1
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %805, label %798

798:                                              ; preds = %794
  %799 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 13
  %800 = load ptr, ptr %799, align 8, !tbaa !96
  %801 = icmp eq ptr %800, null
  br i1 %801, label %805, label %802

802:                                              ; preds = %798
  %803 = getelementptr inbounds %struct.storable_picture, ptr %800, i64 0, i32 11
  store i32 0, ptr %803, align 4, !tbaa !129
  %804 = getelementptr inbounds %struct.storable_picture, ptr %800, i64 0, i32 10
  store i8 0, ptr %804, align 8, !tbaa !158
  br label %805

805:                                              ; preds = %802, %798, %794
  %806 = and i32 %795, 2
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %815, label %808

808:                                              ; preds = %805
  %809 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 14
  %810 = load ptr, ptr %809, align 8, !tbaa !97
  %811 = icmp eq ptr %810, null
  br i1 %811, label %815, label %812

812:                                              ; preds = %808
  %813 = getelementptr inbounds %struct.storable_picture, ptr %810, i64 0, i32 11
  store i32 0, ptr %813, align 4, !tbaa !129
  %814 = getelementptr inbounds %struct.storable_picture, ptr %810, i64 0, i32 10
  store i8 0, ptr %814, align 8, !tbaa !158
  br label %815

815:                                              ; preds = %812, %808, %805
  %816 = icmp eq i32 %795, 3
  br i1 %816, label %817, label %835

817:                                              ; preds = %815
  %818 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 13
  %819 = load ptr, ptr %818, align 8, !tbaa !96
  %820 = icmp eq ptr %819, null
  br i1 %820, label %830, label %821

821:                                              ; preds = %817
  %822 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 14
  %823 = load ptr, ptr %822, align 8, !tbaa !97
  %824 = icmp eq ptr %823, null
  br i1 %824, label %830, label %825

825:                                              ; preds = %821
  %826 = getelementptr inbounds %struct.storable_picture, ptr %819, i64 0, i32 11
  store i32 0, ptr %826, align 4, !tbaa !129
  %827 = getelementptr inbounds %struct.storable_picture, ptr %819, i64 0, i32 10
  store i8 0, ptr %827, align 8, !tbaa !158
  %828 = getelementptr inbounds %struct.storable_picture, ptr %823, i64 0, i32 11
  store i32 0, ptr %828, align 4, !tbaa !129
  %829 = getelementptr inbounds %struct.storable_picture, ptr %823, i64 0, i32 10
  store i8 0, ptr %829, align 8, !tbaa !158
  br label %830

830:                                              ; preds = %825, %821, %817
  %831 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 12
  %832 = load ptr, ptr %831, align 8, !tbaa !95
  %833 = getelementptr inbounds %struct.storable_picture, ptr %832, i64 0, i32 11
  store i32 0, ptr %833, align 4, !tbaa !129
  %834 = getelementptr inbounds %struct.storable_picture, ptr %832, i64 0, i32 10
  store i8 0, ptr %834, align 8, !tbaa !158
  br label %835

835:                                              ; preds = %815, %830
  %836 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 1
  store i32 0, ptr %836, align 4, !tbaa !182
  %837 = getelementptr inbounds %struct.frame_store, ptr %786, i64 0, i32 2
  store i32 0, ptr %837, align 8, !tbaa !184
  br label %838

838:                                              ; preds = %835, %790, %783
  %839 = add nuw nsw i64 %784, 1
  %840 = icmp eq i64 %839, %782
  br i1 %840, label %844, label %783, !llvm.loop !275

841:                                              ; preds = %771
  %842 = load i32, ptr %171, align 4, !tbaa !177
  %843 = load i32, ptr %172, align 8, !tbaa !133
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr noundef %0, i32 noundef %774, i32 noundef %773, i32 noundef 1, i32 noundef %842, i32 noundef 0, i32 noundef %843)
  br label %844

844:                                              ; preds = %838, %776, %841
  store i8 1, ptr %176, align 8, !tbaa !158
  store i32 %773, ptr %177, align 4, !tbaa !179
  %845 = load i32, ptr %178, align 4, !tbaa !50
  %846 = load i32, ptr %179, align 8, !tbaa !53
  %847 = add i32 %846, %845
  %848 = load i32, ptr %180, align 4, !tbaa !54
  %849 = tail call i32 @llvm.smax.i32(i32 %848, i32 1)
  %850 = icmp sgt i32 %847, %849
  br i1 %850, label %851, label %853

851:                                              ; preds = %844
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #20
  br label %853

852:                                              ; preds = %213
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef 500) #20
  br label %853

853:                                              ; preds = %852, %851, %844, %769, %746, %743, %443, %315, %220, %216
  %854 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %214, i64 0, i32 5
  %855 = load ptr, ptr %854, align 8, !tbaa !269
  store ptr %855, ptr %167, align 8, !tbaa !143
  tail call void @free(ptr noundef %214) #20
  %856 = load ptr, ptr %167, align 8, !tbaa !143
  %857 = icmp eq ptr %856, null
  br i1 %857, label %858, label %213, !llvm.loop !281

858:                                              ; preds = %853, %166
  %859 = load i32, ptr %4, align 4, !tbaa !92
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %884, label %861

861:                                              ; preds = %858
  %862 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  store i32 0, ptr %862, align 4, !tbaa !128
  %863 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  store i32 0, ptr %863, align 4, !tbaa !177
  %864 = load i32, ptr %1, align 8, !tbaa !134
  switch i32 %864, label %881 [
    i32 1, label %865
    i32 2, label %868
    i32 0, label %871
  ]

865:                                              ; preds = %861
  %866 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 2
  store i32 0, ptr %866, align 8, !tbaa !148
  %867 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  store i32 0, ptr %867, align 4, !tbaa !146
  br label %881

868:                                              ; preds = %861
  %869 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 3
  store i32 0, ptr %869, align 4, !tbaa !147
  %870 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  store i32 0, ptr %870, align 4, !tbaa !146
  br label %881

871:                                              ; preds = %861
  %872 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %873 = load i32, ptr %872, align 4, !tbaa !146
  %874 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 2
  %875 = load i32, ptr %874, align 8, !tbaa !148
  %876 = sub nsw i32 %875, %873
  store i32 %876, ptr %874, align 8, !tbaa !148
  %877 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 3
  %878 = load i32, ptr %877, align 4, !tbaa !147
  %879 = sub nsw i32 %878, %873
  store i32 %879, ptr %877, align 4, !tbaa !147
  %880 = tail call i32 @llvm.smin.i32(i32 %876, i32 %879)
  store i32 %880, ptr %872, align 4, !tbaa !146
  br label %881

881:                                              ; preds = %871, %868, %865, %861
  %882 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %883 = load i32, ptr %882, align 8, !tbaa !133
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef %883)
  br label %884

884:                                              ; preds = %881, %858, %158, %162, %156
  %885 = load i32, ptr %1, align 8, !tbaa !134
  %886 = add i32 %885, -1
  %887 = icmp ult i32 %886, 2
  br i1 %887, label %888, label %977

888:                                              ; preds = %884
  %889 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  %890 = load ptr, ptr %889, align 8, !tbaa !69
  %891 = icmp eq ptr %890, null
  br i1 %891, label %898, label %892

892:                                              ; preds = %888
  %893 = getelementptr inbounds %struct.frame_store, ptr %890, i64 0, i32 15
  %894 = load i32, ptr %893, align 8, !tbaa !76
  %895 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %896 = load i32, ptr %895, align 8, !tbaa !133
  %897 = icmp eq i32 %894, %896
  br i1 %897, label %937, label %898

898:                                              ; preds = %892, %888
  %899 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %900 = load i32, ptr %899, align 4, !tbaa !68
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %937

902:                                              ; preds = %898
  %903 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %904 = load ptr, ptr %903, align 8, !tbaa !70
  %905 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %906 = load i32, ptr %905, align 8, !tbaa !133
  %907 = icmp eq i32 %885, 2
  %908 = zext i32 %900 to i64
  %909 = zext i32 %900 to i64
  br label %910

910:                                              ; preds = %902, %926
  %911 = phi i64 [ 0, %902 ], [ %927, %926 ]
  %912 = phi i1 [ %901, %902 ], [ %928, %926 ]
  %913 = getelementptr inbounds ptr, ptr %904, i64 %911
  %914 = load ptr, ptr %913, align 8, !tbaa !75
  %915 = getelementptr inbounds %struct.frame_store, ptr %914, i64 0, i32 15
  %916 = load i32, ptr %915, align 8, !tbaa !76
  %917 = icmp eq i32 %916, %906
  br i1 %917, label %918, label %926

918:                                              ; preds = %910
  switch i32 %885, label %926 [
    i32 1, label %919
    i32 2, label %923
  ]

919:                                              ; preds = %918
  %920 = load i32, ptr %914, align 8, !tbaa !159
  %921 = icmp eq i32 %920, 2
  br i1 %921, label %930, label %922

922:                                              ; preds = %919
  br i1 %907, label %923, label %926

923:                                              ; preds = %918, %922
  %924 = load i32, ptr %914, align 8, !tbaa !159
  %925 = icmp eq i32 %924, 1
  br i1 %925, label %930, label %926

926:                                              ; preds = %918, %910, %922, %923
  %927 = add nuw nsw i64 %911, 1
  %928 = icmp ult i64 %927, %908
  %929 = icmp eq i64 %927, %909
  br i1 %929, label %937, label %910, !llvm.loop !282

930:                                              ; preds = %919, %923
  br i1 %912, label %931, label %937

931:                                              ; preds = %930
  %932 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %933 = load ptr, ptr %932, align 8, !tbaa !70
  %934 = and i64 %911, 4294967295
  %935 = getelementptr inbounds ptr, ptr %933, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !75
  store ptr %936, ptr %889, align 8, !tbaa !69
  br label %937

937:                                              ; preds = %926, %898, %930, %931, %892
  %938 = load ptr, ptr %889, align 8, !tbaa !69
  %939 = icmp eq ptr %938, null
  br i1 %939, label %977, label %940

940:                                              ; preds = %937
  %941 = getelementptr inbounds %struct.frame_store, ptr %938, i64 0, i32 15
  %942 = load i32, ptr %941, align 8, !tbaa !76
  %943 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %944 = load i32, ptr %943, align 8, !tbaa !133
  %945 = icmp eq i32 %942, %944
  br i1 %945, label %946, label %977

946:                                              ; preds = %940
  %947 = getelementptr inbounds %struct.frame_store, ptr %938, i64 0, i32 5
  %948 = load i32, ptr %947, align 4, !tbaa !174
  %949 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  %950 = load i32, ptr %949, align 4, !tbaa !177
  %951 = icmp eq i32 %948, %950
  br i1 %951, label %952, label %977

952:                                              ; preds = %946
  switch i32 %885, label %977 [
    i32 1, label %953
    i32 2, label %958
  ]

953:                                              ; preds = %952
  %954 = load i32, ptr %938, align 8, !tbaa !159
  %955 = icmp eq i32 %954, 2
  br i1 %955, label %961, label %956

956:                                              ; preds = %953
  %957 = icmp eq i32 %885, 2
  br i1 %957, label %958, label %977

958:                                              ; preds = %952, %956
  %959 = load i32, ptr %938, align 8, !tbaa !159
  %960 = icmp eq i32 %959, 1
  br i1 %960, label %961, label %977

961:                                              ; preds = %958, %953
  %962 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %963 = load i32, ptr %962, align 4, !tbaa !129
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %970, label %965

965:                                              ; preds = %961
  %966 = getelementptr inbounds %struct.frame_store, ptr %938, i64 0, i32 3
  %967 = load i32, ptr %966, align 4, !tbaa !283
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %974

969:                                              ; preds = %965
  br i1 %964, label %970, label %977

970:                                              ; preds = %961, %969
  %971 = getelementptr inbounds %struct.frame_store, ptr %938, i64 0, i32 3
  %972 = load i32, ptr %971, align 4, !tbaa !283
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %974, label %977

974:                                              ; preds = %970, %965
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %3, ptr noundef nonnull %938, ptr noundef nonnull %1)
  %975 = load i32, ptr %943, align 8, !tbaa !133
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %975)
  %976 = load i32, ptr %943, align 8, !tbaa !133
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %976)
  store ptr null, ptr %889, align 8, !tbaa !69
  br label %1305

977:                                              ; preds = %952, %884, %937, %940, %956, %958, %970, %969, %946
  %978 = load i32, ptr %9, align 4, !tbaa !259
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %1058

980:                                              ; preds = %977
  %981 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %982 = load i32, ptr %981, align 4, !tbaa !129
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1058, label %984

984:                                              ; preds = %980
  %985 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  %986 = load i32, ptr %985, align 8, !tbaa !266
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %1058

988:                                              ; preds = %984
  %989 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %990 = load i32, ptr %989, align 8, !tbaa !53
  %991 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 13
  %992 = load i32, ptr %991, align 4, !tbaa !54
  %993 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %994 = load i32, ptr %993, align 4, !tbaa !50
  %995 = sub i32 %992, %994
  %996 = icmp eq i32 %990, %995
  br i1 %996, label %997, label %1056

997:                                              ; preds = %988
  %998 = load ptr, ptr %0, align 8, !tbaa !61
  %999 = getelementptr inbounds %struct.video_par, ptr %998, i64 0, i32 71
  %1000 = load i32, ptr %999, align 4, !tbaa !63
  switch i32 %1000, label %1001 [
    i32 118, label %1009
    i32 128, label %1009
  ]

1001:                                             ; preds = %997
  %1002 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %1003 = load i32, ptr %1002, align 4, !tbaa !68
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1056, label %1005

1005:                                             ; preds = %1001
  %1006 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %1007 = load ptr, ptr %1006, align 8, !tbaa !70
  %1008 = zext i32 %1003 to i64
  br label %1038

1009:                                             ; preds = %997, %997
  %1010 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %1011 = load i32, ptr %1010, align 4, !tbaa !68
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1056, label %1013

1013:                                             ; preds = %1009
  %1014 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %1015 = load ptr, ptr %1014, align 8, !tbaa !70
  %1016 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %1017 = zext i32 %1011 to i64
  br label %1018

1018:                                             ; preds = %1013, %1035
  %1019 = phi i64 [ 0, %1013 ], [ %1036, %1035 ]
  %1020 = getelementptr inbounds ptr, ptr %1015, i64 %1019
  %1021 = load ptr, ptr %1020, align 8, !tbaa !75
  %1022 = getelementptr inbounds %struct.frame_store, ptr %1021, i64 0, i32 1
  %1023 = load i32, ptr %1022, align 4, !tbaa !182
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1035, label %1025

1025:                                             ; preds = %1018
  %1026 = getelementptr inbounds %struct.frame_store, ptr %1021, i64 0, i32 2
  %1027 = load i32, ptr %1026, align 8, !tbaa !184
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1035

1029:                                             ; preds = %1025
  %1030 = getelementptr inbounds %struct.frame_store, ptr %1021, i64 0, i32 15
  %1031 = load i32, ptr %1030, align 8, !tbaa !76
  %1032 = load i32, ptr %1016, align 8, !tbaa !133
  %1033 = icmp eq i32 %1031, %1032
  br i1 %1033, label %1034, label %1035

1034:                                             ; preds = %1029
  tail call fastcc void @unmark_for_reference(ptr noundef %1021)
  br label %1053

1035:                                             ; preds = %1029, %1025, %1018
  %1036 = add nuw nsw i64 %1019, 1
  %1037 = icmp eq i64 %1036, %1017
  br i1 %1037, label %1056, label %1018, !llvm.loop !284

1038:                                             ; preds = %1005, %1050
  %1039 = phi i64 [ 0, %1005 ], [ %1051, %1050 ]
  %1040 = getelementptr inbounds ptr, ptr %1007, i64 %1039
  %1041 = load ptr, ptr %1040, align 8, !tbaa !75
  %1042 = getelementptr inbounds %struct.frame_store, ptr %1041, i64 0, i32 1
  %1043 = load i32, ptr %1042, align 4, !tbaa !182
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1050, label %1045

1045:                                             ; preds = %1038
  %1046 = getelementptr inbounds %struct.frame_store, ptr %1041, i64 0, i32 2
  %1047 = load i32, ptr %1046, align 8, !tbaa !184
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1045
  tail call fastcc void @unmark_for_reference(ptr noundef %1041)
  br label %1053

1050:                                             ; preds = %1045, %1038
  %1051 = add nuw nsw i64 %1039, 1
  %1052 = icmp eq i64 %1051, %1008
  br i1 %1052, label %1056, label %1038, !llvm.loop !285

1053:                                             ; preds = %1049, %1034
  %1054 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %1055 = load i32, ptr %1054, align 8, !tbaa !133
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %1055)
  br label %1056

1056:                                             ; preds = %1035, %1050, %1053, %1009, %1001, %988
  %1057 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  store i8 0, ptr %1057, align 8, !tbaa !158
  br label %1058

1058:                                             ; preds = %1056, %984, %980, %977
  %1059 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 95
  %1060 = load i32, ptr %1059, align 8, !tbaa !93
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1082, label %1062

1062:                                             ; preds = %1058
  %1063 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %1064 = load i32, ptr %1063, align 8, !tbaa !65
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1082, label %1066

1066:                                             ; preds = %1062
  %1067 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %1068 = load ptr, ptr %1067, align 8, !tbaa !70
  %1069 = zext i32 %1064 to i64
  br label %1070

1070:                                             ; preds = %1066, %1079
  %1071 = phi i64 [ 0, %1066 ], [ %1080, %1079 ]
  %1072 = getelementptr inbounds ptr, ptr %1068, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !75
  %1074 = getelementptr inbounds %struct.frame_store, ptr %1073, i64 0, i32 1
  %1075 = load i32, ptr %1074, align 4, !tbaa !182
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1079, label %1077

1077:                                             ; preds = %1070
  %1078 = getelementptr inbounds %struct.frame_store, ptr %1073, i64 0, i32 11
  store i32 1, ptr %1078, align 4, !tbaa !286
  br label %1079

1079:                                             ; preds = %1070, %1077
  %1080 = add nuw nsw i64 %1071, 1
  %1081 = icmp eq i64 %1080, %1069
  br i1 %1081, label %1082, label %1070, !llvm.loop !287

1082:                                             ; preds = %1079, %1062, %1058
  %1083 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %1084 = load i32, ptr %1083, align 4, !tbaa !68
  %1085 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %1086 = load i32, ptr %1085, align 8, !tbaa !65
  %1087 = icmp eq i32 %1084, %1086
  br i1 %1087, label %1088, label %1156

1088:                                             ; preds = %1082
  br i1 %1061, label %1090, label %1089

1089:                                             ; preds = %1088
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %0, i32 noundef 2) #20
  br label %1090

1090:                                             ; preds = %1089, %1088
  %1091 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %1092 = load i32, ptr %1091, align 8, !tbaa !133
  %1093 = load i32, ptr %1083, align 4, !tbaa !68
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1152, label %1095

1095:                                             ; preds = %1090
  %1096 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %1097 = load ptr, ptr %1096, align 8, !tbaa !70
  %1098 = icmp eq i32 %1092, -1
  %1099 = zext i32 %1093 to i64
  br label %1100

1100:                                             ; preds = %1149, %1095
  %1101 = phi i64 [ 0, %1095 ], [ %1150, %1149 ]
  %1102 = getelementptr inbounds ptr, ptr %1097, i64 %1101
  %1103 = load ptr, ptr %1102, align 8, !tbaa !75
  %1104 = getelementptr inbounds %struct.frame_store, ptr %1103, i64 0, i32 9
  %1105 = load i32, ptr %1104, align 4, !tbaa !73
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1149, label %1107

1107:                                             ; preds = %1100
  %1108 = getelementptr inbounds %struct.frame_store, ptr %1103, i64 0, i32 1
  %1109 = load i32, ptr %1108, align 4, !tbaa !182
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1149

1111:                                             ; preds = %1107
  %1112 = load i32, ptr %1103, align 8, !tbaa !159
  %1113 = icmp eq i32 %1112, 3
  br i1 %1113, label %1114, label %1120

1114:                                             ; preds = %1111
  %1115 = getelementptr inbounds %struct.frame_store, ptr %1103, i64 0, i32 12
  %1116 = load ptr, ptr %1115, align 8, !tbaa !95
  %1117 = getelementptr inbounds %struct.storable_picture, ptr %1116, i64 0, i32 11
  %1118 = load i32, ptr %1117, align 4, !tbaa !129
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1120, label %1149

1120:                                             ; preds = %1114, %1111
  %1121 = and i32 %1112, 1
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1131, label %1123

1123:                                             ; preds = %1120
  %1124 = getelementptr inbounds %struct.frame_store, ptr %1103, i64 0, i32 13
  %1125 = load ptr, ptr %1124, align 8, !tbaa !96
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1131, label %1127

1127:                                             ; preds = %1123
  %1128 = getelementptr inbounds %struct.storable_picture, ptr %1125, i64 0, i32 11
  %1129 = load i32, ptr %1128, align 4, !tbaa !129
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1131, label %1149

1131:                                             ; preds = %1127, %1123, %1120
  %1132 = and i32 %1112, 2
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1142, label %1134

1134:                                             ; preds = %1131
  %1135 = getelementptr inbounds %struct.frame_store, ptr %1103, i64 0, i32 14
  %1136 = load ptr, ptr %1135, align 8, !tbaa !97
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1142, label %1138

1138:                                             ; preds = %1134
  %1139 = getelementptr inbounds %struct.storable_picture, ptr %1136, i64 0, i32 11
  %1140 = load i32, ptr %1139, align 4, !tbaa !129
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1142, label %1149

1142:                                             ; preds = %1138, %1134, %1131
  %1143 = getelementptr inbounds %struct.frame_store, ptr %1103, i64 0, i32 15
  %1144 = load i32, ptr %1143, align 8, !tbaa !76
  %1145 = icmp eq i32 %1144, %1092
  %1146 = or i1 %1098, %1145
  br i1 %1146, label %1147, label %1149

1147:                                             ; preds = %1142
  %1148 = trunc i64 %1101 to i32
  tail call fastcc void @remove_frame_from_dpb(ptr noundef %0, i32 noundef %1148)
  br label %1152

1149:                                             ; preds = %1138, %1127, %1114, %1107, %1142, %1100
  %1150 = add nuw nsw i64 %1101, 1
  %1151 = icmp eq i64 %1150, %1099
  br i1 %1151, label %1152, label %1100, !llvm.loop !288

1152:                                             ; preds = %1149, %1090, %1147
  %1153 = load i32, ptr %1059, align 8, !tbaa !93
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1156, label %1155

1155:                                             ; preds = %1152
  tail call void @sliding_window_poc_management(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  br label %1156

1156:                                             ; preds = %1152, %1155, %1082
  %1157 = load i32, ptr %1083, align 4, !tbaa !68
  %1158 = load i32, ptr %1085, align 8, !tbaa !65
  %1159 = icmp eq i32 %1157, %1158
  br i1 %1159, label %1160, label %1223

1160:                                             ; preds = %1156
  %1161 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %1162 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %1163 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %1164 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %1165 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %1166

1166:                                             ; preds = %1160, %1217
  %1167 = phi i32 [ %1157, %1160 ], [ %1220, %1217 ]
  %1168 = load i32, ptr %1161, align 4, !tbaa !129
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1170, label %1217

1170:                                             ; preds = %1166
  %1171 = load i32, ptr %1162, align 8, !tbaa !133
  %1172 = icmp eq i32 %1167, 0
  br i1 %1172, label %1173, label %1174

1173:                                             ; preds = %1170
  tail call void @error(ptr noundef nonnull @.str.37, i32 noundef 150) #20
  br label %1174

1174:                                             ; preds = %1173, %1170
  %1175 = load i32, ptr %1083, align 4, !tbaa !68
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1207, label %1177

1177:                                             ; preds = %1174
  %1178 = load ptr, ptr %1163, align 8, !tbaa !70
  %1179 = icmp eq i32 %1171, -1
  %1180 = zext i32 %1175 to i64
  br label %1181

1181:                                             ; preds = %1202, %1177
  %1182 = phi i32 [ 2147483647, %1177 ], [ %1203, %1202 ]
  %1183 = phi i32 [ -1, %1177 ], [ %1204, %1202 ]
  %1184 = phi i64 [ 0, %1177 ], [ %1205, %1202 ]
  %1185 = getelementptr inbounds ptr, ptr %1178, i64 %1184
  %1186 = load ptr, ptr %1185, align 8, !tbaa !75
  %1187 = getelementptr inbounds %struct.frame_store, ptr %1186, i64 0, i32 10
  %1188 = load i32, ptr %1187, align 8, !tbaa !213
  %1189 = icmp sgt i32 %1182, %1188
  br i1 %1189, label %1190, label %1202

1190:                                             ; preds = %1181
  %1191 = getelementptr inbounds %struct.frame_store, ptr %1186, i64 0, i32 9
  %1192 = load i32, ptr %1191, align 4, !tbaa !73
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1194, label %1202

1194:                                             ; preds = %1190
  %1195 = getelementptr inbounds %struct.frame_store, ptr %1186, i64 0, i32 15
  %1196 = load i32, ptr %1195, align 8, !tbaa !76
  %1197 = icmp eq i32 %1196, %1171
  %1198 = or i1 %1179, %1197
  %1199 = trunc i64 %1184 to i32
  %1200 = select i1 %1198, i32 %1188, i32 %1182
  %1201 = select i1 %1198, i32 %1199, i32 %1183
  br label %1202

1202:                                             ; preds = %1194, %1190, %1181
  %1203 = phi i32 [ %1182, %1190 ], [ %1182, %1181 ], [ %1200, %1194 ]
  %1204 = phi i32 [ %1183, %1190 ], [ %1183, %1181 ], [ %1201, %1194 ]
  %1205 = add nuw nsw i64 %1184, 1
  %1206 = icmp eq i64 %1205, %1180
  br i1 %1206, label %1207, label %1181, !llvm.loop !289

1207:                                             ; preds = %1202, %1174
  %1208 = phi i32 [ 2147483647, %1174 ], [ %1203, %1202 ]
  %1209 = phi i32 [ -1, %1174 ], [ %1204, %1202 ]
  %1210 = icmp eq i32 %1209, -1
  br i1 %1210, label %1214, label %1211

1211:                                             ; preds = %1207
  %1212 = load i32, ptr %1164, align 4, !tbaa !146
  %1213 = icmp slt i32 %1212, %1208
  br i1 %1213, label %1214, label %1217

1214:                                             ; preds = %1211, %1207
  %1215 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 121
  %1216 = load i32, ptr %1215, align 8, !tbaa !290
  tail call void @direct_output(ptr noundef %3, ptr noundef nonnull %1, i32 noundef %1216) #20
  br label %1305

1217:                                             ; preds = %1211, %1166
  %1218 = load i32, ptr %1165, align 8, !tbaa !133
  %1219 = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %1218), !range !291
  %1220 = load i32, ptr %1083, align 4, !tbaa !68
  %1221 = load i32, ptr %1085, align 8, !tbaa !65
  %1222 = icmp eq i32 %1220, %1221
  br i1 %1222, label %1166, label %1223, !llvm.loop !292

1223:                                             ; preds = %1217, %1156
  %1224 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %1225 = load i32, ptr %1224, align 4, !tbaa !129
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1259, label %1227

1227:                                             ; preds = %1223
  %1228 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %1229 = load i8, ptr %1228, align 8, !tbaa !158
  %1230 = icmp eq i8 %1229, 0
  br i1 %1230, label %1231, label %1259

1231:                                             ; preds = %1227
  %1232 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %1233 = load i32, ptr %1232, align 8, !tbaa !53
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1259, label %1235

1235:                                             ; preds = %1231
  %1236 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %1237 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %1238 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %1239

1239:                                             ; preds = %1235, %1254
  %1240 = phi i64 [ 0, %1235 ], [ %1255, %1254 ]
  %1241 = load ptr, ptr %1236, align 8, !tbaa !71
  %1242 = getelementptr inbounds ptr, ptr %1241, i64 %1240
  %1243 = load ptr, ptr %1242, align 8, !tbaa !75
  %1244 = getelementptr inbounds %struct.frame_store, ptr %1243, i64 0, i32 5
  %1245 = load i32, ptr %1244, align 4, !tbaa !174
  %1246 = load i32, ptr %1237, align 4, !tbaa !128
  %1247 = icmp eq i32 %1245, %1246
  br i1 %1247, label %1248, label %1254

1248:                                             ; preds = %1239
  %1249 = getelementptr inbounds %struct.frame_store, ptr %1243, i64 0, i32 15
  %1250 = load i32, ptr %1249, align 8, !tbaa !76
  %1251 = load i32, ptr %1238, align 8, !tbaa !133
  %1252 = icmp eq i32 %1250, %1251
  br i1 %1252, label %1253, label %1254

1253:                                             ; preds = %1248
  tail call void @error(ptr noundef nonnull @.str.20, i32 noundef 500) #20
  br label %1254

1254:                                             ; preds = %1239, %1248, %1253
  %1255 = add nuw nsw i64 %1240, 1
  %1256 = load i32, ptr %1232, align 8, !tbaa !53
  %1257 = zext i32 %1256 to i64
  %1258 = icmp ult i64 %1255, %1257
  br i1 %1258, label %1239, label %1259, !llvm.loop !293

1259:                                             ; preds = %1254, %1231, %1227, %1223
  %1260 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %1261 = load ptr, ptr %1260, align 8, !tbaa !70
  %1262 = load i32, ptr %1083, align 4, !tbaa !68
  %1263 = zext i32 %1262 to i64
  %1264 = getelementptr inbounds ptr, ptr %1261, i64 %1263
  %1265 = load ptr, ptr %1264, align 8, !tbaa !75
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %3, ptr noundef %1265, ptr noundef nonnull %1)
  %1266 = load i32, ptr %9, align 4, !tbaa !259
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1270, label %1268

1268:                                             ; preds = %1259
  %1269 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 96
  store i32 0, ptr %1269, align 4, !tbaa !294
  br label %1270

1270:                                             ; preds = %1268, %1259
  %1271 = load i32, ptr %1, align 8, !tbaa !134
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1279, label %1273

1273:                                             ; preds = %1270
  %1274 = load ptr, ptr %1260, align 8, !tbaa !70
  %1275 = load i32, ptr %1083, align 4, !tbaa !68
  %1276 = zext i32 %1275 to i64
  %1277 = getelementptr inbounds ptr, ptr %1274, i64 %1276
  %1278 = load ptr, ptr %1277, align 8, !tbaa !75
  br label %1279

1279:                                             ; preds = %1270, %1273
  %1280 = phi ptr [ %1278, %1273 ], [ null, %1270 ]
  %1281 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  store ptr %1280, ptr %1281, align 8, !tbaa !69
  %1282 = load i32, ptr %1083, align 4, !tbaa !68
  %1283 = add i32 %1282, 1
  store i32 %1283, ptr %1083, align 4, !tbaa !68
  %1284 = load i32, ptr %1059, align 8, !tbaa !93
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1291, label %1286

1286:                                             ; preds = %1279
  %1287 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %1288 = load i32, ptr %1287, align 4, !tbaa !146
  %1289 = zext i32 %1282 to i64
  %1290 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 135, i64 %1289
  store i32 %1288, ptr %1290, align 4, !tbaa !200
  br label %1291

1291:                                             ; preds = %1286, %1279
  %1292 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %1293 = load i32, ptr %1292, align 8, !tbaa !133
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %1293)
  %1294 = load i32, ptr %1292, align 8, !tbaa !133
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %1294)
  %1295 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %1296 = load i32, ptr %1295, align 4, !tbaa !50
  %1297 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %1298 = load i32, ptr %1297, align 8, !tbaa !53
  %1299 = add i32 %1298, %1296
  %1300 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 13
  %1301 = load i32, ptr %1300, align 4, !tbaa !54
  %1302 = tail call i32 @llvm.smax.i32(i32 %1301, i32 1)
  %1303 = icmp sgt i32 %1299, %1302
  br i1 %1303, label %1304, label %1305

1304:                                             ; preds = %1291
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #20
  br label %1305

1305:                                             ; preds = %1304, %1291, %1214, %974
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_picture_in_dpb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !295
  %5 = load i32, ptr %2, align 8, !tbaa !134
  switch i32 %5, label %216 [
    i32 0, label %6
    i32 1, label %34
    i32 2, label %125
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  store ptr %2, ptr %7, align 8, !tbaa !95
  store i32 3, ptr %1, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !129
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 1
  store i32 3, ptr %12, align 4, !tbaa !182
  %13 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 3
  store i32 3, ptr %13, align 4, !tbaa !283
  %14 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 10
  %15 = load i8, ptr %14, align 8, !tbaa !158
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 2
  store i32 3, ptr %18, align 8, !tbaa !184
  %19 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !179
  %21 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %20, ptr %21, align 8, !tbaa !203
  br label %22

22:                                               ; preds = %11, %17, %6
  %23 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 64
  %24 = load i32, ptr %23, align 8, !tbaa !133
  %25 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  store i32 %24, ptr %25, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 65
  %27 = load i32, ptr %26, align 4, !tbaa !296
  %28 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16
  %29 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16, i64 1
  store i32 %27, ptr %29, align 4, !tbaa !200
  store i32 %27, ptr %28, align 4, !tbaa !200
  %30 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 66
  %31 = load i32, ptr %30, align 8, !tbaa !297
  %32 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17
  %33 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17, i64 1
  store i32 %31, ptr %33, align 4, !tbaa !200
  store i32 %31, ptr %32, align 4, !tbaa !200
  tail call void @dpb_split_field(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %216

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  store ptr %2, ptr %35, align 8, !tbaa !96
  %36 = load i32, ptr %1, align 8, !tbaa !159
  %37 = or i32 %36, 1
  store i32 %37, ptr %1, align 8, !tbaa !159
  %38 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 64
  %39 = load i32, ptr %38, align 8, !tbaa !133
  %40 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  store i32 %39, ptr %40, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 65
  %42 = load i32, ptr %41, align 4, !tbaa !296
  %43 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16
  store i32 %42, ptr %43, align 4, !tbaa !200
  %44 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 66
  %45 = load i32, ptr %44, align 8, !tbaa !297
  %46 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17
  store i32 %45, ptr %46, align 4, !tbaa !200
  %47 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !129
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !182
  %53 = or i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !182
  %54 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !283
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !283
  %57 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 10
  %58 = load i8, ptr %57, align 8, !tbaa !158
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !184
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !184
  %64 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 9
  %65 = load i32, ptr %64, align 4, !tbaa !179
  %66 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %65, ptr %66, align 8, !tbaa !203
  br label %67

67:                                               ; preds = %50, %60, %34
  %68 = icmp eq i32 %37, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  tail call void @dpb_combine_field(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %216

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !146
  %73 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %72, ptr %73, align 8, !tbaa !213
  %74 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 75
  %75 = load ptr, ptr %74, align 8, !tbaa !75
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !260
  %80 = load ptr, ptr %79, align 8, !tbaa !75
  %81 = getelementptr inbounds %struct.slice, ptr %80, i64 0, i32 55
  %82 = load i8, ptr %81, align 8, !tbaa !161
  %83 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 74
  store i8 %82, ptr %83, align 8, !tbaa !161
  %84 = icmp sgt i8 %82, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %77, %85
  %86 = phi i64 [ %95, %85 ], [ 0, %77 ]
  %87 = load ptr, ptr %78, align 8, !tbaa !260
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.slice, ptr %88, i64 0, i32 56
  %90 = load ptr, ptr %89, align 8, !tbaa !75
  %91 = getelementptr inbounds ptr, ptr %90, i64 %86
  %92 = load ptr, ptr %91, align 8, !tbaa !75
  %93 = load ptr, ptr %74, align 8, !tbaa !75
  %94 = getelementptr inbounds ptr, ptr %93, i64 %86
  store ptr %92, ptr %94, align 8, !tbaa !75
  %95 = add nuw nsw i64 %86, 1
  %96 = load i8, ptr %83, align 8, !tbaa !161
  %97 = sext i8 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %85, label %99, !llvm.loop !298

99:                                               ; preds = %85, %77, %70
  %100 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 75, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !75
  %102 = icmp eq ptr %101, null
  br i1 %102, label %216, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !260
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = getelementptr inbounds %struct.slice, ptr %106, i64 0, i32 55, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !161
  %109 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 74, i64 1
  store i8 %108, ptr %109, align 1, !tbaa !161
  %110 = icmp sgt i8 %108, 0
  br i1 %110, label %111, label %216

111:                                              ; preds = %103, %111
  %112 = phi i64 [ %121, %111 ], [ 0, %103 ]
  %113 = load ptr, ptr %104, align 8, !tbaa !260
  %114 = load ptr, ptr %113, align 8, !tbaa !75
  %115 = getelementptr inbounds %struct.slice, ptr %114, i64 0, i32 56, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !75
  %117 = getelementptr inbounds ptr, ptr %116, i64 %112
  %118 = load ptr, ptr %117, align 8, !tbaa !75
  %119 = load ptr, ptr %100, align 8, !tbaa !75
  %120 = getelementptr inbounds ptr, ptr %119, i64 %112
  store ptr %118, ptr %120, align 8, !tbaa !75
  %121 = add nuw nsw i64 %112, 1
  %122 = load i8, ptr %109, align 1, !tbaa !161
  %123 = sext i8 %122 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %111, label %216, !llvm.loop !299

125:                                              ; preds = %3
  %126 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  store ptr %2, ptr %126, align 8, !tbaa !97
  %127 = load i32, ptr %1, align 8, !tbaa !159
  %128 = or i32 %127, 2
  store i32 %128, ptr %1, align 8, !tbaa !159
  %129 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 64
  %130 = load i32, ptr %129, align 8, !tbaa !133
  %131 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  store i32 %130, ptr %131, align 8, !tbaa !76
  %132 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 65
  %133 = load i32, ptr %132, align 4, !tbaa !296
  %134 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16, i64 1
  store i32 %133, ptr %134, align 4, !tbaa !200
  %135 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 66
  %136 = load i32, ptr %135, align 8, !tbaa !297
  %137 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17, i64 1
  store i32 %136, ptr %137, align 4, !tbaa !200
  %138 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %139 = load i32, ptr %138, align 4, !tbaa !129
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %125
  %142 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !182
  %144 = or i32 %143, 2
  store i32 %144, ptr %142, align 4, !tbaa !182
  %145 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !283
  %147 = or i32 %146, 2
  store i32 %147, ptr %145, align 4, !tbaa !283
  %148 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 10
  %149 = load i8, ptr %148, align 8, !tbaa !158
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !184
  %154 = or i32 %153, 2
  store i32 %154, ptr %152, align 8, !tbaa !184
  %155 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 9
  %156 = load i32, ptr %155, align 4, !tbaa !179
  %157 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %156, ptr %157, align 8, !tbaa !203
  br label %158

158:                                              ; preds = %141, %151, %125
  %159 = icmp eq i32 %128, 3
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  tail call void @dpb_combine_field(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %216

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !146
  %164 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %163, ptr %164, align 8, !tbaa !213
  %165 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 75
  %166 = load ptr, ptr %165, align 8, !tbaa !75
  %167 = icmp eq ptr %166, null
  br i1 %167, label %190, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %170 = load ptr, ptr %169, align 8, !tbaa !260
  %171 = load ptr, ptr %170, align 8, !tbaa !75
  %172 = getelementptr inbounds %struct.slice, ptr %171, i64 0, i32 55
  %173 = load i8, ptr %172, align 8, !tbaa !161
  %174 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 74
  store i8 %173, ptr %174, align 8, !tbaa !161
  %175 = icmp sgt i8 %173, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %168, %176
  %177 = phi i64 [ %186, %176 ], [ 0, %168 ]
  %178 = load ptr, ptr %169, align 8, !tbaa !260
  %179 = load ptr, ptr %178, align 8, !tbaa !75
  %180 = getelementptr inbounds %struct.slice, ptr %179, i64 0, i32 56
  %181 = load ptr, ptr %180, align 8, !tbaa !75
  %182 = getelementptr inbounds ptr, ptr %181, i64 %177
  %183 = load ptr, ptr %182, align 8, !tbaa !75
  %184 = load ptr, ptr %165, align 8, !tbaa !75
  %185 = getelementptr inbounds ptr, ptr %184, i64 %177
  store ptr %183, ptr %185, align 8, !tbaa !75
  %186 = add nuw nsw i64 %177, 1
  %187 = load i8, ptr %174, align 8, !tbaa !161
  %188 = sext i8 %187 to i64
  %189 = icmp slt i64 %186, %188
  br i1 %189, label %176, label %190, !llvm.loop !298

190:                                              ; preds = %176, %168, %161
  %191 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 75, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !75
  %193 = icmp eq ptr %192, null
  br i1 %193, label %216, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %196 = load ptr, ptr %195, align 8, !tbaa !260
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  %198 = getelementptr inbounds %struct.slice, ptr %197, i64 0, i32 55, i64 1
  %199 = load i8, ptr %198, align 1, !tbaa !161
  %200 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 74, i64 1
  store i8 %199, ptr %200, align 1, !tbaa !161
  %201 = icmp sgt i8 %199, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %194, %202
  %203 = phi i64 [ %212, %202 ], [ 0, %194 ]
  %204 = load ptr, ptr %195, align 8, !tbaa !260
  %205 = load ptr, ptr %204, align 8, !tbaa !75
  %206 = getelementptr inbounds %struct.slice, ptr %205, i64 0, i32 56, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !75
  %208 = getelementptr inbounds ptr, ptr %207, i64 %203
  %209 = load ptr, ptr %208, align 8, !tbaa !75
  %210 = load ptr, ptr %191, align 8, !tbaa !75
  %211 = getelementptr inbounds ptr, ptr %210, i64 %203
  store ptr %209, ptr %211, align 8, !tbaa !75
  %212 = add nuw nsw i64 %203, 1
  %213 = load i8, ptr %200, align 1, !tbaa !161
  %214 = sext i8 %213 to i64
  %215 = icmp slt i64 %212, %214
  br i1 %215, label %202, label %216, !llvm.loop !299

216:                                              ; preds = %202, %111, %194, %190, %103, %99, %160, %69, %3, %22
  %217 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 7
  %218 = load i32, ptr %217, align 4, !tbaa !177
  %219 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 5
  store i32 %218, ptr %219, align 4, !tbaa !174
  %220 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 6
  %221 = load i32, ptr %220, align 8, !tbaa !300
  %222 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 6
  store i32 %221, ptr %222, align 8, !tbaa !301
  %223 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 12
  %224 = load i32, ptr %223, align 8, !tbaa !131
  %225 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 9
  store i32 %224, ptr %225, align 4, !tbaa !73
  %226 = load i32, ptr %1, align 8, !tbaa !159
  %227 = icmp eq i32 %226, 3
  br i1 %227, label %228, label %239

228:                                              ; preds = %216
  tail call void @calculate_frame_no(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %229 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %230 = load i32, ptr %229, align 4, !tbaa !302
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %239, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !303
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %238 = load ptr, ptr %237, align 8, !tbaa !95
  tail call void @find_snr(ptr noundef nonnull %0, ptr noundef %238, ptr noundef nonnull %229) #20
  br label %239

239:                                              ; preds = %228, %232, %236, %216
  ret void
}

declare void @conceal_non_ref_pics(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sliding_window_poc_management(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @direct_output(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @output_one_frame_from_dpb(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.39, i32 noundef 150) #20
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, ptr %4, align 4, !tbaa !68
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.37, i32 noundef 150) #20
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, ptr %4, align 4, !tbaa !68
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq i32 %1, -1
  %19 = zext i32 %13 to i64
  br label %20

20:                                               ; preds = %41, %15
  %21 = phi i32 [ 2147483647, %15 ], [ %42, %41 ]
  %22 = phi i32 [ -1, %15 ], [ %43, %41 ]
  %23 = phi i64 [ 0, %15 ], [ %44, %41 ]
  %24 = getelementptr inbounds ptr, ptr %17, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.frame_store, ptr %25, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !213
  %28 = icmp sgt i32 %21, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.frame_store, ptr %25, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !73
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.frame_store, ptr %25, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !76
  %36 = icmp eq i32 %35, %1
  %37 = or i1 %18, %36
  %38 = trunc i64 %23 to i32
  %39 = select i1 %37, i32 %27, i32 %21
  %40 = select i1 %37, i32 %38, i32 %22
  br label %41

41:                                               ; preds = %33, %29, %20
  %42 = phi i32 [ %21, %29 ], [ %21, %20 ], [ %39, %33 ]
  %43 = phi i32 [ %22, %29 ], [ %22, %20 ], [ %40, %33 ]
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, %19
  br i1 %45, label %46, label %20, !llvm.loop !289

46:                                               ; preds = %41, %12
  %47 = phi i32 [ 2147483647, %12 ], [ %42, %41 ]
  %48 = phi i32 [ -1, %12 ], [ %43, %41 ]
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = icmp eq i32 %1, -1
  br i1 %51, label %52, label %132

52:                                               ; preds = %50
  tail call void @error(ptr noundef nonnull @.str.40, i32 noundef 150) #20
  br label %53

53:                                               ; preds = %52, %46
  %54 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 95
  %55 = load i32, ptr %54, align 8, !tbaa !93
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !90
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @write_lost_ref_after_idr(ptr noundef nonnull %0, i32 noundef %48) #20
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 121
  %64 = load i32, ptr %63, align 8, !tbaa !290
  tail call void @write_lost_non_ref_pic(ptr noundef nonnull %0, i32 noundef %47, i32 noundef %64) #20
  br label %65

65:                                               ; preds = %62, %53
  %66 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !70
  %68 = sext i32 %48 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 121
  %72 = load i32, ptr %71, align 8, !tbaa !290
  tail call void @write_stored_frame(ptr noundef %3, ptr noundef %70, i32 noundef %72) #20
  %73 = load i32, ptr %54, align 8, !tbaa !93
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !90
  %78 = icmp slt i32 %77, %47
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %66, align 8, !tbaa !70
  %81 = getelementptr inbounds ptr, ptr %80, i64 %68
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = getelementptr inbounds %struct.frame_store, ptr %82, i64 0, i32 15
  %84 = load i32, ptr %83, align 8, !tbaa !76
  %85 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  %86 = load i32, ptr %85, align 4, !tbaa !91
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  tail call void @error(ptr noundef nonnull @.str.41, i32 noundef 150) #20
  br label %89

89:                                               ; preds = %75, %79, %88, %65
  %90 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 %47, ptr %90, align 8, !tbaa !90
  %91 = load ptr, ptr %66, align 8, !tbaa !70
  %92 = getelementptr inbounds ptr, ptr %91, i64 %68
  %93 = load ptr, ptr %92, align 8, !tbaa !75
  %94 = getelementptr inbounds %struct.frame_store, ptr %93, i64 0, i32 15
  %95 = load i32, ptr %94, align 8, !tbaa !76
  %96 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  store i32 %95, ptr %96, align 4, !tbaa !91
  %97 = getelementptr inbounds %struct.frame_store, ptr %93, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !182
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %89
  %101 = load i32, ptr %93, align 8, !tbaa !159
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.frame_store, ptr %93, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !95
  %106 = getelementptr inbounds %struct.storable_picture, ptr %105, i64 0, i32 11
  %107 = load i32, ptr %106, align 4, !tbaa !129
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %103, %100
  %110 = and i32 %101, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.frame_store, ptr %93, i64 0, i32 13
  %114 = load ptr, ptr %113, align 8, !tbaa !96
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.storable_picture, ptr %114, i64 0, i32 11
  %118 = load i32, ptr %117, align 4, !tbaa !129
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %116, %112, %109
  %121 = and i32 %101, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.frame_store, ptr %93, i64 0, i32 14
  %125 = load ptr, ptr %124, align 8, !tbaa !97
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 11
  %129 = load i32, ptr %128, align 4, !tbaa !129
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %123, %120
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %48)
  br label %132

132:                                              ; preds = %127, %116, %103, %89, %131, %50
  %133 = phi i32 [ 0, %50 ], [ 1, %131 ], [ 1, %89 ], [ 1, %103 ], [ 1, %116 ], [ 1, %127 ]
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define dso_local void @flush_dpb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 95
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %0, i32 noundef 0) #20
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %14 = icmp eq i32 %1, -1
  br label %22

15:                                               ; preds = %32, %8
  %16 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !68
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %95, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %21 = icmp eq i32 %1, -1
  br label %37

22:                                               ; preds = %12, %32
  %23 = phi i64 [ 0, %12 ], [ %33, %32 ]
  %24 = load ptr, ptr %13, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.frame_store, ptr %26, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !76
  %29 = icmp eq i32 %28, %1
  %30 = or i1 %14, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call fastcc void @unmark_for_reference(ptr noundef %26)
  br label %32

32:                                               ; preds = %31, %22
  %33 = add nuw nsw i64 %23, 1
  %34 = load i32, ptr %9, align 4, !tbaa !68
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %22, label %15, !llvm.loop !306

37:                                               ; preds = %19, %88
  %38 = phi i32 [ %17, %19 ], [ %90, %88 ]
  %39 = load ptr, ptr %20, align 8, !tbaa !70
  %40 = zext i32 %38 to i64
  br label %41

41:                                               ; preds = %92, %37
  %42 = phi i64 [ 0, %37 ], [ %93, %92 ]
  %43 = getelementptr inbounds ptr, ptr %39, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.frame_store, ptr %44, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !73
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %92, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.frame_store, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !182
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load i32, ptr %44, align 8, !tbaa !159
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.frame_store, ptr %44, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.storable_picture, ptr %57, i64 0, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !129
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %55, %52
  %62 = and i32 %53, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.frame_store, ptr %44, i64 0, i32 13
  %66 = load ptr, ptr %65, align 8, !tbaa !96
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 11
  %70 = load i32, ptr %69, align 4, !tbaa !129
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %68, %64, %61
  %73 = and i32 %53, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.frame_store, ptr %44, i64 0, i32 14
  %77 = load ptr, ptr %76, align 8, !tbaa !97
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.storable_picture, ptr %77, i64 0, i32 11
  %81 = load i32, ptr %80, align 4, !tbaa !129
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79, %75, %72
  %84 = getelementptr inbounds %struct.frame_store, ptr %44, i64 0, i32 15
  %85 = load i32, ptr %84, align 8, !tbaa !76
  %86 = icmp eq i32 %85, %1
  %87 = or i1 %21, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = trunc i64 %42 to i32
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %89)
  %90 = load i32, ptr %16, align 4, !tbaa !68
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %37

92:                                               ; preds = %79, %68, %55, %48, %83, %41
  %93 = add nuw nsw i64 %42, 1
  %94 = icmp eq i64 %93, %40
  br i1 %94, label %95, label %41, !llvm.loop !288

95:                                               ; preds = %88, %92, %15
  br label %96, !llvm.loop !307

96:                                               ; preds = %95, %99
  %97 = load i32, ptr %16, align 4, !tbaa !68
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %1), !range !291
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %96, !llvm.loop !308

102:                                              ; preds = %96, %99
  %103 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 -2147483648, ptr %103, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal fastcc void @unmark_for_reference(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !159
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 11
  store i32 0, ptr %10, align 4, !tbaa !129
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.storable_picture, ptr %16, i64 0, i32 11
  store i32 0, ptr %19, align 4, !tbaa !129
  br label %20

20:                                               ; preds = %14, %18, %11
  %21 = icmp eq i32 %2, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 11
  store i32 0, ptr %31, align 4, !tbaa !129
  %32 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 11
  store i32 0, ptr %32, align 4, !tbaa !129
  br label %33

33:                                               ; preds = %30, %26, %22
  %34 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  store i32 0, ptr %36, align 4, !tbaa !129
  br label %37

37:                                               ; preds = %33, %20
  %38 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 1
  store i32 0, ptr %38, align 4, !tbaa !182
  %39 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !95
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 37
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @free(ptr noundef %44) #20
  store ptr null, ptr %43, align 8, !tbaa !126
  br label %47

47:                                               ; preds = %46, %42, %37
  %48 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !96
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 37
  %53 = load ptr, ptr %52, align 8, !tbaa !126
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @free(ptr noundef %53) #20
  store ptr null, ptr %52, align 8, !tbaa !126
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !97
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.storable_picture, ptr %58, i64 0, i32 37
  %62 = load ptr, ptr %61, align 8, !tbaa !126
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @free(ptr noundef %62) #20
  store ptr null, ptr %61, align 8, !tbaa !126
  br label %65

65:                                               ; preds = %64, %60, %56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dpb_split_field(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !135
  %7 = ashr i32 %6, 3
  %8 = and i32 %7, -2
  %9 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !146
  %11 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %10, ptr %11, align 8, !tbaa !213
  %12 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 49
  %13 = load i32, ptr %12, align 8, !tbaa !309
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %221

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !136
  %18 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !137
  %20 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 19
  %21 = load i32, ptr %20, align 4, !tbaa !138
  %22 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 1, i32 noundef %6, i32 noundef %17, i32 noundef %19, i32 noundef %21)
  %23 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  store ptr %22, ptr %23, align 8, !tbaa !96
  %24 = load i32, ptr %5, align 8, !tbaa !135
  %25 = load i32, ptr %16, align 4, !tbaa !136
  %26 = load i32, ptr %18, align 8, !tbaa !137
  %27 = load i32, ptr %20, align 4, !tbaa !138
  %28 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 2, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27)
  %29 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  store ptr %28, ptr %29, align 8, !tbaa !97
  %30 = load i32, ptr %16, align 4, !tbaa !136
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 32
  %34 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 32
  br label %41

35:                                               ; preds = %41, %15
  %36 = load i32, ptr %20, align 4, !tbaa !138
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 33
  %40 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 33
  br label %64

41:                                               ; preds = %32, %41
  %42 = phi i64 [ 0, %32 ], [ %53, %41 ]
  %43 = load ptr, ptr %33, align 8, !tbaa !154
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = load ptr, ptr %34, align 8, !tbaa !154
  %47 = shl nuw nsw i64 %42, 1
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !75
  %50 = load i32, ptr %5, align 8, !tbaa !135
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %45, ptr align 2 %49, i64 %52, i1 false)
  %53 = add nuw nsw i64 %42, 1
  %54 = load i32, ptr %16, align 4, !tbaa !136
  %55 = ashr i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %41, label %35, !llvm.loop !310

58:                                               ; preds = %64, %35
  %59 = load i32, ptr %16, align 4, !tbaa !136
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %96

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 32
  %63 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 32
  br label %102

64:                                               ; preds = %38, %64
  %65 = phi i64 [ 0, %38 ], [ %91, %64 ]
  %66 = load ptr, ptr %39, align 8, !tbaa !110
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = getelementptr inbounds ptr, ptr %67, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = load ptr, ptr %40, align 8, !tbaa !110
  %71 = load ptr, ptr %70, align 8, !tbaa !75
  %72 = shl nuw nsw i64 %65, 1
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !75
  %75 = load i32, ptr %18, align 8, !tbaa !137
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %69, ptr align 2 %74, i64 %77, i1 false)
  %78 = load ptr, ptr %39, align 8, !tbaa !110
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !75
  %81 = getelementptr inbounds ptr, ptr %80, i64 %65
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = load ptr, ptr %40, align 8, !tbaa !110
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = getelementptr inbounds ptr, ptr %85, i64 %72
  %87 = load ptr, ptr %86, align 8, !tbaa !75
  %88 = load i32, ptr %18, align 8, !tbaa !137
  %89 = sext i32 %88 to i64
  %90 = shl nsw i64 %89, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %82, ptr align 2 %87, i64 %90, i1 false)
  %91 = add nuw nsw i64 %65, 1
  %92 = load i32, ptr %20, align 4, !tbaa !138
  %93 = ashr i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %64, label %58, !llvm.loop !311

96:                                               ; preds = %102, %58
  %97 = load i32, ptr %20, align 4, !tbaa !138
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %153

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 33
  %101 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 33
  br label %120

102:                                              ; preds = %61, %102
  %103 = phi i64 [ 0, %61 ], [ %115, %102 ]
  %104 = load ptr, ptr %62, align 8, !tbaa !154
  %105 = getelementptr inbounds ptr, ptr %104, i64 %103
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = load ptr, ptr %63, align 8, !tbaa !154
  %108 = shl nuw nsw i64 %103, 1
  %109 = or disjoint i64 %108, 1
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !75
  %112 = load i32, ptr %5, align 8, !tbaa !135
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %106, ptr align 2 %111, i64 %114, i1 false)
  %115 = add nuw nsw i64 %103, 1
  %116 = load i32, ptr %16, align 4, !tbaa !136
  %117 = ashr i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %102, label %96, !llvm.loop !312

120:                                              ; preds = %99, %120
  %121 = phi i64 [ 0, %99 ], [ %148, %120 ]
  %122 = load ptr, ptr %100, align 8, !tbaa !110
  %123 = load ptr, ptr %122, align 8, !tbaa !75
  %124 = getelementptr inbounds ptr, ptr %123, i64 %121
  %125 = load ptr, ptr %124, align 8, !tbaa !75
  %126 = load ptr, ptr %101, align 8, !tbaa !110
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = shl nuw nsw i64 %121, 1
  %129 = or disjoint i64 %128, 1
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  %132 = load i32, ptr %18, align 8, !tbaa !137
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %125, ptr align 2 %131, i64 %134, i1 false)
  %135 = load ptr, ptr %100, align 8, !tbaa !110
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !75
  %138 = getelementptr inbounds ptr, ptr %137, i64 %121
  %139 = load ptr, ptr %138, align 8, !tbaa !75
  %140 = load ptr, ptr %101, align 8, !tbaa !110
  %141 = getelementptr inbounds ptr, ptr %140, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !75
  %143 = getelementptr inbounds ptr, ptr %142, i64 %129
  %144 = load ptr, ptr %143, align 8, !tbaa !75
  %145 = load i32, ptr %18, align 8, !tbaa !137
  %146 = sext i32 %145 to i64
  %147 = shl nsw i64 %146, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %139, ptr align 2 %144, i64 %147, i1 false)
  %148 = add nuw nsw i64 %121, 1
  %149 = load i32, ptr %20, align 4, !tbaa !138
  %150 = ashr i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %120, label %153, !llvm.loop !313

153:                                              ; preds = %120, %96
  %154 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !148
  %156 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 1
  store i32 %155, ptr %156, align 4, !tbaa !146
  %157 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !147
  %159 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 1
  store i32 %158, ptr %159, align 4, !tbaa !146
  %160 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 64
  %161 = load i32, ptr %160, align 8, !tbaa !133
  %162 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 64
  store i32 %161, ptr %162, align 8, !tbaa !133
  %163 = load i32, ptr %160, align 8, !tbaa !133
  %164 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 64
  store i32 %163, ptr %164, align 8, !tbaa !133
  %165 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 4
  %166 = load i32, ptr %165, align 8, !tbaa !314
  %167 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 4
  store i32 %166, ptr %167, align 8, !tbaa !314
  %168 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 3
  store i32 %158, ptr %168, align 4, !tbaa !147
  %169 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 3
  store i32 %158, ptr %169, align 4, !tbaa !147
  %170 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 2
  store i32 %155, ptr %170, align 8, !tbaa !148
  %171 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 2
  store i32 %155, ptr %171, align 8, !tbaa !148
  %172 = load i32, ptr %165, align 8, !tbaa !314
  %173 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 4
  store i32 %172, ptr %173, align 8, !tbaa !314
  %174 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 11
  %175 = load i32, ptr %174, align 4, !tbaa !129
  %176 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 11
  store i32 %175, ptr %176, align 4, !tbaa !129
  %177 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 11
  store i32 %175, ptr %177, align 4, !tbaa !129
  %178 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 10
  %179 = load i8, ptr %178, align 8, !tbaa !158
  %180 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 10
  store i8 %179, ptr %180, align 8, !tbaa !158
  %181 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 10
  store i8 %179, ptr %181, align 8, !tbaa !158
  %182 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 9
  %183 = load i32, ptr %182, align 4, !tbaa !179
  %184 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 9
  store i32 %183, ptr %184, align 4, !tbaa !179
  %185 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 9
  store i32 %183, ptr %185, align 4, !tbaa !179
  %186 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %183, ptr %186, align 8, !tbaa !203
  %187 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 24
  store i32 1, ptr %187, align 8, !tbaa !144
  %188 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 24
  store i32 1, ptr %188, align 8, !tbaa !144
  %189 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 25
  %190 = load i32, ptr %189, align 4, !tbaa !145
  %191 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 25
  store i32 %190, ptr %191, align 4, !tbaa !145
  %192 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 25
  store i32 %190, ptr %192, align 4, !tbaa !145
  %193 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 40
  store ptr %22, ptr %193, align 8, !tbaa !85
  %194 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 41
  store ptr %28, ptr %194, align 8, !tbaa !88
  %195 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 42
  store ptr %4, ptr %195, align 8, !tbaa !89
  %196 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 41
  store ptr %28, ptr %196, align 8, !tbaa !88
  %197 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 42
  store ptr %4, ptr %197, align 8, !tbaa !89
  %198 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 40
  store ptr %22, ptr %198, align 8, !tbaa !85
  %199 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 40
  store ptr %22, ptr %199, align 8, !tbaa !85
  %200 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 42
  store ptr %4, ptr %200, align 8, !tbaa !89
  %201 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 41
  store ptr %28, ptr %201, align 8, !tbaa !88
  %202 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %203 = load i32, ptr %202, align 8, !tbaa !76
  store i32 %203, ptr %164, align 8, !tbaa !133
  store i32 %203, ptr %162, align 8, !tbaa !133
  %204 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16
  %205 = load i32, ptr %204, align 4, !tbaa !200
  %206 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 65
  store i32 %205, ptr %206, align 4, !tbaa !296
  %207 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16, i64 1
  %208 = load i32, ptr %207, align 4, !tbaa !200
  %209 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 65
  store i32 %208, ptr %209, align 4, !tbaa !296
  %210 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 48
  %211 = load i32, ptr %210, align 4, !tbaa !315
  %212 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 48
  store i32 %211, ptr %212, align 4, !tbaa !315
  %213 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 48
  store i32 %211, ptr %213, align 4, !tbaa !315
  %214 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 73
  %215 = load i32, ptr %214, align 4, !tbaa !316
  %216 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 73
  store i32 %215, ptr %216, align 4, !tbaa !316
  %217 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 73
  store i32 %215, ptr %217, align 4, !tbaa !316
  %218 = load i32, ptr %174, align 4, !tbaa !129
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %153
  tail call void @pad_dec_picture(ptr noundef %0, ptr noundef %22) #20
  tail call void @pad_dec_picture(ptr noundef %0, ptr noundef %28) #20
  br label %224

221:                                              ; preds = %2
  %222 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 40
  %223 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %222, i8 0, i64 16, i1 false)
  store ptr %4, ptr %223, align 8, !tbaa !89
  br label %224

224:                                              ; preds = %153, %220, %221
  %225 = phi ptr [ null, %221 ], [ %22, %220 ], [ %22, %153 ]
  %226 = phi ptr [ null, %221 ], [ %28, %220 ], [ %28, %153 ]
  %227 = load i32, ptr %12, align 8, !tbaa !309
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %598

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 25
  %231 = load i32, ptr %230, align 4, !tbaa !145
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %431, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 37
  %235 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %236 = load i32, ptr %235, align 4, !tbaa !136
  %237 = icmp sgt i32 %236, 7
  br i1 %237, label %238, label %431

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.storable_picture, ptr %226, i64 0, i32 35
  %240 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %241 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %242 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %243 = getelementptr inbounds %struct.storable_picture, ptr %225, i64 0, i32 35
  %244 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %245 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  br label %246

246:                                              ; preds = %238, %425
  %247 = phi i64 [ 0, %238 ], [ %426, %425 ]
  %248 = load i32, ptr %5, align 8, !tbaa !135
  %249 = icmp sgt i32 %248, 3
  br i1 %249, label %250, label %425

250:                                              ; preds = %246
  %251 = trunc i64 %247 to i32
  %252 = lshr i32 %251, 1
  %253 = trunc i64 %247 to i32
  %254 = shl i32 %253, 1
  %255 = and i32 %254, 2147483640
  %256 = trunc i64 %247 to i32
  %257 = and i32 %256, 3
  %258 = or disjoint i32 %255, %257
  %259 = or disjoint i32 %258, 4
  %260 = trunc i64 %247 to i32
  %261 = lshr i32 %260, 2
  %262 = mul nsw i32 %261, %8
  %263 = and i32 %252, 1
  %264 = zext nneg i32 %259 to i64
  %265 = zext nneg i32 %258 to i64
  br label %266

266:                                              ; preds = %250, %419
  %267 = phi i64 [ 0, %250 ], [ %420, %419 ]
  %268 = trunc i64 %267 to i32
  %269 = lshr i32 %268, 1
  %270 = and i32 %269, 1073741822
  %271 = add nsw i32 %270, %262
  %272 = or disjoint i32 %271, %263
  %273 = load ptr, ptr %234, align 8, !tbaa !126
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, ptr %273, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !161
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %419, label %278

278:                                              ; preds = %266
  %279 = load ptr, ptr %239, align 8, !tbaa !152
  %280 = getelementptr inbounds ptr, ptr %279, i64 %247
  %281 = load ptr, ptr %280, align 8, !tbaa !75
  %282 = getelementptr inbounds %struct.pic_motion_params, ptr %281, i64 %267, i32 1
  %283 = load ptr, ptr %240, align 8, !tbaa !152
  %284 = getelementptr inbounds ptr, ptr %283, i64 %264
  %285 = load ptr, ptr %284, align 8, !tbaa !75
  %286 = getelementptr inbounds %struct.pic_motion_params, ptr %285, i64 %267, i32 1
  %287 = load i32, ptr %286, align 8
  store i32 %287, ptr %282, align 8
  %288 = load ptr, ptr %239, align 8, !tbaa !152
  %289 = getelementptr inbounds ptr, ptr %288, i64 %247
  %290 = load ptr, ptr %289, align 8, !tbaa !75
  %291 = getelementptr inbounds %struct.pic_motion_params, ptr %290, i64 %267, i32 1, i64 1
  %292 = load ptr, ptr %240, align 8, !tbaa !152
  %293 = getelementptr inbounds ptr, ptr %292, i64 %264
  %294 = load ptr, ptr %293, align 8, !tbaa !75
  %295 = getelementptr inbounds %struct.pic_motion_params, ptr %294, i64 %267, i32 1, i64 1
  %296 = load i32, ptr %295, align 4
  store i32 %296, ptr %291, align 4
  %297 = load ptr, ptr %240, align 8, !tbaa !152
  %298 = getelementptr inbounds ptr, ptr %297, i64 %264
  %299 = load ptr, ptr %298, align 8, !tbaa !75
  %300 = getelementptr inbounds %struct.pic_motion_params, ptr %299, i64 %267, i32 2
  %301 = load i8, ptr %300, align 8, !tbaa !161
  %302 = load ptr, ptr %239, align 8, !tbaa !152
  %303 = getelementptr inbounds ptr, ptr %302, i64 %247
  %304 = load ptr, ptr %303, align 8, !tbaa !75
  %305 = getelementptr inbounds %struct.pic_motion_params, ptr %304, i64 %267, i32 2
  store i8 %301, ptr %305, align 8, !tbaa !161
  %306 = load ptr, ptr %239, align 8, !tbaa !152
  %307 = getelementptr inbounds ptr, ptr %306, i64 %247
  %308 = load ptr, ptr %307, align 8, !tbaa !75
  %309 = getelementptr inbounds %struct.pic_motion_params, ptr %308, i64 %267
  %310 = getelementptr inbounds %struct.pic_motion_params, ptr %308, i64 %267, i32 2
  %311 = load i8, ptr %310, align 8, !tbaa !161
  %312 = icmp sgt i8 %311, -1
  br i1 %312, label %313, label %321

313:                                              ; preds = %278
  %314 = load ptr, ptr %241, align 8, !tbaa !260
  %315 = load ptr, ptr %314, align 8, !tbaa !75
  %316 = getelementptr inbounds %struct.slice, ptr %315, i64 0, i32 56, i64 4
  %317 = load ptr, ptr %316, align 8, !tbaa !75
  %318 = zext nneg i8 %311 to i64
  %319 = getelementptr inbounds ptr, ptr %317, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !75
  br label %321

321:                                              ; preds = %278, %313
  %322 = phi ptr [ %320, %313 ], [ null, %278 ]
  store ptr %322, ptr %309, align 8, !tbaa !75
  %323 = load ptr, ptr %240, align 8, !tbaa !152
  %324 = getelementptr inbounds ptr, ptr %323, i64 %264
  %325 = load ptr, ptr %324, align 8, !tbaa !75
  %326 = getelementptr inbounds %struct.pic_motion_params, ptr %325, i64 %267, i32 2, i64 1
  %327 = load i8, ptr %326, align 1, !tbaa !161
  %328 = load ptr, ptr %239, align 8, !tbaa !152
  %329 = getelementptr inbounds ptr, ptr %328, i64 %247
  %330 = load ptr, ptr %329, align 8, !tbaa !75
  %331 = getelementptr inbounds %struct.pic_motion_params, ptr %330, i64 %267, i32 2, i64 1
  store i8 %327, ptr %331, align 1, !tbaa !161
  %332 = load ptr, ptr %239, align 8, !tbaa !152
  %333 = getelementptr inbounds ptr, ptr %332, i64 %247
  %334 = load ptr, ptr %333, align 8, !tbaa !75
  %335 = getelementptr inbounds %struct.pic_motion_params, ptr %334, i64 %267, i32 2, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !161
  %337 = icmp sgt i8 %336, -1
  br i1 %337, label %338, label %346

338:                                              ; preds = %321
  %339 = load ptr, ptr %242, align 8, !tbaa !260
  %340 = load ptr, ptr %339, align 8, !tbaa !75
  %341 = getelementptr inbounds %struct.slice, ptr %340, i64 0, i32 56, i64 5
  %342 = load ptr, ptr %341, align 8, !tbaa !75
  %343 = zext nneg i8 %336 to i64
  %344 = getelementptr inbounds ptr, ptr %342, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !75
  br label %346

346:                                              ; preds = %321, %338
  %347 = phi ptr [ %345, %338 ], [ null, %321 ]
  %348 = getelementptr inbounds %struct.pic_motion_params, ptr %334, i64 %267, i32 0, i64 1
  store ptr %347, ptr %348, align 8, !tbaa !75
  %349 = load ptr, ptr %243, align 8, !tbaa !152
  %350 = getelementptr inbounds ptr, ptr %349, i64 %247
  %351 = load ptr, ptr %350, align 8, !tbaa !75
  %352 = getelementptr inbounds %struct.pic_motion_params, ptr %351, i64 %267, i32 1
  %353 = load ptr, ptr %240, align 8, !tbaa !152
  %354 = getelementptr inbounds ptr, ptr %353, i64 %265
  %355 = load ptr, ptr %354, align 8, !tbaa !75
  %356 = getelementptr inbounds %struct.pic_motion_params, ptr %355, i64 %267, i32 1
  %357 = load i32, ptr %356, align 8
  store i32 %357, ptr %352, align 8
  %358 = load ptr, ptr %243, align 8, !tbaa !152
  %359 = getelementptr inbounds ptr, ptr %358, i64 %247
  %360 = load ptr, ptr %359, align 8, !tbaa !75
  %361 = getelementptr inbounds %struct.pic_motion_params, ptr %360, i64 %267, i32 1, i64 1
  %362 = load ptr, ptr %240, align 8, !tbaa !152
  %363 = getelementptr inbounds ptr, ptr %362, i64 %265
  %364 = load ptr, ptr %363, align 8, !tbaa !75
  %365 = getelementptr inbounds %struct.pic_motion_params, ptr %364, i64 %267, i32 1, i64 1
  %366 = load i32, ptr %365, align 4
  store i32 %366, ptr %361, align 4
  %367 = load ptr, ptr %240, align 8, !tbaa !152
  %368 = getelementptr inbounds ptr, ptr %367, i64 %265
  %369 = load ptr, ptr %368, align 8, !tbaa !75
  %370 = getelementptr inbounds %struct.pic_motion_params, ptr %369, i64 %267, i32 2
  %371 = load i8, ptr %370, align 8, !tbaa !161
  %372 = load ptr, ptr %243, align 8, !tbaa !152
  %373 = getelementptr inbounds ptr, ptr %372, i64 %247
  %374 = load ptr, ptr %373, align 8, !tbaa !75
  %375 = getelementptr inbounds %struct.pic_motion_params, ptr %374, i64 %267, i32 2
  store i8 %371, ptr %375, align 8, !tbaa !161
  %376 = load ptr, ptr %243, align 8, !tbaa !152
  %377 = getelementptr inbounds ptr, ptr %376, i64 %247
  %378 = load ptr, ptr %377, align 8, !tbaa !75
  %379 = getelementptr inbounds %struct.pic_motion_params, ptr %378, i64 %267
  %380 = getelementptr inbounds %struct.pic_motion_params, ptr %378, i64 %267, i32 2
  %381 = load i8, ptr %380, align 8, !tbaa !161
  %382 = icmp sgt i8 %381, -1
  br i1 %382, label %383, label %391

383:                                              ; preds = %346
  %384 = load ptr, ptr %244, align 8, !tbaa !260
  %385 = load ptr, ptr %384, align 8, !tbaa !75
  %386 = getelementptr inbounds %struct.slice, ptr %385, i64 0, i32 56, i64 2
  %387 = load ptr, ptr %386, align 8, !tbaa !75
  %388 = zext nneg i8 %381 to i64
  %389 = getelementptr inbounds ptr, ptr %387, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !75
  br label %391

391:                                              ; preds = %346, %383
  %392 = phi ptr [ %390, %383 ], [ null, %346 ]
  store ptr %392, ptr %379, align 8, !tbaa !75
  %393 = load ptr, ptr %240, align 8, !tbaa !152
  %394 = getelementptr inbounds ptr, ptr %393, i64 %265
  %395 = load ptr, ptr %394, align 8, !tbaa !75
  %396 = getelementptr inbounds %struct.pic_motion_params, ptr %395, i64 %267, i32 2, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !161
  %398 = load ptr, ptr %243, align 8, !tbaa !152
  %399 = getelementptr inbounds ptr, ptr %398, i64 %247
  %400 = load ptr, ptr %399, align 8, !tbaa !75
  %401 = getelementptr inbounds %struct.pic_motion_params, ptr %400, i64 %267, i32 2, i64 1
  store i8 %397, ptr %401, align 1, !tbaa !161
  %402 = load ptr, ptr %243, align 8, !tbaa !152
  %403 = getelementptr inbounds ptr, ptr %402, i64 %247
  %404 = load ptr, ptr %403, align 8, !tbaa !75
  %405 = getelementptr inbounds %struct.pic_motion_params, ptr %404, i64 %267, i32 2, i64 1
  %406 = load i8, ptr %405, align 1, !tbaa !161
  %407 = icmp sgt i8 %406, -1
  br i1 %407, label %408, label %416

408:                                              ; preds = %391
  %409 = load ptr, ptr %245, align 8, !tbaa !260
  %410 = load ptr, ptr %409, align 8, !tbaa !75
  %411 = getelementptr inbounds %struct.slice, ptr %410, i64 0, i32 56, i64 3
  %412 = load ptr, ptr %411, align 8, !tbaa !75
  %413 = zext nneg i8 %406 to i64
  %414 = getelementptr inbounds ptr, ptr %412, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !75
  br label %416

416:                                              ; preds = %391, %408
  %417 = phi ptr [ %415, %408 ], [ null, %391 ]
  %418 = getelementptr inbounds %struct.pic_motion_params, ptr %404, i64 %267, i32 0, i64 1
  store ptr %417, ptr %418, align 8, !tbaa !75
  br label %419

419:                                              ; preds = %416, %266
  %420 = add nuw nsw i64 %267, 1
  %421 = load i32, ptr %5, align 8, !tbaa !135
  %422 = ashr i32 %421, 2
  %423 = sext i32 %422 to i64
  %424 = icmp slt i64 %420, %423
  br i1 %424, label %266, label %425, !llvm.loop !317

425:                                              ; preds = %419, %246
  %426 = add nuw nsw i64 %247, 1
  %427 = load i32, ptr %235, align 4, !tbaa !136
  %428 = ashr i32 %427, 3
  %429 = sext i32 %428 to i64
  %430 = icmp slt i64 %426, %429
  br i1 %430, label %246, label %431, !llvm.loop !318

431:                                              ; preds = %425, %233, %229
  %432 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %433 = load i32, ptr %432, align 4, !tbaa !136
  %434 = icmp sgt i32 %433, 7
  br i1 %434, label %435, label %598

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 37
  %437 = getelementptr inbounds %struct.storable_picture, ptr %225, i64 0, i32 35
  %438 = getelementptr inbounds %struct.storable_picture, ptr %226, i64 0, i32 35
  %439 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %440 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %441 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  br label %442

442:                                              ; preds = %435, %592
  %443 = phi i64 [ 0, %435 ], [ %593, %592 ]
  %444 = trunc i64 %443 to i32
  %445 = lshr i32 %444, 1
  %446 = and i32 %445, 1
  %447 = load i32, ptr %5, align 8, !tbaa !135
  %448 = icmp sgt i32 %447, 3
  br i1 %448, label %449, label %592

449:                                              ; preds = %442
  %450 = trunc i64 %443 to i32
  %451 = and i32 %450, 2147483646
  %452 = or disjoint i32 %446, %451
  %453 = shl nuw nsw i32 %452, 1
  %454 = trunc i64 %443 to i32
  %455 = lshr i32 %454, 2
  %456 = mul nsw i32 %455, %8
  %457 = zext nneg i32 %453 to i64
  br label %458

458:                                              ; preds = %449, %586
  %459 = phi i64 [ 0, %449 ], [ %587, %586 ]
  %460 = trunc i64 %459 to i32
  %461 = and i32 %460, 2147483646
  %462 = trunc i64 %459 to i32
  %463 = lshr i32 %462, 1
  %464 = and i32 %463, 1
  %465 = or disjoint i32 %464, %461
  %466 = load i32, ptr %230, align 4, !tbaa !145
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %477, label %468

468:                                              ; preds = %458
  %469 = and i32 %463, 1073741822
  %470 = add nsw i32 %469, %456
  %471 = or disjoint i32 %470, %446
  %472 = load ptr, ptr %436, align 8, !tbaa !319
  %473 = sext i32 %471 to i64
  %474 = getelementptr inbounds i8, ptr %472, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !161
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %477, label %586

477:                                              ; preds = %468, %458
  %478 = load ptr, ptr %437, align 8, !tbaa !152
  %479 = getelementptr inbounds ptr, ptr %478, i64 %443
  %480 = load ptr, ptr %479, align 8, !tbaa !75
  %481 = getelementptr inbounds %struct.pic_motion_params, ptr %480, i64 %459, i32 1
  %482 = load ptr, ptr %438, align 8, !tbaa !152
  %483 = getelementptr inbounds ptr, ptr %482, i64 %443
  %484 = load ptr, ptr %483, align 8, !tbaa !75
  %485 = getelementptr inbounds %struct.pic_motion_params, ptr %484, i64 %459, i32 1
  %486 = load ptr, ptr %439, align 8, !tbaa !152
  %487 = getelementptr inbounds ptr, ptr %486, i64 %457
  %488 = load ptr, ptr %487, align 8, !tbaa !75
  %489 = zext nneg i32 %465 to i64
  %490 = getelementptr inbounds %struct.pic_motion_params, ptr %488, i64 %489, i32 1
  %491 = load i32, ptr %490, align 8
  store i32 %491, ptr %485, align 8
  store i32 %491, ptr %481, align 8
  %492 = load ptr, ptr %437, align 8, !tbaa !152
  %493 = getelementptr inbounds ptr, ptr %492, i64 %443
  %494 = load ptr, ptr %493, align 8, !tbaa !75
  %495 = getelementptr inbounds %struct.pic_motion_params, ptr %494, i64 %459, i32 1, i64 1
  %496 = load ptr, ptr %438, align 8, !tbaa !152
  %497 = getelementptr inbounds ptr, ptr %496, i64 %443
  %498 = load ptr, ptr %497, align 8, !tbaa !75
  %499 = getelementptr inbounds %struct.pic_motion_params, ptr %498, i64 %459, i32 1, i64 1
  %500 = load ptr, ptr %439, align 8, !tbaa !152
  %501 = getelementptr inbounds ptr, ptr %500, i64 %457
  %502 = load ptr, ptr %501, align 8, !tbaa !75
  %503 = getelementptr inbounds %struct.pic_motion_params, ptr %502, i64 %489, i32 1, i64 1
  %504 = load i32, ptr %503, align 4
  store i32 %504, ptr %499, align 4
  store i32 %504, ptr %495, align 4
  %505 = load ptr, ptr %439, align 8, !tbaa !152
  %506 = getelementptr inbounds ptr, ptr %505, i64 %457
  %507 = load ptr, ptr %506, align 8, !tbaa !75
  %508 = getelementptr inbounds %struct.pic_motion_params, ptr %507, i64 %489, i32 2
  %509 = load i8, ptr %508, align 8, !tbaa !161
  %510 = icmp eq i8 %509, -1
  %511 = load ptr, ptr %438, align 8, !tbaa !152
  %512 = getelementptr inbounds ptr, ptr %511, i64 %443
  %513 = load ptr, ptr %512, align 8, !tbaa !75
  %514 = getelementptr inbounds %struct.pic_motion_params, ptr %513, i64 %459, i32 2
  br i1 %510, label %515, label %520

515:                                              ; preds = %477
  store i8 -1, ptr %514, align 8, !tbaa !161
  %516 = load ptr, ptr %437, align 8, !tbaa !152
  %517 = getelementptr inbounds ptr, ptr %516, i64 %443
  %518 = load ptr, ptr %517, align 8, !tbaa !75
  %519 = getelementptr inbounds %struct.pic_motion_params, ptr %518, i64 %459, i32 2
  store i8 -1, ptr %519, align 8, !tbaa !161
  br label %545

520:                                              ; preds = %477
  store i8 %509, ptr %514, align 8, !tbaa !161
  %521 = load ptr, ptr %437, align 8, !tbaa !152
  %522 = getelementptr inbounds ptr, ptr %521, i64 %443
  %523 = load ptr, ptr %522, align 8, !tbaa !75
  %524 = getelementptr inbounds %struct.pic_motion_params, ptr %523, i64 %459, i32 2
  store i8 %509, ptr %524, align 8, !tbaa !161
  %525 = load ptr, ptr %440, align 8, !tbaa !260
  %526 = load ptr, ptr %525, align 8, !tbaa !75
  %527 = getelementptr inbounds %struct.slice, ptr %526, i64 0, i32 56
  %528 = load ptr, ptr %527, align 8, !tbaa !75
  %529 = load ptr, ptr %439, align 8, !tbaa !152
  %530 = getelementptr inbounds ptr, ptr %529, i64 %457
  %531 = load ptr, ptr %530, align 8, !tbaa !75
  %532 = getelementptr inbounds %struct.pic_motion_params, ptr %531, i64 %489, i32 2
  %533 = load i8, ptr %532, align 8, !tbaa !161
  %534 = sext i8 %533 to i64
  %535 = getelementptr inbounds ptr, ptr %528, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !75
  %537 = load ptr, ptr %438, align 8, !tbaa !152
  %538 = getelementptr inbounds ptr, ptr %537, i64 %443
  %539 = load ptr, ptr %538, align 8, !tbaa !75
  %540 = getelementptr inbounds %struct.pic_motion_params, ptr %539, i64 %459
  store ptr %536, ptr %540, align 8, !tbaa !75
  %541 = load ptr, ptr %437, align 8, !tbaa !152
  %542 = getelementptr inbounds ptr, ptr %541, i64 %443
  %543 = load ptr, ptr %542, align 8, !tbaa !75
  %544 = getelementptr inbounds %struct.pic_motion_params, ptr %543, i64 %459
  store ptr %536, ptr %544, align 8, !tbaa !75
  br label %545

545:                                              ; preds = %520, %515
  %546 = load ptr, ptr %439, align 8, !tbaa !152
  %547 = getelementptr inbounds ptr, ptr %546, i64 %457
  %548 = load ptr, ptr %547, align 8, !tbaa !75
  %549 = getelementptr inbounds %struct.pic_motion_params, ptr %548, i64 %489, i32 2, i64 1
  %550 = load i8, ptr %549, align 1, !tbaa !161
  %551 = icmp eq i8 %550, -1
  %552 = load ptr, ptr %438, align 8, !tbaa !152
  %553 = getelementptr inbounds ptr, ptr %552, i64 %443
  %554 = load ptr, ptr %553, align 8, !tbaa !75
  %555 = getelementptr inbounds %struct.pic_motion_params, ptr %554, i64 %459, i32 2, i64 1
  br i1 %551, label %556, label %561

556:                                              ; preds = %545
  store i8 -1, ptr %555, align 1, !tbaa !161
  %557 = load ptr, ptr %437, align 8, !tbaa !152
  %558 = getelementptr inbounds ptr, ptr %557, i64 %443
  %559 = load ptr, ptr %558, align 8, !tbaa !75
  %560 = getelementptr inbounds %struct.pic_motion_params, ptr %559, i64 %459, i32 2, i64 1
  store i8 -1, ptr %560, align 1, !tbaa !161
  br label %586

561:                                              ; preds = %545
  store i8 %550, ptr %555, align 1, !tbaa !161
  %562 = load ptr, ptr %437, align 8, !tbaa !152
  %563 = getelementptr inbounds ptr, ptr %562, i64 %443
  %564 = load ptr, ptr %563, align 8, !tbaa !75
  %565 = getelementptr inbounds %struct.pic_motion_params, ptr %564, i64 %459, i32 2, i64 1
  store i8 %550, ptr %565, align 1, !tbaa !161
  %566 = load ptr, ptr %441, align 8, !tbaa !260
  %567 = load ptr, ptr %566, align 8, !tbaa !75
  %568 = getelementptr inbounds %struct.slice, ptr %567, i64 0, i32 56, i64 1
  %569 = load ptr, ptr %568, align 8, !tbaa !75
  %570 = load ptr, ptr %439, align 8, !tbaa !152
  %571 = getelementptr inbounds ptr, ptr %570, i64 %457
  %572 = load ptr, ptr %571, align 8, !tbaa !75
  %573 = getelementptr inbounds %struct.pic_motion_params, ptr %572, i64 %489, i32 2, i64 1
  %574 = load i8, ptr %573, align 1, !tbaa !161
  %575 = sext i8 %574 to i64
  %576 = getelementptr inbounds ptr, ptr %569, i64 %575
  %577 = load ptr, ptr %576, align 8, !tbaa !75
  %578 = load ptr, ptr %438, align 8, !tbaa !152
  %579 = getelementptr inbounds ptr, ptr %578, i64 %443
  %580 = load ptr, ptr %579, align 8, !tbaa !75
  %581 = getelementptr inbounds %struct.pic_motion_params, ptr %580, i64 %459, i32 0, i64 1
  store ptr %577, ptr %581, align 8, !tbaa !75
  %582 = load ptr, ptr %437, align 8, !tbaa !152
  %583 = getelementptr inbounds ptr, ptr %582, i64 %443
  %584 = load ptr, ptr %583, align 8, !tbaa !75
  %585 = getelementptr inbounds %struct.pic_motion_params, ptr %584, i64 %459, i32 0, i64 1
  store ptr %577, ptr %585, align 8, !tbaa !75
  br label %586

586:                                              ; preds = %561, %556, %468
  %587 = add nuw nsw i64 %459, 1
  %588 = load i32, ptr %5, align 8, !tbaa !135
  %589 = ashr i32 %588, 2
  %590 = sext i32 %589 to i64
  %591 = icmp slt i64 %587, %590
  br i1 %591, label %458, label %592, !llvm.loop !320

592:                                              ; preds = %586, %442
  %593 = add nuw nsw i64 %443, 1
  %594 = load i32, ptr %432, align 4, !tbaa !136
  %595 = ashr i32 %594, 3
  %596 = sext i32 %595 to i64
  %597 = icmp slt i64 %593, %596
  br i1 %597, label %442, label %598, !llvm.loop !321

598:                                              ; preds = %592, %431, %224
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare void @pad_dec_picture(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @dpb_combine_field_yuv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !136
  %13 = shl nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !137
  %16 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 19
  %17 = load i32, ptr %16, align 4, !tbaa !138
  %18 = shl nsw i32 %17, 1
  %19 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 0, i32 noundef %10, i32 noundef %13, i32 noundef %15, i32 noundef %18)
  store ptr %19, ptr %3, align 8, !tbaa !95
  br label %20

20:                                               ; preds = %6, %2
  %21 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 4, !tbaa !136
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  br label %31

28:                                               ; preds = %31, %20
  %29 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %30 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  br label %69

31:                                               ; preds = %26, %31
  %32 = phi i64 [ 0, %26 ], [ %63, %31 ]
  %33 = phi ptr [ %22, %26 ], [ %64, %31 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 32
  %36 = load ptr, ptr %35, align 8, !tbaa !154
  %37 = shl nuw nsw i64 %32, 1
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 32
  %41 = load ptr, ptr %40, align 8, !tbaa !154
  %42 = getelementptr inbounds ptr, ptr %41, i64 %32
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !135
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr align 2 %43, i64 %47, i1 false)
  %48 = load ptr, ptr %3, align 8, !tbaa !95
  %49 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 32
  %50 = load ptr, ptr %49, align 8, !tbaa !154
  %51 = or disjoint i64 %37, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = load ptr, ptr %27, align 8, !tbaa !97
  %55 = getelementptr inbounds %struct.storable_picture, ptr %54, i64 0, i32 32
  %56 = load ptr, ptr %55, align 8, !tbaa !154
  %57 = getelementptr inbounds ptr, ptr %56, i64 %32
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = getelementptr inbounds %struct.storable_picture, ptr %54, i64 0, i32 16
  %60 = load i32, ptr %59, align 8, !tbaa !135
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %53, ptr align 2 %58, i64 %62, i1 false)
  %63 = add nuw nsw i64 %32, 1
  %64 = load ptr, ptr %21, align 8, !tbaa !96
  %65 = getelementptr inbounds %struct.storable_picture, ptr %64, i64 0, i32 17
  %66 = load i32, ptr %65, align 4, !tbaa !136
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %31, label %28, !llvm.loop !322

69:                                               ; preds = %28, %121
  %70 = phi i64 [ 0, %28 ], [ %122, %121 ]
  %71 = load ptr, ptr %29, align 8, !tbaa !96
  %72 = getelementptr inbounds %struct.storable_picture, ptr %71, i64 0, i32 19
  %73 = load i32, ptr %72, align 4, !tbaa !138
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %69, %75
  %76 = phi i64 [ %115, %75 ], [ 0, %69 ]
  %77 = phi ptr [ %116, %75 ], [ %71, %69 ]
  %78 = load ptr, ptr %3, align 8, !tbaa !95
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 33
  %80 = load ptr, ptr %79, align 8, !tbaa !110
  %81 = getelementptr inbounds ptr, ptr %80, i64 %70
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = shl nuw nsw i64 %76, 1
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = getelementptr inbounds %struct.storable_picture, ptr %77, i64 0, i32 33
  %87 = load ptr, ptr %86, align 8, !tbaa !110
  %88 = getelementptr inbounds ptr, ptr %87, i64 %70
  %89 = load ptr, ptr %88, align 8, !tbaa !75
  %90 = getelementptr inbounds ptr, ptr %89, i64 %76
  %91 = load ptr, ptr %90, align 8, !tbaa !75
  %92 = getelementptr inbounds %struct.storable_picture, ptr %77, i64 0, i32 18
  %93 = load i32, ptr %92, align 8, !tbaa !137
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 %91, i64 %95, i1 false)
  %96 = load ptr, ptr %3, align 8, !tbaa !95
  %97 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 33
  %98 = load ptr, ptr %97, align 8, !tbaa !110
  %99 = getelementptr inbounds ptr, ptr %98, i64 %70
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = or disjoint i64 %83, 1
  %102 = getelementptr inbounds ptr, ptr %100, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  %104 = load ptr, ptr %30, align 8, !tbaa !97
  %105 = getelementptr inbounds %struct.storable_picture, ptr %104, i64 0, i32 33
  %106 = load ptr, ptr %105, align 8, !tbaa !110
  %107 = getelementptr inbounds ptr, ptr %106, i64 %70
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  %109 = getelementptr inbounds ptr, ptr %108, i64 %76
  %110 = load ptr, ptr %109, align 8, !tbaa !75
  %111 = getelementptr inbounds %struct.storable_picture, ptr %104, i64 0, i32 18
  %112 = load i32, ptr %111, align 8, !tbaa !137
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %103, ptr align 2 %110, i64 %114, i1 false)
  %115 = add nuw nsw i64 %76, 1
  %116 = load ptr, ptr %29, align 8, !tbaa !96
  %117 = getelementptr inbounds %struct.storable_picture, ptr %116, i64 0, i32 19
  %118 = load i32, ptr %117, align 4, !tbaa !138
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %115, %119
  br i1 %120, label %75, label %121, !llvm.loop !323

121:                                              ; preds = %75, %69
  %122 = add nuw nsw i64 %70, 1
  %123 = icmp eq i64 %70, 0
  br i1 %123, label %69, label %124, !llvm.loop !324

124:                                              ; preds = %121
  %125 = load ptr, ptr %29, align 8, !tbaa !96
  %126 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !146
  %128 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  %129 = load ptr, ptr %128, align 8, !tbaa !97
  %130 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !146
  %132 = tail call i32 @llvm.smin.i32(i32 %127, i32 %131)
  %133 = load ptr, ptr %3, align 8, !tbaa !95
  %134 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 4
  store i32 %132, ptr %134, align 8, !tbaa !314
  %135 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 1
  store i32 %132, ptr %135, align 4, !tbaa !146
  %136 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %132, ptr %136, align 8, !tbaa !213
  %137 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 4
  store i32 %132, ptr %137, align 8, !tbaa !314
  %138 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 4
  store i32 %132, ptr %138, align 8, !tbaa !314
  %139 = load i32, ptr %126, align 4, !tbaa !146
  %140 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 2
  store i32 %139, ptr %140, align 8, !tbaa !148
  %141 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 2
  store i32 %139, ptr %141, align 8, !tbaa !148
  %142 = load i32, ptr %130, align 4, !tbaa !146
  %143 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 3
  store i32 %142, ptr %143, align 4, !tbaa !147
  %144 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 3
  store i32 %142, ptr %144, align 4, !tbaa !147
  %145 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 11
  %146 = load i32, ptr %145, align 4, !tbaa !129
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %124
  %149 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 11
  %150 = load i32, ptr %149, align 4, !tbaa !129
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  br label %153

153:                                              ; preds = %148, %124
  %154 = phi i32 [ 0, %124 ], [ %152, %148 ]
  %155 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 11
  store i32 %154, ptr %155, align 4, !tbaa !129
  %156 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 10
  %157 = load i8, ptr %156, align 8, !tbaa !158
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 10
  %161 = load i8, ptr %160, align 8, !tbaa !158
  %162 = icmp ne i8 %161, 0
  %163 = zext i1 %162 to i8
  br label %164

164:                                              ; preds = %159, %153
  %165 = phi i8 [ 0, %153 ], [ %163, %159 ]
  %166 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 10
  store i8 %165, ptr %166, align 8, !tbaa !158
  %167 = icmp eq i8 %165, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  %170 = load i32, ptr %169, align 8, !tbaa !203
  %171 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 9
  store i32 %170, ptr %171, align 4, !tbaa !179
  br label %172

172:                                              ; preds = %168, %164
  %173 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 40
  store ptr %125, ptr %173, align 8, !tbaa !85
  %174 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 41
  store ptr %129, ptr %174, align 8, !tbaa !88
  %175 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 42
  store ptr %133, ptr %175, align 8, !tbaa !89
  %176 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 24
  store i32 0, ptr %176, align 8, !tbaa !144
  %177 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 48
  %178 = load i32, ptr %177, align 4, !tbaa !315
  %179 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 48
  store i32 %178, ptr %179, align 4, !tbaa !315
  %180 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 50
  %181 = load i32, ptr %180, align 4, !tbaa !325
  %182 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 50
  store i32 %181, ptr %182, align 4, !tbaa !325
  %183 = icmp eq i32 %181, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %172
  %185 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 53
  %186 = load i32, ptr %185, align 8, !tbaa !326
  %187 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 53
  store i32 %186, ptr %187, align 8, !tbaa !326
  %188 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 54
  %189 = load i32, ptr %188, align 4, !tbaa !327
  %190 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 54
  store i32 %189, ptr %190, align 4, !tbaa !327
  %191 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 51
  %192 = load i32, ptr %191, align 8, !tbaa !328
  %193 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 51
  store i32 %192, ptr %193, align 8, !tbaa !328
  %194 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 52
  %195 = load i32, ptr %194, align 4, !tbaa !329
  %196 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 52
  store i32 %195, ptr %196, align 4, !tbaa !329
  br label %197

197:                                              ; preds = %184, %172
  %198 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 42
  store ptr %133, ptr %198, align 8, !tbaa !89
  %199 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 42
  store ptr %133, ptr %199, align 8, !tbaa !89
  %200 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 41
  store ptr %129, ptr %200, align 8, !tbaa !88
  %201 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 40
  store ptr %125, ptr %201, align 8, !tbaa !85
  %202 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 40
  store ptr %125, ptr %202, align 8, !tbaa !85
  %203 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 41
  store ptr %129, ptr %203, align 8, !tbaa !88
  %204 = load i32, ptr %145, align 4, !tbaa !129
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 11
  %208 = load i32, ptr %207, align 4, !tbaa !129
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206, %197
  tail call void @pad_dec_picture(ptr noundef %0, ptr noundef %133) #20
  br label %211

211:                                              ; preds = %210, %206
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dpb_combine_field(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  tail call void @dpb_combine_field_yuv(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 64
  store i32 %4, ptr %7, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 73
  %11 = load i32, ptr %10, align 4, !tbaa !316
  %12 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 73
  store i32 %11, ptr %12, align 4, !tbaa !316
  %13 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !136
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %312

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %19 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  br label %22

22:                                               ; preds = %16, %304
  %23 = phi i64 [ 0, %16 ], [ %305, %304 ]
  %24 = load ptr, ptr %8, align 8, !tbaa !96
  %25 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !135
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %304

28:                                               ; preds = %22
  %29 = shl nuw i64 %23, 1
  %30 = or disjoint i64 %29, 1
  br label %31

31:                                               ; preds = %28, %289
  %32 = phi i64 [ 0, %28 ], [ %297, %289 ]
  %33 = phi ptr [ %24, %28 ], [ %298, %289 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 35
  %36 = load ptr, ptr %35, align 8, !tbaa !152
  %37 = getelementptr inbounds ptr, ptr %36, i64 %29
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = getelementptr inbounds %struct.pic_motion_params, ptr %38, i64 %32, i32 1
  %40 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 35
  %41 = load ptr, ptr %40, align 8, !tbaa !152
  %42 = getelementptr inbounds ptr, ptr %41, i64 %23
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %32, i32 1
  %45 = load i32, ptr %44, align 8
  store i32 %45, ptr %39, align 8
  %46 = load ptr, ptr %5, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 35
  %48 = load ptr, ptr %47, align 8, !tbaa !152
  %49 = getelementptr inbounds ptr, ptr %48, i64 %29
  %50 = load ptr, ptr %49, align 8, !tbaa !75
  %51 = getelementptr inbounds %struct.pic_motion_params, ptr %50, i64 %32, i32 1, i64 1
  %52 = load ptr, ptr %8, align 8, !tbaa !96
  %53 = getelementptr inbounds %struct.storable_picture, ptr %52, i64 0, i32 35
  %54 = load ptr, ptr %53, align 8, !tbaa !152
  %55 = getelementptr inbounds ptr, ptr %54, i64 %23
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %32, i32 1, i64 1
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %51, align 4
  %59 = load ptr, ptr %8, align 8, !tbaa !96
  %60 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 35
  %61 = load ptr, ptr %60, align 8, !tbaa !152
  %62 = getelementptr inbounds ptr, ptr %61, i64 %23
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  %64 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %32, i32 2
  %65 = load i8, ptr %64, align 8, !tbaa !161
  %66 = load ptr, ptr %5, align 8, !tbaa !95
  %67 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 35
  %68 = load ptr, ptr %67, align 8, !tbaa !152
  %69 = getelementptr inbounds ptr, ptr %68, i64 %29
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = getelementptr inbounds %struct.pic_motion_params, ptr %70, i64 %32, i32 2
  store i8 %65, ptr %71, align 8, !tbaa !161
  %72 = load ptr, ptr %8, align 8, !tbaa !96
  %73 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !152
  %75 = getelementptr inbounds ptr, ptr %74, i64 %23
  %76 = load ptr, ptr %75, align 8, !tbaa !75
  %77 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %32, i32 2, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !161
  %79 = load ptr, ptr %5, align 8, !tbaa !95
  %80 = getelementptr inbounds %struct.storable_picture, ptr %79, i64 0, i32 35
  %81 = load ptr, ptr %80, align 8, !tbaa !152
  %82 = getelementptr inbounds ptr, ptr %81, i64 %29
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  %84 = getelementptr inbounds %struct.pic_motion_params, ptr %83, i64 %32, i32 2, i64 1
  store i8 %78, ptr %84, align 1, !tbaa !161
  %85 = load ptr, ptr %8, align 8, !tbaa !96
  %86 = getelementptr inbounds %struct.storable_picture, ptr %85, i64 0, i32 74
  %87 = load i8, ptr %86, align 8, !tbaa !161
  %88 = icmp sgt i8 %87, 0
  %89 = getelementptr inbounds %struct.storable_picture, ptr %85, i64 0, i32 35
  %90 = load ptr, ptr %89, align 8, !tbaa !152
  %91 = getelementptr inbounds ptr, ptr %90, i64 %23
  %92 = load ptr, ptr %91, align 8, !tbaa !75
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %92, i64 %32, i32 2
  %94 = load i8, ptr %93, align 8, !tbaa !161
  %95 = icmp sgt i8 %94, -1
  br i1 %88, label %96, label %121

96:                                               ; preds = %31
  br i1 %95, label %97, label %103

97:                                               ; preds = %96
  %98 = zext nneg i8 %94 to i64
  %99 = getelementptr inbounds %struct.storable_picture, ptr %85, i64 0, i32 75
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = getelementptr inbounds ptr, ptr %100, i64 %98
  %102 = load ptr, ptr %101, align 8, !tbaa !75
  br label %103

103:                                              ; preds = %96, %97
  %104 = phi ptr [ %102, %97 ], [ null, %96 ]
  %105 = load ptr, ptr %5, align 8, !tbaa !95
  %106 = getelementptr inbounds %struct.storable_picture, ptr %105, i64 0, i32 35
  %107 = load ptr, ptr %106, align 8, !tbaa !152
  %108 = getelementptr inbounds ptr, ptr %107, i64 %29
  %109 = load ptr, ptr %108, align 8, !tbaa !75
  %110 = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %32
  store ptr %104, ptr %110, align 8, !tbaa !75
  %111 = load ptr, ptr %8, align 8, !tbaa !96
  %112 = getelementptr inbounds %struct.storable_picture, ptr %111, i64 0, i32 35
  %113 = load ptr, ptr %112, align 8, !tbaa !152
  %114 = getelementptr inbounds ptr, ptr %113, i64 %23
  %115 = load ptr, ptr %114, align 8, !tbaa !75
  %116 = getelementptr inbounds %struct.pic_motion_params, ptr %115, i64 %32, i32 2, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !161
  %118 = icmp sgt i8 %117, -1
  br i1 %118, label %119, label %157

119:                                              ; preds = %103
  %120 = getelementptr inbounds %struct.storable_picture, ptr %111, i64 0, i32 75, i64 1
  br label %150

121:                                              ; preds = %31
  br i1 %95, label %122, label %130

122:                                              ; preds = %121
  %123 = zext nneg i8 %94 to i64
  %124 = load ptr, ptr %17, align 8, !tbaa !260
  %125 = load ptr, ptr %124, align 8, !tbaa !75
  %126 = getelementptr inbounds %struct.slice, ptr %125, i64 0, i32 56
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = getelementptr inbounds ptr, ptr %127, i64 %123
  %129 = load ptr, ptr %128, align 8, !tbaa !75
  br label %130

130:                                              ; preds = %121, %122
  %131 = phi ptr [ %129, %122 ], [ null, %121 ]
  %132 = load ptr, ptr %5, align 8, !tbaa !95
  %133 = getelementptr inbounds %struct.storable_picture, ptr %132, i64 0, i32 35
  %134 = load ptr, ptr %133, align 8, !tbaa !152
  %135 = getelementptr inbounds ptr, ptr %134, i64 %29
  %136 = load ptr, ptr %135, align 8, !tbaa !75
  %137 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %32
  store ptr %131, ptr %137, align 8, !tbaa !75
  %138 = load ptr, ptr %8, align 8, !tbaa !96
  %139 = getelementptr inbounds %struct.storable_picture, ptr %138, i64 0, i32 35
  %140 = load ptr, ptr %139, align 8, !tbaa !152
  %141 = getelementptr inbounds ptr, ptr %140, i64 %23
  %142 = load ptr, ptr %141, align 8, !tbaa !75
  %143 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %32, i32 2, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !161
  %145 = icmp sgt i8 %144, -1
  br i1 %145, label %146, label %157

146:                                              ; preds = %130
  %147 = load ptr, ptr %18, align 8, !tbaa !260
  %148 = load ptr, ptr %147, align 8, !tbaa !75
  %149 = getelementptr inbounds %struct.slice, ptr %148, i64 0, i32 56, i64 1
  br label %150

150:                                              ; preds = %119, %146
  %151 = phi ptr [ %149, %146 ], [ %120, %119 ]
  %152 = phi i8 [ %144, %146 ], [ %117, %119 ]
  %153 = zext nneg i8 %152 to i64
  %154 = load ptr, ptr %151, align 8, !tbaa !75
  %155 = getelementptr inbounds ptr, ptr %154, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !75
  br label %157

157:                                              ; preds = %150, %130, %103
  %158 = phi ptr [ null, %103 ], [ null, %130 ], [ %156, %150 ]
  %159 = load ptr, ptr %5, align 8, !tbaa !95
  %160 = getelementptr inbounds %struct.storable_picture, ptr %159, i64 0, i32 35
  %161 = load ptr, ptr %160, align 8, !tbaa !152
  %162 = getelementptr inbounds ptr, ptr %161, i64 %29
  %163 = load ptr, ptr %162, align 8, !tbaa !75
  %164 = getelementptr inbounds %struct.pic_motion_params, ptr %163, i64 %32, i32 0, i64 1
  store ptr %158, ptr %164, align 8, !tbaa !75
  %165 = load ptr, ptr %5, align 8, !tbaa !95
  %166 = getelementptr inbounds %struct.storable_picture, ptr %165, i64 0, i32 35
  %167 = load ptr, ptr %166, align 8, !tbaa !152
  %168 = getelementptr inbounds ptr, ptr %167, i64 %30
  %169 = load ptr, ptr %168, align 8, !tbaa !75
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %169, i64 %32, i32 1
  %171 = load ptr, ptr %19, align 8, !tbaa !97
  %172 = getelementptr inbounds %struct.storable_picture, ptr %171, i64 0, i32 35
  %173 = load ptr, ptr %172, align 8, !tbaa !152
  %174 = getelementptr inbounds ptr, ptr %173, i64 %23
  %175 = load ptr, ptr %174, align 8, !tbaa !75
  %176 = getelementptr inbounds %struct.pic_motion_params, ptr %175, i64 %32, i32 1
  %177 = load i32, ptr %176, align 8
  store i32 %177, ptr %170, align 8
  %178 = load ptr, ptr %5, align 8, !tbaa !95
  %179 = getelementptr inbounds %struct.storable_picture, ptr %178, i64 0, i32 35
  %180 = load ptr, ptr %179, align 8, !tbaa !152
  %181 = getelementptr inbounds ptr, ptr %180, i64 %30
  %182 = load ptr, ptr %181, align 8, !tbaa !75
  %183 = getelementptr inbounds %struct.pic_motion_params, ptr %182, i64 %32, i32 1, i64 1
  %184 = load ptr, ptr %19, align 8, !tbaa !97
  %185 = getelementptr inbounds %struct.storable_picture, ptr %184, i64 0, i32 35
  %186 = load ptr, ptr %185, align 8, !tbaa !152
  %187 = getelementptr inbounds ptr, ptr %186, i64 %23
  %188 = load ptr, ptr %187, align 8, !tbaa !75
  %189 = getelementptr inbounds %struct.pic_motion_params, ptr %188, i64 %32, i32 1, i64 1
  %190 = load i32, ptr %189, align 4
  store i32 %190, ptr %183, align 4
  %191 = load ptr, ptr %19, align 8, !tbaa !97
  %192 = getelementptr inbounds %struct.storable_picture, ptr %191, i64 0, i32 35
  %193 = load ptr, ptr %192, align 8, !tbaa !152
  %194 = getelementptr inbounds ptr, ptr %193, i64 %23
  %195 = load ptr, ptr %194, align 8, !tbaa !75
  %196 = getelementptr inbounds %struct.pic_motion_params, ptr %195, i64 %32, i32 2
  %197 = load i8, ptr %196, align 8, !tbaa !161
  %198 = load ptr, ptr %5, align 8, !tbaa !95
  %199 = getelementptr inbounds %struct.storable_picture, ptr %198, i64 0, i32 35
  %200 = load ptr, ptr %199, align 8, !tbaa !152
  %201 = getelementptr inbounds ptr, ptr %200, i64 %30
  %202 = load ptr, ptr %201, align 8, !tbaa !75
  %203 = getelementptr inbounds %struct.pic_motion_params, ptr %202, i64 %32, i32 2
  store i8 %197, ptr %203, align 8, !tbaa !161
  %204 = load ptr, ptr %19, align 8, !tbaa !97
  %205 = getelementptr inbounds %struct.storable_picture, ptr %204, i64 0, i32 35
  %206 = load ptr, ptr %205, align 8, !tbaa !152
  %207 = getelementptr inbounds ptr, ptr %206, i64 %23
  %208 = load ptr, ptr %207, align 8, !tbaa !75
  %209 = getelementptr inbounds %struct.pic_motion_params, ptr %208, i64 %32, i32 2, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !161
  %211 = load ptr, ptr %5, align 8, !tbaa !95
  %212 = getelementptr inbounds %struct.storable_picture, ptr %211, i64 0, i32 35
  %213 = load ptr, ptr %212, align 8, !tbaa !152
  %214 = getelementptr inbounds ptr, ptr %213, i64 %30
  %215 = load ptr, ptr %214, align 8, !tbaa !75
  %216 = getelementptr inbounds %struct.pic_motion_params, ptr %215, i64 %32, i32 2, i64 1
  store i8 %210, ptr %216, align 1, !tbaa !161
  %217 = load ptr, ptr %19, align 8, !tbaa !97
  %218 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 74
  %219 = load i8, ptr %218, align 8, !tbaa !161
  %220 = icmp sgt i8 %219, 0
  %221 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 35
  %222 = load ptr, ptr %221, align 8, !tbaa !152
  %223 = getelementptr inbounds ptr, ptr %222, i64 %23
  %224 = load ptr, ptr %223, align 8, !tbaa !75
  %225 = getelementptr inbounds %struct.pic_motion_params, ptr %224, i64 %32, i32 2
  %226 = load i8, ptr %225, align 8, !tbaa !161
  %227 = icmp sgt i8 %226, -1
  br i1 %220, label %228, label %253

228:                                              ; preds = %157
  br i1 %227, label %229, label %235

229:                                              ; preds = %228
  %230 = zext nneg i8 %226 to i64
  %231 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 75
  %232 = load ptr, ptr %231, align 8, !tbaa !75
  %233 = getelementptr inbounds ptr, ptr %232, i64 %230
  %234 = load ptr, ptr %233, align 8, !tbaa !75
  br label %235

235:                                              ; preds = %228, %229
  %236 = phi ptr [ %234, %229 ], [ null, %228 ]
  %237 = load ptr, ptr %5, align 8, !tbaa !95
  %238 = getelementptr inbounds %struct.storable_picture, ptr %237, i64 0, i32 35
  %239 = load ptr, ptr %238, align 8, !tbaa !152
  %240 = getelementptr inbounds ptr, ptr %239, i64 %30
  %241 = load ptr, ptr %240, align 8, !tbaa !75
  %242 = getelementptr inbounds %struct.pic_motion_params, ptr %241, i64 %32
  store ptr %236, ptr %242, align 8, !tbaa !75
  %243 = load ptr, ptr %19, align 8, !tbaa !97
  %244 = getelementptr inbounds %struct.storable_picture, ptr %243, i64 0, i32 35
  %245 = load ptr, ptr %244, align 8, !tbaa !152
  %246 = getelementptr inbounds ptr, ptr %245, i64 %23
  %247 = load ptr, ptr %246, align 8, !tbaa !75
  %248 = getelementptr inbounds %struct.pic_motion_params, ptr %247, i64 %32, i32 2, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !161
  %250 = icmp sgt i8 %249, -1
  br i1 %250, label %251, label %289

251:                                              ; preds = %235
  %252 = getelementptr inbounds %struct.storable_picture, ptr %243, i64 0, i32 75, i64 1
  br label %282

253:                                              ; preds = %157
  br i1 %227, label %254, label %262

254:                                              ; preds = %253
  %255 = zext nneg i8 %226 to i64
  %256 = load ptr, ptr %20, align 8, !tbaa !260
  %257 = load ptr, ptr %256, align 8, !tbaa !75
  %258 = getelementptr inbounds %struct.slice, ptr %257, i64 0, i32 56
  %259 = load ptr, ptr %258, align 8, !tbaa !75
  %260 = getelementptr inbounds ptr, ptr %259, i64 %255
  %261 = load ptr, ptr %260, align 8, !tbaa !75
  br label %262

262:                                              ; preds = %253, %254
  %263 = phi ptr [ %261, %254 ], [ null, %253 ]
  %264 = load ptr, ptr %5, align 8, !tbaa !95
  %265 = getelementptr inbounds %struct.storable_picture, ptr %264, i64 0, i32 35
  %266 = load ptr, ptr %265, align 8, !tbaa !152
  %267 = getelementptr inbounds ptr, ptr %266, i64 %30
  %268 = load ptr, ptr %267, align 8, !tbaa !75
  %269 = getelementptr inbounds %struct.pic_motion_params, ptr %268, i64 %32
  store ptr %263, ptr %269, align 8, !tbaa !75
  %270 = load ptr, ptr %19, align 8, !tbaa !97
  %271 = getelementptr inbounds %struct.storable_picture, ptr %270, i64 0, i32 35
  %272 = load ptr, ptr %271, align 8, !tbaa !152
  %273 = getelementptr inbounds ptr, ptr %272, i64 %23
  %274 = load ptr, ptr %273, align 8, !tbaa !75
  %275 = getelementptr inbounds %struct.pic_motion_params, ptr %274, i64 %32, i32 2, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !161
  %277 = icmp sgt i8 %276, -1
  br i1 %277, label %278, label %289

278:                                              ; preds = %262
  %279 = load ptr, ptr %21, align 8, !tbaa !260
  %280 = load ptr, ptr %279, align 8, !tbaa !75
  %281 = getelementptr inbounds %struct.slice, ptr %280, i64 0, i32 56, i64 1
  br label %282

282:                                              ; preds = %251, %278
  %283 = phi ptr [ %281, %278 ], [ %252, %251 ]
  %284 = phi i8 [ %276, %278 ], [ %249, %251 ]
  %285 = zext nneg i8 %284 to i64
  %286 = load ptr, ptr %283, align 8, !tbaa !75
  %287 = getelementptr inbounds ptr, ptr %286, i64 %285
  %288 = load ptr, ptr %287, align 8, !tbaa !75
  br label %289

289:                                              ; preds = %282, %262, %235
  %290 = phi ptr [ null, %235 ], [ null, %262 ], [ %288, %282 ]
  %291 = load ptr, ptr %5, align 8, !tbaa !95
  %292 = getelementptr inbounds %struct.storable_picture, ptr %291, i64 0, i32 35
  %293 = load ptr, ptr %292, align 8, !tbaa !152
  %294 = getelementptr inbounds ptr, ptr %293, i64 %30
  %295 = load ptr, ptr %294, align 8, !tbaa !75
  %296 = getelementptr inbounds %struct.pic_motion_params, ptr %295, i64 %32, i32 0, i64 1
  store ptr %290, ptr %296, align 8, !tbaa !75
  %297 = add nuw nsw i64 %32, 1
  %298 = load ptr, ptr %8, align 8, !tbaa !96
  %299 = getelementptr inbounds %struct.storable_picture, ptr %298, i64 0, i32 16
  %300 = load i32, ptr %299, align 8, !tbaa !135
  %301 = ashr i32 %300, 2
  %302 = sext i32 %301 to i64
  %303 = icmp slt i64 %297, %302
  br i1 %303, label %31, label %304, !llvm.loop !330

304:                                              ; preds = %289, %22
  %305 = add nuw nsw i64 %23, 1
  %306 = load ptr, ptr %8, align 8, !tbaa !96
  %307 = getelementptr inbounds %struct.storable_picture, ptr %306, i64 0, i32 17
  %308 = load i32, ptr %307, align 4, !tbaa !136
  %309 = ashr i32 %308, 2
  %310 = sext i32 %309 to i64
  %311 = icmp slt i64 %305, %310
  br i1 %311, label %22, label %312, !llvm.loop !331

312:                                              ; preds = %304, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_ref_pic_list_reordering_buffer(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !332
  switch i32 %4, label %5 [
    i32 2, label %29
    i32 4, label %29
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !200
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #21
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  store ptr %10, ptr %11, align 8, !tbaa !75
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #20
  br label %14

14:                                               ; preds = %13, %5
  %15 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #21
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  store ptr %15, ptr %16, align 8, !tbaa !75
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #20
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #21
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  store ptr %20, ptr %21, align 8, !tbaa !75
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @no_mem_exit(ptr noundef nonnull @.str.23) #20
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #21
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  store ptr %25, ptr %26, align 8, !tbaa !75
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  tail call void @no_mem_exit(ptr noundef nonnull @.str.24) #20
  br label %34

29:                                               ; preds = %1, %1
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  store ptr null, ptr %30, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  store ptr null, ptr %31, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  store ptr null, ptr %32, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  store ptr null, ptr %33, align 8, !tbaa !75
  br label %34

34:                                               ; preds = %24, %28, %29
  %35 = load i32, ptr %3, align 8, !tbaa !332
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !200
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #21
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !75
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  tail call void @no_mem_exit(ptr noundef nonnull @.str.25) #20
  br label %46

46:                                               ; preds = %45, %37
  %47 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #21
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  store ptr %47, ptr %48, align 8, !tbaa !75
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.26) #20
  br label %51

51:                                               ; preds = %50, %46
  %52 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #21
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  store ptr %52, ptr %53, align 8, !tbaa !75
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @no_mem_exit(ptr noundef nonnull @.str.27) #20
  br label %56

56:                                               ; preds = %55, %51
  %57 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #21
  %58 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  store ptr %57, ptr %58, align 8, !tbaa !75
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  tail call void @no_mem_exit(ptr noundef nonnull @.str.28) #20
  br label %66

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  store ptr null, ptr %62, align 8, !tbaa !75
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  store ptr null, ptr %63, align 8, !tbaa !75
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  store ptr null, ptr %64, align 8, !tbaa !75
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  store ptr null, ptr %65, align 8, !tbaa !75
  br label %66

66:                                               ; preds = %56, %60, %61
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_ref_pic_list_reordering_buffer(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #20
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #20
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef %13) #20
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %2, align 8, !tbaa !75
  store ptr null, ptr %7, align 8, !tbaa !75
  store ptr null, ptr %12, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef %18) #20
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef %23) #20
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #20
  br label %31

31:                                               ; preds = %30, %26
  store ptr null, ptr %17, align 8, !tbaa !75
  store ptr null, ptr %22, align 8, !tbaa !75
  store ptr null, ptr %27, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free(ptr noundef %33) #20
  br label %36

36:                                               ; preds = %35, %31
  store ptr null, ptr %32, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @free(ptr noundef %38) #20
  br label %41

41:                                               ; preds = %40, %36
  store ptr null, ptr %37, align 8, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fill_frame_num_gap(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !200
  %7 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !200
  store i32 0, ptr %7, align 4, !tbaa !200
  store i32 0, ptr %5, align 8, !tbaa !200
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  %11 = load i32, ptr %10, align 8, !tbaa !333
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %14 = load i32, ptr %13, align 8, !tbaa !251
  %15 = urem i32 %12, %14
  %16 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %17 = load i32, ptr %16, align 4, !tbaa !175
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %65, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %24 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 66
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %27 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %28 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  %29 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %30 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 5
  br label %31

31:                                               ; preds = %19, %52
  %32 = phi i32 [ %15, %19 ], [ %63, %52 ]
  %33 = load i32, ptr %20, align 4, !tbaa !80
  %34 = load i32, ptr %21, align 8, !tbaa !81
  %35 = load i32, ptr %22, align 4, !tbaa !82
  %36 = load i32, ptr %23, align 8, !tbaa !83
  %37 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 0, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36)
  %38 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 24
  store i32 1, ptr %38, align 8, !tbaa !144
  %39 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 7
  store i32 %32, ptr %39, align 4, !tbaa !177
  %40 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 5
  store i32 %32, ptr %40, align 4, !tbaa !128
  %41 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 13
  store i32 1, ptr %41, align 4, !tbaa !130
  %42 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 12
  store i32 1, ptr %42, align 8, !tbaa !131
  %43 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 11
  store i32 1, ptr %43, align 4, !tbaa !129
  %44 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 47
  store i32 0, ptr %44, align 8, !tbaa !266
  %45 = load i32, ptr %24, align 8, !tbaa !189
  %46 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 64
  store i32 %45, ptr %46, align 8, !tbaa !133
  store i32 %32, ptr %16, align 4, !tbaa !175
  %47 = load i32, ptr %25, align 4, !tbaa !334
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load ptr, ptr %26, align 8, !tbaa !260
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  tail call void @decode_poc(ptr noundef %0, ptr noundef %51) #20
  br label %52

52:                                               ; preds = %49, %31
  %53 = load i32, ptr %27, align 4, !tbaa !335
  %54 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 2
  store i32 %53, ptr %54, align 8, !tbaa !148
  %55 = load i32, ptr %28, align 8, !tbaa !336
  %56 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 3
  store i32 %55, ptr %56, align 4, !tbaa !147
  %57 = load i32, ptr %29, align 4, !tbaa !207
  %58 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 4
  store i32 %57, ptr %58, align 8, !tbaa !314
  %59 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 1
  store i32 %57, ptr %59, align 4, !tbaa !146
  %60 = load ptr, ptr %30, align 8, !tbaa !171
  tail call void @store_picture_in_dpb(ptr noundef %60, ptr noundef %37)
  store i32 %32, ptr %10, align 8, !tbaa !333
  %61 = add nsw i32 %32, 1
  %62 = load i32, ptr %13, align 8, !tbaa !251
  %63 = srem i32 %61, %62
  %64 = icmp eq i32 %17, %63
  br i1 %64, label %65, label %31, !llvm.loop !337

65:                                               ; preds = %52, %2
  store i32 %6, ptr %5, align 8, !tbaa !200
  store i32 %8, ptr %7, align 4, !tbaa !200
  store i32 %17, ptr %16, align 4, !tbaa !175
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #16

declare void @decode_poc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_colocated(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 4, !tbaa !338
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %83

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !339
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %83

11:                                               ; preds = %7
  %12 = shl nsw i32 %9, 2
  %13 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %14 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %15 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %11, %80
  %18 = phi i64 [ 0, %11 ], [ %81, %80 ]
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !161
  %21 = icmp sgt i8 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %17
  %23 = or disjoint i64 %18, 1
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.storable_picture, ptr %26, i64 0, i32 1
  %28 = getelementptr inbounds ptr, ptr %1, i64 %18
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = trunc i64 %18 to i32
  %31 = getelementptr inbounds ptr, ptr %1, i64 %18
  br label %32

32:                                               ; preds = %22, %73
  %33 = phi i64 [ 0, %22 ], [ %76, %73 ]
  switch i32 %30, label %40 [
    i32 0, label %34
    i32 2, label %37
  ]

34:                                               ; preds = %32
  %35 = load ptr, ptr %14, align 8, !tbaa !340
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 1
  br label %43

37:                                               ; preds = %32
  %38 = load ptr, ptr %13, align 8, !tbaa !340
  %39 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 2
  br label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %15, align 8, !tbaa !340
  %42 = getelementptr inbounds %struct.storable_picture, ptr %41, i64 0, i32 3
  br label %43

43:                                               ; preds = %37, %40, %34
  %44 = phi ptr [ %39, %37 ], [ %42, %40 ], [ %36, %34 ]
  %45 = load i32, ptr %27, align 4, !tbaa !146
  %46 = getelementptr inbounds ptr, ptr %29, i64 %33
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !146
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %73, label %51

51:                                               ; preds = %43
  %52 = load i32, ptr %44, align 4, !tbaa !200
  %53 = load ptr, ptr %31, align 8, !tbaa !75
  %54 = getelementptr inbounds ptr, ptr %53, i64 %33
  %55 = load ptr, ptr %54, align 8, !tbaa !75
  %56 = getelementptr inbounds %struct.storable_picture, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !146
  %58 = sub nsw i32 %52, %57
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 -128)
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 127)
  %61 = sub nsw i32 %45, %49
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 -128)
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 127)
  %64 = sdiv i32 %63, 2
  %65 = tail call i32 @llvm.abs.i32(i32 %64, i1 true)
  %66 = add nuw nsw i32 %65, 16384
  %67 = sdiv i32 %66, %63
  %68 = mul nsw i32 %67, %60
  %69 = add nsw i32 %68, 32
  %70 = ashr i32 %69, 6
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 -1024)
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 1023)
  br label %73

73:                                               ; preds = %43, %51
  %74 = phi i32 [ %72, %51 ], [ 9999, %43 ]
  %75 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 60, i64 %18, i64 %33
  store i32 %74, ptr %75, align 4, !tbaa !200
  %76 = add nuw nsw i64 %33, 1
  %77 = load i8, ptr %19, align 1, !tbaa !161
  %78 = sext i8 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %32, label %80, !llvm.loop !341

80:                                               ; preds = %73, %17
  %81 = add nuw nsw i64 %18, 2
  %82 = icmp ult i64 %18, %16
  br i1 %82, label %17, label %83, !llvm.loop !342

83:                                               ; preds = %80, %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 {
  %8 = icmp slt i32 %5, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 52
  %12 = load i32, ptr %11, align 8, !tbaa !251
  %13 = shl nsw i32 %12, 1
  %14 = add nsw i32 %13, %5
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi i32 [ %14, %9 ], [ %5, %7 ]
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %420, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %22 = icmp eq i32 %3, 0
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  %24 = ashr i32 %16, 1
  %25 = icmp eq i32 %1, 2
  %26 = icmp eq i32 %3, 0
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  %28 = ashr i32 %16, 1
  %29 = load ptr, ptr %21, align 8, !tbaa !72
  %30 = load i32, ptr %17, align 4, !tbaa !50
  %31 = zext i32 %30 to i64
  br label %32

32:                                               ; preds = %20, %417
  %33 = phi i64 [ 0, %20 ], [ %418, %417 ]
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !76
  %38 = icmp eq i32 %37, %6
  br i1 %38, label %39, label %417

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !203
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %417

43:                                               ; preds = %39
  switch i32 %1, label %417 [
    i32 1, label %44
    i32 2, label %231
  ]

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !184
  switch i32 %46, label %109 [
    i32 3, label %47
    i32 1, label %78
  ]

47:                                               ; preds = %44
  %48 = load i32, ptr %35, align 8, !tbaa !159
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 11
  store i32 0, ptr %56, align 4, !tbaa !129
  %57 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 10
  store i8 0, ptr %57, align 8, !tbaa !158
  br label %58

58:                                               ; preds = %55, %51, %47
  %59 = and i32 %48, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !97
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.storable_picture, ptr %63, i64 0, i32 11
  store i32 0, ptr %66, align 4, !tbaa !129
  %67 = getelementptr inbounds %struct.storable_picture, ptr %63, i64 0, i32 10
  store i8 0, ptr %67, align 8, !tbaa !158
  br label %68

68:                                               ; preds = %65, %61, %58
  %69 = icmp eq i32 %48, 3
  br i1 %69, label %70, label %228

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %72 = load ptr, ptr %71, align 8, !tbaa !96
  %73 = icmp eq ptr %72, null
  br i1 %73, label %223, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !97
  %77 = icmp eq ptr %76, null
  br i1 %77, label %223, label %216

78:                                               ; preds = %44
  %79 = load i32, ptr %35, align 8, !tbaa !159
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !96
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 11
  store i32 0, ptr %87, align 4, !tbaa !129
  %88 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 10
  store i8 0, ptr %88, align 8, !tbaa !158
  br label %89

89:                                               ; preds = %86, %82, %78
  %90 = and i32 %79, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %94 = load ptr, ptr %93, align 8, !tbaa !97
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.storable_picture, ptr %94, i64 0, i32 11
  store i32 0, ptr %97, align 4, !tbaa !129
  %98 = getelementptr inbounds %struct.storable_picture, ptr %94, i64 0, i32 10
  store i8 0, ptr %98, align 8, !tbaa !158
  br label %99

99:                                               ; preds = %96, %92, %89
  %100 = icmp eq i32 %79, 3
  br i1 %100, label %101, label %228

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %103 = load ptr, ptr %102, align 8, !tbaa !96
  %104 = icmp eq ptr %103, null
  br i1 %104, label %223, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %107 = load ptr, ptr %106, align 8, !tbaa !97
  %108 = icmp eq ptr %107, null
  br i1 %108, label %223, label %216

109:                                              ; preds = %44
  br i1 %22, label %181, label %110

110:                                              ; preds = %109
  %111 = load ptr, ptr %23, align 8, !tbaa !69
  %112 = icmp eq ptr %111, null
  br i1 %112, label %150, label %113

113:                                              ; preds = %110
  %114 = icmp eq ptr %111, %35
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.frame_store, ptr %111, i64 0, i32 5
  %117 = load i32, ptr %116, align 4, !tbaa !174
  %118 = icmp eq i32 %117, %4
  br i1 %118, label %230, label %119

119:                                              ; preds = %115, %113
  %120 = load i32, ptr %35, align 8, !tbaa !159
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %125 = load ptr, ptr %124, align 8, !tbaa !96
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 11
  store i32 0, ptr %128, align 4, !tbaa !129
  %129 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 10
  store i8 0, ptr %129, align 8, !tbaa !158
  br label %130

130:                                              ; preds = %127, %123, %119
  %131 = and i32 %120, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %135 = load ptr, ptr %134, align 8, !tbaa !97
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.storable_picture, ptr %135, i64 0, i32 11
  store i32 0, ptr %138, align 4, !tbaa !129
  %139 = getelementptr inbounds %struct.storable_picture, ptr %135, i64 0, i32 10
  store i8 0, ptr %139, align 8, !tbaa !158
  br label %140

140:                                              ; preds = %137, %133, %130
  %141 = icmp eq i32 %120, 3
  br i1 %141, label %142, label %228

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %144 = load ptr, ptr %143, align 8, !tbaa !96
  %145 = icmp eq ptr %144, null
  br i1 %145, label %223, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %148 = load ptr, ptr %147, align 8, !tbaa !97
  %149 = icmp eq ptr %148, null
  br i1 %149, label %223, label %216

150:                                              ; preds = %110
  %151 = load i32, ptr %35, align 8, !tbaa !159
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %156 = load ptr, ptr %155, align 8, !tbaa !96
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.storable_picture, ptr %156, i64 0, i32 11
  store i32 0, ptr %159, align 4, !tbaa !129
  %160 = getelementptr inbounds %struct.storable_picture, ptr %156, i64 0, i32 10
  store i8 0, ptr %160, align 8, !tbaa !158
  br label %161

161:                                              ; preds = %158, %154, %150
  %162 = and i32 %151, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %166 = load ptr, ptr %165, align 8, !tbaa !97
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.storable_picture, ptr %166, i64 0, i32 11
  store i32 0, ptr %169, align 4, !tbaa !129
  %170 = getelementptr inbounds %struct.storable_picture, ptr %166, i64 0, i32 10
  store i8 0, ptr %170, align 8, !tbaa !158
  br label %171

171:                                              ; preds = %168, %164, %161
  %172 = icmp eq i32 %151, 3
  br i1 %172, label %173, label %228

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %175 = load ptr, ptr %174, align 8, !tbaa !96
  %176 = icmp eq ptr %175, null
  br i1 %176, label %223, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %179 = load ptr, ptr %178, align 8, !tbaa !97
  %180 = icmp eq ptr %179, null
  br i1 %180, label %223, label %216

181:                                              ; preds = %109
  %182 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 5
  %183 = load i32, ptr %182, align 4, !tbaa !174
  %184 = icmp eq i32 %183, %24
  br i1 %184, label %230, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr %35, align 8, !tbaa !159
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %191 = load ptr, ptr %190, align 8, !tbaa !96
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.storable_picture, ptr %191, i64 0, i32 11
  store i32 0, ptr %194, align 4, !tbaa !129
  %195 = getelementptr inbounds %struct.storable_picture, ptr %191, i64 0, i32 10
  store i8 0, ptr %195, align 8, !tbaa !158
  br label %196

196:                                              ; preds = %193, %189, %185
  %197 = and i32 %186, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %201 = load ptr, ptr %200, align 8, !tbaa !97
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.storable_picture, ptr %201, i64 0, i32 11
  store i32 0, ptr %204, align 4, !tbaa !129
  %205 = getelementptr inbounds %struct.storable_picture, ptr %201, i64 0, i32 10
  store i8 0, ptr %205, align 8, !tbaa !158
  br label %206

206:                                              ; preds = %203, %199, %196
  %207 = icmp eq i32 %186, 3
  br i1 %207, label %208, label %228

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %210 = load ptr, ptr %209, align 8, !tbaa !96
  %211 = icmp eq ptr %210, null
  br i1 %211, label %223, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %214 = load ptr, ptr %213, align 8, !tbaa !97
  %215 = icmp eq ptr %214, null
  br i1 %215, label %223, label %216

216:                                              ; preds = %212, %177, %146, %105, %74
  %217 = phi ptr [ %72, %74 ], [ %103, %105 ], [ %144, %146 ], [ %175, %177 ], [ %210, %212 ]
  %218 = phi ptr [ %76, %74 ], [ %107, %105 ], [ %148, %146 ], [ %179, %177 ], [ %214, %212 ]
  %219 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 11
  store i32 0, ptr %219, align 4, !tbaa !129
  %220 = getelementptr inbounds %struct.storable_picture, ptr %217, i64 0, i32 10
  store i8 0, ptr %220, align 8, !tbaa !158
  %221 = getelementptr inbounds %struct.storable_picture, ptr %218, i64 0, i32 11
  store i32 0, ptr %221, align 4, !tbaa !129
  %222 = getelementptr inbounds %struct.storable_picture, ptr %218, i64 0, i32 10
  store i8 0, ptr %222, align 8, !tbaa !158
  br label %223

223:                                              ; preds = %216, %208, %212, %173, %177, %142, %146, %101, %105, %70, %74
  %224 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %225 = load ptr, ptr %224, align 8, !tbaa !95
  %226 = getelementptr inbounds %struct.storable_picture, ptr %225, i64 0, i32 11
  store i32 0, ptr %226, align 4, !tbaa !129
  %227 = getelementptr inbounds %struct.storable_picture, ptr %225, i64 0, i32 10
  store i8 0, ptr %227, align 8, !tbaa !158
  br label %228

228:                                              ; preds = %223, %206, %171, %140, %99, %68
  %229 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 1
  store i32 0, ptr %229, align 4, !tbaa !182
  store i32 0, ptr %45, align 8, !tbaa !184
  br label %230

230:                                              ; preds = %228, %115, %181
  br i1 %25, label %231, label %417

231:                                              ; preds = %43, %230
  %232 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !184
  switch i32 %233, label %296 [
    i32 3, label %234
    i32 2, label %265
  ]

234:                                              ; preds = %231
  %235 = load i32, ptr %35, align 8, !tbaa !159
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %240 = load ptr, ptr %239, align 8, !tbaa !96
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.storable_picture, ptr %240, i64 0, i32 11
  store i32 0, ptr %243, align 4, !tbaa !129
  %244 = getelementptr inbounds %struct.storable_picture, ptr %240, i64 0, i32 10
  store i8 0, ptr %244, align 8, !tbaa !158
  br label %245

245:                                              ; preds = %242, %238, %234
  %246 = and i32 %235, 2
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %250 = load ptr, ptr %249, align 8, !tbaa !97
  %251 = icmp eq ptr %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.storable_picture, ptr %250, i64 0, i32 11
  store i32 0, ptr %253, align 4, !tbaa !129
  %254 = getelementptr inbounds %struct.storable_picture, ptr %250, i64 0, i32 10
  store i8 0, ptr %254, align 8, !tbaa !158
  br label %255

255:                                              ; preds = %252, %248, %245
  %256 = icmp eq i32 %235, 3
  br i1 %256, label %257, label %415

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %259 = load ptr, ptr %258, align 8, !tbaa !96
  %260 = icmp eq ptr %259, null
  br i1 %260, label %410, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %263 = load ptr, ptr %262, align 8, !tbaa !97
  %264 = icmp eq ptr %263, null
  br i1 %264, label %410, label %403

265:                                              ; preds = %231
  %266 = load i32, ptr %35, align 8, !tbaa !159
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %271 = load ptr, ptr %270, align 8, !tbaa !96
  %272 = icmp eq ptr %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.storable_picture, ptr %271, i64 0, i32 11
  store i32 0, ptr %274, align 4, !tbaa !129
  %275 = getelementptr inbounds %struct.storable_picture, ptr %271, i64 0, i32 10
  store i8 0, ptr %275, align 8, !tbaa !158
  br label %276

276:                                              ; preds = %273, %269, %265
  %277 = and i32 %266, 2
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %281 = load ptr, ptr %280, align 8, !tbaa !97
  %282 = icmp eq ptr %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.storable_picture, ptr %281, i64 0, i32 11
  store i32 0, ptr %284, align 4, !tbaa !129
  %285 = getelementptr inbounds %struct.storable_picture, ptr %281, i64 0, i32 10
  store i8 0, ptr %285, align 8, !tbaa !158
  br label %286

286:                                              ; preds = %283, %279, %276
  %287 = icmp eq i32 %266, 3
  br i1 %287, label %288, label %415

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %290 = load ptr, ptr %289, align 8, !tbaa !96
  %291 = icmp eq ptr %290, null
  br i1 %291, label %410, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %294 = load ptr, ptr %293, align 8, !tbaa !97
  %295 = icmp eq ptr %294, null
  br i1 %295, label %410, label %403

296:                                              ; preds = %231
  br i1 %26, label %368, label %297

297:                                              ; preds = %296
  %298 = load ptr, ptr %27, align 8, !tbaa !69
  %299 = icmp eq ptr %298, null
  br i1 %299, label %337, label %300

300:                                              ; preds = %297
  %301 = icmp eq ptr %298, %35
  br i1 %301, label %302, label %306

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.frame_store, ptr %298, i64 0, i32 5
  %304 = load i32, ptr %303, align 4, !tbaa !174
  %305 = icmp eq i32 %304, %4
  br i1 %305, label %417, label %306

306:                                              ; preds = %302, %300
  %307 = load i32, ptr %35, align 8, !tbaa !159
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %312 = load ptr, ptr %311, align 8, !tbaa !96
  %313 = icmp eq ptr %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.storable_picture, ptr %312, i64 0, i32 11
  store i32 0, ptr %315, align 4, !tbaa !129
  %316 = getelementptr inbounds %struct.storable_picture, ptr %312, i64 0, i32 10
  store i8 0, ptr %316, align 8, !tbaa !158
  br label %317

317:                                              ; preds = %314, %310, %306
  %318 = and i32 %307, 2
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %322 = load ptr, ptr %321, align 8, !tbaa !97
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.storable_picture, ptr %322, i64 0, i32 11
  store i32 0, ptr %325, align 4, !tbaa !129
  %326 = getelementptr inbounds %struct.storable_picture, ptr %322, i64 0, i32 10
  store i8 0, ptr %326, align 8, !tbaa !158
  br label %327

327:                                              ; preds = %324, %320, %317
  %328 = icmp eq i32 %307, 3
  br i1 %328, label %329, label %415

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %331 = load ptr, ptr %330, align 8, !tbaa !96
  %332 = icmp eq ptr %331, null
  br i1 %332, label %410, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %335 = load ptr, ptr %334, align 8, !tbaa !97
  %336 = icmp eq ptr %335, null
  br i1 %336, label %410, label %403

337:                                              ; preds = %297
  %338 = load i32, ptr %35, align 8, !tbaa !159
  %339 = and i32 %338, 1
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %348, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %343 = load ptr, ptr %342, align 8, !tbaa !96
  %344 = icmp eq ptr %343, null
  br i1 %344, label %348, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.storable_picture, ptr %343, i64 0, i32 11
  store i32 0, ptr %346, align 4, !tbaa !129
  %347 = getelementptr inbounds %struct.storable_picture, ptr %343, i64 0, i32 10
  store i8 0, ptr %347, align 8, !tbaa !158
  br label %348

348:                                              ; preds = %345, %341, %337
  %349 = and i32 %338, 2
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %353 = load ptr, ptr %352, align 8, !tbaa !97
  %354 = icmp eq ptr %353, null
  br i1 %354, label %358, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.storable_picture, ptr %353, i64 0, i32 11
  store i32 0, ptr %356, align 4, !tbaa !129
  %357 = getelementptr inbounds %struct.storable_picture, ptr %353, i64 0, i32 10
  store i8 0, ptr %357, align 8, !tbaa !158
  br label %358

358:                                              ; preds = %355, %351, %348
  %359 = icmp eq i32 %338, 3
  br i1 %359, label %360, label %415

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %362 = load ptr, ptr %361, align 8, !tbaa !96
  %363 = icmp eq ptr %362, null
  br i1 %363, label %410, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %366 = load ptr, ptr %365, align 8, !tbaa !97
  %367 = icmp eq ptr %366, null
  br i1 %367, label %410, label %403

368:                                              ; preds = %296
  %369 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 5
  %370 = load i32, ptr %369, align 4, !tbaa !174
  %371 = icmp eq i32 %370, %28
  br i1 %371, label %417, label %372

372:                                              ; preds = %368
  %373 = load i32, ptr %35, align 8, !tbaa !159
  %374 = and i32 %373, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %378 = load ptr, ptr %377, align 8, !tbaa !96
  %379 = icmp eq ptr %378, null
  br i1 %379, label %383, label %380

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.storable_picture, ptr %378, i64 0, i32 11
  store i32 0, ptr %381, align 4, !tbaa !129
  %382 = getelementptr inbounds %struct.storable_picture, ptr %378, i64 0, i32 10
  store i8 0, ptr %382, align 8, !tbaa !158
  br label %383

383:                                              ; preds = %380, %376, %372
  %384 = and i32 %373, 2
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %388 = load ptr, ptr %387, align 8, !tbaa !97
  %389 = icmp eq ptr %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.storable_picture, ptr %388, i64 0, i32 11
  store i32 0, ptr %391, align 4, !tbaa !129
  %392 = getelementptr inbounds %struct.storable_picture, ptr %388, i64 0, i32 10
  store i8 0, ptr %392, align 8, !tbaa !158
  br label %393

393:                                              ; preds = %390, %386, %383
  %394 = icmp eq i32 %373, 3
  br i1 %394, label %395, label %415

395:                                              ; preds = %393
  %396 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 13
  %397 = load ptr, ptr %396, align 8, !tbaa !96
  %398 = icmp eq ptr %397, null
  br i1 %398, label %410, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 14
  %401 = load ptr, ptr %400, align 8, !tbaa !97
  %402 = icmp eq ptr %401, null
  br i1 %402, label %410, label %403

403:                                              ; preds = %399, %364, %333, %292, %261
  %404 = phi ptr [ %259, %261 ], [ %290, %292 ], [ %331, %333 ], [ %362, %364 ], [ %397, %399 ]
  %405 = phi ptr [ %263, %261 ], [ %294, %292 ], [ %335, %333 ], [ %366, %364 ], [ %401, %399 ]
  %406 = getelementptr inbounds %struct.storable_picture, ptr %404, i64 0, i32 11
  store i32 0, ptr %406, align 4, !tbaa !129
  %407 = getelementptr inbounds %struct.storable_picture, ptr %404, i64 0, i32 10
  store i8 0, ptr %407, align 8, !tbaa !158
  %408 = getelementptr inbounds %struct.storable_picture, ptr %405, i64 0, i32 11
  store i32 0, ptr %408, align 4, !tbaa !129
  %409 = getelementptr inbounds %struct.storable_picture, ptr %405, i64 0, i32 10
  store i8 0, ptr %409, align 8, !tbaa !158
  br label %410

410:                                              ; preds = %403, %395, %399, %360, %364, %329, %333, %288, %292, %257, %261
  %411 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %412 = load ptr, ptr %411, align 8, !tbaa !95
  %413 = getelementptr inbounds %struct.storable_picture, ptr %412, i64 0, i32 11
  store i32 0, ptr %413, align 4, !tbaa !129
  %414 = getelementptr inbounds %struct.storable_picture, ptr %412, i64 0, i32 10
  store i8 0, ptr %414, align 8, !tbaa !158
  br label %415

415:                                              ; preds = %410, %393, %358, %327, %286, %255
  %416 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 1
  store i32 0, ptr %416, align 4, !tbaa !182
  store i32 0, ptr %232, align 8, !tbaa !184
  br label %417

417:                                              ; preds = %415, %43, %32, %230, %368, %302, %39
  %418 = add nuw nsw i64 %33, 1
  %419 = icmp ult i64 %418, %31
  br i1 %419, label %32, label %420, !llvm.loop !343

420:                                              ; preds = %417, %15
  ret void
}

declare void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_frame_from_dpb(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load i32, ptr %7, align 8, !tbaa !159
  switch i32 %8, label %22 [
    i32 3, label %9
    i32 2, label %16
    i32 1, label %19
    i32 0, label %23
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  tail call void @free_storable_picture(ptr noundef %11)
  %12 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  tail call void @free_storable_picture(ptr noundef %13)
  %14 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  tail call void @free_storable_picture(ptr noundef %15)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  tail call void @free_storable_picture(ptr noundef %18)
  store ptr null, ptr %17, align 8, !tbaa !97
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  tail call void @free_storable_picture(ptr noundef %21)
  store ptr null, ptr %20, align 8, !tbaa !96
  br label %23

22:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.38, i32 noundef 500) #20
  br label %23

23:                                               ; preds = %22, %2, %19, %16, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %3, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 %5
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !68
  %29 = add i32 %28, -1
  %30 = icmp ugt i32 %29, %1
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = zext i32 %1 to i64
  %33 = zext i32 %29 to i64
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ %32, %31 ], [ %37, %34 ]
  %36 = load ptr, ptr %3, align 8, !tbaa !70
  %37 = add nuw nsw i64 %35, 1
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  %40 = getelementptr inbounds ptr, ptr %36, i64 %35
  store ptr %39, ptr %40, align 8, !tbaa !75
  %41 = icmp eq i64 %37, %33
  br i1 %41, label %42, label %34, !llvm.loop !344

42:                                               ; preds = %34, %23
  %43 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %3, align 8, !tbaa !70
  %45 = zext i32 %29 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  store ptr %26, ptr %46, align 8, !tbaa !75
  store i32 %29, ptr %43, align 4, !tbaa !68
  ret void
}

declare void @write_lost_ref_after_idr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @write_lost_non_ref_pic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 3128}
!35 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !36, i64 2060, !36, i64 2064, !36, i64 2068, !36, i64 2072, !36, i64 2076, !36, i64 2080, !36, i64 2084, !36, i64 2088, !36, i64 2092, !37, i64 2096, !36, i64 3120, !36, i64 3124, !36, i64 3128, !36, i64 3132, !36, i64 3136, !36, i64 3140, !36, i64 3144, !36, i64 3148, !36, i64 3152, !36, i64 3156, !36, i64 3160, !36, i64 3164, !36, i64 3168, !39, i64 3172, !36, i64 4120, !36, i64 4124}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 10, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !41, i64 80, !36, i64 492, !41, i64 496, !36, i64 908, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944}
!40 = !{!"short", !37, i64 0}
!41 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408}
!42 = !{!35, !36, i64 3132}
!43 = !{!35, !36, i64 3136}
!44 = !{!35, !36, i64 28}
!45 = !{!35, !36, i64 4}
!46 = !{!35, !36, i64 20}
!47 = !{!35, !36, i64 3168}
!48 = !{!35, !36, i64 4088}
!49 = !{!35, !36, i64 4116}
!50 = !{!51, !36, i64 52}
!51 = !{!"decoded_picture_buffer", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !36, i64 4160, !36, i64 4164, !52, i64 4168}
!52 = !{!"any pointer", !37, i64 0}
!53 = !{!51, !36, i64 48}
!54 = !{!51, !36, i64 4164}
!55 = !{!56, !52, i64 16}
!56 = !{!"video_par", !52, i64 0, !52, i64 8, !52, i64 16, !37, i64 24, !37, i64 132120, !52, i64 699416, !37, i64 699424, !36, i64 848672, !36, i64 848676, !36, i64 848680, !36, i64 848684, !52, i64 848688, !52, i64 848696, !52, i64 848704, !36, i64 848712, !36, i64 848716, !36, i64 848720, !36, i64 848724, !36, i64 848728, !52, i64 848736, !52, i64 848744, !37, i64 848752, !36, i64 848776, !36, i64 848780, !36, i64 848784, !36, i64 848788, !36, i64 848792, !52, i64 848800, !37, i64 848808, !52, i64 848832, !52, i64 848840, !37, i64 848848, !36, i64 848872, !36, i64 848876, !52, i64 848880, !52, i64 848888, !37, i64 848896, !36, i64 848920, !52, i64 848928, !52, i64 848936, !36, i64 848944, !36, i64 848948, !36, i64 848952, !36, i64 848956, !36, i64 848960, !36, i64 848964, !36, i64 848968, !36, i64 848972, !36, i64 848976, !36, i64 848980, !36, i64 848984, !36, i64 848988, !36, i64 848992, !36, i64 848996, !36, i64 849000, !36, i64 849004, !36, i64 849008, !36, i64 849012, !36, i64 849016, !36, i64 849020, !36, i64 849024, !36, i64 849028, !36, i64 849032, !36, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !36, i64 849052, !36, i64 849056, !37, i64 849060, !37, i64 849072, !36, i64 849084, !36, i64 849088, !36, i64 849092, !36, i64 849096, !36, i64 849100, !36, i64 849104, !36, i64 849108, !36, i64 849112, !36, i64 849116, !36, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !36, i64 849196, !36, i64 849200, !36, i64 849204, !36, i64 849208, !36, i64 849212, !36, i64 849216, !36, i64 849220, !36, i64 849224, !36, i64 849228, !36, i64 849232, !36, i64 849236, !36, i64 849240, !36, i64 849244, !36, i64 849248, !36, i64 849252, !36, i64 849256, !36, i64 849260, !36, i64 849264, !36, i64 849268, !36, i64 849272, !36, i64 849276, !36, i64 849280, !36, i64 849284, !52, i64 849288, !52, i64 849296, !57, i64 849304, !57, i64 849624, !57, i64 849944, !57, i64 850264, !57, i64 850584, !57, i64 850904, !57, i64 851224, !57, i64 851544, !36, i64 851864, !36, i64 851868, !36, i64 851872, !60, i64 851880, !36, i64 851888, !37, i64 851892, !36, i64 855988, !36, i64 855992, !36, i64 855996, !36, i64 856000, !36, i64 856004, !36, i64 856008, !36, i64 856012, !52, i64 856016, !52, i64 856024, !52, i64 856032, !52, i64 856040, !52, i64 856048, !37, i64 856056, !52, i64 856456, !37, i64 856464, !52, i64 856488, !52, i64 856496, !52, i64 856504, !36, i64 856512, !52, i64 856520, !37, i64 856528, !52, i64 856608, !52, i64 856616, !52, i64 856624, !52, i64 856632, !36, i64 856640, !36, i64 856644, !36, i64 856648, !52, i64 856656, !52, i64 856664, !37, i64 856672, !37, i64 856688, !52, i64 856704, !52, i64 856712, !36, i64 856720, !52, i64 856728, !52, i64 856736, !52, i64 856744, !52, i64 856752, !52, i64 856760, !52, i64 856768, !52, i64 856776, !52, i64 856784, !52, i64 856792, !52, i64 856800, !52, i64 856808, !52, i64 856816, !36, i64 856824, !52, i64 856832, !36, i64 856840, !36, i64 856844, !36, i64 856848, !36, i64 856852, !36, i64 856856, !36, i64 856860, !36, i64 856864, !52, i64 856872}
!57 = !{!"image_data", !58, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!58 = !{!"frame_format", !36, i64 0, !36, i64 4, !59, i64 8, !37, i64 16, !37, i64 28, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !36, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !36, i64 124, !36, i64 128}
!59 = !{!"double", !37, i64 0}
!60 = !{!"long", !37, i64 0}
!61 = !{!51, !52, i64 0}
!62 = !{!51, !36, i64 4160}
!63 = !{!56, !36, i64 849084}
!64 = !{i32 0, i32 -1}
!65 = !{!51, !36, i64 40}
!66 = !{!35, !36, i64 3120}
!67 = !{!35, !36, i64 4124}
!68 = !{!51, !36, i64 44}
!69 = !{!51, !52, i64 4168}
!70 = !{!51, !52, i64 16}
!71 = !{!51, !52, i64 24}
!72 = !{!51, !52, i64 32}
!73 = !{!74, !36, i64 36}
!74 = !{!"frame_store", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !52, i64 48, !52, i64 56, !52, i64 64, !36, i64 72, !37, i64 76, !37, i64 84}
!75 = !{!52, !52, i64 0}
!76 = !{!74, !36, i64 72}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!56, !36, i64 848780}
!81 = !{!56, !36, i64 848784}
!82 = !{!56, !36, i64 848788}
!83 = !{!56, !36, i64 848792}
!84 = !{!56, !52, i64 856488}
!85 = !{!86, !52, i64 224}
!86 = !{!"storable_picture", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !37, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !40, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !37, i64 160, !87, i64 184, !37, i64 192, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !37, i64 300, !36, i64 308, !52, i64 312, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !52, i64 336, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !52, i64 376, !36, i64 384, !36, i64 388, !37, i64 392, !37, i64 400}
!87 = !{!"pic_motion_params_old", !52, i64 0}
!88 = !{!86, !52, i64 232}
!89 = !{!86, !52, i64 240}
!90 = !{!51, !36, i64 56}
!91 = !{!51, !36, i64 60}
!92 = !{!56, !36, i64 849028}
!93 = !{!56, !36, i64 849240}
!94 = !{!56, !52, i64 856048}
!95 = !{!74, !52, i64 48}
!96 = !{!74, !52, i64 56}
!97 = !{!74, !52, i64 64}
!98 = distinct !{!98, !78, !79}
!99 = !{!100, !36, i64 4268}
!100 = !{!"", !35, i64 0, !36, i64 4128, !36, i64 4132, !52, i64 4136, !52, i64 4144, !52, i64 4152, !52, i64 4160, !52, i64 4168, !52, i64 4176, !52, i64 4184, !52, i64 4192, !52, i64 4200, !36, i64 4208, !52, i64 4216, !52, i64 4224, !52, i64 4232, !52, i64 4240, !52, i64 4248, !52, i64 4256, !36, i64 4264, !36, i64 4268, !101, i64 4272}
!101 = !{!"mvcvui_tag", !36, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !37, i64 96, !37, i64 97, !37, i64 98, !37, i64 100, !37, i64 228, !37, i64 356, !37, i64 388, !37, i64 389, !37, i64 390, !37, i64 391}
!102 = !{!100, !36, i64 32}
!103 = !{!100, !36, i64 4124}
!104 = !{!100, !36, i64 3168}
!105 = !{!100, !36, i64 4088}
!106 = !{!100, !36, i64 4116}
!107 = !{!35, !36, i64 0}
!108 = distinct !{!108, !78, !79}
!109 = !{!86, !36, i64 108}
!110 = !{!86, !52, i64 136}
!111 = !{!56, !36, i64 856844}
!112 = !{!56, !36, i64 856840}
!113 = !{!86, !36, i64 356}
!114 = !{!86, !36, i64 364}
!115 = !{!35, !36, i64 36}
!116 = !{!56, !36, i64 856852}
!117 = !{!56, !36, i64 856848}
!118 = !{!86, !36, i64 360}
!119 = !{!86, !36, i64 368}
!120 = !{!86, !36, i64 112}
!121 = !{!86, !36, i64 116}
!122 = !{!86, !36, i64 120}
!123 = !{!86, !36, i64 124}
!124 = !{!56, !36, i64 849280}
!125 = !{!86, !36, i64 56}
!126 = !{!87, !52, i64 0}
!127 = distinct !{!127, !78, !79}
!128 = !{!86, !36, i64 20}
!129 = !{!86, !36, i64 44}
!130 = !{!86, !36, i64 52}
!131 = !{!86, !36, i64 48}
!132 = !{!86, !40, i64 60}
!133 = !{!86, !36, i64 344}
!134 = !{!86, !36, i64 0}
!135 = !{!86, !36, i64 64}
!136 = !{!86, !36, i64 68}
!137 = !{!86, !36, i64 72}
!138 = !{!86, !36, i64 76}
!139 = !{!86, !36, i64 80}
!140 = !{!86, !36, i64 84}
!141 = !{!86, !36, i64 88}
!142 = !{!86, !36, i64 92}
!143 = !{!86, !52, i64 312}
!144 = !{!86, !36, i64 96}
!145 = !{!86, !36, i64 100}
!146 = !{!86, !36, i64 4}
!147 = !{!86, !36, i64 12}
!148 = !{!86, !36, i64 8}
!149 = !{!86, !36, i64 324}
!150 = distinct !{!150, !78, !79}
!151 = distinct !{!151, !78, !79}
!152 = !{!86, !52, i64 152}
!153 = distinct !{!153, !78, !79}
!154 = !{!86, !52, i64 128}
!155 = !{!86, !52, i64 216}
!156 = !{!86, !52, i64 336}
!157 = distinct !{!157, !78, !79}
!158 = !{!86, !37, i64 40}
!159 = !{!74, !36, i64 0}
!160 = !{ptr @is_long_ref, ptr @is_short_ref}
!161 = !{!37, !37, i64 0}
!162 = distinct !{!162, !78, !79}
!163 = distinct !{!163, !78, !79}
!164 = distinct !{!164, !78, !79}
!165 = distinct !{!165, !78, !79}
!166 = distinct !{!166, !78, !79}
!167 = distinct !{!167, !78, !79}
!168 = !{!169, !52, i64 0}
!169 = !{!"slice", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !36, i64 32, !52, i64 40, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !37, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !40, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !37, i64 136, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !52, i64 248, !37, i64 256, !37, i64 264, !52, i64 312, !52, i64 320, !52, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !36, i64 1176, !36, i64 1180, !36, i64 1184, !170, i64 1188, !40, i64 1220, !40, i64 1222, !40, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !52, i64 1248, !52, i64 1256, !52, i64 1264, !52, i64 1272, !52, i64 1280, !37, i64 1288, !52, i64 1352, !52, i64 1360, !52, i64 1368, !52, i64 1376, !52, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !36, i64 13264, !36, i64 13268, !40, i64 13272, !40, i64 13274, !40, i64 13276, !40, i64 13278, !52, i64 13280, !52, i64 13288, !52, i64 13296, !40, i64 13304, !40, i64 13306, !36, i64 13308, !36, i64 13312, !52, i64 13320, !52, i64 13328, !36, i64 13336, !37, i64 13340, !52, i64 13408, !52, i64 13416, !52, i64 13424, !52, i64 13432, !52, i64 13440, !52, i64 13448, !52, i64 13456, !52, i64 13464, !52, i64 13472, !52, i64 13480, !52, i64 13488, !52, i64 13496, !36, i64 13504, !52, i64 13512, !52, i64 13520, !52, i64 13528, !52, i64 13536, !52, i64 13544, !37, i64 13552}
!170 = !{!"nalunitheadermvcext_tag", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!171 = !{!169, !52, i64 40}
!172 = !{!35, !36, i64 2068}
!173 = !{!169, !36, i64 184}
!174 = !{!74, !36, i64 20}
!175 = !{!169, !36, i64 172}
!176 = !{!74, !36, i64 28}
!177 = !{!86, !36, i64 28}
!178 = distinct !{!178, !78, !79}
!179 = !{!86, !36, i64 36}
!180 = !{!86, !36, i64 32}
!181 = distinct !{!181, !78, !79}
!182 = !{!74, !36, i64 4}
!183 = distinct !{!183, !78, !79}
!184 = !{!74, !36, i64 8}
!185 = distinct !{!185, !78, !79}
!186 = !{!169, !36, i64 13308}
!187 = !{!169, !36, i64 13312}
!188 = !{!169, !36, i64 104}
!189 = !{!169, !36, i64 1176}
!190 = !{!169, !36, i64 1184}
!191 = distinct !{!191, !78, !79}
!192 = distinct !{!192, !78, !79}
!193 = distinct !{!193, !78, !79}
!194 = distinct !{!194, !78, !79}
!195 = !{!169, !36, i64 32}
!196 = !{!169, !52, i64 13320}
!197 = distinct !{!197, !78, !79}
!198 = distinct !{!198, !78, !79}
!199 = distinct !{!199, !78, !79}
!200 = !{!36, !36, i64 0}
!201 = distinct !{!201, !78, !79}
!202 = distinct !{!202, !78, !79}
!203 = !{!74, !36, i64 32}
!204 = !{!56, !52, i64 699416}
!205 = distinct !{!205, !78, !79}
!206 = distinct !{!206, !78, !79}
!207 = !{!169, !36, i64 76}
!208 = distinct !{!208, !78, !79}
!209 = distinct !{!209, !78, !79}
!210 = distinct !{!210, !78, !79}
!211 = distinct !{!211, !78, !79}
!212 = distinct !{!212, !78, !79}
!213 = !{!74, !36, i64 40}
!214 = distinct !{!214, !78, !79}
!215 = distinct !{!215, !78, !79}
!216 = distinct !{!216, !78, !79}
!217 = distinct !{!217, !78, !79}
!218 = distinct !{!218, !78, !79}
!219 = !{!169, !52, i64 13328}
!220 = distinct !{!220, !78, !79}
!221 = distinct !{!221, !78, !79}
!222 = distinct !{!222, !78, !79}
!223 = distinct !{!223, !78, !79}
!224 = !{!169, !36, i64 164}
!225 = distinct !{!225, !78, !79}
!226 = distinct !{!226, !78, !79}
!227 = distinct !{!227, !78, !79}
!228 = distinct !{!228, !78, !79}
!229 = distinct !{!229, !78, !79}
!230 = distinct !{!230, !78, !79}
!231 = distinct !{!231, !78, !79}
!232 = distinct !{!232, !78, !79}
!233 = distinct !{!233, !78, !79}
!234 = distinct !{!234, !78, !79}
!235 = distinct !{!235, !78, !79}
!236 = distinct !{!236, !78, !79}
!237 = distinct !{!237, !78, !79}
!238 = distinct !{!238, !78, !79}
!239 = distinct !{!239, !78, !79}
!240 = distinct !{!240, !78, !79}
!241 = distinct !{!241, !78, !79}
!242 = distinct !{!242, !78, !79}
!243 = distinct !{!243, !78, !79}
!244 = distinct !{!244, !78, !79}
!245 = distinct !{!245, !78, !79}
!246 = distinct !{!246, !78, !79}
!247 = distinct !{!247, !78, !79}
!248 = !{!56, !36, i64 848876}
!249 = distinct !{!249, !78, !79}
!250 = distinct !{!250, !78, !79}
!251 = !{!56, !36, i64 848992}
!252 = distinct !{!252, !78, !79}
!253 = distinct !{!253, !78, !79}
!254 = distinct !{!254, !78, !79}
!255 = distinct !{!255, !78, !79}
!256 = distinct !{!256, !78, !79}
!257 = distinct !{!257, !78, !79}
!258 = !{!56, !36, i64 849032}
!259 = !{!86, !36, i64 252}
!260 = !{!56, !52, i64 848736}
!261 = !{!86, !36, i64 256}
!262 = distinct !{!262, !78, !79}
!263 = distinct !{!263, !78, !79}
!264 = distinct !{!264, !78, !79}
!265 = !{!86, !36, i64 260}
!266 = !{!86, !36, i64 264}
!267 = !{!268, !36, i64 0}
!268 = !{!"DecRefPicMarking_s", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !52, i64 24}
!269 = !{!268, !52, i64 24}
!270 = !{!268, !36, i64 4}
!271 = distinct !{!271, !78, !79}
!272 = !{!268, !36, i64 8}
!273 = distinct !{!273, !78, !79}
!274 = !{!268, !36, i64 12}
!275 = distinct !{!275, !78, !79}
!276 = distinct !{!276, !78, !79}
!277 = distinct !{!277, !78, !79}
!278 = distinct !{!278, !78, !79}
!279 = !{!268, !36, i64 16}
!280 = distinct !{!280, !78, !79}
!281 = distinct !{!281, !78, !79}
!282 = distinct !{!282, !78, !79}
!283 = !{!74, !36, i64 12}
!284 = distinct !{!284, !78, !79}
!285 = distinct !{!285, !78, !79}
!286 = !{!74, !36, i64 44}
!287 = distinct !{!287, !78, !79}
!288 = distinct !{!288, !78, !79}
!289 = distinct !{!289, !78, !79}
!290 = !{!56, !36, i64 851888}
!291 = !{i32 0, i32 2}
!292 = distinct !{!292, !78, !79}
!293 = distinct !{!293, !78, !79}
!294 = !{!56, !36, i64 849244}
!295 = !{!56, !52, i64 0}
!296 = !{!86, !36, i64 348}
!297 = !{!86, !36, i64 352}
!298 = distinct !{!298, !78, !79}
!299 = distinct !{!299, !78, !79}
!300 = !{!86, !36, i64 24}
!301 = !{!74, !36, i64 24}
!302 = !{!56, !36, i64 855988}
!303 = !{!304, !36, i64 784}
!304 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !36, i64 768, !36, i64 772, !36, i64 776, !36, i64 780, !36, i64 784, !36, i64 788, !58, i64 792, !58, i64 928, !36, i64 1064, !36, i64 1068, !305, i64 1072, !305, i64 2040, !305, i64 3008, !36, i64 3976, !36, i64 3980, !36, i64 3984, !36, i64 3988, !36, i64 3992, !36, i64 3996, !36, i64 4000, !36, i64 4004, !36, i64 4008, !36, i64 4012}
!305 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !36, i64 768, !36, i64 772, !58, i64 776, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944, !36, i64 948, !36, i64 952, !52, i64 960}
!306 = distinct !{!306, !78, !79}
!307 = distinct !{!307, !78, !79}
!308 = distinct !{!308, !78, !79}
!309 = !{!86, !36, i64 272}
!310 = distinct !{!310, !78, !79}
!311 = distinct !{!311, !78, !79}
!312 = distinct !{!312, !78, !79}
!313 = distinct !{!313, !78, !79}
!314 = !{!86, !36, i64 16}
!315 = !{!86, !36, i64 268}
!316 = !{!86, !36, i64 388}
!317 = distinct !{!317, !78, !79}
!318 = distinct !{!318, !78, !79}
!319 = !{!86, !52, i64 184}
!320 = distinct !{!320, !78, !79}
!321 = distinct !{!321, !78, !79}
!322 = distinct !{!322, !78, !79}
!323 = distinct !{!323, !78, !79}
!324 = distinct !{!324, !78, !79}
!325 = !{!86, !36, i64 276}
!326 = !{!86, !36, i64 288}
!327 = !{!86, !36, i64 292}
!328 = !{!86, !36, i64 280}
!329 = !{!86, !36, i64 284}
!330 = distinct !{!330, !78, !79}
!331 = distinct !{!331, !78, !79}
!332 = !{!56, !36, i64 848776}
!333 = !{!56, !36, i64 848944}
!334 = !{!35, !36, i64 2072}
!335 = !{!169, !36, i64 68}
!336 = !{!169, !36, i64 72}
!337 = distinct !{!337, !78, !79}
!338 = !{!169, !36, i64 132}
!339 = !{!169, !36, i64 128}
!340 = !{!56, !52, i64 856456}
!341 = distinct !{!341, !78, !79}
!342 = distinct !{!342, !78, !79}
!343 = distinct !{!343, !78, !79}
!344 = distinct !{!344, !78, !79}

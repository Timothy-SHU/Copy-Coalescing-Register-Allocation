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
@.str.21 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l0\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0\00", align 1
@.str.34 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l0\00", align 1
@.str.36 = private unnamed_addr constant [68 x i8] c"alloc_ref_pic_list_reordering_buffer: reordering_of_pic_nums_idc_l1\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1\00", align 1
@.str.39 = private unnamed_addr constant [66 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_view_idx_minus1_l1\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Error: iVOIdx: %d is not less than 0\0A\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00", align 1
@str.43 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00", align 1
@str.44 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00", align 1
@str.45 = private unnamed_addr constant [48 x i8] c"A gap in frame number is found, try to fill it.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_dpb(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getDpbSize(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !6
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 29
  %6 = load i32, ptr %5, align 4, !tbaa !14
  %7 = add i32 %6, 1
  %8 = mul i32 %7, %4
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = shl i32 %8, %12
  %14 = mul i32 %13, 384
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !16
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
  %19 = load i32, ptr %18, align 4, !tbaa !17
  %20 = icmp ugt i32 %19, 99
  %21 = icmp eq i32 %19, 44
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !18
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
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #23
  br label %42

42:                                               ; preds = %23, %1, %1, %27, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28
  %43 = phi i32 [ 0, %41 ], [ 70778880, %40 ], [ 42393600, %39 ], [ 13369344, %38 ], [ 12582912, %37 ], [ 12582912, %36 ], [ 7864320, %35 ], [ 6912000, %34 ], [ 3110400, %33 ], [ 3110400, %32 ], [ 1824768, %31 ], [ 912384, %30 ], [ 912384, %29 ], [ 912384, %28 ], [ 345600, %27 ], [ 152064, %1 ], [ 152064, %1 ], [ 152064, %23 ]
  %44 = sdiv i32 %43, %14
  %45 = tail call fastcc i32 @imin(i32 noundef %44, i32 noundef 16) #24
  %46 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 38
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 39, i32 26
  %51 = load i32, ptr %50, align 4, !tbaa !20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 39, i32 33
  %55 = load i32, ptr %54, align 4, !tbaa !21
  %56 = icmp sgt i32 %55, %45
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #23
  %58 = load i32, ptr %54, align 4, !tbaa !21
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %58, %57 ], [ %55, %53 ]
  %61 = tail call fastcc i32 @imax(i32 noundef 1, i32 noundef %60) #24
  br label %62

62:                                               ; preds = %59, %49, %42
  %63 = phi i32 [ %61, %59 ], [ %45, %49 ], [ %45, %42 ]
  ret i32 %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_num_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !22
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !25
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = tail call fastcc i32 @imax(i32 noundef 1, i32 noundef %8) #24
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #23
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_dpb(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  store ptr %0, ptr %1, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @free_dpb(ptr noundef nonnull %1) #24
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 71
  %11 = load i32, ptr %10, align 4, !tbaa !35
  switch i32 %11, label %15 [
    i32 118, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %0) #24, !range !36
  %14 = add nsw i32 %13, 2
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 @getDpbSize(ptr noundef %4) #24
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  store i32 %18, ptr %19, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !17
  switch i32 %21, label %26 [
    i32 118, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %24 = shl i32 %18, 1
  %25 = add i32 %24, 2
  store i32 %25, ptr %23, align 8, !tbaa !37
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i32 [ %18, %17 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 26
  %29 = load i32, ptr %28, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 13
  store i32 %29, ptr %30, align 4, !tbaa !26
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 41
  %32 = load i32, ptr %31, align 4, !tbaa !39
  %33 = icmp ult i32 %32, %29
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 1000) #23
  %35 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !37
  br label %37

37:                                               ; preds = %34, %26
  %38 = phi i32 [ %36, %34 ], [ %27, %26 ]
  %39 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 6
  store i32 0, ptr %39, align 4, !tbaa !40
  %40 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 14
  store ptr null, ptr %40, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 7
  store i32 0, ptr %41, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 8
  store i32 0, ptr %42, align 4, !tbaa !22
  %43 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %44 = zext i32 %38 to i64
  %45 = tail call noalias ptr @calloc(i64 noundef %44, i64 noundef 8) #25
  %46 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !42
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #23
  %49 = load i32, ptr %43, align 8, !tbaa !37
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %48, %37
  %52 = phi i64 [ %50, %48 ], [ %44, %37 ]
  %53 = phi i32 [ %49, %48 ], [ %38, %37 ]
  %54 = tail call noalias ptr @calloc(i64 noundef %52, i64 noundef 8) #25
  %55 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !43
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #23
  %58 = load i32, ptr %43, align 8, !tbaa !37
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i64 [ %59, %57 ], [ %52, %51 ]
  %62 = phi i32 [ %58, %57 ], [ %53, %51 ]
  %63 = tail call noalias ptr @calloc(i64 noundef %61, i64 noundef 8) #25
  %64 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 4
  store ptr %63, ptr %64, align 8, !tbaa !44
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #23
  %67 = load i32, ptr %43, align 8, !tbaa !37
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i32 [ %67, %66 ], [ %62, %60 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68, %71
  %72 = phi i64 [ %85, %71 ], [ 0, %68 ]
  %73 = tail call ptr @alloc_frame_store() #24
  %74 = load ptr, ptr %46, align 8, !tbaa !42
  %75 = getelementptr inbounds ptr, ptr %74, i64 %72
  store ptr %73, ptr %75, align 8, !tbaa !45
  %76 = load ptr, ptr %55, align 8, !tbaa !43
  %77 = getelementptr inbounds ptr, ptr %76, i64 %72
  store ptr null, ptr %77, align 8, !tbaa !45
  %78 = load ptr, ptr %64, align 8, !tbaa !44
  %79 = getelementptr inbounds ptr, ptr %78, i64 %72
  store ptr null, ptr %79, align 8, !tbaa !45
  %80 = load ptr, ptr %46, align 8, !tbaa !42
  %81 = getelementptr inbounds ptr, ptr %80, i64 %72
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  %83 = getelementptr inbounds %struct.frame_store, ptr %82, i64 0, i32 15
  store i32 -1, ptr %83, align 8, !tbaa !46
  %84 = getelementptr inbounds %struct.frame_store, ptr %82, i64 0, i32 16
  %85 = add nuw nsw i64 %72, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  %86 = load i32, ptr %43, align 8, !tbaa !37
  %87 = zext i32 %86 to i64
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %71, label %89, !llvm.loop !48

89:                                               ; preds = %71, %68
  %90 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %91 = load i32, ptr %90, align 4, !tbaa !50
  %92 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %93 = load i32, ptr %92, align 8, !tbaa !51
  %94 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %95 = load i32, ptr %94, align 4, !tbaa !52
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %97 = load i32, ptr %96, align 8, !tbaa !53
  %98 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 0, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #24
  %99 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  store ptr %98, ptr %99, align 8, !tbaa !54
  %100 = getelementptr inbounds %struct.storable_picture, ptr %98, i64 0, i32 40
  store ptr %98, ptr %100, align 8, !tbaa !55
  %101 = getelementptr inbounds %struct.storable_picture, ptr %98, i64 0, i32 41
  store ptr %98, ptr %101, align 8, !tbaa !58
  %102 = getelementptr inbounds %struct.storable_picture, ptr %98, i64 0, i32 42
  store ptr %98, ptr %102, align 8, !tbaa !59
  %103 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 9
  store i32 -2147483648, ptr %103, align 8, !tbaa !60
  %104 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 10
  store i32 -1, ptr %104, align 4, !tbaa !61
  %105 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  store i32 0, ptr %105, align 4, !tbaa !62
  store i32 1, ptr %5, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 95
  %107 = load i32, ptr %106, align 8, !tbaa !63
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %89
  %110 = tail call ptr @alloc_frame_store() #24
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 134
  store ptr %110, ptr %111, align 8, !tbaa !64
  br label %112

112:                                              ; preds = %109, %89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_dpb(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !37
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ %15, %10 ], [ 0, %6 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  tail call void @free_frame_store(ptr noundef %14) #24
  %15 = add nuw nsw i64 %11, 1
  %16 = load i32, ptr %7, align 8, !tbaa !37
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %10, label %19, !llvm.loop !65

19:                                               ; preds = %10
  %20 = load ptr, ptr %3, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi ptr [ %20, %19 ], [ %4, %6 ]
  tail call void @free(ptr noundef %22) #23
  store ptr null, ptr %3, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %21, %1
  %24 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %25) #23
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %30) #23
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 -2147483648, ptr %34, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  store i32 -1, ptr %35, align 4, !tbaa !61
  %36 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 12
  store i32 0, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 95
  %38 = load i32, ptr %37, align 8, !tbaa !63
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 134
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  tail call void @free_frame_store(ptr noundef %42) #24
  br label %43

43:                                               ; preds = %40, %33
  %44 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  tail call void @free_storable_picture(ptr noundef %45) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetMaxDecFrameBuffering(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %1, %65
  %5 = phi ptr [ %3, %1 ], [ %68, %65 ]
  %6 = phi ptr [ %2, %1 ], [ %67, %65 ]
  %7 = phi i32 [ 0, %1 ], [ %40, %65 ]
  %8 = phi i32 [ 0, %1 ], [ %66, %65 ]
  %9 = phi i32 [ 0, %1 ], [ %69, %65 ]
  %10 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 20
  %11 = load i32, ptr %10, align 4, !tbaa !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !69
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 41
  %19 = load i32, ptr %18, align 4, !tbaa !70
  %20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 38
  %21 = load i32, ptr %20, align 8, !tbaa !71
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 39, i32 26
  %25 = load i32, ptr %24, align 4, !tbaa !72
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 39, i32 33
  %29 = load i32, ptr %28, align 4, !tbaa !73
  %30 = icmp sgt i32 %29, %19
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #23
  %32 = load i32, ptr %28, align 4, !tbaa !73
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %29, %27 ]
  %35 = tail call fastcc i32 @imax(i32 noundef 1, i32 noundef %34) #24
  br label %36

36:                                               ; preds = %33, %23, %17
  %37 = phi i32 [ %35, %33 ], [ %19, %23 ], [ %19, %17 ]
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 %7)
  br label %39

39:                                               ; preds = %36, %13, %4
  %40 = phi i32 [ %7, %13 ], [ %7, %4 ], [ %38, %36 ]
  %41 = load i32, ptr %5, align 4, !tbaa !74
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 41
  %45 = load i32, ptr %44, align 4, !tbaa !39
  %46 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 38
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 26
  %51 = load i32, ptr %50, align 4, !tbaa !20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 33
  %55 = load i32, ptr %54, align 4, !tbaa !21
  %56 = icmp sgt i32 %55, %45
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #23
  %58 = load i32, ptr %54, align 4, !tbaa !21
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %58, %57 ], [ %55, %53 ]
  %61 = tail call fastcc i32 @imax(i32 noundef 1, i32 noundef %60) #24
  br label %62

62:                                               ; preds = %59, %49, %43
  %63 = phi i32 [ %61, %59 ], [ %45, %49 ], [ %45, %43 ]
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 %8)
  br label %65

65:                                               ; preds = %62, %39
  %66 = phi i32 [ %8, %39 ], [ %64, %62 ]
  %67 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 1
  %68 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 1
  %69 = add nuw nsw i32 %9, 1
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %4, !llvm.loop !75

71:                                               ; preds = %65
  %72 = icmp sgt i32 %66, 0
  %73 = icmp sgt i32 %40, 0
  %74 = select i1 %72, i1 %73, i1 false
  %75 = add nuw nsw i32 %40, %66
  %76 = select i1 %72, i32 %66, i32 %40
  %77 = shl nuw nsw i32 %76, 1
  %78 = select i1 %74, i32 %75, i32 %77
  ret i32 %78
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @alloc_frame_store() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #25
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #23
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @alloc_storable_picture(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = tail call noalias dereferenceable_or_null(416) ptr @calloc(i64 noundef 1, i64 noundef 416) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #23
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
  store i32 %21, ptr %22, align 4, !tbaa !76
  %23 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 32
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 173
  %25 = load i32, ptr %24, align 4, !tbaa !77
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 172
  %27 = load i32, ptr %26, align 8, !tbaa !78
  %28 = tail call i32 @get_mem2DpelWithPad(ptr noundef nonnull %23, i32 noundef %19, i32 noundef %2, i32 noundef %25, i32 noundef %27) #23
  %29 = load i32, ptr %26, align 8, !tbaa !78
  %30 = shl nsw i32 %29, 1
  %31 = add nsw i32 %30, %2
  %32 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 67
  store i32 %31, ptr %32, align 4, !tbaa !79
  %33 = load i32, ptr %24, align 4, !tbaa !77
  %34 = shl nsw i32 %33, 1
  %35 = add nsw i32 %34, %19
  %36 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 69
  store i32 %35, ptr %36, align 4, !tbaa !80
  %37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %8, i64 0, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  %42 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  %43 = load i32, ptr %42, align 4, !tbaa !82
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  %45 = load i32, ptr %44, align 8, !tbaa !83
  %46 = tail call i32 @get_mem3DpelWithPad(ptr noundef nonnull %41, i32 noundef 2, i32 noundef %18, i32 noundef %4, i32 noundef %43, i32 noundef %45) #23
  %47 = load i32, ptr %24, align 4, !tbaa !77
  %48 = load i32, ptr %26, align 8, !tbaa !78
  br label %49

49:                                               ; preds = %40, %17
  %50 = phi i32 [ %48, %40 ], [ %29, %17 ]
  %51 = phi i32 [ %47, %40 ], [ %33, %17 ]
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  %53 = load i32, ptr %52, align 8, !tbaa !83
  %54 = shl nsw i32 %53, 1
  %55 = add nsw i32 %54, %4
  %56 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 68
  store i32 %55, ptr %56, align 8, !tbaa !84
  %57 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  %58 = load i32, ptr %57, align 4, !tbaa !82
  %59 = shl nsw i32 %58, 1
  %60 = add nsw i32 %59, %18
  %61 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 70
  store i32 %60, ptr %61, align 8, !tbaa !85
  %62 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 28
  store i32 %51, ptr %62, align 8, !tbaa !86
  %63 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 29
  store i32 %50, ptr %63, align 4, !tbaa !87
  %64 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 30
  store i32 %58, ptr %64, align 8, !tbaa !88
  %65 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 31
  store i32 %53, ptr %65, align 4, !tbaa !89
  %66 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %67 = load i32, ptr %66, align 8, !tbaa !90
  %68 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 14
  store i32 %67, ptr %68, align 8, !tbaa !91
  %69 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 39
  %70 = sdiv i32 %19, 16
  %71 = sdiv i32 %2, 16
  %72 = tail call i32 @get_mem2Dshort(ptr noundef nonnull %69, i32 noundef %70, i32 noundef %71) #23
  %73 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 35
  %74 = sdiv i32 %19, 4
  %75 = sdiv i32 %2, 4
  %76 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %73, i32 noundef %74, i32 noundef %75) #23
  %77 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 37
  tail call void @alloc_pic_motion(ptr noundef nonnull %77, i32 noundef %74, i32 noundef %75) #24
  %78 = load i32, ptr %66, align 8, !tbaa !90
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %49, %80
  %81 = phi i64 [ %85, %80 ], [ 0, %49 ]
  %82 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 36, i64 %81
  %83 = tail call i32 @get_mem2Dmp(ptr noundef nonnull %82, i32 noundef %74, i32 noundef %75) #23
  %84 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 38, i64 %81
  tail call void @alloc_pic_motion(ptr noundef nonnull %84, i32 noundef %74, i32 noundef %75) #24
  %85 = add nuw nsw i64 %81, 1
  %86 = icmp eq i64 %85, 3
  br i1 %86, label %87, label %80, !llvm.loop !92

87:                                               ; preds = %80, %49
  %88 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 7
  %89 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 5
  store i32 0, ptr %89, align 4, !tbaa !93
  %90 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 11
  store i32 0, ptr %90, align 4, !tbaa !94
  %91 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 13
  store i32 0, ptr %91, align 4, !tbaa !95
  %92 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 12
  store i32 0, ptr %92, align 8, !tbaa !96
  %93 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 15
  store i16 0, ptr %93, align 4, !tbaa !97
  %94 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %88, i8 0, i64 13, i1 false)
  store i32 -1, ptr %94, align 8, !tbaa !98
  store i32 %1, ptr %9, align 8, !tbaa !99
  %95 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 16
  store i32 %2, ptr %95, align 8, !tbaa !100
  %96 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  store i32 %19, ptr %96, align 4, !tbaa !101
  %97 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 18
  store i32 %4, ptr %97, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 19
  store i32 %18, ptr %98, align 4, !tbaa !103
  %99 = add nsw i32 %2, -1
  %100 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 20
  store i32 %99, ptr %100, align 8, !tbaa !104
  %101 = add nsw i32 %19, -1
  %102 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 21
  store i32 %101, ptr %102, align 4, !tbaa !105
  %103 = add nsw i32 %4, -1
  %104 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 22
  store i32 %103, ptr %104, align 8, !tbaa !106
  %105 = add nsw i32 %18, -1
  %106 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 23
  store i32 %105, ptr %106, align 4, !tbaa !107
  %107 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  %108 = load ptr, ptr %107, align 8, !tbaa !54
  %109 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 40
  store ptr %108, ptr %109, align 8, !tbaa !55
  %110 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 41
  store ptr %108, ptr %110, align 8, !tbaa !58
  %111 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 42
  store ptr %108, ptr %111, align 8, !tbaa !59
  %112 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 58
  store ptr null, ptr %112, align 8, !tbaa !108
  %113 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 24
  store i32 0, ptr %113, align 8, !tbaa !109
  %114 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 25
  store i32 0, ptr %114, align 4, !tbaa !110
  %115 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 1
  store i32 0, ptr %115, align 4, !tbaa !111
  %116 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 3
  store i32 0, ptr %116, align 4, !tbaa !112
  %117 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 2
  store i32 0, ptr %117, align 8, !tbaa !113
  %118 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 60
  store i32 0, ptr %118, align 4, !tbaa !114
  %119 = load ptr, ptr %7, align 8, !tbaa !27
  %120 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %119, i64 0, i32 30
  %121 = load i32, ptr %120, align 4, !tbaa !15
  %122 = icmp eq i32 %121, 0
  %123 = and i1 %13, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %87, %131
  %125 = phi i1 [ false, %131 ], [ true, %87 ]
  %126 = phi i64 [ 1, %131 ], [ 0, %87 ]
  %127 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #25
  %128 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 75, i64 %126
  store ptr %127, ptr %128, align 8, !tbaa !45
  %129 = icmp eq ptr %127, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #23
  br label %131

131:                                              ; preds = %124, %130
  br i1 %125, label %124, label %132, !llvm.loop !115

132:                                              ; preds = %131, %87
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @re_init_dpb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 71
  %6 = load i32, ptr %5, align 4, !tbaa !35
  switch i32 %6, label %10 [
    i32 118, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %0) #24, !range !36
  %9 = add nsw i32 %8, 2
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @getDpbSize(ptr noundef %4) #24
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !17
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
  %22 = load i32, ptr %21, align 4, !tbaa !38
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 13
  store i32 %22, ptr %23, align 4, !tbaa !26
  %24 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !37
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 41
  %29 = load i32, ptr %28, align 4, !tbaa !39
  %30 = icmp ult i32 %29, %22
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 1000) #23
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = sext i32 %20 to i64
  %36 = shl nsw i64 %35, 3
  %37 = tail call ptr @realloc(ptr noundef %34, i64 noundef %36) #26
  store ptr %37, ptr %33, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #23
  br label %40

40:                                               ; preds = %39, %32
  %41 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = tail call ptr @realloc(ptr noundef %42, i64 noundef %36) #26
  store ptr %43, ptr %41, align 8, !tbaa !43
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #23
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = tail call ptr @realloc(ptr noundef %48, i64 noundef %36) #26
  store ptr %49, ptr %47, align 8, !tbaa !44
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #23
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, ptr %24, align 8, !tbaa !37
  %54 = icmp slt i32 %53, %20
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = sext i32 %53 to i64
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi i64 [ %56, %55 ], [ %71, %57 ]
  %59 = tail call ptr @alloc_frame_store() #24
  %60 = load ptr, ptr %33, align 8, !tbaa !42
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  store ptr %59, ptr %61, align 8, !tbaa !45
  %62 = load ptr, ptr %41, align 8, !tbaa !43
  %63 = getelementptr inbounds ptr, ptr %62, i64 %58
  store ptr null, ptr %63, align 8, !tbaa !45
  %64 = load ptr, ptr %47, align 8, !tbaa !44
  %65 = getelementptr inbounds ptr, ptr %64, i64 %58
  store ptr null, ptr %65, align 8, !tbaa !45
  %66 = load ptr, ptr %33, align 8, !tbaa !42
  %67 = getelementptr inbounds ptr, ptr %66, i64 %58
  %68 = load ptr, ptr %67, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.frame_store, ptr %68, i64 0, i32 15
  store i32 -1, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.frame_store, ptr %68, i64 0, i32 16
  %71 = add nsw i64 %58, 1
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %20, %72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %70, i8 0, i64 16, i1 false)
  br i1 %73, label %74, label %57, !llvm.loop !116

74:                                               ; preds = %57, %52
  store i32 %20, ptr %24, align 8, !tbaa !37
  br label %75

75:                                               ; preds = %74, %19
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_frame_store(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_storable_picture(ptr noundef nonnull %5) #24
  store ptr null, ptr %4, align 8, !tbaa !117
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free_storable_picture(ptr noundef nonnull %10) #24
  store ptr null, ptr %9, align 8, !tbaa !118
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free_storable_picture(ptr noundef nonnull %15) #24
  br label %18

18:                                               ; preds = %17, %13
  tail call void @free(ptr noundef nonnull %0) #23
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_storable_picture(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 35
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_mem2Dmp(ptr noundef nonnull %5) #23
  store ptr null, ptr %4, align 8, !tbaa !120
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 37
  tail call void @free_pic_motion(ptr noundef nonnull %9) #24
  %10 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8, %19
  %14 = phi i64 [ %21, %19 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 36, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @free_mem2Dmp(ptr noundef nonnull %16) #23
  store ptr null, ptr %15, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 38, i64 %14
  tail call void @free_pic_motion(ptr noundef nonnull %20) #24
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %13, !llvm.loop !121

23:                                               ; preds = %19, %8
  %24 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 32
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 28
  %29 = load i32, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 29
  %31 = load i32, ptr %30, align 4, !tbaa !87
  tail call void @free_mem2DpelWithPad(ptr noundef nonnull %25, i32 noundef %29, i32 noundef %31) #23
  store ptr null, ptr %24, align 8, !tbaa !122
  br label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %34 = load ptr, ptr %33, align 8, !tbaa !123
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 30
  %38 = load i32, ptr %37, align 8, !tbaa !88
  %39 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 31
  %40 = load i32, ptr %39, align 4, !tbaa !89
  tail call void @free_mem3DpelWithPad(ptr noundef nonnull %34, i32 noundef %38, i32 noundef %40) #23
  store ptr null, ptr %33, align 8, !tbaa !123
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 39
  %43 = load ptr, ptr %42, align 8, !tbaa !124
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free_mem2Dshort(ptr noundef nonnull %43) #23
  store ptr null, ptr %42, align 8, !tbaa !124
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 60
  %48 = load i32, ptr %47, align 4, !tbaa !114
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 63
  %52 = load ptr, ptr %51, align 8, !tbaa !125
  tail call void @free(ptr noundef %52) #23
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %61
  %55 = phi i1 [ false, %61 ], [ true, %53 ]
  %56 = phi i64 [ 1, %61 ], [ 0, %53 ]
  %57 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 75, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @free(ptr noundef nonnull %58) #23
  store ptr null, ptr %57, align 8, !tbaa !45
  br label %61

61:                                               ; preds = %54, %60
  br i1 %55, label %54, label %62, !llvm.loop !126

62:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %0) #23
  br label %63

63:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_pic_motion(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = mul nsw i32 %2, %1
  %5 = sext i32 %4 to i64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #25
  store ptr %6, ptr %0, align 8, !tbaa !127
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #23
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: optsize
declare i32 @get_mem2DpelWithPad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_mem3DpelWithPad(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_mem2Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_mem2Dmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_pic_motion(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  store ptr null, ptr %0, align 8, !tbaa !127
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @free_mem2Dmp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_mem2DpelWithPad(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_mem3DpelWithPad(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_mem2Dshort(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @is_short_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !128
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @is_long_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !128
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gen_pic_list_from_frame_list(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, ptr @is_short_ref, ptr @is_long_ref
  %9 = icmp eq i32 %0, 1
  br i1 %9, label %10, label %84

10:                                               ; preds = %6
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %164

12:                                               ; preds = %10, %79
  %13 = phi i32 [ %80, %79 ], [ 0, %10 ]
  %14 = phi i32 [ %47, %79 ], [ 0, %10 ]
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %42
  %19 = phi i64 [ %17, %16 ], [ %43, %42 ]
  %20 = getelementptr inbounds ptr, ptr %1, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = load i32, ptr %21, align 8, !tbaa !129
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.frame_store, ptr %21, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  %28 = tail call i32 %8(ptr noundef %27) #23, !callees !130
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds ptr, ptr %1, i64 %19
  %32 = trunc i64 %19 to i32
  %33 = load ptr, ptr %31, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  %36 = load i8, ptr %4, align 1, !tbaa !131
  %37 = sext i8 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %3, i64 %37
  store ptr %35, ptr %38, align 8, !tbaa !45
  %39 = load i8, ptr %4, align 1, !tbaa !131
  %40 = add i8 %39, 1
  store i8 %40, ptr %4, align 1, !tbaa !131
  %41 = add nsw i32 %32, 1
  br label %46

42:                                               ; preds = %18, %25
  %43 = add nsw i64 %19, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, %2
  br i1 %45, label %46, label %18, !llvm.loop !132

46:                                               ; preds = %42, %12, %30
  %47 = phi i32 [ %41, %30 ], [ %14, %12 ], [ %2, %42 ]
  %48 = icmp slt i32 %13, %2
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = sext i32 %13 to i64
  br label %51

51:                                               ; preds = %49, %75
  %52 = phi i64 [ %50, %49 ], [ %76, %75 ]
  %53 = getelementptr inbounds ptr, ptr %1, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = load i32, ptr %54, align 8, !tbaa !129
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.frame_store, ptr %54, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !119
  %61 = tail call i32 %8(ptr noundef %60) #23, !callees !130
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds ptr, ptr %1, i64 %52
  %65 = trunc i64 %52 to i32
  %66 = load ptr, ptr %64, align 8, !tbaa !45
  %67 = getelementptr inbounds %struct.frame_store, ptr %66, i64 0, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !119
  %69 = load i8, ptr %4, align 1, !tbaa !131
  %70 = sext i8 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %3, i64 %70
  store ptr %68, ptr %71, align 8, !tbaa !45
  %72 = load i8, ptr %4, align 1, !tbaa !131
  %73 = add i8 %72, 1
  store i8 %73, ptr %4, align 1, !tbaa !131
  %74 = add nsw i32 %65, 1
  br label %79

75:                                               ; preds = %51, %58
  %76 = add nsw i64 %52, 1
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %79, label %51, !llvm.loop !133

79:                                               ; preds = %75, %46, %63
  %80 = phi i32 [ %74, %63 ], [ %13, %46 ], [ %2, %75 ]
  %81 = icmp slt i32 %47, %2
  %82 = icmp slt i32 %80, %2
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %12, label %84, !llvm.loop !134

84:                                               ; preds = %79, %6
  %85 = phi i32 [ 0, %6 ], [ %47, %79 ]
  %86 = phi i32 [ 0, %6 ], [ %80, %79 ]
  %87 = icmp eq i32 %0, 2
  br i1 %87, label %88, label %164

88:                                               ; preds = %84
  %89 = icmp slt i32 %85, %2
  %90 = icmp slt i32 %86, %2
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %92, label %164

92:                                               ; preds = %88, %159
  %93 = phi i32 [ %127, %159 ], [ %86, %88 ]
  %94 = phi i32 [ %160, %159 ], [ %85, %88 ]
  %95 = icmp slt i32 %93, %2
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = sext i32 %93 to i64
  br label %98

98:                                               ; preds = %96, %122
  %99 = phi i64 [ %97, %96 ], [ %123, %122 ]
  %100 = getelementptr inbounds ptr, ptr %1, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !45
  %102 = load i32, ptr %101, align 8, !tbaa !129
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.frame_store, ptr %101, i64 0, i32 14
  %107 = load ptr, ptr %106, align 8, !tbaa !119
  %108 = tail call i32 %8(ptr noundef %107) #23, !callees !130
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds ptr, ptr %1, i64 %99
  %112 = trunc i64 %99 to i32
  %113 = load ptr, ptr %111, align 8, !tbaa !45
  %114 = getelementptr inbounds %struct.frame_store, ptr %113, i64 0, i32 14
  %115 = load ptr, ptr %114, align 8, !tbaa !119
  %116 = load i8, ptr %4, align 1, !tbaa !131
  %117 = sext i8 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %3, i64 %117
  store ptr %115, ptr %118, align 8, !tbaa !45
  %119 = load i8, ptr %4, align 1, !tbaa !131
  %120 = add i8 %119, 1
  store i8 %120, ptr %4, align 1, !tbaa !131
  %121 = add nsw i32 %112, 1
  br label %126

122:                                              ; preds = %98, %105
  %123 = add nsw i64 %99, 1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, %2
  br i1 %125, label %126, label %98, !llvm.loop !135

126:                                              ; preds = %122, %92, %110
  %127 = phi i32 [ %121, %110 ], [ %93, %92 ], [ %2, %122 ]
  %128 = icmp slt i32 %94, %2
  br i1 %128, label %129, label %159

129:                                              ; preds = %126
  %130 = sext i32 %94 to i64
  br label %131

131:                                              ; preds = %129, %155
  %132 = phi i64 [ %130, %129 ], [ %156, %155 ]
  %133 = getelementptr inbounds ptr, ptr %1, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = load i32, ptr %134, align 8, !tbaa !129
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %155, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.frame_store, ptr %134, i64 0, i32 13
  %140 = load ptr, ptr %139, align 8, !tbaa !118
  %141 = tail call i32 %8(ptr noundef %140) #23, !callees !130
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds ptr, ptr %1, i64 %132
  %145 = trunc i64 %132 to i32
  %146 = load ptr, ptr %144, align 8, !tbaa !45
  %147 = getelementptr inbounds %struct.frame_store, ptr %146, i64 0, i32 13
  %148 = load ptr, ptr %147, align 8, !tbaa !118
  %149 = load i8, ptr %4, align 1, !tbaa !131
  %150 = sext i8 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %3, i64 %150
  store ptr %148, ptr %151, align 8, !tbaa !45
  %152 = load i8, ptr %4, align 1, !tbaa !131
  %153 = add i8 %152, 1
  store i8 %153, ptr %4, align 1, !tbaa !131
  %154 = add nsw i32 %145, 1
  br label %159

155:                                              ; preds = %131, %138
  %156 = add nsw i64 %132, 1
  %157 = trunc i64 %156 to i32
  %158 = icmp eq i32 %157, %2
  br i1 %158, label %159, label %131, !llvm.loop !136

159:                                              ; preds = %155, %126, %143
  %160 = phi i32 [ %154, %143 ], [ %94, %126 ], [ %2, %155 ]
  %161 = icmp slt i32 %160, %2
  %162 = icmp slt i32 %127, %2
  %163 = select i1 %161, i1 true, i1 %162
  br i1 %163, label %92, label %164, !llvm.loop !137

164:                                              ; preds = %159, %10, %88, %84
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_pic_num(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !142
  %9 = add i32 %8, 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %12 = load i32, ptr %11, align 8, !tbaa !143
  switch i32 %12, label %77 [
    i32 0, label %13
    i32 1, label %78
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %21 = zext i32 %15 to i64
  br label %30

22:                                               ; preds = %55, %13
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %162, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = zext i32 %24 to i64
  br label %58

30:                                               ; preds = %17, %55
  %31 = phi i64 [ 0, %17 ], [ %56, %55 ]
  %32 = getelementptr inbounds ptr, ptr %19, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = load i32, ptr %33, align 8, !tbaa !129
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !117
  %39 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 11
  %40 = load i32, ptr %39, align 4, !tbaa !94
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 10
  %44 = load i8, ptr %43, align 8, !tbaa !128
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !144
  %49 = load i32, ptr %20, align 4, !tbaa !145
  %50 = icmp ugt i32 %48, %49
  %51 = select i1 %50, i32 %10, i32 0
  %52 = sub i32 %48, %51
  %53 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 7
  store i32 %52, ptr %54, align 4, !tbaa !146
  br label %55

55:                                               ; preds = %30, %46, %42, %36
  %56 = add nuw nsw i64 %31, 1
  %57 = icmp eq i64 %56, %21
  br i1 %57, label %22, label %30, !llvm.loop !147

58:                                               ; preds = %26, %74
  %59 = phi i64 [ 0, %26 ], [ %75, %74 ]
  %60 = getelementptr inbounds ptr, ptr %28, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = load i32, ptr %61, align 8, !tbaa !129
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.frame_store, ptr %61, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !117
  %67 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 10
  %68 = load i8, ptr %67, align 8, !tbaa !128
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 9
  %72 = load i32, ptr %71, align 4, !tbaa !148
  %73 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 8
  store i32 %72, ptr %73, align 8, !tbaa !149
  br label %74

74:                                               ; preds = %58, %70, %64
  %75 = add nuw nsw i64 %59, 1
  %76 = icmp eq i64 %75, %29
  br i1 %76, label %162, label %58, !llvm.loop !150

77:                                               ; preds = %1
  br label %78

78:                                               ; preds = %1, %77
  %79 = phi i32 [ 0, %77 ], [ %12, %1 ]
  %80 = phi i32 [ 1, %77 ], [ 0, %1 ]
  %81 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !25
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !43
  %87 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %88 = zext i32 %82 to i64
  br label %97

89:                                               ; preds = %129, %78
  %90 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !22
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %162, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !44
  %96 = zext i32 %91 to i64
  br label %132

97:                                               ; preds = %84, %129
  %98 = phi i64 [ 0, %84 ], [ %130, %129 ]
  %99 = getelementptr inbounds ptr, ptr %86, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !45
  %101 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !151
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %129, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !144
  %107 = load i32, ptr %87, align 4, !tbaa !145
  %108 = icmp ugt i32 %106, %107
  %109 = select i1 %108, i32 %10, i32 0
  %110 = sub i32 %106, %109
  %111 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 7
  store i32 %110, ptr %111, align 4
  %112 = and i32 %102, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %104
  %115 = shl nsw i32 %110, 1
  %116 = or disjoint i32 %115, %79
  %117 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 13
  %118 = load ptr, ptr %117, align 8, !tbaa !118
  %119 = getelementptr inbounds %struct.storable_picture, ptr %118, i64 0, i32 7
  store i32 %116, ptr %119, align 4, !tbaa !146
  br label %120

120:                                              ; preds = %114, %104
  %121 = and i32 %102, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = shl nsw i32 %110, 1
  %125 = or disjoint i32 %124, %80
  %126 = getelementptr inbounds %struct.frame_store, ptr %100, i64 0, i32 14
  %127 = load ptr, ptr %126, align 8, !tbaa !119
  %128 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 7
  store i32 %125, ptr %128, align 4, !tbaa !146
  br label %129

129:                                              ; preds = %97, %123, %120
  %130 = add nuw nsw i64 %98, 1
  %131 = icmp eq i64 %130, %88
  br i1 %131, label %89, label %97, !llvm.loop !152

132:                                              ; preds = %93, %159
  %133 = phi i64 [ 0, %93 ], [ %160, %159 ]
  %134 = getelementptr inbounds ptr, ptr %95, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !45
  %136 = getelementptr inbounds %struct.frame_store, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !153
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.frame_store, ptr %135, i64 0, i32 13
  %142 = load ptr, ptr %141, align 8, !tbaa !118
  %143 = getelementptr inbounds %struct.storable_picture, ptr %142, i64 0, i32 9
  %144 = load i32, ptr %143, align 4, !tbaa !148
  %145 = shl nsw i32 %144, 1
  %146 = or disjoint i32 %145, %79
  %147 = getelementptr inbounds %struct.storable_picture, ptr %142, i64 0, i32 8
  store i32 %146, ptr %147, align 8, !tbaa !149
  br label %148

148:                                              ; preds = %140, %132
  %149 = and i32 %137, 2
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.frame_store, ptr %135, i64 0, i32 14
  %153 = load ptr, ptr %152, align 8, !tbaa !119
  %154 = getelementptr inbounds %struct.storable_picture, ptr %153, i64 0, i32 9
  %155 = load i32, ptr %154, align 4, !tbaa !148
  %156 = shl nsw i32 %155, 1
  %157 = or disjoint i32 %156, %80
  %158 = getelementptr inbounds %struct.storable_picture, ptr %153, i64 0, i32 8
  store i32 %157, ptr %158, align 8, !tbaa !149
  br label %159

159:                                              ; preds = %148, %151
  %160 = add nuw nsw i64 %133, 1
  %161 = icmp eq i64 %160, %96
  br i1 %161, label %162, label %132, !llvm.loop !154

162:                                              ; preds = %74, %159, %22, %89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_lists_i_slice(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %2, align 4, !tbaa !155
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %3, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %4, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %5, align 1, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lists_p_slice(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !155
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !156
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !143
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %108

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !25
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
  %27 = load ptr, ptr %21, align 8, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = load i32, ptr %29, align 8, !tbaa !129
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !94
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  %40 = load i8, ptr %39, align 8, !tbaa !128
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 64
  %44 = load i32, ptr %43, align 8, !tbaa !98
  %45 = icmp eq i32 %44, %8
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr %22, align 8, !tbaa !45
  %48 = add nsw i32 %26, 1
  %49 = sext i32 %26 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %34, ptr %50, align 8, !tbaa !45
  br label %51

51:                                               ; preds = %24, %46, %42, %38, %32
  %52 = phi i32 [ %26, %38 ], [ %48, %46 ], [ %26, %42 ], [ %26, %32 ], [ %26, %24 ]
  %53 = add nuw nsw i64 %25, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %55, label %24, !llvm.loop !160

55:                                               ; preds = %51, %16
  %56 = phi i32 [ 0, %16 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = sext i32 %56 to i64
  tail call void @qsort(ptr noundef %58, i64 noundef %59, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #23
  %60 = trunc i32 %56 to i8
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %60, ptr %61, align 8, !tbaa !131
  %62 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %67 = zext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %91
  %69 = phi i64 [ 0, %65 ], [ %93, %91 ]
  %70 = phi i32 [ %56, %65 ], [ %92, %91 ]
  %71 = load ptr, ptr %66, align 8, !tbaa !44
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = load i32, ptr %73, align 8, !tbaa !129
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !117
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 10
  %80 = load i8, ptr %79, align 8, !tbaa !128
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 64
  %84 = load i32, ptr %83, align 8, !tbaa !98
  %85 = icmp eq i32 %84, %8
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %57, align 8, !tbaa !45
  %88 = add nsw i32 %70, 1
  %89 = sext i32 %70 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  store ptr %78, ptr %90, align 8, !tbaa !45
  br label %91

91:                                               ; preds = %68, %86, %82, %76
  %92 = phi i32 [ %88, %86 ], [ %70, %82 ], [ %70, %76 ], [ %70, %68 ]
  %93 = add nuw nsw i64 %69, 1
  %94 = icmp eq i64 %93, %67
  br i1 %94, label %95, label %68, !llvm.loop !161

95:                                               ; preds = %91
  %96 = load i8, ptr %61, align 8, !tbaa !131
  %97 = trunc i32 %92 to i8
  br label %98

98:                                               ; preds = %95, %55
  %99 = phi i8 [ %97, %95 ], [ %60, %55 ]
  %100 = phi i8 [ %96, %95 ], [ %60, %55 ]
  %101 = phi i32 [ %92, %95 ], [ %56, %55 ]
  %102 = load ptr, ptr %57, align 8, !tbaa !45
  %103 = sext i8 %100 to i64
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103
  %105 = sext i8 %100 to i32
  %106 = sub nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  tail call void @qsort(ptr noundef %104, i64 noundef %107, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  store i8 %99, ptr %61, align 8, !tbaa !131
  br label %185

108:                                              ; preds = %1
  %109 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !37
  %111 = zext i32 %110 to i64
  %112 = tail call noalias ptr @calloc(i64 noundef %111, i64 noundef 8) #25
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #23
  %115 = load i32, ptr %109, align 8, !tbaa !37
  %116 = zext i32 %115 to i64
  br label %117

117:                                              ; preds = %114, %108
  %118 = phi i64 [ %116, %114 ], [ %111, %108 ]
  %119 = tail call noalias ptr @calloc(i64 noundef %118, i64 noundef 8) #25
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #23
  br label %122

122:                                              ; preds = %121, %117
  %123 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !25
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %150, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %128 = zext i32 %124 to i64
  %129 = load ptr, ptr %127, align 8, !tbaa !43
  br label %130

130:                                              ; preds = %126, %146
  %131 = phi i64 [ 0, %126 ], [ %148, %146 ]
  %132 = phi i32 [ 0, %126 ], [ %147, %146 ]
  %133 = getelementptr inbounds ptr, ptr %129, i64 %131
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = getelementptr inbounds %struct.frame_store, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !151
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.frame_store, ptr %134, i64 0, i32 15
  %140 = load i32, ptr %139, align 8, !tbaa !46
  %141 = icmp eq i32 %140, %8
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = add nsw i32 %132, 1
  %144 = sext i32 %132 to i64
  %145 = getelementptr inbounds ptr, ptr %112, i64 %144
  store ptr %134, ptr %145, align 8, !tbaa !45
  br label %146

146:                                              ; preds = %130, %138, %142
  %147 = phi i32 [ %143, %142 ], [ %132, %138 ], [ %132, %130 ]
  %148 = add nuw nsw i64 %131, 1
  %149 = icmp eq i64 %148, %128
  br i1 %149, label %150, label %130, !llvm.loop !162

150:                                              ; preds = %146, %122
  %151 = phi i32 [ 0, %122 ], [ %147, %146 ]
  %152 = sext i32 %151 to i64
  tail call void @qsort(ptr noundef %112, i64 noundef %152, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #23
  %153 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %153, align 8, !tbaa !131
  %154 = load i32, ptr %13, align 8, !tbaa !143
  %155 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %156 = load ptr, ptr %155, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %154, ptr noundef %112, i32 noundef %151, ptr noundef %156, ptr noundef nonnull %153, i32 noundef 0) #24
  %157 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %158 = load i32, ptr %157, align 4, !tbaa !22
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %162 = zext i32 %158 to i64
  %163 = load ptr, ptr %161, align 8, !tbaa !44
  br label %164

164:                                              ; preds = %160, %176
  %165 = phi i64 [ 0, %160 ], [ %178, %176 ]
  %166 = phi i32 [ 0, %160 ], [ %177, %176 ]
  %167 = getelementptr inbounds ptr, ptr %163, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !45
  %169 = getelementptr inbounds %struct.frame_store, ptr %168, i64 0, i32 15
  %170 = load i32, ptr %169, align 8, !tbaa !46
  %171 = icmp eq i32 %170, %8
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = add nsw i32 %166, 1
  %174 = sext i32 %166 to i64
  %175 = getelementptr inbounds ptr, ptr %119, i64 %174
  store ptr %168, ptr %175, align 8, !tbaa !45
  br label %176

176:                                              ; preds = %164, %172
  %177 = phi i32 [ %173, %172 ], [ %166, %164 ]
  %178 = add nuw nsw i64 %165, 1
  %179 = icmp eq i64 %178, %162
  br i1 %179, label %180, label %164, !llvm.loop !163

180:                                              ; preds = %176, %150
  %181 = phi i32 [ 0, %150 ], [ %177, %176 ]
  %182 = sext i32 %181 to i64
  tail call void @qsort(ptr noundef %119, i64 noundef %182, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #23
  %183 = load i32, ptr %13, align 8, !tbaa !143
  %184 = load ptr, ptr %155, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %183, ptr noundef %119, i32 noundef %181, ptr noundef %184, ptr noundef nonnull %153, i32 noundef 1) #24
  tail call void @free(ptr noundef %112) #23
  tail call void @free(ptr noundef %119) #23
  br label %185

185:                                              ; preds = %180, %98
  %186 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %187 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %187, align 1, !tbaa !131
  %188 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !164
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %235

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %193 = load i32, ptr %192, align 8, !tbaa !37
  %194 = zext i32 %193 to i64
  %195 = tail call noalias ptr @calloc(i64 noundef %194, i64 noundef 8) #25
  %196 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %195, ptr %196, align 8, !tbaa !165
  %197 = icmp eq ptr %195, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #23
  br label %199

199:                                              ; preds = %198, %191
  %200 = load i32, ptr %13, align 8, !tbaa !143
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  %203 = load i8, ptr %186, align 8, !tbaa !131
  %204 = load ptr, ptr %196, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %204, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %205 = load i32, ptr %11, align 4, !tbaa !155
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %226, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %209 = sext i8 %203 to i64
  %210 = zext i32 %205 to i64
  br label %211

211:                                              ; preds = %207, %211
  %212 = phi i64 [ %209, %207 ], [ %220, %211 ]
  %213 = phi i64 [ 0, %207 ], [ %222, %211 ]
  %214 = load ptr, ptr %196, align 8, !tbaa !165
  %215 = getelementptr inbounds ptr, ptr %214, i64 %213
  %216 = load ptr, ptr %215, align 8, !tbaa !45
  %217 = getelementptr inbounds %struct.frame_store, ptr %216, i64 0, i32 12
  %218 = load ptr, ptr %217, align 8, !tbaa !117
  %219 = load ptr, ptr %208, align 8, !tbaa !45
  %220 = add nsw i64 %212, 1
  %221 = getelementptr inbounds ptr, ptr %219, i64 %212
  store ptr %218, ptr %221, align 8, !tbaa !45
  %222 = add nuw nsw i64 %213, 1
  %223 = icmp eq i64 %222, %210
  br i1 %223, label %224, label %211, !llvm.loop !166

224:                                              ; preds = %211
  %225 = trunc i64 %220 to i8
  br label %226

226:                                              ; preds = %224, %202
  %227 = phi i8 [ %203, %202 ], [ %225, %224 ]
  store i8 %227, ptr %186, align 8, !tbaa !131
  br label %235

228:                                              ; preds = %199
  %229 = load ptr, ptr %196, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %200, i32 noundef 0, ptr noundef %229, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %230 = load i32, ptr %13, align 8, !tbaa !143
  %231 = load ptr, ptr %196, align 8, !tbaa !165
  %232 = load i32, ptr %11, align 4, !tbaa !155
  %233 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %234 = load ptr, ptr %233, align 8, !tbaa !45
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %230, ptr noundef %231, i32 noundef %232, ptr noundef %234, ptr noundef nonnull %186) #24
  br label %235

235:                                              ; preds = %226, %228, %185
  %236 = load i8, ptr %186, align 8, !tbaa !131
  %237 = sext i8 %236 to i32
  %238 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %239 = load i32, ptr %238, align 8, !tbaa !167
  %240 = tail call fastcc i32 @imin(i32 noundef %237, i32 noundef %239) #24
  %241 = trunc i32 %240 to i8
  store i8 %241, ptr %186, align 8, !tbaa !131
  %242 = load i8, ptr %187, align 1, !tbaa !131
  %243 = sext i8 %242 to i32
  %244 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %245 = load i32, ptr %244, align 4, !tbaa !167
  %246 = tail call fastcc i32 @imin(i32 noundef %243, i32 noundef %245) #24
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr %187, align 1, !tbaa !131
  %248 = shl i32 %240, 24
  %249 = ashr exact i32 %248, 24
  %250 = icmp ult i32 %249, 33
  br i1 %250, label %251, label %265

251:                                              ; preds = %235
  %252 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %253 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %254 = zext nneg i32 %249 to i64
  %255 = load ptr, ptr %252, align 8, !tbaa !54
  br label %256

256:                                              ; preds = %251, %256
  %257 = phi i64 [ %254, %251 ], [ %260, %256 ]
  %258 = load ptr, ptr %253, align 8, !tbaa !45
  %259 = getelementptr inbounds ptr, ptr %258, i64 %257
  store ptr %255, ptr %259, align 8, !tbaa !45
  %260 = add nuw nsw i64 %257, 1
  %261 = and i64 %260, 4294967295
  %262 = icmp eq i64 %261, 33
  br i1 %262, label %263, label %256, !llvm.loop !168

263:                                              ; preds = %256
  %264 = load i8, ptr %187, align 1, !tbaa !131
  br label %265

265:                                              ; preds = %263, %235
  %266 = phi i8 [ %264, %263 ], [ %247, %235 ]
  %267 = icmp ult i8 %266, 33
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %270 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %271 = zext nneg i8 %266 to i64
  %272 = load ptr, ptr %269, align 8, !tbaa !54
  br label %273

273:                                              ; preds = %268, %273
  %274 = phi i64 [ %271, %268 ], [ %277, %273 ]
  %275 = load ptr, ptr %270, align 8, !tbaa !45
  %276 = getelementptr inbounds ptr, ptr %275, i64 %274
  store ptr %272, ptr %276, align 8, !tbaa !45
  %277 = add nuw nsw i64 %274, 1
  %278 = and i64 %277, 4294967295
  %279 = icmp eq i64 %278, 33
  br i1 %279, label %280, label %273, !llvm.loop !169

280:                                              ; preds = %273, %265
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !146
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !149
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !149
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !170
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !170
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !171
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !171
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @append_interview_list(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = load ptr, ptr %0, align 8, !tbaa !33
  %10 = tail call i32 @GetVOIdx(ptr noundef %9, i32 noundef %6) #23
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %10) #24
  br label %14

14:                                               ; preds = %12, %8
  %15 = icmp eq i32 %7, 0
  %16 = icmp eq i32 %2, 0
  %17 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  %19 = sext i32 %10 to i64
  br i1 %15, label %31, label %20

20:                                               ; preds = %14
  br i1 %16, label %26, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds i32, ptr %23, i64 %19
  %25 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 7
  br label %42

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !174
  %29 = getelementptr inbounds i32, ptr %28, i64 %19
  %30 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 5
  br label %42

31:                                               ; preds = %14
  br i1 %16, label %37, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = getelementptr inbounds i32, ptr %34, i64 %19
  %36 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 11
  br label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !176
  %40 = getelementptr inbounds i32, ptr %39, i64 %19
  %41 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %18, i64 0, i32 9
  br label %42

42:                                               ; preds = %32, %37, %21, %26
  %43 = phi ptr [ %36, %32 ], [ %41, %37 ], [ %25, %21 ], [ %30, %26 ]
  %44 = phi ptr [ %35, %32 ], [ %40, %37 ], [ %24, %21 ], [ %29, %26 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !45
  %46 = getelementptr inbounds ptr, ptr %45, i64 %19
  %47 = load i32, ptr %44, align 4, !tbaa !167
  %48 = load ptr, ptr %46, align 8, !tbaa !45
  %49 = icmp eq i32 %1, 2
  %50 = zext i1 %49 to i64
  %51 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !40
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %113, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  br label %56

56:                                               ; preds = %54, %108
  %57 = phi i32 [ %52, %54 ], [ %109, %108 ]
  %58 = phi i64 [ 0, %54 ], [ %110, %108 ]
  switch i32 %1, label %76 [
    i32 0, label %59
    i32 1, label %67
  ]

59:                                               ; preds = %56
  %60 = load ptr, ptr %55, align 8, !tbaa !42
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = load i32, ptr %62, align 8, !tbaa !129
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %108

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.frame_store, ptr %62, i64 0, i32 12
  br label %86

67:                                               ; preds = %56
  %68 = load ptr, ptr %55, align 8, !tbaa !42
  %69 = getelementptr inbounds ptr, ptr %68, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = load i32, ptr %70, align 8, !tbaa !129
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.frame_store, ptr %70, i64 0, i32 13
  br label %86

76:                                               ; preds = %56
  br i1 %49, label %77, label %108

77:                                               ; preds = %76
  %78 = load ptr, ptr %55, align 8, !tbaa !42
  %79 = getelementptr inbounds ptr, ptr %78, i64 %58
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = load i32, ptr %80, align 8, !tbaa !129
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.frame_store, ptr %80, i64 0, i32 14
  br label %86

86:                                               ; preds = %65, %84, %74
  %87 = phi ptr [ %66, %65 ], [ %85, %84 ], [ %75, %74 ]
  %88 = phi ptr [ %62, %65 ], [ %80, %84 ], [ %70, %74 ]
  %89 = load ptr, ptr %87, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !111
  %92 = getelementptr inbounds %struct.frame_store, ptr %88, i64 0, i32 16, i64 %50
  %93 = load i32, ptr %92, align 4, !tbaa !167
  %94 = icmp ne i32 %93, 0
  %95 = icmp eq i32 %91, %5
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %108

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.frame_store, ptr %88, i64 0, i32 15
  %99 = load i32, ptr %98, align 8, !tbaa !46
  %100 = tail call fastcc i32 @is_view_id_in_ref_view_list(i32 noundef %99, ptr noundef %48, i32 noundef %47) #24, !range !177
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load i32, ptr %4, align 4, !tbaa !167
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %3, i64 %104
  store ptr %88, ptr %105, align 8, !tbaa !45
  %106 = add nsw i32 %103, 1
  store i32 %106, ptr %4, align 4, !tbaa !167
  %107 = load i32, ptr %51, align 4, !tbaa !40
  br label %108

108:                                              ; preds = %76, %77, %67, %59, %86, %97, %102
  %109 = phi i32 [ %57, %76 ], [ %57, %77 ], [ %57, %67 ], [ %57, %59 ], [ %57, %86 ], [ %57, %97 ], [ %107, %102 ]
  %110 = add nuw nsw i64 %58, 1
  %111 = zext i32 %109 to i64
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %56, label %113, !llvm.loop !178

113:                                              ; preds = %108, %42
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #13 {
  switch i32 %0, label %42 [
    i32 1, label %6
    i32 2, label %24
  ]

6:                                                ; preds = %5
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %6
  %9 = zext nneg i32 %2 to i64
  %10 = load i8, ptr %4, align 1, !tbaa !131
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i8 [ %10, %8 ], [ %21, %11 ]
  %13 = phi i64 [ 0, %8 ], [ %22, %11 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = sext i8 %12 to i64
  %19 = getelementptr inbounds ptr, ptr %3, i64 %18
  store ptr %17, ptr %19, align 8, !tbaa !45
  %20 = load i8, ptr %4, align 1, !tbaa !131
  %21 = add i8 %20, 1
  store i8 %21, ptr %4, align 1, !tbaa !131
  %22 = add nuw nsw i64 %13, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %42, label %11, !llvm.loop !179

24:                                               ; preds = %5
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = zext nneg i32 %2 to i64
  %28 = load i8, ptr %4, align 1, !tbaa !131
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i8 [ %28, %26 ], [ %39, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %40, %29 ]
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 14
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = sext i8 %30 to i64
  %37 = getelementptr inbounds ptr, ptr %3, i64 %36
  store ptr %35, ptr %37, align 8, !tbaa !45
  %38 = load i8, ptr %4, align 1, !tbaa !131
  %39 = add i8 %38, 1
  store i8 %39, ptr %4, align 1, !tbaa !131
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, %27
  br i1 %41, label %42, label %29, !llvm.loop !180

42:                                               ; preds = %29, %11, %24, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lists_b_slice(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !155
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !156
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !143
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %209

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !25
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
  %28 = load ptr, ptr %21, align 8, !tbaa !43
  %29 = getelementptr inbounds ptr, ptr %28, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = load i32, ptr %30, align 8, !tbaa !129
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !94
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !128
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 64
  %45 = load i32, ptr %44, align 8, !tbaa !98
  %46 = icmp eq i32 %45, %8
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, ptr %22, align 4, !tbaa !181
  %49 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !111
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %23, align 8, !tbaa !45
  %54 = add nsw i32 %27, 1
  %55 = sext i32 %27 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %35, ptr %56, align 8, !tbaa !45
  br label %57

57:                                               ; preds = %25, %47, %52, %43, %39, %33
  %58 = phi i32 [ %27, %39 ], [ %54, %52 ], [ %27, %47 ], [ %27, %43 ], [ %27, %33 ], [ %27, %25 ]
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %24
  br i1 %60, label %61, label %25, !llvm.loop !182

61:                                               ; preds = %57, %16
  %62 = phi i32 [ 0, %16 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %64, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #23
  %66 = load i32, ptr %17, align 8, !tbaa !25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %70 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %71 = zext i32 %66 to i64
  br label %72

72:                                               ; preds = %68, %104
  %73 = phi i64 [ 0, %68 ], [ %106, %104 ]
  %74 = phi i32 [ %62, %68 ], [ %105, %104 ]
  %75 = load ptr, ptr %69, align 8, !tbaa !43
  %76 = getelementptr inbounds ptr, ptr %75, i64 %73
  %77 = load ptr, ptr %76, align 8, !tbaa !45
  %78 = load i32, ptr %77, align 8, !tbaa !129
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %104

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.frame_store, ptr %77, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !117
  %83 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 11
  %84 = load i32, ptr %83, align 4, !tbaa !94
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 10
  %88 = load i8, ptr %87, align 8, !tbaa !128
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 64
  %92 = load i32, ptr %91, align 8, !tbaa !98
  %93 = icmp eq i32 %92, %8
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, ptr %70, align 4, !tbaa !181
  %96 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !111
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load ptr, ptr %63, align 8, !tbaa !45
  %101 = add nsw i32 %74, 1
  %102 = sext i32 %74 to i64
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  store ptr %82, ptr %103, align 8, !tbaa !45
  br label %104

104:                                              ; preds = %72, %94, %99, %90, %86, %80
  %105 = phi i32 [ %74, %86 ], [ %101, %99 ], [ %74, %94 ], [ %74, %90 ], [ %74, %80 ], [ %74, %72 ]
  %106 = add nuw nsw i64 %73, 1
  %107 = icmp eq i64 %106, %71
  br i1 %107, label %108, label %72, !llvm.loop !183

108:                                              ; preds = %104, %61
  %109 = phi i32 [ %62, %61 ], [ %105, %104 ]
  %110 = load ptr, ptr %63, align 8, !tbaa !45
  %111 = getelementptr inbounds ptr, ptr %110, i64 %65
  %112 = sub nsw i32 %109, %62
  %113 = sext i32 %112 to i64
  tail call void @qsort(ptr noundef %111, i64 noundef %113, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #23
  %114 = icmp sgt i32 %62, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %117 = zext nneg i32 %62 to i64
  br label %123

118:                                              ; preds = %123, %108
  %119 = icmp slt i32 %62, %109
  br i1 %119, label %120, label %143

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %122 = sext i32 %109 to i64
  br label %133

123:                                              ; preds = %115, %123
  %124 = phi i64 [ 0, %115 ], [ %131, %123 ]
  %125 = load ptr, ptr %63, align 8, !tbaa !45
  %126 = getelementptr inbounds ptr, ptr %125, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !45
  %128 = load ptr, ptr %116, align 8, !tbaa !45
  %129 = getelementptr ptr, ptr %128, i64 %124
  %130 = getelementptr ptr, ptr %129, i64 %113
  store ptr %127, ptr %130, align 8, !tbaa !45
  %131 = add nuw nsw i64 %124, 1
  %132 = icmp eq i64 %131, %117
  br i1 %132, label %118, label %123, !llvm.loop !184

133:                                              ; preds = %120, %133
  %134 = phi i64 [ %65, %120 ], [ %141, %133 ]
  %135 = load ptr, ptr %63, align 8, !tbaa !45
  %136 = getelementptr inbounds ptr, ptr %135, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !45
  %138 = load ptr, ptr %121, align 8, !tbaa !45
  %139 = sub nsw i64 %134, %65
  %140 = getelementptr inbounds ptr, ptr %138, i64 %139
  store ptr %137, ptr %140, align 8, !tbaa !45
  %141 = add nsw i64 %134, 1
  %142 = icmp eq i64 %141, %122
  br i1 %142, label %143, label %133, !llvm.loop !185

143:                                              ; preds = %133, %118
  %144 = trunc i32 %109 to i8
  %145 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %146 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %144, ptr %146, align 1, !tbaa !131
  store i8 %144, ptr %145, align 8, !tbaa !131
  %147 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %148 = load i32, ptr %147, align 4, !tbaa !22
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %191, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %152 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %153 = zext i32 %148 to i64
  br label %154

154:                                              ; preds = %150, %184
  %155 = phi i64 [ 0, %150 ], [ %186, %184 ]
  %156 = phi i32 [ %109, %150 ], [ %185, %184 ]
  %157 = load ptr, ptr %151, align 8, !tbaa !44
  %158 = getelementptr inbounds ptr, ptr %157, i64 %155
  %159 = load ptr, ptr %158, align 8, !tbaa !45
  %160 = load i32, ptr %159, align 8, !tbaa !129
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %184

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.frame_store, ptr %159, i64 0, i32 12
  %164 = load ptr, ptr %163, align 8, !tbaa !117
  %165 = getelementptr inbounds %struct.storable_picture, ptr %164, i64 0, i32 10
  %166 = load i8, ptr %165, align 8, !tbaa !128
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.storable_picture, ptr %164, i64 0, i32 64
  %170 = load i32, ptr %169, align 8, !tbaa !98
  %171 = icmp eq i32 %170, %8
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load ptr, ptr %63, align 8, !tbaa !45
  %174 = sext i32 %156 to i64
  %175 = getelementptr inbounds ptr, ptr %173, i64 %174
  store ptr %164, ptr %175, align 8, !tbaa !45
  %176 = load ptr, ptr %151, align 8, !tbaa !44
  %177 = getelementptr inbounds ptr, ptr %176, i64 %155
  %178 = load ptr, ptr %177, align 8, !tbaa !45
  %179 = getelementptr inbounds %struct.frame_store, ptr %178, i64 0, i32 12
  %180 = load ptr, ptr %179, align 8, !tbaa !117
  %181 = load ptr, ptr %152, align 8, !tbaa !45
  %182 = add nsw i32 %156, 1
  %183 = getelementptr inbounds ptr, ptr %181, i64 %174
  store ptr %180, ptr %183, align 8, !tbaa !45
  br label %184

184:                                              ; preds = %154, %172, %168, %162
  %185 = phi i32 [ %182, %172 ], [ %156, %168 ], [ %156, %162 ], [ %156, %154 ]
  %186 = add nuw nsw i64 %155, 1
  %187 = icmp eq i64 %186, %153
  br i1 %187, label %188, label %154, !llvm.loop !186

188:                                              ; preds = %184
  %189 = load i8, ptr %145, align 8, !tbaa !131
  %190 = trunc i32 %185 to i8
  br label %191

191:                                              ; preds = %188, %143
  %192 = phi i8 [ %190, %188 ], [ %144, %143 ]
  %193 = phi i8 [ %189, %188 ], [ %144, %143 ]
  %194 = phi i32 [ %185, %188 ], [ %109, %143 ]
  %195 = load ptr, ptr %63, align 8, !tbaa !45
  %196 = sext i8 %193 to i64
  %197 = getelementptr inbounds ptr, ptr %195, i64 %196
  %198 = sext i8 %193 to i32
  %199 = sub nsw i32 %194, %198
  %200 = sext i32 %199 to i64
  tail call void @qsort(ptr noundef %197, i64 noundef %200, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  %201 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !45
  %203 = load i8, ptr %145, align 8, !tbaa !131
  %204 = sext i8 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204
  %206 = sext i8 %203 to i32
  %207 = sub nsw i32 %194, %206
  %208 = sext i32 %207 to i64
  tail call void @qsort(ptr noundef %205, i64 noundef %208, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  store i8 %192, ptr %146, align 1, !tbaa !131
  store i8 %192, ptr %145, align 8, !tbaa !131
  br label %362

209:                                              ; preds = %1
  %210 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %211 = load i32, ptr %210, align 8, !tbaa !37
  %212 = zext i32 %211 to i64
  %213 = tail call noalias ptr @calloc(i64 noundef %212, i64 noundef 8) #25
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #23
  %216 = load i32, ptr %210, align 8, !tbaa !37
  %217 = zext i32 %216 to i64
  br label %218

218:                                              ; preds = %215, %209
  %219 = phi i64 [ %217, %215 ], [ %212, %209 ]
  %220 = tail call noalias ptr @calloc(i64 noundef %219, i64 noundef 8) #25
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #23
  %223 = load i32, ptr %210, align 8, !tbaa !37
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i64 [ %224, %222 ], [ %219, %218 ]
  %227 = tail call noalias ptr @calloc(i64 noundef %226, i64 noundef 8) #25
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #23
  br label %230

230:                                              ; preds = %229, %225
  %231 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %231, align 8, !tbaa !131
  %232 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %232, align 1, !tbaa !131
  %233 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !25
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %264, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %238 = zext i32 %234 to i64
  %239 = load ptr, ptr %237, align 8, !tbaa !43
  br label %240

240:                                              ; preds = %236, %260
  %241 = phi i64 [ 0, %236 ], [ %262, %260 ]
  %242 = phi i32 [ 0, %236 ], [ %261, %260 ]
  %243 = getelementptr inbounds ptr, ptr %239, i64 %241
  %244 = load ptr, ptr %243, align 8, !tbaa !45
  %245 = load i32, ptr %244, align 8, !tbaa !129
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %240
  %248 = load i32, ptr %5, align 8, !tbaa !157
  %249 = getelementptr inbounds %struct.frame_store, ptr %244, i64 0, i32 10
  %250 = load i32, ptr %249, align 8, !tbaa !187
  %251 = icmp slt i32 %248, %250
  br i1 %251, label %260, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.frame_store, ptr %244, i64 0, i32 15
  %254 = load i32, ptr %253, align 8, !tbaa !46
  %255 = icmp eq i32 %254, %8
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = add nsw i32 %242, 1
  %258 = sext i32 %242 to i64
  %259 = getelementptr inbounds ptr, ptr %213, i64 %258
  store ptr %244, ptr %259, align 8, !tbaa !45
  br label %260

260:                                              ; preds = %240, %256, %252, %247
  %261 = phi i32 [ %257, %256 ], [ %242, %252 ], [ %242, %247 ], [ %242, %240 ]
  %262 = add nuw nsw i64 %241, 1
  %263 = icmp eq i64 %262, %238
  br i1 %263, label %264, label %240, !llvm.loop !188

264:                                              ; preds = %260, %230
  %265 = phi i32 [ 0, %230 ], [ %261, %260 ]
  %266 = sext i32 %265 to i64
  tail call void @qsort(ptr noundef %213, i64 noundef %266, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #23
  %267 = load i32, ptr %233, align 8, !tbaa !25
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %271 = zext i32 %267 to i64
  %272 = load ptr, ptr %270, align 8, !tbaa !43
  br label %273

273:                                              ; preds = %269, %293
  %274 = phi i64 [ 0, %269 ], [ %295, %293 ]
  %275 = phi i32 [ %265, %269 ], [ %294, %293 ]
  %276 = getelementptr inbounds ptr, ptr %272, i64 %274
  %277 = load ptr, ptr %276, align 8, !tbaa !45
  %278 = load i32, ptr %277, align 8, !tbaa !129
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %273
  %281 = load i32, ptr %5, align 8, !tbaa !157
  %282 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 10
  %283 = load i32, ptr %282, align 8, !tbaa !187
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 15
  %287 = load i32, ptr %286, align 8, !tbaa !46
  %288 = icmp eq i32 %287, %8
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = add nsw i32 %275, 1
  %291 = sext i32 %275 to i64
  %292 = getelementptr inbounds ptr, ptr %213, i64 %291
  store ptr %277, ptr %292, align 8, !tbaa !45
  br label %293

293:                                              ; preds = %273, %289, %285, %280
  %294 = phi i32 [ %290, %289 ], [ %275, %285 ], [ %275, %280 ], [ %275, %273 ]
  %295 = add nuw nsw i64 %274, 1
  %296 = icmp eq i64 %295, %271
  br i1 %296, label %297, label %273, !llvm.loop !189

297:                                              ; preds = %293, %264
  %298 = phi i32 [ %265, %264 ], [ %294, %293 ]
  %299 = getelementptr inbounds ptr, ptr %213, i64 %266
  %300 = sub nsw i32 %298, %265
  %301 = sext i32 %300 to i64
  tail call void @qsort(ptr noundef %299, i64 noundef %301, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #23
  %302 = icmp sgt i32 %265, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %297
  %304 = zext nneg i32 %265 to i64
  %305 = getelementptr ptr, ptr %220, i64 %301
  br label %316

306:                                              ; preds = %316, %297
  %307 = icmp slt i32 %265, %298
  br i1 %307, label %308, label %323

308:                                              ; preds = %306
  %309 = shl nsw i64 %266, 3
  %310 = getelementptr i8, ptr %213, i64 %309
  %311 = xor i32 %265, -1
  %312 = add i32 %298, %311
  %313 = zext i32 %312 to i64
  %314 = shl nuw nsw i64 %313, 3
  %315 = add nuw nsw i64 %314, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %220, ptr noundef nonnull align 8 dereferenceable(1) %310, i64 %315, i1 false), !tbaa !45
  br label %323

316:                                              ; preds = %303, %316
  %317 = phi i64 [ 0, %303 ], [ %321, %316 ]
  %318 = getelementptr inbounds ptr, ptr %213, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !45
  %320 = getelementptr ptr, ptr %305, i64 %317
  store ptr %319, ptr %320, align 8, !tbaa !45
  %321 = add nuw nsw i64 %317, 1
  %322 = icmp eq i64 %321, %304
  br i1 %322, label %306, label %316, !llvm.loop !190

323:                                              ; preds = %308, %306
  store i8 0, ptr %231, align 8, !tbaa !131
  store i8 0, ptr %232, align 1, !tbaa !131
  %324 = load i32, ptr %13, align 8, !tbaa !143
  %325 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %326 = load ptr, ptr %325, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %324, ptr noundef %213, i32 noundef %298, ptr noundef %326, ptr noundef nonnull %231, i32 noundef 0) #24
  %327 = load i32, ptr %13, align 8, !tbaa !143
  %328 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %327, ptr noundef %220, i32 noundef %298, ptr noundef %329, ptr noundef nonnull %232, i32 noundef 0) #24
  %330 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %331 = load i32, ptr %330, align 4, !tbaa !22
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %353, label %333

333:                                              ; preds = %323
  %334 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %335 = zext i32 %331 to i64
  %336 = load ptr, ptr %334, align 8, !tbaa !44
  br label %337

337:                                              ; preds = %333, %349
  %338 = phi i64 [ 0, %333 ], [ %351, %349 ]
  %339 = phi i32 [ 0, %333 ], [ %350, %349 ]
  %340 = getelementptr inbounds ptr, ptr %336, i64 %338
  %341 = load ptr, ptr %340, align 8, !tbaa !45
  %342 = getelementptr inbounds %struct.frame_store, ptr %341, i64 0, i32 15
  %343 = load i32, ptr %342, align 8, !tbaa !46
  %344 = icmp eq i32 %343, %8
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = add nsw i32 %339, 1
  %347 = sext i32 %339 to i64
  %348 = getelementptr inbounds ptr, ptr %227, i64 %347
  store ptr %341, ptr %348, align 8, !tbaa !45
  br label %349

349:                                              ; preds = %337, %345
  %350 = phi i32 [ %346, %345 ], [ %339, %337 ]
  %351 = add nuw nsw i64 %338, 1
  %352 = icmp eq i64 %351, %335
  br i1 %352, label %353, label %337, !llvm.loop !191

353:                                              ; preds = %349, %323
  %354 = phi i32 [ 0, %323 ], [ %350, %349 ]
  %355 = sext i32 %354 to i64
  tail call void @qsort(ptr noundef %227, i64 noundef %355, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #23
  %356 = load i32, ptr %13, align 8, !tbaa !143
  %357 = load ptr, ptr %325, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %356, ptr noundef %227, i32 noundef %354, ptr noundef %357, ptr noundef nonnull %231, i32 noundef 1) #24
  %358 = load i32, ptr %13, align 8, !tbaa !143
  %359 = load ptr, ptr %328, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %358, ptr noundef %227, i32 noundef %354, ptr noundef %359, ptr noundef nonnull %232, i32 noundef 1) #24
  tail call void @free(ptr noundef %213) #23
  tail call void @free(ptr noundef %220) #23
  tail call void @free(ptr noundef %227) #23
  %360 = load i8, ptr %231, align 8, !tbaa !131
  %361 = load i8, ptr %232, align 1, !tbaa !131
  br label %362

362:                                              ; preds = %353, %191
  %363 = phi i8 [ %361, %353 ], [ %192, %191 ]
  %364 = phi i8 [ %360, %353 ], [ %192, %191 ]
  %365 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %366 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %367 = icmp eq i8 %364, %363
  %368 = icmp sgt i8 %364, 1
  %369 = and i1 %368, %367
  br i1 %369, label %370, label %393

370:                                              ; preds = %362
  %371 = sext i8 %363 to i64
  %372 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %373 = load ptr, ptr %372, align 8, !tbaa !45
  %374 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !45
  %376 = and i64 %371, 4294967295
  br label %380

377:                                              ; preds = %380
  %378 = add nuw nsw i64 %381, 1
  %379 = icmp eq i64 %378, %376
  br i1 %379, label %387, label %380, !llvm.loop !192

380:                                              ; preds = %370, %377
  %381 = phi i64 [ 0, %370 ], [ %378, %377 ]
  %382 = getelementptr inbounds ptr, ptr %373, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !45
  %384 = getelementptr inbounds ptr, ptr %375, i64 %381
  %385 = load ptr, ptr %384, align 8, !tbaa !45
  %386 = icmp eq ptr %383, %385
  br i1 %386, label %377, label %393

387:                                              ; preds = %377
  %388 = load ptr, ptr %375, align 8, !tbaa !45
  %389 = getelementptr inbounds ptr, ptr %375, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !45
  store ptr %390, ptr %375, align 8, !tbaa !45
  %391 = load ptr, ptr %374, align 8, !tbaa !45
  %392 = getelementptr inbounds ptr, ptr %391, i64 1
  store ptr %388, ptr %392, align 8, !tbaa !45
  br label %393

393:                                              ; preds = %380, %387, %362
  %394 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %395 = load i32, ptr %394, align 8, !tbaa !164
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %481

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %399 = load i32, ptr %398, align 8, !tbaa !37
  %400 = zext i32 %399 to i64
  %401 = tail call noalias ptr @calloc(i64 noundef %400, i64 noundef 8) #25
  %402 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %401, ptr %402, align 8, !tbaa !165
  %403 = icmp eq ptr %401, null
  br i1 %403, label %404, label %407

404:                                              ; preds = %397
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #23
  %405 = load i32, ptr %398, align 8, !tbaa !37
  %406 = zext i32 %405 to i64
  br label %407

407:                                              ; preds = %404, %397
  %408 = phi i64 [ %406, %404 ], [ %400, %397 ]
  %409 = tail call noalias ptr @calloc(i64 noundef %408, i64 noundef 8) #25
  %410 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %409, ptr %410, align 8, !tbaa !193
  %411 = icmp eq ptr %409, null
  br i1 %411, label %412, label %413

412:                                              ; preds = %407
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #23
  br label %413

413:                                              ; preds = %412, %407
  %414 = load i32, ptr %13, align 8, !tbaa !143
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %467

416:                                              ; preds = %413
  %417 = load i8, ptr %365, align 8, !tbaa !131
  %418 = load ptr, ptr %402, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %418, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %419 = load ptr, ptr %410, align 8, !tbaa !193
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, ptr noundef %419, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %420 = load i32, ptr %11, align 4, !tbaa !155
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %441, label %422

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %424 = sext i8 %417 to i64
  %425 = zext i32 %420 to i64
  br label %426

426:                                              ; preds = %422, %426
  %427 = phi i64 [ %424, %422 ], [ %435, %426 ]
  %428 = phi i64 [ 0, %422 ], [ %437, %426 ]
  %429 = load ptr, ptr %402, align 8, !tbaa !165
  %430 = getelementptr inbounds ptr, ptr %429, i64 %428
  %431 = load ptr, ptr %430, align 8, !tbaa !45
  %432 = getelementptr inbounds %struct.frame_store, ptr %431, i64 0, i32 12
  %433 = load ptr, ptr %432, align 8, !tbaa !117
  %434 = load ptr, ptr %423, align 8, !tbaa !45
  %435 = add nsw i64 %427, 1
  %436 = getelementptr inbounds ptr, ptr %434, i64 %427
  store ptr %433, ptr %436, align 8, !tbaa !45
  %437 = add nuw nsw i64 %428, 1
  %438 = icmp eq i64 %437, %425
  br i1 %438, label %439, label %426, !llvm.loop !194

439:                                              ; preds = %426
  %440 = trunc i64 %435 to i8
  br label %441

441:                                              ; preds = %439, %416
  %442 = phi i8 [ %417, %416 ], [ %440, %439 ]
  store i8 %442, ptr %365, align 8, !tbaa !131
  %443 = load i8, ptr %366, align 1, !tbaa !131
  %444 = load i32, ptr %12, align 8, !tbaa !156
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %465, label %446

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %448 = sext i8 %443 to i64
  %449 = zext i32 %444 to i64
  br label %450

450:                                              ; preds = %446, %450
  %451 = phi i64 [ %448, %446 ], [ %459, %450 ]
  %452 = phi i64 [ 0, %446 ], [ %461, %450 ]
  %453 = load ptr, ptr %410, align 8, !tbaa !193
  %454 = getelementptr inbounds ptr, ptr %453, i64 %452
  %455 = load ptr, ptr %454, align 8, !tbaa !45
  %456 = getelementptr inbounds %struct.frame_store, ptr %455, i64 0, i32 12
  %457 = load ptr, ptr %456, align 8, !tbaa !117
  %458 = load ptr, ptr %447, align 8, !tbaa !45
  %459 = add nsw i64 %451, 1
  %460 = getelementptr inbounds ptr, ptr %458, i64 %451
  store ptr %457, ptr %460, align 8, !tbaa !45
  %461 = add nuw nsw i64 %452, 1
  %462 = icmp eq i64 %461, %449
  br i1 %462, label %463, label %450, !llvm.loop !195

463:                                              ; preds = %450
  %464 = trunc i64 %459 to i8
  br label %465

465:                                              ; preds = %463, %441
  %466 = phi i8 [ %443, %441 ], [ %464, %463 ]
  store i8 %466, ptr %366, align 1, !tbaa !131
  br label %481

467:                                              ; preds = %413
  %468 = load ptr, ptr %402, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %414, i32 noundef 0, ptr noundef %468, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %469 = load i32, ptr %13, align 8, !tbaa !143
  %470 = load ptr, ptr %402, align 8, !tbaa !165
  %471 = load i32, ptr %11, align 4, !tbaa !155
  %472 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %473 = load ptr, ptr %472, align 8, !tbaa !45
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %469, ptr noundef %470, i32 noundef %471, ptr noundef %473, ptr noundef nonnull %365) #24
  %474 = load i32, ptr %13, align 8, !tbaa !143
  %475 = load ptr, ptr %410, align 8, !tbaa !193
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %474, i32 noundef 1, ptr noundef %475, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %476 = load i32, ptr %13, align 8, !tbaa !143
  %477 = load ptr, ptr %410, align 8, !tbaa !193
  %478 = load i32, ptr %12, align 8, !tbaa !156
  %479 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %480 = load ptr, ptr %479, align 8, !tbaa !45
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %476, ptr noundef %477, i32 noundef %478, ptr noundef %480, ptr noundef nonnull %366) #24
  br label %481

481:                                              ; preds = %465, %467, %393
  %482 = load i8, ptr %365, align 8, !tbaa !131
  %483 = sext i8 %482 to i32
  %484 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %485 = load i32, ptr %484, align 8, !tbaa !167
  %486 = tail call fastcc i32 @imin(i32 noundef %483, i32 noundef %485) #24
  %487 = trunc i32 %486 to i8
  store i8 %487, ptr %365, align 8, !tbaa !131
  %488 = load i8, ptr %366, align 1, !tbaa !131
  %489 = sext i8 %488 to i32
  %490 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %491 = load i32, ptr %490, align 4, !tbaa !167
  %492 = tail call fastcc i32 @imin(i32 noundef %489, i32 noundef %491) #24
  %493 = trunc i32 %492 to i8
  store i8 %493, ptr %366, align 1, !tbaa !131
  %494 = shl i32 %486, 24
  %495 = ashr exact i32 %494, 24
  %496 = icmp ult i32 %495, 33
  br i1 %496, label %497, label %511

497:                                              ; preds = %481
  %498 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %499 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %500 = zext nneg i32 %495 to i64
  %501 = load ptr, ptr %498, align 8, !tbaa !54
  br label %502

502:                                              ; preds = %497, %502
  %503 = phi i64 [ %500, %497 ], [ %506, %502 ]
  %504 = load ptr, ptr %499, align 8, !tbaa !45
  %505 = getelementptr inbounds ptr, ptr %504, i64 %503
  store ptr %501, ptr %505, align 8, !tbaa !45
  %506 = add nuw nsw i64 %503, 1
  %507 = and i64 %506, 4294967295
  %508 = icmp eq i64 %507, 33
  br i1 %508, label %509, label %502, !llvm.loop !196

509:                                              ; preds = %502
  %510 = load i8, ptr %366, align 1, !tbaa !131
  br label %511

511:                                              ; preds = %509, %481
  %512 = phi i8 [ %510, %509 ], [ %493, %481 ]
  %513 = icmp ult i8 %512, 33
  br i1 %513, label %514, label %526

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %516 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %517 = zext nneg i8 %512 to i64
  %518 = load ptr, ptr %515, align 8, !tbaa !54
  br label %519

519:                                              ; preds = %514, %519
  %520 = phi i64 [ %517, %514 ], [ %523, %519 ]
  %521 = load ptr, ptr %516, align 8, !tbaa !45
  %522 = getelementptr inbounds ptr, ptr %521, i64 %520
  store ptr %518, ptr %522, align 8, !tbaa !45
  %523 = add nuw nsw i64 %520, 1
  %524 = and i64 %523, 4294967295
  %525 = icmp eq i64 %524, 33
  br i1 %525, label %526, label %519, !llvm.loop !197

526:                                              ; preds = %519, %511
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !111
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !111
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !111
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !187
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !187
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lists(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !155
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !156
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !198
  switch i32 %14, label %193 [
    i32 2, label %15
    i32 4, label %15
    i32 0, label %18
    i32 3, label %18
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %16, align 8, !tbaa !131
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %17, align 1, !tbaa !131
  br label %757

18:                                               ; preds = %1, %1
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !143
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !25
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
  %33 = load ptr, ptr %27, align 8, !tbaa !43
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = load i32, ptr %35, align 8, !tbaa !129
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !117
  %41 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !94
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 10
  %46 = load i8, ptr %45, align 8, !tbaa !128
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 64
  %50 = load i32, ptr %49, align 8, !tbaa !98
  %51 = icmp eq i32 %50, %8
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %28, align 8, !tbaa !45
  %54 = add nsw i32 %32, 1
  %55 = sext i32 %32 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %40, ptr %56, align 8, !tbaa !45
  br label %57

57:                                               ; preds = %30, %52, %48, %44, %38
  %58 = phi i32 [ %32, %44 ], [ %54, %52 ], [ %32, %48 ], [ %32, %38 ], [ %32, %30 ]
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, %29
  br i1 %60, label %61, label %30, !llvm.loop !199

61:                                               ; preds = %57, %22
  %62 = phi i32 [ 0, %22 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %64, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #23
  %66 = trunc i32 %62 to i8
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %66, ptr %67, align 8, !tbaa !131
  %68 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %104, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %73 = zext i32 %69 to i64
  br label %74

74:                                               ; preds = %71, %97
  %75 = phi i64 [ 0, %71 ], [ %99, %97 ]
  %76 = phi i32 [ %62, %71 ], [ %98, %97 ]
  %77 = load ptr, ptr %72, align 8, !tbaa !44
  %78 = getelementptr inbounds ptr, ptr %77, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = load i32, ptr %79, align 8, !tbaa !129
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !117
  %85 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 10
  %86 = load i8, ptr %85, align 8, !tbaa !128
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 64
  %90 = load i32, ptr %89, align 8, !tbaa !98
  %91 = icmp eq i32 %90, %8
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load ptr, ptr %63, align 8, !tbaa !45
  %94 = add nsw i32 %76, 1
  %95 = sext i32 %76 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  store ptr %84, ptr %96, align 8, !tbaa !45
  br label %97

97:                                               ; preds = %74, %92, %88, %82
  %98 = phi i32 [ %94, %92 ], [ %76, %88 ], [ %76, %82 ], [ %76, %74 ]
  %99 = add nuw nsw i64 %75, 1
  %100 = icmp eq i64 %99, %73
  br i1 %100, label %101, label %74, !llvm.loop !200

101:                                              ; preds = %97
  %102 = load i8, ptr %67, align 8, !tbaa !131
  %103 = trunc i32 %98 to i8
  br label %104

104:                                              ; preds = %101, %61
  %105 = phi i8 [ %103, %101 ], [ %66, %61 ]
  %106 = phi i8 [ %102, %101 ], [ %66, %61 ]
  %107 = phi i32 [ %98, %101 ], [ %62, %61 ]
  %108 = load ptr, ptr %63, align 8, !tbaa !45
  %109 = sext i8 %106 to i64
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  %111 = sext i8 %106 to i32
  %112 = sub nsw i32 %107, %111
  %113 = sext i32 %112 to i64
  tail call void @qsort(ptr noundef %110, i64 noundef %113, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  store i8 %105, ptr %67, align 8, !tbaa !131
  br label %191

114:                                              ; preds = %18
  %115 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %116 = load i32, ptr %115, align 8, !tbaa !37
  %117 = zext i32 %116 to i64
  %118 = tail call noalias ptr @calloc(i64 noundef %117, i64 noundef 8) #25
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #23
  %121 = load i32, ptr %115, align 8, !tbaa !37
  %122 = zext i32 %121 to i64
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi i64 [ %122, %120 ], [ %117, %114 ]
  %125 = tail call noalias ptr @calloc(i64 noundef %124, i64 noundef 8) #25
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #23
  br label %128

128:                                              ; preds = %127, %123
  %129 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !25
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %134 = zext i32 %130 to i64
  %135 = load ptr, ptr %133, align 8, !tbaa !43
  br label %136

136:                                              ; preds = %132, %152
  %137 = phi i64 [ 0, %132 ], [ %154, %152 ]
  %138 = phi i32 [ 0, %132 ], [ %153, %152 ]
  %139 = getelementptr inbounds ptr, ptr %135, i64 %137
  %140 = load ptr, ptr %139, align 8, !tbaa !45
  %141 = getelementptr inbounds %struct.frame_store, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !151
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.frame_store, ptr %140, i64 0, i32 15
  %146 = load i32, ptr %145, align 8, !tbaa !46
  %147 = icmp eq i32 %146, %8
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = add nsw i32 %138, 1
  %150 = sext i32 %138 to i64
  %151 = getelementptr inbounds ptr, ptr %118, i64 %150
  store ptr %140, ptr %151, align 8, !tbaa !45
  br label %152

152:                                              ; preds = %136, %144, %148
  %153 = phi i32 [ %149, %148 ], [ %138, %144 ], [ %138, %136 ]
  %154 = add nuw nsw i64 %137, 1
  %155 = icmp eq i64 %154, %134
  br i1 %155, label %156, label %136, !llvm.loop !201

156:                                              ; preds = %152, %128
  %157 = phi i32 [ 0, %128 ], [ %153, %152 ]
  %158 = sext i32 %157 to i64
  tail call void @qsort(ptr noundef %118, i64 noundef %158, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #23
  %159 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %159, align 8, !tbaa !131
  %160 = load i32, ptr %19, align 8, !tbaa !143
  %161 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %162 = load ptr, ptr %161, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %160, ptr noundef %118, i32 noundef %157, ptr noundef %162, ptr noundef nonnull %159, i32 noundef 0) #24
  %163 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %164 = load i32, ptr %163, align 4, !tbaa !22
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %168 = zext i32 %164 to i64
  %169 = load ptr, ptr %167, align 8, !tbaa !44
  br label %170

170:                                              ; preds = %166, %182
  %171 = phi i64 [ 0, %166 ], [ %184, %182 ]
  %172 = phi i32 [ 0, %166 ], [ %183, %182 ]
  %173 = getelementptr inbounds ptr, ptr %169, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !45
  %175 = getelementptr inbounds %struct.frame_store, ptr %174, i64 0, i32 15
  %176 = load i32, ptr %175, align 8, !tbaa !46
  %177 = icmp eq i32 %176, %8
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = add nsw i32 %172, 1
  %180 = sext i32 %172 to i64
  %181 = getelementptr inbounds ptr, ptr %125, i64 %180
  store ptr %174, ptr %181, align 8, !tbaa !45
  br label %182

182:                                              ; preds = %170, %178
  %183 = phi i32 [ %179, %178 ], [ %172, %170 ]
  %184 = add nuw nsw i64 %171, 1
  %185 = icmp eq i64 %184, %168
  br i1 %185, label %186, label %170, !llvm.loop !202

186:                                              ; preds = %182, %156
  %187 = phi i32 [ 0, %156 ], [ %183, %182 ]
  %188 = sext i32 %187 to i64
  tail call void @qsort(ptr noundef %125, i64 noundef %188, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #23
  %189 = load i32, ptr %19, align 8, !tbaa !143
  %190 = load ptr, ptr %161, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %189, ptr noundef %125, i32 noundef %187, ptr noundef %190, ptr noundef nonnull %159, i32 noundef 1) #24
  tail call void @free(ptr noundef %118) #23
  tail call void @free(ptr noundef %125) #23
  br label %191

191:                                              ; preds = %186, %104
  %192 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %192, align 1, !tbaa !131
  br label %542

193:                                              ; preds = %1
  %194 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %195 = load i32, ptr %194, align 8, !tbaa !143
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %390

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %199 = load i32, ptr %198, align 8, !tbaa !25
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %242, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %203 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %204 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %205 = zext i32 %199 to i64
  br label %206

206:                                              ; preds = %201, %238
  %207 = phi i64 [ 0, %201 ], [ %240, %238 ]
  %208 = phi i32 [ 0, %201 ], [ %239, %238 ]
  %209 = load ptr, ptr %202, align 8, !tbaa !43
  %210 = getelementptr inbounds ptr, ptr %209, i64 %207
  %211 = load ptr, ptr %210, align 8, !tbaa !45
  %212 = load i32, ptr %211, align 8, !tbaa !129
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %214, label %238

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.frame_store, ptr %211, i64 0, i32 12
  %216 = load ptr, ptr %215, align 8, !tbaa !117
  %217 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 11
  %218 = load i32, ptr %217, align 4, !tbaa !94
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %238, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 10
  %222 = load i8, ptr %221, align 8, !tbaa !128
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 64
  %226 = load i32, ptr %225, align 8, !tbaa !98
  %227 = icmp eq i32 %226, %8
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load i32, ptr %203, align 4, !tbaa !181
  %230 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !111
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %204, align 8, !tbaa !45
  %235 = add nsw i32 %208, 1
  %236 = sext i32 %208 to i64
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236
  store ptr %216, ptr %237, align 8, !tbaa !45
  br label %238

238:                                              ; preds = %206, %228, %233, %224, %220, %214
  %239 = phi i32 [ %208, %220 ], [ %235, %233 ], [ %208, %228 ], [ %208, %224 ], [ %208, %214 ], [ %208, %206 ]
  %240 = add nuw nsw i64 %207, 1
  %241 = icmp eq i64 %240, %205
  br i1 %241, label %242, label %206, !llvm.loop !203

242:                                              ; preds = %238, %197
  %243 = phi i32 [ 0, %197 ], [ %239, %238 ]
  %244 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %245 = load ptr, ptr %244, align 8, !tbaa !45
  %246 = sext i32 %243 to i64
  tail call void @qsort(ptr noundef %245, i64 noundef %246, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #23
  %247 = load i32, ptr %198, align 8, !tbaa !25
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %289, label %249

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %251 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %252 = zext i32 %247 to i64
  br label %253

253:                                              ; preds = %249, %285
  %254 = phi i64 [ 0, %249 ], [ %287, %285 ]
  %255 = phi i32 [ %243, %249 ], [ %286, %285 ]
  %256 = load ptr, ptr %250, align 8, !tbaa !43
  %257 = getelementptr inbounds ptr, ptr %256, i64 %254
  %258 = load ptr, ptr %257, align 8, !tbaa !45
  %259 = load i32, ptr %258, align 8, !tbaa !129
  %260 = icmp eq i32 %259, 3
  br i1 %260, label %261, label %285

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.frame_store, ptr %258, i64 0, i32 12
  %263 = load ptr, ptr %262, align 8, !tbaa !117
  %264 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 11
  %265 = load i32, ptr %264, align 4, !tbaa !94
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %285, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 10
  %269 = load i8, ptr %268, align 8, !tbaa !128
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %285

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 64
  %273 = load i32, ptr %272, align 8, !tbaa !98
  %274 = icmp eq i32 %273, %8
  br i1 %274, label %275, label %285

275:                                              ; preds = %271
  %276 = load i32, ptr %251, align 4, !tbaa !181
  %277 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 1
  %278 = load i32, ptr %277, align 4, !tbaa !111
  %279 = icmp slt i32 %276, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load ptr, ptr %244, align 8, !tbaa !45
  %282 = add nsw i32 %255, 1
  %283 = sext i32 %255 to i64
  %284 = getelementptr inbounds ptr, ptr %281, i64 %283
  store ptr %263, ptr %284, align 8, !tbaa !45
  br label %285

285:                                              ; preds = %253, %275, %280, %271, %267, %261
  %286 = phi i32 [ %255, %267 ], [ %282, %280 ], [ %255, %275 ], [ %255, %271 ], [ %255, %261 ], [ %255, %253 ]
  %287 = add nuw nsw i64 %254, 1
  %288 = icmp eq i64 %287, %252
  br i1 %288, label %289, label %253, !llvm.loop !204

289:                                              ; preds = %285, %242
  %290 = phi i32 [ %243, %242 ], [ %286, %285 ]
  %291 = load ptr, ptr %244, align 8, !tbaa !45
  %292 = getelementptr inbounds ptr, ptr %291, i64 %246
  %293 = sub nsw i32 %290, %243
  %294 = sext i32 %293 to i64
  tail call void @qsort(ptr noundef %292, i64 noundef %294, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #23
  %295 = icmp sgt i32 %243, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %298 = zext nneg i32 %243 to i64
  br label %304

299:                                              ; preds = %304, %289
  %300 = icmp slt i32 %243, %290
  br i1 %300, label %301, label %324

301:                                              ; preds = %299
  %302 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %303 = sext i32 %290 to i64
  br label %314

304:                                              ; preds = %296, %304
  %305 = phi i64 [ 0, %296 ], [ %312, %304 ]
  %306 = load ptr, ptr %244, align 8, !tbaa !45
  %307 = getelementptr inbounds ptr, ptr %306, i64 %305
  %308 = load ptr, ptr %307, align 8, !tbaa !45
  %309 = load ptr, ptr %297, align 8, !tbaa !45
  %310 = getelementptr ptr, ptr %309, i64 %305
  %311 = getelementptr ptr, ptr %310, i64 %294
  store ptr %308, ptr %311, align 8, !tbaa !45
  %312 = add nuw nsw i64 %305, 1
  %313 = icmp eq i64 %312, %298
  br i1 %313, label %299, label %304, !llvm.loop !205

314:                                              ; preds = %301, %314
  %315 = phi i64 [ %246, %301 ], [ %322, %314 ]
  %316 = load ptr, ptr %244, align 8, !tbaa !45
  %317 = getelementptr inbounds ptr, ptr %316, i64 %315
  %318 = load ptr, ptr %317, align 8, !tbaa !45
  %319 = load ptr, ptr %302, align 8, !tbaa !45
  %320 = sub nsw i64 %315, %246
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %318, ptr %321, align 8, !tbaa !45
  %322 = add nsw i64 %315, 1
  %323 = icmp eq i64 %322, %303
  br i1 %323, label %324, label %314, !llvm.loop !206

324:                                              ; preds = %314, %299
  %325 = trunc i32 %290 to i8
  %326 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %327 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %325, ptr %327, align 1, !tbaa !131
  store i8 %325, ptr %326, align 8, !tbaa !131
  %328 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %329 = load i32, ptr %328, align 4, !tbaa !22
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %372, label %331

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %333 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %334 = zext i32 %329 to i64
  br label %335

335:                                              ; preds = %331, %365
  %336 = phi i64 [ 0, %331 ], [ %367, %365 ]
  %337 = phi i32 [ %290, %331 ], [ %366, %365 ]
  %338 = load ptr, ptr %332, align 8, !tbaa !44
  %339 = getelementptr inbounds ptr, ptr %338, i64 %336
  %340 = load ptr, ptr %339, align 8, !tbaa !45
  %341 = load i32, ptr %340, align 8, !tbaa !129
  %342 = icmp eq i32 %341, 3
  br i1 %342, label %343, label %365

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.frame_store, ptr %340, i64 0, i32 12
  %345 = load ptr, ptr %344, align 8, !tbaa !117
  %346 = getelementptr inbounds %struct.storable_picture, ptr %345, i64 0, i32 10
  %347 = load i8, ptr %346, align 8, !tbaa !128
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %365, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.storable_picture, ptr %345, i64 0, i32 64
  %351 = load i32, ptr %350, align 8, !tbaa !98
  %352 = icmp eq i32 %351, %8
  br i1 %352, label %353, label %365

353:                                              ; preds = %349
  %354 = load ptr, ptr %244, align 8, !tbaa !45
  %355 = sext i32 %337 to i64
  %356 = getelementptr inbounds ptr, ptr %354, i64 %355
  store ptr %345, ptr %356, align 8, !tbaa !45
  %357 = load ptr, ptr %332, align 8, !tbaa !44
  %358 = getelementptr inbounds ptr, ptr %357, i64 %336
  %359 = load ptr, ptr %358, align 8, !tbaa !45
  %360 = getelementptr inbounds %struct.frame_store, ptr %359, i64 0, i32 12
  %361 = load ptr, ptr %360, align 8, !tbaa !117
  %362 = load ptr, ptr %333, align 8, !tbaa !45
  %363 = add nsw i32 %337, 1
  %364 = getelementptr inbounds ptr, ptr %362, i64 %355
  store ptr %361, ptr %364, align 8, !tbaa !45
  br label %365

365:                                              ; preds = %335, %353, %349, %343
  %366 = phi i32 [ %363, %353 ], [ %337, %349 ], [ %337, %343 ], [ %337, %335 ]
  %367 = add nuw nsw i64 %336, 1
  %368 = icmp eq i64 %367, %334
  br i1 %368, label %369, label %335, !llvm.loop !207

369:                                              ; preds = %365
  %370 = load i8, ptr %326, align 8, !tbaa !131
  %371 = trunc i32 %366 to i8
  br label %372

372:                                              ; preds = %369, %324
  %373 = phi i8 [ %371, %369 ], [ %325, %324 ]
  %374 = phi i8 [ %370, %369 ], [ %325, %324 ]
  %375 = phi i32 [ %366, %369 ], [ %290, %324 ]
  %376 = load ptr, ptr %244, align 8, !tbaa !45
  %377 = sext i8 %374 to i64
  %378 = getelementptr inbounds ptr, ptr %376, i64 %377
  %379 = sext i8 %374 to i32
  %380 = sub nsw i32 %375, %379
  %381 = sext i32 %380 to i64
  tail call void @qsort(ptr noundef %378, i64 noundef %381, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  %382 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !45
  %384 = load i8, ptr %326, align 8, !tbaa !131
  %385 = sext i8 %384 to i64
  %386 = getelementptr inbounds ptr, ptr %383, i64 %385
  %387 = sext i8 %384 to i32
  %388 = sub nsw i32 %375, %387
  %389 = sext i32 %388 to i64
  tail call void @qsort(ptr noundef %386, i64 noundef %389, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  store i8 %373, ptr %327, align 1, !tbaa !131
  store i8 %373, ptr %326, align 8, !tbaa !131
  br label %542

390:                                              ; preds = %193
  %391 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %392 = load i32, ptr %391, align 8, !tbaa !37
  %393 = zext i32 %392 to i64
  %394 = tail call noalias ptr @calloc(i64 noundef %393, i64 noundef 8) #25
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #23
  %397 = load i32, ptr %391, align 8, !tbaa !37
  %398 = zext i32 %397 to i64
  br label %399

399:                                              ; preds = %396, %390
  %400 = phi i64 [ %398, %396 ], [ %393, %390 ]
  %401 = tail call noalias ptr @calloc(i64 noundef %400, i64 noundef 8) #25
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #23
  %404 = load i32, ptr %391, align 8, !tbaa !37
  %405 = zext i32 %404 to i64
  br label %406

406:                                              ; preds = %403, %399
  %407 = phi i64 [ %405, %403 ], [ %400, %399 ]
  %408 = tail call noalias ptr @calloc(i64 noundef %407, i64 noundef 8) #25
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #23
  br label %411

411:                                              ; preds = %410, %406
  %412 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %412, align 8, !tbaa !131
  %413 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %413, align 1, !tbaa !131
  %414 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %415 = load i32, ptr %414, align 8, !tbaa !25
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %445, label %417

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %419 = zext i32 %415 to i64
  %420 = load ptr, ptr %418, align 8, !tbaa !43
  br label %421

421:                                              ; preds = %417, %441
  %422 = phi i64 [ 0, %417 ], [ %443, %441 ]
  %423 = phi i32 [ 0, %417 ], [ %442, %441 ]
  %424 = getelementptr inbounds ptr, ptr %420, i64 %422
  %425 = load ptr, ptr %424, align 8, !tbaa !45
  %426 = load i32, ptr %425, align 8, !tbaa !129
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %441, label %428

428:                                              ; preds = %421
  %429 = load i32, ptr %5, align 8, !tbaa !157
  %430 = getelementptr inbounds %struct.frame_store, ptr %425, i64 0, i32 10
  %431 = load i32, ptr %430, align 8, !tbaa !187
  %432 = icmp slt i32 %429, %431
  br i1 %432, label %441, label %433

433:                                              ; preds = %428
  %434 = getelementptr inbounds %struct.frame_store, ptr %425, i64 0, i32 15
  %435 = load i32, ptr %434, align 8, !tbaa !46
  %436 = icmp eq i32 %435, %8
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = add nsw i32 %423, 1
  %439 = sext i32 %423 to i64
  %440 = getelementptr inbounds ptr, ptr %394, i64 %439
  store ptr %425, ptr %440, align 8, !tbaa !45
  br label %441

441:                                              ; preds = %421, %437, %433, %428
  %442 = phi i32 [ %438, %437 ], [ %423, %433 ], [ %423, %428 ], [ %423, %421 ]
  %443 = add nuw nsw i64 %422, 1
  %444 = icmp eq i64 %443, %419
  br i1 %444, label %445, label %421, !llvm.loop !208

445:                                              ; preds = %441, %411
  %446 = phi i32 [ 0, %411 ], [ %442, %441 ]
  %447 = sext i32 %446 to i64
  tail call void @qsort(ptr noundef %394, i64 noundef %447, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #23
  %448 = load i32, ptr %414, align 8, !tbaa !25
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %478, label %450

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %452 = zext i32 %448 to i64
  %453 = load ptr, ptr %451, align 8, !tbaa !43
  br label %454

454:                                              ; preds = %450, %474
  %455 = phi i64 [ 0, %450 ], [ %476, %474 ]
  %456 = phi i32 [ %446, %450 ], [ %475, %474 ]
  %457 = getelementptr inbounds ptr, ptr %453, i64 %455
  %458 = load ptr, ptr %457, align 8, !tbaa !45
  %459 = load i32, ptr %458, align 8, !tbaa !129
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %474, label %461

461:                                              ; preds = %454
  %462 = load i32, ptr %5, align 8, !tbaa !157
  %463 = getelementptr inbounds %struct.frame_store, ptr %458, i64 0, i32 10
  %464 = load i32, ptr %463, align 8, !tbaa !187
  %465 = icmp slt i32 %462, %464
  br i1 %465, label %466, label %474

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.frame_store, ptr %458, i64 0, i32 15
  %468 = load i32, ptr %467, align 8, !tbaa !46
  %469 = icmp eq i32 %468, %8
  br i1 %469, label %470, label %474

470:                                              ; preds = %466
  %471 = add nsw i32 %456, 1
  %472 = sext i32 %456 to i64
  %473 = getelementptr inbounds ptr, ptr %394, i64 %472
  store ptr %458, ptr %473, align 8, !tbaa !45
  br label %474

474:                                              ; preds = %454, %470, %466, %461
  %475 = phi i32 [ %471, %470 ], [ %456, %466 ], [ %456, %461 ], [ %456, %454 ]
  %476 = add nuw nsw i64 %455, 1
  %477 = icmp eq i64 %476, %452
  br i1 %477, label %478, label %454, !llvm.loop !209

478:                                              ; preds = %474, %445
  %479 = phi i32 [ %446, %445 ], [ %475, %474 ]
  %480 = getelementptr inbounds ptr, ptr %394, i64 %447
  %481 = sub nsw i32 %479, %446
  %482 = sext i32 %481 to i64
  tail call void @qsort(ptr noundef %480, i64 noundef %482, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #23
  %483 = icmp sgt i32 %446, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %478
  %485 = zext nneg i32 %446 to i64
  %486 = getelementptr ptr, ptr %401, i64 %482
  br label %497

487:                                              ; preds = %497, %478
  %488 = icmp slt i32 %446, %479
  br i1 %488, label %489, label %504

489:                                              ; preds = %487
  %490 = shl nsw i64 %447, 3
  %491 = getelementptr i8, ptr %394, i64 %490
  %492 = xor i32 %446, -1
  %493 = add i32 %479, %492
  %494 = zext i32 %493 to i64
  %495 = shl nuw nsw i64 %494, 3
  %496 = add nuw nsw i64 %495, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %401, ptr noundef nonnull align 8 dereferenceable(1) %491, i64 %496, i1 false), !tbaa !45
  br label %504

497:                                              ; preds = %484, %497
  %498 = phi i64 [ 0, %484 ], [ %502, %497 ]
  %499 = getelementptr inbounds ptr, ptr %394, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !45
  %501 = getelementptr ptr, ptr %486, i64 %498
  store ptr %500, ptr %501, align 8, !tbaa !45
  %502 = add nuw nsw i64 %498, 1
  %503 = icmp eq i64 %502, %485
  br i1 %503, label %487, label %497, !llvm.loop !210

504:                                              ; preds = %489, %487
  store i8 0, ptr %412, align 8, !tbaa !131
  store i8 0, ptr %413, align 1, !tbaa !131
  %505 = load i32, ptr %194, align 8, !tbaa !143
  %506 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %507 = load ptr, ptr %506, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %505, ptr noundef %394, i32 noundef %479, ptr noundef %507, ptr noundef nonnull %412, i32 noundef 0) #24
  %508 = load i32, ptr %194, align 8, !tbaa !143
  %509 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %508, ptr noundef %401, i32 noundef %479, ptr noundef %510, ptr noundef nonnull %413, i32 noundef 0) #24
  %511 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %512 = load i32, ptr %511, align 4, !tbaa !22
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %534, label %514

514:                                              ; preds = %504
  %515 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %516 = zext i32 %512 to i64
  %517 = load ptr, ptr %515, align 8, !tbaa !44
  br label %518

518:                                              ; preds = %514, %530
  %519 = phi i64 [ 0, %514 ], [ %532, %530 ]
  %520 = phi i32 [ 0, %514 ], [ %531, %530 ]
  %521 = getelementptr inbounds ptr, ptr %517, i64 %519
  %522 = load ptr, ptr %521, align 8, !tbaa !45
  %523 = getelementptr inbounds %struct.frame_store, ptr %522, i64 0, i32 15
  %524 = load i32, ptr %523, align 8, !tbaa !46
  %525 = icmp eq i32 %524, %8
  br i1 %525, label %526, label %530

526:                                              ; preds = %518
  %527 = add nsw i32 %520, 1
  %528 = sext i32 %520 to i64
  %529 = getelementptr inbounds ptr, ptr %408, i64 %528
  store ptr %522, ptr %529, align 8, !tbaa !45
  br label %530

530:                                              ; preds = %518, %526
  %531 = phi i32 [ %527, %526 ], [ %520, %518 ]
  %532 = add nuw nsw i64 %519, 1
  %533 = icmp eq i64 %532, %516
  br i1 %533, label %534, label %518, !llvm.loop !211

534:                                              ; preds = %530, %504
  %535 = phi i32 [ 0, %504 ], [ %531, %530 ]
  %536 = sext i32 %535 to i64
  tail call void @qsort(ptr noundef %408, i64 noundef %536, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #23
  %537 = load i32, ptr %194, align 8, !tbaa !143
  %538 = load ptr, ptr %506, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %537, ptr noundef %408, i32 noundef %535, ptr noundef %538, ptr noundef nonnull %412, i32 noundef 1) #24
  %539 = load i32, ptr %194, align 8, !tbaa !143
  %540 = load ptr, ptr %509, align 8, !tbaa !45
  tail call void @gen_pic_list_from_frame_list(i32 noundef %539, ptr noundef %408, i32 noundef %535, ptr noundef %540, ptr noundef nonnull %413, i32 noundef 1) #24
  tail call void @free(ptr noundef %394) #23
  tail call void @free(ptr noundef %401) #23
  tail call void @free(ptr noundef %408) #23
  %541 = load i8, ptr %413, align 1, !tbaa !131
  br label %542

542:                                              ; preds = %372, %534, %191
  %543 = phi i8 [ %373, %372 ], [ %541, %534 ], [ 0, %191 ]
  %544 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %545 = load i8, ptr %544, align 8, !tbaa !131
  %546 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %547 = icmp eq i8 %545, %543
  %548 = icmp sgt i8 %545, 1
  %549 = and i1 %548, %547
  br i1 %549, label %550, label %576

550:                                              ; preds = %542
  %551 = sext i8 %543 to i64
  %552 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %553 = load ptr, ptr %552, align 8, !tbaa !45
  %554 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %555 = load ptr, ptr %554, align 8, !tbaa !45
  %556 = and i64 %551, 4294967295
  br label %557

557:                                              ; preds = %550, %557
  %558 = phi i64 [ 0, %550 ], [ %566, %557 ]
  %559 = phi i32 [ 0, %550 ], [ %565, %557 ]
  %560 = getelementptr inbounds ptr, ptr %553, i64 %558
  %561 = load ptr, ptr %560, align 8, !tbaa !45
  %562 = getelementptr inbounds ptr, ptr %555, i64 %558
  %563 = load ptr, ptr %562, align 8, !tbaa !45
  %564 = icmp eq ptr %561, %563
  %565 = select i1 %564, i32 %559, i32 1
  %566 = add nuw nsw i64 %558, 1
  %567 = icmp eq i64 %566, %556
  br i1 %567, label %568, label %557, !llvm.loop !212

568:                                              ; preds = %557
  %569 = icmp eq i32 %565, 0
  br i1 %569, label %570, label %576

570:                                              ; preds = %568
  %571 = load ptr, ptr %555, align 8, !tbaa !45
  %572 = getelementptr inbounds ptr, ptr %555, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !45
  store ptr %573, ptr %555, align 8, !tbaa !45
  %574 = load ptr, ptr %554, align 8, !tbaa !45
  %575 = getelementptr inbounds ptr, ptr %574, i64 1
  store ptr %571, ptr %575, align 8, !tbaa !45
  br label %576

576:                                              ; preds = %568, %570, %542
  %577 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %578 = load i32, ptr %577, align 8, !tbaa !164
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %712

580:                                              ; preds = %576
  %581 = load i32, ptr %13, align 4, !tbaa !198
  switch i32 %581, label %627 [
    i32 0, label %582
    i32 3, label %582
  ]

582:                                              ; preds = %580, %580
  %583 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %584 = load i32, ptr %583, align 8, !tbaa !37
  %585 = zext i32 %584 to i64
  %586 = tail call noalias ptr @calloc(i64 noundef %585, i64 noundef 8) #25
  %587 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %586, ptr %587, align 8, !tbaa !165
  %588 = icmp eq ptr %586, null
  br i1 %588, label %589, label %590

589:                                              ; preds = %582
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #23
  br label %590

590:                                              ; preds = %589, %582
  %591 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %592 = load i32, ptr %591, align 8, !tbaa !143
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %620

594:                                              ; preds = %590
  %595 = load i8, ptr %544, align 8, !tbaa !131
  %596 = load ptr, ptr %587, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %596, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %597 = load i32, ptr %11, align 4, !tbaa !155
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %618, label %599

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %601 = sext i8 %595 to i64
  %602 = zext i32 %597 to i64
  br label %603

603:                                              ; preds = %599, %603
  %604 = phi i64 [ %601, %599 ], [ %612, %603 ]
  %605 = phi i64 [ 0, %599 ], [ %614, %603 ]
  %606 = load ptr, ptr %587, align 8, !tbaa !165
  %607 = getelementptr inbounds ptr, ptr %606, i64 %605
  %608 = load ptr, ptr %607, align 8, !tbaa !45
  %609 = getelementptr inbounds %struct.frame_store, ptr %608, i64 0, i32 12
  %610 = load ptr, ptr %609, align 8, !tbaa !117
  %611 = load ptr, ptr %600, align 8, !tbaa !45
  %612 = add nsw i64 %604, 1
  %613 = getelementptr inbounds ptr, ptr %611, i64 %604
  store ptr %610, ptr %613, align 8, !tbaa !45
  %614 = add nuw nsw i64 %605, 1
  %615 = icmp eq i64 %614, %602
  br i1 %615, label %616, label %603, !llvm.loop !213

616:                                              ; preds = %603
  %617 = trunc i64 %612 to i8
  br label %618

618:                                              ; preds = %616, %594
  %619 = phi i8 [ %595, %594 ], [ %617, %616 ]
  store i8 %619, ptr %544, align 8, !tbaa !131
  br label %712

620:                                              ; preds = %590
  %621 = load ptr, ptr %587, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %592, i32 noundef 0, ptr noundef %621, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %622 = load i32, ptr %591, align 8, !tbaa !143
  %623 = load ptr, ptr %587, align 8, !tbaa !165
  %624 = load i32, ptr %11, align 4, !tbaa !155
  %625 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %626 = load ptr, ptr %625, align 8, !tbaa !45
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %622, ptr noundef %623, i32 noundef %624, ptr noundef %626, ptr noundef nonnull %544) #24
  br label %712

627:                                              ; preds = %580
  %628 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %629 = load i32, ptr %628, align 8, !tbaa !37
  %630 = zext i32 %629 to i64
  %631 = tail call noalias ptr @calloc(i64 noundef %630, i64 noundef 8) #25
  %632 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %631, ptr %632, align 8, !tbaa !165
  %633 = icmp eq ptr %631, null
  br i1 %633, label %634, label %637

634:                                              ; preds = %627
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #23
  %635 = load i32, ptr %628, align 8, !tbaa !37
  %636 = zext i32 %635 to i64
  br label %637

637:                                              ; preds = %634, %627
  %638 = phi i64 [ %636, %634 ], [ %630, %627 ]
  %639 = tail call noalias ptr @calloc(i64 noundef %638, i64 noundef 8) #25
  %640 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %639, ptr %640, align 8, !tbaa !193
  %641 = icmp eq ptr %639, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #23
  br label %643

643:                                              ; preds = %642, %637
  %644 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %645 = load i32, ptr %644, align 8, !tbaa !143
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %698

647:                                              ; preds = %643
  %648 = load i8, ptr %544, align 8, !tbaa !131
  %649 = load ptr, ptr %632, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %649, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %650 = load ptr, ptr %640, align 8, !tbaa !193
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, ptr noundef %650, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %651 = load i32, ptr %11, align 4, !tbaa !155
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %672, label %653

653:                                              ; preds = %647
  %654 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %655 = sext i8 %648 to i64
  %656 = zext i32 %651 to i64
  br label %657

657:                                              ; preds = %653, %657
  %658 = phi i64 [ %655, %653 ], [ %666, %657 ]
  %659 = phi i64 [ 0, %653 ], [ %668, %657 ]
  %660 = load ptr, ptr %632, align 8, !tbaa !165
  %661 = getelementptr inbounds ptr, ptr %660, i64 %659
  %662 = load ptr, ptr %661, align 8, !tbaa !45
  %663 = getelementptr inbounds %struct.frame_store, ptr %662, i64 0, i32 12
  %664 = load ptr, ptr %663, align 8, !tbaa !117
  %665 = load ptr, ptr %654, align 8, !tbaa !45
  %666 = add nsw i64 %658, 1
  %667 = getelementptr inbounds ptr, ptr %665, i64 %658
  store ptr %664, ptr %667, align 8, !tbaa !45
  %668 = add nuw nsw i64 %659, 1
  %669 = icmp eq i64 %668, %656
  br i1 %669, label %670, label %657, !llvm.loop !214

670:                                              ; preds = %657
  %671 = trunc i64 %666 to i8
  br label %672

672:                                              ; preds = %670, %647
  %673 = phi i8 [ %648, %647 ], [ %671, %670 ]
  store i8 %673, ptr %544, align 8, !tbaa !131
  %674 = load i8, ptr %546, align 1, !tbaa !131
  %675 = load i32, ptr %12, align 8, !tbaa !156
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %696, label %677

677:                                              ; preds = %672
  %678 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %679 = sext i8 %674 to i64
  %680 = zext i32 %675 to i64
  br label %681

681:                                              ; preds = %677, %681
  %682 = phi i64 [ %679, %677 ], [ %690, %681 ]
  %683 = phi i64 [ 0, %677 ], [ %692, %681 ]
  %684 = load ptr, ptr %640, align 8, !tbaa !193
  %685 = getelementptr inbounds ptr, ptr %684, i64 %683
  %686 = load ptr, ptr %685, align 8, !tbaa !45
  %687 = getelementptr inbounds %struct.frame_store, ptr %686, i64 0, i32 12
  %688 = load ptr, ptr %687, align 8, !tbaa !117
  %689 = load ptr, ptr %678, align 8, !tbaa !45
  %690 = add nsw i64 %682, 1
  %691 = getelementptr inbounds ptr, ptr %689, i64 %682
  store ptr %688, ptr %691, align 8, !tbaa !45
  %692 = add nuw nsw i64 %683, 1
  %693 = icmp eq i64 %692, %680
  br i1 %693, label %694, label %681, !llvm.loop !215

694:                                              ; preds = %681
  %695 = trunc i64 %690 to i8
  br label %696

696:                                              ; preds = %694, %672
  %697 = phi i8 [ %674, %672 ], [ %695, %694 ]
  store i8 %697, ptr %546, align 1, !tbaa !131
  br label %712

698:                                              ; preds = %643
  %699 = load ptr, ptr %632, align 8, !tbaa !165
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %645, i32 noundef 0, ptr noundef %699, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %700 = load i32, ptr %644, align 8, !tbaa !143
  %701 = load ptr, ptr %632, align 8, !tbaa !165
  %702 = load i32, ptr %11, align 4, !tbaa !155
  %703 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %704 = load ptr, ptr %703, align 8, !tbaa !45
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %700, ptr noundef %701, i32 noundef %702, ptr noundef %704, ptr noundef nonnull %544) #24
  %705 = load i32, ptr %644, align 8, !tbaa !143
  %706 = load ptr, ptr %640, align 8, !tbaa !193
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %705, i32 noundef 1, ptr noundef %706, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #24
  %707 = load i32, ptr %644, align 8, !tbaa !143
  %708 = load ptr, ptr %640, align 8, !tbaa !193
  %709 = load i32, ptr %12, align 8, !tbaa !156
  %710 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %711 = load ptr, ptr %710, align 8, !tbaa !45
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %707, ptr noundef %708, i32 noundef %709, ptr noundef %711, ptr noundef nonnull %546) #24
  br label %712

712:                                              ; preds = %620, %618, %698, %696, %576
  %713 = load i8, ptr %544, align 8, !tbaa !131
  %714 = sext i8 %713 to i32
  %715 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %716 = load i32, ptr %715, align 8, !tbaa !167
  %717 = tail call fastcc i32 @imin(i32 noundef %714, i32 noundef %716) #24
  %718 = trunc i32 %717 to i8
  store i8 %718, ptr %544, align 8, !tbaa !131
  %719 = load i8, ptr %546, align 1, !tbaa !131
  %720 = sext i8 %719 to i32
  %721 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %722 = load i32, ptr %721, align 4, !tbaa !167
  %723 = tail call fastcc i32 @imin(i32 noundef %720, i32 noundef %722) #24
  %724 = trunc i32 %723 to i8
  store i8 %724, ptr %546, align 1, !tbaa !131
  %725 = shl i32 %717, 24
  %726 = ashr exact i32 %725, 24
  %727 = icmp ult i32 %726, 33
  br i1 %727, label %728, label %742

728:                                              ; preds = %712
  %729 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %730 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %731 = zext nneg i32 %726 to i64
  %732 = load ptr, ptr %729, align 8, !tbaa !54
  br label %733

733:                                              ; preds = %728, %733
  %734 = phi i64 [ %731, %728 ], [ %737, %733 ]
  %735 = load ptr, ptr %730, align 8, !tbaa !45
  %736 = getelementptr inbounds ptr, ptr %735, i64 %734
  store ptr %732, ptr %736, align 8, !tbaa !45
  %737 = add nuw nsw i64 %734, 1
  %738 = and i64 %737, 4294967295
  %739 = icmp eq i64 %738, 33
  br i1 %739, label %740, label %733, !llvm.loop !216

740:                                              ; preds = %733
  %741 = load i8, ptr %546, align 1, !tbaa !131
  br label %742

742:                                              ; preds = %740, %712
  %743 = phi i8 [ %741, %740 ], [ %724, %712 ]
  %744 = icmp ult i8 %743, 33
  br i1 %744, label %745, label %757

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %747 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %748 = zext nneg i8 %743 to i64
  %749 = load ptr, ptr %746, align 8, !tbaa !54
  br label %750

750:                                              ; preds = %745, %750
  %751 = phi i64 [ %748, %745 ], [ %754, %750 ]
  %752 = load ptr, ptr %747, align 8, !tbaa !45
  %753 = getelementptr inbounds ptr, ptr %752, i64 %751
  store ptr %749, ptr %753, align 8, !tbaa !45
  %754 = add nuw nsw i64 %751, 1
  %755 = and i64 %754, 4294967295
  %756 = icmp eq i64 %755, 33
  br i1 %756, label %757, label %750, !llvm.loop !217

757:                                              ; preds = %750, %742, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_mbaff_lists(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  br label %4

4:                                                ; preds = %2, %22
  %5 = phi i64 [ 2, %2 ], [ %24, %22 ]
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 %5
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  br label %16

8:                                                ; preds = %22
  %9 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55
  %10 = load i8, ptr %9, align 8, !tbaa !131
  %11 = icmp sgt i8 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56
  %14 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 2
  %15 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 4
  br label %26

16:                                               ; preds = %4, %16
  %17 = phi i64 [ 0, %4 ], [ %20, %16 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !45
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  store ptr %7, ptr %19, align 8, !tbaa !45
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, 33
  br i1 %21, label %22, label %16, !llvm.loop !218

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 %5
  store i8 0, ptr %23, align 1, !tbaa !131
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 6
  br i1 %25, label %8, label %4, !llvm.loop !219

26:                                               ; preds = %12, %26
  %27 = phi i64 [ 0, %12 ], [ %58, %26 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !45
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 40
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = load ptr, ptr %14, align 8, !tbaa !45
  %34 = shl nuw nsw i64 %27, 1
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  store ptr %32, ptr %35, align 8, !tbaa !45
  %36 = load ptr, ptr %13, align 8, !tbaa !45
  %37 = getelementptr inbounds ptr, ptr %36, i64 %27
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 41
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = load ptr, ptr %14, align 8, !tbaa !45
  %42 = or disjoint i64 %34, 1
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  store ptr %40, ptr %43, align 8, !tbaa !45
  %44 = load ptr, ptr %13, align 8, !tbaa !45
  %45 = getelementptr inbounds ptr, ptr %44, i64 %27
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 41
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = load ptr, ptr %15, align 8, !tbaa !45
  %50 = getelementptr inbounds ptr, ptr %49, i64 %34
  store ptr %48, ptr %50, align 8, !tbaa !45
  %51 = load ptr, ptr %13, align 8, !tbaa !45
  %52 = getelementptr inbounds ptr, ptr %51, i64 %27
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = getelementptr inbounds %struct.storable_picture, ptr %53, i64 0, i32 40
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  %56 = load ptr, ptr %15, align 8, !tbaa !45
  %57 = getelementptr inbounds ptr, ptr %56, i64 %42
  store ptr %55, ptr %57, align 8, !tbaa !45
  %58 = add nuw nsw i64 %27, 1
  %59 = load i8, ptr %9, align 8, !tbaa !131
  %60 = sext i8 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %26, label %62, !llvm.loop !220

62:                                               ; preds = %26, %8
  %63 = phi i8 [ %10, %8 ], [ %59, %26 ]
  %64 = shl i8 %63, 1
  %65 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 4
  store i8 %64, ptr %65, align 4, !tbaa !131
  %66 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 2
  store i8 %64, ptr %66, align 2, !tbaa !131
  %67 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !131
  %69 = icmp sgt i8 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 1
  %72 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 3
  %73 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 5
  br label %74

74:                                               ; preds = %70, %74
  %75 = phi i64 [ 0, %70 ], [ %106, %74 ]
  %76 = load ptr, ptr %71, align 8, !tbaa !45
  %77 = getelementptr inbounds ptr, ptr %76, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 40
  %80 = load ptr, ptr %79, align 8, !tbaa !55
  %81 = load ptr, ptr %72, align 8, !tbaa !45
  %82 = shl nuw nsw i64 %75, 1
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82
  store ptr %80, ptr %83, align 8, !tbaa !45
  %84 = load ptr, ptr %71, align 8, !tbaa !45
  %85 = getelementptr inbounds ptr, ptr %84, i64 %75
  %86 = load ptr, ptr %85, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.storable_picture, ptr %86, i64 0, i32 41
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = load ptr, ptr %72, align 8, !tbaa !45
  %90 = or disjoint i64 %82, 1
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  store ptr %88, ptr %91, align 8, !tbaa !45
  %92 = load ptr, ptr %71, align 8, !tbaa !45
  %93 = getelementptr inbounds ptr, ptr %92, i64 %75
  %94 = load ptr, ptr %93, align 8, !tbaa !45
  %95 = getelementptr inbounds %struct.storable_picture, ptr %94, i64 0, i32 41
  %96 = load ptr, ptr %95, align 8, !tbaa !58
  %97 = load ptr, ptr %73, align 8, !tbaa !45
  %98 = getelementptr inbounds ptr, ptr %97, i64 %82
  store ptr %96, ptr %98, align 8, !tbaa !45
  %99 = load ptr, ptr %71, align 8, !tbaa !45
  %100 = getelementptr inbounds ptr, ptr %99, i64 %75
  %101 = load ptr, ptr %100, align 8, !tbaa !45
  %102 = getelementptr inbounds %struct.storable_picture, ptr %101, i64 0, i32 40
  %103 = load ptr, ptr %102, align 8, !tbaa !55
  %104 = load ptr, ptr %73, align 8, !tbaa !45
  %105 = getelementptr inbounds ptr, ptr %104, i64 %90
  store ptr %103, ptr %105, align 8, !tbaa !45
  %106 = add nuw nsw i64 %75, 1
  %107 = load i8, ptr %67, align 1, !tbaa !131
  %108 = sext i8 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %74, label %110, !llvm.loop !221

110:                                              ; preds = %74, %62
  %111 = phi i8 [ %68, %62 ], [ %107, %74 ]
  %112 = shl i8 %111, 1
  %113 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 5
  store i8 %112, ptr %113, align 1, !tbaa !131
  %114 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 3
  store i8 %112, ptr %114, align 1, !tbaa !131
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_short_term_pic(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !222
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %12 = zext i32 %5 to i64
  %13 = load ptr, ptr %11, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %7, %58
  %15 = phi i64 [ 0, %7 ], [ %59, %58 ]
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !151
  br i1 %10, label %20, label %32

20:                                               ; preds = %14
  %21 = icmp eq i32 %19, 3
  br i1 %21, label %22, label %58

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !117
  %25 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 10
  %26 = load i8, ptr %25, align 8, !tbaa !128
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !146
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %64, label %58

32:                                               ; preds = %14
  %33 = and i32 %19, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  %38 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 10
  %39 = load i8, ptr %38, align 8, !tbaa !128
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !146
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %64, label %45

45:                                               ; preds = %35, %41, %32
  %46 = and i32 %19, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 14
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  %51 = getelementptr inbounds %struct.storable_picture, ptr %50, i64 0, i32 10
  %52 = load i8, ptr %51, align 8, !tbaa !128
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.storable_picture, ptr %50, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !146
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %64, label %58

58:                                               ; preds = %22, %28, %20, %48, %54, %45
  %59 = add nuw nsw i64 %15, 1
  %60 = icmp eq i64 %59, %12
  br i1 %60, label %61, label %14, !llvm.loop !223

61:                                               ; preds = %58, %2
  %62 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 138
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  br label %64

64:                                               ; preds = %54, %41, %28, %61
  %65 = phi ptr [ %63, %61 ], [ %50, %54 ], [ %37, %41 ], [ %24, %28 ]
  ret ptr %65
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_long_term_pic(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 33
  %9 = load i32, ptr %8, align 4, !tbaa !222
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %12 = zext i32 %4 to i64
  %13 = load ptr, ptr %11, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %6, %58
  %15 = phi i64 [ 0, %6 ], [ %59, %58 ]
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !151
  br i1 %10, label %20, label %32

20:                                               ; preds = %14
  %21 = icmp eq i32 %19, 3
  br i1 %21, label %22, label %58

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !117
  %25 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 10
  %26 = load i8, ptr %25, align 8, !tbaa !128
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !149
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %61, label %58

32:                                               ; preds = %14
  %33 = and i32 %19, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  %38 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 10
  %39 = load i8, ptr %38, align 8, !tbaa !128
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.storable_picture, ptr %37, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !149
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %61, label %45

45:                                               ; preds = %35, %41, %32
  %46 = and i32 %19, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 14
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  %51 = getelementptr inbounds %struct.storable_picture, ptr %50, i64 0, i32 10
  %52 = load i8, ptr %51, align 8, !tbaa !128
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.storable_picture, ptr %50, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !149
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %61, label %58

58:                                               ; preds = %22, %28, %20, %48, %54, %45
  %59 = add nuw nsw i64 %15, 1
  %60 = icmp eq i64 %59, %12
  br i1 %60, label %61, label %14, !llvm.loop !224

61:                                               ; preds = %28, %41, %54, %58, %2
  %62 = phi ptr [ null, %2 ], [ null, %58 ], [ %50, %54 ], [ %37, %41 ], [ %24, %28 ]
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_ref_pic_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 %4
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 %4
  %12 = load i32, ptr %11, align 4, !tbaa !167
  %13 = add nsw i32 %12, -1
  %14 = load ptr, ptr %0, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  store i32 0, ptr %3, align 4, !tbaa !167
  %15 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !222
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 52
  %19 = load i32, ptr %18, align 8, !tbaa !225
  br i1 %17, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %22 = load i32, ptr %21, align 4, !tbaa !145
  br label %29

23:                                               ; preds = %2
  %24 = shl nsw i32 %19, 1
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %26 = load i32, ptr %25, align 4, !tbaa !145
  %27 = shl i32 %26, 1
  %28 = or disjoint i32 %27, 1
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i32 [ %19, %20 ], [ %24, %23 ]
  %31 = phi i32 [ %22, %20 ], [ %28, %23 ]
  %32 = load i32, ptr %6, align 4, !tbaa !167
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %78, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %4
  br label %36

36:                                               ; preds = %34, %72
  %37 = phi i64 [ 0, %34 ], [ %74, %72 ]
  %38 = phi i32 [ %32, %34 ], [ %76, %72 ]
  %39 = phi ptr [ %6, %34 ], [ %75, %72 ]
  %40 = phi i32 [ %31, %34 ], [ %73, %72 ]
  %41 = icmp sgt i32 %38, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #23
  %43 = load i32, ptr %39, align 4, !tbaa !167
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %43, %42 ], [ %38, %36 ]
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = icmp eq i32 %45, 0
  %49 = getelementptr inbounds i32, ptr %8, i64 %37
  %50 = load i32, ptr %49, align 4, !tbaa !167
  br i1 %48, label %51, label %57

51:                                               ; preds = %47
  %52 = xor i32 %50, -1
  %53 = add i32 %40, %52
  %54 = icmp slt i32 %53, 0
  %55 = select i1 %54, i32 %30, i32 0
  %56 = add nsw i32 %55, %53
  br label %63

57:                                               ; preds = %47
  %58 = add i32 %40, 1
  %59 = add i32 %58, %50
  %60 = icmp slt i32 %59, %30
  %61 = select i1 %60, i32 0, i32 %30
  %62 = sub nsw i32 %59, %61
  br label %63

63:                                               ; preds = %57, %51
  %64 = phi i32 [ %56, %51 ], [ %62, %57 ]
  %65 = icmp sgt i32 %64, %31
  %66 = select i1 %65, i32 %30, i32 0
  %67 = sub nsw i32 %64, %66
  call void @reorder_short_term(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %13, i32 noundef %67, ptr noundef nonnull %3, i32 noundef -1) #23
  br label %72

68:                                               ; preds = %44
  %69 = load ptr, ptr %35, align 8, !tbaa !45
  %70 = getelementptr inbounds i32, ptr %10, i64 %37
  %71 = load i32, ptr %70, align 4, !tbaa !167
  call void @reorder_long_term(ptr noundef nonnull %0, ptr noundef %69, i32 noundef %13, i32 noundef %71, ptr noundef nonnull %3, i32 noundef -1) #23
  br label %72

72:                                               ; preds = %63, %68
  %73 = phi i32 [ %64, %63 ], [ %40, %68 ]
  %74 = add nuw i64 %37, 1
  %75 = getelementptr inbounds i32, ptr %6, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !167
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %36, !llvm.loop !226

78:                                               ; preds = %72, %29
  %79 = trunc i32 %12 to i8
  %80 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 %4
  store i8 %79, ptr %80, align 1, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare void @reorder_short_term(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @reorder_long_term(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %27
  %11 = phi i64 [ 0, %6 ], [ %29, %27 ]
  %12 = phi i32 [ 0, %6 ], [ %28, %27 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = tail call fastcc i32 @is_short_term_reference(ptr noundef %15) #24, !range !177
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 8, !tbaa !43
  %24 = add i32 %12, 1
  %25 = zext i32 %12 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  store ptr %15, ptr %26, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %10, %18, %22
  %28 = phi i32 [ %24, %22 ], [ %12, %18 ], [ %12, %10 ]
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, %9
  br i1 %30, label %31, label %10, !llvm.loop !227

31:                                               ; preds = %27, %2
  %32 = phi i32 [ 0, %2 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  store i32 %32, ptr %33, align 8, !tbaa !25
  %34 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !37
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %39 = zext i32 %32 to i64
  %40 = zext i32 %35 to i64
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %39, %37 ], [ %44, %41 ]
  %43 = load ptr, ptr %38, align 8, !tbaa !43
  %44 = add nuw nsw i64 %42, 1
  %45 = getelementptr inbounds ptr, ptr %43, i64 %42
  store ptr null, ptr %45, align 8, !tbaa !45
  %46 = icmp eq i64 %44, %40
  br i1 %46, label %47, label %41, !llvm.loop !228

47:                                               ; preds = %41, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_short_term_reference(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 10
  %12 = load i8, ptr %11, align 8, !tbaa !128
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %17

14:                                               ; preds = %1
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %10, %4, %14
  %18 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.storable_picture, ptr %19, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !94
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.storable_picture, ptr %19, i64 0, i32 10
  %27 = load i8, ptr %26, align 8, !tbaa !128
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %17, %25, %21, %14
  %30 = and i32 %2, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  %38 = load i32, ptr %37, align 4, !tbaa !94
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  %42 = load i8, ptr %41, align 8, !tbaa !128
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32, %40, %36, %29
  br label %45

45:                                               ; preds = %40, %25, %10, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %10 ], [ 1, %25 ], [ 1, %40 ]
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ltref_list(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %27
  %11 = phi i64 [ 0, %6 ], [ %29, %27 ]
  %12 = phi i32 [ 0, %6 ], [ %28, %27 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !42
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = tail call fastcc i32 @is_long_term_reference(ptr noundef %15) #24, !range !177
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 8, !tbaa !44
  %24 = add i32 %12, 1
  %25 = zext i32 %12 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  store ptr %15, ptr %26, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %10, %18, %22
  %28 = phi i32 [ %24, %22 ], [ %12, %18 ], [ %12, %10 ]
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, %9
  br i1 %30, label %31, label %10, !llvm.loop !229

31:                                               ; preds = %27, %2
  %32 = phi i32 [ 0, %2 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  store i32 %32, ptr %33, align 4, !tbaa !22
  %34 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !37
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %39 = zext i32 %32 to i64
  %40 = zext i32 %35 to i64
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %39, %37 ], [ %44, %41 ]
  %43 = load ptr, ptr %38, align 8, !tbaa !44
  %44 = add nuw nsw i64 %42, 1
  %45 = getelementptr inbounds ptr, ptr %43, i64 %42
  store ptr null, ptr %45, align 8, !tbaa !45
  %46 = icmp eq i64 %44, %40
  br i1 %46, label %47, label %41, !llvm.loop !230

47:                                               ; preds = %41, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_long_term_reference(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 10
  %12 = load i8, ptr %11, align 8, !tbaa !128
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %45

14:                                               ; preds = %1
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %10, %4, %14
  %18 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.storable_picture, ptr %19, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !94
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.storable_picture, ptr %19, i64 0, i32 10
  %27 = load i8, ptr %26, align 8, !tbaa !128
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %17, %25, %21, %14
  %30 = and i32 %2, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  %38 = load i32, ptr %37, align 4, !tbaa !94
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  %42 = load i8, ptr %41, align 8, !tbaa !128
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32, %40, %36, %29
  br label %45

45:                                               ; preds = %40, %25, %10, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %10 ], [ 1, %25 ], [ 1, %40 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mm_update_max_long_term_frame_idx(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !33
  %5 = tail call i32 @GetVOIdx(ptr noundef %4, i32 noundef %2) #23
  %6 = add nsw i32 %1, -1
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 11, i64 %7
  store i32 %6, ptr %8, align 4, !tbaa !167
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  br label %14

14:                                               ; preds = %12, %30
  %15 = phi i32 [ %10, %12 ], [ %31, %30 ]
  %16 = phi i64 [ 0, %12 ], [ %32, %30 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !171
  %22 = load i32, ptr %8, align 4, !tbaa !167
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  tail call fastcc void @unmark_for_long_term_reference(ptr noundef nonnull %19) #24
  %29 = load i32, ptr %9, align 4, !tbaa !22
  br label %30

30:                                               ; preds = %14, %24, %28
  %31 = phi i32 [ %15, %14 ], [ %15, %24 ], [ %29, %28 ]
  %32 = add nuw nsw i64 %16, 1
  %33 = zext i32 %31 to i64
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %14, label %35, !llvm.loop !231

35:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: optsize
declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @unmark_for_long_term_reference(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 11
  store i32 0, ptr %10, align 4, !tbaa !94
  %11 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 10
  store i8 0, ptr %11, align 8, !tbaa !128
  br label %12

12:                                               ; preds = %5, %9, %1
  %13 = and i32 %2, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.storable_picture, ptr %17, i64 0, i32 11
  store i32 0, ptr %20, align 4, !tbaa !94
  %21 = getelementptr inbounds %struct.storable_picture, ptr %17, i64 0, i32 10
  store i8 0, ptr %21, align 8, !tbaa !128
  br label %22

22:                                               ; preds = %15, %19, %12
  %23 = icmp eq i32 %2, 3
  br i1 %23, label %24, label %42

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !119
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.storable_picture, ptr %26, i64 0, i32 11
  store i32 0, ptr %33, align 4, !tbaa !94
  %34 = getelementptr inbounds %struct.storable_picture, ptr %26, i64 0, i32 10
  store i8 0, ptr %34, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 11
  store i32 0, ptr %35, align 4, !tbaa !94
  %36 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 10
  store i8 0, ptr %36, align 8, !tbaa !128
  br label %37

37:                                               ; preds = %32, %28, %24
  %38 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !117
  %40 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 11
  store i32 0, ptr %40, align 4, !tbaa !94
  %41 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 10
  store i8 0, ptr %41, align 8, !tbaa !128
  br label %42

42:                                               ; preds = %37, %22
  %43 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 1
  store i32 0, ptr %43, align 4, !tbaa !151
  %44 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 2
  store i32 0, ptr %44, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @store_picture_in_dpb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 61
  store i32 0, ptr %6, align 4, !tbaa !62
  %7 = load i32, ptr %1, align 8, !tbaa !99
  %8 = icmp eq i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 62
  store i32 %9, ptr %10, align 8, !tbaa !232
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 44
  %12 = load i32, ptr %11, align 4, !tbaa !233
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  tail call fastcc void @idr_memory_management(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  %15 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %15, i8 0, i64 400, i1 false)
  br label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  %22 = load i32, ptr %21, align 8, !tbaa !234
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @adaptive_memory_management(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %25

25:                                               ; preds = %16, %20, %24, %14
  %26 = load i32, ptr %1, align 8, !tbaa !99
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %105

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.frame_store, ptr %31, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %37 = load i32, ptr %36, align 8, !tbaa !98
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %73, label %39

39:                                               ; preds = %33, %29
  %40 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  %46 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %47 = load i32, ptr %46, align 8, !tbaa !98
  %48 = zext i32 %41 to i64
  br label %49

49:                                               ; preds = %43, %63
  %50 = phi i64 [ 0, %43 ], [ %64, %63 ]
  %51 = getelementptr inbounds ptr, ptr %45, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = getelementptr inbounds %struct.frame_store, ptr %52, i64 0, i32 15
  %54 = load i32, ptr %53, align 8, !tbaa !46
  %55 = icmp eq i32 %54, %47
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  switch i32 %26, label %63 [
    i32 1, label %57
    i32 2, label %60
  ]

57:                                               ; preds = %56
  %58 = load i32, ptr %52, align 8, !tbaa !129
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %66, label %63

60:                                               ; preds = %56
  %61 = load i32, ptr %52, align 8, !tbaa !129
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %56, %57, %49, %60
  %64 = add nuw nsw i64 %50, 1
  %65 = icmp eq i64 %64, %48
  br i1 %65, label %70, label %49, !llvm.loop !235

66:                                               ; preds = %57, %60
  %67 = and i64 %50, 4294967295
  %68 = getelementptr inbounds ptr, ptr %45, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !45
  store ptr %69, ptr %30, align 8, !tbaa !41
  br label %70

70:                                               ; preds = %63, %39, %66
  %71 = phi ptr [ %69, %66 ], [ %31, %39 ], [ %31, %63 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %105, label %73

73:                                               ; preds = %33, %70
  %74 = phi ptr [ %71, %70 ], [ %31, %33 ]
  %75 = getelementptr inbounds %struct.frame_store, ptr %74, i64 0, i32 15
  %76 = load i32, ptr %75, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %78 = load i32, ptr %77, align 8, !tbaa !98
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.frame_store, ptr %74, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !144
  %83 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  %84 = load i32, ptr %83, align 4, !tbaa !146
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  switch i32 %26, label %105 [
    i32 1, label %87
    i32 2, label %90
  ]

87:                                               ; preds = %86
  %88 = load i32, ptr %74, align 8, !tbaa !129
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %93, label %105

90:                                               ; preds = %86
  %91 = load i32, ptr %74, align 8, !tbaa !129
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %90, %87
  %94 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %95 = load i32, ptr %94, align 4, !tbaa !94
  %96 = icmp eq i32 %95, 0
  %97 = getelementptr inbounds %struct.frame_store, ptr %74, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !236
  %99 = icmp eq i32 %98, 0
  br i1 %96, label %101, label %100

100:                                              ; preds = %93
  br i1 %99, label %105, label %102

101:                                              ; preds = %93
  br i1 %99, label %102, label %105

102:                                              ; preds = %101, %100
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %5, ptr noundef nonnull %74, ptr noundef nonnull %1) #24
  %103 = load i32, ptr %77, align 8, !tbaa !98
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %103) #24
  %104 = load i32, ptr %77, align 8, !tbaa !98
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %104) #24
  store ptr null, ptr %30, align 8, !tbaa !41
  br label %270

105:                                              ; preds = %86, %87, %100, %25, %70, %73, %90, %101, %80
  %106 = load i32, ptr %11, align 4, !tbaa !233
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %110 = load i32, ptr %109, align 4, !tbaa !94
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  %114 = load i32, ptr %113, align 8, !tbaa !234
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  tail call fastcc void @sliding_window_memory_management(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %117

117:                                              ; preds = %116, %112, %108, %105
  %118 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 95
  %119 = load i32, ptr %118, align 8, !tbaa !63
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !37
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !42
  %128 = zext i32 %123 to i64
  br label %129

129:                                              ; preds = %125, %138
  %130 = phi i64 [ 0, %125 ], [ %139, %138 ]
  %131 = getelementptr inbounds ptr, ptr %127, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !45
  %133 = getelementptr inbounds %struct.frame_store, ptr %132, i64 0, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !151
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.frame_store, ptr %132, i64 0, i32 11
  store i32 1, ptr %137, align 4, !tbaa !237
  br label %138

138:                                              ; preds = %129, %136
  %139 = add nuw nsw i64 %130, 1
  %140 = icmp eq i64 %139, %128
  br i1 %140, label %141, label %129, !llvm.loop !238

141:                                              ; preds = %138, %121
  %142 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %143 = load i32, ptr %142, align 4, !tbaa !40
  %144 = icmp eq i32 %143, %123
  br i1 %144, label %151, label %161

145:                                              ; preds = %117
  %146 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %147 = load i32, ptr %146, align 4, !tbaa !40
  %148 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %149 = load i32, ptr %148, align 8, !tbaa !37
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %152, label %161

151:                                              ; preds = %141
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %0, i32 noundef 2) #23
  br label %152

152:                                              ; preds = %145, %151
  %153 = phi ptr [ %142, %151 ], [ %146, %145 ]
  %154 = phi ptr [ %122, %151 ], [ %148, %145 ]
  %155 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %156 = load i32, ptr %155, align 8, !tbaa !98
  %157 = tail call fastcc i32 @remove_unused_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %156) #24, !range !177
  %158 = load i32, ptr %118, align 8, !tbaa !63
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %152
  tail call void @sliding_window_poc_management(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %161

161:                                              ; preds = %145, %152, %160, %141
  %162 = phi ptr [ %148, %145 ], [ %154, %152 ], [ %154, %160 ], [ %122, %141 ]
  %163 = phi ptr [ %146, %145 ], [ %153, %152 ], [ %153, %160 ], [ %142, %141 ]
  %164 = load i32, ptr %163, align 4, !tbaa !40
  %165 = load i32, ptr %162, align 8, !tbaa !37
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %169 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %170 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  br label %171

171:                                              ; preds = %167, %187
  %172 = load i32, ptr %168, align 4, !tbaa !94
  %173 = icmp eq i32 %172, 0
  %174 = load i32, ptr %169, align 8, !tbaa !98
  br i1 %173, label %175, label %187

175:                                              ; preds = %171
  call fastcc void @get_smallest_poc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %174) #24
  %176 = load i32, ptr %4, align 4, !tbaa !167
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i32, ptr %170, align 4, !tbaa !111
  %180 = load i32, ptr %3, align 4, !tbaa !167
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = load i32, ptr %169, align 8, !tbaa !98
  br label %187

184:                                              ; preds = %178, %175
  %185 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 121
  %186 = load i32, ptr %185, align 8, !tbaa !239
  tail call void @direct_output(ptr noundef %5, ptr noundef nonnull %1, i32 noundef %186) #23
  br label %270

187:                                              ; preds = %182, %171
  %188 = phi i32 [ %183, %182 ], [ %174, %171 ]
  %189 = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %188) #24, !range !177
  %190 = load i32, ptr %163, align 4, !tbaa !40
  %191 = load i32, ptr %162, align 8, !tbaa !37
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %171, label %193, !llvm.loop !240

193:                                              ; preds = %187, %161
  %194 = phi i32 [ %164, %161 ], [ %190, %187 ]
  %195 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  %196 = load i32, ptr %195, align 4, !tbaa !94
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %234, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  %200 = load i8, ptr %199, align 8, !tbaa !128
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %204 = load i32, ptr %203, align 8, !tbaa !25
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %234, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %208 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %209 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %210

210:                                              ; preds = %206, %227
  %211 = phi i32 [ %204, %206 ], [ %228, %227 ]
  %212 = phi i64 [ 0, %206 ], [ %229, %227 ]
  %213 = load ptr, ptr %207, align 8, !tbaa !43
  %214 = getelementptr inbounds ptr, ptr %213, i64 %212
  %215 = load ptr, ptr %214, align 8, !tbaa !45
  %216 = getelementptr inbounds %struct.frame_store, ptr %215, i64 0, i32 5
  %217 = load i32, ptr %216, align 4, !tbaa !144
  %218 = load i32, ptr %208, align 4, !tbaa !93
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %210
  %221 = getelementptr inbounds %struct.frame_store, ptr %215, i64 0, i32 15
  %222 = load i32, ptr %221, align 8, !tbaa !46
  %223 = load i32, ptr %209, align 8, !tbaa !98
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  tail call void @error(ptr noundef nonnull @.str.20, i32 noundef 500) #23
  %226 = load i32, ptr %203, align 8, !tbaa !25
  br label %227

227:                                              ; preds = %210, %220, %225
  %228 = phi i32 [ %211, %210 ], [ %211, %220 ], [ %226, %225 ]
  %229 = add nuw nsw i64 %212, 1
  %230 = zext i32 %228 to i64
  %231 = icmp ult i64 %229, %230
  br i1 %231, label %210, label %232, !llvm.loop !241

232:                                              ; preds = %227
  %233 = load i32, ptr %163, align 4, !tbaa !40
  br label %234

234:                                              ; preds = %232, %202, %198, %193
  %235 = phi i32 [ %233, %232 ], [ %194, %202 ], [ %194, %198 ], [ %194, %193 ]
  %236 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  %238 = zext i32 %235 to i64
  %239 = getelementptr inbounds ptr, ptr %237, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !45
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %5, ptr noundef %240, ptr noundef nonnull %1) #24
  %241 = load i32, ptr %11, align 4, !tbaa !233
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 96
  store i32 0, ptr %244, align 4, !tbaa !242
  br label %245

245:                                              ; preds = %243, %234
  %246 = load i32, ptr %1, align 8, !tbaa !99
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %236, align 8, !tbaa !42
  %250 = load i32, ptr %163, align 4, !tbaa !40
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %249, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !45
  br label %254

254:                                              ; preds = %245, %248
  %255 = phi ptr [ %253, %248 ], [ null, %245 ]
  %256 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  store ptr %255, ptr %256, align 8
  %257 = load i32, ptr %163, align 4, !tbaa !40
  %258 = add i32 %257, 1
  store i32 %258, ptr %163, align 4, !tbaa !40
  %259 = load i32, ptr %118, align 8, !tbaa !63
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %266, label %261

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %263 = load i32, ptr %262, align 4, !tbaa !111
  %264 = zext i32 %257 to i64
  %265 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 135, i64 %264
  store i32 %263, ptr %265, align 4, !tbaa !167
  br label %266

266:                                              ; preds = %261, %254
  %267 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %268 = load i32, ptr %267, align 8, !tbaa !98
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %268) #24
  %269 = load i32, ptr %267, align 8, !tbaa !98
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %269) #24
  tail call void @check_num_ref(ptr noundef nonnull %0) #24
  br label %270

270:                                              ; preds = %266, %184, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @idr_memory_management(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = tail call i32 @GetVOIdx(ptr noundef %3, i32 noundef %5) #23
  %7 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 45
  %13 = load i32, ptr %12, align 8, !tbaa !244
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %96, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !40
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %11, 0
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  br label %32

22:                                               ; preds = %50, %15
  %23 = phi i32 [ 0, %15 ], [ %52, %50 ]
  %24 = phi i32 [ 0, %15 ], [ %51, %50 ]
  %25 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %22
  %29 = icmp eq i32 %11, 0
  %30 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %31 = zext i32 %26 to i64
  br label %64

32:                                               ; preds = %19, %50
  %33 = phi i32 [ %17, %19 ], [ %51, %50 ]
  %34 = phi i64 [ 0, %19 ], [ %53, %50 ]
  %35 = phi i32 [ 0, %19 ], [ %52, %50 ]
  %36 = load ptr, ptr %21, align 8, !tbaa !42
  %37 = getelementptr inbounds ptr, ptr %36, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  br i1 %20, label %44, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.frame_store, ptr %38, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = load i32, ptr %4, align 8, !tbaa !98
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %32, %39
  tail call void @free_frame_store(ptr noundef %38) #24
  %45 = tail call ptr @alloc_frame_store() #24
  %46 = load ptr, ptr %21, align 8, !tbaa !42
  %47 = getelementptr inbounds ptr, ptr %46, i64 %34
  store ptr %45, ptr %47, align 8, !tbaa !45
  %48 = add nsw i32 %35, 1
  %49 = load i32, ptr %16, align 4, !tbaa !40
  br label %50

50:                                               ; preds = %39, %44
  %51 = phi i32 [ %49, %44 ], [ %33, %39 ]
  %52 = phi i32 [ %48, %44 ], [ %35, %39 ]
  %53 = add nuw nsw i64 %34, 1
  %54 = zext i32 %51 to i64
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %32, label %22, !llvm.loop !245

56:                                               ; preds = %76, %22
  %57 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %58 = load i32, ptr %57, align 4, !tbaa !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %56
  %61 = icmp eq i32 %11, 0
  %62 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %63 = zext i32 %58 to i64
  br label %79

64:                                               ; preds = %28, %76
  %65 = phi i64 [ 0, %28 ], [ %77, %76 ]
  %66 = load ptr, ptr %30, align 8, !tbaa !43
  br i1 %29, label %74, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !45
  %70 = getelementptr inbounds %struct.frame_store, ptr %69, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = load i32, ptr %4, align 8, !tbaa !98
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67, %64
  %75 = getelementptr inbounds ptr, ptr %66, i64 %65
  store ptr null, ptr %75, align 8, !tbaa !45
  br label %76

76:                                               ; preds = %67, %74
  %77 = add nuw nsw i64 %65, 1
  %78 = icmp eq i64 %77, %31
  br i1 %78, label %56, label %64, !llvm.loop !246

79:                                               ; preds = %60, %91
  %80 = phi i64 [ 0, %60 ], [ %92, %91 ]
  %81 = load ptr, ptr %62, align 8, !tbaa !44
  br i1 %61, label %89, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds ptr, ptr %81, i64 %80
  %84 = load ptr, ptr %83, align 8, !tbaa !45
  %85 = getelementptr inbounds %struct.frame_store, ptr %84, i64 0, i32 15
  %86 = load i32, ptr %85, align 8, !tbaa !46
  %87 = load i32, ptr %4, align 8, !tbaa !98
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82, %79
  %90 = getelementptr inbounds ptr, ptr %81, i64 %80
  store ptr null, ptr %90, align 8, !tbaa !45
  br label %91

91:                                               ; preds = %82, %89
  %92 = add nuw nsw i64 %80, 1
  %93 = icmp eq i64 %92, %63
  br i1 %93, label %94, label %79, !llvm.loop !247

94:                                               ; preds = %91, %56
  %95 = sub i32 %24, %23
  store i32 %95, ptr %16, align 4, !tbaa !40
  br label %102

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 71
  %98 = load i32, ptr %97, align 4, !tbaa !35
  switch i32 %98, label %100 [
    i32 118, label %99
    i32 128, label %99
  ]

99:                                               ; preds = %96, %96
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef -1) #24
  br label %102

100:                                              ; preds = %96
  %101 = load i32, ptr %4, align 8, !tbaa !98
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef %101) #24
  br label %102

102:                                              ; preds = %99, %100, %94
  %103 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  store ptr null, ptr %103, align 8, !tbaa !41
  %104 = load i32, ptr %4, align 8, !tbaa !98
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %104) #24
  %105 = load i32, ptr %4, align 8, !tbaa !98
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %105) #24
  %106 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 -2147483648, ptr %106, align 8, !tbaa !60
  %107 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  store i32 -1, ptr %107, align 4, !tbaa !61
  %108 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 46
  %109 = load i32, ptr %108, align 4, !tbaa !248
  %110 = icmp eq i32 %109, 0
  %111 = sext i32 %6 to i64
  %112 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 11, i64 %111
  br i1 %110, label %115, label %113

113:                                              ; preds = %102
  store i32 0, ptr %112, align 4, !tbaa !167
  %114 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 9
  store i32 0, ptr %114, align 4, !tbaa !148
  br label %116

115:                                              ; preds = %102
  store i32 -1, ptr %112, align 4, !tbaa !167
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i8 [ 0, %115 ], [ 1, %113 ]
  %118 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  store i8 %117, ptr %118, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adaptive_memory_management(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 61
  store i32 0, ptr %4, align 4, !tbaa !62
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %76, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %10

10:                                               ; preds = %8, %45
  %11 = phi ptr [ %6, %8 ], [ %48, %45 ]
  %12 = load i32, ptr %11, align 8, !tbaa !249
  switch i32 %12, label %44 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
    i32 4, label %33
    i32 5, label %38
    i32 6, label %41
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !251
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.21, i32 noundef 500) #23
  br label %45

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !252
  tail call fastcc void @mm_unmark_short_term_for_reference(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %20) #24
  %21 = load i32, ptr %9, align 8, !tbaa !98
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %21) #24
  br label %45

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !253
  tail call fastcc void @mm_unmark_long_term_for_reference(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %24) #24
  %25 = load i32, ptr %9, align 8, !tbaa !98
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %25) #24
  br label %45

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !252
  %29 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !254
  tail call fastcc void @mm_assign_long_term_frame_idx(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %28, i32 noundef %30) #24
  %31 = load i32, ptr %9, align 8, !tbaa !98
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %31) #24
  %32 = load i32, ptr %9, align 8, !tbaa !98
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %32) #24
  br label %45

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !255
  %36 = load i32, ptr %9, align 8, !tbaa !98
  tail call void @mm_update_max_long_term_frame_idx(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %36) #24
  %37 = load i32, ptr %9, align 8, !tbaa !98
  tail call void @update_ltref_list(ptr noundef nonnull %0, i32 noundef %37) #24
  br label %45

38:                                               ; preds = %10
  %39 = load i32, ptr %9, align 8, !tbaa !98
  tail call fastcc void @mm_unmark_all_short_term_for_reference(ptr noundef nonnull %0, i32 noundef %39) #24
  %40 = load i32, ptr %9, align 8, !tbaa !98
  tail call fastcc void @mm_unmark_all_long_term_for_reference(ptr noundef nonnull %0, i32 noundef %40) #24
  store i32 1, ptr %4, align 4, !tbaa !62
  br label %45

41:                                               ; preds = %10
  %42 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !254
  tail call fastcc void @mm_mark_current_picture_long_term(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %43) #24
  tail call void @check_num_ref(ptr noundef nonnull %0) #24
  br label %45

44:                                               ; preds = %10
  tail call void @error(ptr noundef nonnull @.str.22, i32 noundef 500) #23
  br label %45

45:                                               ; preds = %13, %17, %44, %41, %38, %33, %26, %22, %18
  %46 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %11, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !251
  store ptr %47, ptr %5, align 8, !tbaa !108
  tail call void @free(ptr noundef nonnull %11) #23
  %48 = load ptr, ptr %5, align 8, !tbaa !108
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %10, !llvm.loop !256

50:                                               ; preds = %45
  %51 = load i32, ptr %4, align 4, !tbaa !62
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  store i32 0, ptr %54, align 4, !tbaa !93
  %55 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  store i32 0, ptr %55, align 4, !tbaa !146
  %56 = load i32, ptr %1, align 8, !tbaa !99
  switch i32 %56, label %73 [
    i32 1, label %57
    i32 2, label %60
    i32 0, label %63
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 2
  store i32 0, ptr %58, align 8, !tbaa !113
  %59 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  store i32 0, ptr %59, align 4, !tbaa !111
  br label %73

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 3
  store i32 0, ptr %61, align 4, !tbaa !112
  %62 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  store i32 0, ptr %62, align 4, !tbaa !111
  br label %73

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !111
  %66 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !113
  %68 = sub nsw i32 %67, %65
  store i32 %68, ptr %66, align 8, !tbaa !113
  %69 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !112
  %71 = sub nsw i32 %70, %65
  store i32 %71, ptr %69, align 4, !tbaa !112
  %72 = tail call fastcc i32 @imin(i32 noundef %68, i32 noundef %71) #24
  store i32 %72, ptr %64, align 4, !tbaa !111
  br label %73

73:                                               ; preds = %53, %63, %60, %57
  %74 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %75 = load i32, ptr %74, align 8, !tbaa !98
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef %75) #24
  br label %76

76:                                               ; preds = %2, %73, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_picture_in_dpb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !257
  %5 = load i32, ptr %2, align 8, !tbaa !99
  switch i32 %5, label %111 [
    i32 0, label %6
    i32 1, label %34
    i32 2, label %71
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  store ptr %2, ptr %7, align 8, !tbaa !117
  store i32 3, ptr %1, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 1
  store i32 3, ptr %12, align 4, !tbaa !151
  %13 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 3
  store i32 3, ptr %13, align 4, !tbaa !236
  %14 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 10
  %15 = load i8, ptr %14, align 8, !tbaa !128
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 2
  store i32 3, ptr %18, align 8, !tbaa !153
  %19 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !148
  %21 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %20, ptr %21, align 8, !tbaa !171
  br label %22

22:                                               ; preds = %11, %17, %6
  %23 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 64
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  store i32 %24, ptr %25, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 65
  %27 = load i32, ptr %26, align 4, !tbaa !258
  %28 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16
  %29 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16, i64 1
  store i32 %27, ptr %29, align 4, !tbaa !167
  store i32 %27, ptr %28, align 4, !tbaa !167
  %30 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 66
  %31 = load i32, ptr %30, align 8, !tbaa !259
  %32 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17
  %33 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17, i64 1
  store i32 %31, ptr %33, align 4, !tbaa !167
  store i32 %31, ptr %32, align 4, !tbaa !167
  tail call void @dpb_split_field(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %111

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  store ptr %2, ptr %35, align 8, !tbaa !118
  %36 = load i32, ptr %1, align 8, !tbaa !129
  %37 = or i32 %36, 1
  store i32 %37, ptr %1, align 8, !tbaa !129
  %38 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 64
  %39 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %40 = load <2 x i32>, ptr %38, align 8, !tbaa !167
  store <2 x i32> %40, ptr %39, align 8, !tbaa !167
  %41 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 66
  %42 = load i32, ptr %41, align 8, !tbaa !259
  %43 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17
  store i32 %42, ptr %43, align 4, !tbaa !167
  %44 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %45 = load i32, ptr %44, align 4, !tbaa !94
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !151
  %50 = or i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !151
  %51 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !236
  %53 = or i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !236
  %54 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 10
  %55 = load i8, ptr %54, align 8, !tbaa !128
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !153
  %60 = or i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !153
  %61 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !148
  %63 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %62, ptr %63, align 8, !tbaa !171
  br label %64

64:                                               ; preds = %47, %57, %34
  %65 = icmp eq i32 %37, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  tail call void @dpb_combine_field(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %111

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !111
  %70 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %69, ptr %70, align 8, !tbaa !187
  tail call fastcc void @gen_field_ref_ids(ptr noundef nonnull %0, ptr noundef nonnull %2) #24
  br label %111

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  store ptr %2, ptr %72, align 8, !tbaa !119
  %73 = load i32, ptr %1, align 8, !tbaa !129
  %74 = or i32 %73, 2
  store i32 %74, ptr %1, align 8, !tbaa !129
  %75 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 64
  %76 = load i32, ptr %75, align 8, !tbaa !98
  %77 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  store i32 %76, ptr %77, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 65
  %79 = load i32, ptr %78, align 4, !tbaa !258
  %80 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16, i64 1
  store i32 %79, ptr %80, align 4, !tbaa !167
  %81 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 66
  %82 = load i32, ptr %81, align 8, !tbaa !259
  %83 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 17, i64 1
  store i32 %82, ptr %83, align 4, !tbaa !167
  %84 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %85 = load i32, ptr %84, align 4, !tbaa !94
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !151
  %90 = or i32 %89, 2
  store i32 %90, ptr %88, align 4, !tbaa !151
  %91 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !236
  %93 = or i32 %92, 2
  store i32 %93, ptr %91, align 4, !tbaa !236
  %94 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 10
  %95 = load i8, ptr %94, align 8, !tbaa !128
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !153
  %100 = or i32 %99, 2
  store i32 %100, ptr %98, align 8, !tbaa !153
  %101 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 9
  %102 = load i32, ptr %101, align 4, !tbaa !148
  %103 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %102, ptr %103, align 8, !tbaa !171
  br label %104

104:                                              ; preds = %87, %97, %71
  %105 = icmp eq i32 %74, 3
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  tail call void @dpb_combine_field(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !111
  %110 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %109, ptr %110, align 8, !tbaa !187
  tail call fastcc void @gen_field_ref_ids(ptr noundef nonnull %0, ptr noundef nonnull %2) #24
  br label %111

111:                                              ; preds = %106, %107, %66, %67, %3, %22
  %112 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 5
  %113 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 6
  %114 = load <2 x i32>, ptr %113, align 8, !tbaa !167
  %115 = shufflevector <2 x i32> %114, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %115, ptr %112, align 4, !tbaa !167
  %116 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 12
  %117 = load i32, ptr %116, align 8, !tbaa !96
  %118 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 9
  store i32 %117, ptr %118, align 4, !tbaa !260
  %119 = load i32, ptr %1, align 8, !tbaa !129
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %132

121:                                              ; preds = %111
  tail call void @calculate_frame_no(ptr noundef nonnull %0, ptr noundef nonnull %2) #23
  %122 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %123 = load i32, ptr %122, align 4, !tbaa !261
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !262
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !117
  tail call void @find_snr(ptr noundef nonnull %0, ptr noundef %131, ptr noundef nonnull %122) #23
  br label %132

132:                                              ; preds = %121, %125, %129, %111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sliding_window_memory_management(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = sub i32 %6, %8
  %10 = icmp eq i32 %4, %9
  br i1 %10, label %11, label %71

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 71
  %14 = load i32, ptr %13, align 4, !tbaa !35
  switch i32 %14, label %15 [
    i32 118, label %23
    i32 128, label %23
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !40
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = zext i32 %17 to i64
  br label %52

23:                                               ; preds = %11, %11
  %24 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %31 = zext i32 %25 to i64
  br label %32

32:                                               ; preds = %27, %49
  %33 = phi i64 [ 0, %27 ], [ %50, %49 ]
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !151
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !153
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 15
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = load i32, ptr %30, align 8, !tbaa !98
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %35) #24
  br label %68

49:                                               ; preds = %32, %39, %43
  %50 = add nuw nsw i64 %33, 1
  %51 = icmp eq i64 %50, %31
  br i1 %51, label %71, label %32, !llvm.loop !265

52:                                               ; preds = %19, %65
  %53 = phi i64 [ 0, %19 ], [ %66, %65 ]
  %54 = getelementptr inbounds ptr, ptr %21, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.frame_store, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !151
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.frame_store, ptr %55, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !153
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %55) #24
  %64 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %68

65:                                               ; preds = %52, %59
  %66 = add nuw nsw i64 %53, 1
  %67 = icmp eq i64 %66, %22
  br i1 %67, label %71, label %52, !llvm.loop !266

68:                                               ; preds = %63, %48
  %69 = phi ptr [ %30, %48 ], [ %64, %63 ]
  %70 = load i32, ptr %69, align 8, !tbaa !98
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %70) #24
  br label %71

71:                                               ; preds = %49, %65, %68, %23, %15, %2
  %72 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  store i8 0, ptr %72, align 8, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @conceal_non_ref_pics(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @remove_unused_frame_from_dpb(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq i32 %1, -1
  %10 = zext i32 %4 to i64
  br label %11

11:                                               ; preds = %6, %28
  %12 = phi i64 [ 0, %6 ], [ %29, %28 ]
  %13 = getelementptr inbounds ptr, ptr %8, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !260
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = tail call fastcc i32 @is_used_for_reference(ptr noundef nonnull %14) #24, !range !177
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %23, %1
  %25 = or i1 %9, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = trunc i64 %12 to i32
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %27) #24
  br label %31

28:                                               ; preds = %11, %18, %21
  %29 = add nuw nsw i64 %12, 1
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %31, label %11, !llvm.loop !267

31:                                               ; preds = %28, %2, %26
  %32 = phi i32 [ 1, %26 ], [ 0, %2 ], [ 0, %28 ]
  ret i32 %32
}

; Function Attrs: optsize
declare void @sliding_window_poc_management(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_smallest_poc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 150) #23
  br label %9

9:                                                ; preds = %8, %4
  store i32 -1, ptr %2, align 4, !tbaa !167
  store i32 2147483647, ptr %1, align 4, !tbaa !167
  %10 = load i32, ptr %5, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq i32 %3, -1
  br label %16

16:                                               ; preds = %12, %37
  %17 = phi i32 [ %10, %12 ], [ %38, %37 ]
  %18 = phi i64 [ 0, %12 ], [ %39, %37 ]
  %19 = load i32, ptr %1, align 4, !tbaa !167
  %20 = getelementptr inbounds ptr, ptr %14, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.frame_store, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !187
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.frame_store, ptr %21, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !260
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.frame_store, ptr %21, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i32 %31, %3
  %33 = or i1 %15, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  store i32 %23, ptr %1, align 4, !tbaa !167
  %35 = trunc i64 %18 to i32
  store i32 %35, ptr %2, align 4, !tbaa !167
  %36 = load i32, ptr %5, align 4, !tbaa !40
  br label %37

37:                                               ; preds = %16, %25, %34, %29
  %38 = phi i32 [ %17, %16 ], [ %17, %25 ], [ %36, %34 ], [ %17, %29 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = zext i32 %38 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %16, label %42, !llvm.loop !268

42:                                               ; preds = %37, %9
  ret void
}

; Function Attrs: optsize
declare void @direct_output(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @output_one_frame_from_dpb(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %6 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !40
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef 150) #23
  br label %10

10:                                               ; preds = %9, %2
  call fastcc void @get_smallest_poc(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %1) #24
  %11 = load i32, ptr %4, align 4, !tbaa !167
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = icmp eq i32 %1, -1
  br i1 %14, label %15, label %67

15:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 150) #23
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 95
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4, !tbaa !167
  br label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !60
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @write_lost_ref_after_idr(ptr noundef nonnull %0, i32 noundef %11) #23
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, ptr %3, align 4, !tbaa !167
  %29 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 121
  %30 = load i32, ptr %29, align 8, !tbaa !239
  tail call void @write_lost_non_ref_pic(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %30) #23
  br label %31

31:                                               ; preds = %20, %27
  %32 = phi i32 [ %21, %20 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = sext i32 %11 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 121
  %39 = load i32, ptr %38, align 8, !tbaa !239
  tail call void @write_stored_frame(ptr noundef nonnull %5, ptr noundef %37, i32 noundef %39) #23
  %40 = load i32, ptr %17, align 8, !tbaa !63
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !60
  %45 = icmp slt i32 %44, %32
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %33, align 8, !tbaa !42
  %48 = getelementptr inbounds ptr, ptr %47, i64 %35
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.frame_store, ptr %49, i64 0, i32 15
  %51 = load i32, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  %53 = load i32, ptr %52, align 4, !tbaa !61
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 150) #23
  br label %56

56:                                               ; preds = %42, %46, %55, %31
  %57 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 %32, ptr %57, align 8, !tbaa !60
  %58 = load ptr, ptr %33, align 8, !tbaa !42
  %59 = getelementptr inbounds ptr, ptr %58, i64 %35
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.frame_store, ptr %60, i64 0, i32 15
  %62 = load i32, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 10
  store i32 %62, ptr %63, align 4, !tbaa !61
  %64 = tail call fastcc i32 @is_used_for_reference(ptr noundef %60) #24, !range !177
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  tail call fastcc void @remove_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %11) #24
  br label %67

67:                                               ; preds = %56, %66, %13
  %68 = phi i32 [ 0, %13 ], [ 1, %66 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flush_dpb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 95
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @conceal_non_ref_pics(ptr noundef nonnull %0, i32 noundef 0) #23
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %14 = icmp eq i32 %1, -1
  br label %15

15:                                               ; preds = %12, %27
  %16 = phi i32 [ %10, %12 ], [ %28, %27 ]
  %17 = phi i64 [ 0, %12 ], [ %29, %27 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.frame_store, ptr %20, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i32 %22, %1
  %24 = or i1 %14, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %20) #24
  %26 = load i32, ptr %9, align 4, !tbaa !40
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi i32 [ %26, %25 ], [ %16, %15 ]
  %29 = add nuw nsw i64 %17, 1
  %30 = zext i32 %28 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %15, label %32, !llvm.loop !269

32:                                               ; preds = %27, %8
  br label %33

33:                                               ; preds = %32, %33
  %34 = tail call fastcc i32 @remove_unused_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %1) #24, !range !177
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %33, !llvm.loop !270

36:                                               ; preds = %33, %39
  %37 = load i32, ptr %9, align 4, !tbaa !40
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @output_one_frame_from_dpb(ptr noundef nonnull %0, i32 noundef %1) #24, !range !177
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %36, !llvm.loop !271

42:                                               ; preds = %36, %39
  %43 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  store i32 -2147483648, ptr %43, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mm_unmark_short_term_for_reference(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @get_pic_num_x(ptr noundef %1, i32 noundef %2) #24
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %89, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %12 = load i32, ptr %11, align 8, !tbaa !98
  %13 = zext i32 %6 to i64
  br label %14

14:                                               ; preds = %8, %86
  %15 = phi i64 [ 0, %8 ], [ %87, %86 ]
  %16 = getelementptr inbounds ptr, ptr %10, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %21, label %86

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8, !tbaa !99
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !151
  br i1 %23, label %26, label %39

26:                                               ; preds = %21
  %27 = icmp eq i32 %25, 3
  br i1 %27, label %28, label %86

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !153
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !146
  %37 = icmp eq i32 %36, %4
  br i1 %37, label %38, label %86

38:                                               ; preds = %32
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %17) #24
  br label %89

39:                                               ; preds = %21
  %40 = and i32 %25, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !153
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !118
  %50 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !146
  %52 = icmp eq i32 %51, %4
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 1
  %55 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 11
  store i32 0, ptr %55, align 4, !tbaa !94
  %56 = and i32 %25, 2
  store i32 %56, ptr %54, align 4, !tbaa !151
  %57 = load i32, ptr %17, align 8, !tbaa !129
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %89

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !117
  %62 = getelementptr inbounds %struct.storable_picture, ptr %61, i64 0, i32 11
  store i32 0, ptr %62, align 4, !tbaa !94
  br label %89

63:                                               ; preds = %47, %42, %39
  %64 = and i32 %25, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !153
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 14
  %73 = load ptr, ptr %72, align 8, !tbaa !119
  %74 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 7
  %75 = load i32, ptr %74, align 4, !tbaa !146
  %76 = icmp eq i32 %75, %4
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 1
  %79 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 11
  store i32 0, ptr %79, align 4, !tbaa !94
  store i32 %40, ptr %78, align 4, !tbaa !151
  %80 = load i32, ptr %17, align 8, !tbaa !129
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.frame_store, ptr %17, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !117
  %85 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 11
  store i32 0, ptr %85, align 4, !tbaa !94
  br label %89

86:                                               ; preds = %14, %63, %66, %71, %26, %28, %32
  %87 = add nuw nsw i64 %15, 1
  %88 = icmp eq i64 %87, %13
  br i1 %88, label %89, label %14, !llvm.loop !272

89:                                               ; preds = %86, %3, %77, %82, %53, %59, %38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mm_unmark_long_term_for_reference(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %94, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  br label %10

10:                                               ; preds = %7, %84
  %11 = phi i32 [ %5, %7 ], [ %85, %84 ]
  %12 = phi i64 [ 0, %7 ], [ %86, %84 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !44
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = load i32, ptr %9, align 8, !tbaa !98
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %10
  %21 = load i32, ptr %1, align 8, !tbaa !99
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !151
  br i1 %22, label %25, label %39

25:                                               ; preds = %20
  %26 = icmp eq i32 %24, 3
  br i1 %26, label %27, label %84

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !153
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %84

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !149
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %84

37:                                               ; preds = %31
  tail call fastcc void @unmark_for_long_term_reference(ptr noundef nonnull %15) #24
  %38 = load i32, ptr %4, align 4, !tbaa !22
  br label %84

39:                                               ; preds = %20
  %40 = and i32 %24, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !153
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !118
  %50 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !149
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 1
  %55 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 2
  %56 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 11
  store i32 0, ptr %56, align 4, !tbaa !94
  %57 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 10
  store i8 0, ptr %57, align 8, !tbaa !128
  %58 = and i32 %24, 2
  store i32 %58, ptr %54, align 4, !tbaa !151
  %59 = and i32 %44, 2
  store i32 %59, ptr %55, align 8, !tbaa !153
  %60 = load i32, ptr %15, align 8, !tbaa !129
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %89, label %94

62:                                               ; preds = %47, %42, %39
  %63 = and i32 %24, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !153
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 14
  %72 = load ptr, ptr %71, align 8, !tbaa !119
  %73 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 8
  %74 = load i32, ptr %73, align 8, !tbaa !149
  %75 = icmp eq i32 %74, %2
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 1
  %78 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 2
  %79 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 11
  store i32 0, ptr %79, align 4, !tbaa !94
  %80 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 10
  store i8 0, ptr %80, align 8, !tbaa !128
  store i32 %40, ptr %77, align 4, !tbaa !151
  %81 = and i32 %67, 1
  store i32 %81, ptr %78, align 8, !tbaa !153
  %82 = load i32, ptr %15, align 8, !tbaa !129
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %89, label %94

84:                                               ; preds = %10, %62, %65, %70, %25, %27, %37, %31
  %85 = phi i32 [ %11, %10 ], [ %11, %62 ], [ %11, %65 ], [ %11, %70 ], [ %11, %25 ], [ %11, %27 ], [ %38, %37 ], [ %11, %31 ]
  %86 = add nuw nsw i64 %12, 1
  %87 = zext i32 %85 to i64
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %10, label %94, !llvm.loop !273

89:                                               ; preds = %76, %53
  %90 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 12
  %91 = load ptr, ptr %90, align 8, !tbaa !117
  %92 = getelementptr inbounds %struct.storable_picture, ptr %91, i64 0, i32 11
  store i32 0, ptr %92, align 4, !tbaa !94
  %93 = getelementptr inbounds %struct.storable_picture, ptr %91, i64 0, i32 10
  store i8 0, ptr %93, align 8, !tbaa !128
  br label %94

94:                                               ; preds = %84, %89, %3, %76, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mm_assign_long_term_frame_idx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = tail call fastcc i32 @get_pic_num_x(ptr noundef %1, i32 noundef %2) #24
  %6 = load i32, ptr %1, align 8, !tbaa !99
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %16 = load i32, ptr %15, align 8, !tbaa !98
  %17 = zext i32 %10 to i64
  br label %21

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %20 = load i32, ptr %19, align 8, !tbaa !98
  tail call fastcc void @unmark_long_term_frame_for_reference_by_frame_idx(ptr noundef %0, i32 noundef %3, i32 noundef %20) #24
  br label %57

21:                                               ; preds = %12, %48
  %22 = phi i64 [ 0, %12 ], [ %49, %48 ]
  %23 = getelementptr inbounds ptr, ptr %14, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.frame_store, ptr %24, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.frame_store, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !151
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.frame_store, ptr %24, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !146
  %38 = icmp eq i32 %37, %5
  br i1 %38, label %54, label %39

39:                                               ; preds = %33, %28
  %40 = and i32 %30, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.frame_store, ptr %24, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !119
  %45 = getelementptr inbounds %struct.storable_picture, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !146
  %47 = icmp eq i32 %46, %5
  br i1 %47, label %54, label %48

48:                                               ; preds = %21, %42, %39
  %49 = add nuw nsw i64 %22, 1
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %21, !llvm.loop !274

51:                                               ; preds = %48, %8
  tail call void @error(ptr noundef nonnull @.str.23, i32 noundef 200) #23
  %52 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %53 = load i32, ptr %52, align 8, !tbaa !98
  br label %54

54:                                               ; preds = %33, %42, %51
  %55 = phi i32 [ %53, %51 ], [ %16, %42 ], [ %16, %33 ]
  %56 = phi i32 [ 0, %51 ], [ 1, %33 ], [ 2, %42 ]
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr noundef nonnull %0, i32 noundef %56, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %55) #24
  br label %57

57:                                               ; preds = %54, %18
  tail call fastcc void @mark_pic_long_term(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mm_unmark_all_short_term_for_reference(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %19
  %9 = phi i32 [ %4, %6 ], [ %20, %19 ]
  %10 = phi i64 [ 0, %6 ], [ %21, %19 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.frame_store, ptr %13, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  tail call fastcc void @unmark_for_reference(ptr noundef nonnull %13) #24
  %18 = load i32, ptr %3, align 8, !tbaa !25
  br label %19

19:                                               ; preds = %8, %17
  %20 = phi i32 [ %9, %8 ], [ %18, %17 ]
  %21 = add nuw nsw i64 %10, 1
  %22 = zext i32 %20 to i64
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %8, label %24, !llvm.loop !275

24:                                               ; preds = %19, %2
  tail call void @update_ref_list(ptr noundef nonnull %0, i32 noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mm_unmark_all_long_term_for_reference(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  tail call void @mm_update_max_long_term_frame_idx(ptr noundef %0, i32 noundef 0, i32 noundef %1) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mm_mark_current_picture_long_term(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = load i32, ptr %1, align 8, !tbaa !99
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %8 = load i32, ptr %7, align 8, !tbaa !98
  tail call fastcc void @unmark_long_term_frame_for_reference_by_frame_idx(ptr noundef %0, i32 noundef %2, i32 noundef %8) #24
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !146
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %13 = load i32, ptr %12, align 8, !tbaa !98
  tail call fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr noundef %0, i32 noundef %4, i32 noundef %2, i32 noundef 1, i32 noundef %11, i32 noundef 0, i32 noundef %13) #24
  br label %14

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 10
  store i8 1, ptr %15, align 8, !tbaa !128
  %16 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 9
  store i32 %2, ptr %16, align 4, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_pic_num_x(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !99
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !93
  %7 = shl i32 %6, 1
  %8 = or disjoint i32 %7, 1
  %9 = select i1 %4, i32 %6, i32 %8
  %10 = xor i32 %1, -1
  %11 = add i32 %9, %10
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @unmark_for_reference(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 11
  store i32 0, ptr %10, align 4, !tbaa !94
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.storable_picture, ptr %16, i64 0, i32 11
  store i32 0, ptr %19, align 4, !tbaa !94
  br label %20

20:                                               ; preds = %14, %18, %11
  %21 = icmp eq i32 %2, 3
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !119
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 11
  store i32 0, ptr %31, align 4, !tbaa !94
  %32 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 11
  store i32 0, ptr %32, align 4, !tbaa !94
  br label %33

33:                                               ; preds = %22, %26, %30
  %34 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  store i32 0, ptr %36, align 4, !tbaa !94
  %37 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 1
  store i32 0, ptr %37, align 4, !tbaa !151
  br label %43

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !117
  %41 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 1
  store i32 0, ptr %41, align 4, !tbaa !151
  %42 = icmp eq ptr %40, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33, %38
  %44 = phi ptr [ %35, %33 ], [ %40, %38 ]
  %45 = getelementptr inbounds %struct.storable_picture, ptr %44, i64 0, i32 37
  tail call void @free_pic_motion(ptr noundef nonnull %45) #24
  br label %46

46:                                               ; preds = %43, %38
  %47 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !118
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 37
  tail call void @free_pic_motion(ptr noundef nonnull %51) #24
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !119
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.storable_picture, ptr %54, i64 0, i32 37
  tail call void @free_pic_motion(ptr noundef nonnull %57) #24
  br label %58

58:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @unmark_long_term_frame_for_reference_by_frame_idx(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi i32 [ %5, %7 ], [ %25, %24 ]
  %11 = phi i64 [ 0, %7 ], [ %26, %24 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !44
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !171
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.frame_store, ptr %14, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  tail call fastcc void @unmark_for_long_term_reference(ptr noundef nonnull %14) #24
  %23 = load i32, ptr %4, align 4, !tbaa !22
  br label %24

24:                                               ; preds = %9, %18, %22
  %25 = phi i32 [ %10, %9 ], [ %10, %18 ], [ %23, %22 ]
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %25 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %29, !llvm.loop !276

29:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @unmark_long_term_field_for_reference_by_frame_idx(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 {
  %8 = icmp slt i32 %5, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !33
  %11 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 52
  %12 = load i32, ptr %11, align 8, !tbaa !225
  %13 = shl nsw i32 %12, 1
  %14 = add nsw i32 %13, %5
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi i32 [ %14, %9 ], [ %5, %7 ]
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %80, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 4
  %22 = icmp eq i32 %3, 0
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 14
  %24 = ashr i32 %16, 1
  br label %25

25:                                               ; preds = %20, %75
  %26 = phi i64 [ 0, %20 ], [ %76, %75 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !44
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %75

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !171
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  switch i32 %1, label %75 [
    i32 1, label %38
    i32 2, label %55
  ]

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !153
  switch i32 %40, label %41 [
    i32 3, label %74
    i32 1, label %74
  ]

41:                                               ; preds = %38
  br i1 %22, label %51, label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %23, align 8, !tbaa !41
  %44 = icmp ne ptr %43, null
  %45 = icmp eq ptr %43, %29
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !144
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %75, label %74

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !144
  %54 = icmp eq i32 %53, %24
  br i1 %54, label %75, label %74

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !153
  %58 = and i32 %57, -2
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  br i1 %22, label %70, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %23, align 8, !tbaa !41
  %63 = icmp ne ptr %62, null
  %64 = icmp eq ptr %62, %29
  %65 = and i1 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !144
  %69 = icmp eq i32 %68, %4
  br i1 %69, label %75, label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !144
  %73 = icmp eq i32 %72, %24
  br i1 %73, label %75, label %74

74:                                               ; preds = %55, %70, %61, %66, %51, %42, %47, %38, %38
  tail call fastcc void @unmark_for_long_term_reference(ptr noundef nonnull %29) #24
  br label %75

75:                                               ; preds = %74, %51, %47, %37, %25, %70, %66, %33
  %76 = add nuw nsw i64 %26, 1
  %77 = load i32, ptr %17, align 4, !tbaa !22
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %25, label %80, !llvm.loop !277

80:                                               ; preds = %75, %15
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @mark_pic_long_term(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
  %5 = load i32, ptr %1, align 8, !tbaa !99
  switch i32 %5, label %63 [
    i32 0, label %6
    i32 1, label %64
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %14 = load i32, ptr %13, align 8, !tbaa !98
  %15 = zext i32 %8 to i64
  br label %16

16:                                               ; preds = %10, %58
  %17 = phi i64 [ 0, %10 ], [ %59, %58 ]
  %18 = getelementptr inbounds ptr, ptr %12, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %23, label %58

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !151
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  %30 = getelementptr inbounds %struct.storable_picture, ptr %29, i64 0, i32 10
  %31 = load i8, ptr %30, align 8, !tbaa !128
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.storable_picture, ptr %29, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !146
  %36 = icmp eq i32 %35, %3
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.storable_picture, ptr %29, i64 0, i32 10
  %39 = getelementptr inbounds %struct.storable_picture, ptr %29, i64 0, i32 9
  store i32 %2, ptr %39, align 4, !tbaa !148
  %40 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 8
  store i32 %2, ptr %40, align 8, !tbaa !171
  %41 = getelementptr inbounds %struct.storable_picture, ptr %29, i64 0, i32 8
  store i32 %2, ptr %41, align 8, !tbaa !149
  store i8 1, ptr %38, align 8, !tbaa !128
  %42 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !118
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 9
  store i32 %2, ptr %50, align 4, !tbaa !148
  %51 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 9
  store i32 %2, ptr %51, align 4, !tbaa !148
  %52 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 8
  store i32 %2, ptr %52, align 8, !tbaa !149
  %53 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 8
  store i32 %2, ptr %53, align 8, !tbaa !149
  %54 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 10
  store i8 1, ptr %54, align 8, !tbaa !128
  %55 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 10
  store i8 1, ptr %55, align 8, !tbaa !128
  br label %56

56:                                               ; preds = %49, %45, %37
  %57 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 2
  store i32 3, ptr %57, align 8, !tbaa !153
  br label %188

58:                                               ; preds = %16, %27, %33, %23
  %59 = add nuw nsw i64 %17, 1
  %60 = icmp eq i64 %59, %15
  br i1 %60, label %61, label %16, !llvm.loop !278

61:                                               ; preds = %58, %6
  %62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  br label %188

63:                                               ; preds = %4
  br label %64

64:                                               ; preds = %4, %63
  %65 = phi i32 [ 0, %63 ], [ %5, %4 ]
  %66 = phi i32 [ 1, %63 ], [ 0, %4 ]
  %67 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %186, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 64
  %74 = load i32, ptr %73, align 8, !tbaa !98
  %75 = zext i32 %68 to i64
  br label %76

76:                                               ; preds = %70, %183
  %77 = phi i64 [ 0, %70 ], [ %184, %183 ]
  %78 = getelementptr inbounds ptr, ptr %72, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 15
  %81 = load i32, ptr %80, align 8, !tbaa !46
  %82 = icmp eq i32 %81, %74
  br i1 %82, label %83, label %183

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !151
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %134, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !118
  %91 = getelementptr inbounds %struct.storable_picture, ptr %90, i64 0, i32 10
  %92 = load i8, ptr %91, align 8, !tbaa !128
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.storable_picture, ptr %90, i64 0, i32 7
  %96 = load i32, ptr %95, align 4, !tbaa !146
  %97 = icmp eq i32 %96, %3
  br i1 %97, label %98, label %134

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !153
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 8
  %104 = load i32, ptr %103, align 8, !tbaa !171
  %105 = icmp eq i32 %104, %2
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %108 = load ptr, ptr %71, align 8, !tbaa !43
  %109 = getelementptr inbounds ptr, ptr %108, i64 %77
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.frame_store, ptr %110, i64 0, i32 13
  %112 = load ptr, ptr %111, align 8, !tbaa !118
  %113 = getelementptr inbounds %struct.frame_store, ptr %110, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !153
  br label %115

115:                                              ; preds = %106, %102, %98
  %116 = phi i32 [ %114, %106 ], [ %100, %102 ], [ 0, %98 ]
  %117 = phi ptr [ %112, %106 ], [ %90, %102 ], [ %90, %98 ]
  %118 = phi ptr [ %110, %106 ], [ %79, %102 ], [ %79, %98 ]
  %119 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 9
  store i32 %2, ptr %119, align 4, !tbaa !148
  %120 = getelementptr inbounds %struct.frame_store, ptr %118, i64 0, i32 8
  store i32 %2, ptr %120, align 8, !tbaa !171
  %121 = shl nsw i32 %2, 1
  %122 = or disjoint i32 %65, %121
  %123 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 8
  store i32 %122, ptr %123, align 8, !tbaa !149
  %124 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 10
  store i8 1, ptr %124, align 8, !tbaa !128
  %125 = getelementptr inbounds %struct.frame_store, ptr %118, i64 0, i32 2
  %126 = or i32 %116, 1
  store i32 %126, ptr %125, align 8, !tbaa !153
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %188

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.frame_store, ptr %118, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !117
  %131 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 10
  store i8 1, ptr %131, align 8, !tbaa !128
  %132 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 8
  store i32 %2, ptr %132, align 8, !tbaa !149
  %133 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 9
  store i32 %2, ptr %133, align 4, !tbaa !148
  br label %188

134:                                              ; preds = %88, %94, %83
  %135 = and i32 %85, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %183, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 14
  %139 = load ptr, ptr %138, align 8, !tbaa !119
  %140 = getelementptr inbounds %struct.storable_picture, ptr %139, i64 0, i32 10
  %141 = load i8, ptr %140, align 8, !tbaa !128
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %183

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.storable_picture, ptr %139, i64 0, i32 7
  %145 = load i32, ptr %144, align 4, !tbaa !146
  %146 = icmp eq i32 %145, %3
  br i1 %146, label %147, label %183

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !153
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 8
  %153 = load i32, ptr %152, align 8, !tbaa !171
  %154 = icmp eq i32 %153, %2
  br i1 %154, label %164, label %155

155:                                              ; preds = %151
  %156 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %157 = load ptr, ptr %71, align 8, !tbaa !43
  %158 = getelementptr inbounds ptr, ptr %157, i64 %77
  %159 = load ptr, ptr %158, align 8, !tbaa !45
  %160 = getelementptr inbounds %struct.frame_store, ptr %159, i64 0, i32 14
  %161 = load ptr, ptr %160, align 8, !tbaa !119
  %162 = getelementptr inbounds %struct.frame_store, ptr %159, i64 0, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !153
  br label %164

164:                                              ; preds = %155, %151, %147
  %165 = phi i32 [ %163, %155 ], [ %149, %151 ], [ 0, %147 ]
  %166 = phi ptr [ %161, %155 ], [ %139, %151 ], [ %139, %147 ]
  %167 = phi ptr [ %159, %155 ], [ %79, %151 ], [ %79, %147 ]
  %168 = getelementptr inbounds %struct.storable_picture, ptr %166, i64 0, i32 9
  store i32 %2, ptr %168, align 4, !tbaa !148
  %169 = getelementptr inbounds %struct.frame_store, ptr %167, i64 0, i32 8
  store i32 %2, ptr %169, align 8, !tbaa !171
  %170 = shl nsw i32 %2, 1
  %171 = or disjoint i32 %66, %170
  %172 = getelementptr inbounds %struct.storable_picture, ptr %166, i64 0, i32 8
  store i32 %171, ptr %172, align 8, !tbaa !149
  %173 = getelementptr inbounds %struct.storable_picture, ptr %166, i64 0, i32 10
  store i8 1, ptr %173, align 8, !tbaa !128
  %174 = getelementptr inbounds %struct.frame_store, ptr %167, i64 0, i32 2
  %175 = or i32 %165, 2
  store i32 %175, ptr %174, align 8, !tbaa !153
  %176 = icmp eq i32 %175, 3
  br i1 %176, label %177, label %188

177:                                              ; preds = %164
  %178 = getelementptr inbounds %struct.frame_store, ptr %167, i64 0, i32 12
  %179 = load ptr, ptr %178, align 8, !tbaa !117
  %180 = getelementptr inbounds %struct.storable_picture, ptr %179, i64 0, i32 10
  store i8 1, ptr %180, align 8, !tbaa !128
  %181 = getelementptr inbounds %struct.storable_picture, ptr %179, i64 0, i32 8
  store i32 %2, ptr %181, align 8, !tbaa !149
  %182 = getelementptr inbounds %struct.storable_picture, ptr %179, i64 0, i32 9
  store i32 %2, ptr %182, align 4, !tbaa !148
  br label %188

183:                                              ; preds = %76, %137, %143, %134
  %184 = add nuw nsw i64 %77, 1
  %185 = icmp eq i64 %184, %75
  br i1 %185, label %186, label %76, !llvm.loop !279

186:                                              ; preds = %183, %64
  %187 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %188

188:                                              ; preds = %61, %186, %164, %177, %115, %128, %56
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dpb_split_field(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !100
  %7 = ashr i32 %6, 3
  %8 = and i32 %7, -2
  %9 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !111
  %11 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %10, ptr %11, align 8, !tbaa !187
  %12 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 49
  %13 = load i32, ptr %12, align 8, !tbaa !280
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %221

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !101
  %18 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 19
  %21 = load i32, ptr %20, align 4, !tbaa !103
  %22 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 1, i32 noundef %6, i32 noundef %17, i32 noundef %19, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  store ptr %22, ptr %23, align 8, !tbaa !118
  %24 = load i32, ptr %5, align 8, !tbaa !100
  %25 = load i32, ptr %16, align 4, !tbaa !101
  %26 = load i32, ptr %18, align 8, !tbaa !102
  %27 = load i32, ptr %20, align 4, !tbaa !103
  %28 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 2, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27) #24
  %29 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  store ptr %28, ptr %29, align 8, !tbaa !119
  %30 = load i32, ptr %16, align 4, !tbaa !101
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 32
  %34 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 32
  br label %42

35:                                               ; preds = %42, %15
  %36 = phi i32 [ %30, %15 ], [ %55, %42 ]
  %37 = load i32, ptr %20, align 4, !tbaa !103
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 33
  %41 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 33
  br label %68

42:                                               ; preds = %32, %42
  %43 = phi i64 [ 0, %32 ], [ %54, %42 ]
  %44 = load ptr, ptr %33, align 8, !tbaa !122
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = load ptr, ptr %34, align 8, !tbaa !122
  %48 = shl nuw nsw i64 %43, 1
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = load i32, ptr %5, align 8, !tbaa !100
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %46, ptr align 2 %50, i64 %53, i1 false)
  %54 = add nuw nsw i64 %43, 1
  %55 = load i32, ptr %16, align 4, !tbaa !101
  %56 = ashr i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %42, label %35, !llvm.loop !281

59:                                               ; preds = %68
  %60 = load i32, ptr %16, align 4, !tbaa !101
  br label %61

61:                                               ; preds = %59, %35
  %62 = phi i32 [ %96, %59 ], [ %37, %35 ]
  %63 = phi i32 [ %60, %59 ], [ %36, %35 ]
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %102

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 32
  %67 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 32
  br label %108

68:                                               ; preds = %39, %68
  %69 = phi i64 [ 0, %39 ], [ %95, %68 ]
  %70 = load ptr, ptr %40, align 8, !tbaa !123
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = load ptr, ptr %41, align 8, !tbaa !123
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = shl nuw nsw i64 %69, 1
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = load i32, ptr %18, align 8, !tbaa !102
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %78, i64 %81, i1 false)
  %82 = load ptr, ptr %40, align 8, !tbaa !123
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !45
  %85 = getelementptr inbounds ptr, ptr %84, i64 %69
  %86 = load ptr, ptr %85, align 8, !tbaa !45
  %87 = load ptr, ptr %41, align 8, !tbaa !123
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds ptr, ptr %89, i64 %76
  %91 = load ptr, ptr %90, align 8, !tbaa !45
  %92 = load i32, ptr %18, align 8, !tbaa !102
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %86, ptr align 2 %91, i64 %94, i1 false)
  %95 = add nuw nsw i64 %69, 1
  %96 = load i32, ptr %20, align 4, !tbaa !103
  %97 = ashr i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %68, label %59, !llvm.loop !282

100:                                              ; preds = %108
  %101 = load i32, ptr %20, align 4, !tbaa !103
  br label %102

102:                                              ; preds = %100, %61
  %103 = phi i32 [ %101, %100 ], [ %62, %61 ]
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %159

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 33
  %107 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 33
  br label %126

108:                                              ; preds = %65, %108
  %109 = phi i64 [ 0, %65 ], [ %121, %108 ]
  %110 = load ptr, ptr %66, align 8, !tbaa !122
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !45
  %113 = load ptr, ptr %67, align 8, !tbaa !122
  %114 = shl nuw nsw i64 %109, 1
  %115 = or disjoint i64 %114, 1
  %116 = getelementptr inbounds ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !45
  %118 = load i32, ptr %5, align 8, !tbaa !100
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %112, ptr align 2 %117, i64 %120, i1 false)
  %121 = add nuw nsw i64 %109, 1
  %122 = load i32, ptr %16, align 4, !tbaa !101
  %123 = ashr i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %108, label %100, !llvm.loop !283

126:                                              ; preds = %105, %126
  %127 = phi i64 [ 0, %105 ], [ %154, %126 ]
  %128 = load ptr, ptr %106, align 8, !tbaa !123
  %129 = load ptr, ptr %128, align 8, !tbaa !45
  %130 = getelementptr inbounds ptr, ptr %129, i64 %127
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = load ptr, ptr %107, align 8, !tbaa !123
  %133 = load ptr, ptr %132, align 8, !tbaa !45
  %134 = shl nuw nsw i64 %127, 1
  %135 = or disjoint i64 %134, 1
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !45
  %138 = load i32, ptr %18, align 8, !tbaa !102
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %131, ptr align 2 %137, i64 %140, i1 false)
  %141 = load ptr, ptr %106, align 8, !tbaa !123
  %142 = getelementptr inbounds ptr, ptr %141, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !45
  %144 = getelementptr inbounds ptr, ptr %143, i64 %127
  %145 = load ptr, ptr %144, align 8, !tbaa !45
  %146 = load ptr, ptr %107, align 8, !tbaa !123
  %147 = getelementptr inbounds ptr, ptr %146, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !45
  %149 = getelementptr inbounds ptr, ptr %148, i64 %135
  %150 = load ptr, ptr %149, align 8, !tbaa !45
  %151 = load i32, ptr %18, align 8, !tbaa !102
  %152 = sext i32 %151 to i64
  %153 = shl nsw i64 %152, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %145, ptr align 2 %150, i64 %153, i1 false)
  %154 = add nuw nsw i64 %127, 1
  %155 = load i32, ptr %20, align 4, !tbaa !103
  %156 = ashr i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %154, %157
  br i1 %158, label %126, label %159, !llvm.loop !284

159:                                              ; preds = %126, %102
  %160 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 2
  %161 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 1
  %162 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 1
  %163 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 64
  %164 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 64
  %165 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 4
  %166 = load i32, ptr %165, align 8, !tbaa !285
  %167 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 2
  %168 = load <2 x i32>, ptr %160, align 8, !tbaa !167
  store <2 x i32> %168, ptr %167, align 8, !tbaa !167
  %169 = shufflevector <2 x i32> %168, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %170 = insertelement <4 x i32> %169, i32 %166, i64 3
  %171 = shufflevector <4 x i32> %170, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  store <4 x i32> %171, ptr %161, align 4, !tbaa !167
  %172 = extractelement <2 x i32> %168, i64 1
  store i32 %172, ptr %162, align 4, !tbaa !111
  %173 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 4
  store i32 %166, ptr %173, align 8, !tbaa !285
  %174 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 11
  %175 = load i32, ptr %174, align 4, !tbaa !94
  %176 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 11
  store i32 %175, ptr %176, align 4, !tbaa !94
  %177 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 11
  store i32 %175, ptr %177, align 4, !tbaa !94
  %178 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 10
  %179 = load i8, ptr %178, align 8, !tbaa !128
  %180 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 10
  store i8 %179, ptr %180, align 8, !tbaa !128
  %181 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 10
  store i8 %179, ptr %181, align 8, !tbaa !128
  %182 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 9
  %183 = load i32, ptr %182, align 4, !tbaa !148
  %184 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 9
  store i32 %183, ptr %184, align 4, !tbaa !148
  %185 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 9
  store i32 %183, ptr %185, align 4, !tbaa !148
  %186 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  store i32 %183, ptr %186, align 8, !tbaa !171
  %187 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 24
  store i32 1, ptr %187, align 8, !tbaa !109
  %188 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 24
  store i32 1, ptr %188, align 8, !tbaa !109
  %189 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 25
  %190 = load i32, ptr %189, align 4, !tbaa !110
  %191 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 25
  store i32 %190, ptr %191, align 4, !tbaa !110
  %192 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 25
  store i32 %190, ptr %192, align 4, !tbaa !110
  %193 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 40
  store ptr %22, ptr %193, align 8, !tbaa !55
  %194 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 41
  store ptr %28, ptr %194, align 8, !tbaa !58
  %195 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 42
  store ptr %4, ptr %195, align 8, !tbaa !59
  %196 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 41
  store ptr %28, ptr %196, align 8, !tbaa !58
  %197 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 42
  store ptr %4, ptr %197, align 8, !tbaa !59
  %198 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 40
  store ptr %22, ptr %198, align 8, !tbaa !55
  %199 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 40
  store ptr %22, ptr %199, align 8, !tbaa !55
  %200 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 42
  store ptr %4, ptr %200, align 8, !tbaa !59
  %201 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 41
  store ptr %28, ptr %201, align 8, !tbaa !58
  %202 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %203 = load i32, ptr %202, align 8, !tbaa !46
  store i32 %203, ptr %164, align 8, !tbaa !98
  store i32 %203, ptr %163, align 8, !tbaa !98
  %204 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16
  %205 = load i32, ptr %204, align 4, !tbaa !167
  %206 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 65
  store i32 %205, ptr %206, align 4, !tbaa !258
  %207 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 16, i64 1
  %208 = load i32, ptr %207, align 4, !tbaa !167
  %209 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 65
  store i32 %208, ptr %209, align 4, !tbaa !258
  %210 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 48
  %211 = load i32, ptr %210, align 4, !tbaa !286
  %212 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 48
  store i32 %211, ptr %212, align 4, !tbaa !286
  %213 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 48
  store i32 %211, ptr %213, align 4, !tbaa !286
  %214 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 73
  %215 = load i32, ptr %214, align 4, !tbaa !287
  %216 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 73
  store i32 %215, ptr %216, align 4, !tbaa !287
  %217 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 73
  store i32 %215, ptr %217, align 4, !tbaa !287
  %218 = load i32, ptr %174, align 4, !tbaa !94
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %159
  tail call void @pad_dec_picture(ptr noundef %0, ptr noundef nonnull %22) #23
  tail call void @pad_dec_picture(ptr noundef %0, ptr noundef nonnull %28) #23
  br label %224

221:                                              ; preds = %2
  %222 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 40
  %223 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %222, i8 0, i64 16, i1 false)
  store ptr %4, ptr %223, align 8, !tbaa !59
  br label %224

224:                                              ; preds = %159, %220, %221
  %225 = phi ptr [ null, %221 ], [ %22, %220 ], [ %22, %159 ]
  %226 = phi ptr [ null, %221 ], [ %28, %220 ], [ %28, %159 ]
  %227 = load i32, ptr %12, align 8, !tbaa !280
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %599

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 25
  %231 = load i32, ptr %230, align 4, !tbaa !110
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %235 = load i32, ptr %234, align 4, !tbaa !101
  br label %434

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 37
  %238 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %239 = load i32, ptr %238, align 4, !tbaa !101
  %240 = icmp sgt i32 %239, 7
  br i1 %240, label %241, label %599

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.storable_picture, ptr %226, i64 0, i32 35
  %243 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %244 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %245 = getelementptr inbounds %struct.storable_picture, ptr %225, i64 0, i32 35
  %246 = load i32, ptr %5, align 8, !tbaa !100
  br label %247

247:                                              ; preds = %241, %427
  %248 = phi i32 [ %239, %241 ], [ %428, %427 ]
  %249 = phi i32 [ %246, %241 ], [ %429, %427 ]
  %250 = phi i64 [ 0, %241 ], [ %430, %427 ]
  %251 = icmp sgt i32 %249, 3
  br i1 %251, label %252, label %427

252:                                              ; preds = %247
  %253 = trunc i64 %250 to i32
  %254 = lshr i32 %253, 1
  %255 = trunc i64 %250 to i32
  %256 = shl i32 %255, 1
  %257 = and i32 %256, 2147483640
  %258 = and i32 %253, 3
  %259 = or disjoint i32 %257, %258
  %260 = or disjoint i32 %259, 4
  %261 = lshr i32 %253, 2
  %262 = mul nsw i32 %261, %8
  %263 = and i32 %254, 1
  %264 = zext nneg i32 %260 to i64
  %265 = zext nneg i32 %259 to i64
  br label %266

266:                                              ; preds = %252, %419
  %267 = phi i64 [ 0, %252 ], [ %420, %419 ]
  %268 = trunc i64 %267 to i32
  %269 = lshr i32 %268, 1
  %270 = and i32 %269, 1073741822
  %271 = add nsw i32 %270, %262
  %272 = or disjoint i32 %271, %263
  %273 = load ptr, ptr %237, align 8, !tbaa !127
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, ptr %273, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !131
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %419, label %278

278:                                              ; preds = %266
  %279 = load ptr, ptr %242, align 8, !tbaa !120
  %280 = getelementptr inbounds ptr, ptr %279, i64 %250
  %281 = load ptr, ptr %280, align 8, !tbaa !45
  %282 = getelementptr inbounds %struct.pic_motion_params, ptr %281, i64 %267, i32 1
  %283 = load ptr, ptr %243, align 8, !tbaa !120
  %284 = getelementptr inbounds ptr, ptr %283, i64 %264
  %285 = load ptr, ptr %284, align 8, !tbaa !45
  %286 = getelementptr inbounds %struct.pic_motion_params, ptr %285, i64 %267, i32 1
  %287 = load i32, ptr %286, align 8
  store i32 %287, ptr %282, align 8
  %288 = load ptr, ptr %242, align 8, !tbaa !120
  %289 = getelementptr inbounds ptr, ptr %288, i64 %250
  %290 = load ptr, ptr %289, align 8, !tbaa !45
  %291 = getelementptr inbounds %struct.pic_motion_params, ptr %290, i64 %267, i32 1, i64 1
  %292 = load ptr, ptr %243, align 8, !tbaa !120
  %293 = getelementptr inbounds ptr, ptr %292, i64 %264
  %294 = load ptr, ptr %293, align 8, !tbaa !45
  %295 = getelementptr inbounds %struct.pic_motion_params, ptr %294, i64 %267, i32 1, i64 1
  %296 = load i32, ptr %295, align 4
  store i32 %296, ptr %291, align 4
  %297 = load ptr, ptr %243, align 8, !tbaa !120
  %298 = getelementptr inbounds ptr, ptr %297, i64 %264
  %299 = load ptr, ptr %298, align 8, !tbaa !45
  %300 = getelementptr inbounds %struct.pic_motion_params, ptr %299, i64 %267, i32 2
  %301 = load i8, ptr %300, align 8, !tbaa !131
  %302 = load ptr, ptr %242, align 8, !tbaa !120
  %303 = getelementptr inbounds ptr, ptr %302, i64 %250
  %304 = load ptr, ptr %303, align 8, !tbaa !45
  %305 = getelementptr inbounds %struct.pic_motion_params, ptr %304, i64 %267, i32 2
  store i8 %301, ptr %305, align 8, !tbaa !131
  %306 = load ptr, ptr %242, align 8, !tbaa !120
  %307 = getelementptr inbounds ptr, ptr %306, i64 %250
  %308 = load ptr, ptr %307, align 8, !tbaa !45
  %309 = getelementptr inbounds %struct.pic_motion_params, ptr %308, i64 %267
  %310 = getelementptr inbounds %struct.pic_motion_params, ptr %308, i64 %267, i32 2
  %311 = load i8, ptr %310, align 8, !tbaa !131
  %312 = icmp sgt i8 %311, -1
  br i1 %312, label %313, label %321

313:                                              ; preds = %278
  %314 = load ptr, ptr %244, align 8, !tbaa !243
  %315 = load ptr, ptr %314, align 8, !tbaa !45
  %316 = getelementptr inbounds %struct.slice, ptr %315, i64 0, i32 56, i64 4
  %317 = load ptr, ptr %316, align 8, !tbaa !45
  %318 = zext nneg i8 %311 to i64
  %319 = getelementptr inbounds ptr, ptr %317, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !45
  br label %321

321:                                              ; preds = %278, %313
  %322 = phi ptr [ %320, %313 ], [ null, %278 ]
  store ptr %322, ptr %309, align 8, !tbaa !45
  %323 = load ptr, ptr %243, align 8, !tbaa !120
  %324 = getelementptr inbounds ptr, ptr %323, i64 %264
  %325 = load ptr, ptr %324, align 8, !tbaa !45
  %326 = getelementptr inbounds %struct.pic_motion_params, ptr %325, i64 %267, i32 2, i64 1
  %327 = load i8, ptr %326, align 1, !tbaa !131
  %328 = load ptr, ptr %242, align 8, !tbaa !120
  %329 = getelementptr inbounds ptr, ptr %328, i64 %250
  %330 = load ptr, ptr %329, align 8, !tbaa !45
  %331 = getelementptr inbounds %struct.pic_motion_params, ptr %330, i64 %267, i32 2, i64 1
  store i8 %327, ptr %331, align 1, !tbaa !131
  %332 = load ptr, ptr %242, align 8, !tbaa !120
  %333 = getelementptr inbounds ptr, ptr %332, i64 %250
  %334 = load ptr, ptr %333, align 8, !tbaa !45
  %335 = getelementptr inbounds %struct.pic_motion_params, ptr %334, i64 %267, i32 2, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !131
  %337 = icmp sgt i8 %336, -1
  br i1 %337, label %338, label %346

338:                                              ; preds = %321
  %339 = load ptr, ptr %244, align 8, !tbaa !243
  %340 = load ptr, ptr %339, align 8, !tbaa !45
  %341 = getelementptr inbounds %struct.slice, ptr %340, i64 0, i32 56, i64 5
  %342 = load ptr, ptr %341, align 8, !tbaa !45
  %343 = zext nneg i8 %336 to i64
  %344 = getelementptr inbounds ptr, ptr %342, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !45
  br label %346

346:                                              ; preds = %321, %338
  %347 = phi ptr [ %345, %338 ], [ null, %321 ]
  %348 = getelementptr inbounds %struct.pic_motion_params, ptr %334, i64 %267, i32 0, i64 1
  store ptr %347, ptr %348, align 8
  %349 = load ptr, ptr %245, align 8, !tbaa !120
  %350 = getelementptr inbounds ptr, ptr %349, i64 %250
  %351 = load ptr, ptr %350, align 8, !tbaa !45
  %352 = getelementptr inbounds %struct.pic_motion_params, ptr %351, i64 %267, i32 1
  %353 = load ptr, ptr %243, align 8, !tbaa !120
  %354 = getelementptr inbounds ptr, ptr %353, i64 %265
  %355 = load ptr, ptr %354, align 8, !tbaa !45
  %356 = getelementptr inbounds %struct.pic_motion_params, ptr %355, i64 %267, i32 1
  %357 = load i32, ptr %356, align 8
  store i32 %357, ptr %352, align 8
  %358 = load ptr, ptr %245, align 8, !tbaa !120
  %359 = getelementptr inbounds ptr, ptr %358, i64 %250
  %360 = load ptr, ptr %359, align 8, !tbaa !45
  %361 = getelementptr inbounds %struct.pic_motion_params, ptr %360, i64 %267, i32 1, i64 1
  %362 = load ptr, ptr %243, align 8, !tbaa !120
  %363 = getelementptr inbounds ptr, ptr %362, i64 %265
  %364 = load ptr, ptr %363, align 8, !tbaa !45
  %365 = getelementptr inbounds %struct.pic_motion_params, ptr %364, i64 %267, i32 1, i64 1
  %366 = load i32, ptr %365, align 4
  store i32 %366, ptr %361, align 4
  %367 = load ptr, ptr %243, align 8, !tbaa !120
  %368 = getelementptr inbounds ptr, ptr %367, i64 %265
  %369 = load ptr, ptr %368, align 8, !tbaa !45
  %370 = getelementptr inbounds %struct.pic_motion_params, ptr %369, i64 %267, i32 2
  %371 = load i8, ptr %370, align 8, !tbaa !131
  %372 = load ptr, ptr %245, align 8, !tbaa !120
  %373 = getelementptr inbounds ptr, ptr %372, i64 %250
  %374 = load ptr, ptr %373, align 8, !tbaa !45
  %375 = getelementptr inbounds %struct.pic_motion_params, ptr %374, i64 %267, i32 2
  store i8 %371, ptr %375, align 8, !tbaa !131
  %376 = load ptr, ptr %245, align 8, !tbaa !120
  %377 = getelementptr inbounds ptr, ptr %376, i64 %250
  %378 = load ptr, ptr %377, align 8, !tbaa !45
  %379 = getelementptr inbounds %struct.pic_motion_params, ptr %378, i64 %267
  %380 = getelementptr inbounds %struct.pic_motion_params, ptr %378, i64 %267, i32 2
  %381 = load i8, ptr %380, align 8, !tbaa !131
  %382 = icmp sgt i8 %381, -1
  br i1 %382, label %383, label %391

383:                                              ; preds = %346
  %384 = load ptr, ptr %244, align 8, !tbaa !243
  %385 = load ptr, ptr %384, align 8, !tbaa !45
  %386 = getelementptr inbounds %struct.slice, ptr %385, i64 0, i32 56, i64 2
  %387 = load ptr, ptr %386, align 8, !tbaa !45
  %388 = zext nneg i8 %381 to i64
  %389 = getelementptr inbounds ptr, ptr %387, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !45
  br label %391

391:                                              ; preds = %346, %383
  %392 = phi ptr [ %390, %383 ], [ null, %346 ]
  store ptr %392, ptr %379, align 8, !tbaa !45
  %393 = load ptr, ptr %243, align 8, !tbaa !120
  %394 = getelementptr inbounds ptr, ptr %393, i64 %265
  %395 = load ptr, ptr %394, align 8, !tbaa !45
  %396 = getelementptr inbounds %struct.pic_motion_params, ptr %395, i64 %267, i32 2, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !131
  %398 = load ptr, ptr %245, align 8, !tbaa !120
  %399 = getelementptr inbounds ptr, ptr %398, i64 %250
  %400 = load ptr, ptr %399, align 8, !tbaa !45
  %401 = getelementptr inbounds %struct.pic_motion_params, ptr %400, i64 %267, i32 2, i64 1
  store i8 %397, ptr %401, align 1, !tbaa !131
  %402 = load ptr, ptr %245, align 8, !tbaa !120
  %403 = getelementptr inbounds ptr, ptr %402, i64 %250
  %404 = load ptr, ptr %403, align 8, !tbaa !45
  %405 = getelementptr inbounds %struct.pic_motion_params, ptr %404, i64 %267, i32 2, i64 1
  %406 = load i8, ptr %405, align 1, !tbaa !131
  %407 = icmp sgt i8 %406, -1
  br i1 %407, label %408, label %416

408:                                              ; preds = %391
  %409 = load ptr, ptr %244, align 8, !tbaa !243
  %410 = load ptr, ptr %409, align 8, !tbaa !45
  %411 = getelementptr inbounds %struct.slice, ptr %410, i64 0, i32 56, i64 3
  %412 = load ptr, ptr %411, align 8, !tbaa !45
  %413 = zext nneg i8 %406 to i64
  %414 = getelementptr inbounds ptr, ptr %412, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !45
  br label %416

416:                                              ; preds = %391, %408
  %417 = phi ptr [ %415, %408 ], [ null, %391 ]
  %418 = getelementptr inbounds %struct.pic_motion_params, ptr %404, i64 %267, i32 0, i64 1
  store ptr %417, ptr %418, align 8, !tbaa !45
  br label %419

419:                                              ; preds = %416, %266
  %420 = add nuw nsw i64 %267, 1
  %421 = load i32, ptr %5, align 8, !tbaa !100
  %422 = ashr i32 %421, 2
  %423 = sext i32 %422 to i64
  %424 = icmp slt i64 %420, %423
  br i1 %424, label %266, label %425, !llvm.loop !288

425:                                              ; preds = %419
  %426 = load i32, ptr %238, align 4, !tbaa !101
  br label %427

427:                                              ; preds = %425, %247
  %428 = phi i32 [ %426, %425 ], [ %248, %247 ]
  %429 = phi i32 [ %421, %425 ], [ %249, %247 ]
  %430 = add nuw nsw i64 %250, 1
  %431 = ashr i32 %428, 3
  %432 = sext i32 %431 to i64
  %433 = icmp slt i64 %430, %432
  br i1 %433, label %247, label %434, !llvm.loop !289

434:                                              ; preds = %427, %233
  %435 = phi i32 [ %235, %233 ], [ %428, %427 ]
  %436 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 17
  %437 = icmp sgt i32 %435, 7
  br i1 %437, label %438, label %599

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 37
  %440 = getelementptr inbounds %struct.storable_picture, ptr %225, i64 0, i32 35
  %441 = getelementptr inbounds %struct.storable_picture, ptr %226, i64 0, i32 35
  %442 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %443 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %444 = load i32, ptr %5, align 8, !tbaa !100
  br label %445

445:                                              ; preds = %438, %592
  %446 = phi i32 [ %435, %438 ], [ %593, %592 ]
  %447 = phi i32 [ %444, %438 ], [ %594, %592 ]
  %448 = phi i64 [ 0, %438 ], [ %595, %592 ]
  %449 = icmp sgt i32 %447, 3
  br i1 %449, label %450, label %592

450:                                              ; preds = %445
  %451 = trunc i64 %448 to i32
  %452 = lshr i32 %451, 1
  %453 = tail call fastcc i32 @RSD(i32 noundef %451) #24
  %454 = shl nsw i32 %453, 1
  %455 = lshr i32 %451, 2
  %456 = mul nsw i32 %455, %8
  %457 = and i32 %452, 1
  %458 = sext i32 %454 to i64
  br label %459

459:                                              ; preds = %450, %584
  %460 = phi i64 [ 0, %450 ], [ %585, %584 ]
  %461 = trunc i64 %460 to i32
  %462 = tail call fastcc i32 @RSD(i32 noundef %461) #24
  %463 = load i32, ptr %230, align 4, !tbaa !110
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %475, label %465

465:                                              ; preds = %459
  %466 = lshr i32 %461, 1
  %467 = and i32 %466, 1073741822
  %468 = add nsw i32 %467, %456
  %469 = or disjoint i32 %468, %457
  %470 = load ptr, ptr %439, align 8, !tbaa !290
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds i8, ptr %470, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !131
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %475, label %584

475:                                              ; preds = %465, %459
  %476 = load ptr, ptr %440, align 8, !tbaa !120
  %477 = getelementptr inbounds ptr, ptr %476, i64 %448
  %478 = load ptr, ptr %477, align 8, !tbaa !45
  %479 = getelementptr inbounds %struct.pic_motion_params, ptr %478, i64 %460, i32 1
  %480 = load ptr, ptr %441, align 8, !tbaa !120
  %481 = getelementptr inbounds ptr, ptr %480, i64 %448
  %482 = load ptr, ptr %481, align 8, !tbaa !45
  %483 = getelementptr inbounds %struct.pic_motion_params, ptr %482, i64 %460, i32 1
  %484 = load ptr, ptr %442, align 8, !tbaa !120
  %485 = getelementptr inbounds ptr, ptr %484, i64 %458
  %486 = load ptr, ptr %485, align 8, !tbaa !45
  %487 = sext i32 %462 to i64
  %488 = getelementptr inbounds %struct.pic_motion_params, ptr %486, i64 %487, i32 1
  %489 = load i32, ptr %488, align 8
  store i32 %489, ptr %483, align 8
  store i32 %489, ptr %479, align 8
  %490 = load ptr, ptr %440, align 8, !tbaa !120
  %491 = getelementptr inbounds ptr, ptr %490, i64 %448
  %492 = load ptr, ptr %491, align 8, !tbaa !45
  %493 = getelementptr inbounds %struct.pic_motion_params, ptr %492, i64 %460, i32 1, i64 1
  %494 = load ptr, ptr %441, align 8, !tbaa !120
  %495 = getelementptr inbounds ptr, ptr %494, i64 %448
  %496 = load ptr, ptr %495, align 8, !tbaa !45
  %497 = getelementptr inbounds %struct.pic_motion_params, ptr %496, i64 %460, i32 1, i64 1
  %498 = load ptr, ptr %442, align 8, !tbaa !120
  %499 = getelementptr inbounds ptr, ptr %498, i64 %458
  %500 = load ptr, ptr %499, align 8, !tbaa !45
  %501 = getelementptr inbounds %struct.pic_motion_params, ptr %500, i64 %487, i32 1, i64 1
  %502 = load i32, ptr %501, align 4
  store i32 %502, ptr %497, align 4
  store i32 %502, ptr %493, align 4
  %503 = load ptr, ptr %442, align 8, !tbaa !120
  %504 = getelementptr inbounds ptr, ptr %503, i64 %458
  %505 = load ptr, ptr %504, align 8, !tbaa !45
  %506 = getelementptr inbounds %struct.pic_motion_params, ptr %505, i64 %487, i32 2
  %507 = load i8, ptr %506, align 8, !tbaa !131
  %508 = icmp eq i8 %507, -1
  %509 = load ptr, ptr %441, align 8, !tbaa !120
  %510 = getelementptr inbounds ptr, ptr %509, i64 %448
  %511 = load ptr, ptr %510, align 8, !tbaa !45
  %512 = getelementptr inbounds %struct.pic_motion_params, ptr %511, i64 %460, i32 2
  br i1 %508, label %513, label %518

513:                                              ; preds = %475
  store i8 -1, ptr %512, align 8, !tbaa !131
  %514 = load ptr, ptr %440, align 8, !tbaa !120
  %515 = getelementptr inbounds ptr, ptr %514, i64 %448
  %516 = load ptr, ptr %515, align 8, !tbaa !45
  %517 = getelementptr inbounds %struct.pic_motion_params, ptr %516, i64 %460, i32 2
  store i8 -1, ptr %517, align 8, !tbaa !131
  br label %543

518:                                              ; preds = %475
  store i8 %507, ptr %512, align 8, !tbaa !131
  %519 = load ptr, ptr %440, align 8, !tbaa !120
  %520 = getelementptr inbounds ptr, ptr %519, i64 %448
  %521 = load ptr, ptr %520, align 8, !tbaa !45
  %522 = getelementptr inbounds %struct.pic_motion_params, ptr %521, i64 %460, i32 2
  store i8 %507, ptr %522, align 8, !tbaa !131
  %523 = load ptr, ptr %443, align 8, !tbaa !243
  %524 = load ptr, ptr %523, align 8, !tbaa !45
  %525 = getelementptr inbounds %struct.slice, ptr %524, i64 0, i32 56
  %526 = load ptr, ptr %525, align 8, !tbaa !45
  %527 = load ptr, ptr %442, align 8, !tbaa !120
  %528 = getelementptr inbounds ptr, ptr %527, i64 %458
  %529 = load ptr, ptr %528, align 8, !tbaa !45
  %530 = getelementptr inbounds %struct.pic_motion_params, ptr %529, i64 %487, i32 2
  %531 = load i8, ptr %530, align 8, !tbaa !131
  %532 = sext i8 %531 to i64
  %533 = getelementptr inbounds ptr, ptr %526, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !45
  %535 = load ptr, ptr %441, align 8, !tbaa !120
  %536 = getelementptr inbounds ptr, ptr %535, i64 %448
  %537 = load ptr, ptr %536, align 8, !tbaa !45
  %538 = getelementptr inbounds %struct.pic_motion_params, ptr %537, i64 %460
  store ptr %534, ptr %538, align 8, !tbaa !45
  %539 = load ptr, ptr %440, align 8, !tbaa !120
  %540 = getelementptr inbounds ptr, ptr %539, i64 %448
  %541 = load ptr, ptr %540, align 8, !tbaa !45
  %542 = getelementptr inbounds %struct.pic_motion_params, ptr %541, i64 %460
  store ptr %534, ptr %542, align 8, !tbaa !45
  br label %543

543:                                              ; preds = %518, %513
  %544 = load ptr, ptr %442, align 8, !tbaa !120
  %545 = getelementptr inbounds ptr, ptr %544, i64 %458
  %546 = load ptr, ptr %545, align 8, !tbaa !45
  %547 = getelementptr inbounds %struct.pic_motion_params, ptr %546, i64 %487, i32 2, i64 1
  %548 = load i8, ptr %547, align 1, !tbaa !131
  %549 = icmp eq i8 %548, -1
  %550 = load ptr, ptr %441, align 8, !tbaa !120
  %551 = getelementptr inbounds ptr, ptr %550, i64 %448
  %552 = load ptr, ptr %551, align 8, !tbaa !45
  %553 = getelementptr inbounds %struct.pic_motion_params, ptr %552, i64 %460, i32 2, i64 1
  br i1 %549, label %554, label %559

554:                                              ; preds = %543
  store i8 -1, ptr %553, align 1, !tbaa !131
  %555 = load ptr, ptr %440, align 8, !tbaa !120
  %556 = getelementptr inbounds ptr, ptr %555, i64 %448
  %557 = load ptr, ptr %556, align 8, !tbaa !45
  %558 = getelementptr inbounds %struct.pic_motion_params, ptr %557, i64 %460, i32 2, i64 1
  store i8 -1, ptr %558, align 1, !tbaa !131
  br label %584

559:                                              ; preds = %543
  store i8 %548, ptr %553, align 1, !tbaa !131
  %560 = load ptr, ptr %440, align 8, !tbaa !120
  %561 = getelementptr inbounds ptr, ptr %560, i64 %448
  %562 = load ptr, ptr %561, align 8, !tbaa !45
  %563 = getelementptr inbounds %struct.pic_motion_params, ptr %562, i64 %460, i32 2, i64 1
  store i8 %548, ptr %563, align 1, !tbaa !131
  %564 = load ptr, ptr %443, align 8, !tbaa !243
  %565 = load ptr, ptr %564, align 8, !tbaa !45
  %566 = getelementptr inbounds %struct.slice, ptr %565, i64 0, i32 56, i64 1
  %567 = load ptr, ptr %566, align 8, !tbaa !45
  %568 = load ptr, ptr %442, align 8, !tbaa !120
  %569 = getelementptr inbounds ptr, ptr %568, i64 %458
  %570 = load ptr, ptr %569, align 8, !tbaa !45
  %571 = getelementptr inbounds %struct.pic_motion_params, ptr %570, i64 %487, i32 2, i64 1
  %572 = load i8, ptr %571, align 1, !tbaa !131
  %573 = sext i8 %572 to i64
  %574 = getelementptr inbounds ptr, ptr %567, i64 %573
  %575 = load ptr, ptr %574, align 8, !tbaa !45
  %576 = load ptr, ptr %441, align 8, !tbaa !120
  %577 = getelementptr inbounds ptr, ptr %576, i64 %448
  %578 = load ptr, ptr %577, align 8, !tbaa !45
  %579 = getelementptr inbounds %struct.pic_motion_params, ptr %578, i64 %460, i32 0, i64 1
  store ptr %575, ptr %579, align 8, !tbaa !45
  %580 = load ptr, ptr %440, align 8, !tbaa !120
  %581 = getelementptr inbounds ptr, ptr %580, i64 %448
  %582 = load ptr, ptr %581, align 8, !tbaa !45
  %583 = getelementptr inbounds %struct.pic_motion_params, ptr %582, i64 %460, i32 0, i64 1
  store ptr %575, ptr %583, align 8, !tbaa !45
  br label %584

584:                                              ; preds = %559, %554, %465
  %585 = add nuw nsw i64 %460, 1
  %586 = load i32, ptr %5, align 8, !tbaa !100
  %587 = ashr i32 %586, 2
  %588 = sext i32 %587 to i64
  %589 = icmp slt i64 %585, %588
  br i1 %589, label %459, label %590, !llvm.loop !291

590:                                              ; preds = %584
  %591 = load i32, ptr %436, align 4, !tbaa !101
  br label %592

592:                                              ; preds = %590, %445
  %593 = phi i32 [ %591, %590 ], [ %446, %445 ]
  %594 = phi i32 [ %586, %590 ], [ %447, %445 ]
  %595 = add nuw nsw i64 %448, 1
  %596 = ashr i32 %593, 3
  %597 = sext i32 %596 to i64
  %598 = icmp slt i64 %595, %597
  br i1 %598, label %445, label %599, !llvm.loop !292

599:                                              ; preds = %592, %236, %434, %224
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dpb_combine_field(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  tail call void @dpb_combine_field_yuv(ptr noundef %0, ptr noundef %1) #24
  %3 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 15
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 64
  store i32 %4, ptr %7, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 73
  %11 = load i32, ptr %10, align 4, !tbaa !287
  %12 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 73
  store i32 %11, ptr %12, align 4, !tbaa !287
  %13 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !101
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %309

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %18 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  br label %19

19:                                               ; preds = %16, %301
  %20 = phi ptr [ %9, %16 ], [ %302, %301 ]
  %21 = phi i64 [ 0, %16 ], [ %303, %301 ]
  %22 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !100
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %301

25:                                               ; preds = %19
  %26 = shl nuw i64 %21, 1
  %27 = or disjoint i64 %26, 1
  br label %28

28:                                               ; preds = %25, %286
  %29 = phi i64 [ 0, %25 ], [ %294, %286 ]
  %30 = phi ptr [ %20, %25 ], [ %295, %286 ]
  %31 = load ptr, ptr %5, align 8, !tbaa !117
  %32 = getelementptr inbounds %struct.storable_picture, ptr %31, i64 0, i32 35
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = getelementptr inbounds ptr, ptr %33, i64 %26
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %29, i32 1
  %37 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 35
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = getelementptr inbounds ptr, ptr %38, i64 %21
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %29, i32 1
  %42 = load i32, ptr %41, align 8
  store i32 %42, ptr %36, align 8
  %43 = load ptr, ptr %5, align 8, !tbaa !117
  %44 = getelementptr inbounds %struct.storable_picture, ptr %43, i64 0, i32 35
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  %46 = getelementptr inbounds ptr, ptr %45, i64 %26
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.pic_motion_params, ptr %47, i64 %29, i32 1, i64 1
  %49 = load ptr, ptr %8, align 8, !tbaa !118
  %50 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 35
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 %21
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %29, i32 1, i64 1
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %48, align 4
  %56 = load ptr, ptr %8, align 8, !tbaa !118
  %57 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 35
  %58 = load ptr, ptr %57, align 8, !tbaa !120
  %59 = getelementptr inbounds ptr, ptr %58, i64 %21
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.pic_motion_params, ptr %60, i64 %29, i32 2
  %62 = load i8, ptr %61, align 8, !tbaa !131
  %63 = load ptr, ptr %5, align 8, !tbaa !117
  %64 = getelementptr inbounds %struct.storable_picture, ptr %63, i64 0, i32 35
  %65 = load ptr, ptr %64, align 8, !tbaa !120
  %66 = getelementptr inbounds ptr, ptr %65, i64 %26
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %29, i32 2
  store i8 %62, ptr %68, align 8, !tbaa !131
  %69 = load ptr, ptr %8, align 8, !tbaa !118
  %70 = getelementptr inbounds %struct.storable_picture, ptr %69, i64 0, i32 35
  %71 = load ptr, ptr %70, align 8, !tbaa !120
  %72 = getelementptr inbounds ptr, ptr %71, i64 %21
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %73, i64 %29, i32 2, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !131
  %76 = load ptr, ptr %5, align 8, !tbaa !117
  %77 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 35
  %78 = load ptr, ptr %77, align 8, !tbaa !120
  %79 = getelementptr inbounds ptr, ptr %78, i64 %26
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %29, i32 2, i64 1
  store i8 %75, ptr %81, align 1, !tbaa !131
  %82 = load ptr, ptr %8, align 8, !tbaa !118
  %83 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 74
  %84 = load i8, ptr %83, align 8, !tbaa !131
  %85 = icmp sgt i8 %84, 0
  %86 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 35
  %87 = load ptr, ptr %86, align 8, !tbaa !120
  %88 = getelementptr inbounds ptr, ptr %87, i64 %21
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %29, i32 2
  %91 = load i8, ptr %90, align 8, !tbaa !131
  %92 = icmp sgt i8 %91, -1
  br i1 %85, label %93, label %118

93:                                               ; preds = %28
  br i1 %92, label %94, label %100

94:                                               ; preds = %93
  %95 = zext nneg i8 %91 to i64
  %96 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 75
  %97 = load ptr, ptr %96, align 8, !tbaa !45
  %98 = getelementptr inbounds ptr, ptr %97, i64 %95
  %99 = load ptr, ptr %98, align 8, !tbaa !45
  br label %100

100:                                              ; preds = %93, %94
  %101 = phi ptr [ %99, %94 ], [ null, %93 ]
  %102 = load ptr, ptr %5, align 8, !tbaa !117
  %103 = getelementptr inbounds %struct.storable_picture, ptr %102, i64 0, i32 35
  %104 = load ptr, ptr %103, align 8, !tbaa !120
  %105 = getelementptr inbounds ptr, ptr %104, i64 %26
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %106, i64 %29
  store ptr %101, ptr %107, align 8, !tbaa !45
  %108 = load ptr, ptr %8, align 8, !tbaa !118
  %109 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 35
  %110 = load ptr, ptr %109, align 8, !tbaa !120
  %111 = getelementptr inbounds ptr, ptr %110, i64 %21
  %112 = load ptr, ptr %111, align 8, !tbaa !45
  %113 = getelementptr inbounds %struct.pic_motion_params, ptr %112, i64 %29, i32 2, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !131
  %115 = icmp sgt i8 %114, -1
  br i1 %115, label %116, label %154

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 75, i64 1
  br label %147

118:                                              ; preds = %28
  br i1 %92, label %119, label %127

119:                                              ; preds = %118
  %120 = zext nneg i8 %91 to i64
  %121 = load ptr, ptr %17, align 8, !tbaa !243
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  %123 = getelementptr inbounds %struct.slice, ptr %122, i64 0, i32 56
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  %125 = getelementptr inbounds ptr, ptr %124, i64 %120
  %126 = load ptr, ptr %125, align 8, !tbaa !45
  br label %127

127:                                              ; preds = %118, %119
  %128 = phi ptr [ %126, %119 ], [ null, %118 ]
  %129 = load ptr, ptr %5, align 8, !tbaa !117
  %130 = getelementptr inbounds %struct.storable_picture, ptr %129, i64 0, i32 35
  %131 = load ptr, ptr %130, align 8, !tbaa !120
  %132 = getelementptr inbounds ptr, ptr %131, i64 %26
  %133 = load ptr, ptr %132, align 8, !tbaa !45
  %134 = getelementptr inbounds %struct.pic_motion_params, ptr %133, i64 %29
  store ptr %128, ptr %134, align 8, !tbaa !45
  %135 = load ptr, ptr %8, align 8, !tbaa !118
  %136 = getelementptr inbounds %struct.storable_picture, ptr %135, i64 0, i32 35
  %137 = load ptr, ptr %136, align 8, !tbaa !120
  %138 = getelementptr inbounds ptr, ptr %137, i64 %21
  %139 = load ptr, ptr %138, align 8, !tbaa !45
  %140 = getelementptr inbounds %struct.pic_motion_params, ptr %139, i64 %29, i32 2, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !131
  %142 = icmp sgt i8 %141, -1
  br i1 %142, label %143, label %154

143:                                              ; preds = %127
  %144 = load ptr, ptr %17, align 8, !tbaa !243
  %145 = load ptr, ptr %144, align 8, !tbaa !45
  %146 = getelementptr inbounds %struct.slice, ptr %145, i64 0, i32 56, i64 1
  br label %147

147:                                              ; preds = %116, %143
  %148 = phi ptr [ %146, %143 ], [ %117, %116 ]
  %149 = phi i8 [ %141, %143 ], [ %114, %116 ]
  %150 = zext nneg i8 %149 to i64
  %151 = load ptr, ptr %148, align 8, !tbaa !45
  %152 = getelementptr inbounds ptr, ptr %151, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !45
  br label %154

154:                                              ; preds = %147, %127, %100
  %155 = phi ptr [ null, %100 ], [ null, %127 ], [ %153, %147 ]
  %156 = load ptr, ptr %5, align 8, !tbaa !117
  %157 = getelementptr inbounds %struct.storable_picture, ptr %156, i64 0, i32 35
  %158 = load ptr, ptr %157, align 8, !tbaa !120
  %159 = getelementptr inbounds ptr, ptr %158, i64 %26
  %160 = load ptr, ptr %159, align 8, !tbaa !45
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %160, i64 %29, i32 0, i64 1
  store ptr %155, ptr %161, align 8, !tbaa !45
  %162 = load ptr, ptr %5, align 8, !tbaa !117
  %163 = getelementptr inbounds %struct.storable_picture, ptr %162, i64 0, i32 35
  %164 = load ptr, ptr %163, align 8, !tbaa !120
  %165 = getelementptr inbounds ptr, ptr %164, i64 %27
  %166 = load ptr, ptr %165, align 8, !tbaa !45
  %167 = getelementptr inbounds %struct.pic_motion_params, ptr %166, i64 %29, i32 1
  %168 = load ptr, ptr %18, align 8, !tbaa !119
  %169 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 35
  %170 = load ptr, ptr %169, align 8, !tbaa !120
  %171 = getelementptr inbounds ptr, ptr %170, i64 %21
  %172 = load ptr, ptr %171, align 8, !tbaa !45
  %173 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %29, i32 1
  %174 = load i32, ptr %173, align 8
  store i32 %174, ptr %167, align 8
  %175 = load ptr, ptr %5, align 8, !tbaa !117
  %176 = getelementptr inbounds %struct.storable_picture, ptr %175, i64 0, i32 35
  %177 = load ptr, ptr %176, align 8, !tbaa !120
  %178 = getelementptr inbounds ptr, ptr %177, i64 %27
  %179 = load ptr, ptr %178, align 8, !tbaa !45
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %179, i64 %29, i32 1, i64 1
  %181 = load ptr, ptr %18, align 8, !tbaa !119
  %182 = getelementptr inbounds %struct.storable_picture, ptr %181, i64 0, i32 35
  %183 = load ptr, ptr %182, align 8, !tbaa !120
  %184 = getelementptr inbounds ptr, ptr %183, i64 %21
  %185 = load ptr, ptr %184, align 8, !tbaa !45
  %186 = getelementptr inbounds %struct.pic_motion_params, ptr %185, i64 %29, i32 1, i64 1
  %187 = load i32, ptr %186, align 4
  store i32 %187, ptr %180, align 4
  %188 = load ptr, ptr %18, align 8, !tbaa !119
  %189 = getelementptr inbounds %struct.storable_picture, ptr %188, i64 0, i32 35
  %190 = load ptr, ptr %189, align 8, !tbaa !120
  %191 = getelementptr inbounds ptr, ptr %190, i64 %21
  %192 = load ptr, ptr %191, align 8, !tbaa !45
  %193 = getelementptr inbounds %struct.pic_motion_params, ptr %192, i64 %29, i32 2
  %194 = load i8, ptr %193, align 8, !tbaa !131
  %195 = load ptr, ptr %5, align 8, !tbaa !117
  %196 = getelementptr inbounds %struct.storable_picture, ptr %195, i64 0, i32 35
  %197 = load ptr, ptr %196, align 8, !tbaa !120
  %198 = getelementptr inbounds ptr, ptr %197, i64 %27
  %199 = load ptr, ptr %198, align 8, !tbaa !45
  %200 = getelementptr inbounds %struct.pic_motion_params, ptr %199, i64 %29, i32 2
  store i8 %194, ptr %200, align 8, !tbaa !131
  %201 = load ptr, ptr %18, align 8, !tbaa !119
  %202 = getelementptr inbounds %struct.storable_picture, ptr %201, i64 0, i32 35
  %203 = load ptr, ptr %202, align 8, !tbaa !120
  %204 = getelementptr inbounds ptr, ptr %203, i64 %21
  %205 = load ptr, ptr %204, align 8, !tbaa !45
  %206 = getelementptr inbounds %struct.pic_motion_params, ptr %205, i64 %29, i32 2, i64 1
  %207 = load i8, ptr %206, align 1, !tbaa !131
  %208 = load ptr, ptr %5, align 8, !tbaa !117
  %209 = getelementptr inbounds %struct.storable_picture, ptr %208, i64 0, i32 35
  %210 = load ptr, ptr %209, align 8, !tbaa !120
  %211 = getelementptr inbounds ptr, ptr %210, i64 %27
  %212 = load ptr, ptr %211, align 8, !tbaa !45
  %213 = getelementptr inbounds %struct.pic_motion_params, ptr %212, i64 %29, i32 2, i64 1
  store i8 %207, ptr %213, align 1, !tbaa !131
  %214 = load ptr, ptr %18, align 8, !tbaa !119
  %215 = getelementptr inbounds %struct.storable_picture, ptr %214, i64 0, i32 74
  %216 = load i8, ptr %215, align 8, !tbaa !131
  %217 = icmp sgt i8 %216, 0
  %218 = getelementptr inbounds %struct.storable_picture, ptr %214, i64 0, i32 35
  %219 = load ptr, ptr %218, align 8, !tbaa !120
  %220 = getelementptr inbounds ptr, ptr %219, i64 %21
  %221 = load ptr, ptr %220, align 8, !tbaa !45
  %222 = getelementptr inbounds %struct.pic_motion_params, ptr %221, i64 %29, i32 2
  %223 = load i8, ptr %222, align 8, !tbaa !131
  %224 = icmp sgt i8 %223, -1
  br i1 %217, label %225, label %250

225:                                              ; preds = %154
  br i1 %224, label %226, label %232

226:                                              ; preds = %225
  %227 = zext nneg i8 %223 to i64
  %228 = getelementptr inbounds %struct.storable_picture, ptr %214, i64 0, i32 75
  %229 = load ptr, ptr %228, align 8, !tbaa !45
  %230 = getelementptr inbounds ptr, ptr %229, i64 %227
  %231 = load ptr, ptr %230, align 8, !tbaa !45
  br label %232

232:                                              ; preds = %225, %226
  %233 = phi ptr [ %231, %226 ], [ null, %225 ]
  %234 = load ptr, ptr %5, align 8, !tbaa !117
  %235 = getelementptr inbounds %struct.storable_picture, ptr %234, i64 0, i32 35
  %236 = load ptr, ptr %235, align 8, !tbaa !120
  %237 = getelementptr inbounds ptr, ptr %236, i64 %27
  %238 = load ptr, ptr %237, align 8, !tbaa !45
  %239 = getelementptr inbounds %struct.pic_motion_params, ptr %238, i64 %29
  store ptr %233, ptr %239, align 8, !tbaa !45
  %240 = load ptr, ptr %18, align 8, !tbaa !119
  %241 = getelementptr inbounds %struct.storable_picture, ptr %240, i64 0, i32 35
  %242 = load ptr, ptr %241, align 8, !tbaa !120
  %243 = getelementptr inbounds ptr, ptr %242, i64 %21
  %244 = load ptr, ptr %243, align 8, !tbaa !45
  %245 = getelementptr inbounds %struct.pic_motion_params, ptr %244, i64 %29, i32 2, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !131
  %247 = icmp sgt i8 %246, -1
  br i1 %247, label %248, label %286

248:                                              ; preds = %232
  %249 = getelementptr inbounds %struct.storable_picture, ptr %240, i64 0, i32 75, i64 1
  br label %279

250:                                              ; preds = %154
  br i1 %224, label %251, label %259

251:                                              ; preds = %250
  %252 = zext nneg i8 %223 to i64
  %253 = load ptr, ptr %17, align 8, !tbaa !243
  %254 = load ptr, ptr %253, align 8, !tbaa !45
  %255 = getelementptr inbounds %struct.slice, ptr %254, i64 0, i32 56
  %256 = load ptr, ptr %255, align 8, !tbaa !45
  %257 = getelementptr inbounds ptr, ptr %256, i64 %252
  %258 = load ptr, ptr %257, align 8, !tbaa !45
  br label %259

259:                                              ; preds = %250, %251
  %260 = phi ptr [ %258, %251 ], [ null, %250 ]
  %261 = load ptr, ptr %5, align 8, !tbaa !117
  %262 = getelementptr inbounds %struct.storable_picture, ptr %261, i64 0, i32 35
  %263 = load ptr, ptr %262, align 8, !tbaa !120
  %264 = getelementptr inbounds ptr, ptr %263, i64 %27
  %265 = load ptr, ptr %264, align 8, !tbaa !45
  %266 = getelementptr inbounds %struct.pic_motion_params, ptr %265, i64 %29
  store ptr %260, ptr %266, align 8, !tbaa !45
  %267 = load ptr, ptr %18, align 8, !tbaa !119
  %268 = getelementptr inbounds %struct.storable_picture, ptr %267, i64 0, i32 35
  %269 = load ptr, ptr %268, align 8, !tbaa !120
  %270 = getelementptr inbounds ptr, ptr %269, i64 %21
  %271 = load ptr, ptr %270, align 8, !tbaa !45
  %272 = getelementptr inbounds %struct.pic_motion_params, ptr %271, i64 %29, i32 2, i64 1
  %273 = load i8, ptr %272, align 1, !tbaa !131
  %274 = icmp sgt i8 %273, -1
  br i1 %274, label %275, label %286

275:                                              ; preds = %259
  %276 = load ptr, ptr %17, align 8, !tbaa !243
  %277 = load ptr, ptr %276, align 8, !tbaa !45
  %278 = getelementptr inbounds %struct.slice, ptr %277, i64 0, i32 56, i64 1
  br label %279

279:                                              ; preds = %248, %275
  %280 = phi ptr [ %278, %275 ], [ %249, %248 ]
  %281 = phi i8 [ %273, %275 ], [ %246, %248 ]
  %282 = zext nneg i8 %281 to i64
  %283 = load ptr, ptr %280, align 8, !tbaa !45
  %284 = getelementptr inbounds ptr, ptr %283, i64 %282
  %285 = load ptr, ptr %284, align 8, !tbaa !45
  br label %286

286:                                              ; preds = %279, %259, %232
  %287 = phi ptr [ null, %232 ], [ null, %259 ], [ %285, %279 ]
  %288 = load ptr, ptr %5, align 8, !tbaa !117
  %289 = getelementptr inbounds %struct.storable_picture, ptr %288, i64 0, i32 35
  %290 = load ptr, ptr %289, align 8, !tbaa !120
  %291 = getelementptr inbounds ptr, ptr %290, i64 %27
  %292 = load ptr, ptr %291, align 8, !tbaa !45
  %293 = getelementptr inbounds %struct.pic_motion_params, ptr %292, i64 %29, i32 0, i64 1
  store ptr %287, ptr %293, align 8, !tbaa !45
  %294 = add nuw nsw i64 %29, 1
  %295 = load ptr, ptr %8, align 8, !tbaa !118
  %296 = getelementptr inbounds %struct.storable_picture, ptr %295, i64 0, i32 16
  %297 = load i32, ptr %296, align 8, !tbaa !100
  %298 = ashr i32 %297, 2
  %299 = sext i32 %298 to i64
  %300 = icmp slt i64 %294, %299
  br i1 %300, label %28, label %301, !llvm.loop !293

301:                                              ; preds = %286, %19
  %302 = phi ptr [ %20, %19 ], [ %295, %286 ]
  %303 = add nuw nsw i64 %21, 1
  %304 = getelementptr inbounds %struct.storable_picture, ptr %302, i64 0, i32 17
  %305 = load i32, ptr %304, align 4, !tbaa !101
  %306 = ashr i32 %305, 2
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %303, %307
  br i1 %308, label %19, label %309, !llvm.loop !294

309:                                              ; preds = %301, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gen_field_ref_ids(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 55
  %11 = load i8, ptr %10, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 74
  store i8 %11, ptr %12, align 8, !tbaa !131
  %13 = icmp sgt i8 %11, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %6, %14
  %15 = phi i64 [ %24, %14 ], [ 0, %6 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !243
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = load ptr, ptr %3, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 %15
  store ptr %21, ptr %23, align 8, !tbaa !45
  %24 = add nuw nsw i64 %15, 1
  %25 = load i8, ptr %12, align 8, !tbaa !131
  %26 = sext i8 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %14, label %28, !llvm.loop !295

28:                                               ; preds = %14, %6, %2
  %29 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 75, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !243
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.slice, ptr %35, i64 0, i32 55, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !131
  %38 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 74, i64 1
  store i8 %37, ptr %38, align 1, !tbaa !131
  %39 = icmp sgt i8 %37, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32, %40
  %41 = phi i64 [ %50, %40 ], [ 0, %32 ]
  %42 = load ptr, ptr %33, align 8, !tbaa !243
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.slice, ptr %43, i64 0, i32 56, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = getelementptr inbounds ptr, ptr %45, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = load ptr, ptr %29, align 8, !tbaa !45
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %47, ptr %49, align 8, !tbaa !45
  %50 = add nuw nsw i64 %41, 1
  %51 = load i8, ptr %38, align 1, !tbaa !131
  %52 = sext i8 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %40, label %54, !llvm.loop !296

54:                                               ; preds = %40, %32, %28
  ret void
}

; Function Attrs: optsize
declare void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_used_for_reference(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !151
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !129
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %37

14:                                               ; preds = %5
  %15 = and i32 %6, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8, %14
  %18 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.storable_picture, ptr %19, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !94
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17, %21, %14
  %26 = and i32 %6, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.frame_store, ptr %0, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !119
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 11
  %34 = load i32, ptr %33, align 4, !tbaa !94
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %32, %25
  br label %37

37:                                               ; preds = %32, %21, %8, %1, %36
  %38 = phi i32 [ 0, %36 ], [ 1, %1 ], [ 1, %8 ], [ 1, %21 ], [ 1, %32 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_frame_from_dpb(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = load i32, ptr %7, align 8, !tbaa !129
  switch i32 %8, label %22 [
    i32 3, label %9
    i32 2, label %16
    i32 1, label %19
    i32 0, label %23
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  tail call void @free_storable_picture(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  tail call void @free_storable_picture(ptr noundef %13) #24
  %14 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  tail call void @free_storable_picture(ptr noundef %15) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  tail call void @free_storable_picture(ptr noundef %18) #24
  store ptr null, ptr %17, align 8, !tbaa !119
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.frame_store, ptr %7, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !118
  tail call void @free_storable_picture(ptr noundef %21) #24
  store ptr null, ptr %20, align 8, !tbaa !118
  br label %23

22:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.27, i32 noundef 500) #23
  br label %23

23:                                               ; preds = %22, %2, %19, %16, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %3, align 8, !tbaa !42
  %25 = getelementptr inbounds ptr, ptr %24, i64 %5
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = add i32 %28, -1
  %30 = icmp ugt i32 %29, %1
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = zext i32 %29 to i64
  br label %46

33:                                               ; preds = %23
  %34 = zext i32 %1 to i64
  %35 = zext i32 %29 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %34, %33 ], [ %39, %36 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !42
  %39 = add nuw nsw i64 %37, 1
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = getelementptr inbounds ptr, ptr %38, i64 %37
  store ptr %41, ptr %42, align 8, !tbaa !45
  %43 = icmp eq i64 %39, %35
  br i1 %43, label %44, label %36, !llvm.loop !297

44:                                               ; preds = %36
  %45 = load ptr, ptr %3, align 8, !tbaa !42
  br label %46

46:                                               ; preds = %31, %44
  %47 = phi i64 [ %32, %31 ], [ %35, %44 ]
  %48 = phi ptr [ %24, %31 ], [ %45, %44 ]
  %49 = getelementptr inbounds ptr, ptr %48, i64 %47
  store ptr %26, ptr %49, align 8, !tbaa !45
  store i32 %29, ptr %27, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @write_lost_ref_after_idr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @write_lost_non_ref_pic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: optsize
declare void @pad_dec_picture(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @RSD(i32 noundef %0) unnamed_addr #0 {
  %2 = and i32 %0, -2
  %3 = lshr i32 %0, 1
  %4 = and i32 %3, 1
  %5 = or disjoint i32 %4, %2
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dpb_combine_field_yuv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !100
  %11 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !101
  %13 = shl nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 19
  %17 = load i32, ptr %16, align 4, !tbaa !103
  %18 = shl nsw i32 %17, 1
  %19 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef 0, i32 noundef %10, i32 noundef %13, i32 noundef %15, i32 noundef %18) #24
  store ptr %19, ptr %3, align 8, !tbaa !117
  br label %20

20:                                               ; preds = %6, %2
  %21 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 4, !tbaa !101
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  br label %31

28:                                               ; preds = %31, %20
  %29 = phi ptr [ %22, %20 ], [ %64, %31 ]
  %30 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 14
  br label %69

31:                                               ; preds = %26, %31
  %32 = phi i64 [ 0, %26 ], [ %63, %31 ]
  %33 = phi ptr [ %22, %26 ], [ %64, %31 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 32
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  %37 = shl nuw nsw i64 %32, 1
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 32
  %41 = load ptr, ptr %40, align 8, !tbaa !122
  %42 = getelementptr inbounds ptr, ptr %41, i64 %32
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !100
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr align 2 %43, i64 %47, i1 false)
  %48 = load ptr, ptr %3, align 8, !tbaa !117
  %49 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 32
  %50 = load ptr, ptr %49, align 8, !tbaa !122
  %51 = or disjoint i64 %37, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = load ptr, ptr %27, align 8, !tbaa !119
  %55 = getelementptr inbounds %struct.storable_picture, ptr %54, i64 0, i32 32
  %56 = load ptr, ptr %55, align 8, !tbaa !122
  %57 = getelementptr inbounds ptr, ptr %56, i64 %32
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.storable_picture, ptr %54, i64 0, i32 16
  %60 = load i32, ptr %59, align 8, !tbaa !100
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %53, ptr align 2 %58, i64 %62, i1 false)
  %63 = add nuw nsw i64 %32, 1
  %64 = load ptr, ptr %21, align 8, !tbaa !118
  %65 = getelementptr inbounds %struct.storable_picture, ptr %64, i64 0, i32 17
  %66 = load i32, ptr %65, align 4, !tbaa !101
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %31, label %28, !llvm.loop !298

69:                                               ; preds = %28, %122
  %70 = phi ptr [ %29, %28 ], [ %123, %122 ]
  %71 = phi i1 [ true, %28 ], [ false, %122 ]
  %72 = phi i64 [ 0, %28 ], [ 1, %122 ]
  %73 = getelementptr inbounds %struct.storable_picture, ptr %70, i64 0, i32 19
  %74 = load i32, ptr %73, align 4, !tbaa !103
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %69, %76
  %77 = phi i64 [ %116, %76 ], [ 0, %69 ]
  %78 = phi ptr [ %117, %76 ], [ %70, %69 ]
  %79 = load ptr, ptr %3, align 8, !tbaa !117
  %80 = getelementptr inbounds %struct.storable_picture, ptr %79, i64 0, i32 33
  %81 = load ptr, ptr %80, align 8, !tbaa !123
  %82 = getelementptr inbounds ptr, ptr %81, i64 %72
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = shl nuw nsw i64 %77, 1
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !45
  %87 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 33
  %88 = load ptr, ptr %87, align 8, !tbaa !123
  %89 = getelementptr inbounds ptr, ptr %88, i64 %72
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  %91 = getelementptr inbounds ptr, ptr %90, i64 %77
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 18
  %94 = load i32, ptr %93, align 8, !tbaa !102
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %86, ptr align 2 %92, i64 %96, i1 false)
  %97 = load ptr, ptr %3, align 8, !tbaa !117
  %98 = getelementptr inbounds %struct.storable_picture, ptr %97, i64 0, i32 33
  %99 = load ptr, ptr %98, align 8, !tbaa !123
  %100 = getelementptr inbounds ptr, ptr %99, i64 %72
  %101 = load ptr, ptr %100, align 8, !tbaa !45
  %102 = or disjoint i64 %84, 1
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !45
  %105 = load ptr, ptr %30, align 8, !tbaa !119
  %106 = getelementptr inbounds %struct.storable_picture, ptr %105, i64 0, i32 33
  %107 = load ptr, ptr %106, align 8, !tbaa !123
  %108 = getelementptr inbounds ptr, ptr %107, i64 %72
  %109 = load ptr, ptr %108, align 8, !tbaa !45
  %110 = getelementptr inbounds ptr, ptr %109, i64 %77
  %111 = load ptr, ptr %110, align 8, !tbaa !45
  %112 = getelementptr inbounds %struct.storable_picture, ptr %105, i64 0, i32 18
  %113 = load i32, ptr %112, align 8, !tbaa !102
  %114 = sext i32 %113 to i64
  %115 = shl nsw i64 %114, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %104, ptr align 2 %111, i64 %115, i1 false)
  %116 = add nuw nsw i64 %77, 1
  %117 = load ptr, ptr %21, align 8, !tbaa !118
  %118 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 19
  %119 = load i32, ptr %118, align 4, !tbaa !103
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %76, label %122, !llvm.loop !299

122:                                              ; preds = %76, %69
  %123 = phi ptr [ %70, %69 ], [ %117, %76 ]
  br i1 %71, label %69, label %124, !llvm.loop !300

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !111
  %127 = load ptr, ptr %30, align 8, !tbaa !119
  %128 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !111
  %130 = tail call fastcc i32 @imin(i32 noundef %126, i32 noundef %129) #24
  %131 = load ptr, ptr %3, align 8, !tbaa !117
  %132 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 4
  store i32 %130, ptr %132, align 8, !tbaa !285
  %133 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 1
  store i32 %130, ptr %133, align 4, !tbaa !111
  %134 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 10
  store i32 %130, ptr %134, align 8, !tbaa !187
  %135 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 4
  store i32 %130, ptr %135, align 8, !tbaa !285
  %136 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 4
  store i32 %130, ptr %136, align 8, !tbaa !285
  %137 = load i32, ptr %125, align 4, !tbaa !111
  %138 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 2
  store i32 %137, ptr %138, align 8, !tbaa !113
  %139 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 2
  store i32 %137, ptr %139, align 8, !tbaa !113
  %140 = load i32, ptr %128, align 4, !tbaa !111
  %141 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 3
  store i32 %140, ptr %141, align 4, !tbaa !112
  %142 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 3
  store i32 %140, ptr %142, align 4, !tbaa !112
  %143 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 11
  %144 = load i32, ptr %143, align 4, !tbaa !94
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %124
  %147 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 11
  %148 = load i32, ptr %147, align 4, !tbaa !94
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i32
  br label %151

151:                                              ; preds = %146, %124
  %152 = phi i32 [ 0, %124 ], [ %150, %146 ]
  %153 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 11
  store i32 %152, ptr %153, align 4, !tbaa !94
  %154 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 10
  %155 = load i8, ptr %154, align 8, !tbaa !128
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 10
  store i8 0, ptr %158, align 8, !tbaa !128
  br label %169

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 10
  %161 = load i8, ptr %160, align 8, !tbaa !128
  %162 = icmp ne i8 %161, 0
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 10
  store i8 %163, ptr %164, align 8, !tbaa !128
  br i1 %162, label %165, label %169

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.frame_store, ptr %1, i64 0, i32 8
  %167 = load i32, ptr %166, align 8, !tbaa !171
  %168 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 9
  store i32 %167, ptr %168, align 4, !tbaa !148
  br label %169

169:                                              ; preds = %157, %165, %159
  %170 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 40
  store ptr %123, ptr %170, align 8, !tbaa !55
  %171 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 41
  store ptr %127, ptr %171, align 8, !tbaa !58
  %172 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 42
  store ptr %131, ptr %172, align 8, !tbaa !59
  %173 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 24
  store i32 0, ptr %173, align 8, !tbaa !109
  %174 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 48
  %175 = load i32, ptr %174, align 4, !tbaa !286
  %176 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 48
  store i32 %175, ptr %176, align 4, !tbaa !286
  %177 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 50
  %178 = load i32, ptr %177, align 4, !tbaa !301
  %179 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 50
  store i32 %178, ptr %179, align 4, !tbaa !301
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 51
  %183 = getelementptr inbounds %struct.storable_picture, ptr %131, i64 0, i32 51
  %184 = load <4 x i32>, ptr %182, align 8, !tbaa !167
  store <4 x i32> %184, ptr %183, align 8, !tbaa !167
  br label %185

185:                                              ; preds = %181, %169
  %186 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 42
  store ptr %131, ptr %186, align 8, !tbaa !59
  %187 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 42
  store ptr %131, ptr %187, align 8, !tbaa !59
  %188 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 41
  store ptr %127, ptr %188, align 8, !tbaa !58
  %189 = getelementptr inbounds %struct.storable_picture, ptr %123, i64 0, i32 40
  store ptr %123, ptr %189, align 8, !tbaa !55
  %190 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 40
  store ptr %123, ptr %190, align 8, !tbaa !55
  %191 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 41
  store ptr %127, ptr %191, align 8, !tbaa !58
  %192 = load i32, ptr %143, align 4, !tbaa !94
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 11
  %196 = load i32, ptr %195, align 4, !tbaa !94
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194, %185
  tail call void @pad_dec_picture(ptr noundef %0, ptr noundef nonnull %131) #23
  br label %199

199:                                              ; preds = %198, %194
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_ref_pic_list_reordering_buffer(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !302
  switch i32 %4, label %5 [
    i32 2, label %29
    i32 4, label %29
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !167
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #25
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  store ptr %10, ptr %11, align 8, !tbaa !45
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.32) #23
  br label %14

14:                                               ; preds = %13, %5
  %15 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #25
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  store ptr %15, ptr %16, align 8, !tbaa !45
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.33) #23
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #25
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  store ptr %20, ptr %21, align 8, !tbaa !45
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @no_mem_exit(ptr noundef nonnull @.str.34) #23
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #25
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  store ptr %25, ptr %26, align 8, !tbaa !45
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  tail call void @no_mem_exit(ptr noundef nonnull @.str.35) #23
  br label %34

29:                                               ; preds = %1, %1
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  store ptr null, ptr %30, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  store ptr null, ptr %31, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  store ptr null, ptr %32, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  store ptr null, ptr %33, align 8, !tbaa !45
  br label %34

34:                                               ; preds = %24, %28, %29
  %35 = load i32, ptr %3, align 8, !tbaa !302
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !167
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #25
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !45
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  tail call void @no_mem_exit(ptr noundef nonnull @.str.36) #23
  br label %46

46:                                               ; preds = %45, %37
  %47 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #25
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  store ptr %47, ptr %48, align 8, !tbaa !45
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.37) #23
  br label %51

51:                                               ; preds = %50, %46
  %52 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #25
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  store ptr %52, ptr %53, align 8, !tbaa !45
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @no_mem_exit(ptr noundef nonnull @.str.38) #23
  br label %56

56:                                               ; preds = %55, %51
  %57 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 4) #25
  %58 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  store ptr %57, ptr %58, align 8, !tbaa !45
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  tail call void @no_mem_exit(ptr noundef nonnull @.str.39) #23
  br label %66

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  store ptr null, ptr %62, align 8, !tbaa !45
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  store ptr null, ptr %63, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  store ptr null, ptr %64, align 8, !tbaa !45
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  store ptr null, ptr %65, align 8, !tbaa !45
  br label %66

66:                                               ; preds = %56, %60, %61
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_ref_pic_list_reordering_buffer(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #23
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #23
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #23
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %2, align 8, !tbaa !45
  store ptr null, ptr %7, align 8, !tbaa !45
  store ptr null, ptr %12, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #23
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #23
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #23
  br label %31

31:                                               ; preds = %30, %26
  store ptr null, ptr %17, align 8, !tbaa !45
  store ptr null, ptr %22, align 8, !tbaa !45
  store ptr null, ptr %27, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %33) #23
  br label %36

36:                                               ; preds = %35, %31
  store ptr null, ptr %32, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @free(ptr noundef nonnull %38) #23
  br label %41

41:                                               ; preds = %40, %36
  store ptr null, ptr %37, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fill_frame_num_gap(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %7 = load <2 x i32>, ptr %5, align 8, !tbaa !167
  store i32 0, ptr %6, align 4, !tbaa !167
  store i32 0, ptr %5, align 8, !tbaa !167
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  %10 = load i32, ptr %9, align 8, !tbaa !303
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %13 = load i32, ptr %12, align 8, !tbaa !225
  %14 = urem i32 %11, %13
  %15 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %16 = load i32, ptr %15, align 4, !tbaa !145
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %61, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %23 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 66
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %26 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %27 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %28 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 5
  br label %29

29:                                               ; preds = %18, %50
  %30 = phi i32 [ %14, %18 ], [ %59, %50 ]
  %31 = load i32, ptr %19, align 4, !tbaa !50
  %32 = load i32, ptr %20, align 8, !tbaa !51
  %33 = load i32, ptr %21, align 4, !tbaa !52
  %34 = load i32, ptr %22, align 8, !tbaa !53
  %35 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34) #24
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 24
  store i32 1, ptr %36, align 8, !tbaa !109
  %37 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 7
  store i32 %30, ptr %37, align 4, !tbaa !146
  %38 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 5
  store i32 %30, ptr %38, align 4, !tbaa !93
  %39 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 13
  store i32 1, ptr %39, align 4, !tbaa !95
  %40 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 12
  store i32 1, ptr %40, align 8, !tbaa !96
  %41 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  store i32 1, ptr %41, align 4, !tbaa !94
  %42 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 47
  store i32 0, ptr %42, align 8, !tbaa !234
  %43 = load i32, ptr %23, align 8, !tbaa !158
  %44 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 64
  store i32 %43, ptr %44, align 8, !tbaa !98
  store i32 %30, ptr %15, align 4, !tbaa !145
  %45 = load i32, ptr %24, align 4, !tbaa !304
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load ptr, ptr %25, align 8, !tbaa !243
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  tail call void @decode_poc(ptr noundef nonnull %0, ptr noundef %49) #23
  br label %50

50:                                               ; preds = %47, %29
  %51 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 2
  %52 = load <2 x i32>, ptr %26, align 4, !tbaa !167
  store <2 x i32> %52, ptr %51, align 8, !tbaa !167
  %53 = load i32, ptr %27, align 4, !tbaa !181
  %54 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 4
  store i32 %53, ptr %54, align 8, !tbaa !285
  %55 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 1
  store i32 %53, ptr %55, align 4, !tbaa !111
  %56 = load ptr, ptr %28, align 8, !tbaa !141
  tail call void @store_picture_in_dpb(ptr noundef %56, ptr noundef nonnull %35) #24
  store i32 %30, ptr %9, align 8, !tbaa !303
  %57 = add nsw i32 %30, 1
  %58 = load i32, ptr %12, align 8, !tbaa !225
  %59 = srem i32 %57, %58
  %60 = icmp eq i32 %16, %59
  br i1 %60, label %61, label %29, !llvm.loop !305

61:                                               ; preds = %50, %2
  store <2 x i32> %7, ptr %5, align 8, !tbaa !167
  store i32 %16, ptr %15, align 4, !tbaa !145
  ret void
}

; Function Attrs: optsize
declare void @decode_poc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_colocated(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !138
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  %5 = load i32, ptr %4, align 4, !tbaa !306
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %75

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !307
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %75

11:                                               ; preds = %7
  %12 = shl nsw i32 %9, 2
  %13 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %14 = zext nneg i32 %12 to i64
  br label %15

15:                                               ; preds = %11, %72
  %16 = phi i64 [ 0, %11 ], [ %73, %72 ]
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !131
  %19 = icmp sgt i8 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %1, i64 %16
  %22 = or disjoint i64 %16, 1
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.storable_picture, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %21, align 8, !tbaa !45
  %28 = trunc i64 %16 to i32
  br label %29

29:                                               ; preds = %20, %65
  %30 = phi i64 [ 0, %20 ], [ %68, %65 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !308
  %32 = load ptr, ptr %21, align 8, !tbaa !45
  %33 = getelementptr inbounds ptr, ptr %32, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !111
  switch i32 %28, label %41 [
    i32 0, label %37
    i32 2, label %39
  ]

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.storable_picture, ptr %31, i64 0, i32 1
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.storable_picture, ptr %31, i64 0, i32 2
  br label %43

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.storable_picture, ptr %31, i64 0, i32 3
  br label %43

43:                                               ; preds = %39, %41, %37
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ], [ %38, %37 ]
  %45 = load i32, ptr %26, align 4, !tbaa !111
  %46 = getelementptr inbounds ptr, ptr %27, i64 %30
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !111
  %50 = sub nsw i32 %45, %49
  %51 = tail call fastcc i32 @iClip3(i32 noundef -128, i32 noundef 127, i32 noundef %50) #24
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %43
  %54 = load i32, ptr %44, align 4, !tbaa !167
  %55 = sub nsw i32 %54, %36
  %56 = tail call fastcc i32 @iClip3(i32 noundef -128, i32 noundef 127, i32 noundef %55) #24
  %57 = sdiv i32 %51, 2
  %58 = tail call fastcc i32 @iabs(i32 noundef %57) #24
  %59 = add nsw i32 %58, 16384
  %60 = sdiv i32 %59, %51
  %61 = mul nsw i32 %60, %56
  %62 = add nsw i32 %61, 32
  %63 = ashr i32 %62, 6
  %64 = tail call fastcc i32 @iClip3(i32 noundef -1024, i32 noundef 1023, i32 noundef %63) #24
  br label %65

65:                                               ; preds = %43, %53
  %66 = phi i32 [ %64, %53 ], [ 9999, %43 ]
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 60, i64 %16, i64 %30
  store i32 %66, ptr %67, align 4
  %68 = add nuw nsw i64 %30, 1
  %69 = load i8, ptr %17, align 1, !tbaa !131
  %70 = sext i8 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %29, label %72, !llvm.loop !309

72:                                               ; preds = %65, %15
  %73 = add nuw nsw i64 %16, 2
  %74 = icmp ult i64 %16, %14
  br i1 %74, label %15, label %75, !llvm.loop !310

75:                                               ; preds = %72, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @imax(i32 noundef %2, i32 noundef %0) #24
  %5 = tail call fastcc i32 @imin(i32 noundef %4, i32 noundef %1) #24
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @is_view_id_in_ref_view_list(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #20 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = zext nneg i32 %2 to i64
  %8 = load i32, ptr %1, align 4, !tbaa !167
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5, %14
  %11 = phi i64 [ %12, %14 ], [ 0, %5 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp eq i64 %12, %7
  br i1 %13, label %18, label %14, !llvm.loop !311

14:                                               ; preds = %10
  %15 = getelementptr inbounds i32, ptr %1, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !167
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %18, label %10, !llvm.loop !311

18:                                               ; preds = %14, %10
  %19 = icmp ult i64 %12, %6
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %5, %18, %3
  %22 = phi i32 [ 0, %3 ], [ 1, %5 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize allocsize(0,1) }
attributes #26 = { nounwind optsize allocsize(1) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 3128}
!7 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !9, i64 44, !9, i64 92, !9, i64 476, !9, i64 2012, !9, i64 2036, !8, i64 2060, !8, i64 2064, !8, i64 2068, !8, i64 2072, !8, i64 2076, !8, i64 2080, !8, i64 2084, !8, i64 2088, !8, i64 2092, !9, i64 2096, !8, i64 3120, !8, i64 3124, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !8, i64 3152, !8, i64 3156, !8, i64 3160, !8, i64 3164, !8, i64 3168, !11, i64 3172, !8, i64 4120, !8, i64 4124}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 10, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !13, i64 80, !8, i64 492, !13, i64 496, !8, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944}
!12 = !{!"short", !9, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !9, i64 140, !9, i64 268, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408}
!14 = !{!7, !8, i64 3132}
!15 = !{!7, !8, i64 3136}
!16 = !{!7, !8, i64 28}
!17 = !{!7, !8, i64 4}
!18 = !{!7, !8, i64 20}
!19 = !{!7, !8, i64 3168}
!20 = !{!7, !8, i64 4088}
!21 = !{!7, !8, i64 4116}
!22 = !{!23, !8, i64 52}
!23 = !{!"decoded_picture_buffer", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !8, i64 4160, !8, i64 4164, !24, i64 4168}
!24 = !{!"any pointer", !9, i64 0}
!25 = !{!23, !8, i64 48}
!26 = !{!23, !8, i64 4164}
!27 = !{!28, !24, i64 16}
!28 = !{!"video_par", !24, i64 0, !24, i64 8, !24, i64 16, !9, i64 24, !9, i64 132120, !24, i64 699416, !9, i64 699424, !8, i64 848672, !8, i64 848676, !8, i64 848680, !8, i64 848684, !24, i64 848688, !24, i64 848696, !24, i64 848704, !8, i64 848712, !8, i64 848716, !8, i64 848720, !8, i64 848724, !8, i64 848728, !24, i64 848736, !24, i64 848744, !9, i64 848752, !8, i64 848776, !8, i64 848780, !8, i64 848784, !8, i64 848788, !8, i64 848792, !24, i64 848800, !9, i64 848808, !24, i64 848832, !24, i64 848840, !9, i64 848848, !8, i64 848872, !8, i64 848876, !24, i64 848880, !24, i64 848888, !9, i64 848896, !8, i64 848920, !24, i64 848928, !24, i64 848936, !8, i64 848944, !8, i64 848948, !8, i64 848952, !8, i64 848956, !8, i64 848960, !8, i64 848964, !8, i64 848968, !8, i64 848972, !8, i64 848976, !8, i64 848980, !8, i64 848984, !8, i64 848988, !8, i64 848992, !8, i64 848996, !8, i64 849000, !8, i64 849004, !8, i64 849008, !8, i64 849012, !8, i64 849016, !8, i64 849020, !8, i64 849024, !8, i64 849028, !8, i64 849032, !8, i64 849036, !12, i64 849040, !12, i64 849042, !9, i64 849044, !8, i64 849052, !8, i64 849056, !9, i64 849060, !9, i64 849072, !8, i64 849084, !8, i64 849088, !8, i64 849092, !8, i64 849096, !8, i64 849100, !8, i64 849104, !8, i64 849108, !8, i64 849112, !8, i64 849116, !8, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !8, i64 849196, !8, i64 849200, !8, i64 849204, !8, i64 849208, !8, i64 849212, !8, i64 849216, !8, i64 849220, !8, i64 849224, !8, i64 849228, !8, i64 849232, !8, i64 849236, !8, i64 849240, !8, i64 849244, !8, i64 849248, !8, i64 849252, !8, i64 849256, !8, i64 849260, !8, i64 849264, !8, i64 849268, !8, i64 849272, !8, i64 849276, !8, i64 849280, !8, i64 849284, !24, i64 849288, !24, i64 849296, !29, i64 849304, !29, i64 849624, !29, i64 849944, !29, i64 850264, !29, i64 850584, !29, i64 850904, !29, i64 851224, !29, i64 851544, !8, i64 851864, !8, i64 851868, !8, i64 851872, !32, i64 851880, !8, i64 851888, !9, i64 851892, !8, i64 855988, !8, i64 855992, !8, i64 855996, !8, i64 856000, !8, i64 856004, !8, i64 856008, !8, i64 856012, !24, i64 856016, !24, i64 856024, !24, i64 856032, !24, i64 856040, !24, i64 856048, !9, i64 856056, !24, i64 856456, !9, i64 856464, !24, i64 856488, !24, i64 856496, !24, i64 856504, !8, i64 856512, !24, i64 856520, !9, i64 856528, !24, i64 856608, !24, i64 856616, !24, i64 856624, !24, i64 856632, !8, i64 856640, !8, i64 856644, !8, i64 856648, !24, i64 856656, !24, i64 856664, !9, i64 856672, !9, i64 856688, !24, i64 856704, !24, i64 856712, !8, i64 856720, !24, i64 856728, !24, i64 856736, !24, i64 856744, !24, i64 856752, !24, i64 856760, !24, i64 856768, !24, i64 856776, !24, i64 856784, !24, i64 856792, !24, i64 856800, !24, i64 856808, !24, i64 856816, !8, i64 856824, !24, i64 856832, !8, i64 856840, !8, i64 856844, !8, i64 856848, !8, i64 856852, !8, i64 856856, !8, i64 856860, !8, i64 856864, !24, i64 856872}
!29 = !{!"image_data", !30, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!30 = !{!"frame_format", !8, i64 0, !8, i64 4, !31, i64 8, !9, i64 16, !9, i64 28, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !8, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !8, i64 124, !8, i64 128}
!31 = !{!"double", !9, i64 0}
!32 = !{!"long", !9, i64 0}
!33 = !{!23, !24, i64 0}
!34 = !{!23, !8, i64 4160}
!35 = !{!28, !8, i64 849084}
!36 = !{i32 0, i32 -1}
!37 = !{!23, !8, i64 40}
!38 = !{!7, !8, i64 3120}
!39 = !{!7, !8, i64 4124}
!40 = !{!23, !8, i64 44}
!41 = !{!23, !24, i64 4168}
!42 = !{!23, !24, i64 16}
!43 = !{!23, !24, i64 24}
!44 = !{!23, !24, i64 32}
!45 = !{!24, !24, i64 0}
!46 = !{!47, !8, i64 72}
!47 = !{!"frame_store", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !24, i64 48, !24, i64 56, !24, i64 64, !8, i64 72, !9, i64 76, !9, i64 84}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!28, !8, i64 848780}
!51 = !{!28, !8, i64 848784}
!52 = !{!28, !8, i64 848788}
!53 = !{!28, !8, i64 848792}
!54 = !{!28, !24, i64 856488}
!55 = !{!56, !24, i64 224}
!56 = !{!"storable_picture", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !9, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !12, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !24, i64 128, !24, i64 136, !24, i64 144, !24, i64 152, !9, i64 160, !57, i64 184, !9, i64 192, !24, i64 216, !24, i64 224, !24, i64 232, !24, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !9, i64 300, !8, i64 308, !24, i64 312, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !24, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !24, i64 376, !8, i64 384, !8, i64 388, !9, i64 392, !9, i64 400}
!57 = !{!"pic_motion_params_old", !24, i64 0}
!58 = !{!56, !24, i64 232}
!59 = !{!56, !24, i64 240}
!60 = !{!23, !8, i64 56}
!61 = !{!23, !8, i64 60}
!62 = !{!28, !8, i64 849028}
!63 = !{!28, !8, i64 849240}
!64 = !{!28, !24, i64 856048}
!65 = distinct !{!65, !49}
!66 = !{!67, !8, i64 4268}
!67 = !{!"", !7, i64 0, !8, i64 4128, !8, i64 4132, !24, i64 4136, !24, i64 4144, !24, i64 4152, !24, i64 4160, !24, i64 4168, !24, i64 4176, !24, i64 4184, !24, i64 4192, !24, i64 4200, !8, i64 4208, !24, i64 4216, !24, i64 4224, !24, i64 4232, !24, i64 4240, !24, i64 4248, !24, i64 4256, !8, i64 4264, !8, i64 4268, !68, i64 4272}
!68 = !{!"mvcvui_tag", !8, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !9, i64 96, !9, i64 97, !9, i64 98, !9, i64 100, !9, i64 228, !9, i64 356, !9, i64 388, !9, i64 389, !9, i64 390, !9, i64 391}
!69 = !{!67, !8, i64 32}
!70 = !{!67, !8, i64 4124}
!71 = !{!67, !8, i64 3168}
!72 = !{!67, !8, i64 4088}
!73 = !{!67, !8, i64 4116}
!74 = !{!7, !8, i64 0}
!75 = distinct !{!75, !49}
!76 = !{!56, !8, i64 108}
!77 = !{!28, !8, i64 856844}
!78 = !{!28, !8, i64 856840}
!79 = !{!56, !8, i64 356}
!80 = !{!56, !8, i64 364}
!81 = !{!7, !8, i64 36}
!82 = !{!28, !8, i64 856852}
!83 = !{!28, !8, i64 856848}
!84 = !{!56, !8, i64 360}
!85 = !{!56, !8, i64 368}
!86 = !{!56, !8, i64 112}
!87 = !{!56, !8, i64 116}
!88 = !{!56, !8, i64 120}
!89 = !{!56, !8, i64 124}
!90 = !{!28, !8, i64 849280}
!91 = !{!56, !8, i64 56}
!92 = distinct !{!92, !49}
!93 = !{!56, !8, i64 20}
!94 = !{!56, !8, i64 44}
!95 = !{!56, !8, i64 52}
!96 = !{!56, !8, i64 48}
!97 = !{!56, !12, i64 60}
!98 = !{!56, !8, i64 344}
!99 = !{!56, !8, i64 0}
!100 = !{!56, !8, i64 64}
!101 = !{!56, !8, i64 68}
!102 = !{!56, !8, i64 72}
!103 = !{!56, !8, i64 76}
!104 = !{!56, !8, i64 80}
!105 = !{!56, !8, i64 84}
!106 = !{!56, !8, i64 88}
!107 = !{!56, !8, i64 92}
!108 = !{!56, !24, i64 312}
!109 = !{!56, !8, i64 96}
!110 = !{!56, !8, i64 100}
!111 = !{!56, !8, i64 4}
!112 = !{!56, !8, i64 12}
!113 = !{!56, !8, i64 8}
!114 = !{!56, !8, i64 324}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = !{!47, !24, i64 48}
!118 = !{!47, !24, i64 56}
!119 = !{!47, !24, i64 64}
!120 = !{!56, !24, i64 152}
!121 = distinct !{!121, !49}
!122 = !{!56, !24, i64 128}
!123 = !{!56, !24, i64 136}
!124 = !{!56, !24, i64 216}
!125 = !{!56, !24, i64 336}
!126 = distinct !{!126, !49}
!127 = !{!57, !24, i64 0}
!128 = !{!56, !9, i64 40}
!129 = !{!47, !8, i64 0}
!130 = !{ptr @is_long_ref, ptr @is_short_ref}
!131 = !{!9, !9, i64 0}
!132 = distinct !{!132, !49}
!133 = distinct !{!133, !49}
!134 = distinct !{!134, !49}
!135 = distinct !{!135, !49}
!136 = distinct !{!136, !49}
!137 = distinct !{!137, !49}
!138 = !{!139, !24, i64 0}
!139 = !{!"slice", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !8, i64 32, !24, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !12, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !9, i64 136, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !9, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !24, i64 248, !9, i64 256, !9, i64 264, !24, i64 312, !24, i64 320, !24, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !8, i64 1176, !8, i64 1180, !8, i64 1184, !140, i64 1188, !12, i64 1220, !12, i64 1222, !12, i64 1224, !8, i64 1228, !8, i64 1232, !8, i64 1236, !8, i64 1240, !24, i64 1248, !24, i64 1256, !24, i64 1264, !24, i64 1272, !24, i64 1280, !9, i64 1288, !24, i64 1352, !24, i64 1360, !24, i64 1368, !24, i64 1376, !24, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !8, i64 13264, !8, i64 13268, !12, i64 13272, !12, i64 13274, !12, i64 13276, !12, i64 13278, !24, i64 13280, !24, i64 13288, !24, i64 13296, !12, i64 13304, !12, i64 13306, !8, i64 13308, !8, i64 13312, !24, i64 13320, !24, i64 13328, !8, i64 13336, !9, i64 13340, !24, i64 13408, !24, i64 13416, !24, i64 13424, !24, i64 13432, !24, i64 13440, !24, i64 13448, !24, i64 13456, !24, i64 13464, !24, i64 13472, !24, i64 13480, !24, i64 13488, !24, i64 13496, !8, i64 13504, !24, i64 13512, !24, i64 13520, !24, i64 13528, !24, i64 13536, !24, i64 13544, !9, i64 13552}
!140 = !{!"nalunitheadermvcext_tag", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!141 = !{!139, !24, i64 40}
!142 = !{!7, !8, i64 2068}
!143 = !{!139, !8, i64 184}
!144 = !{!47, !8, i64 20}
!145 = !{!139, !8, i64 172}
!146 = !{!56, !8, i64 28}
!147 = distinct !{!147, !49}
!148 = !{!56, !8, i64 36}
!149 = !{!56, !8, i64 32}
!150 = distinct !{!150, !49}
!151 = !{!47, !8, i64 4}
!152 = distinct !{!152, !49}
!153 = !{!47, !8, i64 8}
!154 = distinct !{!154, !49}
!155 = !{!139, !8, i64 13308}
!156 = !{!139, !8, i64 13312}
!157 = !{!139, !8, i64 104}
!158 = !{!139, !8, i64 1176}
!159 = !{!139, !8, i64 1184}
!160 = distinct !{!160, !49}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !49}
!163 = distinct !{!163, !49}
!164 = !{!139, !8, i64 32}
!165 = !{!139, !24, i64 13320}
!166 = distinct !{!166, !49}
!167 = !{!8, !8, i64 0}
!168 = distinct !{!168, !49}
!169 = distinct !{!169, !49}
!170 = !{!47, !8, i64 28}
!171 = !{!47, !8, i64 32}
!172 = !{!28, !24, i64 699416}
!173 = !{!67, !24, i64 4160}
!174 = !{!67, !24, i64 4144}
!175 = !{!67, !24, i64 4192}
!176 = !{!67, !24, i64 4176}
!177 = !{i32 0, i32 2}
!178 = distinct !{!178, !49}
!179 = distinct !{!179, !49}
!180 = distinct !{!180, !49}
!181 = !{!139, !8, i64 76}
!182 = distinct !{!182, !49}
!183 = distinct !{!183, !49}
!184 = distinct !{!184, !49}
!185 = distinct !{!185, !49}
!186 = distinct !{!186, !49}
!187 = !{!47, !8, i64 40}
!188 = distinct !{!188, !49}
!189 = distinct !{!189, !49}
!190 = distinct !{!190, !49}
!191 = distinct !{!191, !49}
!192 = distinct !{!192, !49}
!193 = !{!139, !24, i64 13328}
!194 = distinct !{!194, !49}
!195 = distinct !{!195, !49}
!196 = distinct !{!196, !49}
!197 = distinct !{!197, !49}
!198 = !{!139, !8, i64 164}
!199 = distinct !{!199, !49}
!200 = distinct !{!200, !49}
!201 = distinct !{!201, !49}
!202 = distinct !{!202, !49}
!203 = distinct !{!203, !49}
!204 = distinct !{!204, !49}
!205 = distinct !{!205, !49}
!206 = distinct !{!206, !49}
!207 = distinct !{!207, !49}
!208 = distinct !{!208, !49}
!209 = distinct !{!209, !49}
!210 = distinct !{!210, !49}
!211 = distinct !{!211, !49}
!212 = distinct !{!212, !49}
!213 = distinct !{!213, !49}
!214 = distinct !{!214, !49}
!215 = distinct !{!215, !49}
!216 = distinct !{!216, !49}
!217 = distinct !{!217, !49}
!218 = distinct !{!218, !49}
!219 = distinct !{!219, !49}
!220 = distinct !{!220, !49}
!221 = distinct !{!221, !49}
!222 = !{!28, !8, i64 848876}
!223 = distinct !{!223, !49}
!224 = distinct !{!224, !49}
!225 = !{!28, !8, i64 848992}
!226 = distinct !{!226, !49}
!227 = distinct !{!227, !49}
!228 = distinct !{!228, !49}
!229 = distinct !{!229, !49}
!230 = distinct !{!230, !49}
!231 = distinct !{!231, !49}
!232 = !{!28, !8, i64 849032}
!233 = !{!56, !8, i64 252}
!234 = !{!56, !8, i64 264}
!235 = distinct !{!235, !49}
!236 = !{!47, !8, i64 12}
!237 = !{!47, !8, i64 44}
!238 = distinct !{!238, !49}
!239 = !{!28, !8, i64 851888}
!240 = distinct !{!240, !49}
!241 = distinct !{!241, !49}
!242 = !{!28, !8, i64 849244}
!243 = !{!28, !24, i64 848736}
!244 = !{!56, !8, i64 256}
!245 = distinct !{!245, !49}
!246 = distinct !{!246, !49}
!247 = distinct !{!247, !49}
!248 = !{!56, !8, i64 260}
!249 = !{!250, !8, i64 0}
!250 = !{!"DecRefPicMarking_s", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !24, i64 24}
!251 = !{!250, !24, i64 24}
!252 = !{!250, !8, i64 4}
!253 = !{!250, !8, i64 8}
!254 = !{!250, !8, i64 12}
!255 = !{!250, !8, i64 16}
!256 = distinct !{!256, !49}
!257 = !{!28, !24, i64 0}
!258 = !{!56, !8, i64 348}
!259 = !{!56, !8, i64 352}
!260 = !{!47, !8, i64 36}
!261 = !{!28, !8, i64 855988}
!262 = !{!263, !8, i64 784}
!263 = !{!"inp_par", !9, i64 0, !9, i64 255, !9, i64 510, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788, !30, i64 792, !30, i64 928, !8, i64 1064, !8, i64 1068, !264, i64 1072, !264, i64 2040, !264, i64 3008, !8, i64 3976, !8, i64 3980, !8, i64 3984, !8, i64 3988, !8, i64 3992, !8, i64 3996, !8, i64 4000, !8, i64 4004, !8, i64 4008, !8, i64 4012}
!264 = !{!"video_data_file", !9, i64 0, !9, i64 255, !9, i64 510, !8, i64 768, !8, i64 772, !30, i64 776, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944, !8, i64 948, !8, i64 952, !24, i64 960}
!265 = distinct !{!265, !49}
!266 = distinct !{!266, !49}
!267 = distinct !{!267, !49}
!268 = distinct !{!268, !49}
!269 = distinct !{!269, !49}
!270 = distinct !{!270, !49}
!271 = distinct !{!271, !49}
!272 = distinct !{!272, !49}
!273 = distinct !{!273, !49}
!274 = distinct !{!274, !49}
!275 = distinct !{!275, !49}
!276 = distinct !{!276, !49}
!277 = distinct !{!277, !49}
!278 = distinct !{!278, !49}
!279 = distinct !{!279, !49}
!280 = !{!56, !8, i64 272}
!281 = distinct !{!281, !49}
!282 = distinct !{!282, !49}
!283 = distinct !{!283, !49}
!284 = distinct !{!284, !49}
!285 = !{!56, !8, i64 16}
!286 = !{!56, !8, i64 268}
!287 = !{!56, !8, i64 388}
!288 = distinct !{!288, !49}
!289 = distinct !{!289, !49}
!290 = !{!56, !24, i64 184}
!291 = distinct !{!291, !49}
!292 = distinct !{!292, !49}
!293 = distinct !{!293, !49}
!294 = distinct !{!294, !49}
!295 = distinct !{!295, !49}
!296 = distinct !{!296, !49}
!297 = distinct !{!297, !49}
!298 = distinct !{!298, !49}
!299 = distinct !{!299, !49}
!300 = distinct !{!300, !49}
!301 = !{!56, !8, i64 276}
!302 = !{!28, !8, i64 848776}
!303 = !{!28, !8, i64 848944}
!304 = !{!7, !8, i64 2072}
!305 = distinct !{!305, !49}
!306 = !{!139, !8, i64 132}
!307 = !{!139, !8, i64 128}
!308 = !{!28, !24, i64 856456}
!309 = distinct !{!309, !49}
!310 = distinct !{!310, !49}
!311 = distinct !{!311, !49}

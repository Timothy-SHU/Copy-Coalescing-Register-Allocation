; ModuleID = 'ldecod_src/header.c'
source_filename = "ldecod_src/header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, ptr }

@p_Dec = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SH: colour_plane_id\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"SH: num_ref_idx_override_flag\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"slice_qp_delta makes slice_qp_y out of range\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"slice_qs_delta makes slice_qs_y out of range\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"SH: ref_pic_list_modification_flag_l0\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l0\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l0\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l1\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l1\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l0\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l1\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"SH: luma_log2_weight_denom\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"SH: chroma_log2_weight_denom\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l0\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l0\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l0\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l1\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l1\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l1\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"frame_num not equal to zero in IDR picture\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"toppoc                                %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"bottompoc                             %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"frame_num                             %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"field_pic_flag                        %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"bottom_field_flag                     %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"log2_max_frame_num_minus4             %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"log2_max_pic_order_cnt_lsb_minus4     %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"pic_order_cnt_type                    %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"num_ref_frames_in_pic_order_cnt_cycle %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"delta_pic_order_always_zero_flag      %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"offset_for_non_ref_pic                %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"offset_for_top_to_bottom_field        %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[0]               %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[1]               %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [64 x i8] c"bottom_field_pic_order_in_frame_present_flag                %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[0]                %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[1]                %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"idr_flag                              %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"MaxFrameNum                           %d\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c"\0APOC locals...\00", align 1
@str.85 = private unnamed_addr constant [8 x i8] c"POC SPS\00", align 1
@str.86 = private unnamed_addr constant [20 x i8] c"POC in SLice Header\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @CeilLog2(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ %2, %1 ]
  %7 = lshr i32 %6, 1
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ult i32 %6, 2
  br i1 %9, label %10, label %4, !llvm.loop !35

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @CeilLog2_sf(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ %2, %1 ]
  %7 = lshr i32 %6, 1
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ult i32 %6, 2
  br i1 %9, label %10, label %4, !llvm.loop !37

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FirstPartOfSliceHeader(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 %7, ptr %9, align 8, !tbaa !53
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %5) #11
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  store i32 %10, ptr %11, align 4, !tbaa !56
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %5) #11
  %13 = icmp sgt i32 %12, 4
  %14 = add nsw i32 %12, -5
  %15 = select i1 %13, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  store i32 %15, ptr %16, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  store i32 %15, ptr %17, align 8, !tbaa !58
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %5) #11
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 73
  store i32 %18, ptr %19, align 4, !tbaa !63
  %20 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 105
  %21 = load i32, ptr %20, align 8, !tbaa !64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #11
  br label %25

25:                                               ; preds = %1, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %1 ]
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  store i32 %26, ptr %27, align 8
  %28 = load ptr, ptr @p_Dec, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.decoder_params, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !53
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RestOfSliceHeader(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = add i32 %11, 4
  %13 = tail call i32 @u_v(i32 noundef %12, ptr noundef nonnull @.str.4, ptr noundef %9) #11
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  store i32 %13, ptr %14, align 4, !tbaa !71
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 40
  store i32 %13, ptr %19, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 92
  store i32 0, ptr %20, align 4, !tbaa !74
  br label %21

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 30
  %23 = load i32, ptr %22, align 4, !tbaa !75
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 0, ptr %26, align 4, !tbaa !76
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  store i32 0, ptr %27, align 8, !tbaa !77
  br label %42

28:                                               ; preds = %21
  %29 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %9) #11
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  store i32 %29, ptr %30, align 8, !tbaa !77
  %31 = icmp eq i32 %29, 0
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  br i1 %31, label %40, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %9) #11
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %32, align 4, !tbaa !78
  %36 = and i32 %34, 255
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 %38, ptr %39, align 4, !tbaa !76
  br label %42

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 0, ptr %41, align 4, !tbaa !76
  store i8 0, ptr %32, align 4, !tbaa !78
  br label %42

42:                                               ; preds = %33, %40, %25
  %43 = phi i32 [ %38, %33 ], [ 0, %40 ], [ 0, %25 ]
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  store i32 %43, ptr %44, align 8, !tbaa !79
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 31
  %46 = load i32, ptr %45, align 4, !tbaa !80
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %50 = load i32, ptr %49, align 8, !tbaa !77
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i1 [ false, %42 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  store i32 %54, ptr %55, align 8, !tbaa !81
  %56 = load i32, ptr %15, align 8, !tbaa !72
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %9) #11
  %60 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 7
  store i32 %59, ptr %60, align 4, !tbaa !82
  br label %61

61:                                               ; preds = %58, %52
  %62 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 19
  %63 = load i32, ptr %62, align 4, !tbaa !83
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 20
  %67 = load i32, ptr %66, align 4, !tbaa !84
  %68 = add i32 %67, 4
  %69 = tail call i32 @u_v(i32 noundef %68, ptr noundef nonnull @.str.8, ptr noundef %9) #11
  %70 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 14
  store i32 %69, ptr %70, align 8, !tbaa !85
  %71 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !86
  %73 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %72, i64 0, i32 11
  %74 = load i32, ptr %73, align 8, !tbaa !87
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %78 = load i32, ptr %77, align 8, !tbaa !77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call i32 @se_v(ptr noundef nonnull @.str.9, ptr noundef %9) #11
  br label %82

82:                                               ; preds = %65, %76, %80
  %83 = phi i32 [ %81, %80 ], [ 0, %76 ], [ 0, %65 ]
  %84 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 15
  store i32 %83, ptr %84, align 4, !tbaa !89
  %85 = load i32, ptr %62, align 4, !tbaa !83
  br label %86

86:                                               ; preds = %82, %61
  %87 = phi i32 [ %85, %82 ], [ %63, %61 ]
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 21
  %91 = load i32, ptr %90, align 4, !tbaa !90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = tail call i32 @se_v(ptr noundef nonnull @.str.10, ptr noundef %9) #11
  %95 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  store i32 %94, ptr %95, align 8, !tbaa !91
  %96 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !86
  %98 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %97, i64 0, i32 11
  %99 = load i32, ptr %98, align 8, !tbaa !87
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %103 = load i32, ptr %102, align 8, !tbaa !77
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = tail call i32 @se_v(ptr noundef nonnull @.str.11, ptr noundef %9) #11
  br label %109

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  store i32 0, ptr %108, align 8, !tbaa !91
  br label %109

109:                                              ; preds = %93, %101, %105, %107
  %110 = phi i32 [ 0, %107 ], [ %106, %105 ], [ 0, %101 ], [ 0, %93 ]
  %111 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16, i64 1
  store i32 %110, ptr %111, align 4, !tbaa !91
  br label %112

112:                                              ; preds = %109, %86
  %113 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !86
  %115 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %114, i64 0, i32 31
  %116 = load i32, ptr %115, align 8, !tbaa !92
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef %9) #11
  %120 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  store i32 %119, ptr %120, align 4, !tbaa !93
  br label %121

121:                                              ; preds = %118, %112
  %122 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %123 = load i32, ptr %122, align 4, !tbaa !57
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = tail call i32 @u_1(ptr noundef nonnull @.str.13, ptr noundef %9) #11
  %127 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  store i32 %126, ptr %127, align 4, !tbaa !94
  br label %128

128:                                              ; preds = %125, %121
  %129 = load ptr, ptr %113, align 8, !tbaa !86
  %130 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %129, i64 0, i32 21
  %131 = load i32, ptr %130, align 8, !tbaa !95
  %132 = add nsw i32 %131, 1
  %133 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  store i32 %132, ptr %133, align 8, !tbaa !91
  %134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %129, i64 0, i32 22
  %135 = load i32, ptr %134, align 4, !tbaa !96
  %136 = add nsw i32 %135, 1
  %137 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  store i32 %136, ptr %137, align 4, !tbaa !91
  %138 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %139 = load i32, ptr %138, align 8, !tbaa !58
  switch i32 %139, label %151 [
    i32 0, label %140
    i32 3, label %140
    i32 1, label %140
  ]

140:                                              ; preds = %128, %128, %128
  %141 = tail call i32 @u_1(ptr noundef nonnull @.str.14, ptr noundef %9) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = tail call i32 @ue_v(ptr noundef nonnull @.str.15, ptr noundef %9) #11
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %133, align 8, !tbaa !91
  %146 = load i32, ptr %138, align 8, !tbaa !58
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef %9) #11
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %137, align 4, !tbaa !91
  br label %151

151:                                              ; preds = %128, %140, %148, %143
  %152 = load i32, ptr %122, align 4, !tbaa !57
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  store i32 0, ptr %137, align 4, !tbaa !91
  br label %155

155:                                              ; preds = %154, %151
  %156 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !97
  %158 = icmp ult i32 %157, 2
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  tail call fastcc void @ref_pic_list_mvc_modification(ptr noundef nonnull %0) #12
  br label %161

160:                                              ; preds = %155
  tail call fastcc void @ref_pic_list_reordering(ptr noundef nonnull %0) #12
  br label %161

161:                                              ; preds = %160, %159
  %162 = load i32, ptr %122, align 4, !tbaa !57
  switch i32 %162, label %163 [
    i32 0, label %165
    i32 3, label %165
    i32 1, label %169
  ]

163:                                              ; preds = %161
  %164 = load ptr, ptr %113, align 8, !tbaa !86
  br label %174

165:                                              ; preds = %161, %161
  %166 = load ptr, ptr %113, align 8, !tbaa !86
  %167 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %166, i64 0, i32 23
  %168 = load i32, ptr %167, align 8, !tbaa !98
  br label %178

169:                                              ; preds = %161
  %170 = load ptr, ptr %113, align 8, !tbaa !86
  %171 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %170, i64 0, i32 24
  %172 = load i32, ptr %171, align 4, !tbaa !99
  %173 = icmp eq i32 %172, 1
  br label %174

174:                                              ; preds = %163, %169
  %175 = phi ptr [ %170, %169 ], [ %164, %163 ]
  %176 = phi i1 [ %173, %169 ], [ false, %163 ]
  %177 = zext i1 %176 to i32
  br label %178

178:                                              ; preds = %174, %165
  %179 = phi ptr [ %166, %165 ], [ %175, %174 ]
  %180 = phi i32 [ %168, %165 ], [ %177, %174 ]
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 96
  store i16 %181, ptr %182, align 8, !tbaa !100
  %183 = icmp eq i32 %162, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %179, i64 0, i32 24
  %186 = load i32, ptr %185, align 4, !tbaa !99
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %184, %178
  %189 = phi i1 [ false, %178 ], [ %187, %184 ]
  %190 = zext i1 %189 to i16
  %191 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 97
  store i16 %190, ptr %191, align 2, !tbaa !101
  %192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %179, i64 0, i32 23
  %193 = load i32, ptr %192, align 8, !tbaa !98
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %188
  %196 = load i32, ptr %138, align 8, !tbaa !58
  switch i32 %196, label %197 [
    i32 0, label %204
    i32 3, label %204
  ]

197:                                              ; preds = %195, %188
  %198 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %179, i64 0, i32 24
  %199 = load i32, ptr %198, align 4, !tbaa !99
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, ptr %138, align 8, !tbaa !58
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %195, %195, %201
  tail call fastcc void @pred_weight_table(ptr noundef nonnull %0) #12
  br label %205

205:                                              ; preds = %204, %201, %197
  %206 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %207 = load i32, ptr %206, align 8, !tbaa !102
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  tail call void @dec_ref_pic_marking(ptr noundef nonnull %2, ptr noundef %9, ptr noundef nonnull %0) #12
  br label %210

210:                                              ; preds = %209, %205
  %211 = load ptr, ptr %113, align 8, !tbaa !86
  %212 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %211, i64 0, i32 3
  %213 = load i32, ptr %212, align 4, !tbaa !103
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i32, ptr %138, align 8, !tbaa !58
  switch i32 %216, label %217 [
    i32 2, label %219
    i32 4, label %219
  ]

217:                                              ; preds = %215
  %218 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef %9) #11
  br label %219

219:                                              ; preds = %210, %215, %215, %217
  %220 = phi i32 [ %218, %217 ], [ 0, %215 ], [ 0, %215 ], [ 0, %210 ]
  %221 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 34
  store i32 %220, ptr %221, align 8, !tbaa !104
  %222 = tail call i32 @se_v(ptr noundef nonnull @.str.18, ptr noundef %9) #11
  %223 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 30
  store i32 %222, ptr %223, align 8, !tbaa !105
  %224 = load ptr, ptr %113, align 8, !tbaa !86
  %225 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %224, i64 0, i32 25
  %226 = load i32, ptr %225, align 8, !tbaa !106
  %227 = add i32 %222, 26
  %228 = add i32 %227, %226
  %229 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 29
  store i32 %228, ptr %229, align 4, !tbaa !107
  %230 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 67
  %231 = load i32, ptr %230, align 4, !tbaa !108
  %232 = sub nsw i32 0, %231
  %233 = icmp slt i32 %228, %232
  %234 = icmp sgt i32 %228, 51
  %235 = or i1 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %219
  tail call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #11
  br label %237

237:                                              ; preds = %219, %236
  %238 = load i32, ptr %138, align 8, !tbaa !58
  %239 = add i32 %238, -3
  %240 = icmp ult i32 %239, 2
  br i1 %240, label %241, label %257

241:                                              ; preds = %237
  %242 = icmp eq i32 %238, 3
  br i1 %242, label %243, label %246

243:                                              ; preds = %241
  %244 = tail call i32 @u_1(ptr noundef nonnull @.str.20, ptr noundef %9) #11
  %245 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 48
  store i32 %244, ptr %245, align 8, !tbaa !109
  br label %246

246:                                              ; preds = %243, %241
  %247 = tail call i32 @se_v(ptr noundef nonnull @.str.21, ptr noundef %9) #11
  %248 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 32
  store i32 %247, ptr %248, align 8, !tbaa !110
  %249 = load ptr, ptr %113, align 8, !tbaa !86
  %250 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %249, i64 0, i32 26
  %251 = load i32, ptr %250, align 4, !tbaa !111
  %252 = add i32 %247, 26
  %253 = add i32 %252, %251
  %254 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 31
  store i32 %253, ptr %254, align 4, !tbaa !112
  %255 = icmp ugt i32 %253, 51
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  tail call void @error(ptr noundef nonnull @.str.22, i32 noundef 500) #11
  br label %257

257:                                              ; preds = %237, %246, %256
  %258 = load ptr, ptr %5, align 8, !tbaa !66
  %259 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %258, i64 0, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !113
  %261 = icmp ugt i32 %260, 109
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %258, i64 0, i32 5
  %264 = load i32, ptr %263, align 4, !tbaa !114
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %268

266:                                              ; preds = %257
  %267 = icmp eq i32 %260, 44
  br i1 %267, label %268, label %272

268:                                              ; preds = %262, %266
  %269 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 8
  %270 = load i32, ptr %269, align 4, !tbaa !115
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %299

272:                                              ; preds = %262, %268, %266
  %273 = load ptr, ptr %113, align 8, !tbaa !86
  %274 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %273, i64 0, i32 29
  %275 = load i32, ptr %274, align 8, !tbaa !118
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %295, label %277

277:                                              ; preds = %272
  %278 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %9) #11
  %279 = trunc i32 %278 to i16
  %280 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 %279, ptr %280, align 4, !tbaa !119
  %281 = and i32 %278, 65535
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %292, label %283

283:                                              ; preds = %277
  %284 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %9) #11
  %285 = trunc i32 %284 to i16
  %286 = shl i16 %285, 1
  %287 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 %286, ptr %287, align 2, !tbaa !120
  %288 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %9) #11
  %289 = trunc i32 %288 to i16
  %290 = shl i16 %289, 1
  %291 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 %290, ptr %291, align 8, !tbaa !121
  br label %320

292:                                              ; preds = %277
  %293 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %293, align 8, !tbaa !121
  %294 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %294, align 2, !tbaa !120
  br label %320

295:                                              ; preds = %272
  %296 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %296, align 8, !tbaa !121
  %297 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %297, align 2, !tbaa !120
  %298 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 0, ptr %298, align 4, !tbaa !119
  br label %320

299:                                              ; preds = %268
  %300 = load ptr, ptr %113, align 8, !tbaa !86
  %301 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %300, i64 0, i32 29
  %302 = load i32, ptr %301, align 8, !tbaa !118
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %316, label %304

304:                                              ; preds = %299
  %305 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %9) #11
  %306 = trunc i32 %305 to i16
  %307 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 %306, ptr %307, align 4, !tbaa !119
  %308 = and i32 %305, 65535
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %316, label %310

310:                                              ; preds = %304
  %311 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %9) #11
  %312 = trunc i32 %311 to i16
  %313 = shl i16 %312, 1
  %314 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 %313, ptr %314, align 2, !tbaa !120
  %315 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %9) #11
  br label %316

316:                                              ; preds = %304, %310, %299
  %317 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 1, ptr %317, align 4, !tbaa !119
  %318 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %318, align 8, !tbaa !121
  %319 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %319, align 2, !tbaa !120
  br label %320

320:                                              ; preds = %295, %292, %283, %316
  %321 = load ptr, ptr %113, align 8, !tbaa !86
  %322 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %321, i64 0, i32 12
  %323 = load i32, ptr %322, align 4, !tbaa !122
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %350, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %321, i64 0, i32 13
  %327 = load i32, ptr %326, align 8, !tbaa !123
  %328 = add i32 %327, -3
  %329 = icmp ult i32 %328, 3
  br i1 %329, label %330, label %350

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 29
  %332 = load i32, ptr %331, align 4, !tbaa !124
  %333 = add i32 %332, 1
  %334 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 28
  %335 = load i32, ptr %334, align 4, !tbaa !125
  %336 = add i32 %335, 1
  %337 = mul i32 %336, %333
  %338 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %321, i64 0, i32 18
  %339 = load i32, ptr %338, align 8, !tbaa !126
  %340 = add i32 %339, 1
  %341 = udiv i32 %337, %340
  %342 = urem i32 %337, %340
  %343 = icmp ne i32 %342, 0
  %344 = zext i1 %343 to i32
  %345 = add i32 %341, 1
  %346 = add i32 %345, %344
  %347 = tail call i32 @CeilLog2(i32 noundef %346) #12
  %348 = tail call i32 @u_v(i32 noundef %347, ptr noundef nonnull @.str.26, ptr noundef %9) #11
  %349 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 49
  store i32 %348, ptr %349, align 4, !tbaa !127
  br label %350

350:                                              ; preds = %330, %325, %320
  %351 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 55
  %352 = load i32, ptr %351, align 4, !tbaa !128
  %353 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %354 = load i32, ptr %353, align 8, !tbaa !77
  %355 = add i32 %354, 1
  %356 = udiv i32 %352, %355
  %357 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 56
  store i32 %356, ptr %357, align 8, !tbaa !129
  %358 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 53
  %359 = load i32, ptr %358, align 4, !tbaa !130
  %360 = mul i32 %359, %356
  %361 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 57
  store i32 %360, ptr %361, align 4, !tbaa !131
  %362 = mul i32 %359, %352
  %363 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 58
  store i32 %362, ptr %363, align 8, !tbaa !132
  %364 = load ptr, ptr @p_Dec, align 8, !tbaa !52
  %365 = getelementptr inbounds %struct.decoder_params, ptr %364, i64 0, i32 3
  %366 = load i32, ptr %365, align 8, !tbaa !53
  ret i32 %366
}

; Function Attrs: optsize
declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ref_pic_list_mvc_modification(ptr noundef %0) unnamed_addr #1 !PGOFuncName !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #11
  %6 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = srem i32 %7, 5
  switch i32 %8, label %9 [
    i32 2, label %38
    i32 4, label %38
  ]

9:                                                ; preds = %1
  %10 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %5) #11
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  store i32 %10, ptr %11, align 8, !tbaa !91
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  br label %18

18:                                               ; preds = %13, %35
  %19 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %20 = tail call i32 @ue_v(ptr noundef nonnull @.str.28, ptr noundef %5) #11
  %21 = load ptr, ptr %14, align 8, !tbaa !52
  %22 = getelementptr inbounds i32, ptr %21, i64 %19
  store i32 %20, ptr %22, align 4, !tbaa !91
  %23 = icmp ult i32 %20, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = icmp eq i32 %20, 2
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = and i32 %20, -2
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %24, %18
  %30 = phi ptr [ @.str.29, %18 ], [ @.str.30, %24 ], [ @.str.31, %26 ]
  %31 = phi ptr [ %17, %18 ], [ %16, %24 ], [ %15, %26 ]
  %32 = tail call i32 @ue_v(ptr noundef nonnull %30, ptr noundef %5) #11
  %33 = load ptr, ptr %31, align 8, !tbaa !52
  %34 = getelementptr inbounds i32, ptr %33, i64 %19
  store i32 %32, ptr %34, align 4, !tbaa !91
  br label %35

35:                                               ; preds = %29, %26
  %36 = add nuw i64 %19, 1
  %37 = icmp eq i32 %20, 3
  br i1 %37, label %38, label %18, !llvm.loop !134

38:                                               ; preds = %35, %1, %1, %9
  %39 = load i32, ptr %6, align 8, !tbaa !58
  %40 = srem i32 %39, 5
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = tail call i32 @u_1(ptr noundef nonnull @.str.32, ptr noundef %5) #11
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  store i32 %43, ptr %44, align 4, !tbaa !91
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  %49 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %50 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  br label %51

51:                                               ; preds = %46, %68
  %52 = phi i64 [ 0, %46 ], [ %69, %68 ]
  %53 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %5) #11
  %54 = load ptr, ptr %47, align 8, !tbaa !52
  %55 = getelementptr inbounds i32, ptr %54, i64 %52
  store i32 %53, ptr %55, align 4, !tbaa !91
  %56 = icmp ult i32 %53, 2
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = icmp eq i32 %53, 2
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = and i32 %53, -2
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %59, %57, %51
  %63 = phi ptr [ @.str.34, %51 ], [ @.str.35, %57 ], [ @.str.36, %59 ]
  %64 = phi ptr [ %50, %51 ], [ %49, %57 ], [ %48, %59 ]
  %65 = tail call i32 @ue_v(ptr noundef nonnull %63, ptr noundef %5) #11
  %66 = load ptr, ptr %64, align 8, !tbaa !52
  %67 = getelementptr inbounds i32, ptr %66, i64 %52
  store i32 %65, ptr %67, align 4, !tbaa !91
  br label %68

68:                                               ; preds = %62, %59
  %69 = add nuw i64 %52, 1
  %70 = icmp eq i32 %53, 3
  br i1 %70, label %71, label %51, !llvm.loop !135

71:                                               ; preds = %68, %42, %38
  %72 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %73 = load i32, ptr %72, align 4, !tbaa !93
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %6, align 8, !tbaa !58
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = load i32, ptr %80, align 4, !tbaa !91
  %82 = add nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 50
  store i32 %82, ptr %83, align 8, !tbaa !136
  br label %84

84:                                               ; preds = %78, %75, %71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ref_pic_list_reordering(ptr noundef %0) unnamed_addr #1 !PGOFuncName !137 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #11
  %6 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !58
  switch i32 %7, label %8 [
    i32 2, label %61
    i32 4, label %61
  ]

8:                                                ; preds = %1
  %9 = tail call i32 @u_1(ptr noundef nonnull @.str.37, ptr noundef %5) #11
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  store i32 %9, ptr %10, align 8, !tbaa !91
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  br label %16

16:                                               ; preds = %12, %30
  %17 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.38, ptr noundef %5) #11
  %19 = load ptr, ptr %13, align 8, !tbaa !52
  %20 = getelementptr inbounds i32, ptr %19, i64 %17
  store i32 %18, ptr %20, align 4, !tbaa !91
  %21 = icmp ult i32 %18, 2
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %18, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %22, %16
  %25 = phi ptr [ @.str.29, %16 ], [ @.str.30, %22 ]
  %26 = phi ptr [ %15, %16 ], [ %14, %22 ]
  %27 = tail call i32 @ue_v(ptr noundef nonnull %25, ptr noundef %5) #11
  %28 = load ptr, ptr %26, align 8, !tbaa !52
  %29 = getelementptr inbounds i32, ptr %28, i64 %17
  store i32 %27, ptr %29, align 4, !tbaa !91
  br label %30

30:                                               ; preds = %24, %22
  %31 = add nuw i64 %17, 1
  %32 = icmp eq i32 %18, 3
  br i1 %32, label %33, label %16, !llvm.loop !138

33:                                               ; preds = %30, %8
  %34 = load i32, ptr %6, align 8, !tbaa !58
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = tail call i32 @u_1(ptr noundef nonnull @.str.32, ptr noundef %5) #11
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  store i32 %37, ptr %38, align 4, !tbaa !91
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  br label %44

44:                                               ; preds = %40, %58
  %45 = phi i64 [ 0, %40 ], [ %59, %58 ]
  %46 = tail call i32 @ue_v(ptr noundef nonnull @.str.39, ptr noundef %5) #11
  %47 = load ptr, ptr %41, align 8, !tbaa !52
  %48 = getelementptr inbounds i32, ptr %47, i64 %45
  store i32 %46, ptr %48, align 4, !tbaa !91
  %49 = icmp ult i32 %46, 2
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = icmp eq i32 %46, 2
  br i1 %51, label %52, label %58

52:                                               ; preds = %50, %44
  %53 = phi ptr [ @.str.34, %44 ], [ @.str.35, %50 ]
  %54 = phi ptr [ %43, %44 ], [ %42, %50 ]
  %55 = tail call i32 @ue_v(ptr noundef nonnull %53, ptr noundef %5) #11
  %56 = load ptr, ptr %54, align 8, !tbaa !52
  %57 = getelementptr inbounds i32, ptr %56, i64 %45
  store i32 %55, ptr %57, align 4, !tbaa !91
  br label %58

58:                                               ; preds = %52, %50
  %59 = add nuw i64 %45, 1
  %60 = icmp eq i32 %46, 3
  br i1 %60, label %61, label %44, !llvm.loop !139

61:                                               ; preds = %58, %1, %1, %36, %33
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %63 = load i32, ptr %62, align 4, !tbaa !93
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %6, align 8, !tbaa !58
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  %71 = load i32, ptr %70, align 4, !tbaa !91
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 50
  store i32 %72, ptr %73, align 8, !tbaa !136
  br label %74

74:                                               ; preds = %68, %65, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pred_weight_table(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call i32 @ue_v(ptr noundef nonnull @.str.40, ptr noundef %7) #11
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  store i16 %9, ptr %10, align 4, !tbaa !141
  %11 = and i32 %8, 65535
  %12 = icmp eq i32 %11, 0
  %13 = add nsw i32 %11, -1
  %14 = shl nuw i32 1, %13
  %15 = trunc i32 %14 to i16
  %16 = select i1 %12, i16 0, i16 %15
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 103
  store i16 %16, ptr %17, align 8, !tbaa !142
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !143
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = tail call i32 @ue_v(ptr noundef nonnull @.str.41, ptr noundef %7) #11
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  store i16 %23, ptr %24, align 2, !tbaa !144
  %25 = and i32 %22, 65535
  %26 = icmp eq i32 %25, 0
  %27 = add nsw i32 %25, -1
  %28 = shl nuw i32 1, %27
  %29 = trunc i32 %28 to i16
  %30 = select i1 %26, i16 0, i16 %29
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 104
  store i16 %30, ptr %31, align 2, !tbaa !145
  br label %32

32:                                               ; preds = %21, %1
  tail call fastcc void @reset_wp_params(ptr noundef nonnull %0) #12
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !91
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %120

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %39 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 64
  %40 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 65
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  br label %42

42:                                               ; preds = %36, %115
  %43 = phi i64 [ 0, %36 ], [ %116, %115 ]
  %44 = tail call i32 @u_1(ptr noundef nonnull @.str.42, ptr noundef %7) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @se_v(ptr noundef nonnull @.str.43, ptr noundef %7) #11
  %48 = load ptr, ptr %37, align 8, !tbaa !146
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  %50 = getelementptr inbounds ptr, ptr %49, i64 %43
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  store i32 %47, ptr %51, align 4, !tbaa !91
  %52 = tail call i32 @se_v(ptr noundef nonnull @.str.44, ptr noundef %7) #11
  %53 = load ptr, ptr %38, align 8, !tbaa !147
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = getelementptr inbounds ptr, ptr %54, i64 %43
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = load i16, ptr %39, align 8, !tbaa !148
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %58, -8
  %60 = shl i32 %52, %59
  store i32 %60, ptr %56, align 4, !tbaa !91
  br label %73

61:                                               ; preds = %42
  %62 = load i16, ptr %10, align 4, !tbaa !141
  %63 = zext nneg i16 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = load ptr, ptr %37, align 8, !tbaa !146
  %66 = load ptr, ptr %65, align 8, !tbaa !52
  %67 = getelementptr inbounds ptr, ptr %66, i64 %43
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  store i32 %64, ptr %68, align 4, !tbaa !91
  %69 = load ptr, ptr %38, align 8, !tbaa !147
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  %71 = getelementptr inbounds ptr, ptr %70, i64 %43
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  store i32 0, ptr %72, align 4, !tbaa !91
  br label %73

73:                                               ; preds = %61, %46
  %74 = load i32, ptr %18, align 4, !tbaa !143
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %115, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @u_1(ptr noundef nonnull @.str.45, ptr noundef %7) #11
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %76, %112
  %80 = phi i64 [ 1, %76 ], [ %113, %112 ]
  br i1 %78, label %98, label %81

81:                                               ; preds = %79
  %82 = tail call i32 @se_v(ptr noundef nonnull @.str.46, ptr noundef %7) #11
  %83 = load ptr, ptr %37, align 8, !tbaa !146
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = getelementptr inbounds ptr, ptr %84, i64 %43
  %86 = load ptr, ptr %85, align 8, !tbaa !52
  %87 = getelementptr inbounds i32, ptr %86, i64 %80
  store i32 %82, ptr %87, align 4, !tbaa !91
  %88 = tail call i32 @se_v(ptr noundef nonnull @.str.47, ptr noundef %7) #11
  %89 = load ptr, ptr %38, align 8, !tbaa !147
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  %91 = getelementptr inbounds ptr, ptr %90, i64 %43
  %92 = load ptr, ptr %91, align 8, !tbaa !52
  %93 = getelementptr inbounds i32, ptr %92, i64 %80
  %94 = load i16, ptr %40, align 2, !tbaa !149
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 %95, -8
  %97 = shl i32 %88, %96
  store i32 %97, ptr %93, align 4, !tbaa !91
  br label %112

98:                                               ; preds = %79
  %99 = load i16, ptr %41, align 2, !tbaa !144
  %100 = zext nneg i16 %99 to i32
  %101 = shl nuw i32 1, %100
  %102 = load ptr, ptr %37, align 8, !tbaa !146
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = getelementptr inbounds ptr, ptr %103, i64 %43
  %105 = load ptr, ptr %104, align 8, !tbaa !52
  %106 = getelementptr inbounds i32, ptr %105, i64 %80
  store i32 %101, ptr %106, align 4, !tbaa !91
  %107 = load ptr, ptr %38, align 8, !tbaa !147
  %108 = load ptr, ptr %107, align 8, !tbaa !52
  %109 = getelementptr inbounds ptr, ptr %108, i64 %43
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = getelementptr inbounds i32, ptr %110, i64 %80
  store i32 0, ptr %111, align 4, !tbaa !91
  br label %112

112:                                              ; preds = %81, %98
  %113 = add nuw nsw i64 %80, 1
  %114 = icmp eq i64 %113, 3
  br i1 %114, label %115, label %79, !llvm.loop !150

115:                                              ; preds = %112, %73
  %116 = add nuw nsw i64 %43, 1
  %117 = load i32, ptr %33, align 8, !tbaa !91
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %42, label %120, !llvm.loop !151

120:                                              ; preds = %115, %32
  %121 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %122 = load i32, ptr %121, align 8, !tbaa !58
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %226

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !86
  %127 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %126, i64 0, i32 24
  %128 = load i32, ptr %127, align 4, !tbaa !99
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %226

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %132 = load i32, ptr %131, align 4, !tbaa !91
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %226

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %136 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %137 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 64
  %138 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 65
  %139 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  br label %140

140:                                              ; preds = %134, %221
  %141 = phi i64 [ 0, %134 ], [ %222, %221 ]
  %142 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %7) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %140
  %145 = tail call i32 @se_v(ptr noundef nonnull @.str.49, ptr noundef %7) #11
  %146 = load ptr, ptr %135, align 8, !tbaa !146
  %147 = getelementptr inbounds ptr, ptr %146, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !52
  %149 = getelementptr inbounds ptr, ptr %148, i64 %141
  %150 = load ptr, ptr %149, align 8, !tbaa !52
  store i32 %145, ptr %150, align 4, !tbaa !91
  %151 = tail call i32 @se_v(ptr noundef nonnull @.str.50, ptr noundef %7) #11
  %152 = load ptr, ptr %136, align 8, !tbaa !147
  %153 = getelementptr inbounds ptr, ptr %152, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !52
  %155 = getelementptr inbounds ptr, ptr %154, i64 %141
  %156 = load ptr, ptr %155, align 8, !tbaa !52
  %157 = load i16, ptr %137, align 8, !tbaa !148
  %158 = sext i16 %157 to i32
  %159 = add nsw i32 %158, -8
  %160 = shl i32 %151, %159
  store i32 %160, ptr %156, align 4, !tbaa !91
  br label %175

161:                                              ; preds = %140
  %162 = load i16, ptr %10, align 4, !tbaa !141
  %163 = zext nneg i16 %162 to i32
  %164 = shl nuw i32 1, %163
  %165 = load ptr, ptr %135, align 8, !tbaa !146
  %166 = getelementptr inbounds ptr, ptr %165, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !52
  %168 = getelementptr inbounds ptr, ptr %167, i64 %141
  %169 = load ptr, ptr %168, align 8, !tbaa !52
  store i32 %164, ptr %169, align 4, !tbaa !91
  %170 = load ptr, ptr %136, align 8, !tbaa !147
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !52
  %173 = getelementptr inbounds ptr, ptr %172, i64 %141
  %174 = load ptr, ptr %173, align 8, !tbaa !52
  store i32 0, ptr %174, align 4, !tbaa !91
  br label %175

175:                                              ; preds = %161, %144
  %176 = load i32, ptr %18, align 4, !tbaa !143
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %221, label %178

178:                                              ; preds = %175
  %179 = tail call i32 @u_1(ptr noundef nonnull @.str.51, ptr noundef %7) #11
  %180 = icmp eq i32 %179, 0
  br label %181

181:                                              ; preds = %178, %218
  %182 = phi i64 [ 1, %178 ], [ %219, %218 ]
  br i1 %180, label %202, label %183

183:                                              ; preds = %181
  %184 = tail call i32 @se_v(ptr noundef nonnull @.str.52, ptr noundef %7) #11
  %185 = load ptr, ptr %135, align 8, !tbaa !146
  %186 = getelementptr inbounds ptr, ptr %185, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !52
  %188 = getelementptr inbounds ptr, ptr %187, i64 %141
  %189 = load ptr, ptr %188, align 8, !tbaa !52
  %190 = getelementptr inbounds i32, ptr %189, i64 %182
  store i32 %184, ptr %190, align 4, !tbaa !91
  %191 = tail call i32 @se_v(ptr noundef nonnull @.str.53, ptr noundef %7) #11
  %192 = load ptr, ptr %136, align 8, !tbaa !147
  %193 = getelementptr inbounds ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !52
  %195 = getelementptr inbounds ptr, ptr %194, i64 %141
  %196 = load ptr, ptr %195, align 8, !tbaa !52
  %197 = getelementptr inbounds i32, ptr %196, i64 %182
  %198 = load i16, ptr %138, align 2, !tbaa !149
  %199 = sext i16 %198 to i32
  %200 = add nsw i32 %199, -8
  %201 = shl i32 %191, %200
  store i32 %201, ptr %197, align 4, !tbaa !91
  br label %218

202:                                              ; preds = %181
  %203 = load i16, ptr %139, align 2, !tbaa !144
  %204 = zext nneg i16 %203 to i32
  %205 = shl nuw i32 1, %204
  %206 = load ptr, ptr %135, align 8, !tbaa !146
  %207 = getelementptr inbounds ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !52
  %209 = getelementptr inbounds ptr, ptr %208, i64 %141
  %210 = load ptr, ptr %209, align 8, !tbaa !52
  %211 = getelementptr inbounds i32, ptr %210, i64 %182
  store i32 %205, ptr %211, align 4, !tbaa !91
  %212 = load ptr, ptr %136, align 8, !tbaa !147
  %213 = getelementptr inbounds ptr, ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !52
  %215 = getelementptr inbounds ptr, ptr %214, i64 %141
  %216 = load ptr, ptr %215, align 8, !tbaa !52
  %217 = getelementptr inbounds i32, ptr %216, i64 %182
  store i32 0, ptr %217, align 4, !tbaa !91
  br label %218

218:                                              ; preds = %183, %202
  %219 = add nuw nsw i64 %182, 1
  %220 = icmp eq i64 %219, 3
  br i1 %220, label %221, label %181, !llvm.loop !152

221:                                              ; preds = %218, %175
  %222 = add nuw nsw i64 %141, 1
  %223 = load i32, ptr %131, align 4, !tbaa !91
  %224 = sext i32 %223 to i64
  %225 = icmp slt i64 %222, %224
  br i1 %225, label %140, label %226, !llvm.loop !153

226:                                              ; preds = %221, %130, %124, %120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dec_ref_pic_marking(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !155
  store ptr %10, ptr %4, align 8, !tbaa !154
  tail call void @free(ptr noundef nonnull %8) #11
  %11 = load ptr, ptr %4, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !157

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @u_1(ptr noundef nonnull @.str.54, ptr noundef %1) #11
  %19 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 51
  store i32 %18, ptr %19, align 4, !tbaa !158
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 60
  store i32 %18, ptr %20, align 8, !tbaa !159
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.55, ptr noundef %1) #11
  %22 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 52
  store i32 %21, ptr %22, align 8, !tbaa !160
  br label %56

23:                                               ; preds = %13
  %24 = tail call i32 @u_1(ptr noundef nonnull @.str.56, ptr noundef %1) #11
  %25 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 53
  store i32 %24, ptr %25, align 4, !tbaa !161
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %23, %53
  %28 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  %29 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !155
  %30 = tail call i32 @ue_v(ptr noundef nonnull @.str.57, ptr noundef %1) #11
  store i32 %30, ptr %28, align 8, !tbaa !162
  switch i32 %30, label %43 [
    i32 3, label %31
    i32 1, label %31
    i32 2, label %34
    i32 6, label %37
    i32 4, label %40
  ]

31:                                               ; preds = %27, %27
  %32 = tail call i32 @ue_v(ptr noundef nonnull @.str.58, ptr noundef %1) #11
  %33 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !163
  switch i32 %30, label %43 [
    i32 2, label %34
    i32 3, label %37
  ]

34:                                               ; preds = %27, %31
  %35 = tail call i32 @ue_v(ptr noundef nonnull @.str.59, ptr noundef %1) #11
  %36 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !164
  br label %43

37:                                               ; preds = %31, %27
  %38 = tail call i32 @ue_v(ptr noundef nonnull @.str.60, ptr noundef %1) #11
  %39 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !165
  br label %43

40:                                               ; preds = %27
  %41 = tail call i32 @ue_v(ptr noundef nonnull @.str.61, ptr noundef %1) #11
  %42 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 4
  store i32 %41, ptr %42, align 8, !tbaa !166
  br label %43

43:                                               ; preds = %37, %34, %27, %31, %40
  %44 = load ptr, ptr %4, align 8, !tbaa !154
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %49, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !155
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %46, !llvm.loop !167

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %47, i64 0, i32 5
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi ptr [ %52, %51 ], [ %4, %43 ]
  store ptr %28, ptr %54, align 8, !tbaa !52
  %55 = icmp eq i32 %30, 0
  br i1 %55, label %56, label %27, !llvm.loop !168

56:                                               ; preds = %53, %23, %17
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @reset_wp_params(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !169 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %1, %26
  %10 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %11 = getelementptr inbounds ptr, ptr %6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds ptr, ptr %8, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %24, %15 ]
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, ptr %2, ptr %3
  %19 = load i16, ptr %18, align 2, !tbaa !170
  %20 = zext nneg i16 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds i32, ptr %12, i64 %16
  store i32 %21, ptr %22, align 4, !tbaa !91
  %23 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %21, ptr %23, align 4, !tbaa !91
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %15, !llvm.loop !171

26:                                               ; preds = %15
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, 32
  br i1 %28, label %29, label %9, !llvm.loop !172

29:                                               ; preds = %26
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_poc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 4, !tbaa !84
  %7 = add i32 %6, 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !83
  switch i32 %10, label %336 [
    i32 0, label %11
    i32 1, label %112
    i32 2, label %262
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 0, ptr %16, align 8, !tbaa !173
  br label %33

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %19 = load i32, ptr %18, align 4, !tbaa !174
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  %23 = load i32, ptr %22, align 4, !tbaa !175
  br label %38

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 62
  %26 = load i32, ptr %25, align 8, !tbaa !176
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 0, ptr %28, align 8, !tbaa !173
  br i1 %27, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !177
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  store i32 %31, ptr %32, align 4, !tbaa !175
  br label %38

33:                                               ; preds = %24, %15
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  store i32 0, ptr %34, align 4, !tbaa !175
  %35 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !85
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  br label %52

38:                                               ; preds = %21, %29
  %39 = phi i32 [ %23, %21 ], [ %31, %29 ]
  %40 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %41 = load i32, ptr %40, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  %43 = icmp ult i32 %41, %39
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = sub i32 %39, %41
  %46 = lshr i32 %8, 1
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %50 = load i32, ptr %49, align 8, !tbaa !173
  %51 = add i32 %50, %8
  br label %68

52:                                               ; preds = %33, %44, %38
  %53 = phi ptr [ %37, %33 ], [ %42, %44 ], [ %42, %38 ]
  %54 = phi i32 [ %36, %33 ], [ %41, %44 ], [ %41, %38 ]
  %55 = phi i32 [ 0, %33 ], [ %39, %44 ], [ %39, %38 ]
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = sub i32 %54, %55
  %59 = lshr i32 %8, 1
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %63 = load i32, ptr %62, align 8, !tbaa !173
  %64 = sub i32 %63, %8
  br label %68

65:                                               ; preds = %57, %52
  %66 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %67 = load i32, ptr %66, align 8, !tbaa !173
  br label %68

68:                                               ; preds = %61, %65, %48
  %69 = phi i32 [ %64, %61 ], [ %67, %65 ], [ %51, %48 ]
  %70 = phi ptr [ %53, %61 ], [ %53, %65 ], [ %42, %48 ]
  %71 = phi i32 [ %54, %61 ], [ %54, %65 ], [ %41, %48 ]
  %72 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 17
  store i32 %69, ptr %72, align 8, !tbaa !178
  %73 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %74 = load i32, ptr %73, align 8, !tbaa !77
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = add i32 %69, %71
  %78 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %77, ptr %78, align 4, !tbaa !177
  %79 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 15
  %80 = load i32, ptr %79, align 4, !tbaa !89
  %81 = add nsw i32 %80, %77
  %82 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %81, ptr %82, align 8, !tbaa !179
  %83 = icmp sgt i32 %80, 0
  %84 = select i1 %83, i32 %77, i32 %81
  %85 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %84, ptr %85, align 8, !tbaa !180
  br label %96

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %88 = load i8, ptr %87, align 4, !tbaa !78
  %89 = icmp eq i8 %88, 0
  %90 = add i32 %69, %71
  %91 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  br i1 %89, label %92, label %94

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %90, ptr %93, align 4, !tbaa !177
  store i32 %90, ptr %91, align 8, !tbaa !180
  br label %96

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %90, ptr %95, align 8, !tbaa !179
  store i32 %90, ptr %91, align 8, !tbaa !180
  br label %96

96:                                               ; preds = %92, %94, %76
  %97 = phi i32 [ %90, %92 ], [ %90, %94 ], [ %84, %76 ]
  %98 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %97, ptr %98, align 4, !tbaa !181
  %99 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 50
  store i32 %97, ptr %99, align 8, !tbaa !182
  %100 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %101 = load i32, ptr %100, align 4, !tbaa !71
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %103 = load i32, ptr %102, align 4, !tbaa !183
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store i32 %101, ptr %102, align 4, !tbaa !183
  br label %106

106:                                              ; preds = %105, %96
  %107 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !102
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %336, label %110

110:                                              ; preds = %106
  store i32 %71, ptr %70, align 4, !tbaa !175
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 %69, ptr %111, align 8, !tbaa !173
  br label %336

112:                                              ; preds = %2
  %113 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !72
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 0, ptr %117, align 8, !tbaa !184
  %118 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %119 = load i32, ptr %118, align 4, !tbaa !71
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %146, label %121

121:                                              ; preds = %116
  tail call void @error(ptr noundef nonnull @.str.62, i32 noundef -1020) #11
  br label %146

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %124 = load i32, ptr %123, align 4, !tbaa !174
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 0, ptr %127, align 4, !tbaa !185
  %128 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 0, ptr %128, align 4, !tbaa !183
  br label %142

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %131 = load i32, ptr %130, align 4, !tbaa !183
  %132 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %133 = load i32, ptr %132, align 4, !tbaa !71
  %134 = icmp ult i32 %133, %131
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %137 = load i32, ptr %136, align 4, !tbaa !185
  %138 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %139 = load i32, ptr %138, align 8, !tbaa !186
  %140 = add nsw i32 %139, %137
  %141 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %140, ptr %141, align 8, !tbaa !184
  br label %146

142:                                              ; preds = %126, %129
  %143 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %144 = load i32, ptr %143, align 4, !tbaa !185
  %145 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %144, ptr %145, align 8, !tbaa !184
  br label %146

146:                                              ; preds = %135, %142, %116, %121
  %147 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 24
  %148 = load i32, ptr %147, align 4, !tbaa !187
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %152 = load i32, ptr %151, align 8, !tbaa !184
  %153 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %154 = load i32, ptr %153, align 4, !tbaa !71
  %155 = add i32 %154, %152
  %156 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %158 = load i32, ptr %157, align 8, !tbaa !102
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %167, label %171

160:                                              ; preds = %146
  %161 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %163 = load i32, ptr %162, align 8, !tbaa !102
  %164 = icmp eq i32 %163, 0
  %165 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 49
  store i32 0, ptr %165, align 4, !tbaa !188
  %166 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 0, ptr %166, align 8, !tbaa !189
  br i1 %164, label %211, label %217

167:                                              ; preds = %150
  %168 = icmp eq i32 %155, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %167
  %170 = add i32 %155, -1
  store i32 %170, ptr %156, align 4, !tbaa !190
  br label %171

171:                                              ; preds = %169, %167, %150
  %172 = phi i32 [ %170, %169 ], [ 0, %167 ], [ %155, %150 ]
  %173 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 49
  store i32 0, ptr %173, align 4, !tbaa !188
  %174 = icmp sgt i32 %148, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = zext nneg i32 %148 to i64
  br label %177

177:                                              ; preds = %175, %177
  %178 = phi i64 [ 0, %175 ], [ %183, %177 ]
  %179 = phi i32 [ 0, %175 ], [ %182, %177 ]
  %180 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 25, i64 %178
  %181 = load i32, ptr %180, align 4, !tbaa !91
  %182 = add nsw i32 %179, %181
  store i32 %182, ptr %173, align 4, !tbaa !188
  %183 = add nuw nsw i64 %178, 1
  %184 = icmp eq i64 %183, %176
  br i1 %184, label %185, label %177, !llvm.loop !191

185:                                              ; preds = %177, %171
  %186 = phi i32 [ 0, %171 ], [ %182, %177 ]
  %187 = icmp eq i32 %172, 0
  br i1 %187, label %207, label %188

188:                                              ; preds = %185
  %189 = add i32 %172, -1
  %190 = udiv i32 %189, %148
  %191 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 45
  store i32 %190, ptr %191, align 4, !tbaa !192
  %192 = urem i32 %189, %148
  %193 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 46
  store i32 %192, ptr %193, align 8, !tbaa !193
  %194 = mul nsw i32 %186, %190
  %195 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 %194, ptr %195, align 8, !tbaa !189
  %196 = icmp slt i32 %192, 0
  br i1 %196, label %209, label %197

197:                                              ; preds = %188
  %198 = zext nneg i32 %192 to i64
  br label %199

199:                                              ; preds = %197, %199
  %200 = phi i64 [ 0, %197 ], [ %205, %199 ]
  %201 = phi i32 [ %194, %197 ], [ %204, %199 ]
  %202 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 25, i64 %200
  %203 = load i32, ptr %202, align 4, !tbaa !91
  %204 = add nsw i32 %201, %203
  store i32 %204, ptr %195, align 8, !tbaa !189
  %205 = add nuw nsw i64 %200, 1
  %206 = icmp ult i64 %200, %198
  br i1 %206, label %199, label %209, !llvm.loop !194

207:                                              ; preds = %185
  %208 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 0, ptr %208, align 8, !tbaa !189
  br i1 %159, label %211, label %217

209:                                              ; preds = %199, %188
  %210 = phi i32 [ %194, %188 ], [ %204, %199 ]
  br i1 %159, label %211, label %217

211:                                              ; preds = %160, %207, %209
  %212 = phi i32 [ 0, %207 ], [ %210, %209 ], [ 0, %160 ]
  %213 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 22
  %214 = load i32, ptr %213, align 4, !tbaa !195
  %215 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  %216 = add nsw i32 %212, %214
  store i32 %216, ptr %215, align 8, !tbaa !189
  br label %217

217:                                              ; preds = %160, %207, %211, %209
  %218 = phi i32 [ %216, %211 ], [ %210, %209 ], [ 0, %207 ], [ 0, %160 ]
  %219 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %220 = load i32, ptr %219, align 8, !tbaa !77
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %224 = load i32, ptr %223, align 8, !tbaa !91
  %225 = add nsw i32 %224, %218
  %226 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %225, ptr %226, align 4, !tbaa !177
  %227 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 23
  %228 = load i32, ptr %227, align 4, !tbaa !196
  %229 = add nsw i32 %228, %225
  %230 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %231 = load i32, ptr %230, align 4, !tbaa !91
  %232 = add nsw i32 %229, %231
  %233 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %232, ptr %233, align 8, !tbaa !179
  %234 = tail call i32 @llvm.smin.i32(i32 %225, i32 %232)
  br label %252

235:                                              ; preds = %217
  %236 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %237 = load i8, ptr %236, align 4, !tbaa !78
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %241 = load i32, ptr %240, align 8, !tbaa !91
  %242 = add nsw i32 %241, %218
  %243 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %242, ptr %243, align 4, !tbaa !177
  br label %252

244:                                              ; preds = %235
  %245 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 23
  %246 = load i32, ptr %245, align 4, !tbaa !196
  %247 = add nsw i32 %246, %218
  %248 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %249 = load i32, ptr %248, align 8, !tbaa !91
  %250 = add nsw i32 %247, %249
  %251 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %250, ptr %251, align 8, !tbaa !179
  br label %252

252:                                              ; preds = %239, %244, %222
  %253 = phi i32 [ %242, %239 ], [ %250, %244 ], [ %234, %222 ]
  %254 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %253, ptr %254, align 8, !tbaa !180
  %255 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %253, ptr %255, align 4, !tbaa !181
  %256 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %257 = load i32, ptr %256, align 4, !tbaa !71
  %258 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 %257, ptr %258, align 4, !tbaa !183
  %259 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %260 = load i32, ptr %259, align 8, !tbaa !184
  %261 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 %260, ptr %261, align 4, !tbaa !185
  br label %336

262:                                              ; preds = %2
  %263 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %264 = load i32, ptr %263, align 8, !tbaa !72
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %276, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 0, ptr %267, align 8, !tbaa !184
  %268 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 0, ptr %268, align 8, !tbaa !179
  %269 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 0, ptr %269, align 4, !tbaa !177
  %270 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 0, ptr %270, align 4, !tbaa !181
  %271 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 0, ptr %271, align 8, !tbaa !180
  %272 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %273 = load i32, ptr %272, align 4, !tbaa !71
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %329, label %275

275:                                              ; preds = %266
  tail call void @error(ptr noundef nonnull @.str.62, i32 noundef -1020) #11
  br label %329

276:                                              ; preds = %262
  %277 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %278 = load i32, ptr %277, align 4, !tbaa !174
  %279 = icmp eq i32 %278, 0
  %280 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  br i1 %279, label %285, label %281

281:                                              ; preds = %276
  store i32 0, ptr %280, align 4, !tbaa !183
  %282 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 0, ptr %282, align 4, !tbaa !185
  %283 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %284 = load i32, ptr %283, align 4, !tbaa !71
  br label %296

285:                                              ; preds = %276
  %286 = load i32, ptr %280, align 4, !tbaa !183
  %287 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %288 = load i32, ptr %287, align 4, !tbaa !71
  %289 = icmp ult i32 %288, %286
  br i1 %289, label %290, label %296

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %292 = load i32, ptr %291, align 4, !tbaa !185
  %293 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %294 = load i32, ptr %293, align 8, !tbaa !186
  %295 = add nsw i32 %294, %292
  br label %300

296:                                              ; preds = %281, %285
  %297 = phi i32 [ %284, %281 ], [ %288, %285 ]
  %298 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %299 = load i32, ptr %298, align 4, !tbaa !185
  br label %300

300:                                              ; preds = %296, %290
  %301 = phi i32 [ %288, %290 ], [ %297, %296 ]
  %302 = phi i32 [ %295, %290 ], [ %299, %296 ]
  %303 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %302, ptr %303, align 8
  %304 = add i32 %302, %301
  %305 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 %304, ptr %305, align 4, !tbaa !190
  %306 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %307 = load i32, ptr %306, align 8, !tbaa !102
  %308 = icmp eq i32 %307, 0
  %309 = shl i32 %304, 1
  %310 = sext i1 %308 to i32
  %311 = add i32 %309, %310
  %312 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %311, ptr %312, align 8
  %313 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %314 = load i32, ptr %313, align 8, !tbaa !77
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %300
  %317 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %311, ptr %317, align 4, !tbaa !181
  %318 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %311, ptr %318, align 8, !tbaa !179
  %319 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %311, ptr %319, align 4, !tbaa !177
  br label %329

320:                                              ; preds = %300
  %321 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %322 = load i8, ptr %321, align 4, !tbaa !78
  %323 = icmp eq i8 %322, 0
  %324 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %311, ptr %324, align 4, !tbaa !181
  br i1 %323, label %325, label %327

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %311, ptr %326, align 4, !tbaa !177
  br label %329

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %311, ptr %328, align 8, !tbaa !179
  br label %329

329:                                              ; preds = %316, %327, %325, %266, %275
  %330 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %331 = load i32, ptr %330, align 4, !tbaa !71
  %332 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 %331, ptr %332, align 4, !tbaa !183
  %333 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %334 = load i32, ptr %333, align 8, !tbaa !184
  %335 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 %334, ptr %335, align 4, !tbaa !185
  br label %336

336:                                              ; preds = %2, %106, %110, %329, %252
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @dumppoc(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !177
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %9) #12
  %11 = load ptr, ptr %5, align 8, !tbaa !197
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !179
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %14) #12
  %16 = load ptr, ptr %5, align 8, !tbaa !197
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 35
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %19) #12
  %21 = load ptr, ptr %5, align 8, !tbaa !197
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 36
  %24 = load i32, ptr %23, align 8, !tbaa !77
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %24) #12
  %26 = load ptr, ptr %5, align 8, !tbaa !197
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.slice, ptr %27, i64 0, i32 37
  %29 = load i8, ptr %28, align 4, !tbaa !78
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %30) #12
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85)
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 18
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %34) #12
  %36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 20
  %37 = load i32, ptr %36, align 4, !tbaa !84
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %37) #12
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 19
  %40 = load i32, ptr %39, align 4, !tbaa !83
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %40) #12
  %42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 24
  %43 = load i32, ptr %42, align 4, !tbaa !187
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %43) #12
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 21
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %46) #12
  %48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 22
  %49 = load i32, ptr %48, align 4, !tbaa !195
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %49) #12
  %51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 23
  %52 = load i32, ptr %51, align 4, !tbaa !196
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %52) #12
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 25
  %55 = load i32, ptr %54, align 4, !tbaa !91
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %55) #12
  %57 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 25, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !91
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %58) #12
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  %63 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %62, i64 0, i32 11
  %64 = load i32, ptr %63, align 8, !tbaa !87
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, i32 noundef %64) #12
  %66 = load ptr, ptr %5, align 8, !tbaa !197
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = getelementptr inbounds %struct.slice, ptr %67, i64 0, i32 16
  %69 = load i32, ptr %68, align 8, !tbaa !91
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %69) #12
  %71 = load ptr, ptr %5, align 8, !tbaa !197
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = getelementptr inbounds %struct.slice, ptr %72, i64 0, i32 16, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !91
  %75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, i32 noundef %74) #12
  %76 = load ptr, ptr %5, align 8, !tbaa !197
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = getelementptr inbounds %struct.slice, ptr %77, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !72
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i32 noundef %79) #12
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %82 = load i32, ptr %81, align 8, !tbaa !186
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, i32 noundef %82) #12
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @picture_order(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  br label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  %9 = load i8, ptr %8, align 4, !tbaa !78
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 11
  br label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %11, %5
  %16 = phi ptr [ %6, %5 ], [ %12, %11 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 4, !tbaa !91
  ret i32 %17
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = !{!39, !40, i64 0}
!39 = !{!"slice", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !43, i64 32, !40, i64 40, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !41, i64 88, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !44, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !41, i64 136, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !41, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !40, i64 248, !41, i64 256, !41, i64 264, !40, i64 312, !40, i64 320, !40, i64 328, !41, i64 336, !41, i64 1104, !41, i64 1112, !41, i64 1128, !41, i64 1144, !41, i64 1160, !43, i64 1176, !43, i64 1180, !43, i64 1184, !45, i64 1188, !44, i64 1220, !44, i64 1222, !44, i64 1224, !43, i64 1228, !43, i64 1232, !43, i64 1236, !43, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !41, i64 1288, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !41, i64 1392, !41, i64 2544, !41, i64 3696, !41, i64 8304, !41, i64 12912, !41, i64 13008, !43, i64 13264, !43, i64 13268, !44, i64 13272, !44, i64 13274, !44, i64 13276, !44, i64 13278, !40, i64 13280, !40, i64 13288, !40, i64 13296, !44, i64 13304, !44, i64 13306, !43, i64 13308, !43, i64 13312, !40, i64 13320, !40, i64 13328, !43, i64 13336, !41, i64 13340, !40, i64 13408, !40, i64 13416, !40, i64 13424, !40, i64 13432, !40, i64 13440, !40, i64 13448, !40, i64 13456, !40, i64 13464, !40, i64 13472, !40, i64 13480, !40, i64 13488, !40, i64 13496, !43, i64 13504, !40, i64 13512, !40, i64 13520, !40, i64 13528, !40, i64 13536, !40, i64 13544, !41, i64 13552}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"short", !41, i64 0}
!45 = !{!"nalunitheadermvcext_tag", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28}
!46 = !{!39, !40, i64 312}
!47 = !{!48, !40, i64 0}
!48 = !{!"datapartition", !40, i64 0, !49, i64 8, !40, i64 40}
!49 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !40, i64 16, !40, i64 24}
!50 = !{!51, !43, i64 8}
!51 = !{!"bit_stream", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !43, i64 24}
!52 = !{!40, !40, i64 0}
!53 = !{!54, !43, i64 24}
!54 = !{!"decoder_params", !40, i64 0, !40, i64 8, !55, i64 16, !43, i64 24, !40, i64 32, !43, i64 40}
!55 = !{!"long", !41, i64 0}
!56 = !{!39, !43, i64 188}
!57 = !{!39, !43, i64 164}
!58 = !{!59, !43, i64 848776}
!59 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24, !41, i64 132120, !40, i64 699416, !41, i64 699424, !43, i64 848672, !43, i64 848676, !43, i64 848680, !43, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !43, i64 848712, !43, i64 848716, !43, i64 848720, !43, i64 848724, !43, i64 848728, !40, i64 848736, !40, i64 848744, !41, i64 848752, !43, i64 848776, !43, i64 848780, !43, i64 848784, !43, i64 848788, !43, i64 848792, !40, i64 848800, !41, i64 848808, !40, i64 848832, !40, i64 848840, !41, i64 848848, !43, i64 848872, !43, i64 848876, !40, i64 848880, !40, i64 848888, !41, i64 848896, !43, i64 848920, !40, i64 848928, !40, i64 848936, !43, i64 848944, !43, i64 848948, !43, i64 848952, !43, i64 848956, !43, i64 848960, !43, i64 848964, !43, i64 848968, !43, i64 848972, !43, i64 848976, !43, i64 848980, !43, i64 848984, !43, i64 848988, !43, i64 848992, !43, i64 848996, !43, i64 849000, !43, i64 849004, !43, i64 849008, !43, i64 849012, !43, i64 849016, !43, i64 849020, !43, i64 849024, !43, i64 849028, !43, i64 849032, !43, i64 849036, !44, i64 849040, !44, i64 849042, !41, i64 849044, !43, i64 849052, !43, i64 849056, !41, i64 849060, !41, i64 849072, !43, i64 849084, !43, i64 849088, !43, i64 849092, !43, i64 849096, !43, i64 849100, !43, i64 849104, !43, i64 849108, !43, i64 849112, !43, i64 849116, !43, i64 849120, !41, i64 849124, !41, i64 849148, !41, i64 849172, !43, i64 849196, !43, i64 849200, !43, i64 849204, !43, i64 849208, !43, i64 849212, !43, i64 849216, !43, i64 849220, !43, i64 849224, !43, i64 849228, !43, i64 849232, !43, i64 849236, !43, i64 849240, !43, i64 849244, !43, i64 849248, !43, i64 849252, !43, i64 849256, !43, i64 849260, !43, i64 849264, !43, i64 849268, !43, i64 849272, !43, i64 849276, !43, i64 849280, !43, i64 849284, !40, i64 849288, !40, i64 849296, !60, i64 849304, !60, i64 849624, !60, i64 849944, !60, i64 850264, !60, i64 850584, !60, i64 850904, !60, i64 851224, !60, i64 851544, !43, i64 851864, !43, i64 851868, !43, i64 851872, !55, i64 851880, !43, i64 851888, !41, i64 851892, !43, i64 855988, !43, i64 855992, !43, i64 855996, !43, i64 856000, !43, i64 856004, !43, i64 856008, !43, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !41, i64 856056, !40, i64 856456, !41, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !43, i64 856512, !40, i64 856520, !41, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !43, i64 856640, !43, i64 856644, !43, i64 856648, !40, i64 856656, !40, i64 856664, !41, i64 856672, !41, i64 856688, !40, i64 856704, !40, i64 856712, !43, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !43, i64 856824, !40, i64 856832, !43, i64 856840, !43, i64 856844, !43, i64 856848, !43, i64 856852, !43, i64 856856, !43, i64 856860, !43, i64 856864, !40, i64 856872}
!60 = !{!"image_data", !61, i64 0, !41, i64 136, !41, i64 160, !41, i64 184, !41, i64 208, !41, i64 232, !41, i64 256, !41, i64 280, !41, i64 292, !41, i64 304}
!61 = !{!"frame_format", !43, i64 0, !43, i64 4, !62, i64 8, !41, i64 16, !41, i64 28, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !41, i64 72, !43, i64 84, !41, i64 88, !41, i64 100, !41, i64 112, !43, i64 124, !43, i64 128}
!62 = !{!"double", !41, i64 0}
!63 = !{!39, !43, i64 1228}
!64 = !{!59, !43, i64 849280}
!65 = !{!39, !40, i64 8}
!66 = !{!59, !40, i64 16}
!67 = !{!68, !43, i64 2068}
!68 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !41, i64 44, !41, i64 92, !41, i64 476, !41, i64 2012, !41, i64 2036, !43, i64 2060, !43, i64 2064, !43, i64 2068, !43, i64 2072, !43, i64 2076, !43, i64 2080, !43, i64 2084, !43, i64 2088, !43, i64 2092, !41, i64 2096, !43, i64 3120, !43, i64 3124, !43, i64 3128, !43, i64 3132, !43, i64 3136, !43, i64 3140, !43, i64 3144, !43, i64 3148, !43, i64 3152, !43, i64 3156, !43, i64 3160, !43, i64 3164, !43, i64 3168, !69, i64 3172, !43, i64 4120, !43, i64 4124}
!69 = !{!"", !43, i64 0, !43, i64 4, !44, i64 8, !44, i64 10, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !70, i64 80, !43, i64 492, !70, i64 496, !43, i64 908, !43, i64 912, !43, i64 916, !43, i64 920, !43, i64 924, !43, i64 928, !43, i64 932, !43, i64 936, !43, i64 940, !43, i64 944}
!70 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !41, i64 12, !41, i64 140, !41, i64 268, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408}
!71 = !{!39, !43, i64 172}
!72 = !{!39, !43, i64 48}
!73 = !{!59, !43, i64 848944}
!74 = !{!59, !43, i64 849228}
!75 = !{!68, !43, i64 3136}
!76 = !{!59, !43, i64 848876}
!77 = !{!39, !43, i64 176}
!78 = !{!39, !41, i64 180}
!79 = !{!39, !43, i64 184}
!80 = !{!68, !43, i64 3140}
!81 = !{!39, !43, i64 128}
!82 = !{!39, !43, i64 52}
!83 = !{!68, !43, i64 2072}
!84 = !{!68, !43, i64 2076}
!85 = !{!39, !43, i64 80}
!86 = !{!59, !40, i64 8}
!87 = !{!88, !43, i64 2040}
!88 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !41, i64 24, !41, i64 72, !41, i64 456, !41, i64 1992, !41, i64 2016, !43, i64 2040, !43, i64 2044, !43, i64 2048, !41, i64 2052, !41, i64 2084, !41, i64 2116, !43, i64 2148, !43, i64 2152, !43, i64 2156, !40, i64 2160, !43, i64 2168, !43, i64 2172, !43, i64 2176, !43, i64 2180, !43, i64 2184, !43, i64 2188, !43, i64 2192, !43, i64 2196, !43, i64 2200, !43, i64 2204, !43, i64 2208}
!89 = !{!39, !43, i64 84}
!90 = !{!68, !43, i64 2080}
!91 = !{!43, !43, i64 0}
!92 = !{!88, !43, i64 2208}
!93 = !{!39, !43, i64 220}
!94 = !{!39, !43, i64 132}
!95 = !{!88, !43, i64 2168}
!96 = !{!88, !43, i64 2172}
!97 = !{!39, !43, i64 32}
!98 = !{!88, !43, i64 2176}
!99 = !{!88, !43, i64 2180}
!100 = !{!39, !44, i64 13272}
!101 = !{!39, !44, i64 13274}
!102 = !{!39, !43, i64 56}
!103 = !{!88, !43, i64 12}
!104 = !{!39, !43, i64 168}
!105 = !{!39, !43, i64 152}
!106 = !{!88, !43, i64 2184}
!107 = !{!39, !43, i64 148}
!108 = !{!59, !43, i64 849052}
!109 = !{!39, !43, i64 224}
!110 = !{!39, !43, i64 160}
!111 = !{!88, !43, i64 2188}
!112 = !{!39, !43, i64 156}
!113 = !{!68, !43, i64 4}
!114 = !{!68, !43, i64 20}
!115 = !{!116, !43, i64 788}
!116 = !{!"inp_par", !41, i64 0, !41, i64 255, !41, i64 510, !43, i64 768, !43, i64 772, !43, i64 776, !43, i64 780, !43, i64 784, !43, i64 788, !61, i64 792, !61, i64 928, !43, i64 1064, !43, i64 1068, !117, i64 1072, !117, i64 2040, !117, i64 3008, !43, i64 3976, !43, i64 3980, !43, i64 3984, !43, i64 3988, !43, i64 3992, !43, i64 3996, !43, i64 4000, !43, i64 4004, !43, i64 4008, !43, i64 4012}
!117 = !{!"video_data_file", !41, i64 0, !41, i64 255, !41, i64 510, !43, i64 768, !43, i64 772, !61, i64 776, !43, i64 912, !43, i64 916, !43, i64 920, !43, i64 924, !43, i64 928, !43, i64 932, !43, i64 936, !43, i64 940, !43, i64 944, !43, i64 948, !43, i64 952, !40, i64 960}
!118 = !{!88, !43, i64 2200}
!119 = !{!39, !44, i64 1220}
!120 = !{!39, !44, i64 1222}
!121 = !{!39, !44, i64 1224}
!122 = !{!88, !43, i64 2044}
!123 = !{!88, !43, i64 2048}
!124 = !{!68, !43, i64 3132}
!125 = !{!68, !43, i64 3128}
!126 = !{!88, !43, i64 2152}
!127 = !{!39, !43, i64 228}
!128 = !{!59, !43, i64 849004}
!129 = !{!59, !43, i64 849008}
!130 = !{!59, !43, i64 848996}
!131 = !{!59, !43, i64 849012}
!132 = !{!59, !43, i64 849016}
!133 = !{!"header.c:ref_pic_list_mvc_modification"}
!134 = distinct !{!134, !36}
!135 = distinct !{!135, !36}
!136 = !{!39, !43, i64 232}
!137 = !{!"header.c:ref_pic_list_reordering"}
!138 = distinct !{!138, !36}
!139 = distinct !{!139, !36}
!140 = !{!"header.c:pred_weight_table"}
!141 = !{!39, !44, i64 13276}
!142 = !{!39, !44, i64 13304}
!143 = !{!68, !43, i64 36}
!144 = !{!39, !44, i64 13278}
!145 = !{!39, !44, i64 13306}
!146 = !{!39, !40, i64 13280}
!147 = !{!39, !40, i64 13288}
!148 = !{!59, !44, i64 849040}
!149 = !{!59, !44, i64 849042}
!150 = distinct !{!150, !36}
!151 = distinct !{!151, !36}
!152 = distinct !{!152, !36}
!153 = distinct !{!153, !36}
!154 = !{!39, !40, i64 248}
!155 = !{!156, !40, i64 24}
!156 = !{!"DecRefPicMarking_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 24}
!157 = distinct !{!157, !36}
!158 = !{!39, !43, i64 236}
!159 = !{!59, !43, i64 849024}
!160 = !{!39, !43, i64 240}
!161 = !{!39, !43, i64 244}
!162 = !{!156, !43, i64 0}
!163 = !{!156, !43, i64 4}
!164 = !{!156, !43, i64 8}
!165 = !{!156, !43, i64 12}
!166 = !{!156, !43, i64 16}
!167 = distinct !{!167, !36}
!168 = distinct !{!168, !36}
!169 = !{!"header.c:reset_wp_params"}
!170 = !{!44, !44, i64 0}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = !{!59, !43, i64 848952}
!174 = !{!59, !43, i64 849028}
!175 = !{!59, !43, i64 848956}
!176 = !{!59, !43, i64 849032}
!177 = !{!39, !43, i64 68}
!178 = !{!39, !43, i64 96}
!179 = !{!39, !43, i64 72}
!180 = !{!39, !43, i64 104}
!181 = !{!39, !43, i64 76}
!182 = !{!59, !43, i64 848984}
!183 = !{!59, !43, i64 848972}
!184 = !{!59, !43, i64 848976}
!185 = !{!59, !43, i64 848988}
!186 = !{!59, !43, i64 848992}
!187 = !{!68, !43, i64 2092}
!188 = !{!59, !43, i64 848980}
!189 = !{!59, !43, i64 848960}
!190 = !{!39, !43, i64 100}
!191 = distinct !{!191, !36}
!192 = !{!59, !43, i64 848964}
!193 = !{!59, !43, i64 848968}
!194 = distinct !{!194, !36}
!195 = !{!68, !43, i64 2084}
!196 = !{!68, !43, i64 2088}
!197 = !{!59, !40, i64 848736}

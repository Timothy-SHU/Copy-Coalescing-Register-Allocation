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
@.str.27 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"frame_num not equal to zero in IDR picture\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"toppoc                                %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"bottompoc                             %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"frame_num                             %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"field_pic_flag                        %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"bottom_field_flag                     %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"log2_max_frame_num_minus4             %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"log2_max_pic_order_cnt_lsb_minus4     %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"pic_order_cnt_type                    %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"num_ref_frames_in_pic_order_cnt_cycle %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"delta_pic_order_always_zero_flag      %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"offset_for_non_ref_pic                %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"offset_for_top_to_bottom_field        %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[0]               %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"offset_for_ref_frame[1]               %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"bottom_field_pic_order_in_frame_present_flag                %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[0]                %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"delta_pic_order_cnt[1]                %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"idr_flag                              %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"MaxFrameNum                           %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l0\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"SH: reordering_of_pic_nums_idc_l1\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"SH: ref_pic_list_modification_flag_l0\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l0\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l0\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"SH: modification_of_pic_nums_idc_l1\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"SH: abs_diff_view_idx_minus1_l1\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"SH: luma_log2_weight_denom\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"SH: chroma_log2_weight_denom\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l0\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l0\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l0\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"SH: chroma_weight_flag_l1\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"SH: chroma_weight_l1\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"SH: chroma_offset_l1\00", align 1
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
  br i1 %9, label %10, label %4, !llvm.loop !5

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
  br i1 %9, label %10, label %4, !llvm.loop !7

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FirstPartOfSliceHeader(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 %7, ptr %9, align 8, !tbaa !23
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %5) #11
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  store i32 %10, ptr %11, align 4, !tbaa !26
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %5) #11
  %13 = icmp sgt i32 %12, 4
  %14 = add nsw i32 %12, -5
  %15 = select i1 %13, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  store i32 %15, ptr %16, align 4, !tbaa !27
  %17 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  store i32 %15, ptr %17, align 8, !tbaa !28
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %5) #11
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 73
  store i32 %18, ptr %19, align 4, !tbaa !33
  %20 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 105
  %21 = load i32, ptr %20, align 8, !tbaa !34
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #11
  br label %25

25:                                               ; preds = %1, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %1 ]
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  store i32 %26, ptr %27, align 8
  %28 = load ptr, ptr @p_Dec, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.decoder_params, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !23
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RestOfSliceHeader(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !37
  %12 = add i32 %11, 4
  %13 = tail call i32 @u_v(i32 noundef %12, ptr noundef nonnull @.str.4, ptr noundef %9) #11
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  store i32 %13, ptr %14, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 40
  store i32 %13, ptr %19, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 92
  store i32 0, ptr %20, align 4, !tbaa !44
  br label %21

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 30
  %23 = load i32, ptr %22, align 4, !tbaa !45
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 0, ptr %26, align 4, !tbaa !46
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  store i32 0, ptr %27, align 8, !tbaa !47
  br label %42

28:                                               ; preds = %21
  %29 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %9) #11
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  store i32 %29, ptr %30, align 8, !tbaa !47
  %31 = icmp eq i32 %29, 0
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  br i1 %31, label %40, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %9) #11
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %32, align 4, !tbaa !48
  %36 = and i32 %34, 255
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 %38, ptr %39, align 4, !tbaa !46
  br label %42

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 0, ptr %41, align 4, !tbaa !46
  store i8 0, ptr %32, align 4, !tbaa !48
  br label %42

42:                                               ; preds = %33, %40, %25
  %43 = phi i32 [ %38, %33 ], [ 0, %40 ], [ 0, %25 ]
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  store i32 %43, ptr %44, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 31
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %50 = load i32, ptr %49, align 8, !tbaa !47
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i1 [ false, %42 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  store i32 %54, ptr %55, align 8, !tbaa !51
  %56 = load i32, ptr %15, align 8, !tbaa !42
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %9) #11
  %60 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 7
  store i32 %59, ptr %60, align 4, !tbaa !52
  br label %61

61:                                               ; preds = %58, %52
  %62 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 19
  %63 = load i32, ptr %62, align 4, !tbaa !53
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 20
  %67 = load i32, ptr %66, align 4, !tbaa !54
  %68 = add i32 %67, 4
  %69 = tail call i32 @u_v(i32 noundef %68, ptr noundef nonnull @.str.8, ptr noundef %9) #11
  %70 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 14
  store i32 %69, ptr %70, align 8, !tbaa !55
  %71 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %72, i64 0, i32 11
  %74 = load i32, ptr %73, align 8, !tbaa !57
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %78 = load i32, ptr %77, align 8, !tbaa !47
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call i32 @se_v(ptr noundef nonnull @.str.9, ptr noundef %9) #11
  br label %82

82:                                               ; preds = %65, %76, %80
  %83 = phi i32 [ %81, %80 ], [ 0, %76 ], [ 0, %65 ]
  %84 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 15
  store i32 %83, ptr %84, align 4, !tbaa !59
  %85 = load i32, ptr %62, align 4, !tbaa !53
  br label %86

86:                                               ; preds = %82, %61
  %87 = phi i32 [ %85, %82 ], [ %63, %61 ]
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 21
  %91 = load i32, ptr %90, align 4, !tbaa !60
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = tail call i32 @se_v(ptr noundef nonnull @.str.10, ptr noundef %9) #11
  %95 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  store i32 %94, ptr %95, align 8, !tbaa !61
  %96 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %97, i64 0, i32 11
  %99 = load i32, ptr %98, align 8, !tbaa !57
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %103 = load i32, ptr %102, align 8, !tbaa !47
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = tail call i32 @se_v(ptr noundef nonnull @.str.11, ptr noundef %9) #11
  br label %109

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  store i32 0, ptr %108, align 8, !tbaa !61
  br label %109

109:                                              ; preds = %93, %101, %105, %107
  %110 = phi i32 [ 0, %107 ], [ %106, %105 ], [ 0, %101 ], [ 0, %93 ]
  %111 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16, i64 1
  store i32 %110, ptr %111, align 4, !tbaa !61
  br label %112

112:                                              ; preds = %109, %86
  %113 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !56
  %115 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %114, i64 0, i32 31
  %116 = load i32, ptr %115, align 8, !tbaa !62
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef %9) #11
  %120 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  store i32 %119, ptr %120, align 4, !tbaa !63
  br label %121

121:                                              ; preds = %118, %112
  %122 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %123 = load i32, ptr %122, align 4, !tbaa !27
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = tail call i32 @u_1(ptr noundef nonnull @.str.13, ptr noundef %9) #11
  %127 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  store i32 %126, ptr %127, align 4, !tbaa !64
  br label %128

128:                                              ; preds = %125, %121
  %129 = load ptr, ptr %113, align 8, !tbaa !56
  %130 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %129, i64 0, i32 21
  %131 = load i32, ptr %130, align 8, !tbaa !65
  %132 = add nsw i32 %131, 1
  %133 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  store i32 %132, ptr %133, align 8, !tbaa !61
  %134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %129, i64 0, i32 22
  %135 = load i32, ptr %134, align 4, !tbaa !66
  %136 = add nsw i32 %135, 1
  %137 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  store i32 %136, ptr %137, align 4, !tbaa !61
  %138 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %139 = load i32, ptr %138, align 8, !tbaa !28
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
  store i32 %145, ptr %133, align 8, !tbaa !61
  %146 = load i32, ptr %138, align 8, !tbaa !28
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef %9) #11
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %137, align 4, !tbaa !61
  br label %151

151:                                              ; preds = %128, %140, %148, %143
  %152 = load i32, ptr %122, align 4, !tbaa !27
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  store i32 0, ptr %137, align 4, !tbaa !61
  br label %155

155:                                              ; preds = %154, %151
  %156 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !67
  %158 = icmp ult i32 %157, 2
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  tail call fastcc void @ref_pic_list_mvc_modification(ptr noundef nonnull %0) #12
  br label %161

160:                                              ; preds = %155
  tail call fastcc void @ref_pic_list_reordering(ptr noundef nonnull %0) #12
  br label %161

161:                                              ; preds = %160, %159
  %162 = load i32, ptr %122, align 4, !tbaa !27
  switch i32 %162, label %163 [
    i32 0, label %165
    i32 3, label %165
    i32 1, label %169
  ]

163:                                              ; preds = %161
  %164 = load ptr, ptr %113, align 8, !tbaa !56
  br label %174

165:                                              ; preds = %161, %161
  %166 = load ptr, ptr %113, align 8, !tbaa !56
  %167 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %166, i64 0, i32 23
  %168 = load i32, ptr %167, align 8, !tbaa !68
  br label %178

169:                                              ; preds = %161
  %170 = load ptr, ptr %113, align 8, !tbaa !56
  %171 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %170, i64 0, i32 24
  %172 = load i32, ptr %171, align 4, !tbaa !69
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
  store i16 %181, ptr %182, align 8, !tbaa !70
  %183 = icmp eq i32 %162, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %179, i64 0, i32 24
  %186 = load i32, ptr %185, align 4, !tbaa !69
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %184, %178
  %189 = phi i1 [ false, %178 ], [ %187, %184 ]
  %190 = zext i1 %189 to i16
  %191 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 97
  store i16 %190, ptr %191, align 2, !tbaa !71
  %192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %179, i64 0, i32 23
  %193 = load i32, ptr %192, align 8, !tbaa !68
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %188
  %196 = load i32, ptr %138, align 8, !tbaa !28
  switch i32 %196, label %197 [
    i32 0, label %204
    i32 3, label %204
  ]

197:                                              ; preds = %195, %188
  %198 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %179, i64 0, i32 24
  %199 = load i32, ptr %198, align 4, !tbaa !69
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, ptr %138, align 8, !tbaa !28
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %195, %195, %201
  tail call fastcc void @pred_weight_table(ptr noundef nonnull %0) #12
  br label %205

205:                                              ; preds = %204, %201, %197
  %206 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %207 = load i32, ptr %206, align 8, !tbaa !72
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  tail call void @dec_ref_pic_marking(ptr noundef nonnull %2, ptr noundef %9, ptr noundef nonnull %0) #12
  br label %210

210:                                              ; preds = %209, %205
  %211 = load ptr, ptr %113, align 8, !tbaa !56
  %212 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %211, i64 0, i32 3
  %213 = load i32, ptr %212, align 4, !tbaa !73
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i32, ptr %138, align 8, !tbaa !28
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
  store i32 %220, ptr %221, align 8, !tbaa !74
  %222 = tail call i32 @se_v(ptr noundef nonnull @.str.18, ptr noundef %9) #11
  %223 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 30
  store i32 %222, ptr %223, align 8, !tbaa !75
  %224 = load ptr, ptr %113, align 8, !tbaa !56
  %225 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %224, i64 0, i32 25
  %226 = load i32, ptr %225, align 8, !tbaa !76
  %227 = add i32 %222, 26
  %228 = add i32 %227, %226
  %229 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 29
  store i32 %228, ptr %229, align 4, !tbaa !77
  %230 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 67
  %231 = load i32, ptr %230, align 4, !tbaa !78
  %232 = sub nsw i32 0, %231
  %233 = icmp slt i32 %228, %232
  %234 = icmp sgt i32 %228, 51
  %235 = or i1 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %219
  tail call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #11
  br label %237

237:                                              ; preds = %219, %236
  %238 = load i32, ptr %138, align 8, !tbaa !28
  %239 = add i32 %238, -3
  %240 = icmp ult i32 %239, 2
  br i1 %240, label %241, label %257

241:                                              ; preds = %237
  %242 = icmp eq i32 %238, 3
  br i1 %242, label %243, label %246

243:                                              ; preds = %241
  %244 = tail call i32 @u_1(ptr noundef nonnull @.str.20, ptr noundef %9) #11
  %245 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 48
  store i32 %244, ptr %245, align 8, !tbaa !79
  br label %246

246:                                              ; preds = %243, %241
  %247 = tail call i32 @se_v(ptr noundef nonnull @.str.21, ptr noundef %9) #11
  %248 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 32
  store i32 %247, ptr %248, align 8, !tbaa !80
  %249 = load ptr, ptr %113, align 8, !tbaa !56
  %250 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %249, i64 0, i32 26
  %251 = load i32, ptr %250, align 4, !tbaa !81
  %252 = add i32 %247, 26
  %253 = add i32 %252, %251
  %254 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 31
  store i32 %253, ptr %254, align 4, !tbaa !82
  %255 = icmp ugt i32 %253, 51
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  tail call void @error(ptr noundef nonnull @.str.22, i32 noundef 500) #11
  br label %257

257:                                              ; preds = %237, %246, %256
  %258 = load ptr, ptr %5, align 8, !tbaa !36
  %259 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %258, i64 0, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !83
  %261 = icmp ugt i32 %260, 109
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %258, i64 0, i32 5
  %264 = load i32, ptr %263, align 4, !tbaa !84
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %268

266:                                              ; preds = %257
  %267 = icmp eq i32 %260, 44
  br i1 %267, label %268, label %272

268:                                              ; preds = %262, %266
  %269 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 8
  %270 = load i32, ptr %269, align 4, !tbaa !85
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %299

272:                                              ; preds = %262, %268, %266
  %273 = load ptr, ptr %113, align 8, !tbaa !56
  %274 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %273, i64 0, i32 29
  %275 = load i32, ptr %274, align 8, !tbaa !88
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %295, label %277

277:                                              ; preds = %272
  %278 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %9) #11
  %279 = trunc i32 %278 to i16
  %280 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 %279, ptr %280, align 4, !tbaa !89
  %281 = and i32 %278, 65535
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %292, label %283

283:                                              ; preds = %277
  %284 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %9) #11
  %285 = trunc i32 %284 to i16
  %286 = shl i16 %285, 1
  %287 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 %286, ptr %287, align 2, !tbaa !90
  %288 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %9) #11
  %289 = trunc i32 %288 to i16
  %290 = shl i16 %289, 1
  %291 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 %290, ptr %291, align 8, !tbaa !91
  br label %320

292:                                              ; preds = %277
  %293 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %293, align 8, !tbaa !91
  %294 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %294, align 2, !tbaa !90
  br label %320

295:                                              ; preds = %272
  %296 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %296, align 8, !tbaa !91
  %297 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %297, align 2, !tbaa !90
  %298 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 0, ptr %298, align 4, !tbaa !89
  br label %320

299:                                              ; preds = %268
  %300 = load ptr, ptr %113, align 8, !tbaa !56
  %301 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %300, i64 0, i32 29
  %302 = load i32, ptr %301, align 8, !tbaa !88
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %316, label %304

304:                                              ; preds = %299
  %305 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %9) #11
  %306 = trunc i32 %305 to i16
  %307 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 %306, ptr %307, align 4, !tbaa !89
  %308 = and i32 %305, 65535
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %316, label %310

310:                                              ; preds = %304
  %311 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %9) #11
  %312 = trunc i32 %311 to i16
  %313 = shl i16 %312, 1
  %314 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 %313, ptr %314, align 2, !tbaa !90
  %315 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %9) #11
  br label %316

316:                                              ; preds = %304, %310, %299
  %317 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 1, ptr %317, align 4, !tbaa !89
  %318 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %318, align 8, !tbaa !91
  %319 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %319, align 2, !tbaa !90
  br label %320

320:                                              ; preds = %295, %292, %283, %316
  %321 = load ptr, ptr %113, align 8, !tbaa !56
  %322 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %321, i64 0, i32 12
  %323 = load i32, ptr %322, align 4, !tbaa !92
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %350, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %321, i64 0, i32 13
  %327 = load i32, ptr %326, align 8, !tbaa !93
  %328 = add i32 %327, -3
  %329 = icmp ult i32 %328, 3
  br i1 %329, label %330, label %350

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 29
  %332 = load i32, ptr %331, align 4, !tbaa !94
  %333 = add i32 %332, 1
  %334 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 28
  %335 = load i32, ptr %334, align 4, !tbaa !95
  %336 = add i32 %335, 1
  %337 = mul i32 %336, %333
  %338 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %321, i64 0, i32 18
  %339 = load i32, ptr %338, align 8, !tbaa !96
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
  store i32 %348, ptr %349, align 4, !tbaa !97
  br label %350

350:                                              ; preds = %330, %325, %320
  %351 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 55
  %352 = load i32, ptr %351, align 4, !tbaa !98
  %353 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %354 = load i32, ptr %353, align 8, !tbaa !47
  %355 = add i32 %354, 1
  %356 = udiv i32 %352, %355
  %357 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 56
  store i32 %356, ptr %357, align 8, !tbaa !99
  %358 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 53
  %359 = load i32, ptr %358, align 4, !tbaa !100
  %360 = mul i32 %359, %356
  %361 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 57
  store i32 %360, ptr %361, align 4, !tbaa !101
  %362 = mul i32 %359, %352
  %363 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 58
  store i32 %362, ptr %363, align 8, !tbaa !102
  %364 = load ptr, ptr @p_Dec, align 8, !tbaa !22
  %365 = getelementptr inbounds %struct.decoder_params, ptr %364, i64 0, i32 3
  %366 = load i32, ptr %365, align 8, !tbaa !23
  ret i32 %366
}

; Function Attrs: optsize
declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ref_pic_list_mvc_modification(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #11
  %6 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !28
  %8 = srem i32 %7, 5
  switch i32 %8, label %9 [
    i32 2, label %38
    i32 4, label %38
  ]

9:                                                ; preds = %1
  %10 = tail call i32 @u_1(ptr noundef nonnull @.str.66, ptr noundef %5) #11
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  store i32 %10, ptr %11, align 8, !tbaa !61
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
  %20 = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %5) #11
  %21 = load ptr, ptr %14, align 8, !tbaa !22
  %22 = getelementptr inbounds i32, ptr %21, i64 %19
  store i32 %20, ptr %22, align 4, !tbaa !61
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
  %30 = phi ptr [ @.str.60, %18 ], [ @.str.61, %24 ], [ @.str.68, %26 ]
  %31 = phi ptr [ %17, %18 ], [ %16, %24 ], [ %15, %26 ]
  %32 = tail call i32 @ue_v(ptr noundef nonnull %30, ptr noundef %5) #11
  %33 = load ptr, ptr %31, align 8, !tbaa !22
  %34 = getelementptr inbounds i32, ptr %33, i64 %19
  store i32 %32, ptr %34, align 4, !tbaa !61
  br label %35

35:                                               ; preds = %29, %26
  %36 = add nuw i64 %19, 1
  %37 = icmp eq i32 %20, 3
  br i1 %37, label %38, label %18, !llvm.loop !103

38:                                               ; preds = %35, %1, %1, %9
  %39 = load i32, ptr %6, align 8, !tbaa !28
  %40 = srem i32 %39, 5
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %5) #11
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  store i32 %43, ptr %44, align 4, !tbaa !61
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
  %53 = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %5) #11
  %54 = load ptr, ptr %47, align 8, !tbaa !22
  %55 = getelementptr inbounds i32, ptr %54, i64 %52
  store i32 %53, ptr %55, align 4, !tbaa !61
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
  %63 = phi ptr [ @.str.64, %51 ], [ @.str.65, %57 ], [ @.str.70, %59 ]
  %64 = phi ptr [ %50, %51 ], [ %49, %57 ], [ %48, %59 ]
  %65 = tail call i32 @ue_v(ptr noundef nonnull %63, ptr noundef %5) #11
  %66 = load ptr, ptr %64, align 8, !tbaa !22
  %67 = getelementptr inbounds i32, ptr %66, i64 %52
  store i32 %65, ptr %67, align 4, !tbaa !61
  br label %68

68:                                               ; preds = %62, %59
  %69 = add nuw i64 %52, 1
  %70 = icmp eq i32 %53, 3
  br i1 %70, label %71, label %51, !llvm.loop !104

71:                                               ; preds = %68, %42, %38
  %72 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %73 = load i32, ptr %72, align 4, !tbaa !63
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %6, align 8, !tbaa !28
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = load i32, ptr %80, align 4, !tbaa !61
  %82 = add nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 50
  store i32 %82, ptr %83, align 8, !tbaa !105
  br label %84

84:                                               ; preds = %78, %75, %71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ref_pic_list_reordering(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #11
  %6 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !28
  switch i32 %7, label %8 [
    i32 2, label %61
    i32 4, label %61
  ]

8:                                                ; preds = %1
  %9 = tail call i32 @u_1(ptr noundef nonnull @.str.58, ptr noundef %5) #11
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  store i32 %9, ptr %10, align 8, !tbaa !61
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  br label %16

16:                                               ; preds = %12, %30
  %17 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.59, ptr noundef %5) #11
  %19 = load ptr, ptr %13, align 8, !tbaa !22
  %20 = getelementptr inbounds i32, ptr %19, i64 %17
  store i32 %18, ptr %20, align 4, !tbaa !61
  %21 = icmp ult i32 %18, 2
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %18, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %22, %16
  %25 = phi ptr [ @.str.60, %16 ], [ @.str.61, %22 ]
  %26 = phi ptr [ %15, %16 ], [ %14, %22 ]
  %27 = tail call i32 @ue_v(ptr noundef nonnull %25, ptr noundef %5) #11
  %28 = load ptr, ptr %26, align 8, !tbaa !22
  %29 = getelementptr inbounds i32, ptr %28, i64 %17
  store i32 %27, ptr %29, align 4, !tbaa !61
  br label %30

30:                                               ; preds = %24, %22
  %31 = add nuw i64 %17, 1
  %32 = icmp eq i32 %18, 3
  br i1 %32, label %33, label %16, !llvm.loop !106

33:                                               ; preds = %30, %8
  %34 = load i32, ptr %6, align 8, !tbaa !28
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %5) #11
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  store i32 %37, ptr %38, align 4, !tbaa !61
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  br label %44

44:                                               ; preds = %40, %58
  %45 = phi i64 [ 0, %40 ], [ %59, %58 ]
  %46 = tail call i32 @ue_v(ptr noundef nonnull @.str.63, ptr noundef %5) #11
  %47 = load ptr, ptr %41, align 8, !tbaa !22
  %48 = getelementptr inbounds i32, ptr %47, i64 %45
  store i32 %46, ptr %48, align 4, !tbaa !61
  %49 = icmp ult i32 %46, 2
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = icmp eq i32 %46, 2
  br i1 %51, label %52, label %58

52:                                               ; preds = %50, %44
  %53 = phi ptr [ @.str.64, %44 ], [ @.str.65, %50 ]
  %54 = phi ptr [ %43, %44 ], [ %42, %50 ]
  %55 = tail call i32 @ue_v(ptr noundef nonnull %53, ptr noundef %5) #11
  %56 = load ptr, ptr %54, align 8, !tbaa !22
  %57 = getelementptr inbounds i32, ptr %56, i64 %45
  store i32 %55, ptr %57, align 4, !tbaa !61
  br label %58

58:                                               ; preds = %52, %50
  %59 = add nuw i64 %45, 1
  %60 = icmp eq i32 %46, 3
  br i1 %60, label %61, label %44, !llvm.loop !107

61:                                               ; preds = %58, %1, %1, %36, %33
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %63 = load i32, ptr %62, align 4, !tbaa !63
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %6, align 8, !tbaa !28
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = load i32, ptr %70, align 4, !tbaa !61
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 50
  store i32 %72, ptr %73, align 8, !tbaa !105
  br label %74

74:                                               ; preds = %68, %65, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pred_weight_table(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %7) #11
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  store i16 %9, ptr %10, align 4, !tbaa !108
  %11 = and i32 %8, 65535
  %12 = icmp eq i32 %11, 0
  %13 = add nsw i32 %11, -1
  %14 = shl nuw i32 1, %13
  %15 = trunc i32 %14 to i16
  %16 = select i1 %12, i16 0, i16 %15
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 103
  store i16 %16, ptr %17, align 8, !tbaa !109
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !110
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %7) #11
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  store i16 %23, ptr %24, align 2, !tbaa !111
  %25 = and i32 %22, 65535
  %26 = icmp eq i32 %25, 0
  %27 = add nsw i32 %25, -1
  %28 = shl nuw i32 1, %27
  %29 = trunc i32 %28 to i16
  %30 = select i1 %26, i16 0, i16 %29
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 104
  store i16 %30, ptr %31, align 2, !tbaa !112
  br label %32

32:                                               ; preds = %21, %1
  tail call fastcc void @reset_wp_params(ptr noundef nonnull %0) #12
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !61
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
  %44 = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef %7) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @se_v(ptr noundef nonnull @.str.74, ptr noundef %7) #11
  %48 = load ptr, ptr %37, align 8, !tbaa !113
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = getelementptr inbounds ptr, ptr %49, i64 %43
  %51 = load ptr, ptr %50, align 8, !tbaa !22
  store i32 %47, ptr %51, align 4, !tbaa !61
  %52 = tail call i32 @se_v(ptr noundef nonnull @.str.75, ptr noundef %7) #11
  %53 = load ptr, ptr %38, align 8, !tbaa !114
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = getelementptr inbounds ptr, ptr %54, i64 %43
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = load i16, ptr %39, align 8, !tbaa !115
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %58, -8
  %60 = shl i32 %52, %59
  store i32 %60, ptr %56, align 4, !tbaa !61
  br label %73

61:                                               ; preds = %42
  %62 = load i16, ptr %10, align 4, !tbaa !108
  %63 = zext nneg i16 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = load ptr, ptr %37, align 8, !tbaa !113
  %66 = load ptr, ptr %65, align 8, !tbaa !22
  %67 = getelementptr inbounds ptr, ptr %66, i64 %43
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  store i32 %64, ptr %68, align 4, !tbaa !61
  %69 = load ptr, ptr %38, align 8, !tbaa !114
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = getelementptr inbounds ptr, ptr %70, i64 %43
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  store i32 0, ptr %72, align 4, !tbaa !61
  br label %73

73:                                               ; preds = %61, %46
  %74 = load i32, ptr %18, align 4, !tbaa !110
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %115, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef %7) #11
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %76, %112
  %80 = phi i64 [ 1, %76 ], [ %113, %112 ]
  br i1 %78, label %98, label %81

81:                                               ; preds = %79
  %82 = tail call i32 @se_v(ptr noundef nonnull @.str.77, ptr noundef %7) #11
  %83 = load ptr, ptr %37, align 8, !tbaa !113
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = getelementptr inbounds ptr, ptr %84, i64 %43
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = getelementptr inbounds i32, ptr %86, i64 %80
  store i32 %82, ptr %87, align 4, !tbaa !61
  %88 = tail call i32 @se_v(ptr noundef nonnull @.str.78, ptr noundef %7) #11
  %89 = load ptr, ptr %38, align 8, !tbaa !114
  %90 = load ptr, ptr %89, align 8, !tbaa !22
  %91 = getelementptr inbounds ptr, ptr %90, i64 %43
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = getelementptr inbounds i32, ptr %92, i64 %80
  %94 = load i16, ptr %40, align 2, !tbaa !116
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 %95, -8
  %97 = shl i32 %88, %96
  store i32 %97, ptr %93, align 4, !tbaa !61
  br label %112

98:                                               ; preds = %79
  %99 = load i16, ptr %41, align 2, !tbaa !111
  %100 = zext nneg i16 %99 to i32
  %101 = shl nuw i32 1, %100
  %102 = load ptr, ptr %37, align 8, !tbaa !113
  %103 = load ptr, ptr %102, align 8, !tbaa !22
  %104 = getelementptr inbounds ptr, ptr %103, i64 %43
  %105 = load ptr, ptr %104, align 8, !tbaa !22
  %106 = getelementptr inbounds i32, ptr %105, i64 %80
  store i32 %101, ptr %106, align 4, !tbaa !61
  %107 = load ptr, ptr %38, align 8, !tbaa !114
  %108 = load ptr, ptr %107, align 8, !tbaa !22
  %109 = getelementptr inbounds ptr, ptr %108, i64 %43
  %110 = load ptr, ptr %109, align 8, !tbaa !22
  %111 = getelementptr inbounds i32, ptr %110, i64 %80
  store i32 0, ptr %111, align 4, !tbaa !61
  br label %112

112:                                              ; preds = %81, %98
  %113 = add nuw nsw i64 %80, 1
  %114 = icmp eq i64 %113, 3
  br i1 %114, label %115, label %79, !llvm.loop !117

115:                                              ; preds = %112, %73
  %116 = add nuw nsw i64 %43, 1
  %117 = load i32, ptr %33, align 8, !tbaa !61
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %42, label %120, !llvm.loop !118

120:                                              ; preds = %115, %32
  %121 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %122 = load i32, ptr %121, align 8, !tbaa !28
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %226

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !56
  %127 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %126, i64 0, i32 24
  %128 = load i32, ptr %127, align 4, !tbaa !69
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %226

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %132 = load i32, ptr %131, align 4, !tbaa !61
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
  %142 = tail call i32 @u_1(ptr noundef nonnull @.str.79, ptr noundef %7) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %140
  %145 = tail call i32 @se_v(ptr noundef nonnull @.str.80, ptr noundef %7) #11
  %146 = load ptr, ptr %135, align 8, !tbaa !113
  %147 = getelementptr inbounds ptr, ptr %146, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !22
  %149 = getelementptr inbounds ptr, ptr %148, i64 %141
  %150 = load ptr, ptr %149, align 8, !tbaa !22
  store i32 %145, ptr %150, align 4, !tbaa !61
  %151 = tail call i32 @se_v(ptr noundef nonnull @.str.81, ptr noundef %7) #11
  %152 = load ptr, ptr %136, align 8, !tbaa !114
  %153 = getelementptr inbounds ptr, ptr %152, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !22
  %155 = getelementptr inbounds ptr, ptr %154, i64 %141
  %156 = load ptr, ptr %155, align 8, !tbaa !22
  %157 = load i16, ptr %137, align 8, !tbaa !115
  %158 = sext i16 %157 to i32
  %159 = add nsw i32 %158, -8
  %160 = shl i32 %151, %159
  store i32 %160, ptr %156, align 4, !tbaa !61
  br label %175

161:                                              ; preds = %140
  %162 = load i16, ptr %10, align 4, !tbaa !108
  %163 = zext nneg i16 %162 to i32
  %164 = shl nuw i32 1, %163
  %165 = load ptr, ptr %135, align 8, !tbaa !113
  %166 = getelementptr inbounds ptr, ptr %165, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !22
  %168 = getelementptr inbounds ptr, ptr %167, i64 %141
  %169 = load ptr, ptr %168, align 8, !tbaa !22
  store i32 %164, ptr %169, align 4, !tbaa !61
  %170 = load ptr, ptr %136, align 8, !tbaa !114
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !22
  %173 = getelementptr inbounds ptr, ptr %172, i64 %141
  %174 = load ptr, ptr %173, align 8, !tbaa !22
  store i32 0, ptr %174, align 4, !tbaa !61
  br label %175

175:                                              ; preds = %161, %144
  %176 = load i32, ptr %18, align 4, !tbaa !110
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %221, label %178

178:                                              ; preds = %175
  %179 = tail call i32 @u_1(ptr noundef nonnull @.str.82, ptr noundef %7) #11
  %180 = icmp eq i32 %179, 0
  br label %181

181:                                              ; preds = %178, %218
  %182 = phi i64 [ 1, %178 ], [ %219, %218 ]
  br i1 %180, label %202, label %183

183:                                              ; preds = %181
  %184 = tail call i32 @se_v(ptr noundef nonnull @.str.83, ptr noundef %7) #11
  %185 = load ptr, ptr %135, align 8, !tbaa !113
  %186 = getelementptr inbounds ptr, ptr %185, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !22
  %188 = getelementptr inbounds ptr, ptr %187, i64 %141
  %189 = load ptr, ptr %188, align 8, !tbaa !22
  %190 = getelementptr inbounds i32, ptr %189, i64 %182
  store i32 %184, ptr %190, align 4, !tbaa !61
  %191 = tail call i32 @se_v(ptr noundef nonnull @.str.84, ptr noundef %7) #11
  %192 = load ptr, ptr %136, align 8, !tbaa !114
  %193 = getelementptr inbounds ptr, ptr %192, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !22
  %195 = getelementptr inbounds ptr, ptr %194, i64 %141
  %196 = load ptr, ptr %195, align 8, !tbaa !22
  %197 = getelementptr inbounds i32, ptr %196, i64 %182
  %198 = load i16, ptr %138, align 2, !tbaa !116
  %199 = sext i16 %198 to i32
  %200 = add nsw i32 %199, -8
  %201 = shl i32 %191, %200
  store i32 %201, ptr %197, align 4, !tbaa !61
  br label %218

202:                                              ; preds = %181
  %203 = load i16, ptr %139, align 2, !tbaa !111
  %204 = zext nneg i16 %203 to i32
  %205 = shl nuw i32 1, %204
  %206 = load ptr, ptr %135, align 8, !tbaa !113
  %207 = getelementptr inbounds ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !22
  %209 = getelementptr inbounds ptr, ptr %208, i64 %141
  %210 = load ptr, ptr %209, align 8, !tbaa !22
  %211 = getelementptr inbounds i32, ptr %210, i64 %182
  store i32 %205, ptr %211, align 4, !tbaa !61
  %212 = load ptr, ptr %136, align 8, !tbaa !114
  %213 = getelementptr inbounds ptr, ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !22
  %215 = getelementptr inbounds ptr, ptr %214, i64 %141
  %216 = load ptr, ptr %215, align 8, !tbaa !22
  %217 = getelementptr inbounds i32, ptr %216, i64 %182
  store i32 0, ptr %217, align 4, !tbaa !61
  br label %218

218:                                              ; preds = %183, %202
  %219 = add nuw nsw i64 %182, 1
  %220 = icmp eq i64 %219, 3
  br i1 %220, label %221, label %181, !llvm.loop !119

221:                                              ; preds = %218, %175
  %222 = add nuw nsw i64 %141, 1
  %223 = load i32, ptr %131, align 4, !tbaa !61
  %224 = sext i32 %223 to i64
  %225 = icmp slt i64 %222, %224
  br i1 %225, label %140, label %226, !llvm.loop !120

226:                                              ; preds = %221, %130, %124, %120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dec_ref_pic_marking(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  store ptr %10, ptr %4, align 8, !tbaa !121
  tail call void @free(ptr noundef nonnull %8) #11
  %11 = load ptr, ptr %4, align 8, !tbaa !121
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !124

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %1) #11
  %19 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 51
  store i32 %18, ptr %19, align 4, !tbaa !125
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 60
  store i32 %18, ptr %20, align 8, !tbaa !126
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %1) #11
  %22 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 52
  store i32 %21, ptr %22, align 8, !tbaa !127
  br label %56

23:                                               ; preds = %13
  %24 = tail call i32 @u_1(ptr noundef nonnull @.str.29, ptr noundef %1) #11
  %25 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 53
  store i32 %24, ptr %25, align 4, !tbaa !128
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %23, %53
  %28 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  %29 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !122
  %30 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %1) #11
  store i32 %30, ptr %28, align 8, !tbaa !129
  switch i32 %30, label %43 [
    i32 3, label %31
    i32 1, label %31
    i32 2, label %34
    i32 6, label %37
    i32 4, label %40
  ]

31:                                               ; preds = %27, %27
  %32 = tail call i32 @ue_v(ptr noundef nonnull @.str.31, ptr noundef %1) #11
  %33 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !130
  switch i32 %30, label %43 [
    i32 2, label %34
    i32 3, label %37
  ]

34:                                               ; preds = %27, %31
  %35 = tail call i32 @ue_v(ptr noundef nonnull @.str.32, ptr noundef %1) #11
  %36 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !131
  br label %43

37:                                               ; preds = %31, %27
  %38 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %1) #11
  %39 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !132
  br label %43

40:                                               ; preds = %27
  %41 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %1) #11
  %42 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 4
  store i32 %41, ptr %42, align 8, !tbaa !133
  br label %43

43:                                               ; preds = %37, %34, %27, %31, %40
  %44 = load ptr, ptr %4, align 8, !tbaa !121
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %49, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !122
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %46, !llvm.loop !134

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %47, i64 0, i32 5
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi ptr [ %52, %51 ], [ %4, %43 ]
  store ptr %28, ptr %54, align 8, !tbaa !22
  %55 = icmp eq i32 %30, 0
  br i1 %55, label %56, label %27, !llvm.loop !135

56:                                               ; preds = %53, %23, %17
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_poc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 4, !tbaa !54
  %7 = add i32 %6, 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !53
  switch i32 %10, label %336 [
    i32 0, label %11
    i32 1, label %112
    i32 2, label %262
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 0, ptr %16, align 8, !tbaa !136
  br label %33

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %19 = load i32, ptr %18, align 4, !tbaa !137
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  %23 = load i32, ptr %22, align 4, !tbaa !138
  br label %38

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 62
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 0, ptr %28, align 8, !tbaa !136
  br i1 %27, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !140
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  store i32 %31, ptr %32, align 4, !tbaa !138
  br label %38

33:                                               ; preds = %24, %15
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  store i32 0, ptr %34, align 4, !tbaa !138
  %35 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  br label %52

38:                                               ; preds = %21, %29
  %39 = phi i32 [ %23, %21 ], [ %31, %29 ]
  %40 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %41 = load i32, ptr %40, align 8, !tbaa !55
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
  %50 = load i32, ptr %49, align 8, !tbaa !136
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
  %63 = load i32, ptr %62, align 8, !tbaa !136
  %64 = sub i32 %63, %8
  br label %68

65:                                               ; preds = %57, %52
  %66 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %67 = load i32, ptr %66, align 8, !tbaa !136
  br label %68

68:                                               ; preds = %61, %65, %48
  %69 = phi i32 [ %64, %61 ], [ %67, %65 ], [ %51, %48 ]
  %70 = phi ptr [ %53, %61 ], [ %53, %65 ], [ %42, %48 ]
  %71 = phi i32 [ %54, %61 ], [ %54, %65 ], [ %41, %48 ]
  %72 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 17
  store i32 %69, ptr %72, align 8, !tbaa !141
  %73 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %74 = load i32, ptr %73, align 8, !tbaa !47
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = add i32 %69, %71
  %78 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %77, ptr %78, align 4, !tbaa !140
  %79 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 15
  %80 = load i32, ptr %79, align 4, !tbaa !59
  %81 = add nsw i32 %80, %77
  %82 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %81, ptr %82, align 8, !tbaa !142
  %83 = icmp sgt i32 %80, 0
  %84 = select i1 %83, i32 %77, i32 %81
  %85 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %84, ptr %85, align 8, !tbaa !143
  br label %96

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %88 = load i8, ptr %87, align 4, !tbaa !48
  %89 = icmp eq i8 %88, 0
  %90 = add i32 %69, %71
  %91 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  br i1 %89, label %92, label %94

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %90, ptr %93, align 4, !tbaa !140
  store i32 %90, ptr %91, align 8, !tbaa !143
  br label %96

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %90, ptr %95, align 8, !tbaa !142
  store i32 %90, ptr %91, align 8, !tbaa !143
  br label %96

96:                                               ; preds = %92, %94, %76
  %97 = phi i32 [ %90, %92 ], [ %90, %94 ], [ %84, %76 ]
  %98 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %97, ptr %98, align 4, !tbaa !144
  %99 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 50
  store i32 %97, ptr %99, align 8, !tbaa !145
  %100 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %101 = load i32, ptr %100, align 4, !tbaa !41
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %103 = load i32, ptr %102, align 4, !tbaa !146
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store i32 %101, ptr %102, align 4, !tbaa !146
  br label %106

106:                                              ; preds = %105, %96
  %107 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !72
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %336, label %110

110:                                              ; preds = %106
  store i32 %71, ptr %70, align 4, !tbaa !138
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 %69, ptr %111, align 8, !tbaa !136
  br label %336

112:                                              ; preds = %2
  %113 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !42
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 0, ptr %117, align 8, !tbaa !147
  %118 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %119 = load i32, ptr %118, align 4, !tbaa !41
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %146, label %121

121:                                              ; preds = %116
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #11
  br label %146

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %124 = load i32, ptr %123, align 4, !tbaa !137
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 0, ptr %127, align 4, !tbaa !148
  %128 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 0, ptr %128, align 4, !tbaa !146
  br label %142

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %131 = load i32, ptr %130, align 4, !tbaa !146
  %132 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %133 = load i32, ptr %132, align 4, !tbaa !41
  %134 = icmp ult i32 %133, %131
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %137 = load i32, ptr %136, align 4, !tbaa !148
  %138 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %139 = load i32, ptr %138, align 8, !tbaa !149
  %140 = add nsw i32 %139, %137
  %141 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %140, ptr %141, align 8, !tbaa !147
  br label %146

142:                                              ; preds = %126, %129
  %143 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %144 = load i32, ptr %143, align 4, !tbaa !148
  %145 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %144, ptr %145, align 8, !tbaa !147
  br label %146

146:                                              ; preds = %135, %142, %116, %121
  %147 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 24
  %148 = load i32, ptr %147, align 4, !tbaa !150
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %152 = load i32, ptr %151, align 8, !tbaa !147
  %153 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %154 = load i32, ptr %153, align 4, !tbaa !41
  %155 = add i32 %154, %152
  %156 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %158 = load i32, ptr %157, align 8, !tbaa !72
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %167, label %171

160:                                              ; preds = %146
  %161 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %163 = load i32, ptr %162, align 8, !tbaa !72
  %164 = icmp eq i32 %163, 0
  %165 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 49
  store i32 0, ptr %165, align 4, !tbaa !151
  %166 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 0, ptr %166, align 8, !tbaa !152
  br i1 %164, label %211, label %217

167:                                              ; preds = %150
  %168 = icmp eq i32 %155, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %167
  %170 = add i32 %155, -1
  store i32 %170, ptr %156, align 4, !tbaa !153
  br label %171

171:                                              ; preds = %169, %167, %150
  %172 = phi i32 [ %170, %169 ], [ 0, %167 ], [ %155, %150 ]
  %173 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 49
  store i32 0, ptr %173, align 4, !tbaa !151
  %174 = icmp sgt i32 %148, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = zext nneg i32 %148 to i64
  br label %177

177:                                              ; preds = %175, %177
  %178 = phi i64 [ 0, %175 ], [ %183, %177 ]
  %179 = phi i32 [ 0, %175 ], [ %182, %177 ]
  %180 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 25, i64 %178
  %181 = load i32, ptr %180, align 4, !tbaa !61
  %182 = add nsw i32 %179, %181
  store i32 %182, ptr %173, align 4, !tbaa !151
  %183 = add nuw nsw i64 %178, 1
  %184 = icmp eq i64 %183, %176
  br i1 %184, label %185, label %177, !llvm.loop !154

185:                                              ; preds = %177, %171
  %186 = phi i32 [ 0, %171 ], [ %182, %177 ]
  %187 = icmp eq i32 %172, 0
  br i1 %187, label %207, label %188

188:                                              ; preds = %185
  %189 = add i32 %172, -1
  %190 = udiv i32 %189, %148
  %191 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 45
  store i32 %190, ptr %191, align 4, !tbaa !155
  %192 = urem i32 %189, %148
  %193 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 46
  store i32 %192, ptr %193, align 8, !tbaa !156
  %194 = mul nsw i32 %186, %190
  %195 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 %194, ptr %195, align 8, !tbaa !152
  %196 = icmp slt i32 %192, 0
  br i1 %196, label %209, label %197

197:                                              ; preds = %188
  %198 = zext nneg i32 %192 to i64
  br label %199

199:                                              ; preds = %197, %199
  %200 = phi i64 [ 0, %197 ], [ %205, %199 ]
  %201 = phi i32 [ %194, %197 ], [ %204, %199 ]
  %202 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 25, i64 %200
  %203 = load i32, ptr %202, align 4, !tbaa !61
  %204 = add nsw i32 %201, %203
  store i32 %204, ptr %195, align 8, !tbaa !152
  %205 = add nuw nsw i64 %200, 1
  %206 = icmp ult i64 %200, %198
  br i1 %206, label %199, label %209, !llvm.loop !157

207:                                              ; preds = %185
  %208 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 0, ptr %208, align 8, !tbaa !152
  br i1 %159, label %211, label %217

209:                                              ; preds = %199, %188
  %210 = phi i32 [ %194, %188 ], [ %204, %199 ]
  br i1 %159, label %211, label %217

211:                                              ; preds = %160, %207, %209
  %212 = phi i32 [ 0, %207 ], [ %210, %209 ], [ 0, %160 ]
  %213 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 22
  %214 = load i32, ptr %213, align 4, !tbaa !158
  %215 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  %216 = add nsw i32 %212, %214
  store i32 %216, ptr %215, align 8, !tbaa !152
  br label %217

217:                                              ; preds = %160, %207, %211, %209
  %218 = phi i32 [ %216, %211 ], [ %210, %209 ], [ 0, %207 ], [ 0, %160 ]
  %219 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %220 = load i32, ptr %219, align 8, !tbaa !47
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %224 = load i32, ptr %223, align 8, !tbaa !61
  %225 = add nsw i32 %224, %218
  %226 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %225, ptr %226, align 4, !tbaa !140
  %227 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 23
  %228 = load i32, ptr %227, align 4, !tbaa !159
  %229 = add nsw i32 %228, %225
  %230 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %231 = load i32, ptr %230, align 4, !tbaa !61
  %232 = add nsw i32 %229, %231
  %233 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %232, ptr %233, align 8, !tbaa !142
  %234 = tail call i32 @llvm.smin.i32(i32 %225, i32 %232)
  br label %252

235:                                              ; preds = %217
  %236 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %237 = load i8, ptr %236, align 4, !tbaa !48
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %241 = load i32, ptr %240, align 8, !tbaa !61
  %242 = add nsw i32 %241, %218
  %243 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %242, ptr %243, align 4, !tbaa !140
  br label %252

244:                                              ; preds = %235
  %245 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 23
  %246 = load i32, ptr %245, align 4, !tbaa !159
  %247 = add nsw i32 %246, %218
  %248 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %249 = load i32, ptr %248, align 8, !tbaa !61
  %250 = add nsw i32 %247, %249
  %251 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %250, ptr %251, align 8, !tbaa !142
  br label %252

252:                                              ; preds = %239, %244, %222
  %253 = phi i32 [ %242, %239 ], [ %250, %244 ], [ %234, %222 ]
  %254 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %253, ptr %254, align 8, !tbaa !143
  %255 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %253, ptr %255, align 4, !tbaa !144
  %256 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %257 = load i32, ptr %256, align 4, !tbaa !41
  %258 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 %257, ptr %258, align 4, !tbaa !146
  %259 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %260 = load i32, ptr %259, align 8, !tbaa !147
  %261 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 %260, ptr %261, align 4, !tbaa !148
  br label %336

262:                                              ; preds = %2
  %263 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %264 = load i32, ptr %263, align 8, !tbaa !42
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %276, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 0, ptr %267, align 8, !tbaa !147
  %268 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 0, ptr %268, align 8, !tbaa !142
  %269 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 0, ptr %269, align 4, !tbaa !140
  %270 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 0, ptr %270, align 4, !tbaa !144
  %271 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 0, ptr %271, align 8, !tbaa !143
  %272 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %273 = load i32, ptr %272, align 4, !tbaa !41
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %329, label %275

275:                                              ; preds = %266
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #11
  br label %329

276:                                              ; preds = %262
  %277 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %278 = load i32, ptr %277, align 4, !tbaa !137
  %279 = icmp eq i32 %278, 0
  %280 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  br i1 %279, label %285, label %281

281:                                              ; preds = %276
  store i32 0, ptr %280, align 4, !tbaa !146
  %282 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 0, ptr %282, align 4, !tbaa !148
  %283 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %284 = load i32, ptr %283, align 4, !tbaa !41
  br label %296

285:                                              ; preds = %276
  %286 = load i32, ptr %280, align 4, !tbaa !146
  %287 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %288 = load i32, ptr %287, align 4, !tbaa !41
  %289 = icmp ult i32 %288, %286
  br i1 %289, label %290, label %296

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %292 = load i32, ptr %291, align 4, !tbaa !148
  %293 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %294 = load i32, ptr %293, align 8, !tbaa !149
  %295 = add nsw i32 %294, %292
  br label %300

296:                                              ; preds = %281, %285
  %297 = phi i32 [ %284, %281 ], [ %288, %285 ]
  %298 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %299 = load i32, ptr %298, align 4, !tbaa !148
  br label %300

300:                                              ; preds = %296, %290
  %301 = phi i32 [ %288, %290 ], [ %297, %296 ]
  %302 = phi i32 [ %295, %290 ], [ %299, %296 ]
  %303 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %302, ptr %303, align 8
  %304 = add i32 %302, %301
  %305 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 %304, ptr %305, align 4, !tbaa !153
  %306 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %307 = load i32, ptr %306, align 8, !tbaa !72
  %308 = icmp eq i32 %307, 0
  %309 = shl i32 %304, 1
  %310 = sext i1 %308 to i32
  %311 = add i32 %309, %310
  %312 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %311, ptr %312, align 8
  %313 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %314 = load i32, ptr %313, align 8, !tbaa !47
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %300
  %317 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %311, ptr %317, align 4, !tbaa !144
  %318 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %311, ptr %318, align 8, !tbaa !142
  %319 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %311, ptr %319, align 4, !tbaa !140
  br label %329

320:                                              ; preds = %300
  %321 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %322 = load i8, ptr %321, align 4, !tbaa !48
  %323 = icmp eq i8 %322, 0
  %324 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %311, ptr %324, align 4, !tbaa !144
  br i1 %323, label %325, label %327

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %311, ptr %326, align 4, !tbaa !140
  br label %329

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %311, ptr %328, align 8, !tbaa !142
  br label %329

329:                                              ; preds = %316, %327, %325, %266, %275
  %330 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %331 = load i32, ptr %330, align 4, !tbaa !41
  %332 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 %331, ptr %332, align 4, !tbaa !146
  %333 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %334 = load i32, ptr %333, align 8, !tbaa !147
  %335 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 %334, ptr %335, align 4, !tbaa !148
  br label %336

336:                                              ; preds = %2, %106, %110, %329, %252
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @dumppoc(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !140
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %9) #12
  %11 = load ptr, ptr %5, align 8, !tbaa !160
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !142
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %14) #12
  %16 = load ptr, ptr %5, align 8, !tbaa !160
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 35
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %19) #12
  %21 = load ptr, ptr %5, align 8, !tbaa !160
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 36
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %24) #12
  %26 = load ptr, ptr %5, align 8, !tbaa !160
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.slice, ptr %27, i64 0, i32 37
  %29 = load i8, ptr %28, align 4, !tbaa !48
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %30) #12
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85)
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 18
  %34 = load i32, ptr %33, align 4, !tbaa !37
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %34) #12
  %36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 20
  %37 = load i32, ptr %36, align 4, !tbaa !54
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %37) #12
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 19
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %40) #12
  %42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 24
  %43 = load i32, ptr %42, align 4, !tbaa !150
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %43) #12
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 21
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %46) #12
  %48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 22
  %49 = load i32, ptr %48, align 4, !tbaa !158
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %49) #12
  %51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 23
  %52 = load i32, ptr %51, align 4, !tbaa !159
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %52) #12
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 25
  %55 = load i32, ptr %54, align 4, !tbaa !61
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %55) #12
  %57 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 25, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !61
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %58) #12
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %62, i64 0, i32 11
  %64 = load i32, ptr %63, align 8, !tbaa !57
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %64) #12
  %66 = load ptr, ptr %5, align 8, !tbaa !160
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.slice, ptr %67, i64 0, i32 16
  %69 = load i32, ptr %68, align 8, !tbaa !61
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %69) #12
  %71 = load ptr, ptr %5, align 8, !tbaa !160
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.slice, ptr %72, i64 0, i32 16, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !61
  %75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %74) #12
  %76 = load ptr, ptr %5, align 8, !tbaa !160
  %77 = load ptr, ptr %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.slice, ptr %77, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !42
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %79) #12
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %82 = load i32, ptr %81, align 8, !tbaa !149
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, i32 noundef %82) #12
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @picture_order(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  br label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  %9 = load i8, ptr %8, align 4, !tbaa !48
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
  %17 = load i32, ptr %16, align 4, !tbaa !61
  ret i32 %17
}

; Function Attrs: optsize
declare void @alloc_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @reset_wp_params(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %1, %26
  %10 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %11 = getelementptr inbounds ptr, ptr %6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds ptr, ptr %8, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %24, %15 ]
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, ptr %2, ptr %3
  %19 = load i16, ptr %18, align 2, !tbaa !161
  %20 = zext nneg i16 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds i32, ptr %12, i64 %16
  store i32 %21, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %21, ptr %23, align 4, !tbaa !61
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %15, !llvm.loop !162

26:                                               ; preds = %15
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, 32
  br i1 %28, label %29, label %9, !llvm.loop !163

29:                                               ; preds = %26
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !10, i64 0}
!9 = !{!"slice", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !13, i64 32, !10, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !11, i64 88, !13, i64 96, !13, i64 100, !13, i64 104, !13, i64 108, !13, i64 112, !14, i64 116, !13, i64 120, !13, i64 124, !13, i64 128, !13, i64 132, !11, i64 136, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !11, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !13, i64 216, !13, i64 220, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !10, i64 248, !11, i64 256, !11, i64 264, !10, i64 312, !10, i64 320, !10, i64 328, !11, i64 336, !11, i64 1104, !11, i64 1112, !11, i64 1128, !11, i64 1144, !11, i64 1160, !13, i64 1176, !13, i64 1180, !13, i64 1184, !15, i64 1188, !14, i64 1220, !14, i64 1222, !14, i64 1224, !13, i64 1228, !13, i64 1232, !13, i64 1236, !13, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !11, i64 1288, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !11, i64 1392, !11, i64 2544, !11, i64 3696, !11, i64 8304, !11, i64 12912, !11, i64 13008, !13, i64 13264, !13, i64 13268, !14, i64 13272, !14, i64 13274, !14, i64 13276, !14, i64 13278, !10, i64 13280, !10, i64 13288, !10, i64 13296, !14, i64 13304, !14, i64 13306, !13, i64 13308, !13, i64 13312, !10, i64 13320, !10, i64 13328, !13, i64 13336, !11, i64 13340, !10, i64 13408, !10, i64 13416, !10, i64 13424, !10, i64 13432, !10, i64 13440, !10, i64 13448, !10, i64 13456, !10, i64 13464, !10, i64 13472, !10, i64 13480, !10, i64 13488, !10, i64 13496, !13, i64 13504, !10, i64 13512, !10, i64 13520, !10, i64 13528, !10, i64 13536, !10, i64 13544, !11, i64 13552}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"int", !11, i64 0}
!14 = !{!"short", !11, i64 0}
!15 = !{!"nalunitheadermvcext_tag", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28}
!16 = !{!9, !10, i64 312}
!17 = !{!18, !10, i64 0}
!18 = !{!"datapartition", !10, i64 0, !19, i64 8, !10, i64 40}
!19 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !10, i64 16, !10, i64 24}
!20 = !{!21, !13, i64 8}
!21 = !{!"bit_stream", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !10, i64 16, !13, i64 24}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !13, i64 24}
!24 = !{!"decoder_params", !10, i64 0, !10, i64 8, !25, i64 16, !13, i64 24, !10, i64 32, !13, i64 40}
!25 = !{!"long", !11, i64 0}
!26 = !{!9, !13, i64 188}
!27 = !{!9, !13, i64 164}
!28 = !{!29, !13, i64 848776}
!29 = !{!"video_par", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 132120, !10, i64 699416, !11, i64 699424, !13, i64 848672, !13, i64 848676, !13, i64 848680, !13, i64 848684, !10, i64 848688, !10, i64 848696, !10, i64 848704, !13, i64 848712, !13, i64 848716, !13, i64 848720, !13, i64 848724, !13, i64 848728, !10, i64 848736, !10, i64 848744, !11, i64 848752, !13, i64 848776, !13, i64 848780, !13, i64 848784, !13, i64 848788, !13, i64 848792, !10, i64 848800, !11, i64 848808, !10, i64 848832, !10, i64 848840, !11, i64 848848, !13, i64 848872, !13, i64 848876, !10, i64 848880, !10, i64 848888, !11, i64 848896, !13, i64 848920, !10, i64 848928, !10, i64 848936, !13, i64 848944, !13, i64 848948, !13, i64 848952, !13, i64 848956, !13, i64 848960, !13, i64 848964, !13, i64 848968, !13, i64 848972, !13, i64 848976, !13, i64 848980, !13, i64 848984, !13, i64 848988, !13, i64 848992, !13, i64 848996, !13, i64 849000, !13, i64 849004, !13, i64 849008, !13, i64 849012, !13, i64 849016, !13, i64 849020, !13, i64 849024, !13, i64 849028, !13, i64 849032, !13, i64 849036, !14, i64 849040, !14, i64 849042, !11, i64 849044, !13, i64 849052, !13, i64 849056, !11, i64 849060, !11, i64 849072, !13, i64 849084, !13, i64 849088, !13, i64 849092, !13, i64 849096, !13, i64 849100, !13, i64 849104, !13, i64 849108, !13, i64 849112, !13, i64 849116, !13, i64 849120, !11, i64 849124, !11, i64 849148, !11, i64 849172, !13, i64 849196, !13, i64 849200, !13, i64 849204, !13, i64 849208, !13, i64 849212, !13, i64 849216, !13, i64 849220, !13, i64 849224, !13, i64 849228, !13, i64 849232, !13, i64 849236, !13, i64 849240, !13, i64 849244, !13, i64 849248, !13, i64 849252, !13, i64 849256, !13, i64 849260, !13, i64 849264, !13, i64 849268, !13, i64 849272, !13, i64 849276, !13, i64 849280, !13, i64 849284, !10, i64 849288, !10, i64 849296, !30, i64 849304, !30, i64 849624, !30, i64 849944, !30, i64 850264, !30, i64 850584, !30, i64 850904, !30, i64 851224, !30, i64 851544, !13, i64 851864, !13, i64 851868, !13, i64 851872, !25, i64 851880, !13, i64 851888, !11, i64 851892, !13, i64 855988, !13, i64 855992, !13, i64 855996, !13, i64 856000, !13, i64 856004, !13, i64 856008, !13, i64 856012, !10, i64 856016, !10, i64 856024, !10, i64 856032, !10, i64 856040, !10, i64 856048, !11, i64 856056, !10, i64 856456, !11, i64 856464, !10, i64 856488, !10, i64 856496, !10, i64 856504, !13, i64 856512, !10, i64 856520, !11, i64 856528, !10, i64 856608, !10, i64 856616, !10, i64 856624, !10, i64 856632, !13, i64 856640, !13, i64 856644, !13, i64 856648, !10, i64 856656, !10, i64 856664, !11, i64 856672, !11, i64 856688, !10, i64 856704, !10, i64 856712, !13, i64 856720, !10, i64 856728, !10, i64 856736, !10, i64 856744, !10, i64 856752, !10, i64 856760, !10, i64 856768, !10, i64 856776, !10, i64 856784, !10, i64 856792, !10, i64 856800, !10, i64 856808, !10, i64 856816, !13, i64 856824, !10, i64 856832, !13, i64 856840, !13, i64 856844, !13, i64 856848, !13, i64 856852, !13, i64 856856, !13, i64 856860, !13, i64 856864, !10, i64 856872}
!30 = !{!"image_data", !31, i64 0, !11, i64 136, !11, i64 160, !11, i64 184, !11, i64 208, !11, i64 232, !11, i64 256, !11, i64 280, !11, i64 292, !11, i64 304}
!31 = !{!"frame_format", !13, i64 0, !13, i64 4, !32, i64 8, !11, i64 16, !11, i64 28, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !11, i64 72, !13, i64 84, !11, i64 88, !11, i64 100, !11, i64 112, !13, i64 124, !13, i64 128}
!32 = !{!"double", !11, i64 0}
!33 = !{!9, !13, i64 1228}
!34 = !{!29, !13, i64 849280}
!35 = !{!9, !10, i64 8}
!36 = !{!29, !10, i64 16}
!37 = !{!38, !13, i64 2068}
!38 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !11, i64 44, !11, i64 92, !11, i64 476, !11, i64 2012, !11, i64 2036, !13, i64 2060, !13, i64 2064, !13, i64 2068, !13, i64 2072, !13, i64 2076, !13, i64 2080, !13, i64 2084, !13, i64 2088, !13, i64 2092, !11, i64 2096, !13, i64 3120, !13, i64 3124, !13, i64 3128, !13, i64 3132, !13, i64 3136, !13, i64 3140, !13, i64 3144, !13, i64 3148, !13, i64 3152, !13, i64 3156, !13, i64 3160, !13, i64 3164, !13, i64 3168, !39, i64 3172, !13, i64 4120, !13, i64 4124}
!39 = !{!"", !13, i64 0, !13, i64 4, !14, i64 8, !14, i64 10, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !40, i64 80, !13, i64 492, !40, i64 496, !13, i64 908, !13, i64 912, !13, i64 916, !13, i64 920, !13, i64 924, !13, i64 928, !13, i64 932, !13, i64 936, !13, i64 940, !13, i64 944}
!40 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !11, i64 12, !11, i64 140, !11, i64 268, !13, i64 396, !13, i64 400, !13, i64 404, !13, i64 408}
!41 = !{!9, !13, i64 172}
!42 = !{!9, !13, i64 48}
!43 = !{!29, !13, i64 848944}
!44 = !{!29, !13, i64 849228}
!45 = !{!38, !13, i64 3136}
!46 = !{!29, !13, i64 848876}
!47 = !{!9, !13, i64 176}
!48 = !{!9, !11, i64 180}
!49 = !{!9, !13, i64 184}
!50 = !{!38, !13, i64 3140}
!51 = !{!9, !13, i64 128}
!52 = !{!9, !13, i64 52}
!53 = !{!38, !13, i64 2072}
!54 = !{!38, !13, i64 2076}
!55 = !{!9, !13, i64 80}
!56 = !{!29, !10, i64 8}
!57 = !{!58, !13, i64 2040}
!58 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !11, i64 24, !11, i64 72, !11, i64 456, !11, i64 1992, !11, i64 2016, !13, i64 2040, !13, i64 2044, !13, i64 2048, !11, i64 2052, !11, i64 2084, !11, i64 2116, !13, i64 2148, !13, i64 2152, !13, i64 2156, !10, i64 2160, !13, i64 2168, !13, i64 2172, !13, i64 2176, !13, i64 2180, !13, i64 2184, !13, i64 2188, !13, i64 2192, !13, i64 2196, !13, i64 2200, !13, i64 2204, !13, i64 2208}
!59 = !{!9, !13, i64 84}
!60 = !{!38, !13, i64 2080}
!61 = !{!13, !13, i64 0}
!62 = !{!58, !13, i64 2208}
!63 = !{!9, !13, i64 220}
!64 = !{!9, !13, i64 132}
!65 = !{!58, !13, i64 2168}
!66 = !{!58, !13, i64 2172}
!67 = !{!9, !13, i64 32}
!68 = !{!58, !13, i64 2176}
!69 = !{!58, !13, i64 2180}
!70 = !{!9, !14, i64 13272}
!71 = !{!9, !14, i64 13274}
!72 = !{!9, !13, i64 56}
!73 = !{!58, !13, i64 12}
!74 = !{!9, !13, i64 168}
!75 = !{!9, !13, i64 152}
!76 = !{!58, !13, i64 2184}
!77 = !{!9, !13, i64 148}
!78 = !{!29, !13, i64 849052}
!79 = !{!9, !13, i64 224}
!80 = !{!9, !13, i64 160}
!81 = !{!58, !13, i64 2188}
!82 = !{!9, !13, i64 156}
!83 = !{!38, !13, i64 4}
!84 = !{!38, !13, i64 20}
!85 = !{!86, !13, i64 788}
!86 = !{!"inp_par", !11, i64 0, !11, i64 255, !11, i64 510, !13, i64 768, !13, i64 772, !13, i64 776, !13, i64 780, !13, i64 784, !13, i64 788, !31, i64 792, !31, i64 928, !13, i64 1064, !13, i64 1068, !87, i64 1072, !87, i64 2040, !87, i64 3008, !13, i64 3976, !13, i64 3980, !13, i64 3984, !13, i64 3988, !13, i64 3992, !13, i64 3996, !13, i64 4000, !13, i64 4004, !13, i64 4008, !13, i64 4012}
!87 = !{!"video_data_file", !11, i64 0, !11, i64 255, !11, i64 510, !13, i64 768, !13, i64 772, !31, i64 776, !13, i64 912, !13, i64 916, !13, i64 920, !13, i64 924, !13, i64 928, !13, i64 932, !13, i64 936, !13, i64 940, !13, i64 944, !13, i64 948, !13, i64 952, !10, i64 960}
!88 = !{!58, !13, i64 2200}
!89 = !{!9, !14, i64 1220}
!90 = !{!9, !14, i64 1222}
!91 = !{!9, !14, i64 1224}
!92 = !{!58, !13, i64 2044}
!93 = !{!58, !13, i64 2048}
!94 = !{!38, !13, i64 3132}
!95 = !{!38, !13, i64 3128}
!96 = !{!58, !13, i64 2152}
!97 = !{!9, !13, i64 228}
!98 = !{!29, !13, i64 849004}
!99 = !{!29, !13, i64 849008}
!100 = !{!29, !13, i64 848996}
!101 = !{!29, !13, i64 849012}
!102 = !{!29, !13, i64 849016}
!103 = distinct !{!103, !6}
!104 = distinct !{!104, !6}
!105 = !{!9, !13, i64 232}
!106 = distinct !{!106, !6}
!107 = distinct !{!107, !6}
!108 = !{!9, !14, i64 13276}
!109 = !{!9, !14, i64 13304}
!110 = !{!38, !13, i64 36}
!111 = !{!9, !14, i64 13278}
!112 = !{!9, !14, i64 13306}
!113 = !{!9, !10, i64 13280}
!114 = !{!9, !10, i64 13288}
!115 = !{!29, !14, i64 849040}
!116 = !{!29, !14, i64 849042}
!117 = distinct !{!117, !6}
!118 = distinct !{!118, !6}
!119 = distinct !{!119, !6}
!120 = distinct !{!120, !6}
!121 = !{!9, !10, i64 248}
!122 = !{!123, !10, i64 24}
!123 = !{!"DecRefPicMarking_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !10, i64 24}
!124 = distinct !{!124, !6}
!125 = !{!9, !13, i64 236}
!126 = !{!29, !13, i64 849024}
!127 = !{!9, !13, i64 240}
!128 = !{!9, !13, i64 244}
!129 = !{!123, !13, i64 0}
!130 = !{!123, !13, i64 4}
!131 = !{!123, !13, i64 8}
!132 = !{!123, !13, i64 12}
!133 = !{!123, !13, i64 16}
!134 = distinct !{!134, !6}
!135 = distinct !{!135, !6}
!136 = !{!29, !13, i64 848952}
!137 = !{!29, !13, i64 849028}
!138 = !{!29, !13, i64 848956}
!139 = !{!29, !13, i64 849032}
!140 = !{!9, !13, i64 68}
!141 = !{!9, !13, i64 96}
!142 = !{!9, !13, i64 72}
!143 = !{!9, !13, i64 104}
!144 = !{!9, !13, i64 76}
!145 = !{!29, !13, i64 848984}
!146 = !{!29, !13, i64 848972}
!147 = !{!29, !13, i64 848976}
!148 = !{!29, !13, i64 848988}
!149 = !{!29, !13, i64 848992}
!150 = !{!38, !13, i64 2092}
!151 = !{!29, !13, i64 848980}
!152 = !{!29, !13, i64 848960}
!153 = !{!9, !13, i64 100}
!154 = distinct !{!154, !6}
!155 = !{!29, !13, i64 848964}
!156 = !{!29, !13, i64 848968}
!157 = distinct !{!157, !6}
!158 = !{!38, !13, i64 2084}
!159 = !{!38, !13, i64 2088}
!160 = !{!29, !10, i64 848736}
!161 = !{!14, !14, i64 0}
!162 = distinct !{!162, !6}
!163 = distinct !{!163, !6}

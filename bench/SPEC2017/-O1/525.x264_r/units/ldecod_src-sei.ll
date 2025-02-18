; ModuleID = 'ldecod_src/sei.c'
source_filename = "ldecod_src/sei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, ptr }
%struct.tone_mapping_struct_tmp = type { i32, i8, i32, i8, i8, i32, i32, i32, i32, i32, [4096 x i32], i32, [4096 x i32], [4096 x i32] }
%struct.tone_mapping_struct_s = type { i32, i32, i8, i8, i32, i32, [4096 x i16], ptr, i32 }

@p_Dec = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"SEI: target_frame_num\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SEI: num_spare_pics_minus1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SEI: delta_spare_frame_num\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SEI: ref_area_indicator\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SEI: ref_mb_indicator\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SEI: zero_run_length\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Wrong ref_area_indicator %d!\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_layer_num\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"SEI: sub_seq_id\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"SEI: first_ref_pic_flag\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"SEI: leading_non_ref_pic_flag\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"SEI: last_pic_flag\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"SEI: sub_seq_frame_num_flag\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"SEI: sub_seq_frame_num\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"SEI: num_sub_layers_minus1\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"SEI: accurate_statistics_flag\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SEI: average_bit_rate\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SEI: average_frame_rate\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"SEI: duration_flag\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SEI: average_rate_flag\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"SEI: num_referenced_subseqs\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_layer_num\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"SEI: ref_sub_seq_id\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"SEI: ref_sub_seq_direction\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"SEI: scene_id\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"SEI: scene_transition_type\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"SEI: pan_scan_rect_id\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_cancel_flag\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"SEI: pan_scan_cnt_minus1\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"SEI: pan_scan_rect_left_offset\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"SEI: pan_scan_rect_right_offset\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"SEI: pan_scan_rect_top_offset\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"SEI: pan_scan_rect_bottom_offset\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"SEI: pan_scan_rect_repetition_period\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"SEI: original_idr_flag\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"SEI: original_frame_num\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"SEI: original_field_pic_flag\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"SEI: original_bottom_field_flag\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"SEI: full_frame_freeze_repetition_period\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"SEI: snapshot_id\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"SEI: progressive_refinement_id\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"SEI: num_refinement_steps_minus1\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"SEI: num_slice_groups_minus1\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"SEI: slice_group_id\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"SEI: pan_scan_rect_flag\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"SEI: film_grain_characteristics_cancel_flag\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"SEI: model_id\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"SEI: separate_colour_description_present_flag\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"SEI: film_grain_bit_depth_luma_minus8\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"SEI: film_grain_bit_depth_chroma_minus8\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"SEI: film_grain_full_range_flag\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"SEI: film_grain_colour_primaries\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"SEI: film_grain_transfer_characteristics\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"SEI: film_grain_matrix_coefficients\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"SEI: blending_mode_id\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"SEI: log2_scale_factor\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"SEI: comp_model_present_flag\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"SEI: num_intensity_intervals_minus1\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"SEI: num_model_values_minus1\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_lower_bound\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"SEI: intensity_interval_upper_bound\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"SEI: comp_model_value\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"SEI: film_grain_characteristics_repetition_period\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"SEI: deblocking_display_preference_cancel_flag\00", align 1
@.str.68 = private unnamed_addr constant [48 x i8] c"SEI: display_prior_to_deblocking_preferred_flag\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"SEI: dec_frame_buffering_constraint_flag\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"SEI: deblocking_display_preference_repetition_period\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"SEI: field_views_flags\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"SEI: top_field_is_left_view_flag\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"SEI: current_frame_is_left_view_flag\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"SEI: next_frame_is_second_view_flag\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"SEI: left_view_self_contained_flag\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"SEI: right_view_self_contained_flag\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"SEI: seq_parameter_set_id\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"SEI: initial_cpb_removal_delay\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"SEI: initial_cpb_removal_delay_offset\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [53 x i8] c"Warning: no active SPS, timing SEI cannot be parsed\0A\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"SEI: cpb_removal_delay\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"SEI: dpb_output_delay\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"SEI: pic_struct\00", align 1
@.str.84 = private unnamed_addr constant [61 x i8] c"reserved picture_structure used (can't determine NumClockTs)\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"SEI: clock_time_stamp_flag\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"SEI: ct_type\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"SEI: nuit_field_based_flag\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"SEI: counting_type\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"SEI: full_timestamp_flag\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"SEI: discontinuity_flag\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"SEI: cnt_dropped_flag\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"SEI: nframes\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"SEI: seconds_value\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"SEI: minutes_value\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"SEI: hours_value\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"SEI: seconds_flag\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"SEI: minutes_flag\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"SEI: hours_flag\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"SEI: time_offset\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"SEI: frame_packing_arrangement_id\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"SEI: frame_packing_arrangement_cancel_flag\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"SEI: frame_packing_arrangement_type\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"SEI: quincunx_sampling_flag\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"SEI: content_interpretation_type\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"SEI: spatial_flipping_flag\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"SEI: frame0_flipped_flag\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"SEI: field_views_flag\00", align 1
@.str.108 = private unnamed_addr constant [34 x i8] c"SEI: current_frame_is_frame0_flag\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"SEI: frame0_self_contained_flag\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"SEI: frame1_self_contained_flag\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"SEI: frame0_grid_position_x\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"SEI: frame0_grid_position_y\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"SEI: frame1_grid_position_x\00", align 1
@.str.114 = private unnamed_addr constant [28 x i8] c"SEI: frame1_grid_position_y\00", align 1
@.str.115 = private unnamed_addr constant [45 x i8] c"SEI: frame_packing_arrangement_reserved_byte\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"SEI: frame_packing_arrangement_repetition_period\00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"SEI: frame_packing_arrangement_extension_flag\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"SEI: tone_map_id\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"SEI: tone_map_cancel_flag\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"SEI: tone_map_repetition_period\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"SEI: coded_data_bit_depth\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"SEI: sei_bit_depth\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"SEI: min_value\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"SEI: sigmoid_midpoint\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"SEI: sigmoid_width\00", align 1
@.str.126 = private unnamed_addr constant [29 x i8] c"SEI: start_of_coded_interval\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"SEI: num_pivots\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"SEI: coded_pivot_value\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"SEI: sei_pivot_value\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"SEI: filter_hint_size_y\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"SEI: filter_hint_size_x\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"SEI: filter_hint_type\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"SEI: filter_hint\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"SEI: additional_extension_flag\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @InterpretSEIMessage(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 100
  %6 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 102
  br label %7

7:                                                ; preds = %172, %4
  %8 = phi i32 [ 1, %4 ], [ %173, %172 ]
  %9 = sext i32 %8 to i64
  %10 = add i32 %8, 2
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %20, %11 ], [ %10, %7 ]
  %13 = phi i64 [ %17, %11 ], [ %9, %7 ]
  %14 = phi i32 [ %19, %11 ], [ 0, %7 ]
  %15 = getelementptr inbounds i8, ptr %0, i64 %13
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = add i64 %13, 1
  %18 = icmp eq i8 %16, -1
  %19 = add nuw nsw i32 %14, 255
  %20 = add i32 %12, 1
  br i1 %18, label %11, label %21, !llvm.loop !37

21:                                               ; preds = %11
  %22 = trunc i64 %13 to i32
  %23 = zext i8 %16 to i32
  %24 = add nuw nsw i32 %14, %23
  %25 = add nsw i32 %22, 2
  %26 = shl i64 %17, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = sext i32 %12 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ %32, %31 ], [ %37, %33 ]
  %35 = phi i32 [ 0, %31 ], [ %36, %33 ]
  %36 = add nuw nsw i32 %35, 255
  %37 = add i64 %34, 1
  %38 = getelementptr inbounds i8, ptr %0, i64 %34
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = icmp eq i8 %39, -1
  br i1 %40, label %33, label %41, !llvm.loop !40

41:                                               ; preds = %33
  %42 = trunc i64 %37 to i32
  br label %43

43:                                               ; preds = %41, %21
  %44 = phi i32 [ 0, %21 ], [ %36, %41 ]
  %45 = phi i32 [ %25, %21 ], [ %42, %41 ]
  %46 = phi i8 [ %29, %21 ], [ %39, %41 ]
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %44, %47
  switch i32 %24, label %172 [
    i32 0, label %49
    i32 1, label %52
    i32 2, label %55
    i32 45, label %169
    i32 22, label %166
    i32 23, label %163
    i32 6, label %58
    i32 7, label %71
    i32 8, label %74
    i32 9, label %77
    i32 10, label %92
    i32 11, label %95
    i32 12, label %98
    i32 13, label %101
    i32 21, label %160
    i32 15, label %109
    i32 16, label %119
    i32 17, label %130
    i32 18, label %140
    i32 19, label %143
    i32 20, label %146
  ]

49:                                               ; preds = %43
  %50 = sext i32 %45 to i64
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  tail call void @interpret_buffering_period_info(ptr noundef %51, i32 noundef %48, ptr noundef %2)
  br label %172

52:                                               ; preds = %43
  %53 = sext i32 %45 to i64
  %54 = getelementptr inbounds i8, ptr %0, i64 %53
  tail call void @interpret_picture_timing_info(ptr noundef %54, i32 noundef %48, ptr noundef %2)
  br label %172

55:                                               ; preds = %43
  %56 = sext i32 %45 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  tail call void @interpret_pan_scan_rect_info(ptr noundef %57, i32 noundef %48, ptr poison)
  br label %172

58:                                               ; preds = %43
  %59 = sext i32 %45 to i64
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  %61 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %62 = getelementptr inbounds %struct.bit_stream, ptr %61, i64 0, i32 3
  store i32 %48, ptr %62, align 4, !tbaa !41
  %63 = getelementptr inbounds %struct.bit_stream, ptr %61, i64 0, i32 4
  store ptr %60, ptr %63, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.bit_stream, ptr %61, i64 0, i32 2
  store i32 0, ptr %64, align 8, !tbaa !46
  %65 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %66 = getelementptr inbounds %struct.decoder_params, ptr %65, i64 0, i32 3
  store i32 0, ptr %66, align 8, !tbaa !48
  %67 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %61) #16
  %68 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %61) #16
  %69 = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %61) #16
  %70 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %61) #16
  store i32 1, ptr %5, align 4, !tbaa !51
  store i32 %67, ptr %6, align 4, !tbaa !57
  tail call void @free(ptr noundef %61) #16
  br label %172

71:                                               ; preds = %43
  %72 = sext i32 %45 to i64
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  tail call void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %73, i32 noundef %48, ptr noundef %2, ptr noundef %3)
  br label %172

74:                                               ; preds = %43
  %75 = sext i32 %45 to i64
  %76 = getelementptr inbounds i8, ptr %0, i64 %75
  tail call void @interpret_spare_pic(ptr noundef %76, i32 noundef %48, ptr noundef %2)
  br label %172

77:                                               ; preds = %43
  %78 = sext i32 %45 to i64
  %79 = getelementptr inbounds i8, ptr %0, i64 %78
  %80 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %81 = getelementptr inbounds %struct.bit_stream, ptr %80, i64 0, i32 3
  store i32 %48, ptr %81, align 4, !tbaa !41
  %82 = getelementptr inbounds %struct.bit_stream, ptr %80, i64 0, i32 4
  store ptr %79, ptr %82, align 8, !tbaa !45
  %83 = getelementptr inbounds %struct.bit_stream, ptr %80, i64 0, i32 2
  store i32 0, ptr %83, align 8, !tbaa !46
  %84 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %85 = getelementptr inbounds %struct.decoder_params, ptr %84, i64 0, i32 3
  store i32 0, ptr %85, align 8, !tbaa !48
  %86 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %80) #16
  %87 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %80) #16
  %88 = icmp sgt i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %80) #16
  br label %91

91:                                               ; preds = %77, %89
  tail call void @free(ptr noundef %80) #16
  br label %172

92:                                               ; preds = %43
  %93 = sext i32 %45 to i64
  %94 = getelementptr inbounds i8, ptr %0, i64 %93
  tail call void @interpret_subsequence_info(ptr noundef %94, i32 noundef %48, ptr poison)
  br label %172

95:                                               ; preds = %43
  %96 = sext i32 %45 to i64
  %97 = getelementptr inbounds i8, ptr %0, i64 %96
  tail call void @interpret_subsequence_layer_characteristics_info(ptr noundef %97, i32 noundef %48, ptr poison)
  br label %172

98:                                               ; preds = %43
  %99 = sext i32 %45 to i64
  %100 = getelementptr inbounds i8, ptr %0, i64 %99
  tail call void @interpret_subsequence_characteristics_info(ptr noundef %100, i32 noundef %48, ptr poison)
  br label %172

101:                                              ; preds = %43
  %102 = sext i32 %45 to i64
  %103 = getelementptr inbounds i8, ptr %0, i64 %102
  %104 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %105 = getelementptr inbounds %struct.bit_stream, ptr %104, i64 0, i32 3
  store i32 %48, ptr %105, align 4, !tbaa !41
  %106 = getelementptr inbounds %struct.bit_stream, ptr %104, i64 0, i32 4
  store ptr %103, ptr %106, align 8, !tbaa !45
  %107 = getelementptr inbounds %struct.bit_stream, ptr %104, i64 0, i32 2
  store i32 0, ptr %107, align 8, !tbaa !46
  %108 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %104) #16
  tail call void @free(ptr noundef %104) #16
  br label %172

109:                                              ; preds = %43
  %110 = sext i32 %45 to i64
  %111 = getelementptr inbounds i8, ptr %0, i64 %110
  %112 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %113 = getelementptr inbounds %struct.bit_stream, ptr %112, i64 0, i32 3
  store i32 %48, ptr %113, align 4, !tbaa !41
  %114 = getelementptr inbounds %struct.bit_stream, ptr %112, i64 0, i32 4
  store ptr %111, ptr %114, align 8, !tbaa !45
  %115 = getelementptr inbounds %struct.bit_stream, ptr %112, i64 0, i32 2
  store i32 0, ptr %115, align 8, !tbaa !46
  %116 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %117 = getelementptr inbounds %struct.decoder_params, ptr %116, i64 0, i32 3
  store i32 0, ptr %117, align 8, !tbaa !48
  %118 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %112) #16
  tail call void @free(ptr noundef %112) #16
  br label %172

119:                                              ; preds = %43
  %120 = sext i32 %45 to i64
  %121 = getelementptr inbounds i8, ptr %0, i64 %120
  %122 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %123 = getelementptr inbounds %struct.bit_stream, ptr %122, i64 0, i32 3
  store i32 %48, ptr %123, align 4, !tbaa !41
  %124 = getelementptr inbounds %struct.bit_stream, ptr %122, i64 0, i32 4
  store ptr %121, ptr %124, align 8, !tbaa !45
  %125 = getelementptr inbounds %struct.bit_stream, ptr %122, i64 0, i32 2
  store i32 0, ptr %125, align 8, !tbaa !46
  %126 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %127 = getelementptr inbounds %struct.decoder_params, ptr %126, i64 0, i32 3
  store i32 0, ptr %127, align 8, !tbaa !48
  %128 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %122) #16
  %129 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %122) #16
  tail call void @free(ptr noundef %122) #16
  br label %172

130:                                              ; preds = %43
  %131 = sext i32 %45 to i64
  %132 = getelementptr inbounds i8, ptr %0, i64 %131
  %133 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %134 = getelementptr inbounds %struct.bit_stream, ptr %133, i64 0, i32 3
  store i32 %48, ptr %134, align 4, !tbaa !41
  %135 = getelementptr inbounds %struct.bit_stream, ptr %133, i64 0, i32 4
  store ptr %132, ptr %135, align 8, !tbaa !45
  %136 = getelementptr inbounds %struct.bit_stream, ptr %133, i64 0, i32 2
  store i32 0, ptr %136, align 8, !tbaa !46
  %137 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %138 = getelementptr inbounds %struct.decoder_params, ptr %137, i64 0, i32 3
  store i32 0, ptr %138, align 8, !tbaa !48
  %139 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %133) #16
  tail call void @free(ptr noundef %133) #16
  br label %172

140:                                              ; preds = %43
  %141 = sext i32 %45 to i64
  %142 = getelementptr inbounds i8, ptr %0, i64 %141
  tail call void @interpret_motion_constrained_slice_group_set_info(ptr noundef %142, i32 noundef %48, ptr poison)
  br label %143

143:                                              ; preds = %43, %140
  %144 = sext i32 %45 to i64
  %145 = getelementptr inbounds i8, ptr %0, i64 %144
  tail call void @interpret_film_grain_characteristics_info(ptr noundef %145, i32 noundef %48, ptr poison)
  br label %172

146:                                              ; preds = %43
  %147 = sext i32 %45 to i64
  %148 = getelementptr inbounds i8, ptr %0, i64 %147
  %149 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %150 = getelementptr inbounds %struct.bit_stream, ptr %149, i64 0, i32 3
  store i32 %48, ptr %150, align 4, !tbaa !41
  %151 = getelementptr inbounds %struct.bit_stream, ptr %149, i64 0, i32 4
  store ptr %148, ptr %151, align 8, !tbaa !45
  %152 = getelementptr inbounds %struct.bit_stream, ptr %149, i64 0, i32 2
  store i32 0, ptr %152, align 8, !tbaa !46
  %153 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %149) #16
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef %149) #16
  %157 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef %149) #16
  %158 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef %149) #16
  br label %159

159:                                              ; preds = %146, %155
  tail call void @free(ptr noundef %149) #16
  br label %172

160:                                              ; preds = %43
  %161 = sext i32 %45 to i64
  %162 = getelementptr inbounds i8, ptr %0, i64 %161
  tail call void @interpret_stereo_video_info_info(ptr noundef %162, i32 noundef %48, ptr poison)
  br label %172

163:                                              ; preds = %43
  %164 = sext i32 %45 to i64
  %165 = getelementptr inbounds i8, ptr %0, i64 %164
  tail call void @interpret_tone_mapping(ptr noundef %165, i32 noundef %48, ptr noundef %2)
  br label %172

166:                                              ; preds = %43
  %167 = sext i32 %45 to i64
  %168 = getelementptr inbounds i8, ptr %0, i64 %167
  tail call void @interpret_post_filter_hints_info(ptr noundef %168, i32 noundef %48, ptr poison)
  br label %172

169:                                              ; preds = %43
  %170 = sext i32 %45 to i64
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  tail call void @interpret_frame_packing_arrangement_info(ptr noundef %171, i32 noundef %48, ptr poison)
  br label %172

172:                                              ; preds = %43, %169, %166, %163, %160, %159, %143, %130, %119, %109, %101, %98, %95, %92, %91, %74, %71, %58, %55, %52, %49
  %173 = add nsw i32 %48, %45
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !34
  %177 = icmp eq i8 %176, -128
  br i1 %177, label %178, label %7, !llvm.loop !58

178:                                              ; preds = %172
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @interpret_buffering_period_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.77, ptr noundef %4) #16
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11
  tail call void @activate_sps(ptr noundef %2, ptr noundef nonnull %12) #16
  %13 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 38
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 20
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 21
  %22 = load i32, ptr %21, align 4, !tbaa !64
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 21, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %34, %26 ]
  %28 = load i32, ptr %25, align 4, !tbaa !65
  %29 = add i32 %28, 1
  %30 = tail call i32 @u_v(i32 noundef %29, ptr noundef nonnull @.str.78, ptr noundef %4) #16
  %31 = load i32, ptr %25, align 4, !tbaa !65
  %32 = add i32 %31, 1
  %33 = tail call i32 @u_v(i32 noundef %32, ptr noundef nonnull @.str.79, ptr noundef %4) #16
  %34 = add nuw i32 %27, 1
  %35 = load i32, ptr %21, align 4, !tbaa !64
  %36 = add i32 %35, 1
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %26, label %38, !llvm.loop !66

38:                                               ; preds = %26, %20, %16
  %39 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 22
  %40 = load i32, ptr %39, align 4, !tbaa !67
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 23
  %44 = load i32, ptr %43, align 4, !tbaa !68
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 23, i32 6
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ 0, %46 ], [ %56, %48 ]
  %50 = load i32, ptr %47, align 4, !tbaa !69
  %51 = add i32 %50, 1
  %52 = tail call i32 @u_v(i32 noundef %51, ptr noundef nonnull @.str.78, ptr noundef %4) #16
  %53 = load i32, ptr %47, align 4, !tbaa !69
  %54 = add i32 %53, 1
  %55 = tail call i32 @u_v(i32 noundef %54, ptr noundef nonnull @.str.79, ptr noundef %4) #16
  %56 = add nuw i32 %49, 1
  %57 = load i32, ptr %43, align 4, !tbaa !68
  %58 = add i32 %57, 1
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %48, label %60, !llvm.loop !70

60:                                               ; preds = %48, %42, %38, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_picture_timing_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !47
  %9 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %8) #17
  br label %124

10:                                               ; preds = %3
  %11 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %12 = getelementptr inbounds %struct.bit_stream, ptr %11, i64 0, i32 3
  store i32 %1, ptr %12, align 4, !tbaa !41
  %13 = getelementptr inbounds %struct.bit_stream, ptr %11, i64 0, i32 4
  store ptr %0, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.bit_stream, ptr %11, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !46
  %15 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.decoder_params, ptr %15, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 38
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 20
  %22 = load i32, ptr %21, align 4, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 22
  %26 = load i32, ptr %25, align 4, !tbaa !67
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  br i1 %23, label %32, label %29

29:                                               ; preds = %20, %28
  %30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 21, i32 7
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 21, i32 8
  br label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 22
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 23, i32 7
  %38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 23, i32 8
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi ptr [ %31, %29 ], [ %38, %36 ]
  %41 = phi ptr [ %30, %29 ], [ %37, %36 ]
  %42 = load i32, ptr %41, align 4, !tbaa !72
  %43 = add i32 %42, 1
  %44 = load i32, ptr %40, align 4, !tbaa !72
  %45 = add i32 %44, 1
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i32 [ 24, %32 ], [ %43, %39 ]
  %48 = phi i32 [ 24, %32 ], [ %45, %39 ]
  br i1 %23, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 22
  %51 = load i32, ptr %50, align 4, !tbaa !67
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %46
  %54 = tail call i32 @u_v(i32 noundef %47, ptr noundef nonnull @.str.81, ptr noundef %11) #16
  %55 = tail call i32 @u_v(i32 noundef %48, ptr noundef nonnull @.str.82, ptr noundef %11) #16
  br label %56

56:                                               ; preds = %10, %49, %53, %24
  %57 = load i32, ptr %17, align 4, !tbaa !59
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %123, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 25
  %61 = load i32, ptr %60, align 4, !tbaa !73
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %123, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef %11) #16
  switch i32 %64, label %67 [
    i32 0, label %68
    i32 1, label %68
    i32 2, label %68
    i32 3, label %65
    i32 4, label %65
    i32 7, label %65
    i32 5, label %66
    i32 6, label %66
    i32 8, label %66
  ]

65:                                               ; preds = %63, %63, %63
  br label %68

66:                                               ; preds = %63, %63, %63
  br label %68

67:                                               ; preds = %63
  tail call void @error(ptr noundef nonnull @.str.84, i32 noundef 500) #16
  br label %68

68:                                               ; preds = %63, %63, %63, %67, %66, %65
  %69 = phi i1 [ false, %67 ], [ true, %66 ], [ true, %65 ], [ true, %63 ], [ true, %63 ], [ true, %63 ]
  %70 = phi i32 [ 0, %67 ], [ 3, %66 ], [ 2, %65 ], [ 1, %63 ], [ 1, %63 ], [ 1, %63 ]
  br i1 %69, label %71, label %123

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 22
  %73 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 23, i32 9
  %74 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 20
  %75 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 21, i32 9
  %76 = tail call i32 @llvm.umax.i32(i32 %70, i32 1)
  br label %77

77:                                               ; preds = %71, %120
  %78 = phi i32 [ 0, %71 ], [ %121, %120 ]
  %79 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %11) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %120, label %81

81:                                               ; preds = %77
  %82 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.86, ptr noundef %11) #16
  %83 = tail call i32 @u_1(ptr noundef nonnull @.str.87, ptr noundef %11) #16
  %84 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.88, ptr noundef %11) #16
  %85 = tail call i32 @u_1(ptr noundef nonnull @.str.89, ptr noundef %11) #16
  %86 = tail call i32 @u_1(ptr noundef nonnull @.str.90, ptr noundef %11) #16
  %87 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %11) #16
  %88 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.92, ptr noundef %11) #16
  %89 = icmp eq i32 %85, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %11) #16
  %92 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %11) #16
  br label %104

93:                                               ; preds = %81
  %94 = tail call i32 @u_1(ptr noundef nonnull @.str.96, ptr noundef %11) #16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %11) #16
  %98 = tail call i32 @u_1(ptr noundef nonnull @.str.97, ptr noundef %11) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %11) #16
  %102 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %11) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100, %90
  %105 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.95, ptr noundef %11) #16
  br label %106

106:                                              ; preds = %104, %93, %100, %96
  %107 = load i32, ptr %72, align 4, !tbaa !67
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, ptr %74, align 4, !tbaa !63
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109, %106
  %113 = phi ptr [ %73, %106 ], [ %75, %109 ]
  %114 = load i32, ptr %113, align 4, !tbaa !72
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i32 [ 24, %109 ], [ %114, %112 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @i_v(i32 noundef %116, ptr noundef nonnull @.str.99, ptr noundef %11) #16
  br label %120

120:                                              ; preds = %118, %115, %77
  %121 = add nuw nsw i32 %78, 1
  %122 = icmp eq i32 %121, %76
  br i1 %122, label %123, label %77, !llvm.loop !74

123:                                              ; preds = %120, %68, %56, %59
  tail call void @free(ptr noundef %11) #16
  br label %124

124:                                              ; preds = %123, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_pan_scan_rect_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %4) #16
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %4) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = tail call i32 @ue_v(ptr noundef nonnull @.str.28, ptr noundef %4) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %22, %16 ], [ 0, %13 ]
  %18 = tail call i32 @se_v(ptr noundef nonnull @.str.29, ptr noundef %4) #16
  %19 = tail call i32 @se_v(ptr noundef nonnull @.str.30, ptr noundef %4) #16
  %20 = tail call i32 @se_v(ptr noundef nonnull @.str.31, ptr noundef %4) #16
  %21 = tail call i32 @se_v(ptr noundef nonnull @.str.32, ptr noundef %4) #16
  %22 = add nuw i32 %17, 1
  %23 = icmp eq i32 %17, %14
  br i1 %23, label %24, label %16, !llvm.loop !75

24:                                               ; preds = %16, %13
  %25 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %4) #16
  br label %26

26:                                               ; preds = %24, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_filler_payload_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_user_data_registered_itu_t_t35_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_user_data_unregistered_info(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_recovery_point_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %4) #16
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %4) #16
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %4) #16
  %13 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %4) #16
  %14 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 100
  store i32 1, ptr %14, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 102
  store i32 %10, ptr %15, align 4, !tbaa !57
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.decoder_params, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !48
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.38, ptr noundef %5) #16
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.39, ptr noundef %5) #16
  %13 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %14, i64 0, i32 30
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef %5) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @u_1(ptr noundef nonnull @.str.41, ptr noundef %5) #16
  br label %23

23:                                               ; preds = %18, %21, %4
  %24 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 51
  %29 = load i32, ptr %28, align 4, !tbaa !81
  %30 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 52
  %31 = load i32, ptr %30, align 8, !tbaa !82
  %32 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 53
  %33 = load i32, ptr %32, align 4, !tbaa !83
  store i32 %11, ptr %26, align 8, !tbaa !80
  store ptr null, ptr %24, align 8, !tbaa !77
  tail call void @dec_ref_pic_marking(ptr noundef %2, ptr noundef %5, ptr noundef %3) #16
  %34 = load ptr, ptr %24, align 8, !tbaa !77
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %23, %36
  %37 = phi ptr [ %40, %36 ], [ %34, %23 ]
  %38 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  store ptr %39, ptr %24, align 8, !tbaa !77
  tail call void @free(ptr noundef %37) #16
  %40 = load ptr, ptr %24, align 8, !tbaa !77
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %36, !llvm.loop !86

42:                                               ; preds = %36, %23
  store ptr %25, ptr %24, align 8, !tbaa !77
  store i32 %27, ptr %26, align 8, !tbaa !80
  store i32 %29, ptr %28, align 4, !tbaa !81
  %43 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 60
  store i32 %29, ptr %43, align 8, !tbaa !87
  store i32 %31, ptr %30, align 8, !tbaa !82
  store i32 %33, ptr %32, align 4, !tbaa !83
  tail call void @free(ptr noundef %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_spare_pic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.decoder_params, ptr %5, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !48
  %7 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %8 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 3
  store i32 %1, ptr %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !46
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %7) #16
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %7) #16
  %13 = add nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !88
  %16 = ashr i32 %15, 4
  %17 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !89
  %19 = ashr i32 %18, 4
  %20 = call i32 @get_mem3D(ptr noundef nonnull %4, i32 noundef %13, i32 noundef %16, i32 noundef %19) #16
  %21 = icmp slt i32 %12, 0
  br i1 %21, label %238, label %22

22:                                               ; preds = %3
  %23 = add nuw i32 %12, 1
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %22, %235
  %26 = phi i64 [ 0, %22 ], [ %236, %235 ]
  %27 = call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %7) #16
  %28 = call i32 @ue_v(ptr noundef nonnull @.str.3, ptr noundef %7) #16
  switch i32 %28, label %233 [
    i32 0, label %32
    i32 1, label %29
    i32 2, label %83
  ]

29:                                               ; preds = %25
  %30 = load i32, ptr %14, align 8, !tbaa !88
  %31 = icmp sgt i32 %30, 15
  br i1 %31, label %58, label %235

32:                                               ; preds = %25
  %33 = load i32, ptr %14, align 8, !tbaa !88
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %235

35:                                               ; preds = %32, %52
  %36 = phi i64 [ %53, %52 ], [ 0, %32 ]
  %37 = load i32, ptr %17, align 4, !tbaa !89
  %38 = icmp sgt i32 %37, 15
  br i1 %38, label %39, label %52

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %47, %39 ], [ 0, %35 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !47
  %42 = getelementptr inbounds ptr, ptr %41, i64 %26
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 %36
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = getelementptr inbounds i8, ptr %45, i64 %40
  store i8 0, ptr %46, align 1, !tbaa !34
  %47 = add nuw nsw i64 %40, 1
  %48 = load i32, ptr %17, align 4, !tbaa !89
  %49 = ashr i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %39, label %52, !llvm.loop !90

52:                                               ; preds = %39, %35
  %53 = add nuw nsw i64 %36, 1
  %54 = load i32, ptr %14, align 8, !tbaa !88
  %55 = ashr i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %35, label %235, !llvm.loop !91

58:                                               ; preds = %29, %77
  %59 = phi i64 [ %78, %77 ], [ 0, %29 ]
  %60 = load i32, ptr %17, align 4, !tbaa !89
  %61 = icmp sgt i32 %60, 15
  br i1 %61, label %62, label %77

62:                                               ; preds = %58, %62
  %63 = phi i64 [ %72, %62 ], [ 0, %58 ]
  %64 = call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %7) #16
  %65 = trunc i32 %64 to i8
  %66 = load ptr, ptr %4, align 8, !tbaa !47
  %67 = getelementptr inbounds ptr, ptr %66, i64 %26
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = getelementptr inbounds ptr, ptr %68, i64 %59
  %70 = load ptr, ptr %69, align 8, !tbaa !47
  %71 = getelementptr inbounds i8, ptr %70, i64 %63
  store i8 %65, ptr %71, align 1, !tbaa !34
  %72 = add nuw nsw i64 %63, 1
  %73 = load i32, ptr %17, align 4, !tbaa !89
  %74 = ashr i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %62, label %77, !llvm.loop !92

77:                                               ; preds = %62, %58
  %78 = add nuw nsw i64 %59, 1
  %79 = load i32, ptr %14, align 8, !tbaa !88
  %80 = ashr i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %58, label %235, !llvm.loop !93

83:                                               ; preds = %25
  %84 = load i32, ptr %14, align 8, !tbaa !88
  %85 = icmp sgt i32 %84, 15
  br i1 %85, label %86, label %235

86:                                               ; preds = %83
  %87 = load i32, ptr %14, align 8, !tbaa !88
  %88 = ashr i32 %87, 4
  %89 = add nsw i32 %88, -1
  %90 = sdiv i32 %89, 2
  %91 = load i32, ptr %17, align 4, !tbaa !89
  %92 = ashr i32 %91, 4
  %93 = add nsw i32 %92, -1
  %94 = sdiv i32 %93, 2
  br label %95

95:                                               ; preds = %86, %219
  %96 = phi i32 [ 1, %86 ], [ %228, %219 ]
  %97 = phi i32 [ 0, %86 ], [ %227, %219 ]
  %98 = phi i32 [ %90, %86 ], [ %226, %219 ]
  %99 = phi i32 [ %90, %86 ], [ %225, %219 ]
  %100 = phi i32 [ %94, %86 ], [ %224, %219 ]
  %101 = phi i32 [ %94, %86 ], [ %223, %219 ]
  %102 = phi i32 [ 0, %86 ], [ %229, %219 ]
  %103 = phi i32 [ %94, %86 ], [ %222, %219 ]
  %104 = phi i32 [ %90, %86 ], [ %221, %219 ]
  %105 = phi i32 [ -1, %86 ], [ %220, %219 ]
  %106 = load i32, ptr %17, align 4, !tbaa !89
  %107 = icmp sgt i32 %106, 15
  br i1 %107, label %108, label %219

108:                                              ; preds = %95, %206
  %109 = phi i32 [ %214, %206 ], [ %96, %95 ]
  %110 = phi i32 [ %213, %206 ], [ %97, %95 ]
  %111 = phi i32 [ %212, %206 ], [ %98, %95 ]
  %112 = phi i32 [ %211, %206 ], [ %99, %95 ]
  %113 = phi i32 [ %210, %206 ], [ %100, %95 ]
  %114 = phi i32 [ %209, %206 ], [ %101, %95 ]
  %115 = phi i32 [ %215, %206 ], [ 0, %95 ]
  %116 = phi i32 [ %208, %206 ], [ %103, %95 ]
  %117 = phi i32 [ %207, %206 ], [ %104, %95 ]
  %118 = phi i32 [ %134, %206 ], [ %105, %95 ]
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = call i32 @ue_v(ptr noundef nonnull @.str.5, ptr noundef %7) #16
  br label %122

122:                                              ; preds = %120, %108
  %123 = phi i32 [ %121, %120 ], [ %118, %108 ]
  %124 = icmp slt i32 %123, 1
  %125 = load ptr, ptr %4, align 8, !tbaa !47
  %126 = getelementptr inbounds ptr, ptr %125, i64 %26
  %127 = load ptr, ptr %126, align 8, !tbaa !47
  %128 = sext i32 %117 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !47
  %131 = sext i32 %116 to i64
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  %133 = zext i1 %124 to i8
  store i8 %133, ptr %132, align 1, !tbaa !34
  %134 = add nsw i32 %123, -1
  %135 = icmp eq i32 %110, -1
  %136 = icmp eq i32 %109, 0
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %151

138:                                              ; preds = %122
  %139 = icmp sgt i32 %116, %114
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = add nsw i32 %116, -1
  br label %206

142:                                              ; preds = %138
  %143 = icmp eq i32 %116, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = add nsw i32 %111, 1
  br label %206

146:                                              ; preds = %142
  %147 = icmp eq i32 %116, %114
  br i1 %147, label %148, label %206

148:                                              ; preds = %146
  %149 = add nsw i32 %116, -1
  %150 = add nsw i32 %114, -1
  br label %206

151:                                              ; preds = %122
  %152 = icmp eq i32 %110, 1
  %153 = select i1 %152, i1 %136, i1 false
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = icmp slt i32 %116, %113
  br i1 %155, label %156, label %158

156:                                              ; preds = %154
  %157 = add nsw i32 %116, 1
  br label %206

158:                                              ; preds = %154
  %159 = load i32, ptr %17, align 4, !tbaa !89
  %160 = ashr i32 %159, 4
  %161 = add nsw i32 %160, -1
  %162 = icmp eq i32 %116, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = add nsw i32 %112, -1
  br label %206

165:                                              ; preds = %158
  %166 = icmp eq i32 %116, %113
  br i1 %166, label %167, label %206

167:                                              ; preds = %165
  %168 = add nsw i32 %116, 1
  %169 = add nsw i32 %113, 1
  br label %206

170:                                              ; preds = %151
  %171 = icmp eq i32 %110, 0
  %172 = icmp eq i32 %109, -1
  %173 = select i1 %171, i1 %172, i1 false
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = icmp sgt i32 %117, %112
  br i1 %175, label %176, label %178

176:                                              ; preds = %174
  %177 = add nsw i32 %117, -1
  br label %206

178:                                              ; preds = %174
  %179 = icmp eq i32 %117, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %178
  %181 = add nsw i32 %114, -1
  br label %206

182:                                              ; preds = %178
  %183 = icmp eq i32 %117, %112
  br i1 %183, label %184, label %206

184:                                              ; preds = %182
  %185 = add nsw i32 %117, -1
  %186 = add nsw i32 %112, -1
  br label %206

187:                                              ; preds = %170
  %188 = icmp eq i32 %109, 1
  %189 = select i1 %171, i1 %188, i1 false
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = icmp slt i32 %117, %111
  br i1 %191, label %192, label %194

192:                                              ; preds = %190
  %193 = add nsw i32 %117, 1
  br label %206

194:                                              ; preds = %190
  %195 = load i32, ptr %14, align 8, !tbaa !88
  %196 = ashr i32 %195, 4
  %197 = add nsw i32 %196, -1
  %198 = icmp eq i32 %117, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = add nsw i32 %113, 1
  br label %206

201:                                              ; preds = %194
  %202 = icmp eq i32 %117, %111
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = add nsw i32 %117, 1
  %205 = add nsw i32 %111, 1
  br label %206

206:                                              ; preds = %144, %148, %146, %140, %180, %184, %182, %176, %192, %201, %203, %199, %187, %156, %165, %167, %163
  %207 = phi i32 [ %117, %140 ], [ %145, %144 ], [ %117, %148 ], [ %117, %146 ], [ %117, %156 ], [ %164, %163 ], [ %117, %167 ], [ %117, %165 ], [ %177, %176 ], [ 0, %180 ], [ %185, %184 ], [ %117, %182 ], [ %193, %192 ], [ %117, %199 ], [ %204, %203 ], [ %117, %201 ], [ %117, %187 ]
  %208 = phi i32 [ %141, %140 ], [ 0, %144 ], [ %149, %148 ], [ %116, %146 ], [ %157, %156 ], [ %116, %163 ], [ %168, %167 ], [ %116, %165 ], [ %116, %176 ], [ %181, %180 ], [ %116, %184 ], [ %116, %182 ], [ %116, %192 ], [ %200, %199 ], [ %116, %203 ], [ %116, %201 ], [ %116, %187 ]
  %209 = phi i32 [ %114, %140 ], [ %114, %144 ], [ %150, %148 ], [ %114, %146 ], [ %114, %156 ], [ %114, %163 ], [ %114, %167 ], [ %114, %165 ], [ %114, %176 ], [ %181, %180 ], [ %114, %184 ], [ %114, %182 ], [ %114, %192 ], [ %114, %199 ], [ %114, %203 ], [ %114, %201 ], [ %114, %187 ]
  %210 = phi i32 [ %113, %140 ], [ %113, %144 ], [ %113, %148 ], [ %113, %146 ], [ %113, %156 ], [ %113, %163 ], [ %169, %167 ], [ %113, %165 ], [ %113, %176 ], [ %113, %180 ], [ %113, %184 ], [ %113, %182 ], [ %113, %192 ], [ %200, %199 ], [ %113, %203 ], [ %113, %201 ], [ %113, %187 ]
  %211 = phi i32 [ %112, %140 ], [ %112, %144 ], [ %112, %148 ], [ %112, %146 ], [ %112, %156 ], [ %164, %163 ], [ %112, %167 ], [ %112, %165 ], [ %112, %176 ], [ %112, %180 ], [ %186, %184 ], [ %112, %182 ], [ %112, %192 ], [ %112, %199 ], [ %112, %203 ], [ %112, %201 ], [ %112, %187 ]
  %212 = phi i32 [ %111, %140 ], [ %145, %144 ], [ %111, %148 ], [ %111, %146 ], [ %111, %156 ], [ %111, %163 ], [ %111, %167 ], [ %111, %165 ], [ %111, %176 ], [ %111, %180 ], [ %111, %184 ], [ %111, %182 ], [ %111, %192 ], [ %111, %199 ], [ %205, %203 ], [ %111, %201 ], [ %111, %187 ]
  %213 = phi i32 [ -1, %140 ], [ 1, %144 ], [ 0, %148 ], [ -1, %146 ], [ 1, %156 ], [ -1, %163 ], [ 0, %167 ], [ 1, %165 ], [ 0, %176 ], [ 0, %180 ], [ -1, %184 ], [ 0, %182 ], [ 0, %192 ], [ 0, %199 ], [ 1, %203 ], [ 0, %201 ], [ %110, %187 ]
  %214 = phi i32 [ 0, %140 ], [ 0, %144 ], [ 1, %148 ], [ 0, %146 ], [ 0, %156 ], [ 0, %163 ], [ -1, %167 ], [ 0, %165 ], [ -1, %176 ], [ 1, %180 ], [ 0, %184 ], [ -1, %182 ], [ 1, %192 ], [ -1, %199 ], [ 0, %203 ], [ 1, %201 ], [ %109, %187 ]
  %215 = add nuw nsw i32 %115, 1
  %216 = load i32, ptr %17, align 4, !tbaa !89
  %217 = ashr i32 %216, 4
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %108, label %219, !llvm.loop !94

219:                                              ; preds = %206, %95
  %220 = phi i32 [ %105, %95 ], [ %134, %206 ]
  %221 = phi i32 [ %104, %95 ], [ %207, %206 ]
  %222 = phi i32 [ %103, %95 ], [ %208, %206 ]
  %223 = phi i32 [ %101, %95 ], [ %209, %206 ]
  %224 = phi i32 [ %100, %95 ], [ %210, %206 ]
  %225 = phi i32 [ %99, %95 ], [ %211, %206 ]
  %226 = phi i32 [ %98, %95 ], [ %212, %206 ]
  %227 = phi i32 [ %97, %95 ], [ %213, %206 ]
  %228 = phi i32 [ %96, %95 ], [ %214, %206 ]
  %229 = add nuw nsw i32 %102, 1
  %230 = load i32, ptr %14, align 8, !tbaa !88
  %231 = ashr i32 %230, 4
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %95, label %235, !llvm.loop !95

233:                                              ; preds = %25
  %234 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %28)
  call void @exit(i32 noundef 0) #18
  unreachable

235:                                              ; preds = %219, %77, %52, %83, %29, %32
  %236 = add nuw nsw i64 %26, 1
  %237 = icmp eq i64 %236, %24
  br i1 %237, label %238, label %25, !llvm.loop !96

238:                                              ; preds = %235, %3
  %239 = load ptr, ptr %4, align 8, !tbaa !47
  call void @free_mem3D(ptr noundef %239) #16
  call void @free(ptr noundef %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_scene_information(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %4) #16
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %4) #16
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %4) #16
  br label %15

15:                                               ; preds = %13, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %4) #16
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %4) #16
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.9, ptr noundef %4) #16
  %13 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef %4) #16
  %14 = tail call i32 @u_1(ptr noundef nonnull @.str.11, ptr noundef %4) #16
  %15 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %4) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef %4) #16
  br label %19

19:                                               ; preds = %17, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_layer_characteristics_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %4) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %17, %12 ], [ 0, %3 ]
  %14 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %4) #16
  %15 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %4) #16
  %16 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %4) #16
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %13, %10
  br i1 %18, label %19, label %12, !llvm.loop !97

19:                                               ; preds = %12, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_subsequence_characteristics_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %4) #16
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %4) #16
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %4) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %4) #16
  br label %16

16:                                               ; preds = %14, %3
  %17 = tail call i32 @u_1(ptr noundef nonnull @.str.19, ptr noundef %4) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %4) #16
  %21 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %4) #16
  %22 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %4) #16
  br label %23

23:                                               ; preds = %19, %16
  %24 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef %4) #16
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %31, %26 ], [ 0, %23 ]
  %28 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %4) #16
  %29 = tail call i32 @ue_v(ptr noundef nonnull @.str.22, ptr noundef %4) #16
  %30 = tail call i32 @u_1(ptr noundef nonnull @.str.23, ptr noundef %4) #16
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %33, label %26, !llvm.loop !98

33:                                               ; preds = %26, %23
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_full_frame_freeze_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %4) #16
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_full_frame_freeze_release_info(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_full_frame_snapshot_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %4) #16
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_progressive_refinement_start_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %4) #16
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %4) #16
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_progressive_refinement_end_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %4) #16
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_motion_constrained_slice_group_set_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.46, ptr noundef %4) #16
  %11 = add nsw i32 %10, 1
  %12 = tail call i32 @CeilLog2(i32 noundef %11) #16
  %13 = icmp slt i32 %10, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3, %14
  %15 = phi i32 [ %17, %14 ], [ 0, %3 ]
  %16 = tail call i32 @u_v(i32 noundef %12, ptr noundef nonnull @.str.47, ptr noundef %4) #16
  %17 = add nuw i32 %15, 1
  %18 = icmp eq i32 %15, %10
  br i1 %18, label %19, label %14, !llvm.loop !99

19:                                               ; preds = %14, %3
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %4) #16
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %4) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %4) #16
  br label %25

25:                                               ; preds = %23, %19
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_film_grain_characteristics_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %5) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %3
  %12 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef %5) #16
  %13 = tail call i32 @u_1(ptr noundef nonnull @.str.51, ptr noundef %5) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.52, ptr noundef %5) #16
  %17 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.53, ptr noundef %5) #16
  %18 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef %5) #16
  %19 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.55, ptr noundef %5) #16
  %20 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.56, ptr noundef %5) #16
  %21 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.57, ptr noundef %5) #16
  br label %22

22:                                               ; preds = %15, %11
  %23 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef %5) #16
  %24 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef %5) #16
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %29, %25 ]
  %27 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef %5) #16
  %28 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %26
  store i32 %27, ptr %28, align 4, !tbaa !72
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %25, !llvm.loop !100

31:                                               ; preds = %25, %54
  %32 = phi i64 [ %55, %54 ], [ 0, %25 ]
  %33 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !72
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef %5) #16
  %38 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %5) #16
  %39 = icmp slt i32 %37, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = icmp slt i32 %38, 0
  br label %42

42:                                               ; preds = %40, %51
  %43 = phi i32 [ 0, %40 ], [ %52, %51 ]
  %44 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %5) #16
  %45 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %5) #16
  br i1 %41, label %51, label %46

46:                                               ; preds = %42, %46
  %47 = phi i32 [ %49, %46 ], [ 0, %42 ]
  %48 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %5) #16
  %49 = add nuw i32 %47, 1
  %50 = icmp eq i32 %47, %38
  br i1 %50, label %51, label %46, !llvm.loop !101

51:                                               ; preds = %46, %42
  %52 = add nuw i32 %43, 1
  %53 = icmp eq i32 %43, %37
  br i1 %53, label %54, label %42, !llvm.loop !102

54:                                               ; preds = %51, %36, %31
  %55 = add nuw nsw i64 %32, 1
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %31, !llvm.loop !103

57:                                               ; preds = %54
  %58 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %5) #16
  br label %59

59:                                               ; preds = %57, %3
  tail call void @free(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_deblocking_filter_display_preference_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %4) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef %4) #16
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef %4) #16
  %13 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef %4) #16
  br label %14

14:                                               ; preds = %10, %3
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_stereo_video_info_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = tail call i32 @u_1(ptr noundef nonnull @.str.71, ptr noundef %4) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef %4) #16
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ @.str.74, %10 ], [ @.str.72, %3 ]
  %14 = tail call i32 @u_1(ptr noundef nonnull %13, ptr noundef %4) #16
  %15 = tail call i32 @u_1(ptr noundef nonnull @.str.75, ptr noundef %4) #16
  %16 = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef %4) #16
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_tone_mapping(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.tone_mapping_struct_tmp, align 4
  call void @llvm.lifetime.start.p0(i64 49192, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(49192) %4, i8 0, i64 49192, i1 false)
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = tail call i32 @ue_v(ptr noundef nonnull @.str.118, ptr noundef %5) #16
  store i32 %9, ptr %4, align 4, !tbaa !104
  %10 = tail call i32 @u_1(ptr noundef nonnull @.str.119, ptr noundef %5) #16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 1
  store i8 %11, ptr %12, align 4, !tbaa !106
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %14, label %238

14:                                               ; preds = %3
  %15 = tail call i32 @ue_v(ptr noundef nonnull @.str.120, ptr noundef %5) #16
  %16 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !107
  %17 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.121, ptr noundef %5) #16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 3
  store i8 %18, ptr %19, align 4, !tbaa !108
  %20 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.122, ptr noundef %5) #16
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 4
  store i8 %21, ptr %22, align 1, !tbaa !109
  %23 = tail call i32 @ue_v(ptr noundef nonnull @.str.50, ptr noundef %5) #16
  %24 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 5
  store i32 %23, ptr %24, align 4, !tbaa !110
  %25 = and i32 %17, 255
  %26 = shl nuw i32 1, %25
  %27 = and i32 %20, 255
  %28 = shl nuw i32 1, %27
  switch i32 %23, label %83 [
    i32 0, label %36
    i32 1, label %41
    i32 2, label %29
    i32 3, label %52
  ]

29:                                               ; preds = %14
  %30 = icmp eq i32 %27, 31
  br i1 %30, label %83, label %31

31:                                               ; preds = %29
  %32 = add nuw nsw i32 %25, 7
  %33 = and i32 %32, 504
  %34 = tail call i32 @llvm.smax.i32(i32 %28, i32 1)
  %35 = zext nneg i32 %34 to i64
  br label %46

36:                                               ; preds = %14
  %37 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef %5) #16
  %38 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 6
  store i32 %37, ptr %38, align 4, !tbaa !111
  %39 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef %5) #16
  %40 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 7
  store i32 %39, ptr %40, align 4, !tbaa !112
  br label %83

41:                                               ; preds = %14
  %42 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.124, ptr noundef %5) #16
  %43 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 8
  store i32 %42, ptr %43, align 4, !tbaa !113
  %44 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.125, ptr noundef %5) #16
  %45 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 9
  store i32 %44, ptr %45, align 4, !tbaa !114
  br label %83

46:                                               ; preds = %31, %46
  %47 = phi i64 [ 0, %31 ], [ %50, %46 ]
  %48 = tail call i32 @u_v(i32 noundef %33, ptr noundef nonnull @.str.126, ptr noundef %5) #16
  %49 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 10, i64 %47
  store i32 %48, ptr %49, align 4, !tbaa !72
  %50 = add nuw nsw i64 %47, 1
  %51 = icmp eq i64 %50, %35
  br i1 %51, label %83, label %46, !llvm.loop !115

52:                                               ; preds = %14
  %53 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.127, ptr noundef %5) #16
  %54 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 11
  store i32 %53, ptr %54, align 4, !tbaa !116
  %55 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12
  store i32 0, ptr %55, align 4, !tbaa !72
  %56 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13
  store i32 0, ptr %56, align 4, !tbaa !72
  %57 = add nsw i32 %26, -1
  %58 = add nsw i32 %53, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %59
  store i32 %57, ptr %60, align 4, !tbaa !72
  %61 = add nsw i32 %28, -1
  %62 = load i32, ptr %54, align 4, !tbaa !116
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %64
  store i32 %61, ptr %65, align 4, !tbaa !72
  %66 = load i32, ptr %54, align 4, !tbaa !116
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %83, label %68

68:                                               ; preds = %52
  %69 = add nuw nsw i32 %25, 7
  %70 = and i32 %69, 504
  %71 = add nuw nsw i32 %27, 7
  %72 = and i32 %71, 504
  %73 = add nuw i32 %66, 1
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %68, %75
  %76 = phi i64 [ 1, %68 ], [ %81, %75 ]
  %77 = tail call i32 @u_v(i32 noundef %70, ptr noundef nonnull @.str.128, ptr noundef %5) #16
  %78 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %76
  store i32 %77, ptr %78, align 4, !tbaa !72
  %79 = tail call i32 @u_v(i32 noundef %72, ptr noundef nonnull @.str.129, ptr noundef %5) #16
  %80 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %76
  store i32 %79, ptr %80, align 4, !tbaa !72
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %74
  br i1 %82, label %83, label %75, !llvm.loop !117

83:                                               ; preds = %75, %46, %52, %29, %14, %41, %36
  %84 = load i32, ptr %4, align 4, !tbaa !104
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %238

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 158
  %88 = load ptr, ptr %87, align 8, !tbaa !118
  store i32 1, ptr %88, align 8, !tbaa !119
  %89 = load i32, ptr %16, align 4, !tbaa !107
  %90 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 1
  store i32 %89, ptr %90, align 4, !tbaa !121
  %91 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 2
  store i8 %18, ptr %91, align 8, !tbaa !122
  %92 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 3
  store i8 %21, ptr %92, align 1, !tbaa !123
  %93 = load i32, ptr %24, align 4, !tbaa !110
  %94 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 4
  store i32 %93, ptr %94, align 4, !tbaa !124
  %95 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 5
  store i32 0, ptr %95, align 8, !tbaa !125
  switch i32 %93, label %238 [
    i32 0, label %115
    i32 1, label %103
    i32 2, label %172
    i32 3, label %96
  ]

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 11
  %98 = load i32, ptr %97, align 4, !tbaa !116
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %238, label %100

100:                                              ; preds = %96
  %101 = add nuw i32 %98, 1
  %102 = zext i32 %101 to i64
  br label %205

103:                                              ; preds = %86
  %104 = icmp eq i32 %25, 31
  br i1 %104, label %238, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 8
  %107 = load i32, ptr %106, align 4, !tbaa !113
  %108 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 9
  %109 = load i32, ptr %108, align 4, !tbaa !114
  %110 = sitofp i32 %109 to double
  %111 = add nsw i32 %28, -1
  %112 = sitofp i32 %111 to double
  %113 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  %114 = zext nneg i32 %113 to i64
  br label %156

115:                                              ; preds = %86
  %116 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 6
  %117 = load i32, ptr %116, align 4, !tbaa !111
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr i8, ptr %88, i64 20
  %121 = add nuw i32 %117, 1
  %122 = zext i32 %121 to i64
  %123 = shl nuw nsw i64 %122, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %120, i8 0, i64 %123, i1 false), !tbaa !126
  br label %124

124:                                              ; preds = %119, %115
  %125 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 7
  %126 = load i32, ptr %125, align 4, !tbaa !112
  %127 = add nsw i32 %117, 1
  %128 = icmp slt i32 %127, %126
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = add nsw i32 %28, -1
  %131 = sub nsw i32 %126, %117
  %132 = sext i32 %127 to i64
  br label %140

133:                                              ; preds = %140, %124
  %134 = icmp slt i32 %126, %26
  br i1 %134, label %135, label %238

135:                                              ; preds = %133
  %136 = trunc i32 %28 to i16
  %137 = add i16 %136, -1
  %138 = sext i32 %126 to i64
  %139 = sext i32 %26 to i64
  br label %151

140:                                              ; preds = %129, %140
  %141 = phi i64 [ %132, %129 ], [ %148, %140 ]
  %142 = trunc i64 %141 to i32
  %143 = sub i32 %142, %117
  %144 = mul i32 %143, %130
  %145 = sdiv i32 %144, %131
  %146 = trunc i32 %145 to i16
  %147 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 6, i64 %141
  store i16 %146, ptr %147, align 2, !tbaa !126
  %148 = add nsw i64 %141, 1
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %126, %149
  br i1 %150, label %133, label %140, !llvm.loop !127

151:                                              ; preds = %135, %151
  %152 = phi i64 [ %138, %135 ], [ %154, %151 ]
  %153 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 6, i64 %152
  store i16 %137, ptr %153, align 2, !tbaa !126
  %154 = add nsw i64 %152, 1
  %155 = icmp eq i64 %154, %139
  br i1 %155, label %238, label %151, !llvm.loop !128

156:                                              ; preds = %105, %156
  %157 = phi i64 [ 0, %105 ], [ %170, %156 ]
  %158 = trunc i64 %157 to i32
  %159 = sub i32 %158, %107
  %160 = sitofp i32 %159 to double
  %161 = fmul double %160, -6.000000e+00
  %162 = fdiv double %161, %110
  %163 = tail call double @exp(double noundef %162) #16
  %164 = fadd double %163, 1.000000e+00
  %165 = fdiv double %112, %164
  %166 = fadd double %165, 5.000000e-01
  %167 = fptoui double %166 to i16
  %168 = load ptr, ptr %87, align 8, !tbaa !118
  %169 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %168, i64 0, i32 6, i64 %157
  store i16 %167, ptr %169, align 2, !tbaa !126
  %170 = add nuw nsw i64 %157, 1
  %171 = icmp eq i64 %170, %114
  br i1 %171, label %238, label %156, !llvm.loop !129

172:                                              ; preds = %86
  %173 = add i32 %28, -1
  %174 = icmp sgt i32 %28, 1
  br i1 %174, label %175, label %238

175:                                              ; preds = %172
  %176 = zext i32 %173 to i64
  br label %182

177:                                              ; preds = %194
  %178 = trunc i64 %197 to i32
  br label %179

179:                                              ; preds = %177, %182
  %180 = phi i32 [ %185, %182 ], [ %178, %177 ]
  %181 = icmp eq i64 %186, %176
  br i1 %181, label %199, label %182, !llvm.loop !130

182:                                              ; preds = %175, %179
  %183 = phi i64 [ 0, %175 ], [ %186, %179 ]
  %184 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 10, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !72
  %186 = add nuw nsw i64 %183, 1
  %187 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 10, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !72
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %179

190:                                              ; preds = %182
  %191 = trunc i64 %183 to i16
  %192 = sext i32 %185 to i64
  %193 = sext i32 %188 to i64
  br label %194

194:                                              ; preds = %190, %194
  %195 = phi i64 [ %192, %190 ], [ %197, %194 ]
  %196 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 6, i64 %195
  store i16 %191, ptr %196, align 2, !tbaa !126
  %197 = add nsw i64 %195, 1
  %198 = icmp eq i64 %197, %193
  br i1 %198, label %177, label %194, !llvm.loop !131

199:                                              ; preds = %179
  %200 = trunc i32 %173 to i16
  %201 = sext i32 %180 to i64
  %202 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 6, i64 %201
  store i16 %200, ptr %202, align 2, !tbaa !126
  br label %238

203:                                              ; preds = %225, %205
  %204 = icmp eq i64 %207, %102
  br i1 %204, label %238, label %205, !llvm.loop !132

205:                                              ; preds = %100, %203
  %206 = phi i64 [ 0, %100 ], [ %207, %203 ]
  %207 = add nuw nsw i64 %206, 1
  %208 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !72
  %210 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %206
  %211 = load i32, ptr %210, align 4, !tbaa !72
  %212 = sub nsw i32 %209, %211
  %213 = sitofp i32 %212 to double
  %214 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %207
  %215 = load i32, ptr %214, align 4, !tbaa !72
  %216 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %206
  %217 = load i32, ptr %216, align 4, !tbaa !72
  %218 = sub nsw i32 %215, %217
  %219 = sitofp i32 %218 to double
  %220 = fdiv double %213, %219
  %221 = icmp sgt i32 %217, %215
  br i1 %221, label %203, label %222

222:                                              ; preds = %205
  %223 = sext i32 %217 to i64
  %224 = add i32 %215, 1
  br label %225

225:                                              ; preds = %222, %225
  %226 = phi i64 [ %223, %222 ], [ %235, %225 ]
  %227 = trunc i64 %226 to i32
  %228 = sub i32 %227, %217
  %229 = sitofp i32 %228 to double
  %230 = fmul double %220, %229
  %231 = fptosi double %230 to i32
  %232 = add nsw i32 %211, %231
  %233 = trunc i32 %232 to i16
  %234 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %88, i64 0, i32 6, i64 %226
  store i16 %233, ptr %234, align 2, !tbaa !126
  %235 = add nsw i64 %226, 1
  %236 = trunc i64 %235 to i32
  %237 = icmp eq i32 %224, %236
  br i1 %237, label %203, label %225, !llvm.loop !133

238:                                              ; preds = %203, %156, %151, %96, %103, %133, %199, %172, %86, %83, %3
  tail call void @free(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 49192, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_post_filter_hints_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.decoder_params, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !48
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %5) #16
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.131, ptr noundef %5) #16
  %13 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.132, ptr noundef %5) #16
  %14 = call i32 @get_mem3Dint(ptr noundef nonnull %4, i32 noundef 3, i32 noundef %11, i32 noundef %12) #16
  %15 = icmp eq i32 %11, 0
  %16 = icmp eq i32 %12, 0
  %17 = zext i32 %11 to i64
  %18 = zext i32 %12 to i64
  br label %19

19:                                               ; preds = %3, %37
  %20 = phi i64 [ 0, %3 ], [ %38, %37 ]
  br i1 %15, label %37, label %21

21:                                               ; preds = %19, %34
  %22 = phi i64 [ %35, %34 ], [ 0, %19 ]
  br i1 %16, label %34, label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ %32, %23 ], [ 0, %21 ]
  %25 = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %5) #16
  %26 = load ptr, ptr %4, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 %22
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = getelementptr inbounds i32, ptr %30, i64 %24
  store i32 %25, ptr %31, align 4, !tbaa !72
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %34, label %23, !llvm.loop !134

34:                                               ; preds = %23, %21
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %21, !llvm.loop !135

37:                                               ; preds = %34, %19
  %38 = add nuw nsw i64 %20, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %40, label %19, !llvm.loop !136

40:                                               ; preds = %37
  %41 = call i32 @u_1(ptr noundef nonnull @.str.134, ptr noundef %5) #16
  %42 = load ptr, ptr %4, align 8, !tbaa !47
  call void @free_mem3Dint(ptr noundef %42) #16
  call void @free(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @interpret_frame_packing_arrangement_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.100, ptr noundef %4) #16
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.101, ptr noundef %4) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = tail call i32 @u_v(i32 noundef 7, ptr noundef nonnull @.str.102, ptr noundef %4) #16
  %15 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef %4) #16
  %16 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.104, ptr noundef %4) #16
  %17 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef %4) #16
  %18 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef %4) #16
  %19 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef %4) #16
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef %4) #16
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.109, ptr noundef %4) #16
  %22 = tail call i32 @u_1(ptr noundef nonnull @.str.110, ptr noundef %4) #16
  %23 = icmp eq i32 %15, 0
  %24 = and i32 %14, 255
  %25 = icmp ne i32 %24, 5
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef %4) #16
  %29 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef %4) #16
  %30 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.113, ptr noundef %4) #16
  %31 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.114, ptr noundef %4) #16
  br label %32

32:                                               ; preds = %27, %13
  %33 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.115, ptr noundef %4) #16
  %34 = tail call i32 @ue_v(ptr noundef nonnull @.str.116, ptr noundef %4) #16
  br label %35

35:                                               ; preds = %32, %3
  %36 = tail call i32 @u_1(ptr noundef nonnull @.str.117, ptr noundef %4) #16
  tail call void @free(ptr noundef %4) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @interpret_reserved_info(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @get_mem3D(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare void @free_mem3D(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dec_ref_pic_marking(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CeilLog2(i32 noundef) local_unnamed_addr #4

declare void @activate_sps(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @i_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @tone_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  %8 = zext nneg i32 %3 to i64
  %9 = zext nneg i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %25, %24 ]
  br i1 %7, label %12, label %24

12:                                               ; preds = %10
  %13 = getelementptr inbounds ptr, ptr %0, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %22, %15 ]
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !126
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds i16, ptr %1, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !126
  store i16 %21, ptr %17, align 2, !tbaa !126
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %15, !llvm.loop !137

24:                                               ; preds = %15, %10
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %8
  br i1 %26, label %27, label %10, !llvm.loop !138

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tone_mapping_sei(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store i32 0, ptr %0, align 8, !tbaa !119
  %2 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @update_tone_mapping_sei(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !121
  switch i32 %3, label %6 [
    i32 0, label %4
    i32 1, label %14
  ]

4:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 5
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !125
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !125
  %10 = icmp ult i32 %9, %3
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  store i32 0, ptr %0, align 8, !tbaa !119
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi ptr [ %7, %11 ], [ %5, %4 ]
  store i32 0, ptr %13, align 8, !tbaa !125
  br label %14

14:                                               ; preds = %12, %1, %6
  ret void
}

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @free_mem3Dint(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !38, !39}
!41 = !{!42, !43, i64 12}
!42 = !{!"bit_stream", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !44, i64 16, !43, i64 24}
!43 = !{!"int", !35, i64 0}
!44 = !{!"any pointer", !35, i64 0}
!45 = !{!42, !44, i64 16}
!46 = !{!42, !43, i64 8}
!47 = !{!44, !44, i64 0}
!48 = !{!49, !43, i64 24}
!49 = !{!"decoder_params", !44, i64 0, !44, i64 8, !50, i64 16, !43, i64 24, !44, i64 32, !43, i64 40}
!50 = !{!"long", !35, i64 0}
!51 = !{!52, !43, i64 849260}
!52 = !{!"video_par", !44, i64 0, !44, i64 8, !44, i64 16, !35, i64 24, !35, i64 132120, !44, i64 699416, !35, i64 699424, !43, i64 848672, !43, i64 848676, !43, i64 848680, !43, i64 848684, !44, i64 848688, !44, i64 848696, !44, i64 848704, !43, i64 848712, !43, i64 848716, !43, i64 848720, !43, i64 848724, !43, i64 848728, !44, i64 848736, !44, i64 848744, !35, i64 848752, !43, i64 848776, !43, i64 848780, !43, i64 848784, !43, i64 848788, !43, i64 848792, !44, i64 848800, !35, i64 848808, !44, i64 848832, !44, i64 848840, !35, i64 848848, !43, i64 848872, !43, i64 848876, !44, i64 848880, !44, i64 848888, !35, i64 848896, !43, i64 848920, !44, i64 848928, !44, i64 848936, !43, i64 848944, !43, i64 848948, !43, i64 848952, !43, i64 848956, !43, i64 848960, !43, i64 848964, !43, i64 848968, !43, i64 848972, !43, i64 848976, !43, i64 848980, !43, i64 848984, !43, i64 848988, !43, i64 848992, !43, i64 848996, !43, i64 849000, !43, i64 849004, !43, i64 849008, !43, i64 849012, !43, i64 849016, !43, i64 849020, !43, i64 849024, !43, i64 849028, !43, i64 849032, !43, i64 849036, !53, i64 849040, !53, i64 849042, !35, i64 849044, !43, i64 849052, !43, i64 849056, !35, i64 849060, !35, i64 849072, !43, i64 849084, !43, i64 849088, !43, i64 849092, !43, i64 849096, !43, i64 849100, !43, i64 849104, !43, i64 849108, !43, i64 849112, !43, i64 849116, !43, i64 849120, !35, i64 849124, !35, i64 849148, !35, i64 849172, !43, i64 849196, !43, i64 849200, !43, i64 849204, !43, i64 849208, !43, i64 849212, !43, i64 849216, !43, i64 849220, !43, i64 849224, !43, i64 849228, !43, i64 849232, !43, i64 849236, !43, i64 849240, !43, i64 849244, !43, i64 849248, !43, i64 849252, !43, i64 849256, !43, i64 849260, !43, i64 849264, !43, i64 849268, !43, i64 849272, !43, i64 849276, !43, i64 849280, !43, i64 849284, !44, i64 849288, !44, i64 849296, !54, i64 849304, !54, i64 849624, !54, i64 849944, !54, i64 850264, !54, i64 850584, !54, i64 850904, !54, i64 851224, !54, i64 851544, !43, i64 851864, !43, i64 851868, !43, i64 851872, !50, i64 851880, !43, i64 851888, !35, i64 851892, !43, i64 855988, !43, i64 855992, !43, i64 855996, !43, i64 856000, !43, i64 856004, !43, i64 856008, !43, i64 856012, !44, i64 856016, !44, i64 856024, !44, i64 856032, !44, i64 856040, !44, i64 856048, !35, i64 856056, !44, i64 856456, !35, i64 856464, !44, i64 856488, !44, i64 856496, !44, i64 856504, !43, i64 856512, !44, i64 856520, !35, i64 856528, !44, i64 856608, !44, i64 856616, !44, i64 856624, !44, i64 856632, !43, i64 856640, !43, i64 856644, !43, i64 856648, !44, i64 856656, !44, i64 856664, !35, i64 856672, !35, i64 856688, !44, i64 856704, !44, i64 856712, !43, i64 856720, !44, i64 856728, !44, i64 856736, !44, i64 856744, !44, i64 856752, !44, i64 856760, !44, i64 856768, !44, i64 856776, !44, i64 856784, !44, i64 856792, !44, i64 856800, !44, i64 856808, !44, i64 856816, !43, i64 856824, !44, i64 856832, !43, i64 856840, !43, i64 856844, !43, i64 856848, !43, i64 856852, !43, i64 856856, !43, i64 856860, !43, i64 856864, !44, i64 856872}
!53 = !{!"short", !35, i64 0}
!54 = !{!"image_data", !55, i64 0, !35, i64 136, !35, i64 160, !35, i64 184, !35, i64 208, !35, i64 232, !35, i64 256, !35, i64 280, !35, i64 292, !35, i64 304}
!55 = !{!"frame_format", !43, i64 0, !43, i64 4, !56, i64 8, !35, i64 16, !35, i64 28, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !35, i64 72, !43, i64 84, !35, i64 88, !35, i64 100, !35, i64 112, !43, i64 124, !43, i64 128}
!56 = !{!"double", !35, i64 0}
!57 = !{!52, !43, i64 849268}
!58 = distinct !{!58, !38, !39}
!59 = !{!60, !43, i64 3168}
!60 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !35, i64 44, !35, i64 92, !35, i64 476, !35, i64 2012, !35, i64 2036, !43, i64 2060, !43, i64 2064, !43, i64 2068, !43, i64 2072, !43, i64 2076, !43, i64 2080, !43, i64 2084, !43, i64 2088, !43, i64 2092, !35, i64 2096, !43, i64 3120, !43, i64 3124, !43, i64 3128, !43, i64 3132, !43, i64 3136, !43, i64 3140, !43, i64 3144, !43, i64 3148, !43, i64 3152, !43, i64 3156, !43, i64 3160, !43, i64 3164, !43, i64 3168, !61, i64 3172, !43, i64 4120, !43, i64 4124}
!61 = !{!"", !43, i64 0, !43, i64 4, !53, i64 8, !53, i64 10, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !62, i64 80, !43, i64 492, !62, i64 496, !43, i64 908, !43, i64 912, !43, i64 916, !43, i64 920, !43, i64 924, !43, i64 928, !43, i64 932, !43, i64 936, !43, i64 940, !43, i64 944}
!62 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !35, i64 12, !35, i64 140, !35, i64 268, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408}
!63 = !{!60, !43, i64 3248}
!64 = !{!60, !43, i64 3252}
!65 = !{!60, !43, i64 3648}
!66 = distinct !{!66, !38, !39}
!67 = !{!60, !43, i64 3664}
!68 = !{!60, !43, i64 3668}
!69 = !{!60, !43, i64 4064}
!70 = distinct !{!70, !38, !39}
!71 = !{!52, !44, i64 16}
!72 = !{!43, !43, i64 0}
!73 = !{!60, !43, i64 4084}
!74 = distinct !{!74, !38, !39}
!75 = distinct !{!75, !38, !39}
!76 = !{!60, !43, i64 3136}
!77 = !{!78, !44, i64 248}
!78 = !{!"slice", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !43, i64 32, !44, i64 40, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !35, i64 88, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !53, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !35, i64 136, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !35, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !44, i64 248, !35, i64 256, !35, i64 264, !44, i64 312, !44, i64 320, !44, i64 328, !35, i64 336, !35, i64 1104, !35, i64 1112, !35, i64 1128, !35, i64 1144, !35, i64 1160, !43, i64 1176, !43, i64 1180, !43, i64 1184, !79, i64 1188, !53, i64 1220, !53, i64 1222, !53, i64 1224, !43, i64 1228, !43, i64 1232, !43, i64 1236, !43, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !35, i64 1288, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !35, i64 1392, !35, i64 2544, !35, i64 3696, !35, i64 8304, !35, i64 12912, !35, i64 13008, !43, i64 13264, !43, i64 13268, !53, i64 13272, !53, i64 13274, !53, i64 13276, !53, i64 13278, !44, i64 13280, !44, i64 13288, !44, i64 13296, !53, i64 13304, !53, i64 13306, !43, i64 13308, !43, i64 13312, !44, i64 13320, !44, i64 13328, !43, i64 13336, !35, i64 13340, !44, i64 13408, !44, i64 13416, !44, i64 13424, !44, i64 13432, !44, i64 13440, !44, i64 13448, !44, i64 13456, !44, i64 13464, !44, i64 13472, !44, i64 13480, !44, i64 13488, !44, i64 13496, !43, i64 13504, !44, i64 13512, !44, i64 13520, !44, i64 13528, !44, i64 13536, !44, i64 13544, !35, i64 13552}
!79 = !{!"nalunitheadermvcext_tag", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28}
!80 = !{!78, !43, i64 48}
!81 = !{!78, !43, i64 236}
!82 = !{!78, !43, i64 240}
!83 = !{!78, !43, i64 244}
!84 = !{!85, !44, i64 24}
!85 = !{!"DecRefPicMarking_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !44, i64 24}
!86 = distinct !{!86, !38, !39}
!87 = !{!52, !43, i64 849024}
!88 = !{!52, !43, i64 848784}
!89 = !{!52, !43, i64 848780}
!90 = distinct !{!90, !38, !39}
!91 = distinct !{!91, !38, !39}
!92 = distinct !{!92, !38, !39}
!93 = distinct !{!93, !38, !39}
!94 = distinct !{!94, !38, !39}
!95 = distinct !{!95, !38, !39}
!96 = distinct !{!96, !38, !39}
!97 = distinct !{!97, !38, !39}
!98 = distinct !{!98, !38, !39}
!99 = distinct !{!99, !38, !39}
!100 = distinct !{!100, !38, !39}
!101 = distinct !{!101, !38, !39}
!102 = distinct !{!102, !38, !39}
!103 = distinct !{!103, !38, !39}
!104 = !{!105, !43, i64 0}
!105 = !{!"", !43, i64 0, !35, i64 4, !43, i64 8, !35, i64 12, !35, i64 13, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !35, i64 36, !43, i64 16420, !35, i64 16424, !35, i64 32808}
!106 = !{!105, !35, i64 4}
!107 = !{!105, !43, i64 8}
!108 = !{!105, !35, i64 12}
!109 = !{!105, !35, i64 13}
!110 = !{!105, !43, i64 16}
!111 = !{!105, !43, i64 20}
!112 = !{!105, !43, i64 24}
!113 = !{!105, !43, i64 28}
!114 = !{!105, !43, i64 32}
!115 = distinct !{!115, !38, !39}
!116 = !{!105, !43, i64 16420}
!117 = distinct !{!117, !38, !39}
!118 = !{!52, !44, i64 856728}
!119 = !{!120, !43, i64 0}
!120 = !{!"tone_mapping_struct_s", !43, i64 0, !43, i64 4, !35, i64 8, !35, i64 9, !43, i64 12, !43, i64 16, !35, i64 20, !44, i64 8216, !43, i64 8224}
!121 = !{!120, !43, i64 4}
!122 = !{!120, !35, i64 8}
!123 = !{!120, !35, i64 9}
!124 = !{!120, !43, i64 12}
!125 = !{!120, !43, i64 16}
!126 = !{!53, !53, i64 0}
!127 = distinct !{!127, !38, !39}
!128 = distinct !{!128, !38, !39}
!129 = distinct !{!129, !38, !39}
!130 = distinct !{!130, !38, !39}
!131 = distinct !{!131, !38, !39}
!132 = distinct !{!132, !38, !39}
!133 = distinct !{!133, !38, !39}
!134 = distinct !{!134, !38, !39}
!135 = distinct !{!135, !38, !39}
!136 = distinct !{!136, !38, !39}
!137 = distinct !{!137, !38, !39}
!138 = distinct !{!138, !38, !39}

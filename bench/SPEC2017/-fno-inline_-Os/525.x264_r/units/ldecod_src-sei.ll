; ModuleID = 'ldecod_src/sei.c'
source_filename = "ldecod_src/sei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
@switch.table.interpret_picture_timing_info = private unnamed_addr constant [9 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 3], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @InterpretSEIMessage(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %112, %4
  %6 = phi i32 [ 1, %4 ], [ %113, %112 ]
  %7 = sext i32 %6 to i64
  %8 = add i32 %6, 2
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %18, %9 ], [ %8, %5 ]
  %11 = phi i64 [ %15, %9 ], [ %7, %5 ]
  %12 = phi i32 [ %17, %9 ], [ 0, %5 ]
  %13 = getelementptr inbounds i8, ptr %0, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = add i64 %11, 1
  %16 = icmp eq i8 %14, -1
  %17 = add nuw nsw i32 %12, 255
  %18 = add i32 %10, 1
  br i1 %16, label %9, label %19, !llvm.loop !37

19:                                               ; preds = %9
  %20 = trunc i64 %11 to i32
  %21 = zext i8 %14 to i32
  %22 = add nuw nsw i32 %12, %21
  %23 = add nsw i32 %20, 2
  %24 = shl i64 %15, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = icmp eq i8 %27, -1
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = sext i32 %10 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %30, %29 ], [ %35, %31 ]
  %33 = phi i32 [ 0, %29 ], [ %34, %31 ]
  %34 = add nuw nsw i32 %33, 255
  %35 = add i64 %32, 1
  %36 = getelementptr inbounds i8, ptr %0, i64 %32
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = icmp eq i8 %37, -1
  br i1 %38, label %31, label %39, !llvm.loop !39

39:                                               ; preds = %31
  %40 = trunc i64 %35 to i32
  br label %41

41:                                               ; preds = %39, %19
  %42 = phi i32 [ 0, %19 ], [ %34, %39 ]
  %43 = phi i32 [ %23, %19 ], [ %40, %39 ]
  %44 = phi i8 [ %27, %19 ], [ %37, %39 ]
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %42, %45
  switch i32 %22, label %112 [
    i32 0, label %49
    i32 1, label %52
    i32 2, label %55
    i32 45, label %109
    i32 22, label %106
    i32 23, label %103
    i32 6, label %58
    i32 7, label %61
    i32 8, label %64
    i32 9, label %67
    i32 10, label %70
    i32 11, label %73
    i32 12, label %76
    i32 13, label %79
    i32 21, label %100
    i32 15, label %82
    i32 16, label %85
    i32 17, label %88
    i32 18, label %91
    i32 19, label %47
    i32 20, label %97
  ]

47:                                               ; preds = %41
  %48 = sext i32 %43 to i64
  br label %94

49:                                               ; preds = %41
  %50 = sext i32 %43 to i64
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  tail call void @interpret_buffering_period_info(ptr noundef %51, i32 noundef %46, ptr noundef %2) #15
  br label %112

52:                                               ; preds = %41
  %53 = sext i32 %43 to i64
  %54 = getelementptr inbounds i8, ptr %0, i64 %53
  tail call void @interpret_picture_timing_info(ptr noundef %54, i32 noundef %46, ptr noundef %2) #15
  br label %112

55:                                               ; preds = %41
  %56 = sext i32 %43 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  tail call void @interpret_pan_scan_rect_info(ptr noundef %57, i32 noundef %46, ptr poison) #15
  br label %112

58:                                               ; preds = %41
  %59 = sext i32 %43 to i64
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  tail call void @interpret_recovery_point_info(ptr noundef %60, i32 noundef %46, ptr noundef %2) #15
  br label %112

61:                                               ; preds = %41
  %62 = sext i32 %43 to i64
  %63 = getelementptr inbounds i8, ptr %0, i64 %62
  tail call void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %63, i32 noundef %46, ptr noundef %2, ptr noundef %3) #15
  br label %112

64:                                               ; preds = %41
  %65 = sext i32 %43 to i64
  %66 = getelementptr inbounds i8, ptr %0, i64 %65
  tail call void @interpret_spare_pic(ptr noundef %66, i32 noundef %46, ptr noundef %2) #15
  br label %112

67:                                               ; preds = %41
  %68 = sext i32 %43 to i64
  %69 = getelementptr inbounds i8, ptr %0, i64 %68
  tail call void @interpret_scene_information(ptr noundef %69, i32 noundef %46, ptr poison) #15
  br label %112

70:                                               ; preds = %41
  %71 = sext i32 %43 to i64
  %72 = getelementptr inbounds i8, ptr %0, i64 %71
  tail call void @interpret_subsequence_info(ptr noundef %72, i32 noundef %46, ptr poison) #15
  br label %112

73:                                               ; preds = %41
  %74 = sext i32 %43 to i64
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  tail call void @interpret_subsequence_layer_characteristics_info(ptr noundef %75, i32 noundef %46, ptr poison) #15
  br label %112

76:                                               ; preds = %41
  %77 = sext i32 %43 to i64
  %78 = getelementptr inbounds i8, ptr %0, i64 %77
  tail call void @interpret_subsequence_characteristics_info(ptr noundef %78, i32 noundef %46, ptr poison) #15
  br label %112

79:                                               ; preds = %41
  %80 = sext i32 %43 to i64
  %81 = getelementptr inbounds i8, ptr %0, i64 %80
  tail call void @interpret_full_frame_freeze_info(ptr noundef %81, i32 noundef %46, ptr poison) #15
  br label %112

82:                                               ; preds = %41
  %83 = sext i32 %43 to i64
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  tail call void @interpret_full_frame_snapshot_info(ptr noundef %84, i32 noundef %46, ptr poison) #15
  br label %112

85:                                               ; preds = %41
  %86 = sext i32 %43 to i64
  %87 = getelementptr inbounds i8, ptr %0, i64 %86
  tail call void @interpret_progressive_refinement_start_info(ptr noundef %87, i32 noundef %46, ptr poison) #15
  br label %112

88:                                               ; preds = %41
  %89 = sext i32 %43 to i64
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  tail call void @interpret_progressive_refinement_end_info(ptr noundef %90, i32 noundef %46, ptr poison) #15
  br label %112

91:                                               ; preds = %41
  %92 = sext i32 %43 to i64
  %93 = getelementptr inbounds i8, ptr %0, i64 %92
  tail call void @interpret_motion_constrained_slice_group_set_info(ptr noundef %93, i32 noundef %46, ptr poison) #15
  br label %94

94:                                               ; preds = %47, %91
  %95 = phi i64 [ %48, %47 ], [ %92, %91 ]
  %96 = getelementptr inbounds i8, ptr %0, i64 %95
  tail call void @interpret_film_grain_characteristics_info(ptr noundef %96, i32 noundef %46, ptr poison) #15
  br label %112

97:                                               ; preds = %41
  %98 = sext i32 %43 to i64
  %99 = getelementptr inbounds i8, ptr %0, i64 %98
  tail call void @interpret_deblocking_filter_display_preference_info(ptr noundef %99, i32 noundef %46, ptr poison) #15
  br label %112

100:                                              ; preds = %41
  %101 = sext i32 %43 to i64
  %102 = getelementptr inbounds i8, ptr %0, i64 %101
  tail call void @interpret_stereo_video_info_info(ptr noundef %102, i32 noundef %46, ptr poison) #15
  br label %112

103:                                              ; preds = %41
  %104 = sext i32 %43 to i64
  %105 = getelementptr inbounds i8, ptr %0, i64 %104
  tail call void @interpret_tone_mapping(ptr noundef %105, i32 noundef %46, ptr noundef %2) #15
  br label %112

106:                                              ; preds = %41
  %107 = sext i32 %43 to i64
  %108 = getelementptr inbounds i8, ptr %0, i64 %107
  tail call void @interpret_post_filter_hints_info(ptr noundef %108, i32 noundef %46, ptr poison) #15
  br label %112

109:                                              ; preds = %41
  %110 = sext i32 %43 to i64
  %111 = getelementptr inbounds i8, ptr %0, i64 %110
  tail call void @interpret_frame_packing_arrangement_info(ptr noundef %111, i32 noundef %46, ptr poison) #15
  br label %112

112:                                              ; preds = %41, %109, %106, %103, %100, %97, %94, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49
  %113 = add nsw i32 %46, %43
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !34
  %117 = icmp eq i8 %116, -128
  br i1 %117, label %118, label %5, !llvm.loop !40

118:                                              ; preds = %112
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_buffering_period_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.77, ptr noundef %4) #17
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11
  tail call void @activate_sps(ptr noundef %2, ptr noundef nonnull %12) #17
  %13 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 38
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 20
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 21
  %22 = load i32, ptr %21, align 4, !tbaa !57
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 21, i32 6
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %34, %26 ]
  %28 = load i32, ptr %25, align 4, !tbaa !58
  %29 = add i32 %28, 1
  %30 = tail call i32 @u_v(i32 noundef %29, ptr noundef nonnull @.str.78, ptr noundef %4) #17
  %31 = load i32, ptr %25, align 4, !tbaa !58
  %32 = add i32 %31, 1
  %33 = tail call i32 @u_v(i32 noundef %32, ptr noundef nonnull @.str.79, ptr noundef %4) #17
  %34 = add nuw i32 %27, 1
  %35 = load i32, ptr %21, align 4, !tbaa !57
  %36 = add i32 %35, 1
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %26, label %38, !llvm.loop !59

38:                                               ; preds = %26, %20, %16
  %39 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 22
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 23
  %44 = load i32, ptr %43, align 4, !tbaa !61
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %11, i32 39, i32 23, i32 6
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ 0, %46 ], [ %56, %48 ]
  %50 = load i32, ptr %47, align 4, !tbaa !62
  %51 = add i32 %50, 1
  %52 = tail call i32 @u_v(i32 noundef %51, ptr noundef nonnull @.str.78, ptr noundef %4) #17
  %53 = load i32, ptr %47, align 4, !tbaa !62
  %54 = add i32 %53, 1
  %55 = tail call i32 @u_v(i32 noundef %54, ptr noundef nonnull @.str.79, ptr noundef %4) #17
  %56 = add nuw i32 %49, 1
  %57 = load i32, ptr %43, align 4, !tbaa !61
  %58 = add i32 %57, 1
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %48, label %60, !llvm.loop !63

60:                                               ; preds = %48, %42, %38, %3
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_picture_timing_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !47
  %9 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 52, i64 1, ptr %8) #18
  br label %106

10:                                               ; preds = %3
  %11 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
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
  %18 = load i32, ptr %17, align 4, !tbaa !51
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %105, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 20
  %22 = load i32, ptr %21, align 4, !tbaa !56
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 22
  %26 = load i32, ptr %25, align 4, !tbaa !60
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 21, i32 7
  %30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 21, i32 8
  br label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 23, i32 8
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 23, i32 7
  br label %34

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %32, %31 ], [ %30, %28 ]
  %36 = phi ptr [ %33, %31 ], [ %29, %28 ]
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = add i32 %37, 1
  %39 = load i32, ptr %35, align 4, !tbaa !69
  %40 = add i32 %39, 1
  %41 = tail call i32 @u_v(i32 noundef %38, ptr noundef nonnull @.str.81, ptr noundef nonnull %11) #17
  %42 = tail call i32 @u_v(i32 noundef %40, ptr noundef nonnull @.str.82, ptr noundef nonnull %11) #17
  %43 = load i32, ptr %17, align 4, !tbaa !51
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %105, label %45

45:                                               ; preds = %24, %34
  %46 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 25
  %47 = load i32, ptr %46, align 4, !tbaa !70
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %105, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull %11) #17
  %51 = icmp ult i32 %50, 9
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @error(ptr noundef nonnull @.str.84, i32 noundef 500) #17
  br label %105

53:                                               ; preds = %49
  %54 = zext nneg i32 %50 to i64
  %55 = getelementptr inbounds [9 x i32], ptr @switch.table.interpret_picture_timing_info, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 22
  %58 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 23, i32 9
  %59 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 39, i32 21, i32 9
  br label %60

60:                                               ; preds = %53, %102
  %61 = phi i32 [ 0, %53 ], [ %103, %102 ]
  %62 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %11) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %102, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.86, ptr noundef %11) #17
  %66 = tail call i32 @u_1(ptr noundef nonnull @.str.87, ptr noundef %11) #17
  %67 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.88, ptr noundef %11) #17
  %68 = tail call i32 @u_1(ptr noundef nonnull @.str.89, ptr noundef %11) #17
  %69 = tail call i32 @u_1(ptr noundef nonnull @.str.90, ptr noundef %11) #17
  %70 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %11) #17
  %71 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.92, ptr noundef %11) #17
  %72 = icmp eq i32 %68, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %11) #17
  %75 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %11) #17
  br label %87

76:                                               ; preds = %64
  %77 = tail call i32 @u_1(ptr noundef nonnull @.str.96, ptr noundef %11) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.93, ptr noundef %11) #17
  %81 = tail call i32 @u_1(ptr noundef nonnull @.str.97, ptr noundef %11) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.94, ptr noundef %11) #17
  %85 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %11) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83, %73
  %88 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.95, ptr noundef %11) #17
  br label %89

89:                                               ; preds = %87, %76, %83, %79
  %90 = load i32, ptr %57, align 4, !tbaa !60
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, ptr %21, align 4, !tbaa !56
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92, %89
  %96 = phi ptr [ %58, %89 ], [ %59, %92 ]
  %97 = load i32, ptr %96, align 4, !tbaa !69
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92, %95
  %100 = phi i32 [ %97, %95 ], [ 24, %92 ]
  %101 = tail call i32 @i_v(i32 noundef %100, ptr noundef nonnull @.str.99, ptr noundef %11) #17
  br label %102

102:                                              ; preds = %99, %95, %60
  %103 = add nuw nsw i32 %61, 1
  %104 = icmp eq i32 %103, %56
  br i1 %104, label %105, label %60, !llvm.loop !71

105:                                              ; preds = %102, %52, %10, %34, %45
  tail call void @free(ptr noundef %11) #17
  br label %106

106:                                              ; preds = %105, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_pan_scan_rect_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %4) #17
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %4) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = tail call i32 @ue_v(ptr noundef nonnull @.str.28, ptr noundef nonnull %4) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %22, %16 ], [ 0, %13 ]
  %18 = tail call i32 @se_v(ptr noundef nonnull @.str.29, ptr noundef %4) #17
  %19 = tail call i32 @se_v(ptr noundef nonnull @.str.30, ptr noundef %4) #17
  %20 = tail call i32 @se_v(ptr noundef nonnull @.str.31, ptr noundef %4) #17
  %21 = tail call i32 @se_v(ptr noundef nonnull @.str.32, ptr noundef %4) #17
  %22 = add nuw i32 %17, 1
  %23 = icmp eq i32 %17, %14
  br i1 %23, label %24, label %16, !llvm.loop !72

24:                                               ; preds = %16, %13
  %25 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %4) #17
  br label %26

26:                                               ; preds = %24, %3
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @interpret_filler_payload_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @interpret_user_data_registered_itu_t_t35_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @interpret_user_data_unregistered_info(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_recovery_point_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %4) #17
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %4) #17
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.36, ptr noundef %4) #17
  %13 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %4) #17
  %14 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 100
  store i32 1, ptr %14, align 4, !tbaa !73
  %15 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 102
  store i32 %10, ptr %15, align 4, !tbaa !74
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_dec_ref_pic_marking_repetition_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.decoder_params, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !48
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.38, ptr noundef %5) #17
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.39, ptr noundef %5) #17
  %13 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %14, i64 0, i32 30
  %16 = load i32, ptr %15, align 4, !tbaa !75
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef nonnull %5) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @u_1(ptr noundef nonnull @.str.41, ptr noundef nonnull %5) #17
  br label %23

23:                                               ; preds = %18, %21, %4
  %24 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 51
  %29 = load <2 x i32>, ptr %28, align 4, !tbaa !69
  %30 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 53
  %31 = load i32, ptr %30, align 4, !tbaa !80
  store i32 %11, ptr %26, align 8, !tbaa !79
  store ptr null, ptr %24, align 8, !tbaa !76
  tail call void @dec_ref_pic_marking(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef %3) #17
  %32 = load ptr, ptr %24, align 8, !tbaa !76
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %23, %34
  %35 = phi ptr [ %38, %34 ], [ %32, %23 ]
  %36 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  store ptr %37, ptr %24, align 8, !tbaa !76
  tail call void @free(ptr noundef nonnull %35) #17
  %38 = load ptr, ptr %24, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %34, !llvm.loop !83

40:                                               ; preds = %34, %23
  store ptr %25, ptr %24, align 8, !tbaa !76
  store i32 %27, ptr %26, align 8, !tbaa !79
  %41 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 60
  %42 = extractelement <2 x i32> %29, i64 0
  store i32 %42, ptr %41, align 8, !tbaa !84
  store <2 x i32> %29, ptr %28, align 4, !tbaa !69
  store i32 %31, ptr %30, align 4, !tbaa !80
  tail call void @free(ptr noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_spare_pic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.decoder_params, ptr %5, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !48
  %7 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %8 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 3
  store i32 %1, ptr %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !46
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %7) #17
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %7) #17
  %13 = add i32 %12, 1
  %14 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = ashr i32 %15, 4
  %17 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !86
  %19 = ashr i32 %18, 4
  %20 = call i32 @get_mem3D(ptr noundef nonnull %4, i32 noundef %13, i32 noundef %16, i32 noundef %19) #17
  %21 = icmp slt i32 %12, 0
  br i1 %21, label %248, label %22

22:                                               ; preds = %3
  %23 = zext i32 %13 to i64
  br label %24

24:                                               ; preds = %22, %245
  %25 = phi i64 [ 0, %22 ], [ %246, %245 ]
  %26 = call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %7) #17
  %27 = call i32 @ue_v(ptr noundef nonnull @.str.3, ptr noundef %7) #17
  switch i32 %27, label %243 [
    i32 0, label %33
    i32 1, label %28
    i32 2, label %94
  ]

28:                                               ; preds = %24
  %29 = load i32, ptr %14, align 8, !tbaa !85
  %30 = icmp sgt i32 %29, 15
  br i1 %30, label %31, label %245

31:                                               ; preds = %28
  %32 = load i32, ptr %17, align 4, !tbaa !86
  br label %65

33:                                               ; preds = %24
  %34 = load i32, ptr %14, align 8, !tbaa !85
  %35 = icmp sgt i32 %34, 15
  br i1 %35, label %36, label %245

36:                                               ; preds = %33
  %37 = load i32, ptr %17, align 4, !tbaa !86
  br label %38

38:                                               ; preds = %36, %58
  %39 = phi i32 [ %34, %36 ], [ %59, %58 ]
  %40 = phi i32 [ %37, %36 ], [ %60, %58 ]
  %41 = phi i64 [ 0, %36 ], [ %61, %58 ]
  %42 = icmp sgt i32 %40, 15
  br i1 %42, label %43, label %58

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %51, %43 ], [ 0, %38 ]
  %45 = load ptr, ptr %4, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 %25
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds ptr, ptr %47, i64 %41
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = getelementptr inbounds i8, ptr %49, i64 %44
  store i8 0, ptr %50, align 1, !tbaa !34
  %51 = add nuw nsw i64 %44, 1
  %52 = load i32, ptr %17, align 4, !tbaa !86
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %43, label %56, !llvm.loop !87

56:                                               ; preds = %43
  %57 = load i32, ptr %14, align 8, !tbaa !85
  br label %58

58:                                               ; preds = %56, %38
  %59 = phi i32 [ %57, %56 ], [ %39, %38 ]
  %60 = phi i32 [ %52, %56 ], [ %40, %38 ]
  %61 = add nuw nsw i64 %41, 1
  %62 = ashr i32 %59, 4
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %38, label %245, !llvm.loop !88

65:                                               ; preds = %31, %87
  %66 = phi i32 [ %29, %31 ], [ %88, %87 ]
  %67 = phi i32 [ %32, %31 ], [ %89, %87 ]
  %68 = phi i64 [ 0, %31 ], [ %90, %87 ]
  %69 = icmp sgt i32 %67, 15
  br i1 %69, label %70, label %87

70:                                               ; preds = %65, %70
  %71 = phi i64 [ %80, %70 ], [ 0, %65 ]
  %72 = call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %7) #17
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %4, align 8, !tbaa !47
  %75 = getelementptr inbounds ptr, ptr %74, i64 %25
  %76 = load ptr, ptr %75, align 8, !tbaa !47
  %77 = getelementptr inbounds ptr, ptr %76, i64 %68
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = getelementptr inbounds i8, ptr %78, i64 %71
  store i8 %73, ptr %79, align 1, !tbaa !34
  %80 = add nuw nsw i64 %71, 1
  %81 = load i32, ptr %17, align 4, !tbaa !86
  %82 = ashr i32 %81, 4
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %70, label %85, !llvm.loop !89

85:                                               ; preds = %70
  %86 = load i32, ptr %14, align 8, !tbaa !85
  br label %87

87:                                               ; preds = %85, %65
  %88 = phi i32 [ %86, %85 ], [ %66, %65 ]
  %89 = phi i32 [ %81, %85 ], [ %67, %65 ]
  %90 = add nuw nsw i64 %68, 1
  %91 = ashr i32 %88, 4
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %65, label %245, !llvm.loop !90

94:                                               ; preds = %24
  %95 = load i32, ptr %14, align 8, !tbaa !85
  %96 = icmp sgt i32 %95, 15
  br i1 %96, label %97, label %245

97:                                               ; preds = %94
  %98 = lshr i32 %95, 4
  %99 = add nsw i32 %98, -1
  %100 = lshr i32 %99, 1
  %101 = load i32, ptr %17, align 4, !tbaa !86
  %102 = ashr i32 %101, 4
  %103 = add nsw i32 %102, -1
  %104 = sdiv i32 %103, 2
  br label %105

105:                                              ; preds = %97, %228
  %106 = phi i32 [ %95, %97 ], [ %229, %228 ]
  %107 = phi i32 [ %101, %97 ], [ %230, %228 ]
  %108 = phi i32 [ 1, %97 ], [ %239, %228 ]
  %109 = phi i32 [ 0, %97 ], [ %238, %228 ]
  %110 = phi i32 [ %100, %97 ], [ %237, %228 ]
  %111 = phi i32 [ %100, %97 ], [ %236, %228 ]
  %112 = phi i32 [ %104, %97 ], [ %235, %228 ]
  %113 = phi i32 [ %104, %97 ], [ %234, %228 ]
  %114 = phi i32 [ 0, %97 ], [ %240, %228 ]
  %115 = phi i32 [ %104, %97 ], [ %233, %228 ]
  %116 = phi i32 [ %100, %97 ], [ %232, %228 ]
  %117 = phi i32 [ -1, %97 ], [ %231, %228 ]
  %118 = icmp sgt i32 %107, 15
  br i1 %118, label %119, label %228

119:                                              ; preds = %105, %213
  %120 = phi i32 [ %221, %213 ], [ %108, %105 ]
  %121 = phi i32 [ %220, %213 ], [ %109, %105 ]
  %122 = phi i32 [ %219, %213 ], [ %110, %105 ]
  %123 = phi i32 [ %218, %213 ], [ %111, %105 ]
  %124 = phi i32 [ %217, %213 ], [ %112, %105 ]
  %125 = phi i32 [ %216, %213 ], [ %113, %105 ]
  %126 = phi i32 [ %222, %213 ], [ 0, %105 ]
  %127 = phi i32 [ %215, %213 ], [ %115, %105 ]
  %128 = phi i32 [ %214, %213 ], [ %116, %105 ]
  %129 = phi i32 [ %145, %213 ], [ %117, %105 ]
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = call i32 @ue_v(ptr noundef nonnull @.str.5, ptr noundef %7) #17
  br label %133

133:                                              ; preds = %131, %119
  %134 = phi i32 [ %132, %131 ], [ %129, %119 ]
  %135 = icmp slt i32 %134, 1
  %136 = load ptr, ptr %4, align 8, !tbaa !47
  %137 = getelementptr inbounds ptr, ptr %136, i64 %25
  %138 = load ptr, ptr %137, align 8, !tbaa !47
  %139 = sext i32 %128 to i64
  %140 = getelementptr inbounds ptr, ptr %138, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !47
  %142 = sext i32 %127 to i64
  %143 = getelementptr inbounds i8, ptr %141, i64 %142
  %144 = zext i1 %135 to i8
  store i8 %144, ptr %143, align 1, !tbaa !34
  %145 = add nsw i32 %134, -1
  %146 = icmp eq i32 %121, -1
  %147 = icmp eq i32 %120, 0
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %161

149:                                              ; preds = %133
  %150 = icmp sgt i32 %127, %125
  br i1 %150, label %151, label %153

151:                                              ; preds = %149
  %152 = add nsw i32 %127, -1
  br label %213

153:                                              ; preds = %149
  %154 = icmp eq i32 %127, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  %156 = add nsw i32 %122, 1
  br label %213

157:                                              ; preds = %153
  %158 = icmp eq i32 %127, %125
  br i1 %158, label %159, label %213

159:                                              ; preds = %157
  %160 = add nsw i32 %125, -1
  br label %213

161:                                              ; preds = %133
  %162 = icmp eq i32 %121, 1
  %163 = select i1 %162, i1 %147, i1 false
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = icmp slt i32 %127, %124
  br i1 %165, label %166, label %168

166:                                              ; preds = %164
  %167 = add nsw i32 %127, 1
  br label %213

168:                                              ; preds = %164
  %169 = load i32, ptr %17, align 4, !tbaa !86
  %170 = ashr i32 %169, 4
  %171 = add nsw i32 %170, -1
  %172 = icmp eq i32 %127, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = add nsw i32 %123, -1
  br label %213

175:                                              ; preds = %168
  %176 = icmp eq i32 %127, %124
  br i1 %176, label %177, label %213

177:                                              ; preds = %175
  %178 = add nsw i32 %124, 1
  br label %213

179:                                              ; preds = %161
  %180 = icmp eq i32 %121, 0
  %181 = icmp eq i32 %120, -1
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = icmp sgt i32 %128, %123
  br i1 %184, label %185, label %187

185:                                              ; preds = %183
  %186 = add nsw i32 %128, -1
  br label %213

187:                                              ; preds = %183
  %188 = icmp eq i32 %128, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = add nsw i32 %125, -1
  br label %213

191:                                              ; preds = %187
  %192 = icmp eq i32 %128, %123
  br i1 %192, label %193, label %213

193:                                              ; preds = %191
  %194 = add nsw i32 %123, -1
  br label %213

195:                                              ; preds = %179
  %196 = icmp eq i32 %120, 1
  %197 = select i1 %180, i1 %196, i1 false
  br i1 %197, label %198, label %213

198:                                              ; preds = %195
  %199 = icmp slt i32 %128, %122
  br i1 %199, label %200, label %202

200:                                              ; preds = %198
  %201 = add nsw i32 %128, 1
  br label %213

202:                                              ; preds = %198
  %203 = load i32, ptr %14, align 8, !tbaa !85
  %204 = ashr i32 %203, 4
  %205 = add nsw i32 %204, -1
  %206 = icmp eq i32 %128, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = add nsw i32 %124, 1
  br label %213

209:                                              ; preds = %202
  %210 = icmp eq i32 %128, %122
  br i1 %210, label %211, label %213

211:                                              ; preds = %209
  %212 = add nsw i32 %122, 1
  br label %213

213:                                              ; preds = %155, %159, %157, %151, %189, %193, %191, %185, %200, %209, %211, %207, %195, %166, %175, %177, %173
  %214 = phi i32 [ %128, %151 ], [ %156, %155 ], [ %128, %159 ], [ %128, %157 ], [ %128, %166 ], [ %174, %173 ], [ %128, %177 ], [ %128, %175 ], [ %186, %185 ], [ 0, %189 ], [ %194, %193 ], [ %128, %191 ], [ %201, %200 ], [ %128, %207 ], [ %212, %211 ], [ %128, %209 ], [ %128, %195 ]
  %215 = phi i32 [ %152, %151 ], [ 0, %155 ], [ %160, %159 ], [ %127, %157 ], [ %167, %166 ], [ %127, %173 ], [ %178, %177 ], [ %127, %175 ], [ %127, %185 ], [ %190, %189 ], [ %127, %193 ], [ %127, %191 ], [ %127, %200 ], [ %208, %207 ], [ %127, %211 ], [ %127, %209 ], [ %127, %195 ]
  %216 = phi i32 [ %125, %151 ], [ %125, %155 ], [ %160, %159 ], [ %125, %157 ], [ %125, %166 ], [ %125, %173 ], [ %125, %177 ], [ %125, %175 ], [ %125, %185 ], [ %190, %189 ], [ %125, %193 ], [ %125, %191 ], [ %125, %200 ], [ %125, %207 ], [ %125, %211 ], [ %125, %209 ], [ %125, %195 ]
  %217 = phi i32 [ %124, %151 ], [ %124, %155 ], [ %124, %159 ], [ %124, %157 ], [ %124, %166 ], [ %124, %173 ], [ %178, %177 ], [ %124, %175 ], [ %124, %185 ], [ %124, %189 ], [ %124, %193 ], [ %124, %191 ], [ %124, %200 ], [ %208, %207 ], [ %124, %211 ], [ %124, %209 ], [ %124, %195 ]
  %218 = phi i32 [ %123, %151 ], [ %123, %155 ], [ %123, %159 ], [ %123, %157 ], [ %123, %166 ], [ %174, %173 ], [ %123, %177 ], [ %123, %175 ], [ %123, %185 ], [ %123, %189 ], [ %194, %193 ], [ %123, %191 ], [ %123, %200 ], [ %123, %207 ], [ %123, %211 ], [ %123, %209 ], [ %123, %195 ]
  %219 = phi i32 [ %122, %151 ], [ %156, %155 ], [ %122, %159 ], [ %122, %157 ], [ %122, %166 ], [ %122, %173 ], [ %122, %177 ], [ %122, %175 ], [ %122, %185 ], [ %122, %189 ], [ %122, %193 ], [ %122, %191 ], [ %122, %200 ], [ %122, %207 ], [ %212, %211 ], [ %122, %209 ], [ %122, %195 ]
  %220 = phi i32 [ -1, %151 ], [ 1, %155 ], [ 0, %159 ], [ -1, %157 ], [ 1, %166 ], [ -1, %173 ], [ 0, %177 ], [ 1, %175 ], [ 0, %185 ], [ 0, %189 ], [ -1, %193 ], [ 0, %191 ], [ 0, %200 ], [ 0, %207 ], [ 1, %211 ], [ 0, %209 ], [ %121, %195 ]
  %221 = phi i32 [ 0, %151 ], [ 0, %155 ], [ 1, %159 ], [ 0, %157 ], [ 0, %166 ], [ 0, %173 ], [ -1, %177 ], [ 0, %175 ], [ -1, %185 ], [ 1, %189 ], [ 0, %193 ], [ -1, %191 ], [ 1, %200 ], [ -1, %207 ], [ 0, %211 ], [ 1, %209 ], [ %120, %195 ]
  %222 = add nuw nsw i32 %126, 1
  %223 = load i32, ptr %17, align 4, !tbaa !86
  %224 = ashr i32 %223, 4
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %119, label %226, !llvm.loop !91

226:                                              ; preds = %213
  %227 = load i32, ptr %14, align 8, !tbaa !85
  br label %228

228:                                              ; preds = %226, %105
  %229 = phi i32 [ %106, %105 ], [ %227, %226 ]
  %230 = phi i32 [ %107, %105 ], [ %223, %226 ]
  %231 = phi i32 [ %117, %105 ], [ %145, %226 ]
  %232 = phi i32 [ %116, %105 ], [ %214, %226 ]
  %233 = phi i32 [ %115, %105 ], [ %215, %226 ]
  %234 = phi i32 [ %113, %105 ], [ %216, %226 ]
  %235 = phi i32 [ %112, %105 ], [ %217, %226 ]
  %236 = phi i32 [ %111, %105 ], [ %218, %226 ]
  %237 = phi i32 [ %110, %105 ], [ %219, %226 ]
  %238 = phi i32 [ %109, %105 ], [ %220, %226 ]
  %239 = phi i32 [ %108, %105 ], [ %221, %226 ]
  %240 = add nuw nsw i32 %114, 1
  %241 = ashr i32 %229, 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %105, label %245, !llvm.loop !92

243:                                              ; preds = %24
  %244 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %27) #15
  call void @exit(i32 noundef 0) #20
  unreachable

245:                                              ; preds = %228, %87, %58, %94, %28, %33
  %246 = add nuw nsw i64 %25, 1
  %247 = icmp eq i64 %246, %23
  br i1 %247, label %248, label %24, !llvm.loop !93

248:                                              ; preds = %245, %3
  %249 = load ptr, ptr %4, align 8, !tbaa !47
  call void @free_mem3D(ptr noundef %249) #17
  call void @free(ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_scene_information(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.24, ptr noundef %4) #17
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %4) #17
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef nonnull %4) #17
  br label %15

15:                                               ; preds = %13, %3
  tail call void @free(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_subsequence_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %4) #17
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %4) #17
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.9, ptr noundef %4) #17
  %13 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef %4) #17
  %14 = tail call i32 @u_1(ptr noundef nonnull @.str.11, ptr noundef %4) #17
  %15 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %4) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #17
  br label %19

19:                                               ; preds = %17, %3
  tail call void @free(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_subsequence_layer_characteristics_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %4) #17
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %17, %12 ], [ 0, %3 ]
  %14 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef %4) #17
  %15 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %4) #17
  %16 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %4) #17
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %13, %10
  br i1 %18, label %19, label %12, !llvm.loop !94

19:                                               ; preds = %12, %3
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_subsequence_characteristics_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %4) #17
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.8, ptr noundef %4) #17
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %4) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef nonnull %4) #17
  br label %16

16:                                               ; preds = %14, %3
  %17 = tail call i32 @u_1(ptr noundef nonnull @.str.19, ptr noundef nonnull %4) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.15, ptr noundef nonnull %4) #17
  %21 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef nonnull %4) #17
  %22 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull %4) #17
  br label %23

23:                                               ; preds = %19, %16
  %24 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #17
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %31, %26 ], [ 0, %23 ]
  %28 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %4) #17
  %29 = tail call i32 @ue_v(ptr noundef nonnull @.str.22, ptr noundef %4) #17
  %30 = tail call i32 @u_1(ptr noundef nonnull @.str.23, ptr noundef %4) #17
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %33, label %26, !llvm.loop !95

33:                                               ; preds = %26, %23
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_full_frame_freeze_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = tail call i32 @ue_v(ptr noundef nonnull @.str.42, ptr noundef %4) #17
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @interpret_full_frame_freeze_release_info(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_full_frame_snapshot_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.43, ptr noundef %4) #17
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_progressive_refinement_start_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %4) #17
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.45, ptr noundef %4) #17
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_progressive_refinement_end_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.44, ptr noundef %4) #17
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_motion_constrained_slice_group_set_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.46, ptr noundef %4) #17
  %11 = add i32 %10, 1
  %12 = tail call i32 @CeilLog2(i32 noundef %11) #17
  %13 = icmp slt i32 %10, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3, %14
  %15 = phi i32 [ %17, %14 ], [ 0, %3 ]
  %16 = tail call i32 @u_v(i32 noundef %12, ptr noundef nonnull @.str.47, ptr noundef %4) #17
  %17 = add nuw i32 %15, 1
  %18 = icmp eq i32 %15, %10
  br i1 %18, label %19, label %14, !llvm.loop !96

19:                                               ; preds = %14, %3
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.35, ptr noundef %4) #17
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %4) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @ue_v(ptr noundef nonnull @.str.26, ptr noundef %4) #17
  br label %25

25:                                               ; preds = %23, %19
  tail call void @free(ptr noundef %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_film_grain_characteristics_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %5) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %3
  %12 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %5) #17
  %13 = tail call i32 @u_1(ptr noundef nonnull @.str.51, ptr noundef nonnull %5) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #17
  %17 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.53, ptr noundef nonnull %5) #17
  %18 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull %5) #17
  %19 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.55, ptr noundef nonnull %5) #17
  %20 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.56, ptr noundef nonnull %5) #17
  %21 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.57, ptr noundef nonnull %5) #17
  br label %22

22:                                               ; preds = %15, %11
  %23 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef nonnull %5) #17
  %24 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef nonnull %5) #17
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %29, %25 ]
  %27 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef %5) #17
  %28 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %26
  store i32 %27, ptr %28, align 4, !tbaa !69
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %25, !llvm.loop !97

31:                                               ; preds = %25, %54
  %32 = phi i64 [ %55, %54 ], [ 0, %25 ]
  %33 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.61, ptr noundef %5) #17
  %38 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef %5) #17
  %39 = icmp slt i32 %37, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = icmp slt i32 %38, 0
  br label %42

42:                                               ; preds = %40, %51
  %43 = phi i32 [ 0, %40 ], [ %52, %51 ]
  %44 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.63, ptr noundef %5) #17
  %45 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.64, ptr noundef %5) #17
  br i1 %41, label %51, label %46

46:                                               ; preds = %42, %46
  %47 = phi i32 [ %49, %46 ], [ 0, %42 ]
  %48 = tail call i32 @se_v(ptr noundef nonnull @.str.65, ptr noundef %5) #17
  %49 = add nuw i32 %47, 1
  %50 = icmp eq i32 %47, %38
  br i1 %50, label %51, label %46, !llvm.loop !98

51:                                               ; preds = %46, %42
  %52 = add nuw i32 %43, 1
  %53 = icmp eq i32 %43, %37
  br i1 %53, label %54, label %42, !llvm.loop !99

54:                                               ; preds = %51, %36, %31
  %55 = add nuw nsw i64 %32, 1
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %31, !llvm.loop !100

57:                                               ; preds = %54
  %58 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %5) #17
  br label %59

59:                                               ; preds = %57, %3
  tail call void @free(ptr noundef %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_deblocking_filter_display_preference_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = tail call i32 @u_1(ptr noundef nonnull @.str.67, ptr noundef %4) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.68, ptr noundef nonnull %4) #17
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.69, ptr noundef nonnull %4) #17
  %13 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef nonnull %4) #17
  br label %14

14:                                               ; preds = %10, %3
  tail call void @free(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_stereo_video_info_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = tail call i32 @u_1(ptr noundef nonnull @.str.71, ptr noundef %4) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef nonnull %4) #17
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ @.str.74, %10 ], [ @.str.72, %3 ]
  %14 = tail call i32 @u_1(ptr noundef nonnull %13, ptr noundef nonnull %4) #17
  %15 = tail call i32 @u_1(ptr noundef nonnull @.str.75, ptr noundef nonnull %4) #17
  %16 = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef nonnull %4) #17
  tail call void @free(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_tone_mapping(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.tone_mapping_struct_tmp, align 4
  call void @llvm.lifetime.start.p0(i64 49192, ptr nonnull %4) #19
  %5 = getelementptr inbounds i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(49192) %5, i8 0, i64 49188, i1 false)
  %6 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %7 = getelementptr inbounds %struct.bit_stream, ptr %6, i64 0, i32 3
  store i32 %1, ptr %7, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.bit_stream, ptr %6, i64 0, i32 4
  store ptr %0, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.bit_stream, ptr %6, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !46
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.118, ptr noundef %6) #17
  store i32 %10, ptr %4, align 4, !tbaa !101
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.119, ptr noundef %6) #17
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %360

14:                                               ; preds = %3
  %15 = tail call i32 @ue_v(ptr noundef nonnull @.str.120, ptr noundef nonnull %6) #17
  %16 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !103
  %17 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.121, ptr noundef nonnull %6) #17
  %18 = trunc i32 %17 to i8
  %19 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.122, ptr noundef nonnull %6) #17
  %20 = trunc i32 %19 to i8
  %21 = tail call i32 @ue_v(ptr noundef nonnull @.str.50, ptr noundef nonnull %6) #17
  %22 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 5
  store i32 %21, ptr %22, align 4, !tbaa !104
  %23 = and i32 %17, 255
  %24 = shl nuw i32 1, %23
  %25 = and i32 %19, 255
  %26 = shl nuw i32 1, %25
  switch i32 %21, label %81 [
    i32 0, label %34
    i32 1, label %39
    i32 2, label %27
    i32 3, label %50
  ]

27:                                               ; preds = %14
  %28 = icmp eq i32 %25, 31
  br i1 %28, label %81, label %29

29:                                               ; preds = %27
  %30 = add nuw nsw i32 %23, 7
  %31 = and i32 %30, 504
  %32 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  %33 = zext nneg i32 %32 to i64
  br label %44

34:                                               ; preds = %14
  %35 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef nonnull %6) #17
  %36 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 6
  store i32 %35, ptr %36, align 4, !tbaa !105
  %37 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.123, ptr noundef nonnull %6) #17
  %38 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 7
  store i32 %37, ptr %38, align 4, !tbaa !106
  br label %81

39:                                               ; preds = %14
  %40 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.124, ptr noundef nonnull %6) #17
  %41 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 8
  store i32 %40, ptr %41, align 4, !tbaa !107
  %42 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.125, ptr noundef nonnull %6) #17
  %43 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 9
  store i32 %42, ptr %43, align 4, !tbaa !108
  br label %81

44:                                               ; preds = %29, %44
  %45 = phi i64 [ 0, %29 ], [ %48, %44 ]
  %46 = tail call i32 @u_v(i32 noundef %31, ptr noundef nonnull @.str.126, ptr noundef %6) #17
  %47 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 10, i64 %45
  store i32 %46, ptr %47, align 4, !tbaa !69
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, %33
  br i1 %49, label %81, label %44, !llvm.loop !109

50:                                               ; preds = %14
  %51 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.127, ptr noundef nonnull %6) #17
  %52 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 11
  store i32 %51, ptr %52, align 4, !tbaa !110
  %53 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12
  store i32 0, ptr %53, align 4, !tbaa !69
  %54 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13
  store i32 0, ptr %54, align 4, !tbaa !69
  %55 = add nsw i32 %24, -1
  %56 = add nsw i32 %51, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %57
  store i32 %55, ptr %58, align 4, !tbaa !69
  %59 = add nsw i32 %26, -1
  %60 = load i32, ptr %52, align 4, !tbaa !110
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %62
  store i32 %59, ptr %63, align 4, !tbaa !69
  %64 = load i32, ptr %52, align 4, !tbaa !110
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %81, label %66

66:                                               ; preds = %50
  %67 = add nuw nsw i32 %23, 7
  %68 = and i32 %67, 504
  %69 = add nuw nsw i32 %25, 7
  %70 = and i32 %69, 504
  %71 = add nuw i32 %64, 1
  %72 = zext i32 %71 to i64
  br label %73

73:                                               ; preds = %66, %73
  %74 = phi i64 [ 1, %66 ], [ %79, %73 ]
  %75 = tail call i32 @u_v(i32 noundef %68, ptr noundef nonnull @.str.128, ptr noundef %6) #17
  %76 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %74
  store i32 %75, ptr %76, align 4, !tbaa !69
  %77 = tail call i32 @u_v(i32 noundef %70, ptr noundef nonnull @.str.129, ptr noundef %6) #17
  %78 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %74
  store i32 %77, ptr %78, align 4, !tbaa !69
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, %72
  br i1 %80, label %81, label %73, !llvm.loop !111

81:                                               ; preds = %73, %44, %50, %27, %14, %39, %34
  %82 = load i32, ptr %4, align 4, !tbaa !101
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %360

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 158
  %86 = load ptr, ptr %85, align 8, !tbaa !112
  store i32 1, ptr %86, align 8, !tbaa !113
  %87 = load i32, ptr %16, align 4, !tbaa !103
  %88 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !115
  %89 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 2
  store i8 %18, ptr %89, align 8, !tbaa !116
  %90 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 3
  store i8 %20, ptr %90, align 1, !tbaa !117
  %91 = load i32, ptr %22, align 4, !tbaa !104
  %92 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 4
  store i32 %91, ptr %92, align 4, !tbaa !118
  %93 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 5
  store i32 0, ptr %93, align 8, !tbaa !119
  switch i32 %91, label %360 [
    i32 0, label %117
    i32 1, label %105
    i32 2, label %201
    i32 3, label %94
  ]

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 11
  %96 = load i32, ptr %95, align 4, !tbaa !110
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %360, label %98

98:                                               ; preds = %94
  %99 = add nuw i32 %96, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 0
  %102 = load i32, ptr %101, align 4, !tbaa !69
  %103 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 0
  %104 = load i32, ptr %103, align 4, !tbaa !69
  br label %233

105:                                              ; preds = %84
  %106 = icmp eq i32 %23, 31
  br i1 %106, label %360, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 8
  %109 = load i32, ptr %108, align 4, !tbaa !107
  %110 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 9
  %111 = load i32, ptr %110, align 4, !tbaa !108
  %112 = sitofp i32 %111 to double
  %113 = add nsw i32 %26, -1
  %114 = sitofp i32 %113 to double
  %115 = tail call i32 @llvm.smax.i32(i32 %24, i32 1)
  %116 = zext nneg i32 %115 to i64
  br label %185

117:                                              ; preds = %84
  %118 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 6
  %119 = load i32, ptr %118, align 4, !tbaa !105
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = add nsw i32 %119, 1
  br label %128

123:                                              ; preds = %117
  %124 = getelementptr i8, ptr %86, i64 20
  %125 = add nuw i32 %119, 1
  %126 = zext i32 %125 to i64
  %127 = shl nuw nsw i64 %126, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %124, i8 0, i64 %127, i1 false), !tbaa !120
  br label %128

128:                                              ; preds = %121, %123
  %129 = phi i32 [ %122, %121 ], [ %125, %123 ]
  %130 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 7
  %131 = load i32, ptr %130, align 4, !tbaa !106
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %173

133:                                              ; preds = %128
  %134 = add nsw i32 %26, -1
  %135 = sub nsw i32 %131, %119
  %136 = sext i32 %129 to i64
  %137 = xor i32 %129, -1
  %138 = add i32 %131, %137
  %139 = zext i32 %138 to i64
  %140 = add nuw nsw i64 %139, 2
  %141 = and i64 %140, 8589934590
  %142 = insertelement <2 x i64> poison, i64 %139, i64 0
  %143 = shufflevector <2 x i64> %142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %144

144:                                              ; preds = %170, %133
  %145 = phi i64 [ 0, %133 ], [ %171, %170 ]
  %146 = trunc i64 %145 to i32
  %147 = add i32 %129, %146
  %148 = add i64 %145, %136
  %149 = insertelement <2 x i64> poison, i64 %145, i64 0
  %150 = shufflevector <2 x i64> %149, <2 x i64> poison, <2 x i32> zeroinitializer
  %151 = or disjoint <2 x i64> %150, <i64 0, i64 1>
  %152 = icmp ule <2 x i64> %151, %143
  %153 = extractelement <2 x i1> %152, i64 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = sub i32 %147, %119
  %156 = mul i32 %155, %134
  %157 = sdiv i32 %156, %135
  %158 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %148
  %159 = trunc i32 %157 to i16
  store i16 %159, ptr %158, align 2, !tbaa !120
  br label %160

160:                                              ; preds = %154, %144
  %161 = extractelement <2 x i1> %152, i64 1
  br i1 %161, label %162, label %170

162:                                              ; preds = %160
  %163 = add i32 %147, 1
  %164 = sub i32 %163, %119
  %165 = mul i32 %164, %134
  %166 = sdiv i32 %165, %135
  %167 = add i64 %148, 1
  %168 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %167
  %169 = trunc i32 %166 to i16
  store i16 %169, ptr %168, align 2, !tbaa !120
  br label %170

170:                                              ; preds = %162, %160
  %171 = add i64 %145, 2
  %172 = icmp eq i64 %171, %141
  br i1 %172, label %173, label %144, !llvm.loop !121

173:                                              ; preds = %170, %128
  %174 = icmp slt i32 %131, %24
  br i1 %174, label %175, label %360

175:                                              ; preds = %173
  %176 = trunc i32 %26 to i16
  %177 = add i16 %176, -1
  %178 = sext i32 %131 to i64
  %179 = sext i32 %24 to i64
  br label %180

180:                                              ; preds = %175, %180
  %181 = phi i64 [ %178, %175 ], [ %183, %180 ]
  %182 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %181
  store i16 %177, ptr %182, align 2, !tbaa !120
  %183 = add nsw i64 %181, 1
  %184 = icmp eq i64 %183, %179
  br i1 %184, label %360, label %180, !llvm.loop !124

185:                                              ; preds = %107, %185
  %186 = phi i64 [ 0, %107 ], [ %199, %185 ]
  %187 = trunc i64 %186 to i32
  %188 = sub i32 %187, %109
  %189 = sitofp i32 %188 to double
  %190 = fmul double %189, -6.000000e+00
  %191 = fdiv double %190, %112
  %192 = tail call double @exp(double noundef %191) #17
  %193 = fadd double %192, 1.000000e+00
  %194 = fdiv double %114, %193
  %195 = fadd double %194, 5.000000e-01
  %196 = fptoui double %195 to i16
  %197 = load ptr, ptr %85, align 8, !tbaa !112
  %198 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %197, i64 0, i32 6, i64 %186
  store i16 %196, ptr %198, align 2, !tbaa !120
  %199 = add nuw nsw i64 %186, 1
  %200 = icmp eq i64 %199, %116
  br i1 %200, label %360, label %185, !llvm.loop !125

201:                                              ; preds = %84
  %202 = add i32 %26, -1
  %203 = icmp sgt i32 %26, 1
  br i1 %203, label %204, label %360

204:                                              ; preds = %201
  %205 = zext nneg i32 %202 to i64
  %206 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 10, i64 0
  %207 = load i32, ptr %206, align 4, !tbaa !69
  br label %211

208:                                              ; preds = %222, %211
  %209 = phi i32 [ %212, %211 ], [ %216, %222 ]
  %210 = icmp eq i64 %214, %205
  br i1 %210, label %227, label %211, !llvm.loop !126

211:                                              ; preds = %204, %208
  %212 = phi i32 [ %207, %204 ], [ %216, %208 ]
  %213 = phi i64 [ 0, %204 ], [ %214, %208 ]
  %214 = add nuw nsw i64 %213, 1
  %215 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 10, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !69
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %208

218:                                              ; preds = %211
  %219 = trunc i64 %213 to i16
  %220 = sext i32 %212 to i64
  %221 = sext i32 %216 to i64
  br label %222

222:                                              ; preds = %218, %222
  %223 = phi i64 [ %220, %218 ], [ %225, %222 ]
  %224 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %223
  store i16 %219, ptr %224, align 2, !tbaa !120
  %225 = add nsw i64 %223, 1
  %226 = icmp eq i64 %225, %221
  br i1 %226, label %208, label %222, !llvm.loop !127

227:                                              ; preds = %208
  %228 = trunc i32 %202 to i16
  %229 = sext i32 %209 to i64
  %230 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %229
  store i16 %228, ptr %230, align 2, !tbaa !120
  br label %360

231:                                              ; preds = %357, %233
  %232 = icmp eq i64 %237, %100
  br i1 %232, label %360, label %233, !llvm.loop !128

233:                                              ; preds = %98, %231
  %234 = phi i32 [ %104, %98 ], [ %243, %231 ]
  %235 = phi i32 [ %102, %98 ], [ %239, %231 ]
  %236 = phi i64 [ 0, %98 ], [ %237, %231 ]
  %237 = add nuw nsw i64 %236, 1
  %238 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 13, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !69
  %240 = sub nsw i32 %239, %235
  %241 = sitofp i32 %240 to double
  %242 = getelementptr inbounds %struct.tone_mapping_struct_tmp, ptr %4, i64 0, i32 12, i64 %237
  %243 = load i32, ptr %242, align 4, !tbaa !69
  %244 = sub nsw i32 %243, %234
  %245 = sitofp i32 %244 to double
  %246 = fdiv double %241, %245
  %247 = icmp sgt i32 %234, %243
  br i1 %247, label %231, label %248

248:                                              ; preds = %233
  %249 = sext i32 %234 to i64
  %250 = sub i32 %243, %234
  %251 = zext i32 %250 to i64
  %252 = add nuw nsw i64 %251, 8
  %253 = and i64 %252, 8589934584
  %254 = insertelement <8 x i64> poison, i64 %251, i64 0
  %255 = shufflevector <8 x i64> %254, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %256

256:                                              ; preds = %357, %248
  %257 = phi i64 [ 0, %248 ], [ %358, %357 ]
  %258 = trunc i64 %257 to i32
  %259 = add i32 %234, %258
  %260 = add i64 %257, %249
  %261 = insertelement <8 x i64> poison, i64 %257, i64 0
  %262 = shufflevector <8 x i64> %261, <8 x i64> poison, <8 x i32> zeroinitializer
  %263 = or disjoint <8 x i64> %262, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %264 = icmp ule <8 x i64> %263, %255
  %265 = extractelement <8 x i1> %264, i64 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %256
  %267 = sitofp i32 %258 to double
  %268 = fmul double %246, %267
  %269 = fptosi double %268 to i32
  %270 = add nsw i32 %235, %269
  %271 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %260
  %272 = trunc i32 %270 to i16
  store i16 %272, ptr %271, align 2, !tbaa !120
  br label %273

273:                                              ; preds = %266, %256
  %274 = extractelement <8 x i1> %264, i64 1
  br i1 %274, label %275, label %285

275:                                              ; preds = %273
  %276 = add i32 %259, 1
  %277 = sub i32 %276, %234
  %278 = sitofp i32 %277 to double
  %279 = fmul double %246, %278
  %280 = fptosi double %279 to i32
  %281 = add i64 %260, 1
  %282 = add nsw i32 %235, %280
  %283 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %281
  %284 = trunc i32 %282 to i16
  store i16 %284, ptr %283, align 2, !tbaa !120
  br label %285

285:                                              ; preds = %275, %273
  %286 = extractelement <8 x i1> %264, i64 2
  br i1 %286, label %287, label %297

287:                                              ; preds = %285
  %288 = add i32 %259, 2
  %289 = sub i32 %288, %234
  %290 = sitofp i32 %289 to double
  %291 = fmul double %246, %290
  %292 = fptosi double %291 to i32
  %293 = add i64 %260, 2
  %294 = add nsw i32 %235, %292
  %295 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %293
  %296 = trunc i32 %294 to i16
  store i16 %296, ptr %295, align 2, !tbaa !120
  br label %297

297:                                              ; preds = %287, %285
  %298 = extractelement <8 x i1> %264, i64 3
  br i1 %298, label %299, label %309

299:                                              ; preds = %297
  %300 = add i32 %259, 3
  %301 = sub i32 %300, %234
  %302 = sitofp i32 %301 to double
  %303 = fmul double %246, %302
  %304 = fptosi double %303 to i32
  %305 = add i64 %260, 3
  %306 = add nsw i32 %235, %304
  %307 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %305
  %308 = trunc i32 %306 to i16
  store i16 %308, ptr %307, align 2, !tbaa !120
  br label %309

309:                                              ; preds = %299, %297
  %310 = extractelement <8 x i1> %264, i64 4
  br i1 %310, label %311, label %321

311:                                              ; preds = %309
  %312 = add i32 %259, 4
  %313 = sub i32 %312, %234
  %314 = sitofp i32 %313 to double
  %315 = fmul double %246, %314
  %316 = fptosi double %315 to i32
  %317 = add i64 %260, 4
  %318 = add nsw i32 %235, %316
  %319 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %317
  %320 = trunc i32 %318 to i16
  store i16 %320, ptr %319, align 2, !tbaa !120
  br label %321

321:                                              ; preds = %311, %309
  %322 = extractelement <8 x i1> %264, i64 5
  br i1 %322, label %323, label %333

323:                                              ; preds = %321
  %324 = add i32 %259, 5
  %325 = sub i32 %324, %234
  %326 = sitofp i32 %325 to double
  %327 = fmul double %246, %326
  %328 = fptosi double %327 to i32
  %329 = add i64 %260, 5
  %330 = add nsw i32 %235, %328
  %331 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %329
  %332 = trunc i32 %330 to i16
  store i16 %332, ptr %331, align 2, !tbaa !120
  br label %333

333:                                              ; preds = %323, %321
  %334 = extractelement <8 x i1> %264, i64 6
  br i1 %334, label %335, label %345

335:                                              ; preds = %333
  %336 = add i32 %259, 6
  %337 = sub i32 %336, %234
  %338 = sitofp i32 %337 to double
  %339 = fmul double %246, %338
  %340 = fptosi double %339 to i32
  %341 = add i64 %260, 6
  %342 = add nsw i32 %235, %340
  %343 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %341
  %344 = trunc i32 %342 to i16
  store i16 %344, ptr %343, align 2, !tbaa !120
  br label %345

345:                                              ; preds = %335, %333
  %346 = extractelement <8 x i1> %264, i64 7
  br i1 %346, label %347, label %357

347:                                              ; preds = %345
  %348 = add i32 %259, 7
  %349 = sub i32 %348, %234
  %350 = sitofp i32 %349 to double
  %351 = fmul double %246, %350
  %352 = fptosi double %351 to i32
  %353 = add i64 %260, 7
  %354 = add nsw i32 %235, %352
  %355 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %86, i64 0, i32 6, i64 %353
  %356 = trunc i32 %354 to i16
  store i16 %356, ptr %355, align 2, !tbaa !120
  br label %357

357:                                              ; preds = %347, %345
  %358 = add i64 %257, 8
  %359 = icmp eq i64 %358, %253
  br i1 %359, label %231, label %256, !llvm.loop !129

360:                                              ; preds = %231, %185, %180, %94, %105, %173, %227, %201, %84, %81, %3
  tail call void @free(ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 49192, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_post_filter_hints_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  %9 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.decoder_params, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !48
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %5) #17
  %12 = tail call i32 @ue_v(ptr noundef nonnull @.str.131, ptr noundef %5) #17
  %13 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.132, ptr noundef %5) #17
  %14 = call i32 @get_mem3Dint(ptr noundef nonnull %4, i32 noundef 3, i32 noundef %11, i32 noundef %12) #17
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
  %25 = call i32 @se_v(ptr noundef nonnull @.str.133, ptr noundef %5) #17
  %26 = load ptr, ptr %4, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 %22
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = getelementptr inbounds i32, ptr %30, i64 %24
  store i32 %25, ptr %31, align 4, !tbaa !69
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %34, label %23, !llvm.loop !130

34:                                               ; preds = %23, %21
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %21, !llvm.loop !131

37:                                               ; preds = %34, %19
  %38 = add nuw nsw i64 %20, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %40, label %19, !llvm.loop !132

40:                                               ; preds = %37
  %41 = call i32 @u_1(ptr noundef nonnull @.str.134, ptr noundef %5) #17
  %42 = load ptr, ptr %4, align 8, !tbaa !47
  call void @free_mem3Dint(ptr noundef %42) #17
  call void @free(ptr noundef %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interpret_frame_packing_arrangement_info(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !48
  %10 = tail call i32 @ue_v(ptr noundef nonnull @.str.100, ptr noundef %4) #17
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.101, ptr noundef %4) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = tail call i32 @u_v(i32 noundef 7, ptr noundef nonnull @.str.102, ptr noundef nonnull %4) #17
  %15 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef nonnull %4) #17
  %16 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.104, ptr noundef nonnull %4) #17
  %17 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef nonnull %4) #17
  %18 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef nonnull %4) #17
  %19 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef nonnull %4) #17
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef nonnull %4) #17
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.109, ptr noundef nonnull %4) #17
  %22 = tail call i32 @u_1(ptr noundef nonnull @.str.110, ptr noundef nonnull %4) #17
  %23 = icmp eq i32 %15, 0
  %24 = and i32 %14, 255
  %25 = icmp ne i32 %24, 5
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef nonnull %4) #17
  %29 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef nonnull %4) #17
  %30 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.113, ptr noundef nonnull %4) #17
  %31 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.114, ptr noundef nonnull %4) #17
  br label %32

32:                                               ; preds = %27, %13
  %33 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.115, ptr noundef nonnull %4) #17
  %34 = tail call i32 @ue_v(ptr noundef nonnull @.str.116, ptr noundef nonnull %4) #17
  br label %35

35:                                               ; preds = %32, %3
  %36 = tail call i32 @u_1(ptr noundef nonnull @.str.117, ptr noundef nonnull %4) #17
  tail call void @free(ptr noundef nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @interpret_reserved_info(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @get_mem3D(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem3D(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dec_ref_pic_marking(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @CeilLog2(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @activate_sps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @i_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  %18 = load i16, ptr %17, align 2, !tbaa !120
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds i16, ptr %1, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !120
  store i16 %21, ptr %17, align 2, !tbaa !120
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %15, !llvm.loop !133

24:                                               ; preds = %15, %10
  %25 = add nuw nsw i64 %11, 1
  %26 = icmp eq i64 %25, %8
  br i1 %26, label %27, label %10, !llvm.loop !134

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_tone_mapping_sei(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store i32 0, ptr %0, align 8, !tbaa !113
  %2 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_tone_mapping_sei(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !115
  switch i32 %3, label %6 [
    i32 0, label %4
    i32 1, label %14
  ]

4:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 5
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !119
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !119
  %10 = icmp ult i32 %9, %3
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  store i32 0, ptr %0, align 8, !tbaa !113
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi ptr [ %7, %11 ], [ %5, %4 ]
  store i32 0, ptr %13, align 8, !tbaa !119
  br label %14

14:                                               ; preds = %12, %1, %6
  ret void
}

; Function Attrs: optsize
declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_mem3Dint(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize allocsize(0) }
attributes #17 = { nounwind optsize }
attributes #18 = { cold }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
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
!51 = !{!52, !43, i64 3168}
!52 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !35, i64 44, !35, i64 92, !35, i64 476, !35, i64 2012, !35, i64 2036, !43, i64 2060, !43, i64 2064, !43, i64 2068, !43, i64 2072, !43, i64 2076, !43, i64 2080, !43, i64 2084, !43, i64 2088, !43, i64 2092, !35, i64 2096, !43, i64 3120, !43, i64 3124, !43, i64 3128, !43, i64 3132, !43, i64 3136, !43, i64 3140, !43, i64 3144, !43, i64 3148, !43, i64 3152, !43, i64 3156, !43, i64 3160, !43, i64 3164, !43, i64 3168, !53, i64 3172, !43, i64 4120, !43, i64 4124}
!53 = !{!"", !43, i64 0, !43, i64 4, !54, i64 8, !54, i64 10, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !55, i64 80, !43, i64 492, !55, i64 496, !43, i64 908, !43, i64 912, !43, i64 916, !43, i64 920, !43, i64 924, !43, i64 928, !43, i64 932, !43, i64 936, !43, i64 940, !43, i64 944}
!54 = !{!"short", !35, i64 0}
!55 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !35, i64 12, !35, i64 140, !35, i64 268, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408}
!56 = !{!52, !43, i64 3248}
!57 = !{!52, !43, i64 3252}
!58 = !{!52, !43, i64 3648}
!59 = distinct !{!59, !38}
!60 = !{!52, !43, i64 3664}
!61 = !{!52, !43, i64 3668}
!62 = !{!52, !43, i64 4064}
!63 = distinct !{!63, !38}
!64 = !{!65, !44, i64 16}
!65 = !{!"video_par", !44, i64 0, !44, i64 8, !44, i64 16, !35, i64 24, !35, i64 132120, !44, i64 699416, !35, i64 699424, !43, i64 848672, !43, i64 848676, !43, i64 848680, !43, i64 848684, !44, i64 848688, !44, i64 848696, !44, i64 848704, !43, i64 848712, !43, i64 848716, !43, i64 848720, !43, i64 848724, !43, i64 848728, !44, i64 848736, !44, i64 848744, !35, i64 848752, !43, i64 848776, !43, i64 848780, !43, i64 848784, !43, i64 848788, !43, i64 848792, !44, i64 848800, !35, i64 848808, !44, i64 848832, !44, i64 848840, !35, i64 848848, !43, i64 848872, !43, i64 848876, !44, i64 848880, !44, i64 848888, !35, i64 848896, !43, i64 848920, !44, i64 848928, !44, i64 848936, !43, i64 848944, !43, i64 848948, !43, i64 848952, !43, i64 848956, !43, i64 848960, !43, i64 848964, !43, i64 848968, !43, i64 848972, !43, i64 848976, !43, i64 848980, !43, i64 848984, !43, i64 848988, !43, i64 848992, !43, i64 848996, !43, i64 849000, !43, i64 849004, !43, i64 849008, !43, i64 849012, !43, i64 849016, !43, i64 849020, !43, i64 849024, !43, i64 849028, !43, i64 849032, !43, i64 849036, !54, i64 849040, !54, i64 849042, !35, i64 849044, !43, i64 849052, !43, i64 849056, !35, i64 849060, !35, i64 849072, !43, i64 849084, !43, i64 849088, !43, i64 849092, !43, i64 849096, !43, i64 849100, !43, i64 849104, !43, i64 849108, !43, i64 849112, !43, i64 849116, !43, i64 849120, !35, i64 849124, !35, i64 849148, !35, i64 849172, !43, i64 849196, !43, i64 849200, !43, i64 849204, !43, i64 849208, !43, i64 849212, !43, i64 849216, !43, i64 849220, !43, i64 849224, !43, i64 849228, !43, i64 849232, !43, i64 849236, !43, i64 849240, !43, i64 849244, !43, i64 849248, !43, i64 849252, !43, i64 849256, !43, i64 849260, !43, i64 849264, !43, i64 849268, !43, i64 849272, !43, i64 849276, !43, i64 849280, !43, i64 849284, !44, i64 849288, !44, i64 849296, !66, i64 849304, !66, i64 849624, !66, i64 849944, !66, i64 850264, !66, i64 850584, !66, i64 850904, !66, i64 851224, !66, i64 851544, !43, i64 851864, !43, i64 851868, !43, i64 851872, !50, i64 851880, !43, i64 851888, !35, i64 851892, !43, i64 855988, !43, i64 855992, !43, i64 855996, !43, i64 856000, !43, i64 856004, !43, i64 856008, !43, i64 856012, !44, i64 856016, !44, i64 856024, !44, i64 856032, !44, i64 856040, !44, i64 856048, !35, i64 856056, !44, i64 856456, !35, i64 856464, !44, i64 856488, !44, i64 856496, !44, i64 856504, !43, i64 856512, !44, i64 856520, !35, i64 856528, !44, i64 856608, !44, i64 856616, !44, i64 856624, !44, i64 856632, !43, i64 856640, !43, i64 856644, !43, i64 856648, !44, i64 856656, !44, i64 856664, !35, i64 856672, !35, i64 856688, !44, i64 856704, !44, i64 856712, !43, i64 856720, !44, i64 856728, !44, i64 856736, !44, i64 856744, !44, i64 856752, !44, i64 856760, !44, i64 856768, !44, i64 856776, !44, i64 856784, !44, i64 856792, !44, i64 856800, !44, i64 856808, !44, i64 856816, !43, i64 856824, !44, i64 856832, !43, i64 856840, !43, i64 856844, !43, i64 856848, !43, i64 856852, !43, i64 856856, !43, i64 856860, !43, i64 856864, !44, i64 856872}
!66 = !{!"image_data", !67, i64 0, !35, i64 136, !35, i64 160, !35, i64 184, !35, i64 208, !35, i64 232, !35, i64 256, !35, i64 280, !35, i64 292, !35, i64 304}
!67 = !{!"frame_format", !43, i64 0, !43, i64 4, !68, i64 8, !35, i64 16, !35, i64 28, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !35, i64 72, !43, i64 84, !35, i64 88, !35, i64 100, !35, i64 112, !43, i64 124, !43, i64 128}
!68 = !{!"double", !35, i64 0}
!69 = !{!43, !43, i64 0}
!70 = !{!52, !43, i64 4084}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = !{!65, !43, i64 849260}
!74 = !{!65, !43, i64 849268}
!75 = !{!52, !43, i64 3136}
!76 = !{!77, !44, i64 248}
!77 = !{!"slice", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !43, i64 32, !44, i64 40, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !35, i64 88, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !54, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !35, i64 136, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !35, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !44, i64 248, !35, i64 256, !35, i64 264, !44, i64 312, !44, i64 320, !44, i64 328, !35, i64 336, !35, i64 1104, !35, i64 1112, !35, i64 1128, !35, i64 1144, !35, i64 1160, !43, i64 1176, !43, i64 1180, !43, i64 1184, !78, i64 1188, !54, i64 1220, !54, i64 1222, !54, i64 1224, !43, i64 1228, !43, i64 1232, !43, i64 1236, !43, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !35, i64 1288, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !35, i64 1392, !35, i64 2544, !35, i64 3696, !35, i64 8304, !35, i64 12912, !35, i64 13008, !43, i64 13264, !43, i64 13268, !54, i64 13272, !54, i64 13274, !54, i64 13276, !54, i64 13278, !44, i64 13280, !44, i64 13288, !44, i64 13296, !54, i64 13304, !54, i64 13306, !43, i64 13308, !43, i64 13312, !44, i64 13320, !44, i64 13328, !43, i64 13336, !35, i64 13340, !44, i64 13408, !44, i64 13416, !44, i64 13424, !44, i64 13432, !44, i64 13440, !44, i64 13448, !44, i64 13456, !44, i64 13464, !44, i64 13472, !44, i64 13480, !44, i64 13488, !44, i64 13496, !43, i64 13504, !44, i64 13512, !44, i64 13520, !44, i64 13528, !44, i64 13536, !44, i64 13544, !35, i64 13552}
!78 = !{!"nalunitheadermvcext_tag", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28}
!79 = !{!77, !43, i64 48}
!80 = !{!77, !43, i64 244}
!81 = !{!82, !44, i64 24}
!82 = !{!"DecRefPicMarking_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !44, i64 24}
!83 = distinct !{!83, !38}
!84 = !{!65, !43, i64 849024}
!85 = !{!65, !43, i64 848784}
!86 = !{!65, !43, i64 848780}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = !{!102, !43, i64 0}
!102 = !{!"", !43, i64 0, !35, i64 4, !43, i64 8, !35, i64 12, !35, i64 13, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !35, i64 36, !43, i64 16420, !35, i64 16424, !35, i64 32808}
!103 = !{!102, !43, i64 8}
!104 = !{!102, !43, i64 16}
!105 = !{!102, !43, i64 20}
!106 = !{!102, !43, i64 24}
!107 = !{!102, !43, i64 28}
!108 = !{!102, !43, i64 32}
!109 = distinct !{!109, !38}
!110 = !{!102, !43, i64 16420}
!111 = distinct !{!111, !38}
!112 = !{!65, !44, i64 856728}
!113 = !{!114, !43, i64 0}
!114 = !{!"tone_mapping_struct_s", !43, i64 0, !43, i64 4, !35, i64 8, !35, i64 9, !43, i64 12, !43, i64 16, !35, i64 20, !44, i64 8216, !43, i64 8224}
!115 = !{!114, !43, i64 4}
!116 = !{!114, !35, i64 8}
!117 = !{!114, !35, i64 9}
!118 = !{!114, !43, i64 12}
!119 = !{!114, !43, i64 16}
!120 = !{!54, !54, i64 0}
!121 = distinct !{!121, !38, !122, !123}
!122 = !{!"llvm.loop.isvectorized", i32 1}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = distinct !{!124, !38}
!125 = distinct !{!125, !38}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38, !122, !123}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38}

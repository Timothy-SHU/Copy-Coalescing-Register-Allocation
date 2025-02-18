; ModuleID = 'ldecod_src/parset.c'
source_filename = "ldecod_src/parset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.nalu_t = type { i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [1024 x i32], i32, i32, ptr }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }

@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@p_Dec = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid Profile IDC (%d) encountered. \0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set4_flag\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_3bits\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"SPS: separate_colour_plane_flag\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"SPS: offset_for_ref_frame[i]\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"VUI: aspect_ratio_idc\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"VUI: sar_width\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"VUI: sar_height\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"VUI: overscan_appropriate_flag\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"VUI: video_format\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"VUI: colour_primaries\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"VUI: transfer_characteristics\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"VUI: matrix_coefficients\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"VUI: chroma_sample_loc_type_top_field\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"VUI: chroma_sample_loc_type_bottom_field\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"VUI: num_units_in_tick\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"VUI: time_scale\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"VUI: fixed_frame_rate_flag\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"VUI: low_delay_hrd_flag\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"VUI: pic_struct_present_flag   \00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"VUI: motion_vectors_over_pic_boundaries_flag\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"VUI: max_bytes_per_pic_denom\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"VUI: max_bits_per_mb_denom\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"VUI: log2_max_mv_length_horizontal\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"VUI: log2_max_mv_length_vertical\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"VUI: num_reorder_frames\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"VUI: max_dec_frame_buffering\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"VUI: cpb_cnt_minus1\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"VUI: bit_rate_scale\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"VUI: cpb_size_scale\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"VUI: bit_rate_value_minus1\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"VUI: cpb_size_value_minus1\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"VUI: cbr_flag\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"VUI: initial_cpb_removal_delay_length_minus1\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"VUI: cpb_removal_delay_length_minus1\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"VUI: dpb_output_delay_length_minus1\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"VUI: time_offset_length\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.85 = private unnamed_addr constant [50 x i8] c"PPS: bottom_field_pic_order_in_frame_present_flag\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"PPS: run_length_minus1 [i]\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"PPS: top_left [i]\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"PPS: bottom_right [i]\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"InterpretPPS: slice_group_id\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"slice_group_id[i]\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@reset_format_info.SubWidthC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@reset_format_info.SubHeightC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@.str.113 = private unnamed_addr constant [101 x i8] c"Trying to use an invalid (uninitialized) Picture Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.114 = private unnamed_addr constant [112 x i8] c"PicParset %d references an invalid (uninitialized) Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.115 = private unnamed_addr constant [119 x i8] c"PicParset %d references an invalid (uninitialized) Subset Sequence Parameter Set with ID %d, expect the unexpected...\0A\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"invalid sps->pic_order_cnt_type = %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"pic_order_cnt_type != 1\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"num_ref_frames_in_pic_order_cnt_cycle too large\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"num_views_minus1\00", align 1
@.str.120 = private unnamed_addr constant [51 x i8] c"init_subset_seq_parameter_set: subset_sps->view_id\00", align 1
@.str.121 = private unnamed_addr constant [62 x i8] c"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l0\00", align 1
@.str.122 = private unnamed_addr constant [62 x i8] c"init_subset_seq_parameter_set: subset_sps->num_anchor_refs_l1\00", align 1
@.str.123 = private unnamed_addr constant [57 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0\00", align 1
@.str.124 = private unnamed_addr constant [57 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1\00", align 1
@.str.125 = private unnamed_addr constant [66 x i8] c"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l0\00", align 1
@.str.126 = private unnamed_addr constant [66 x i8] c"init_subset_seq_parameter_set: subset_sps->num_non_anchor_refs_l1\00", align 1
@.str.127 = private unnamed_addr constant [61 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0\00", align 1
@.str.128 = private unnamed_addr constant [61 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"view_id\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"num_anchor_refs_l0\00", align 1
@.str.131 = private unnamed_addr constant [60 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l0[i]\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"anchor_ref_l0\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"num_anchor_refs_l1\00", align 1
@.str.134 = private unnamed_addr constant [60 x i8] c"init_subset_seq_parameter_set: subset_sps->anchor_ref_l1[i]\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"anchor_ref_l1\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"num_non_anchor_refs_l0\00", align 1
@.str.137 = private unnamed_addr constant [64 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l0[i]\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"non_anchor_ref_l0\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"num_non_anchor_refs_l1\00", align 1
@.str.140 = private unnamed_addr constant [64 x i8] c"init_subset_seq_parameter_set: subset_sps->non_anchor_ref_l1[i]\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"non_anchor_ref_l1\00", align 1
@.str.142 = private unnamed_addr constant [34 x i8] c"num_level_values_signalled_minus1\00", align 1
@.str.143 = private unnamed_addr constant [53 x i8] c"init_subset_seq_parameter_set: subset_sps->level_idc\00", align 1
@.str.144 = private unnamed_addr constant [69 x i8] c"init_subset_seq_parameter_set: subset_sps->num_applicable_ops_minus1\00", align 1
@.str.145 = private unnamed_addr constant [69 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id\00", align 1
@.str.146 = private unnamed_addr constant [81 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1\00", align 1
@.str.147 = private unnamed_addr constant [72 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id\00", align 1
@.str.148 = private unnamed_addr constant [74 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"level_idc\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"num_applicable_ops_minus1\00", align 1
@.str.151 = private unnamed_addr constant [72 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_temporal_id[i]\00", align 1
@.str.152 = private unnamed_addr constant [84 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_target_views_minus1[i]\00", align 1
@.str.153 = private unnamed_addr constant [75 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i]\00", align 1
@.str.154 = private unnamed_addr constant [77 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_num_views_minus1[i]\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"applicable_op_temporal_id\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"applicable_op_num_target_views_minus1\00", align 1
@.str.157 = private unnamed_addr constant [78 x i8] c"init_subset_seq_parameter_set: subset_sps->applicable_op_target_view_id[i][j]\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"applicable_op_target_view_id\00", align 1
@.str.159 = private unnamed_addr constant [31 x i8] c"applicable_op_num_views_minus1\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"cpb_cnt_minus1\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"bit_rate_scale\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"cpb_size_scale\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"bit_rate_value_minus1\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"cpb_size_value_minus1\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"cbr_flag\00", align 1
@.str.166 = private unnamed_addr constant [40 x i8] c"initial_cpb_removal_delay_length_minus1\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"cpb_removal_delay_length_minus1\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"dpb_output_delay_length_minus1\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"time_offset_length\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"vui_mvc_num_ops_minus1\00", align 1
@.str.171 = private unnamed_addr constant [47 x i8] c"mvc_vui_parameters_extension: pMVCVUI->view_id\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"vui_mvc_temporal_id\00", align 1
@.str.173 = private unnamed_addr constant [39 x i8] c"vui_mvc_num_target_output_views_minus1\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"vui_mvc_view_id\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"vui_mvc_timing_info_present_flag\00", align 1
@.str.176 = private unnamed_addr constant [26 x i8] c"vui_mvc_num_units_in_tick\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"vui_mvc_time_scale\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"vui_mvc_fixed_frame_rate_flag\00", align 1
@.str.179 = private unnamed_addr constant [40 x i8] c"vui_mvc_nal_hrd_parameters_present_flag\00", align 1
@.str.180 = private unnamed_addr constant [32 x i8] c"vcl_hrd_parameters_present_flag\00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c"vui_mvc_low_delay_hrd_flag\00", align 1
@.str.182 = private unnamed_addr constant [32 x i8] c"vui_mvc_pic_struct_present_flag\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"bit_equal_to_one\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"mvc_vui_parameters_present_flag\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"additional_extension2_flag\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Consistency checking a picture parset, to be implemented\00", align 1
@str.188 = private unnamed_addr constant [58 x i8] c"Consistency checking a sequence parset, to be implemented\00", align 1
@str.189 = private unnamed_addr constant [65 x i8] c"Consistency checking a subset sequence parset, to be implemented\00", align 1
@str.190 = private unnamed_addr constant [37 x i8] c"\0Abit_equal_to_one is not equal to 1!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Scaling_List(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %4
  %7 = icmp eq i32 %1, 16
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %27
  %10 = phi i64 [ 0, %6 ], [ %33, %27 ]
  %11 = phi i32 [ 8, %6 ], [ %28, %27 ]
  %12 = phi i32 [ 8, %6 ], [ %30, %27 ]
  %13 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %10
  %14 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %10
  %15 = select i1 %7, ptr %13, ptr %14
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %3) #17
  %20 = add nsw i32 %12, 256
  %21 = add i32 %20, %19
  %22 = srem i32 %21, 256
  %23 = icmp eq i8 %16, 0
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %23, i1 %24, i1 false
  %26 = zext i1 %25 to i32
  store i32 %26, ptr %2, align 4, !tbaa !37
  br label %27

27:                                               ; preds = %18, %9
  %28 = phi i32 [ %22, %18 ], [ 0, %9 ]
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %12, i32 %28
  %31 = zext i8 %16 to i64
  %32 = getelementptr inbounds i32, ptr %0, i64 %31
  store i32 %30, ptr %32, align 4, !tbaa !37
  %33 = add nuw nsw i64 %10, 1
  %34 = icmp eq i64 %33, %8
  br i1 %34, label %35, label %9, !llvm.loop !39

35:                                               ; preds = %27, %4
  ret void
}

declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @InterpretSPS(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = load ptr, ptr @p_Dec, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.decoder_params, ptr %5, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !47
  %7 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %4) #17
  %8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !50
  switch i32 %7, label %9 [
    i32 66, label %11
    i32 77, label %11
    i32 88, label %11
    i32 100, label %11
    i32 110, label %11
    i32 122, label %11
    i32 244, label %11
    i32 44, label %11
    i32 118, label %11
    i32 128, label %11
  ]

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7)
  br label %183

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %12 = tail call i32 @u_1(ptr noundef nonnull @.str.3, ptr noundef %4) #17
  %13 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !55
  %14 = tail call i32 @u_1(ptr noundef nonnull @.str.4, ptr noundef %4) #17
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !56
  %16 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %4) #17
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 4
  store i32 %16, ptr %17, align 4, !tbaa !57
  %18 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %4) #17
  %19 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !58
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.7, ptr noundef %4) #17
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 6
  store i32 %20, ptr %21, align 4, !tbaa !59
  %22 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef %4) #17
  %23 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %4) #17
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 7
  store i32 %23, ptr %24, align 4, !tbaa !60
  %25 = tail call i32 @ue_v(ptr noundef nonnull @.str.10, ptr noundef %4) #17
  %26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 8
  store i32 %25, ptr %26, align 4, !tbaa !61
  %27 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 9
  store i32 1, ptr %27, align 4, !tbaa !62
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 16
  store i32 0, ptr %28, align 4, !tbaa !63
  %29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 17
  store i32 0, ptr %29, align 4, !tbaa !64
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 73
  store i32 0, ptr %30, align 4, !tbaa !65
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 40
  store i32 0, ptr %31, align 4, !tbaa !70
  %32 = load i32, ptr %8, align 4, !tbaa !50
  switch i32 %32, label %122 [
    i32 100, label %33
    i32 110, label %33
    i32 122, label %33
    i32 244, label %33
    i32 44, label %33
    i32 118, label %33
    i32 128, label %33
  ]

33:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  %34 = tail call i32 @ue_v(ptr noundef nonnull @.str.11, ptr noundef %4) #17
  store i32 %34, ptr %27, align 4, !tbaa !62
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 @u_1(ptr noundef nonnull @.str.12, ptr noundef %4) #17
  store i32 %37, ptr %31, align 4, !tbaa !70
  br label %38

38:                                               ; preds = %36, %33
  %39 = tail call i32 @ue_v(ptr noundef nonnull @.str.13, ptr noundef %4) #17
  store i32 %39, ptr %28, align 4, !tbaa !63
  %40 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef %4) #17
  store i32 %40, ptr %29, align 4, !tbaa !64
  %41 = load i32, ptr %28, align 4, !tbaa !63
  %42 = add i32 %41, -9
  %43 = icmp ult i32 %42, -17
  %44 = add i32 %40, -9
  %45 = icmp ult i32 %44, -17
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 500) #17
  br label %48

48:                                               ; preds = %38, %47
  %49 = tail call i32 @u_1(ptr noundef nonnull @.str.16, ptr noundef %4) #17
  store i32 %49, ptr %30, align 4, !tbaa !65
  %50 = tail call i32 @u_1(ptr noundef nonnull @.str.17, ptr noundef %4) #17
  %51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 10
  store i32 %50, ptr %51, align 4, !tbaa !71
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %122, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %27, align 4, !tbaa !62
  %55 = icmp eq i32 %54, 3
  %56 = select i1 %55, i64 12, i64 8
  br label %57

57:                                               ; preds = %53, %119
  %58 = phi i64 [ 0, %53 ], [ %120, %119 ]
  %59 = tail call i32 @u_1(ptr noundef nonnull @.str.18, ptr noundef %4) #17
  %60 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 11, i64 %58
  store i32 %59, ptr %60, align 4, !tbaa !37
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %119, label %62

62:                                               ; preds = %57
  %63 = icmp ult i64 %58, 6
  br i1 %63, label %64, label %91

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 12, i64 %58
  %66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 14, i64 %58
  br label %67

67:                                               ; preds = %83, %64
  %68 = phi i64 [ 0, %64 ], [ %89, %83 ]
  %69 = phi i32 [ 8, %64 ], [ %84, %83 ]
  %70 = phi i32 [ 8, %64 ], [ %86, %83 ]
  %71 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %68
  %72 = load i8, ptr %71, align 1, !tbaa !34
  %73 = icmp eq i32 %69, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %4) #17
  %76 = add nsw i32 %70, 256
  %77 = add i32 %76, %75
  %78 = srem i32 %77, 256
  %79 = icmp eq i64 %68, 0
  %80 = icmp eq i32 %78, 0
  %81 = select i1 %79, i1 %80, i1 false
  %82 = zext i1 %81 to i32
  store i32 %82, ptr %66, align 4, !tbaa !37
  br label %83

83:                                               ; preds = %74, %67
  %84 = phi i32 [ %78, %74 ], [ 0, %67 ]
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %70, i32 %84
  %87 = zext i8 %72 to i64
  %88 = getelementptr inbounds i32, ptr %65, i64 %87
  store i32 %86, ptr %88, align 4, !tbaa !37
  %89 = add nuw nsw i64 %68, 1
  %90 = icmp eq i64 %89, 16
  br i1 %90, label %119, label %67, !llvm.loop !39

91:                                               ; preds = %62
  %92 = add nsw i64 %58, -6
  %93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 13, i64 %92
  %94 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 15, i64 %92
  br label %95

95:                                               ; preds = %111, %91
  %96 = phi i64 [ 0, %91 ], [ %117, %111 ]
  %97 = phi i32 [ 8, %91 ], [ %112, %111 ]
  %98 = phi i32 [ 8, %91 ], [ %114, %111 ]
  %99 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %96
  %100 = load i8, ptr %99, align 1, !tbaa !34
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %95
  %103 = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %4) #17
  %104 = add nsw i32 %98, 256
  %105 = add i32 %104, %103
  %106 = srem i32 %105, 256
  %107 = icmp eq i64 %96, 0
  %108 = icmp eq i32 %106, 0
  %109 = select i1 %107, i1 %108, i1 false
  %110 = zext i1 %109 to i32
  store i32 %110, ptr %94, align 4, !tbaa !37
  br label %111

111:                                              ; preds = %102, %95
  %112 = phi i32 [ %106, %102 ], [ 0, %95 ]
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 %98, i32 %112
  %115 = zext i8 %100 to i64
  %116 = getelementptr inbounds i32, ptr %93, i64 %115
  store i32 %114, ptr %116, align 4, !tbaa !37
  %117 = add nuw nsw i64 %96, 1
  %118 = icmp eq i64 %117, 64
  br i1 %118, label %119, label %95, !llvm.loop !39

119:                                              ; preds = %111, %83, %57
  %120 = add nuw nsw i64 %58, 1
  %121 = icmp eq i64 %120, %56
  br i1 %121, label %122, label %57, !llvm.loop !72

122:                                              ; preds = %119, %11, %48
  %123 = tail call i32 @ue_v(ptr noundef nonnull @.str.19, ptr noundef %4) #17
  %124 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 18
  store i32 %123, ptr %124, align 4, !tbaa !73
  %125 = tail call i32 @ue_v(ptr noundef nonnull @.str.20, ptr noundef %4) #17
  %126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 19
  store i32 %125, ptr %126, align 4, !tbaa !74
  switch i32 %125, label %148 [
    i32 0, label %127
    i32 1, label %130
  ]

127:                                              ; preds = %122
  %128 = tail call i32 @ue_v(ptr noundef nonnull @.str.21, ptr noundef %4) #17
  %129 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 20
  store i32 %128, ptr %129, align 4, !tbaa !75
  br label %148

130:                                              ; preds = %122
  %131 = tail call i32 @u_1(ptr noundef nonnull @.str.22, ptr noundef %4) #17
  %132 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 21
  store i32 %131, ptr %132, align 4, !tbaa !76
  %133 = tail call i32 @se_v(ptr noundef nonnull @.str.23, ptr noundef %4) #17
  %134 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 22
  store i32 %133, ptr %134, align 4, !tbaa !77
  %135 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %4) #17
  %136 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 23
  store i32 %135, ptr %136, align 4, !tbaa !78
  %137 = tail call i32 @ue_v(ptr noundef nonnull @.str.25, ptr noundef %4) #17
  %138 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 24
  store i32 %137, ptr %138, align 4, !tbaa !79
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %130, %140
  %141 = phi i64 [ %144, %140 ], [ 0, %130 ]
  %142 = tail call i32 @se_v(ptr noundef nonnull @.str.26, ptr noundef %4) #17
  %143 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 25, i64 %141
  store i32 %142, ptr %143, align 4, !tbaa !37
  %144 = add nuw nsw i64 %141, 1
  %145 = load i32, ptr %138, align 4, !tbaa !79
  %146 = zext i32 %145 to i64
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %140, label %148, !llvm.loop !80

148:                                              ; preds = %140, %130, %122, %127
  %149 = tail call i32 @ue_v(ptr noundef nonnull @.str.27, ptr noundef %4) #17
  %150 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 26
  store i32 %149, ptr %150, align 4, !tbaa !81
  %151 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %4) #17
  %152 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 27
  store i32 %151, ptr %152, align 4, !tbaa !82
  %153 = tail call i32 @ue_v(ptr noundef nonnull @.str.29, ptr noundef %4) #17
  %154 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 28
  store i32 %153, ptr %154, align 4, !tbaa !83
  %155 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %4) #17
  %156 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 29
  store i32 %155, ptr %156, align 4, !tbaa !84
  %157 = tail call i32 @u_1(ptr noundef nonnull @.str.31, ptr noundef %4) #17
  %158 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 30
  store i32 %157, ptr %158, align 4, !tbaa !85
  %159 = icmp eq i32 %157, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %148
  %161 = tail call i32 @u_1(ptr noundef nonnull @.str.32, ptr noundef %4) #17
  %162 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 31
  store i32 %161, ptr %162, align 4, !tbaa !86
  br label %163

163:                                              ; preds = %160, %148
  %164 = tail call i32 @u_1(ptr noundef nonnull @.str.33, ptr noundef %4) #17
  %165 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 32
  store i32 %164, ptr %165, align 4, !tbaa !87
  %166 = tail call i32 @u_1(ptr noundef nonnull @.str.34, ptr noundef %4) #17
  %167 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 33
  store i32 %166, ptr %167, align 4, !tbaa !88
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %163
  %170 = tail call i32 @ue_v(ptr noundef nonnull @.str.35, ptr noundef %4) #17
  %171 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 34
  store i32 %170, ptr %171, align 4, !tbaa !89
  %172 = tail call i32 @ue_v(ptr noundef nonnull @.str.36, ptr noundef %4) #17
  %173 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 35
  store i32 %172, ptr %173, align 4, !tbaa !90
  %174 = tail call i32 @ue_v(ptr noundef nonnull @.str.37, ptr noundef %4) #17
  %175 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 36
  store i32 %174, ptr %175, align 4, !tbaa !91
  %176 = tail call i32 @ue_v(ptr noundef nonnull @.str.38, ptr noundef %4) #17
  %177 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 37
  store i32 %176, ptr %177, align 4, !tbaa !92
  br label %178

178:                                              ; preds = %169, %163
  %179 = tail call i32 @u_1(ptr noundef nonnull @.str.39, ptr noundef %4) #17
  %180 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 38
  store i32 %179, ptr %180, align 4, !tbaa !93
  %181 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %2, i64 0, i32 39, i32 12
  store i32 2, ptr %181, align 4, !tbaa !94
  %182 = tail call i32 @ReadVUI(ptr noundef nonnull %1, ptr noundef %2)
  store i32 1, ptr %2, align 4, !tbaa !95
  br label %183

183:                                              ; preds = %178, %9
  %184 = load ptr, ptr @p_Dec, align 8, !tbaa !46
  %185 = getelementptr inbounds %struct.decoder_params, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !47
  ret i32 %186
}

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @InitVUI(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 39, i32 12
  store i32 2, ptr %2, align 4, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadVUI(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 38
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %112, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @u_1(ptr noundef nonnull @.str.40, ptr noundef %3) #17
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39
  store i32 %8, ptr %9, align 4, !tbaa !96
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.41, ptr noundef %3) #17
  %13 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !97
  %14 = icmp eq i32 %12, 255
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.42, ptr noundef %3) #17
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 2
  store i16 %17, ptr %18, align 4, !tbaa !98
  %19 = tail call i32 @u_v(i32 noundef 16, ptr noundef nonnull @.str.43, ptr noundef %3) #17
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 3
  store i16 %20, ptr %21, align 2, !tbaa !99
  br label %22

22:                                               ; preds = %11, %15, %7
  %23 = tail call i32 @u_1(ptr noundef nonnull @.str.44, ptr noundef %3) #17
  %24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 4
  store i32 %23, ptr %24, align 4, !tbaa !100
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @u_1(ptr noundef nonnull @.str.45, ptr noundef %3) #17
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 5
  store i32 %27, ptr %28, align 4, !tbaa !101
  br label %29

29:                                               ; preds = %26, %22
  %30 = tail call i32 @u_1(ptr noundef nonnull @.str.46, ptr noundef %3) #17
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 6
  store i32 %30, ptr %31, align 4, !tbaa !102
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.47, ptr noundef %3) #17
  %35 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 7
  store i32 %34, ptr %35, align 4, !tbaa !103
  %36 = tail call i32 @u_1(ptr noundef nonnull @.str.48, ptr noundef %3) #17
  %37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 8
  store i32 %36, ptr %37, align 4, !tbaa !104
  %38 = tail call i32 @u_1(ptr noundef nonnull @.str.49, ptr noundef %3) #17
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 9
  store i32 %38, ptr %39, align 4, !tbaa !105
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.50, ptr noundef %3) #17
  %43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 10
  store i32 %42, ptr %43, align 4, !tbaa !106
  %44 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.51, ptr noundef %3) #17
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 11
  store i32 %44, ptr %45, align 4, !tbaa !107
  %46 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.52, ptr noundef %3) #17
  %47 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 12
  store i32 %46, ptr %47, align 4, !tbaa !94
  br label %48

48:                                               ; preds = %33, %41, %29
  %49 = tail call i32 @u_1(ptr noundef nonnull @.str.53, ptr noundef %3) #17
  %50 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 13
  store i32 %49, ptr %50, align 4, !tbaa !108
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @ue_v(ptr noundef nonnull @.str.54, ptr noundef %3) #17
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 14
  store i32 %53, ptr %54, align 4, !tbaa !109
  %55 = tail call i32 @ue_v(ptr noundef nonnull @.str.55, ptr noundef %3) #17
  %56 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 15
  store i32 %55, ptr %56, align 4, !tbaa !110
  br label %57

57:                                               ; preds = %52, %48
  %58 = tail call i32 @u_1(ptr noundef nonnull @.str.56, ptr noundef %3) #17
  %59 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 16
  store i32 %58, ptr %59, align 4, !tbaa !111
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.57, ptr noundef %3) #17
  %63 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 17
  store i32 %62, ptr %63, align 4, !tbaa !112
  %64 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.58, ptr noundef %3) #17
  %65 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 18
  store i32 %64, ptr %65, align 4, !tbaa !113
  %66 = tail call i32 @u_1(ptr noundef nonnull @.str.59, ptr noundef %3) #17
  %67 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 19
  store i32 %66, ptr %67, align 4, !tbaa !114
  br label %68

68:                                               ; preds = %61, %57
  %69 = tail call i32 @u_1(ptr noundef nonnull @.str.60, ptr noundef %3) #17
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 20
  store i32 %69, ptr %70, align 4, !tbaa !115
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 21
  %74 = tail call i32 @ReadHRDParameters(ptr noundef nonnull %0, ptr noundef nonnull %73)
  br label %75

75:                                               ; preds = %72, %68
  %76 = tail call i32 @u_1(ptr noundef nonnull @.str.61, ptr noundef %3) #17
  %77 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 22
  store i32 %76, ptr %77, align 4, !tbaa !116
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 23
  %81 = tail call i32 @ReadHRDParameters(ptr noundef nonnull %0, ptr noundef nonnull %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, ptr %70, align 4, !tbaa !115
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, ptr %77, align 4, !tbaa !116
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85, %82
  %89 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %3) #17
  %90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 24
  store i32 %89, ptr %90, align 4, !tbaa !117
  br label %91

91:                                               ; preds = %88, %85
  %92 = tail call i32 @u_1(ptr noundef nonnull @.str.63, ptr noundef %3) #17
  %93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 25
  store i32 %92, ptr %93, align 4, !tbaa !118
  %94 = tail call i32 @u_1(ptr noundef nonnull @.str.64, ptr noundef %3) #17
  %95 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 26
  store i32 %94, ptr %95, align 4, !tbaa !119
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @u_1(ptr noundef nonnull @.str.65, ptr noundef %3) #17
  %99 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 27
  store i32 %98, ptr %99, align 4, !tbaa !120
  %100 = tail call i32 @ue_v(ptr noundef nonnull @.str.66, ptr noundef %3) #17
  %101 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 28
  store i32 %100, ptr %101, align 4, !tbaa !121
  %102 = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %3) #17
  %103 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 29
  store i32 %102, ptr %103, align 4, !tbaa !122
  %104 = tail call i32 @ue_v(ptr noundef nonnull @.str.68, ptr noundef %3) #17
  %105 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 31
  store i32 %104, ptr %105, align 4, !tbaa !123
  %106 = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %3) #17
  %107 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 30
  store i32 %106, ptr %107, align 4, !tbaa !124
  %108 = tail call i32 @ue_v(ptr noundef nonnull @.str.70, ptr noundef %3) #17
  %109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 32
  store i32 %108, ptr %109, align 4, !tbaa !125
  %110 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %3) #17
  %111 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 39, i32 33
  store i32 %110, ptr %111, align 4, !tbaa !126
  br label %112

112:                                              ; preds = %91, %97, %2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadHRDParameters(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %3) #17
  store i32 %4, ptr %1, align 4, !tbaa !127
  %5 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.73, ptr noundef %3) #17
  %6 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !128
  %7 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !129
  br label %9

9:                                                ; preds = %2, %9
  %10 = phi i32 [ 0, %2 ], [ %18, %9 ]
  %11 = tail call i32 @ue_v(ptr noundef nonnull @.str.75, ptr noundef %3) #17
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 3, i64 %12
  store i32 %11, ptr %13, align 4, !tbaa !37
  %14 = tail call i32 @ue_v(ptr noundef nonnull @.str.76, ptr noundef %3) #17
  %15 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 4, i64 %12
  store i32 %14, ptr %15, align 4, !tbaa !37
  %16 = tail call i32 @u_1(ptr noundef nonnull @.str.77, ptr noundef %3) #17
  %17 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 5, i64 %12
  store i32 %16, ptr %17, align 4, !tbaa !37
  %18 = add i32 %10, 1
  %19 = load i32, ptr %1, align 4, !tbaa !127
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %9, !llvm.loop !130

21:                                               ; preds = %9
  %22 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.78, ptr noundef %3) #17
  %23 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 6
  store i32 %22, ptr %23, align 4, !tbaa !131
  %24 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.79, ptr noundef %3) #17
  %25 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 7
  store i32 %24, ptr %25, align 4, !tbaa !132
  %26 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.80, ptr noundef %3) #17
  %27 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 8
  store i32 %26, ptr %27, align 4, !tbaa !133
  %28 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.81, ptr noundef %3) #17
  %29 = getelementptr inbounds %struct.hrd_parameters_t, ptr %1, i64 0, i32 9
  store i32 %28, ptr %29, align 4, !tbaa !134
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @InterpretPPS(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = load ptr, ptr @p_Dec, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.decoder_params, ptr %5, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !47
  %7 = tail call i32 @ue_v(ptr noundef nonnull @.str.82, ptr noundef %4) #17
  %8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !135
  %9 = tail call i32 @ue_v(ptr noundef nonnull @.str.83, ptr noundef %4) #17
  %10 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !137
  %11 = tail call i32 @u_1(ptr noundef nonnull @.str.84, ptr noundef %4) #17
  %12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !138
  %13 = tail call i32 @u_1(ptr noundef nonnull @.str.85, ptr noundef %4) #17
  %14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 11
  store i32 %13, ptr %14, align 8, !tbaa !139
  %15 = tail call i32 @ue_v(ptr noundef nonnull @.str.86, ptr noundef %4) #17
  %16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 12
  store i32 %15, ptr %16, align 4, !tbaa !140
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %73, label %18

18:                                               ; preds = %3
  %19 = tail call i32 @ue_v(ptr noundef nonnull @.str.87, ptr noundef %4) #17
  %20 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 13
  store i32 %19, ptr %20, align 8, !tbaa !141
  switch i32 %19, label %73 [
    i32 0, label %24
    i32 2, label %21
    i32 3, label %42
    i32 4, label %42
    i32 5, label %42
    i32 6, label %47
  ]

21:                                               ; preds = %18
  %22 = load i32, ptr %16, align 4, !tbaa !140
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %73, label %32

24:                                               ; preds = %18, %24
  %25 = phi i32 [ %29, %24 ], [ %19, %18 ]
  %26 = tail call i32 @ue_v(ptr noundef nonnull @.str.88, ptr noundef %4) #17
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 14, i64 %27
  store i32 %26, ptr %28, align 4, !tbaa !37
  %29 = add i32 %25, 1
  %30 = load i32, ptr %16, align 4, !tbaa !140
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %73, label %24, !llvm.loop !142

32:                                               ; preds = %21, %32
  %33 = phi i64 [ %38, %32 ], [ 0, %21 ]
  %34 = tail call i32 @ue_v(ptr noundef nonnull @.str.89, ptr noundef %4) #17
  %35 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 15, i64 %33
  store i32 %34, ptr %35, align 4, !tbaa !37
  %36 = tail call i32 @ue_v(ptr noundef nonnull @.str.90, ptr noundef %4) #17
  %37 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 16, i64 %33
  store i32 %36, ptr %37, align 4, !tbaa !37
  %38 = add nuw nsw i64 %33, 1
  %39 = load i32, ptr %16, align 4, !tbaa !140
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %32, label %73, !llvm.loop !143

42:                                               ; preds = %18, %18, %18
  %43 = tail call i32 @u_1(ptr noundef nonnull @.str.91, ptr noundef %4) #17
  %44 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 17
  store i32 %43, ptr %44, align 4, !tbaa !144
  %45 = tail call i32 @ue_v(ptr noundef nonnull @.str.92, ptr noundef %4) #17
  %46 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 18
  store i32 %45, ptr %46, align 8, !tbaa !145
  br label %73

47:                                               ; preds = %18
  %48 = load i32, ptr %16, align 4, !tbaa !140
  %49 = add i32 %48, 1
  %50 = icmp ugt i32 %49, 4
  %51 = icmp ugt i32 %49, 2
  %52 = select i1 %51, i32 2, i32 1
  %53 = select i1 %50, i32 3, i32 %52
  %54 = tail call i32 @ue_v(ptr noundef nonnull @.str.93, ptr noundef %4) #17
  %55 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 19
  store i32 %54, ptr %55, align 4, !tbaa !146
  %56 = add i32 %54, 1
  %57 = zext i32 %56 to i64
  %58 = tail call noalias ptr @calloc(i64 noundef %57, i64 noundef 1) #18
  %59 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 20
  store ptr %58, ptr %59, align 8, !tbaa !147
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.94) #17
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %63
  %64 = phi i32 [ %70, %63 ], [ 0, %62 ]
  %65 = tail call i32 @u_v(i32 noundef %53, ptr noundef nonnull @.str.95, ptr noundef %4) #17
  %66 = trunc i32 %65 to i8
  %67 = load ptr, ptr %59, align 8, !tbaa !147
  %68 = zext i32 %64 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  store i8 %66, ptr %69, align 1, !tbaa !34
  %70 = add i32 %64, 1
  %71 = load i32, ptr %55, align 4, !tbaa !146
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %63, !llvm.loop !148

73:                                               ; preds = %63, %32, %24, %21, %18, %42, %3
  %74 = tail call i32 @ue_v(ptr noundef nonnull @.str.96, ptr noundef %4) #17
  %75 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 21
  store i32 %74, ptr %75, align 8, !tbaa !149
  %76 = tail call i32 @ue_v(ptr noundef nonnull @.str.97, ptr noundef %4) #17
  %77 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 22
  store i32 %76, ptr %77, align 4, !tbaa !150
  %78 = tail call i32 @u_1(ptr noundef nonnull @.str.98, ptr noundef %4) #17
  %79 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 23
  store i32 %78, ptr %79, align 8, !tbaa !151
  %80 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.99, ptr noundef %4) #17
  %81 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 24
  store i32 %80, ptr %81, align 4, !tbaa !152
  %82 = tail call i32 @se_v(ptr noundef nonnull @.str.100, ptr noundef %4) #17
  %83 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 25
  store i32 %82, ptr %83, align 8, !tbaa !153
  %84 = tail call i32 @se_v(ptr noundef nonnull @.str.101, ptr noundef %4) #17
  %85 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 26
  store i32 %84, ptr %85, align 4, !tbaa !154
  %86 = tail call i32 @se_v(ptr noundef nonnull @.str.102, ptr noundef %4) #17
  %87 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 27
  store i32 %86, ptr %87, align 8, !tbaa !155
  %88 = tail call i32 @u_1(ptr noundef nonnull @.str.103, ptr noundef %4) #17
  %89 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 29
  store i32 %88, ptr %89, align 8, !tbaa !156
  %90 = tail call i32 @u_1(ptr noundef nonnull @.str.104, ptr noundef %4) #17
  %91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 30
  store i32 %90, ptr %91, align 4, !tbaa !157
  %92 = tail call i32 @u_1(ptr noundef nonnull @.str.105, ptr noundef %4) #17
  %93 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 31
  store i32 %92, ptr %93, align 8, !tbaa !158
  %94 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !159
  %96 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !161
  %98 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !162
  %100 = tail call i32 @more_rbsp_data(ptr noundef %95, i32 noundef %97, i32 noundef %99) #17
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %188, label %102

102:                                              ; preds = %73
  %103 = tail call i32 @u_1(ptr noundef nonnull @.str.106, ptr noundef %4) #17
  %104 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 4
  store i32 %103, ptr %104, align 8, !tbaa !163
  %105 = tail call i32 @u_1(ptr noundef nonnull @.str.107, ptr noundef %4) #17
  %106 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 5
  store i32 %105, ptr %106, align 4, !tbaa !164
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %186, label %108

108:                                              ; preds = %102
  %109 = load i32, ptr %10, align 8, !tbaa !137
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 3, i64 %110, i32 9
  %112 = load i32, ptr %111, align 4, !tbaa !62
  %113 = icmp eq i32 %112, 3
  %114 = select i1 %113, i32 6, i32 2
  %115 = load i32, ptr %104, align 8, !tbaa !163
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %116, 6
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %186, label %119

119:                                              ; preds = %108
  %120 = zext i32 %117 to i64
  br label %121

121:                                              ; preds = %119, %183
  %122 = phi i64 [ 0, %119 ], [ %184, %183 ]
  %123 = tail call i32 @u_1(ptr noundef nonnull @.str.108, ptr noundef %4) #17
  %124 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 6, i64 %122
  store i32 %123, ptr %124, align 4, !tbaa !37
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %183, label %126

126:                                              ; preds = %121
  %127 = icmp ult i64 %122, 6
  br i1 %127, label %128, label %155

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 7, i64 %122
  %130 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 9, i64 %122
  br label %131

131:                                              ; preds = %147, %128
  %132 = phi i64 [ 0, %128 ], [ %153, %147 ]
  %133 = phi i32 [ 8, %128 ], [ %148, %147 ]
  %134 = phi i32 [ 8, %128 ], [ %150, %147 ]
  %135 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %132
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = icmp eq i32 %133, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %131
  %139 = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %4) #17
  %140 = add nsw i32 %134, 256
  %141 = add i32 %140, %139
  %142 = srem i32 %141, 256
  %143 = icmp eq i64 %132, 0
  %144 = icmp eq i32 %142, 0
  %145 = select i1 %143, i1 %144, i1 false
  %146 = zext i1 %145 to i32
  store i32 %146, ptr %130, align 4, !tbaa !37
  br label %147

147:                                              ; preds = %138, %131
  %148 = phi i32 [ %142, %138 ], [ 0, %131 ]
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 %134, i32 %148
  %151 = zext i8 %136 to i64
  %152 = getelementptr inbounds i32, ptr %129, i64 %151
  store i32 %150, ptr %152, align 4, !tbaa !37
  %153 = add nuw nsw i64 %132, 1
  %154 = icmp eq i64 %153, 16
  br i1 %154, label %183, label %131, !llvm.loop !39

155:                                              ; preds = %126
  %156 = add nsw i64 %122, -6
  %157 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 8, i64 %156
  %158 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 10, i64 %156
  br label %159

159:                                              ; preds = %175, %155
  %160 = phi i64 [ 0, %155 ], [ %181, %175 ]
  %161 = phi i32 [ 8, %155 ], [ %176, %175 ]
  %162 = phi i32 [ 8, %155 ], [ %178, %175 ]
  %163 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %160
  %164 = load i8, ptr %163, align 1, !tbaa !34
  %165 = icmp eq i32 %161, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %159
  %167 = tail call i32 @se_v(ptr noundef nonnull @.str, ptr noundef %4) #17
  %168 = add nsw i32 %162, 256
  %169 = add i32 %168, %167
  %170 = srem i32 %169, 256
  %171 = icmp eq i64 %160, 0
  %172 = icmp eq i32 %170, 0
  %173 = select i1 %171, i1 %172, i1 false
  %174 = zext i1 %173 to i32
  store i32 %174, ptr %158, align 4, !tbaa !37
  br label %175

175:                                              ; preds = %166, %159
  %176 = phi i32 [ %170, %166 ], [ 0, %159 ]
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 %162, i32 %176
  %179 = zext i8 %164 to i64
  %180 = getelementptr inbounds i32, ptr %157, i64 %179
  store i32 %178, ptr %180, align 4, !tbaa !37
  %181 = add nuw nsw i64 %160, 1
  %182 = icmp eq i64 %181, 64
  br i1 %182, label %183, label %159, !llvm.loop !39

183:                                              ; preds = %175, %147, %121
  %184 = add nuw nsw i64 %122, 1
  %185 = icmp eq i64 %184, %120
  br i1 %185, label %186, label %121, !llvm.loop !165

186:                                              ; preds = %183, %108, %102
  %187 = tail call i32 @se_v(ptr noundef nonnull @.str.109, ptr noundef %4) #17
  br label %190

188:                                              ; preds = %73
  %189 = load i32, ptr %87, align 8, !tbaa !155
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %189, %188 ], [ %187, %186 ]
  %192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 28
  store i32 %191, ptr %192, align 4, !tbaa !166
  store i32 1, ptr %2, align 8, !tbaa !167
  %193 = load ptr, ptr @p_Dec, align 8, !tbaa !46
  %194 = getelementptr inbounds %struct.decoder_params, ptr %193, i64 0, i32 3
  %195 = load i32, ptr %194, align 8, !tbaa !47
  ret i32 %195
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

declare i32 @more_rbsp_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @PPSConsistencyCheck(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SPSConsistencyCheck(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.188)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @SubsetSPSConsistencyCheck(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.189)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @MakePPSavailable(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #6 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !167
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %4, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef %10) #17
  br label %13

13:                                               ; preds = %12, %8, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %5, ptr noundef nonnull align 8 dereferenceable(2216) %2, i64 2216, i1 false)
  %14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %4, i32 20
  store ptr %15, ptr %16, align 8, !tbaa !147
  store ptr null, ptr %14, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @CleanUpPPS(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %12
  %3 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %3
  %5 = load i32, ptr %4, align 8, !tbaa !167
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %3, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef %9) #17
  br label %12

12:                                               ; preds = %11, %7, %2
  store i32 0, ptr %4, align 8, !tbaa !167
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 256
  br i1 %14, label %15, label %2, !llvm.loop !168

15:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MakeSPSavailable(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 3, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %5, ptr noundef nonnull align 4 dereferenceable(4128) %2, i64 4128, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessSPS(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AllocPartition(i32 noundef 1) #17
  %4 = tail call ptr @AllocSPS() #17
  %5 = load ptr, ptr %3, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = add i32 %12, -1
  %14 = zext i32 %13 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr nonnull align 1 %10, i64 %14, i1 false)
  %15 = load ptr, ptr %3, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.bit_stream, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = load i32, ptr %11, align 4, !tbaa !171
  %19 = add i32 %18, -1
  %20 = tail call i32 @RBSPtoSODB(ptr noundef %17, i32 noundef %19) #17
  %21 = load ptr, ptr %3, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 3
  store i32 %20, ptr %22, align 4, !tbaa !162
  %23 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 1
  store i32 %20, ptr %23, align 4, !tbaa !172
  %24 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 5
  store i32 0, ptr %24, align 8, !tbaa !173
  %25 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !161
  store i32 0, ptr %21, align 8, !tbaa !174
  %26 = tail call i32 @InterpretSPS(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  tail call void @get_max_dec_frame_buf_size(ptr noundef %4)
  %27 = load i32, ptr %4, align 4, !tbaa !95
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !175
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %31, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = tail call i32 @sps_is_equal(ptr noundef nonnull %4, ptr noundef nonnull %31) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %44 = load ptr, ptr %43, align 8, !tbaa !176
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @exit_picture(ptr noundef %0, ptr noundef nonnull %43) #17
  br label %47

47:                                               ; preds = %46, %42
  store ptr null, ptr %30, align 8, !tbaa !175
  br label %48

48:                                               ; preds = %33, %47, %39, %29
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 8
  %50 = load i32, ptr %49, align 4, !tbaa !61
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 3, i64 %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %52, ptr noundef nonnull align 4 dereferenceable(4128) %4, i64 4128, i1 false)
  %53 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 71
  store i32 %54, ptr %55, align 4, !tbaa !177
  %56 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 40
  %57 = load i32, ptr %56, align 4, !tbaa !70
  %58 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  store i32 %57, ptr %58, align 8, !tbaa !178
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !62
  br label %63

63:                                               ; preds = %48, %60
  %64 = phi i32 [ %62, %60 ], [ 0, %48 ]
  %65 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 37
  store i32 %64, ptr %65, align 8, !tbaa !179
  br label %66

66:                                               ; preds = %63, %2
  tail call void @FreePartition(ptr noundef nonnull %3, i32 noundef 1) #17
  tail call void @FreeSPS(ptr noundef nonnull %4) #17
  ret void
}

declare ptr @AllocPartition(i32 noundef) local_unnamed_addr #1

declare ptr @AllocSPS() local_unnamed_addr #1

declare i32 @RBSPtoSODB(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @get_max_dec_frame_buf_size(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !83
  %4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 29
  %5 = load i32, ptr %4, align 4, !tbaa !84
  %6 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  switch i32 %9, label %34 [
    i32 9, label %35
    i32 10, label %35
    i32 11, label %10
    i32 12, label %21
    i32 13, label %22
    i32 20, label %23
    i32 21, label %24
    i32 22, label %25
    i32 30, label %26
    i32 31, label %27
    i32 32, label %28
    i32 40, label %29
    i32 41, label %30
    i32 42, label %31
    i32 50, label %32
    i32 51, label %33
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp ugt i32 %12, 99
  %14 = icmp eq i32 %12, 44
  %15 = or i1 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %35, label %20

20:                                               ; preds = %16, %10
  br label %35

21:                                               ; preds = %1
  br label %35

22:                                               ; preds = %1
  br label %35

23:                                               ; preds = %1
  br label %35

24:                                               ; preds = %1
  br label %35

25:                                               ; preds = %1
  br label %35

26:                                               ; preds = %1
  br label %35

27:                                               ; preds = %1
  br label %35

28:                                               ; preds = %1
  br label %35

29:                                               ; preds = %1
  br label %35

30:                                               ; preds = %1
  br label %35

31:                                               ; preds = %1
  br label %35

32:                                               ; preds = %1
  br label %35

33:                                               ; preds = %1
  br label %35

34:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.183, i32 noundef 500) #17
  br label %35

35:                                               ; preds = %16, %1, %1, %20, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21
  %36 = phi i32 [ 0, %34 ], [ 70778880, %33 ], [ 42393600, %32 ], [ 13369344, %31 ], [ 12582912, %30 ], [ 12582912, %29 ], [ 7864320, %28 ], [ 6912000, %27 ], [ 3110400, %26 ], [ 3110400, %25 ], [ 1824768, %24 ], [ 912384, %23 ], [ 912384, %22 ], [ 912384, %21 ], [ 345600, %20 ], [ 152064, %1 ], [ 152064, %1 ], [ 152064, %16 ]
  %37 = add i32 %3, 1
  %38 = add i32 %5, 1
  %39 = mul i32 %38, %37
  %40 = icmp eq i32 %7, 0
  %41 = zext i1 %40 to i32
  %42 = shl i32 %39, %41
  %43 = mul i32 %42, 384
  %44 = sdiv i32 %36, %43
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 16)
  %46 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 41
  store i32 %45, ptr %46, align 4, !tbaa !180
  ret void
}

declare i32 @sps_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @exit_picture(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @FreePartition(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @FreeSPS(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ProcessSubsetSPS(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AllocPartition(i32 noundef 1) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.bit_stream, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !171
  %12 = add i32 %11, -1
  %13 = zext i32 %12 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %9, i64 %13, i1 false)
  %14 = load ptr, ptr %3, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.bit_stream, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = load i32, ptr %10, align 4, !tbaa !171
  %18 = add i32 %17, -1
  %19 = tail call i32 @RBSPtoSODB(ptr noundef %16, i32 noundef %18) #17
  %20 = load ptr, ptr %3, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.bit_stream, ptr %20, i64 0, i32 3
  store i32 %19, ptr %21, align 4, !tbaa !162
  %22 = getelementptr inbounds %struct.bit_stream, ptr %20, i64 0, i32 1
  store i32 %19, ptr %22, align 4, !tbaa !172
  %23 = getelementptr inbounds %struct.bit_stream, ptr %20, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !173
  %24 = getelementptr inbounds %struct.bit_stream, ptr %20, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !161
  store i32 0, ptr %20, align 8, !tbaa !174
  %25 = tail call ptr @AllocSPS() #17
  %26 = tail call i32 @InterpretSPS(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %25)
  %27 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %25, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !61
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 6
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %30, i32 20
  %33 = load i32, ptr %32, align 4, !tbaa !181
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %30, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !184
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %2
  tail call void @reset_subset_sps(ptr noundef nonnull %31)
  br label %40

40:                                               ; preds = %39, %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4128) %31, ptr noundef nonnull align 4 dereferenceable(4128) %25, i64 4128, i1 false)
  store i32 0, ptr %32, align 4, !tbaa !181
  %41 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %31, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !185
  switch i32 %42, label %55 [
    i32 118, label %43
    i32 128, label %43
  ]

43:                                               ; preds = %40, %40
  %44 = tail call i32 @u_1(ptr noundef nonnull @.str.184, ptr noundef nonnull %20) #17
  %45 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %30, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !186
  %46 = icmp eq i32 %44, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.190)
  br label %77

49:                                               ; preds = %43
  tail call void @seq_parameter_set_mvc_extension(ptr noundef nonnull %31, ptr noundef nonnull %20)
  %50 = tail call i32 @u_1(ptr noundef nonnull @.str.186, ptr noundef nonnull %20) #17
  %51 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %30, i32 19
  store i32 %50, ptr %51, align 8, !tbaa !187
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %30, i32 21
  tail call void @mvc_vui_parameters_extension(ptr noundef nonnull %54, ptr noundef nonnull %20)
  br label %55

55:                                               ; preds = %53, %49, %40
  %56 = tail call i32 @u_1(ptr noundef nonnull @.str.187, ptr noundef nonnull %20) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.bit_stream, ptr %20, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !159
  %61 = load i32, ptr %24, align 8, !tbaa !161
  %62 = load i32, ptr %21, align 4, !tbaa !162
  %63 = tail call i32 @more_rbsp_data(ptr noundef %60, i32 noundef %61, i32 noundef %62) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58, %65
  %66 = tail call i32 @u_1(ptr noundef nonnull @.str.187, ptr noundef nonnull %20) #17
  %67 = load ptr, ptr %59, align 8, !tbaa !159
  %68 = load i32, ptr %24, align 8, !tbaa !161
  %69 = load i32, ptr %21, align 4, !tbaa !162
  %70 = tail call i32 @more_rbsp_data(ptr noundef %67, i32 noundef %68, i32 noundef %69) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %65, !llvm.loop !188

72:                                               ; preds = %65, %58, %55
  %73 = load i32, ptr %31, align 8, !tbaa !189
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 1, ptr %32, align 4, !tbaa !181
  br label %76

76:                                               ; preds = %75, %72
  tail call void @FreeSPS(ptr noundef %25) #17
  br label %77

77:                                               ; preds = %47, %76
  %78 = sext i32 %28 to i64
  %79 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %78
  tail call void @get_max_dec_frame_buf_size(ptr noundef nonnull %79)
  %80 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %29, i64 %78, i32 20
  %81 = load i32, ptr %80, align 4, !tbaa !181
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %79, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !185
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 71
  store i32 %85, ptr %86, align 4, !tbaa !177
  %87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %79, i64 0, i32 40
  %88 = load i32, ptr %87, align 8, !tbaa !190
  %89 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  store i32 %88, ptr %89, align 8, !tbaa !178
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %79, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !191
  br label %94

94:                                               ; preds = %83, %91
  %95 = phi i32 [ %93, %91 ], [ 0, %83 ]
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 37
  store i32 %95, ptr %96, align 8, !tbaa !179
  br label %97

97:                                               ; preds = %94, %77
  tail call void @FreePartition(ptr noundef nonnull %3, i32 noundef 1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ProcessPPS(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @AllocPartition(i32 noundef 1) #17
  %4 = tail call ptr @AllocPPS() #17
  %5 = load ptr, ptr %3, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = add i32 %12, -1
  %14 = zext i32 %13 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr nonnull align 1 %10, i64 %14, i1 false)
  %15 = load ptr, ptr %3, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.bit_stream, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = load i32, ptr %11, align 4, !tbaa !171
  %19 = add i32 %18, -1
  %20 = tail call i32 @RBSPtoSODB(ptr noundef %17, i32 noundef %19) #17
  %21 = load ptr, ptr %3, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 3
  store i32 %20, ptr %22, align 4, !tbaa !162
  %23 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 1
  store i32 %20, ptr %23, align 4, !tbaa !172
  %24 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 5
  store i32 0, ptr %24, align 8, !tbaa !173
  %25 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !161
  store i32 0, ptr %21, align 8, !tbaa !174
  %26 = tail call i32 @InterpretPPS(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !192
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !135
  %33 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %28, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !135
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = tail call i32 @pps_is_equal(ptr noundef %4, ptr noundef nonnull %28) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 179
  %41 = load ptr, ptr %40, align 8, !tbaa !193
  %42 = load ptr, ptr %27, align 8, !tbaa !192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %41, ptr noundef nonnull align 8 dereferenceable(2216) %42, i64 2216, i1 false)
  %43 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %44 = load ptr, ptr %43, align 8, !tbaa !176
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  tail call void @exit_picture(ptr noundef %0, ptr noundef nonnull %43) #17
  br label %47

47:                                               ; preds = %46, %39
  store ptr null, ptr %27, align 8, !tbaa !192
  br label %48

48:                                               ; preds = %30, %47, %36, %2
  %49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !135
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %51
  %53 = load i32, ptr %52, align 8, !tbaa !167
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %51, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @free(ptr noundef %57) #17
  br label %60

60:                                               ; preds = %48, %55, %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2216) %52, ptr noundef nonnull align 8 dereferenceable(2216) %4, i64 2216, i1 false)
  %61 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 20
  %62 = load ptr, ptr %61, align 8, !tbaa !147
  %63 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 4, i64 %51, i32 20
  store ptr %62, ptr %63, align 8, !tbaa !147
  store ptr null, ptr %61, align 8, !tbaa !147
  tail call void @FreePartition(ptr noundef nonnull %3, i32 noundef 1) #17
  tail call void @FreePPS(ptr noundef %4) #17
  ret void
}

declare ptr @AllocPPS() local_unnamed_addr #1

declare i32 @pps_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @FreePPS(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_format_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #10 {
  %5 = load ptr, ptr %1, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 33
  %7 = load i32, ptr %6, align 4, !tbaa !88
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !62
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], ptr @reset_format_info.SubWidthC, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !37
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 34
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 35
  %18 = load i32, ptr %17, align 4, !tbaa !90
  %19 = getelementptr inbounds [4 x i32], ptr @reset_format_info.SubHeightC, i64 0, i64 %12
  %20 = load i32, ptr %19, align 4, !tbaa !37
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 4, !tbaa !85
  %23 = add i32 %22, -2
  %24 = mul i32 %23, %20
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 36
  %26 = load i32, ptr %25, align 4, !tbaa !91
  %27 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 37
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = add i32 %18, %16
  %30 = mul i32 %29, %14
  %31 = add i32 %28, %26
  %32 = mul i32 %24, %31
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi i32 [ %30, %9 ], [ 0, %4 ]
  %35 = phi i32 [ %32, %9 ], [ 0, %4 ]
  %36 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 23
  %37 = load i32, ptr %36, align 4, !tbaa !195
  %38 = sub i32 %37, %34
  %39 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3
  store i32 %38, ptr %39, align 8, !tbaa !37
  %40 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 24
  %41 = load i32, ptr %40, align 8, !tbaa !196
  %42 = add i32 %41, %35
  %43 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 4
  store i32 %42, ptr %43, align 4, !tbaa !37
  %44 = load i32, ptr %6, align 4, !tbaa !88
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 34
  %48 = load i32, ptr %47, align 4, !tbaa !89
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 35
  %50 = load i32, ptr %49, align 4, !tbaa !90
  %51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 30
  %52 = load i32, ptr %51, align 4, !tbaa !85
  %53 = add i32 %52, -2
  %54 = sub nsw i32 2, %52
  %55 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 36
  %56 = load i32, ptr %55, align 4, !tbaa !91
  %57 = mul i32 %53, %56
  %58 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 37
  %59 = load i32, ptr %58, align 4, !tbaa !92
  %60 = mul i32 %59, %54
  br label %61

61:                                               ; preds = %33, %46
  %62 = phi i32 [ %48, %46 ], [ 0, %33 ]
  %63 = phi i32 [ %50, %46 ], [ 0, %33 ]
  %64 = phi i32 [ %57, %46 ], [ 0, %33 ]
  %65 = phi i32 [ %60, %46 ], [ 0, %33 ]
  %66 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !62
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.inp_par, ptr %5, i64 0, i32 6
  %71 = load i32, ptr %70, align 4, !tbaa !197
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = ashr i32 %38, 1
  %75 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3, i64 1
  store i32 %74, ptr %75, align 4, !tbaa !37
  %76 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3, i64 2
  store i32 %74, ptr %76, align 8, !tbaa !37
  %77 = ashr i32 %42, 1
  br label %89

78:                                               ; preds = %69, %61
  %79 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 25
  %80 = load i32, ptr %79, align 4, !tbaa !200
  %81 = add i32 %63, %62
  %82 = sub i32 %80, %81
  %83 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3, i64 1
  store i32 %82, ptr %83, align 4, !tbaa !37
  %84 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3, i64 2
  store i32 %82, ptr %84, align 8, !tbaa !37
  %85 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 26
  %86 = load i32, ptr %85, align 8, !tbaa !201
  %87 = sub i32 %64, %65
  %88 = add i32 %87, %86
  br label %89

89:                                               ; preds = %78, %73
  %90 = phi i32 [ %88, %78 ], [ %77, %73 ]
  %91 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 4, i64 1
  store i32 %90, ptr %91, align 4, !tbaa !37
  %92 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 4, i64 2
  store i32 %90, ptr %92, align 4, !tbaa !37
  %93 = load i32, ptr %36, align 4, !tbaa !195
  %94 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 3
  store i32 %93, ptr %94, align 8, !tbaa !37
  %95 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 25
  %96 = load i32, ptr %95, align 4, !tbaa !200
  %97 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3, i64 1
  store i32 %96, ptr %97, align 4, !tbaa !37
  %98 = load i32, ptr %95, align 4, !tbaa !200
  %99 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 3, i64 2
  store i32 %98, ptr %99, align 8, !tbaa !37
  %100 = load i32, ptr %40, align 8, !tbaa !196
  %101 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 4
  store i32 %100, ptr %101, align 4, !tbaa !37
  %102 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 26
  %103 = load i32, ptr %102, align 8, !tbaa !201
  %104 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 4, i64 1
  store i32 %103, ptr %104, align 4, !tbaa !37
  %105 = load i32, ptr %102, align 8, !tbaa !201
  %106 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 4, i64 2
  store i32 %105, ptr %106, align 4, !tbaa !37
  %107 = load i32, ptr %39, align 8, !tbaa !37
  %108 = load i32, ptr %43, align 4, !tbaa !37
  %109 = mul nsw i32 %108, %107
  %110 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 13
  store i32 %109, ptr %110, align 8, !tbaa !37
  %111 = load i32, ptr %97, align 4, !tbaa !37
  %112 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 4, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !37
  %114 = mul nsw i32 %113, %111
  %115 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 13, i64 1
  store i32 %114, ptr %115, align 4, !tbaa !37
  %116 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 13, i64 2
  store i32 %114, ptr %116, align 8, !tbaa !37
  %117 = shl i32 %114, 1
  %118 = add i32 %117, %109
  %119 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 14
  store i32 %118, ptr %119, align 4, !tbaa !202
  %120 = sdiv i32 %107, 16
  %121 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 11
  store i32 %120, ptr %121, align 8, !tbaa !203
  %122 = sdiv i32 %108, 16
  %123 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 12
  store i32 %122, ptr %123, align 4, !tbaa !204
  %124 = load i32, ptr %94, align 8, !tbaa !37
  %125 = load i32, ptr %101, align 4, !tbaa !37
  %126 = mul nsw i32 %125, %124
  %127 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 13
  store i32 %126, ptr %127, align 8, !tbaa !37
  %128 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 3, i64 1
  %129 = load i32, ptr %128, align 4, !tbaa !37
  %130 = load i32, ptr %104, align 4, !tbaa !37
  %131 = mul nsw i32 %130, %129
  %132 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 13, i64 1
  store i32 %131, ptr %132, align 4, !tbaa !37
  %133 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 13, i64 2
  store i32 %131, ptr %133, align 8, !tbaa !37
  %134 = shl i32 %131, 1
  %135 = add i32 %134, %126
  %136 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 14
  store i32 %135, ptr %136, align 4, !tbaa !202
  %137 = sdiv i32 %124, 16
  %138 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 11
  store i32 %137, ptr %138, align 8, !tbaa !203
  %139 = sdiv i32 %125, 16
  %140 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 12
  store i32 %139, ptr %140, align 4, !tbaa !204
  %141 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 64
  %142 = load i16, ptr %141, align 8, !tbaa !205
  %143 = sext i16 %142 to i32
  %144 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15
  store i32 %143, ptr %144, align 8, !tbaa !37
  %145 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 15
  store i32 %143, ptr %145, align 8, !tbaa !37
  %146 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 65
  %147 = load i16, ptr %146, align 2, !tbaa !206
  %148 = sext i16 %147 to i32
  %149 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15, i64 1
  store i32 %148, ptr %149, align 4, !tbaa !37
  %150 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 15, i64 1
  store i32 %148, ptr %150, align 4, !tbaa !37
  %151 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 15, i64 2
  store i32 %148, ptr %151, align 8, !tbaa !37
  %152 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 15, i64 2
  store i32 %148, ptr %152, align 8, !tbaa !37
  %153 = load i32, ptr %145, align 8, !tbaa !37
  %154 = load i32, ptr %150, align 4, !tbaa !37
  %155 = tail call i32 @llvm.smax.i32(i32 %153, i32 %154)
  %156 = icmp sgt i32 %155, 8
  %157 = select i1 %156, i32 16, i32 8
  %158 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 18
  store i32 %157, ptr %158, align 4, !tbaa !207
  %159 = lshr exact i32 %157, 3
  %160 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 19
  store i32 %159, ptr %160, align 8, !tbaa !208
  %161 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 2
  %162 = load double, ptr %161, align 8, !tbaa !209
  %163 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 2
  store double %162, ptr %163, align 8, !tbaa !209
  %164 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !210
  %166 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 1
  store i32 %165, ptr %166, align 4, !tbaa !210
  %167 = load i32, ptr %66, align 4, !tbaa !62
  store i32 %167, ptr %2, align 8, !tbaa !211
  store i32 %167, ptr %3, align 8, !tbaa !211
  %168 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 6
  store i32 %65, ptr %168, align 4, !tbaa !212
  %169 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 5
  store i32 %63, ptr %169, align 8, !tbaa !213
  %170 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 78
  %171 = load i32, ptr %170, align 8, !tbaa !214
  %172 = mul nsw i32 %171, %65
  %173 = sdiv i32 %172, 16
  %174 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 8
  store i32 %173, ptr %174, align 4, !tbaa !215
  %175 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 77
  %176 = load i32, ptr %175, align 4, !tbaa !216
  %177 = mul nsw i32 %176, %63
  %178 = sdiv i32 %177, 16
  %179 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 7
  store i32 %178, ptr %179, align 8, !tbaa !217
  %180 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 6
  store i32 %65, ptr %180, align 4, !tbaa !212
  %181 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 5
  store i32 %63, ptr %181, align 8, !tbaa !213
  %182 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 8
  store i32 %173, ptr %182, align 4, !tbaa !215
  %183 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 7
  store i32 %178, ptr %183, align 8, !tbaa !217
  %184 = load i32, ptr %144, align 8, !tbaa !37
  %185 = shl nsw i32 -1, %184
  %186 = xor i32 %185, -1
  %187 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 16
  store i32 %186, ptr %187, align 4, !tbaa !37
  %188 = mul nsw i32 %186, %186
  %189 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 17
  store i32 %188, ptr %189, align 8, !tbaa !37
  %190 = load i32, ptr %149, align 4, !tbaa !37
  %191 = shl nsw i32 -1, %190
  %192 = xor i32 %191, -1
  %193 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 16, i64 1
  store i32 %192, ptr %193, align 4, !tbaa !37
  %194 = mul nsw i32 %192, %192
  %195 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 17, i64 1
  store i32 %194, ptr %195, align 4, !tbaa !37
  %196 = load i32, ptr %151, align 8, !tbaa !37
  %197 = shl nsw i32 -1, %196
  %198 = xor i32 %197, -1
  %199 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 16, i64 2
  store i32 %198, ptr %199, align 4, !tbaa !37
  %200 = mul nsw i32 %198, %198
  %201 = getelementptr inbounds %struct.frame_format, ptr %2, i64 0, i32 17, i64 2
  store i32 %200, ptr %201, align 8, !tbaa !37
  %202 = load i32, ptr %145, align 8, !tbaa !37
  %203 = shl nsw i32 -1, %202
  %204 = xor i32 %203, -1
  %205 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 16
  store i32 %204, ptr %205, align 4, !tbaa !37
  %206 = mul nsw i32 %204, %204
  %207 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 17
  store i32 %206, ptr %207, align 8, !tbaa !37
  %208 = load i32, ptr %150, align 4, !tbaa !37
  %209 = shl nsw i32 -1, %208
  %210 = xor i32 %209, -1
  %211 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 16, i64 1
  store i32 %210, ptr %211, align 4, !tbaa !37
  %212 = mul nsw i32 %210, %210
  %213 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 17, i64 1
  store i32 %212, ptr %213, align 4, !tbaa !37
  %214 = load i32, ptr %152, align 8, !tbaa !37
  %215 = shl nsw i32 -1, %214
  %216 = xor i32 %215, -1
  %217 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 16, i64 2
  store i32 %216, ptr %217, align 4, !tbaa !37
  %218 = mul nsw i32 %216, %216
  %219 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 17, i64 2
  store i32 %218, ptr %219, align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @activate_sps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !194
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %170, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @exit_picture(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  br label %12

12:                                               ; preds = %11, %7
  store ptr %1, ptr %4, align 8, !tbaa !175
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 65
  store i16 0, ptr %13, align 2, !tbaa !206
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  store i32 0, ptr %14, align 4, !tbaa !200
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  store i32 0, ptr %15, align 8, !tbaa !201
  %16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !60
  %18 = icmp ult i32 %17, 11
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 89
  store i32 256, ptr %20, align 8, !tbaa !218
  br label %30

21:                                               ; preds = %12
  %22 = icmp ult i32 %17, 21
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 89
  store i32 512, ptr %24, align 8, !tbaa !218
  br label %30

25:                                               ; preds = %21
  %26 = icmp ult i32 %17, 31
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 89
  br i1 %26, label %28, label %29

28:                                               ; preds = %25
  store i32 1024, ptr %27, align 8, !tbaa !218
  br label %30

29:                                               ; preds = %25
  store i32 2048, ptr %27, align 8, !tbaa !218
  br label %30

30:                                               ; preds = %23, %29, %28, %19
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 16
  %32 = load i32, ptr %31, align 4, !tbaa !63
  %33 = trunc i32 %32 to i16
  %34 = add i16 %33, 8
  %35 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 64
  store i16 %34, ptr %35, align 8, !tbaa !205
  %36 = shl nuw i32 1, %32
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 66
  store i32 %36, ptr %37, align 4, !tbaa !37
  %38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !62
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 17
  %43 = load i32, ptr %42, align 4, !tbaa !64
  %44 = trunc i32 %43 to i16
  %45 = add i16 %44, 8
  store i16 %45, ptr %13, align 2, !tbaa !206
  %46 = shl nuw i32 1, %43
  %47 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 66, i64 1
  store i32 %46, ptr %47, align 4, !tbaa !37
  br label %48

48:                                               ; preds = %41, %30
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 18
  %50 = load i32, ptr %49, align 4, !tbaa !73
  %51 = add i32 %50, 4
  %52 = shl nuw i32 1, %51
  %53 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  store i32 %52, ptr %53, align 8, !tbaa !219
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 28
  %55 = load i32, ptr %54, align 4, !tbaa !83
  %56 = add i32 %55, 1
  %57 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  store i32 %56, ptr %57, align 4, !tbaa !220
  %58 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 29
  %59 = load i32, ptr %58, align 4, !tbaa !84
  %60 = add i32 %59, 1
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 54
  store i32 %60, ptr %61, align 8, !tbaa !221
  %62 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 30
  %63 = load i32, ptr %62, align 4, !tbaa !85
  %64 = sub nsw i32 2, %63
  %65 = mul i32 %64, %60
  %66 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  store i32 %65, ptr %66, align 4, !tbaa !222
  %67 = mul i32 %65, %56
  %68 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  store i32 %67, ptr %68, align 8, !tbaa !223
  %69 = load i32, ptr %38, align 4, !tbaa !62
  %70 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  store i32 %69, ptr %70, align 8, !tbaa !224
  %71 = shl i32 %56, 4
  %72 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  store i32 %71, ptr %72, align 4, !tbaa !195
  %73 = shl i32 %65, 4
  %74 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  store i32 %73, ptr %74, align 8, !tbaa !196
  switch i32 %69, label %88 [
    i32 1, label %75
    i32 2, label %78
    i32 3, label %81
  ]

75:                                               ; preds = %48
  %76 = ashr exact i32 %71, 1
  store i32 %76, ptr %14, align 4, !tbaa !200
  %77 = ashr exact i32 %73, 1
  store i32 %77, ptr %15, align 8, !tbaa !201
  br label %88

78:                                               ; preds = %48
  %79 = ashr exact i32 %71, 1
  store i32 %79, ptr %14, align 4, !tbaa !200
  store i32 %73, ptr %15, align 8, !tbaa !201
  %80 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  store i32 16, ptr %80, align 4, !tbaa !225
  br label %88

81:                                               ; preds = %48
  store i32 %71, ptr %14, align 4, !tbaa !200
  store i32 %73, ptr %15, align 8, !tbaa !201
  %82 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 172
  %83 = load i32, ptr %82, align 8, !tbaa !226
  %84 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  store i32 %83, ptr %84, align 8, !tbaa !227
  %85 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 173
  %86 = load i32, ptr %85, align 4, !tbaa !228
  %87 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  store i32 %86, ptr %87, align 4, !tbaa !225
  br label %88

88:                                               ; preds = %48, %78, %81, %75
  %89 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !229
  %91 = icmp eq i32 %90, %55
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 8
  %94 = load i32, ptr %93, align 4, !tbaa !230
  %95 = icmp eq i32 %94, %59
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !231
  %99 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %0) #17
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 10
  %103 = load i32, ptr %102, align 4, !tbaa !232
  %104 = load ptr, ptr %4, align 8, !tbaa !175
  %105 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = icmp ne i32 %103, %106
  %108 = icmp ult i32 %106, 118
  %109 = and i1 %107, %108
  %110 = icmp slt i32 %103, 118
  %111 = and i1 %110, %109
  br i1 %111, label %112, label %135

112:                                              ; preds = %101, %96, %92, %88
  tail call void @init_frext(ptr noundef nonnull %0) #17
  %113 = tail call i32 @init_global_buffers(ptr noundef nonnull %0) #17
  %114 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 60
  %115 = load i32, ptr %114, align 8, !tbaa !233
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %119 = load ptr, ptr %118, align 8, !tbaa !234
  tail call void @flush_dpb(ptr noundef %119, i32 noundef -1) #17
  br label %120

120:                                              ; preds = %117, %112
  %121 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %122 = load ptr, ptr %121, align 8, !tbaa !234
  tail call void @init_dpb(ptr noundef nonnull %0, ptr noundef %122) #17
  %123 = load ptr, ptr %4, align 8, !tbaa !175
  %124 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %123, i64 0, i32 28
  %125 = load i32, ptr %124, align 4, !tbaa !83
  store i32 %125, ptr %89, align 8, !tbaa !229
  %126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %123, i64 0, i32 29
  %127 = load i32, ptr %126, align 4, !tbaa !84
  %128 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 8
  store i32 %127, ptr %128, align 4, !tbaa !230
  %129 = tail call i32 @GetMaxDecFrameBuffering(ptr noundef nonnull %0) #17
  %130 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 9
  store i32 %129, ptr %130, align 8, !tbaa !231
  %131 = load ptr, ptr %4, align 8, !tbaa !175
  %132 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !50
  %134 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 10
  store i32 %133, ptr %134, align 4, !tbaa !232
  br label %151

135:                                              ; preds = %101
  %136 = icmp eq i32 %103, %106
  br i1 %136, label %151, label %137

137:                                              ; preds = %135
  %138 = icmp sgt i32 %103, 117
  %139 = icmp ugt i32 %106, 117
  %140 = or i1 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %143 = load ptr, ptr %142, align 8, !tbaa !234
  %144 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %143, i64 0, i32 12
  %145 = load i32, ptr %144, align 8, !tbaa !235
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  tail call void @re_init_dpb(ptr noundef nonnull %0, ptr noundef %143) #17
  %148 = load ptr, ptr %4, align 8, !tbaa !175
  %149 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %148, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !50
  store i32 %150, ptr %102, align 4, !tbaa !232
  br label %151

151:                                              ; preds = %137, %135, %141, %147, %120
  %152 = load ptr, ptr %4, align 8, !tbaa !175
  %153 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %152, i64 0, i32 26
  %154 = load i32, ptr %153, align 4, !tbaa !81
  %155 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %156 = load ptr, ptr %155, align 8, !tbaa !234
  %157 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %156, i64 0, i32 13
  store i32 %154, ptr %157, align 4, !tbaa !237
  %158 = load i32, ptr %72, align 4, !tbaa !195
  %159 = load i32, ptr %74, align 8, !tbaa !196
  tail call void @ercInit(ptr noundef nonnull %0, i32 noundef %158, i32 noundef %159, i32 noundef 1) #17
  %160 = load ptr, ptr %8, align 8, !tbaa !176
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 140
  %164 = load ptr, ptr %163, align 8, !tbaa !238
  %165 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %166 = load i32, ptr %165, align 4, !tbaa !239
  %167 = getelementptr inbounds %struct.storable_picture, ptr %160, i64 0, i32 16
  %168 = load i32, ptr %167, align 8, !tbaa !240
  tail call void @ercReset(ptr noundef %164, i32 noundef %166, i32 noundef %166, i32 noundef %168) #17
  %169 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 141
  store i32 0, ptr %169, align 8, !tbaa !243
  br label %170

170:                                              ; preds = %151, %162, %2
  %171 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 9
  %172 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 10
  tail call void @reset_format_info(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %171, ptr noundef nonnull %172)
  ret void
}

declare i32 @GetMaxDecFrameBuffering(ptr noundef) local_unnamed_addr #1

declare void @init_frext(ptr noundef) local_unnamed_addr #1

declare i32 @init_global_buffers(ptr noundef) local_unnamed_addr #1

declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @init_dpb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @re_init_dpb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ercInit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ercReset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @activate_pps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @exit_picture(ptr noundef %0, ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %10, %6
  store ptr %1, ptr %3, align 8, !tbaa !192
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UseParameterSet(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 73
  %4 = load i32, ptr %3, align 4, !tbaa !247
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 4, i64 %5
  %7 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 4, i64 %5, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !137
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 3, i64 %9
  %11 = load i32, ptr %6, align 8, !tbaa !167
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %4)
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !248
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, ptr %10, align 4, !tbaa !95
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 8, !tbaa !137
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i32 noundef %4, i32 noundef %23)
  br label %36

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 6
  %27 = load i32, ptr %7, align 8, !tbaa !137
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %26, i64 %28
  %30 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !249
  %31 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 6, i64 %28, i32 20
  %32 = load i32, ptr %31, align 4, !tbaa !181
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, i32 noundef %4, i32 noundef %27)
  br label %36

36:                                               ; preds = %25, %34, %19, %22
  %37 = phi ptr [ %10, %22 ], [ %10, %19 ], [ %29, %34 ], [ %29, %25 ]
  %38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %37, i64 0, i32 19
  %39 = load i32, ptr %38, align 4, !tbaa !74
  %40 = icmp ugt i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, i32 noundef %39)
  tail call void @error(ptr noundef nonnull @.str.117, i32 noundef -1000) #17
  br label %43

43:                                               ; preds = %36, %41
  %44 = load i32, ptr %38, align 4, !tbaa !74
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %37, i64 0, i32 24
  %48 = load i32, ptr %47, align 4, !tbaa !79
  %49 = icmp ugt i32 %48, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @error(ptr noundef nonnull @.str.118, i32 noundef -1011) #17
  br label %51

51:                                               ; preds = %46, %50, %43
  tail call void @activate_sps(ptr noundef %2, ptr noundef %37)
  %52 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !192
  %54 = icmp eq ptr %53, %6
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 136
  %57 = load ptr, ptr %56, align 8, !tbaa !176
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @exit_picture(ptr noundef %2, ptr noundef nonnull %56) #17
  br label %60

60:                                               ; preds = %59, %55
  store ptr %6, ptr %52, align 8, !tbaa !192
  br label %61

61:                                               ; preds = %51, %60
  %62 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 4, i64 %5, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !138
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 114
  %66 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  br i1 %64, label %67, label %74

67:                                               ; preds = %61
  store ptr @uvlc_startcode_follows, ptr %65, align 8, !tbaa !250
  %68 = load ptr, ptr %66, align 8, !tbaa !251
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %72, %69 ]
  %71 = getelementptr inbounds %struct.datapartition, ptr %68, i64 %70, i32 2
  store ptr @readSyntaxElement_UVLC, ptr %71, align 8, !tbaa !252
  %72 = add nuw nsw i64 %70, 1
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %81, label %69, !llvm.loop !253

74:                                               ; preds = %61
  store ptr @cabac_startcode_follows, ptr %65, align 8, !tbaa !250
  %75 = load ptr, ptr %66, align 8, !tbaa !251
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %79, %76 ]
  %78 = getelementptr inbounds %struct.datapartition, ptr %75, i64 %77, i32 2
  store ptr @readSyntaxElement_CABAC, ptr %78, align 8, !tbaa !252
  %79 = add nuw nsw i64 %77, 1
  %80 = icmp eq i64 %79, 3
  br i1 %80, label %81, label %76, !llvm.loop !254

81:                                               ; preds = %76, %69
  ret void
}

declare i32 @uvlc_startcode_follows(ptr noundef, i32 noundef) #1

declare i32 @readSyntaxElement_UVLC(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cabac_startcode_follows(ptr noundef, i32 noundef) #1

declare i32 @readSyntaxElement_CABAC(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @seq_parameter_set_mvc_extension(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ue_v(ptr noundef nonnull @.str.119, ptr noundef %1) #17
  %4 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 2
  store i32 %3, ptr %4, align 4, !tbaa !184
  %5 = icmp sgt i32 %3, -1
  br i1 %5, label %6, label %53

6:                                                ; preds = %2
  %7 = add nuw nsw i32 %3, 1
  %8 = zext nneg i32 %7 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  %10 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !255
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.120) #17
  br label %13

13:                                               ; preds = %12, %6
  %14 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  %15 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !256
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @no_mem_exit(ptr noundef nonnull @.str.121) #17
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  %20 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !257
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.122) #17
  br label %23

23:                                               ; preds = %22, %18
  %24 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #18
  %25 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  store ptr %24, ptr %25, align 8, !tbaa !258
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @no_mem_exit(ptr noundef nonnull @.str.123) #17
  br label %28

28:                                               ; preds = %27, %23
  %29 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #18
  %30 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  store ptr %29, ptr %30, align 8, !tbaa !259
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @no_mem_exit(ptr noundef nonnull @.str.124) #17
  br label %33

33:                                               ; preds = %32, %28
  %34 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  %35 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 8
  store ptr %34, ptr %35, align 8, !tbaa !260
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @no_mem_exit(ptr noundef nonnull @.str.125) #17
  br label %38

38:                                               ; preds = %37, %33
  %39 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  %40 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 10
  store ptr %39, ptr %40, align 8, !tbaa !261
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @no_mem_exit(ptr noundef nonnull @.str.126) #17
  br label %43

43:                                               ; preds = %42, %38
  %44 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #18
  %45 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 9
  store ptr %44, ptr %45, align 8, !tbaa !262
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @no_mem_exit(ptr noundef nonnull @.str.127) #17
  br label %48

48:                                               ; preds = %47, %43
  %49 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #18
  %50 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 11
  store ptr %49, ptr %50, align 8, !tbaa !263
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @no_mem_exit(ptr noundef nonnull @.str.128) #17
  br label %53

53:                                               ; preds = %48, %52, %2
  %54 = icmp slt i32 %3, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 3
  %57 = add nuw i32 %3, 1
  %58 = zext i32 %57 to i64
  br label %68

59:                                               ; preds = %68, %53
  %60 = icmp slt i32 %3, 1
  br i1 %60, label %75, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 4
  %63 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %64 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 6
  %65 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  %66 = add nuw i32 %3, 1
  %67 = zext i32 %66 to i64
  br label %84

68:                                               ; preds = %55, %68
  %69 = phi i64 [ 0, %55 ], [ %73, %68 ]
  %70 = tail call i32 @ue_v(ptr noundef nonnull @.str.129, ptr noundef %1) #17
  %71 = load ptr, ptr %56, align 8, !tbaa !255
  %72 = getelementptr inbounds i32, ptr %71, i64 %69
  store i32 %70, ptr %72, align 4, !tbaa !37
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %59, label %68, !llvm.loop !264

75:                                               ; preds = %145, %59
  %76 = icmp slt i32 %3, 1
  br i1 %76, label %212, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 8
  %79 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 9
  %80 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 10
  %81 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 11
  %82 = add nuw i32 %3, 1
  %83 = zext i32 %82 to i64
  br label %148

84:                                               ; preds = %61, %145
  %85 = phi i64 [ 1, %61 ], [ %146, %145 ]
  %86 = tail call i32 @ue_v(ptr noundef nonnull @.str.130, ptr noundef %1) #17
  %87 = load ptr, ptr %62, align 8, !tbaa !256
  %88 = getelementptr inbounds i32, ptr %87, i64 %85
  store i32 %86, ptr %88, align 4, !tbaa !37
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = zext nneg i32 %86 to i64
  %92 = tail call noalias ptr @calloc(i64 noundef %91, i64 noundef 4) #18
  %93 = load ptr, ptr %63, align 8, !tbaa !258
  %94 = getelementptr inbounds ptr, ptr %93, i64 %85
  store ptr %92, ptr %94, align 8, !tbaa !46
  %95 = icmp eq ptr %92, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  tail call void @no_mem_exit(ptr noundef nonnull @.str.131) #17
  br label %97

97:                                               ; preds = %96, %90
  %98 = load ptr, ptr %62, align 8, !tbaa !256
  %99 = getelementptr inbounds i32, ptr %98, i64 %85
  %100 = load i32, ptr %99, align 4, !tbaa !37
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97, %102
  %103 = phi i64 [ %109, %102 ], [ 0, %97 ]
  %104 = tail call i32 @ue_v(ptr noundef nonnull @.str.132, ptr noundef %1) #17
  %105 = load ptr, ptr %63, align 8, !tbaa !258
  %106 = getelementptr inbounds ptr, ptr %105, i64 %85
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = getelementptr inbounds i32, ptr %107, i64 %103
  store i32 %104, ptr %108, align 4, !tbaa !37
  %109 = add nuw nsw i64 %103, 1
  %110 = load ptr, ptr %62, align 8, !tbaa !256
  %111 = getelementptr inbounds i32, ptr %110, i64 %85
  %112 = load i32, ptr %111, align 4, !tbaa !37
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %109, %113
  br i1 %114, label %102, label %115, !llvm.loop !265

115:                                              ; preds = %102, %97, %84
  %116 = tail call i32 @ue_v(ptr noundef nonnull @.str.133, ptr noundef %1) #17
  %117 = load ptr, ptr %64, align 8, !tbaa !257
  %118 = getelementptr inbounds i32, ptr %117, i64 %85
  store i32 %116, ptr %118, align 4, !tbaa !37
  %119 = icmp sgt i32 %116, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %115
  %121 = zext nneg i32 %116 to i64
  %122 = tail call noalias ptr @calloc(i64 noundef %121, i64 noundef 4) #18
  %123 = load ptr, ptr %65, align 8, !tbaa !259
  %124 = getelementptr inbounds ptr, ptr %123, i64 %85
  store ptr %122, ptr %124, align 8, !tbaa !46
  %125 = icmp eq ptr %122, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  tail call void @no_mem_exit(ptr noundef nonnull @.str.134) #17
  br label %127

127:                                              ; preds = %126, %120
  %128 = load ptr, ptr %64, align 8, !tbaa !257
  %129 = getelementptr inbounds i32, ptr %128, i64 %85
  %130 = load i32, ptr %129, align 4, !tbaa !37
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127, %132
  %133 = phi i64 [ %139, %132 ], [ 0, %127 ]
  %134 = tail call i32 @ue_v(ptr noundef nonnull @.str.135, ptr noundef %1) #17
  %135 = load ptr, ptr %65, align 8, !tbaa !259
  %136 = getelementptr inbounds ptr, ptr %135, i64 %85
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = getelementptr inbounds i32, ptr %137, i64 %133
  store i32 %134, ptr %138, align 4, !tbaa !37
  %139 = add nuw nsw i64 %133, 1
  %140 = load ptr, ptr %64, align 8, !tbaa !257
  %141 = getelementptr inbounds i32, ptr %140, i64 %85
  %142 = load i32, ptr %141, align 4, !tbaa !37
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %139, %143
  br i1 %144, label %132, label %145, !llvm.loop !266

145:                                              ; preds = %132, %127, %115
  %146 = add nuw nsw i64 %85, 1
  %147 = icmp eq i64 %146, %67
  br i1 %147, label %75, label %84, !llvm.loop !267

148:                                              ; preds = %77, %209
  %149 = phi i64 [ 1, %77 ], [ %210, %209 ]
  %150 = tail call i32 @ue_v(ptr noundef nonnull @.str.136, ptr noundef %1) #17
  %151 = load ptr, ptr %78, align 8, !tbaa !260
  %152 = getelementptr inbounds i32, ptr %151, i64 %149
  store i32 %150, ptr %152, align 4, !tbaa !37
  %153 = icmp sgt i32 %150, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %148
  %155 = zext nneg i32 %150 to i64
  %156 = tail call noalias ptr @calloc(i64 noundef %155, i64 noundef 4) #18
  %157 = load ptr, ptr %79, align 8, !tbaa !262
  %158 = getelementptr inbounds ptr, ptr %157, i64 %149
  store ptr %156, ptr %158, align 8, !tbaa !46
  %159 = icmp eq ptr %156, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  tail call void @no_mem_exit(ptr noundef nonnull @.str.137) #17
  br label %161

161:                                              ; preds = %160, %154
  %162 = load ptr, ptr %78, align 8, !tbaa !260
  %163 = getelementptr inbounds i32, ptr %162, i64 %149
  %164 = load i32, ptr %163, align 4, !tbaa !37
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %161, %166
  %167 = phi i64 [ %173, %166 ], [ 0, %161 ]
  %168 = tail call i32 @ue_v(ptr noundef nonnull @.str.138, ptr noundef %1) #17
  %169 = load ptr, ptr %79, align 8, !tbaa !262
  %170 = getelementptr inbounds ptr, ptr %169, i64 %149
  %171 = load ptr, ptr %170, align 8, !tbaa !46
  %172 = getelementptr inbounds i32, ptr %171, i64 %167
  store i32 %168, ptr %172, align 4, !tbaa !37
  %173 = add nuw nsw i64 %167, 1
  %174 = load ptr, ptr %78, align 8, !tbaa !260
  %175 = getelementptr inbounds i32, ptr %174, i64 %149
  %176 = load i32, ptr %175, align 4, !tbaa !37
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %173, %177
  br i1 %178, label %166, label %179, !llvm.loop !268

179:                                              ; preds = %166, %161, %148
  %180 = tail call i32 @ue_v(ptr noundef nonnull @.str.139, ptr noundef %1) #17
  %181 = load ptr, ptr %80, align 8, !tbaa !261
  %182 = getelementptr inbounds i32, ptr %181, i64 %149
  store i32 %180, ptr %182, align 4, !tbaa !37
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %179
  %185 = zext nneg i32 %180 to i64
  %186 = tail call noalias ptr @calloc(i64 noundef %185, i64 noundef 4) #18
  %187 = load ptr, ptr %81, align 8, !tbaa !263
  %188 = getelementptr inbounds ptr, ptr %187, i64 %149
  store ptr %186, ptr %188, align 8, !tbaa !46
  %189 = icmp eq ptr %186, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  tail call void @no_mem_exit(ptr noundef nonnull @.str.140) #17
  br label %191

191:                                              ; preds = %190, %184
  %192 = load ptr, ptr %80, align 8, !tbaa !261
  %193 = getelementptr inbounds i32, ptr %192, i64 %149
  %194 = load i32, ptr %193, align 4, !tbaa !37
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %191, %196
  %197 = phi i64 [ %203, %196 ], [ 0, %191 ]
  %198 = tail call i32 @ue_v(ptr noundef nonnull @.str.141, ptr noundef %1) #17
  %199 = load ptr, ptr %81, align 8, !tbaa !263
  %200 = getelementptr inbounds ptr, ptr %199, i64 %149
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = getelementptr inbounds i32, ptr %201, i64 %197
  store i32 %198, ptr %202, align 4, !tbaa !37
  %203 = add nuw nsw i64 %197, 1
  %204 = load ptr, ptr %80, align 8, !tbaa !261
  %205 = getelementptr inbounds i32, ptr %204, i64 %149
  %206 = load i32, ptr %205, align 4, !tbaa !37
  %207 = sext i32 %206 to i64
  %208 = icmp slt i64 %203, %207
  br i1 %208, label %196, label %209, !llvm.loop !269

209:                                              ; preds = %196, %191, %179
  %210 = add nuw nsw i64 %149, 1
  %211 = icmp eq i64 %210, %83
  br i1 %211, label %212, label %148, !llvm.loop !270

212:                                              ; preds = %209, %75
  %213 = tail call i32 @ue_v(ptr noundef nonnull @.str.142, ptr noundef %1) #17
  %214 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 12
  store i32 %213, ptr %214, align 8, !tbaa !271
  %215 = icmp sgt i32 %213, -1
  br i1 %215, label %216, label %248

216:                                              ; preds = %212
  %217 = add nuw nsw i32 %213, 1
  %218 = zext nneg i32 %217 to i64
  %219 = tail call noalias ptr @calloc(i64 noundef %218, i64 noundef 4) #18
  %220 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 13
  store ptr %219, ptr %220, align 8, !tbaa !272
  %221 = icmp eq ptr %219, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  tail call void @no_mem_exit(ptr noundef nonnull @.str.143) #17
  br label %223

223:                                              ; preds = %222, %216
  %224 = tail call noalias ptr @calloc(i64 noundef %218, i64 noundef 4) #18
  %225 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 14
  store ptr %224, ptr %225, align 8, !tbaa !273
  %226 = icmp eq ptr %224, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  tail call void @no_mem_exit(ptr noundef nonnull @.str.144) #17
  br label %228

228:                                              ; preds = %227, %223
  %229 = tail call noalias ptr @calloc(i64 noundef %218, i64 noundef 8) #18
  %230 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 15
  store ptr %229, ptr %230, align 8, !tbaa !274
  %231 = icmp eq ptr %229, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  tail call void @no_mem_exit(ptr noundef nonnull @.str.145) #17
  br label %233

233:                                              ; preds = %232, %228
  %234 = tail call noalias ptr @calloc(i64 noundef %218, i64 noundef 8) #18
  %235 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 16
  store ptr %234, ptr %235, align 8, !tbaa !275
  %236 = icmp eq ptr %234, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  tail call void @no_mem_exit(ptr noundef nonnull @.str.146) #17
  br label %238

238:                                              ; preds = %237, %233
  %239 = tail call noalias ptr @calloc(i64 noundef %218, i64 noundef 8) #18
  %240 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 17
  store ptr %239, ptr %240, align 8, !tbaa !276
  %241 = icmp eq ptr %239, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  tail call void @no_mem_exit(ptr noundef nonnull @.str.147) #17
  br label %243

243:                                              ; preds = %242, %238
  %244 = tail call noalias ptr @calloc(i64 noundef %218, i64 noundef 8) #18
  %245 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 18
  store ptr %244, ptr %245, align 8, !tbaa !277
  %246 = icmp eq ptr %244, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  tail call void @no_mem_exit(ptr noundef nonnull @.str.148) #17
  br label %248

248:                                              ; preds = %243, %247, %212
  %249 = load i32, ptr %214, align 8, !tbaa !271
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %377, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 13
  %253 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 14
  %254 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 15
  %255 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 16
  %256 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 17
  %257 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 18
  br label %258

258:                                              ; preds = %251, %372
  %259 = phi i64 [ 0, %251 ], [ %373, %372 ]
  %260 = tail call i32 @u_v(i32 noundef 8, ptr noundef nonnull @.str.149, ptr noundef %1) #17
  %261 = load ptr, ptr %252, align 8, !tbaa !272
  %262 = getelementptr inbounds i32, ptr %261, i64 %259
  store i32 %260, ptr %262, align 4, !tbaa !37
  %263 = tail call i32 @ue_v(ptr noundef nonnull @.str.150, ptr noundef %1) #17
  %264 = load ptr, ptr %253, align 8, !tbaa !273
  %265 = getelementptr inbounds i32, ptr %264, i64 %259
  store i32 %263, ptr %265, align 4, !tbaa !37
  %266 = icmp sgt i32 %263, -1
  br i1 %266, label %267, label %372

267:                                              ; preds = %258
  %268 = add nuw nsw i32 %263, 1
  %269 = zext nneg i32 %268 to i64
  %270 = tail call noalias ptr @calloc(i64 noundef %269, i64 noundef 4) #18
  %271 = load ptr, ptr %254, align 8, !tbaa !274
  %272 = getelementptr inbounds ptr, ptr %271, i64 %259
  store ptr %270, ptr %272, align 8, !tbaa !46
  %273 = icmp eq ptr %270, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  tail call void @no_mem_exit(ptr noundef nonnull @.str.151) #17
  br label %275

275:                                              ; preds = %274, %267
  %276 = load ptr, ptr %253, align 8, !tbaa !273
  %277 = getelementptr inbounds i32, ptr %276, i64 %259
  %278 = load i32, ptr %277, align 4, !tbaa !37
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = tail call noalias ptr @calloc(i64 noundef %280, i64 noundef 4) #18
  %282 = load ptr, ptr %255, align 8, !tbaa !275
  %283 = getelementptr inbounds ptr, ptr %282, i64 %259
  store ptr %281, ptr %283, align 8, !tbaa !46
  %284 = icmp eq ptr %281, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %275
  tail call void @no_mem_exit(ptr noundef nonnull @.str.152) #17
  br label %286

286:                                              ; preds = %285, %275
  %287 = load ptr, ptr %253, align 8, !tbaa !273
  %288 = getelementptr inbounds i32, ptr %287, i64 %259
  %289 = load i32, ptr %288, align 4, !tbaa !37
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = tail call noalias ptr @calloc(i64 noundef %291, i64 noundef 8) #18
  %293 = load ptr, ptr %256, align 8, !tbaa !276
  %294 = getelementptr inbounds ptr, ptr %293, i64 %259
  store ptr %292, ptr %294, align 8, !tbaa !46
  %295 = icmp eq ptr %292, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %286
  tail call void @no_mem_exit(ptr noundef nonnull @.str.153) #17
  br label %297

297:                                              ; preds = %296, %286
  %298 = load ptr, ptr %253, align 8, !tbaa !273
  %299 = getelementptr inbounds i32, ptr %298, i64 %259
  %300 = load i32, ptr %299, align 4, !tbaa !37
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = tail call noalias ptr @calloc(i64 noundef %302, i64 noundef 4) #18
  %304 = load ptr, ptr %257, align 8, !tbaa !277
  %305 = getelementptr inbounds ptr, ptr %304, i64 %259
  store ptr %303, ptr %305, align 8, !tbaa !46
  %306 = icmp eq ptr %303, null
  br i1 %306, label %307, label %308

307:                                              ; preds = %297
  tail call void @no_mem_exit(ptr noundef nonnull @.str.154) #17
  br label %308

308:                                              ; preds = %307, %297
  %309 = load ptr, ptr %253, align 8, !tbaa !273
  %310 = getelementptr inbounds i32, ptr %309, i64 %259
  %311 = load i32, ptr %310, align 4, !tbaa !37
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %372, label %313

313:                                              ; preds = %308, %360
  %314 = phi i64 [ %366, %360 ], [ 0, %308 ]
  %315 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.155, ptr noundef %1) #17
  %316 = load ptr, ptr %254, align 8, !tbaa !274
  %317 = getelementptr inbounds ptr, ptr %316, i64 %259
  %318 = load ptr, ptr %317, align 8, !tbaa !46
  %319 = getelementptr inbounds i32, ptr %318, i64 %314
  store i32 %315, ptr %319, align 4, !tbaa !37
  %320 = tail call i32 @ue_v(ptr noundef nonnull @.str.156, ptr noundef %1) #17
  %321 = load ptr, ptr %255, align 8, !tbaa !275
  %322 = getelementptr inbounds ptr, ptr %321, i64 %259
  %323 = load ptr, ptr %322, align 8, !tbaa !46
  %324 = getelementptr inbounds i32, ptr %323, i64 %314
  store i32 %320, ptr %324, align 4, !tbaa !37
  %325 = icmp sgt i32 %320, -1
  br i1 %325, label %326, label %360

326:                                              ; preds = %313
  %327 = add nuw nsw i32 %320, 1
  %328 = zext nneg i32 %327 to i64
  %329 = tail call noalias ptr @calloc(i64 noundef %328, i64 noundef 4) #18
  %330 = load ptr, ptr %256, align 8, !tbaa !276
  %331 = getelementptr inbounds ptr, ptr %330, i64 %259
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = getelementptr inbounds ptr, ptr %332, i64 %314
  store ptr %329, ptr %333, align 8, !tbaa !46
  %334 = icmp eq ptr %329, null
  br i1 %334, label %335, label %336

335:                                              ; preds = %326
  tail call void @no_mem_exit(ptr noundef nonnull @.str.157) #17
  br label %336

336:                                              ; preds = %335, %326
  %337 = load ptr, ptr %255, align 8, !tbaa !275
  %338 = getelementptr inbounds ptr, ptr %337, i64 %259
  %339 = load ptr, ptr %338, align 8, !tbaa !46
  %340 = getelementptr inbounds i32, ptr %339, i64 %314
  %341 = load i32, ptr %340, align 4, !tbaa !37
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %360, label %343

343:                                              ; preds = %336, %343
  %344 = phi i64 [ %352, %343 ], [ 0, %336 ]
  %345 = tail call i32 @ue_v(ptr noundef nonnull @.str.158, ptr noundef %1) #17
  %346 = load ptr, ptr %256, align 8, !tbaa !276
  %347 = getelementptr inbounds ptr, ptr %346, i64 %259
  %348 = load ptr, ptr %347, align 8, !tbaa !46
  %349 = getelementptr inbounds ptr, ptr %348, i64 %314
  %350 = load ptr, ptr %349, align 8, !tbaa !46
  %351 = getelementptr inbounds i32, ptr %350, i64 %344
  store i32 %345, ptr %351, align 4, !tbaa !37
  %352 = add nuw nsw i64 %344, 1
  %353 = load ptr, ptr %255, align 8, !tbaa !275
  %354 = getelementptr inbounds ptr, ptr %353, i64 %259
  %355 = load ptr, ptr %354, align 8, !tbaa !46
  %356 = getelementptr inbounds i32, ptr %355, i64 %314
  %357 = load i32, ptr %356, align 4, !tbaa !37
  %358 = sext i32 %357 to i64
  %359 = icmp slt i64 %344, %358
  br i1 %359, label %343, label %360, !llvm.loop !278

360:                                              ; preds = %343, %336, %313
  %361 = tail call i32 @ue_v(ptr noundef nonnull @.str.159, ptr noundef %1) #17
  %362 = load ptr, ptr %257, align 8, !tbaa !277
  %363 = getelementptr inbounds ptr, ptr %362, i64 %259
  %364 = load ptr, ptr %363, align 8, !tbaa !46
  %365 = getelementptr inbounds i32, ptr %364, i64 %314
  store i32 %361, ptr %365, align 4, !tbaa !37
  %366 = add nuw nsw i64 %314, 1
  %367 = load ptr, ptr %253, align 8, !tbaa !273
  %368 = getelementptr inbounds i32, ptr %367, i64 %259
  %369 = load i32, ptr %368, align 4, !tbaa !37
  %370 = sext i32 %369 to i64
  %371 = icmp slt i64 %314, %370
  br i1 %371, label %313, label %372, !llvm.loop !279

372:                                              ; preds = %360, %308, %258
  %373 = add nuw nsw i64 %259, 1
  %374 = load i32, ptr %214, align 8, !tbaa !271
  %375 = sext i32 %374 to i64
  %376 = icmp slt i64 %259, %375
  br i1 %376, label %258, label %377, !llvm.loop !280

377:                                              ; preds = %372, %248
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @MemAlloc1D(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = mul nsw i32 %2, %1
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = sext i32 %2 to i64
  %8 = sext i32 %1 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef %8) #18
  store ptr %9, ptr %0, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ %11, %6 ], [ 1, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @hrd_parameters(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ue_v(ptr noundef nonnull @.str.160, ptr noundef %1) #17
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 12
  store i8 %4, ptr %5, align 8, !tbaa !281
  %6 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.161, ptr noundef %1) #17
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 13
  store i8 %7, ptr %8, align 1, !tbaa !282
  %9 = tail call i32 @u_v(i32 noundef 4, ptr noundef nonnull @.str.162, ptr noundef %1) #17
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 14
  store i8 %10, ptr %11, align 2, !tbaa !283
  %12 = load i8, ptr %5, align 8, !tbaa !281
  %13 = icmp slt i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2, %14
  %15 = phi i64 [ %23, %14 ], [ 0, %2 ]
  %16 = tail call i32 @ue_v(ptr noundef nonnull @.str.163, ptr noundef %1) #17
  %17 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 15, i64 %15
  store i32 %16, ptr %17, align 4, !tbaa !37
  %18 = tail call i32 @ue_v(ptr noundef nonnull @.str.164, ptr noundef %1) #17
  %19 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 16, i64 %15
  store i32 %18, ptr %19, align 4, !tbaa !37
  %20 = tail call i32 @u_1(ptr noundef nonnull @.str.165, ptr noundef %1) #17
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 17, i64 %15
  store i8 %21, ptr %22, align 1, !tbaa !34
  %23 = add nuw nsw i64 %15, 1
  %24 = load i8, ptr %5, align 8, !tbaa !281
  %25 = sext i8 %24 to i64
  %26 = icmp slt i64 %15, %25
  br i1 %26, label %14, label %27, !llvm.loop !284

27:                                               ; preds = %14, %2
  %28 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.166, ptr noundef %1) #17
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 18
  store i8 %29, ptr %30, align 4, !tbaa !285
  %31 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.167, ptr noundef %1) #17
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 19
  store i8 %32, ptr %33, align 1, !tbaa !286
  %34 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.168, ptr noundef %1) #17
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 20
  store i8 %35, ptr %36, align 2, !tbaa !287
  %37 = tail call i32 @u_v(i32 noundef 5, ptr noundef nonnull @.str.169, ptr noundef %1) #17
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 21
  store i8 %38, ptr %39, align 1, !tbaa !288
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mvc_vui_parameters_extension(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ue_v(ptr noundef nonnull @.str.170, ptr noundef %1) #17
  store i32 %3, ptr %0, align 8, !tbaa !289
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %131

5:                                                ; preds = %2
  %6 = add nuw nsw i32 %3, 1
  %7 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 1
  %8 = zext nneg i32 %6 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %9, ptr %7, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 2
  %11 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  store ptr %11, ptr %10, align 8, !tbaa !46
  %12 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #18
  %13 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !290
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.171) #17
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 4
  %18 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %18, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 5
  %20 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  store ptr %20, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 6
  %22 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #18
  store ptr %22, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 7
  %24 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %24, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 8
  %26 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %26, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 9
  %28 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %28, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 10
  %30 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %30, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.mvcvui_tag, ptr %0, i64 0, i32 11
  %32 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 1) #18
  store ptr %32, ptr %31, align 8, !tbaa !46
  %33 = add nuw i32 %3, 1
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %16, %124
  %36 = phi i64 [ 0, %16 ], [ %129, %124 ]
  %37 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.172, ptr noundef %1) #17
  %38 = trunc i32 %37 to i8
  %39 = load ptr, ptr %7, align 8, !tbaa !291
  %40 = getelementptr inbounds i8, ptr %39, i64 %36
  store i8 %38, ptr %40, align 1, !tbaa !34
  %41 = tail call i32 @ue_v(ptr noundef nonnull @.str.173, ptr noundef %1) #17
  %42 = load ptr, ptr %10, align 8, !tbaa !292
  %43 = getelementptr inbounds i32, ptr %42, i64 %36
  store i32 %41, ptr %43, align 4, !tbaa !37
  %44 = icmp sgt i32 %41, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = add nuw nsw i32 %41, 1
  %47 = load ptr, ptr %13, align 8, !tbaa !290
  %48 = getelementptr inbounds ptr, ptr %47, i64 %36
  %49 = zext nneg i32 %46 to i64
  %50 = tail call noalias ptr @calloc(i64 noundef %49, i64 noundef 4) #18
  store ptr %50, ptr %48, align 8, !tbaa !46
  br label %51

51:                                               ; preds = %45, %35
  %52 = load ptr, ptr %10, align 8, !tbaa !292
  %53 = getelementptr inbounds i32, ptr %52, i64 %36
  %54 = load i32, ptr %53, align 4, !tbaa !37
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51, %56
  %57 = phi i64 [ %63, %56 ], [ 0, %51 ]
  %58 = tail call i32 @ue_v(ptr noundef nonnull @.str.174, ptr noundef %1) #17
  %59 = load ptr, ptr %13, align 8, !tbaa !290
  %60 = getelementptr inbounds ptr, ptr %59, i64 %36
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = getelementptr inbounds i32, ptr %61, i64 %57
  store i32 %58, ptr %62, align 4, !tbaa !37
  %63 = add nuw nsw i64 %57, 1
  %64 = load ptr, ptr %10, align 8, !tbaa !292
  %65 = getelementptr inbounds i32, ptr %64, i64 %36
  %66 = load i32, ptr %65, align 4, !tbaa !37
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %57, %67
  br i1 %68, label %56, label %69, !llvm.loop !293

69:                                               ; preds = %56, %51
  %70 = tail call i32 @u_1(ptr noundef nonnull @.str.175, ptr noundef %1) #17
  %71 = trunc i32 %70 to i8
  %72 = load ptr, ptr %17, align 8, !tbaa !294
  %73 = getelementptr inbounds i8, ptr %72, i64 %36
  store i8 %71, ptr %73, align 1, !tbaa !34
  %74 = load ptr, ptr %17, align 8, !tbaa !294
  %75 = getelementptr inbounds i8, ptr %74, i64 %36
  %76 = load i8, ptr %75, align 1, !tbaa !34
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %69
  %79 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.176, ptr noundef %1) #17
  %80 = load ptr, ptr %19, align 8, !tbaa !295
  %81 = getelementptr inbounds i32, ptr %80, i64 %36
  store i32 %79, ptr %81, align 4, !tbaa !37
  %82 = tail call i32 @u_v(i32 noundef 32, ptr noundef nonnull @.str.177, ptr noundef %1) #17
  %83 = load ptr, ptr %21, align 8, !tbaa !296
  %84 = getelementptr inbounds i32, ptr %83, i64 %36
  store i32 %82, ptr %84, align 4, !tbaa !37
  %85 = tail call i32 @u_1(ptr noundef nonnull @.str.178, ptr noundef %1) #17
  %86 = trunc i32 %85 to i8
  %87 = load ptr, ptr %23, align 8, !tbaa !297
  %88 = getelementptr inbounds i8, ptr %87, i64 %36
  store i8 %86, ptr %88, align 1, !tbaa !34
  br label %89

89:                                               ; preds = %78, %69
  %90 = tail call i32 @u_1(ptr noundef nonnull @.str.179, ptr noundef %1) #17
  %91 = trunc i32 %90 to i8
  %92 = load ptr, ptr %25, align 8, !tbaa !298
  %93 = getelementptr inbounds i8, ptr %92, i64 %36
  store i8 %91, ptr %93, align 1, !tbaa !34
  %94 = load ptr, ptr %25, align 8, !tbaa !298
  %95 = getelementptr inbounds i8, ptr %94, i64 %36
  %96 = load i8, ptr %95, align 1, !tbaa !34
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  tail call void @hrd_parameters(ptr noundef nonnull %0, ptr noundef %1)
  br label %99

99:                                               ; preds = %98, %89
  %100 = tail call i32 @u_1(ptr noundef nonnull @.str.180, ptr noundef %1) #17
  %101 = trunc i32 %100 to i8
  %102 = load ptr, ptr %27, align 8, !tbaa !299
  %103 = getelementptr inbounds i8, ptr %102, i64 %36
  store i8 %101, ptr %103, align 1, !tbaa !34
  %104 = load ptr, ptr %27, align 8, !tbaa !299
  %105 = getelementptr inbounds i8, ptr %104, i64 %36
  %106 = load i8, ptr %105, align 1, !tbaa !34
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  tail call void @hrd_parameters(ptr noundef nonnull %0, ptr noundef %1)
  br label %109

109:                                              ; preds = %108, %99
  %110 = load ptr, ptr %25, align 8, !tbaa !298
  %111 = getelementptr inbounds i8, ptr %110, i64 %36
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load ptr, ptr %27, align 8, !tbaa !299
  %116 = getelementptr inbounds i8, ptr %115, i64 %36
  %117 = load i8, ptr %116, align 1, !tbaa !34
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114, %109
  %120 = tail call i32 @u_1(ptr noundef nonnull @.str.181, ptr noundef %1) #17
  %121 = trunc i32 %120 to i8
  %122 = load ptr, ptr %29, align 8, !tbaa !300
  %123 = getelementptr inbounds i8, ptr %122, i64 %36
  store i8 %121, ptr %123, align 1, !tbaa !34
  br label %124

124:                                              ; preds = %119, %114
  %125 = tail call i32 @u_1(ptr noundef nonnull @.str.182, ptr noundef %1) #17
  %126 = trunc i32 %125 to i8
  %127 = load ptr, ptr %31, align 8, !tbaa !301
  %128 = getelementptr inbounds i8, ptr %127, i64 %36
  store i8 %126, ptr %128, align 1, !tbaa !34
  %129 = add nuw nsw i64 %36, 1
  %130 = icmp eq i64 %129, %34
  br i1 %130, label %131, label %35, !llvm.loop !302

131:                                              ; preds = %124, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @init_subset_sps_list(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = sext i32 %1 to i64
  %4 = mul nsw i64 %3, 4664
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %4, i1 false)
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %14, %8 ]
  %10 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 %9, i32 0, i32 8
  store i32 -1, ptr %10, align 8, !tbaa !303
  %11 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 %9, i32 2
  store i32 -1, ptr %11, align 4, !tbaa !184
  %12 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 %9, i32 12
  store i32 -1, ptr %12, align 8, !tbaa !271
  %13 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 %9, i32 21
  store i32 -1, ptr %13, align 8, !tbaa !304
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !305

16:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local void @reset_subset_sps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %302, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !184
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %218

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 8
  store i32 -1, ptr %8, align 8, !tbaa !303
  %9 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !255
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @free(ptr noundef %10) #17
  store ptr null, ptr %9, align 8, !tbaa !255
  br label %13

13:                                               ; preds = %12, %7
  %14 = load i32, ptr %4, align 4, !tbaa !184
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  br label %19

19:                                               ; preds = %16, %36
  %20 = phi i64 [ 0, %16 ], [ %37, %36 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !258
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  tail call void @free(ptr noundef %23) #17
  %26 = load ptr, ptr %17, align 8, !tbaa !258
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  store ptr null, ptr %27, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %25, %19
  %29 = load ptr, ptr %18, align 8, !tbaa !259
  %30 = getelementptr inbounds ptr, ptr %29, i64 %20
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  tail call void @free(ptr noundef %31) #17
  %34 = load ptr, ptr %18, align 8, !tbaa !259
  %35 = getelementptr inbounds ptr, ptr %34, i64 %20
  store ptr null, ptr %35, align 8, !tbaa !46
  br label %36

36:                                               ; preds = %28, %33
  %37 = add nuw nsw i64 %20, 1
  %38 = load i32, ptr %4, align 4, !tbaa !184
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %20, %39
  br i1 %40, label %19, label %41, !llvm.loop !306

41:                                               ; preds = %36, %13
  %42 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !258
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef %43) #17
  store ptr null, ptr %42, align 8, !tbaa !258
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !259
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @free(ptr noundef %48) #17
  store ptr null, ptr %47, align 8, !tbaa !259
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !256
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @free(ptr noundef %53) #17
  store ptr null, ptr %52, align 8, !tbaa !256
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !257
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @free(ptr noundef %58) #17
  store ptr null, ptr %57, align 8, !tbaa !257
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, ptr %4, align 4, !tbaa !184
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 9
  %66 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 11
  br label %67

67:                                               ; preds = %64, %84
  %68 = phi i64 [ 0, %64 ], [ %85, %84 ]
  %69 = load ptr, ptr %65, align 8, !tbaa !262
  %70 = getelementptr inbounds ptr, ptr %69, i64 %68
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  tail call void @free(ptr noundef %71) #17
  %74 = load ptr, ptr %65, align 8, !tbaa !262
  %75 = getelementptr inbounds ptr, ptr %74, i64 %68
  store ptr null, ptr %75, align 8, !tbaa !46
  br label %76

76:                                               ; preds = %73, %67
  %77 = load ptr, ptr %66, align 8, !tbaa !263
  %78 = getelementptr inbounds ptr, ptr %77, i64 %68
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  tail call void @free(ptr noundef %79) #17
  %82 = load ptr, ptr %66, align 8, !tbaa !263
  %83 = getelementptr inbounds ptr, ptr %82, i64 %68
  store ptr null, ptr %83, align 8, !tbaa !46
  br label %84

84:                                               ; preds = %76, %81
  %85 = add nuw nsw i64 %68, 1
  %86 = load i32, ptr %4, align 4, !tbaa !184
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %68, %87
  br i1 %88, label %67, label %89, !llvm.loop !307

89:                                               ; preds = %84, %61
  %90 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !262
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @free(ptr noundef %91) #17
  store ptr null, ptr %90, align 8, !tbaa !262
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 11
  %96 = load ptr, ptr %95, align 8, !tbaa !263
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @free(ptr noundef %96) #17
  store ptr null, ptr %95, align 8, !tbaa !263
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !260
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @free(ptr noundef %101) #17
  store ptr null, ptr %100, align 8, !tbaa !260
  br label %104

104:                                              ; preds = %103, %99
  %105 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !261
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @free(ptr noundef %106) #17
  store ptr null, ptr %105, align 8, !tbaa !261
  br label %109

109:                                              ; preds = %108, %104
  %110 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 12
  %111 = load i32, ptr %110, align 8, !tbaa !271
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %217

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 13
  %115 = load ptr, ptr %114, align 8, !tbaa !272
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void @free(ptr noundef %115) #17
  store ptr null, ptr %114, align 8, !tbaa !272
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i32, ptr %110, align 8, !tbaa !271
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %191, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 14
  %123 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 17
  %124 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 17
  %125 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 15
  %126 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 16
  %127 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 18
  br label %128

128:                                              ; preds = %121, %186
  %129 = phi i64 [ 0, %121 ], [ %187, %186 ]
  %130 = load ptr, ptr %122, align 8, !tbaa !273
  %131 = getelementptr inbounds i32, ptr %130, i64 %129
  %132 = load i32, ptr %131, align 4, !tbaa !37
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %154, label %134

134:                                              ; preds = %128, %147
  %135 = phi i64 [ %148, %147 ], [ 0, %128 ]
  %136 = load ptr, ptr %123, align 8, !tbaa !276
  %137 = getelementptr inbounds ptr, ptr %136, i64 %129
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = getelementptr inbounds ptr, ptr %138, i64 %135
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  %141 = icmp eq ptr %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %134
  tail call void @free(ptr noundef %140) #17
  %143 = load ptr, ptr %123, align 8, !tbaa !276
  %144 = getelementptr inbounds ptr, ptr %143, i64 %129
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = getelementptr inbounds ptr, ptr %145, i64 %135
  store ptr null, ptr %146, align 8, !tbaa !46
  br label %147

147:                                              ; preds = %134, %142
  %148 = add nuw nsw i64 %135, 1
  %149 = load ptr, ptr %122, align 8, !tbaa !273
  %150 = getelementptr inbounds i32, ptr %149, i64 %129
  %151 = load i32, ptr %150, align 4, !tbaa !37
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %135, %152
  br i1 %153, label %134, label %154, !llvm.loop !308

154:                                              ; preds = %147, %128
  %155 = load ptr, ptr %124, align 8, !tbaa !276
  %156 = getelementptr inbounds ptr, ptr %155, i64 %129
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  tail call void @free(ptr noundef %157) #17
  %160 = load ptr, ptr %124, align 8, !tbaa !276
  %161 = getelementptr inbounds ptr, ptr %160, i64 %129
  store ptr null, ptr %161, align 8, !tbaa !46
  br label %162

162:                                              ; preds = %159, %154
  %163 = load ptr, ptr %125, align 8, !tbaa !274
  %164 = getelementptr inbounds ptr, ptr %163, i64 %129
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  tail call void @free(ptr noundef %165) #17
  %168 = load ptr, ptr %125, align 8, !tbaa !274
  %169 = getelementptr inbounds ptr, ptr %168, i64 %129
  store ptr null, ptr %169, align 8, !tbaa !46
  br label %170

170:                                              ; preds = %167, %162
  %171 = load ptr, ptr %126, align 8, !tbaa !275
  %172 = getelementptr inbounds ptr, ptr %171, i64 %129
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  tail call void @free(ptr noundef %173) #17
  %176 = load ptr, ptr %126, align 8, !tbaa !275
  %177 = getelementptr inbounds ptr, ptr %176, i64 %129
  store ptr null, ptr %177, align 8, !tbaa !46
  br label %178

178:                                              ; preds = %175, %170
  %179 = load ptr, ptr %127, align 8, !tbaa !277
  %180 = getelementptr inbounds ptr, ptr %179, i64 %129
  %181 = load ptr, ptr %180, align 8, !tbaa !46
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  tail call void @free(ptr noundef %181) #17
  %184 = load ptr, ptr %127, align 8, !tbaa !277
  %185 = getelementptr inbounds ptr, ptr %184, i64 %129
  store ptr null, ptr %185, align 8, !tbaa !46
  br label %186

186:                                              ; preds = %178, %183
  %187 = add nuw nsw i64 %129, 1
  %188 = load i32, ptr %110, align 8, !tbaa !271
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %129, %189
  br i1 %190, label %128, label %191, !llvm.loop !309

191:                                              ; preds = %186, %118
  %192 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 17
  %193 = load ptr, ptr %192, align 8, !tbaa !276
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  tail call void @free(ptr noundef %193) #17
  store ptr null, ptr %192, align 8, !tbaa !276
  br label %196

196:                                              ; preds = %195, %191
  %197 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 15
  %198 = load ptr, ptr %197, align 8, !tbaa !274
  %199 = icmp eq ptr %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  tail call void @free(ptr noundef %198) #17
  store ptr null, ptr %197, align 8, !tbaa !274
  br label %201

201:                                              ; preds = %200, %196
  %202 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 16
  %203 = load ptr, ptr %202, align 8, !tbaa !275
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  tail call void @free(ptr noundef %203) #17
  store ptr null, ptr %202, align 8, !tbaa !275
  br label %206

206:                                              ; preds = %205, %201
  %207 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 18
  %208 = load ptr, ptr %207, align 8, !tbaa !277
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  tail call void @free(ptr noundef %208) #17
  store ptr null, ptr %207, align 8, !tbaa !277
  br label %211

211:                                              ; preds = %210, %206
  %212 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 14
  %213 = load ptr, ptr %212, align 8, !tbaa !273
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  tail call void @free(ptr noundef %213) #17
  store ptr null, ptr %212, align 8, !tbaa !273
  br label %216

216:                                              ; preds = %215, %211
  store i32 -1, ptr %110, align 8, !tbaa !271
  br label %217

217:                                              ; preds = %216, %109
  store i32 -1, ptr %4, align 4, !tbaa !184
  br label %218

218:                                              ; preds = %3, %217
  %219 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 19
  %220 = load i32, ptr %219, align 8, !tbaa !187
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %302, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21
  %224 = load i32, ptr %223, align 8, !tbaa !289
  %225 = icmp sgt i32 %224, -1
  br i1 %225, label %226, label %301

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !291
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  tail call void @free(ptr noundef %228) #17
  store ptr null, ptr %227, align 8, !tbaa !291
  br label %231

231:                                              ; preds = %230, %226
  %232 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !292
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  tail call void @free(ptr noundef %233) #17
  store ptr null, ptr %232, align 8, !tbaa !292
  br label %236

236:                                              ; preds = %235, %231
  %237 = load i32, ptr %223, align 8, !tbaa !289
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %255, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 3
  br label %241

241:                                              ; preds = %239, %250
  %242 = phi i64 [ 0, %239 ], [ %251, %250 ]
  %243 = load ptr, ptr %240, align 8, !tbaa !290
  %244 = getelementptr inbounds ptr, ptr %243, i64 %242
  %245 = load ptr, ptr %244, align 8, !tbaa !46
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %241
  tail call void @free(ptr noundef %245) #17
  %248 = load ptr, ptr %240, align 8, !tbaa !290
  %249 = getelementptr inbounds ptr, ptr %248, i64 %242
  store ptr null, ptr %249, align 8, !tbaa !46
  br label %250

250:                                              ; preds = %241, %247
  %251 = add nuw nsw i64 %242, 1
  %252 = load i32, ptr %223, align 8, !tbaa !289
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %242, %253
  br i1 %254, label %241, label %255, !llvm.loop !310

255:                                              ; preds = %250, %236
  %256 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !290
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  tail call void @free(ptr noundef %257) #17
  store ptr null, ptr %256, align 8, !tbaa !290
  br label %260

260:                                              ; preds = %259, %255
  %261 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 4
  %262 = load ptr, ptr %261, align 8, !tbaa !294
  %263 = icmp eq ptr %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  tail call void @free(ptr noundef %262) #17
  store ptr null, ptr %261, align 8, !tbaa !294
  br label %265

265:                                              ; preds = %264, %260
  %266 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 5
  %267 = load ptr, ptr %266, align 8, !tbaa !295
  %268 = icmp eq ptr %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %265
  tail call void @free(ptr noundef %267) #17
  store ptr null, ptr %266, align 8, !tbaa !295
  br label %270

270:                                              ; preds = %269, %265
  %271 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 6
  %272 = load ptr, ptr %271, align 8, !tbaa !296
  %273 = icmp eq ptr %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %270
  tail call void @free(ptr noundef %272) #17
  store ptr null, ptr %271, align 8, !tbaa !296
  br label %275

275:                                              ; preds = %274, %270
  %276 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 7
  %277 = load ptr, ptr %276, align 8, !tbaa !297
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  tail call void @free(ptr noundef %277) #17
  store ptr null, ptr %276, align 8, !tbaa !297
  br label %280

280:                                              ; preds = %279, %275
  %281 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 8
  %282 = load ptr, ptr %281, align 8, !tbaa !298
  %283 = icmp eq ptr %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  tail call void @free(ptr noundef %282) #17
  store ptr null, ptr %281, align 8, !tbaa !298
  br label %285

285:                                              ; preds = %284, %280
  %286 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 9
  %287 = load ptr, ptr %286, align 8, !tbaa !299
  %288 = icmp eq ptr %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %285
  tail call void @free(ptr noundef %287) #17
  store ptr null, ptr %286, align 8, !tbaa !299
  br label %290

290:                                              ; preds = %289, %285
  %291 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 10
  %292 = load ptr, ptr %291, align 8, !tbaa !300
  %293 = icmp eq ptr %292, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  tail call void @free(ptr noundef %292) #17
  store ptr null, ptr %291, align 8, !tbaa !300
  br label %295

295:                                              ; preds = %294, %290
  %296 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21, i32 11
  %297 = load ptr, ptr %296, align 8, !tbaa !301
  %298 = icmp eq ptr %297, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  tail call void @free(ptr noundef %297) #17
  store ptr null, ptr %296, align 8, !tbaa !301
  br label %300

300:                                              ; preds = %299, %295
  store i32 -1, ptr %223, align 8, !tbaa !289
  br label %301

301:                                              ; preds = %300, %222
  store i32 0, ptr %219, align 8, !tbaa !187
  br label %302

302:                                              ; preds = %1, %301, %218
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetBaseViewId(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #14 {
  store ptr null, ptr %1, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 6
  %4 = getelementptr i8, ptr %0, i64 848672
  br label %5

5:                                                ; preds = %2, %19
  %6 = phi i1 [ true, %2 ], [ %22, %19 ]
  %7 = phi i32 [ 0, %2 ], [ %21, %19 ]
  %8 = phi ptr [ %3, %2 ], [ %20, %19 ]
  %9 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !184
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load i32, ptr %8, align 8, !tbaa !189
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !255
  %18 = load i32, ptr %17, align 4, !tbaa !37
  br label %24

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %8, i64 1
  %21 = add nuw nsw i32 %7, 1
  %22 = icmp ult i32 %7, 31
  %23 = icmp eq i32 %21, 32
  br i1 %23, label %24, label %5, !llvm.loop !311

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %8, %15 ], [ %4, %19 ]
  %26 = phi i1 [ %6, %15 ], [ %22, %19 ]
  %27 = phi i32 [ %18, %15 ], [ 0, %19 ]
  br i1 %26, label %28, label %29

28:                                               ; preds = %24
  store ptr %25, ptr %1, align 8, !tbaa !46
  br label %29

29:                                               ; preds = %28, %24
  ret i32 %27
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }

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
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !35, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !44, i64 0}
!43 = !{!"datapartition", !44, i64 0, !45, i64 8, !44, i64 40}
!44 = !{!"any pointer", !35, i64 0}
!45 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !44, i64 16, !44, i64 24}
!46 = !{!44, !44, i64 0}
!47 = !{!48, !38, i64 24}
!48 = !{!"decoder_params", !44, i64 0, !44, i64 8, !49, i64 16, !38, i64 24, !44, i64 32, !38, i64 40}
!49 = !{!"long", !35, i64 0}
!50 = !{!51, !38, i64 4}
!51 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !35, i64 44, !35, i64 92, !35, i64 476, !35, i64 2012, !35, i64 2036, !38, i64 2060, !38, i64 2064, !38, i64 2068, !38, i64 2072, !38, i64 2076, !38, i64 2080, !38, i64 2084, !38, i64 2088, !38, i64 2092, !35, i64 2096, !38, i64 3120, !38, i64 3124, !38, i64 3128, !38, i64 3132, !38, i64 3136, !38, i64 3140, !38, i64 3144, !38, i64 3148, !38, i64 3152, !38, i64 3156, !38, i64 3160, !38, i64 3164, !38, i64 3168, !52, i64 3172, !38, i64 4120, !38, i64 4124}
!52 = !{!"", !38, i64 0, !38, i64 4, !53, i64 8, !53, i64 10, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !54, i64 80, !38, i64 492, !54, i64 496, !38, i64 908, !38, i64 912, !38, i64 916, !38, i64 920, !38, i64 924, !38, i64 928, !38, i64 932, !38, i64 936, !38, i64 940, !38, i64 944}
!53 = !{!"short", !35, i64 0}
!54 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !35, i64 12, !35, i64 140, !35, i64 268, !38, i64 396, !38, i64 400, !38, i64 404, !38, i64 408}
!55 = !{!51, !38, i64 8}
!56 = !{!51, !38, i64 12}
!57 = !{!51, !38, i64 16}
!58 = !{!51, !38, i64 20}
!59 = !{!51, !38, i64 24}
!60 = !{!51, !38, i64 28}
!61 = !{!51, !38, i64 32}
!62 = !{!51, !38, i64 36}
!63 = !{!51, !38, i64 2060}
!64 = !{!51, !38, i64 2064}
!65 = !{!66, !38, i64 849092}
!66 = !{!"video_par", !44, i64 0, !44, i64 8, !44, i64 16, !35, i64 24, !35, i64 132120, !44, i64 699416, !35, i64 699424, !38, i64 848672, !38, i64 848676, !38, i64 848680, !38, i64 848684, !44, i64 848688, !44, i64 848696, !44, i64 848704, !38, i64 848712, !38, i64 848716, !38, i64 848720, !38, i64 848724, !38, i64 848728, !44, i64 848736, !44, i64 848744, !35, i64 848752, !38, i64 848776, !38, i64 848780, !38, i64 848784, !38, i64 848788, !38, i64 848792, !44, i64 848800, !35, i64 848808, !44, i64 848832, !44, i64 848840, !35, i64 848848, !38, i64 848872, !38, i64 848876, !44, i64 848880, !44, i64 848888, !35, i64 848896, !38, i64 848920, !44, i64 848928, !44, i64 848936, !38, i64 848944, !38, i64 848948, !38, i64 848952, !38, i64 848956, !38, i64 848960, !38, i64 848964, !38, i64 848968, !38, i64 848972, !38, i64 848976, !38, i64 848980, !38, i64 848984, !38, i64 848988, !38, i64 848992, !38, i64 848996, !38, i64 849000, !38, i64 849004, !38, i64 849008, !38, i64 849012, !38, i64 849016, !38, i64 849020, !38, i64 849024, !38, i64 849028, !38, i64 849032, !38, i64 849036, !53, i64 849040, !53, i64 849042, !35, i64 849044, !38, i64 849052, !38, i64 849056, !35, i64 849060, !35, i64 849072, !38, i64 849084, !38, i64 849088, !38, i64 849092, !38, i64 849096, !38, i64 849100, !38, i64 849104, !38, i64 849108, !38, i64 849112, !38, i64 849116, !38, i64 849120, !35, i64 849124, !35, i64 849148, !35, i64 849172, !38, i64 849196, !38, i64 849200, !38, i64 849204, !38, i64 849208, !38, i64 849212, !38, i64 849216, !38, i64 849220, !38, i64 849224, !38, i64 849228, !38, i64 849232, !38, i64 849236, !38, i64 849240, !38, i64 849244, !38, i64 849248, !38, i64 849252, !38, i64 849256, !38, i64 849260, !38, i64 849264, !38, i64 849268, !38, i64 849272, !38, i64 849276, !38, i64 849280, !38, i64 849284, !44, i64 849288, !44, i64 849296, !67, i64 849304, !67, i64 849624, !67, i64 849944, !67, i64 850264, !67, i64 850584, !67, i64 850904, !67, i64 851224, !67, i64 851544, !38, i64 851864, !38, i64 851868, !38, i64 851872, !49, i64 851880, !38, i64 851888, !35, i64 851892, !38, i64 855988, !38, i64 855992, !38, i64 855996, !38, i64 856000, !38, i64 856004, !38, i64 856008, !38, i64 856012, !44, i64 856016, !44, i64 856024, !44, i64 856032, !44, i64 856040, !44, i64 856048, !35, i64 856056, !44, i64 856456, !35, i64 856464, !44, i64 856488, !44, i64 856496, !44, i64 856504, !38, i64 856512, !44, i64 856520, !35, i64 856528, !44, i64 856608, !44, i64 856616, !44, i64 856624, !44, i64 856632, !38, i64 856640, !38, i64 856644, !38, i64 856648, !44, i64 856656, !44, i64 856664, !35, i64 856672, !35, i64 856688, !44, i64 856704, !44, i64 856712, !38, i64 856720, !44, i64 856728, !44, i64 856736, !44, i64 856744, !44, i64 856752, !44, i64 856760, !44, i64 856768, !44, i64 856776, !44, i64 856784, !44, i64 856792, !44, i64 856800, !44, i64 856808, !44, i64 856816, !38, i64 856824, !44, i64 856832, !38, i64 856840, !38, i64 856844, !38, i64 856848, !38, i64 856852, !38, i64 856856, !38, i64 856860, !38, i64 856864, !44, i64 856872}
!67 = !{!"image_data", !68, i64 0, !35, i64 136, !35, i64 160, !35, i64 184, !35, i64 208, !35, i64 232, !35, i64 256, !35, i64 280, !35, i64 292, !35, i64 304}
!68 = !{!"frame_format", !38, i64 0, !38, i64 4, !69, i64 8, !35, i64 16, !35, i64 28, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !35, i64 72, !38, i64 84, !35, i64 88, !35, i64 100, !35, i64 112, !38, i64 124, !38, i64 128}
!69 = !{!"double", !35, i64 0}
!70 = !{!51, !38, i64 4120}
!71 = !{!51, !38, i64 40}
!72 = distinct !{!72, !40, !41}
!73 = !{!51, !38, i64 2068}
!74 = !{!51, !38, i64 2072}
!75 = !{!51, !38, i64 2076}
!76 = !{!51, !38, i64 2080}
!77 = !{!51, !38, i64 2084}
!78 = !{!51, !38, i64 2088}
!79 = !{!51, !38, i64 2092}
!80 = distinct !{!80, !40, !41}
!81 = !{!51, !38, i64 3120}
!82 = !{!51, !38, i64 3124}
!83 = !{!51, !38, i64 3128}
!84 = !{!51, !38, i64 3132}
!85 = !{!51, !38, i64 3136}
!86 = !{!51, !38, i64 3140}
!87 = !{!51, !38, i64 3144}
!88 = !{!51, !38, i64 3148}
!89 = !{!51, !38, i64 3152}
!90 = !{!51, !38, i64 3156}
!91 = !{!51, !38, i64 3160}
!92 = !{!51, !38, i64 3164}
!93 = !{!51, !38, i64 3168}
!94 = !{!51, !38, i64 3216}
!95 = !{!51, !38, i64 0}
!96 = !{!51, !38, i64 3172}
!97 = !{!51, !38, i64 3176}
!98 = !{!51, !53, i64 3180}
!99 = !{!51, !53, i64 3182}
!100 = !{!51, !38, i64 3184}
!101 = !{!51, !38, i64 3188}
!102 = !{!51, !38, i64 3192}
!103 = !{!51, !38, i64 3196}
!104 = !{!51, !38, i64 3200}
!105 = !{!51, !38, i64 3204}
!106 = !{!51, !38, i64 3208}
!107 = !{!51, !38, i64 3212}
!108 = !{!51, !38, i64 3220}
!109 = !{!51, !38, i64 3224}
!110 = !{!51, !38, i64 3228}
!111 = !{!51, !38, i64 3232}
!112 = !{!51, !38, i64 3236}
!113 = !{!51, !38, i64 3240}
!114 = !{!51, !38, i64 3244}
!115 = !{!51, !38, i64 3248}
!116 = !{!51, !38, i64 3664}
!117 = !{!51, !38, i64 4080}
!118 = !{!51, !38, i64 4084}
!119 = !{!51, !38, i64 4088}
!120 = !{!51, !38, i64 4092}
!121 = !{!51, !38, i64 4096}
!122 = !{!51, !38, i64 4100}
!123 = !{!51, !38, i64 4108}
!124 = !{!51, !38, i64 4104}
!125 = !{!51, !38, i64 4112}
!126 = !{!51, !38, i64 4116}
!127 = !{!54, !38, i64 0}
!128 = !{!54, !38, i64 4}
!129 = !{!54, !38, i64 8}
!130 = distinct !{!130, !40, !41}
!131 = !{!54, !38, i64 396}
!132 = !{!54, !38, i64 400}
!133 = !{!54, !38, i64 404}
!134 = !{!54, !38, i64 408}
!135 = !{!136, !38, i64 4}
!136 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !35, i64 24, !35, i64 72, !35, i64 456, !35, i64 1992, !35, i64 2016, !38, i64 2040, !38, i64 2044, !38, i64 2048, !35, i64 2052, !35, i64 2084, !35, i64 2116, !38, i64 2148, !38, i64 2152, !38, i64 2156, !44, i64 2160, !38, i64 2168, !38, i64 2172, !38, i64 2176, !38, i64 2180, !38, i64 2184, !38, i64 2188, !38, i64 2192, !38, i64 2196, !38, i64 2200, !38, i64 2204, !38, i64 2208}
!137 = !{!136, !38, i64 8}
!138 = !{!136, !38, i64 12}
!139 = !{!136, !38, i64 2040}
!140 = !{!136, !38, i64 2044}
!141 = !{!136, !38, i64 2048}
!142 = distinct !{!142, !40, !41}
!143 = distinct !{!143, !40, !41}
!144 = !{!136, !38, i64 2148}
!145 = !{!136, !38, i64 2152}
!146 = !{!136, !38, i64 2156}
!147 = !{!136, !44, i64 2160}
!148 = distinct !{!148, !40, !41}
!149 = !{!136, !38, i64 2168}
!150 = !{!136, !38, i64 2172}
!151 = !{!136, !38, i64 2176}
!152 = !{!136, !38, i64 2180}
!153 = !{!136, !38, i64 2184}
!154 = !{!136, !38, i64 2188}
!155 = !{!136, !38, i64 2192}
!156 = !{!136, !38, i64 2200}
!157 = !{!136, !38, i64 2204}
!158 = !{!136, !38, i64 2208}
!159 = !{!160, !44, i64 16}
!160 = !{!"bit_stream", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !44, i64 16, !38, i64 24}
!161 = !{!160, !38, i64 8}
!162 = !{!160, !38, i64 12}
!163 = !{!136, !38, i64 16}
!164 = !{!136, !38, i64 20}
!165 = distinct !{!165, !40, !41}
!166 = !{!136, !38, i64 2196}
!167 = !{!136, !38, i64 0}
!168 = distinct !{!168, !40, !41}
!169 = !{!170, !44, i64 24}
!170 = !{!"nalu_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !44, i64 24, !53, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64}
!171 = !{!170, !38, i64 4}
!172 = !{!160, !38, i64 4}
!173 = !{!160, !38, i64 24}
!174 = !{!160, !38, i64 0}
!175 = !{!66, !44, i64 16}
!176 = !{!66, !44, i64 856456}
!177 = !{!66, !38, i64 849084}
!178 = !{!66, !38, i64 849280}
!179 = !{!66, !38, i64 848920}
!180 = !{!51, !38, i64 4124}
!181 = !{!182, !38, i64 4268}
!182 = !{!"", !51, i64 0, !38, i64 4128, !38, i64 4132, !44, i64 4136, !44, i64 4144, !44, i64 4152, !44, i64 4160, !44, i64 4168, !44, i64 4176, !44, i64 4184, !44, i64 4192, !44, i64 4200, !38, i64 4208, !44, i64 4216, !44, i64 4224, !44, i64 4232, !44, i64 4240, !44, i64 4248, !44, i64 4256, !38, i64 4264, !38, i64 4268, !183, i64 4272}
!183 = !{!"mvcvui_tag", !38, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !35, i64 96, !35, i64 97, !35, i64 98, !35, i64 100, !35, i64 228, !35, i64 356, !35, i64 388, !35, i64 389, !35, i64 390, !35, i64 391}
!184 = !{!182, !38, i64 4132}
!185 = !{!182, !38, i64 4}
!186 = !{!182, !38, i64 4128}
!187 = !{!182, !38, i64 4264}
!188 = distinct !{!188, !40, !41}
!189 = !{!182, !38, i64 0}
!190 = !{!182, !38, i64 4120}
!191 = !{!182, !38, i64 36}
!192 = !{!66, !44, i64 8}
!193 = !{!66, !44, i64 856872}
!194 = !{!66, !44, i64 0}
!195 = !{!66, !38, i64 848780}
!196 = !{!66, !38, i64 848784}
!197 = !{!198, !38, i64 780}
!198 = !{!"inp_par", !35, i64 0, !35, i64 255, !35, i64 510, !38, i64 768, !38, i64 772, !38, i64 776, !38, i64 780, !38, i64 784, !38, i64 788, !68, i64 792, !68, i64 928, !38, i64 1064, !38, i64 1068, !199, i64 1072, !199, i64 2040, !199, i64 3008, !38, i64 3976, !38, i64 3980, !38, i64 3984, !38, i64 3988, !38, i64 3992, !38, i64 3996, !38, i64 4000, !38, i64 4004, !38, i64 4008, !38, i64 4012}
!199 = !{!"video_data_file", !35, i64 0, !35, i64 255, !35, i64 510, !38, i64 768, !38, i64 772, !68, i64 776, !38, i64 912, !38, i64 916, !38, i64 920, !38, i64 924, !38, i64 928, !38, i64 932, !38, i64 936, !38, i64 940, !38, i64 944, !38, i64 948, !38, i64 952, !44, i64 960}
!200 = !{!66, !38, i64 848788}
!201 = !{!66, !38, i64 848792}
!202 = !{!68, !38, i64 84}
!203 = !{!68, !38, i64 64}
!204 = !{!68, !38, i64 68}
!205 = !{!66, !53, i64 849040}
!206 = !{!66, !53, i64 849042}
!207 = !{!68, !38, i64 124}
!208 = !{!68, !38, i64 128}
!209 = !{!68, !69, i64 8}
!210 = !{!68, !38, i64 4}
!211 = !{!68, !38, i64 0}
!212 = !{!68, !38, i64 44}
!213 = !{!68, !38, i64 40}
!214 = !{!66, !38, i64 849112}
!215 = !{!68, !38, i64 52}
!216 = !{!66, !38, i64 849108}
!217 = !{!68, !38, i64 48}
!218 = !{!66, !38, i64 849216}
!219 = !{!66, !38, i64 848992}
!220 = !{!66, !38, i64 848996}
!221 = !{!66, !38, i64 849000}
!222 = !{!66, !38, i64 849004}
!223 = !{!66, !38, i64 849016}
!224 = !{!66, !38, i64 849088}
!225 = !{!66, !38, i64 856852}
!226 = !{!66, !38, i64 856840}
!227 = !{!66, !38, i64 856848}
!228 = !{!66, !38, i64 856844}
!229 = !{!66, !38, i64 848672}
!230 = !{!66, !38, i64 848676}
!231 = !{!66, !38, i64 848680}
!232 = !{!66, !38, i64 848684}
!233 = !{!66, !38, i64 849024}
!234 = !{!66, !44, i64 856656}
!235 = !{!236, !38, i64 4160}
!236 = !{!"decoded_picture_buffer", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !35, i64 64, !38, i64 4160, !38, i64 4164, !44, i64 4168}
!237 = !{!236, !38, i64 4164}
!238 = !{!66, !44, i64 856504}
!239 = !{!66, !38, i64 849012}
!240 = !{!241, !38, i64 64}
!241 = !{!"storable_picture", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !35, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !53, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !38, i64 96, !38, i64 100, !38, i64 104, !38, i64 108, !38, i64 112, !38, i64 116, !38, i64 120, !38, i64 124, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !35, i64 160, !242, i64 184, !35, i64 192, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !38, i64 248, !38, i64 252, !38, i64 256, !38, i64 260, !38, i64 264, !38, i64 268, !38, i64 272, !38, i64 276, !38, i64 280, !38, i64 284, !38, i64 288, !38, i64 292, !38, i64 296, !35, i64 300, !38, i64 308, !44, i64 312, !38, i64 320, !38, i64 324, !38, i64 328, !38, i64 332, !44, i64 336, !38, i64 344, !38, i64 348, !38, i64 352, !38, i64 356, !38, i64 360, !38, i64 364, !38, i64 368, !44, i64 376, !38, i64 384, !38, i64 388, !35, i64 392, !35, i64 400}
!242 = !{!"pic_motion_params_old", !44, i64 0}
!243 = !{!66, !38, i64 856512}
!244 = !{!245, !44, i64 0}
!245 = !{!"slice", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !38, i64 32, !44, i64 40, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !35, i64 88, !38, i64 96, !38, i64 100, !38, i64 104, !38, i64 108, !38, i64 112, !53, i64 116, !38, i64 120, !38, i64 124, !38, i64 128, !38, i64 132, !35, i64 136, !38, i64 144, !38, i64 148, !38, i64 152, !38, i64 156, !38, i64 160, !38, i64 164, !38, i64 168, !38, i64 172, !38, i64 176, !35, i64 180, !38, i64 184, !38, i64 188, !38, i64 192, !38, i64 196, !38, i64 200, !38, i64 204, !38, i64 208, !38, i64 212, !38, i64 216, !38, i64 220, !38, i64 224, !38, i64 228, !38, i64 232, !38, i64 236, !38, i64 240, !38, i64 244, !44, i64 248, !35, i64 256, !35, i64 264, !44, i64 312, !44, i64 320, !44, i64 328, !35, i64 336, !35, i64 1104, !35, i64 1112, !35, i64 1128, !35, i64 1144, !35, i64 1160, !38, i64 1176, !38, i64 1180, !38, i64 1184, !246, i64 1188, !53, i64 1220, !53, i64 1222, !53, i64 1224, !38, i64 1228, !38, i64 1232, !38, i64 1236, !38, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !35, i64 1288, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !35, i64 1392, !35, i64 2544, !35, i64 3696, !35, i64 8304, !35, i64 12912, !35, i64 13008, !38, i64 13264, !38, i64 13268, !53, i64 13272, !53, i64 13274, !53, i64 13276, !53, i64 13278, !44, i64 13280, !44, i64 13288, !44, i64 13296, !53, i64 13304, !53, i64 13306, !38, i64 13308, !38, i64 13312, !44, i64 13320, !44, i64 13328, !38, i64 13336, !35, i64 13340, !44, i64 13408, !44, i64 13416, !44, i64 13424, !44, i64 13432, !44, i64 13440, !44, i64 13448, !44, i64 13456, !44, i64 13464, !44, i64 13472, !44, i64 13480, !44, i64 13488, !44, i64 13496, !38, i64 13504, !44, i64 13512, !44, i64 13520, !44, i64 13528, !44, i64 13536, !44, i64 13544, !35, i64 13552}
!246 = !{!"nalunitheadermvcext_tag", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28}
!247 = !{!245, !38, i64 1228}
!248 = !{!245, !38, i64 32}
!249 = !{!66, !44, i64 699416}
!250 = !{!245, !44, i64 13432}
!251 = !{!245, !44, i64 312}
!252 = !{!43, !44, i64 40}
!253 = distinct !{!253, !40, !41}
!254 = distinct !{!254, !40, !41}
!255 = !{!182, !44, i64 4136}
!256 = !{!182, !44, i64 4144}
!257 = !{!182, !44, i64 4160}
!258 = !{!182, !44, i64 4152}
!259 = !{!182, !44, i64 4168}
!260 = !{!182, !44, i64 4176}
!261 = !{!182, !44, i64 4192}
!262 = !{!182, !44, i64 4184}
!263 = !{!182, !44, i64 4200}
!264 = distinct !{!264, !40, !41}
!265 = distinct !{!265, !40, !41}
!266 = distinct !{!266, !40, !41}
!267 = distinct !{!267, !40, !41}
!268 = distinct !{!268, !40, !41}
!269 = distinct !{!269, !40, !41}
!270 = distinct !{!270, !40, !41}
!271 = !{!182, !38, i64 4208}
!272 = !{!182, !44, i64 4216}
!273 = !{!182, !44, i64 4224}
!274 = !{!182, !44, i64 4232}
!275 = !{!182, !44, i64 4240}
!276 = !{!182, !44, i64 4248}
!277 = !{!182, !44, i64 4256}
!278 = distinct !{!278, !40, !41}
!279 = distinct !{!279, !40, !41}
!280 = distinct !{!280, !40, !41}
!281 = !{!183, !35, i64 96}
!282 = !{!183, !35, i64 97}
!283 = !{!183, !35, i64 98}
!284 = distinct !{!284, !40, !41}
!285 = !{!183, !35, i64 388}
!286 = !{!183, !35, i64 389}
!287 = !{!183, !35, i64 390}
!288 = !{!183, !35, i64 391}
!289 = !{!183, !38, i64 0}
!290 = !{!183, !44, i64 24}
!291 = !{!183, !44, i64 8}
!292 = !{!183, !44, i64 16}
!293 = distinct !{!293, !40, !41}
!294 = !{!183, !44, i64 32}
!295 = !{!183, !44, i64 40}
!296 = !{!183, !44, i64 48}
!297 = !{!183, !44, i64 56}
!298 = !{!183, !44, i64 64}
!299 = !{!183, !44, i64 72}
!300 = !{!183, !44, i64 80}
!301 = !{!183, !44, i64 88}
!302 = distinct !{!302, !40, !41}
!303 = !{!182, !38, i64 32}
!304 = !{!182, !38, i64 4272}
!305 = distinct !{!305, !40, !41}
!306 = distinct !{!306, !40, !41}
!307 = distinct !{!307, !40, !41}
!308 = distinct !{!308, !40, !41}
!309 = distinct !{!309, !40, !41}
!310 = distinct !{!310, !40, !41}
!311 = distinct !{!311, !40, !41}

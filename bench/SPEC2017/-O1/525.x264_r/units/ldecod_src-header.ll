; ModuleID = 'ldecod_src/header.c'
source_filename = "ldecod_src/header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
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

@assignSE2partition = internal unnamed_addr constant [2 x [20 x i8]] [[20 x i8] zeroinitializer, [20 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\00\02\02\02\02\00\00\00\00"], align 16
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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
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
  br i1 %9, label %10, label %4, !llvm.loop !34

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local i32 @FirstPartOfSliceHeader(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %5
  %7 = load i8, ptr %6, align 4, !tbaa !47
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = zext i8 %7 to i64
  %11 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.bit_stream, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = load ptr, ptr @p_Dec, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.decoder_params, ptr %15, i64 0, i32 3
  store i32 %14, ptr %16, align 8, !tbaa !55
  %17 = tail call i32 @ue_v(ptr noundef nonnull @.str, ptr noundef %12) #10
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  store i32 %17, ptr %18, align 4, !tbaa !58
  %19 = tail call i32 @ue_v(ptr noundef nonnull @.str.1, ptr noundef %12) #10
  %20 = icmp sgt i32 %19, 4
  %21 = add nsw i32 %19, -5
  %22 = select i1 %20, i32 %21, i32 %19
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  store i32 %22, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  store i32 %22, ptr %24, align 8, !tbaa !60
  %25 = tail call i32 @ue_v(ptr noundef nonnull @.str.2, ptr noundef %12) #10
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 73
  store i32 %25, ptr %26, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 105
  %28 = load i32, ptr %27, align 8, !tbaa !66
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = tail call i32 @u_v(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %12) #10
  br label %32

32:                                               ; preds = %1, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %1 ]
  %34 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  store i32 %33, ptr %34, align 8, !tbaa !67
  %35 = load ptr, ptr @p_Dec, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.decoder_params, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !55
  ret i32 %37
}

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @RestOfSliceHeader(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %9
  %11 = load i8, ptr %10, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds %struct.datapartition, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = add i32 %18, 4
  %20 = tail call i32 @u_v(i32 noundef %19, ptr noundef nonnull @.str.4, ptr noundef %16) #10
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  store i32 %20, ptr %21, align 4, !tbaa !74
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 40
  store i32 %20, ptr %26, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 92
  store i32 0, ptr %27, align 4, !tbaa !77
  br label %28

28:                                               ; preds = %25, %1
  %29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 30
  %30 = load i32, ptr %29, align 4, !tbaa !78
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 0, ptr %33, align 4, !tbaa !79
  %34 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  store i32 0, ptr %34, align 8, !tbaa !80
  br label %49

35:                                               ; preds = %28
  %36 = tail call i32 @u_1(ptr noundef nonnull @.str.5, ptr noundef %16) #10
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  store i32 %36, ptr %37, align 8, !tbaa !80
  %38 = icmp eq i32 %36, 0
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  br i1 %38, label %47, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @u_1(ptr noundef nonnull @.str.6, ptr noundef %16) #10
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %39, align 4, !tbaa !81
  %43 = and i32 %41, 255
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 1, i32 2
  %46 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 %45, ptr %46, align 4, !tbaa !79
  br label %49

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  store i32 0, ptr %48, align 4, !tbaa !79
  store i8 0, ptr %39, align 4, !tbaa !81
  br label %49

49:                                               ; preds = %40, %47, %32
  %50 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  %51 = load i32, ptr %50, align 4, !tbaa !79
  %52 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  store i32 %51, ptr %52, align 8, !tbaa !82
  %53 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 31
  %54 = load i32, ptr %53, align 4, !tbaa !83
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %58 = load i32, ptr %57, align 8, !tbaa !80
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ false, %49 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  store i32 %62, ptr %63, align 8, !tbaa !84
  %64 = load i32, ptr %22, align 8, !tbaa !75
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = tail call i32 @ue_v(ptr noundef nonnull @.str.7, ptr noundef %16) #10
  %68 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 7
  store i32 %67, ptr %68, align 4, !tbaa !85
  br label %69

69:                                               ; preds = %66, %60
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 19
  %71 = load i32, ptr %70, align 4, !tbaa !86
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 20
  %75 = load i32, ptr %74, align 4, !tbaa !87
  %76 = add i32 %75, 4
  %77 = tail call i32 @u_v(i32 noundef %76, ptr noundef nonnull @.str.8, ptr noundef %16) #10
  %78 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 14
  store i32 %77, ptr %78, align 8, !tbaa !88
  %79 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !89
  %81 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %80, i64 0, i32 11
  %82 = load i32, ptr %81, align 8, !tbaa !90
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %86 = load i32, ptr %85, align 8, !tbaa !80
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = tail call i32 @se_v(ptr noundef nonnull @.str.9, ptr noundef %16) #10
  br label %90

90:                                               ; preds = %73, %84, %88
  %91 = phi i32 [ %89, %88 ], [ 0, %84 ], [ 0, %73 ]
  %92 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 15
  store i32 %91, ptr %92, align 4, !tbaa !92
  br label %93

93:                                               ; preds = %90, %69
  %94 = load i32, ptr %70, align 4, !tbaa !86
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 21
  %98 = load i32, ptr %97, align 4, !tbaa !93
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = tail call i32 @se_v(ptr noundef nonnull @.str.10, ptr noundef %16) #10
  %102 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  store i32 %101, ptr %102, align 8, !tbaa !94
  %103 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !89
  %105 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %104, i64 0, i32 11
  %106 = load i32, ptr %105, align 8, !tbaa !90
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %110 = load i32, ptr %109, align 8, !tbaa !80
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = tail call i32 @se_v(ptr noundef nonnull @.str.11, ptr noundef %16) #10
  br label %116

114:                                              ; preds = %96
  %115 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  store i32 0, ptr %115, align 8, !tbaa !94
  br label %116

116:                                              ; preds = %100, %108, %112, %114
  %117 = phi i32 [ 0, %114 ], [ %113, %112 ], [ 0, %108 ], [ 0, %100 ]
  %118 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16, i64 1
  store i32 %117, ptr %118, align 4, !tbaa !94
  br label %119

119:                                              ; preds = %116, %93
  %120 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !89
  %122 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %121, i64 0, i32 31
  %123 = load i32, ptr %122, align 8, !tbaa !95
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef %16) #10
  %127 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  store i32 %126, ptr %127, align 4, !tbaa !96
  br label %128

128:                                              ; preds = %125, %119
  %129 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %130 = load i32, ptr %129, align 4, !tbaa !59
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = tail call i32 @u_1(ptr noundef nonnull @.str.13, ptr noundef %16) #10
  %134 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 26
  store i32 %133, ptr %134, align 4, !tbaa !97
  br label %135

135:                                              ; preds = %132, %128
  %136 = load ptr, ptr %120, align 8, !tbaa !89
  %137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %136, i64 0, i32 21
  %138 = load i32, ptr %137, align 8, !tbaa !98
  %139 = add nsw i32 %138, 1
  %140 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  store i32 %139, ptr %140, align 8, !tbaa !94
  %141 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %136, i64 0, i32 22
  %142 = load i32, ptr %141, align 4, !tbaa !99
  %143 = add nsw i32 %142, 1
  %144 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  store i32 %143, ptr %144, align 4, !tbaa !94
  %145 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %146 = load i32, ptr %145, align 8, !tbaa !60
  switch i32 %146, label %158 [
    i32 0, label %147
    i32 3, label %147
    i32 1, label %147
  ]

147:                                              ; preds = %135, %135, %135
  %148 = tail call i32 @u_1(ptr noundef nonnull @.str.14, ptr noundef %16) #10
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = tail call i32 @ue_v(ptr noundef nonnull @.str.15, ptr noundef %16) #10
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %140, align 8, !tbaa !94
  %153 = load i32, ptr %145, align 8, !tbaa !60
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef %16) #10
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %144, align 4, !tbaa !94
  br label %158

158:                                              ; preds = %135, %147, %155, %150
  %159 = load i32, ptr %129, align 4, !tbaa !59
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  store i32 0, ptr %144, align 4, !tbaa !94
  br label %162

162:                                              ; preds = %161, %158
  %163 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %164 = load i32, ptr %163, align 8, !tbaa !100
  %165 = icmp ult i32 %164, 2
  %166 = load ptr, ptr %0, align 8, !tbaa !38
  %167 = load i32, ptr %7, align 8, !tbaa !46
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %168
  %170 = load i8, ptr %169, align 4, !tbaa !47
  %171 = load ptr, ptr %12, align 8, !tbaa !48
  %172 = zext i8 %170 to i64
  %173 = getelementptr inbounds %struct.datapartition, ptr %171, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !49
  tail call void @alloc_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #10
  %175 = getelementptr inbounds %struct.video_par, ptr %166, i64 0, i32 22
  %176 = load i32, ptr %175, align 8, !tbaa !60
  br i1 %165, label %177, label %248

177:                                              ; preds = %162
  %178 = srem i32 %176, 5
  switch i32 %178, label %179 [
    i32 2, label %208
    i32 4, label %208
  ]

179:                                              ; preds = %177
  %180 = tail call i32 @u_1(ptr noundef nonnull @.str.66, ptr noundef %174) #10
  %181 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  store i32 %180, ptr %181, align 8, !tbaa !94
  %182 = icmp eq i32 %180, 0
  br i1 %182, label %208, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %185 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65
  %186 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %187 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  br label %188

188:                                              ; preds = %183, %205
  %189 = phi i64 [ 0, %183 ], [ %206, %205 ]
  %190 = tail call i32 @ue_v(ptr noundef nonnull @.str.67, ptr noundef %174) #10
  %191 = load ptr, ptr %184, align 8, !tbaa !54
  %192 = getelementptr inbounds i32, ptr %191, i64 %189
  store i32 %190, ptr %192, align 4, !tbaa !94
  %193 = icmp ult i32 %190, 2
  br i1 %193, label %199, label %194

194:                                              ; preds = %188
  %195 = icmp eq i32 %190, 2
  br i1 %195, label %199, label %196

196:                                              ; preds = %194
  %197 = and i32 %190, -2
  %198 = icmp eq i32 %197, 4
  br i1 %198, label %199, label %205

199:                                              ; preds = %196, %194, %188
  %200 = phi ptr [ @.str.60, %188 ], [ @.str.61, %194 ], [ @.str.68, %196 ]
  %201 = phi ptr [ %187, %188 ], [ %186, %194 ], [ %185, %196 ]
  %202 = tail call i32 @ue_v(ptr noundef nonnull %200, ptr noundef %174) #10
  %203 = load ptr, ptr %201, align 8, !tbaa !54
  %204 = getelementptr inbounds i32, ptr %203, i64 %189
  store i32 %202, ptr %204, align 4, !tbaa !94
  br label %205

205:                                              ; preds = %199, %196
  %206 = add nuw i64 %189, 1
  %207 = icmp eq i32 %190, 3
  br i1 %207, label %208, label %188, !llvm.loop !101

208:                                              ; preds = %205, %179, %177, %177
  %209 = load i32, ptr %175, align 8, !tbaa !60
  %210 = srem i32 %209, 5
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %241

212:                                              ; preds = %208
  %213 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %174) #10
  %214 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  store i32 %213, ptr %214, align 4, !tbaa !94
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %241, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %218 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 1
  %219 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %220 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  br label %221

221:                                              ; preds = %216, %238
  %222 = phi i64 [ 0, %216 ], [ %239, %238 ]
  %223 = tail call i32 @ue_v(ptr noundef nonnull @.str.69, ptr noundef %174) #10
  %224 = load ptr, ptr %217, align 8, !tbaa !54
  %225 = getelementptr inbounds i32, ptr %224, i64 %222
  store i32 %223, ptr %225, align 4, !tbaa !94
  %226 = icmp ult i32 %223, 2
  br i1 %226, label %232, label %227

227:                                              ; preds = %221
  %228 = icmp eq i32 %223, 2
  br i1 %228, label %232, label %229

229:                                              ; preds = %227
  %230 = and i32 %223, -2
  %231 = icmp eq i32 %230, 4
  br i1 %231, label %232, label %238

232:                                              ; preds = %229, %227, %221
  %233 = phi ptr [ @.str.64, %221 ], [ @.str.65, %227 ], [ @.str.70, %229 ]
  %234 = phi ptr [ %220, %221 ], [ %219, %227 ], [ %218, %229 ]
  %235 = tail call i32 @ue_v(ptr noundef nonnull %233, ptr noundef %174) #10
  %236 = load ptr, ptr %234, align 8, !tbaa !54
  %237 = getelementptr inbounds i32, ptr %236, i64 %222
  store i32 %235, ptr %237, align 4, !tbaa !94
  br label %238

238:                                              ; preds = %232, %229
  %239 = add nuw i64 %222, 1
  %240 = icmp eq i32 %223, 3
  br i1 %240, label %241, label %221, !llvm.loop !102

241:                                              ; preds = %238, %212, %208
  %242 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %243 = load i32, ptr %242, align 4, !tbaa !96
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %315, label %245

245:                                              ; preds = %241
  %246 = load i32, ptr %175, align 8, !tbaa !60
  %247 = icmp eq i32 %246, 2
  br i1 %247, label %315, label %309

248:                                              ; preds = %162
  switch i32 %176, label %249 [
    i32 2, label %274
    i32 4, label %274
  ]

249:                                              ; preds = %248
  %250 = tail call i32 @u_1(ptr noundef nonnull @.str.58, ptr noundef %174) #10
  %251 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  store i32 %250, ptr %251, align 8, !tbaa !94
  %252 = icmp eq i32 %250, 0
  br i1 %252, label %274, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62
  %255 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64
  %256 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  br label %257

257:                                              ; preds = %253, %271
  %258 = phi i64 [ 0, %253 ], [ %272, %271 ]
  %259 = tail call i32 @ue_v(ptr noundef nonnull @.str.59, ptr noundef %174) #10
  %260 = load ptr, ptr %254, align 8, !tbaa !54
  %261 = getelementptr inbounds i32, ptr %260, i64 %258
  store i32 %259, ptr %261, align 4, !tbaa !94
  %262 = icmp ult i32 %259, 2
  br i1 %262, label %265, label %263

263:                                              ; preds = %257
  %264 = icmp eq i32 %259, 2
  br i1 %264, label %265, label %271

265:                                              ; preds = %263, %257
  %266 = phi ptr [ @.str.60, %257 ], [ @.str.61, %263 ]
  %267 = phi ptr [ %256, %257 ], [ %255, %263 ]
  %268 = tail call i32 @ue_v(ptr noundef nonnull %266, ptr noundef %174) #10
  %269 = load ptr, ptr %267, align 8, !tbaa !54
  %270 = getelementptr inbounds i32, ptr %269, i64 %258
  store i32 %268, ptr %270, align 4, !tbaa !94
  br label %271

271:                                              ; preds = %265, %263
  %272 = add nuw i64 %258, 1
  %273 = icmp eq i32 %259, 3
  br i1 %273, label %274, label %257, !llvm.loop !103

274:                                              ; preds = %271, %249, %248, %248
  %275 = load i32, ptr %175, align 8, !tbaa !60
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %302

277:                                              ; preds = %274
  %278 = tail call i32 @u_1(ptr noundef nonnull @.str.62, ptr noundef %174) #10
  %279 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  store i32 %278, ptr %279, align 4, !tbaa !94
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %302, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 1
  %283 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 1
  %284 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 1
  br label %285

285:                                              ; preds = %281, %299
  %286 = phi i64 [ 0, %281 ], [ %300, %299 ]
  %287 = tail call i32 @ue_v(ptr noundef nonnull @.str.63, ptr noundef %174) #10
  %288 = load ptr, ptr %282, align 8, !tbaa !54
  %289 = getelementptr inbounds i32, ptr %288, i64 %286
  store i32 %287, ptr %289, align 4, !tbaa !94
  %290 = icmp ult i32 %287, 2
  br i1 %290, label %293, label %291

291:                                              ; preds = %285
  %292 = icmp eq i32 %287, 2
  br i1 %292, label %293, label %299

293:                                              ; preds = %291, %285
  %294 = phi ptr [ @.str.64, %285 ], [ @.str.65, %291 ]
  %295 = phi ptr [ %284, %285 ], [ %283, %291 ]
  %296 = tail call i32 @ue_v(ptr noundef nonnull %294, ptr noundef %174) #10
  %297 = load ptr, ptr %295, align 8, !tbaa !54
  %298 = getelementptr inbounds i32, ptr %297, i64 %286
  store i32 %296, ptr %298, align 4, !tbaa !94
  br label %299

299:                                              ; preds = %293, %291
  %300 = add nuw i64 %286, 1
  %301 = icmp eq i32 %287, 3
  br i1 %301, label %302, label %285, !llvm.loop !104

302:                                              ; preds = %299, %277, %274
  %303 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %304 = load i32, ptr %303, align 4, !tbaa !96
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %302
  %307 = load i32, ptr %175, align 8, !tbaa !60
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %315, label %309

309:                                              ; preds = %306, %245
  %310 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63
  %311 = load ptr, ptr %310, align 8, !tbaa !54
  %312 = load i32, ptr %311, align 4, !tbaa !94
  %313 = add nsw i32 %312, 1
  %314 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 50
  store i32 %313, ptr %314, align 8, !tbaa !105
  br label %315

315:                                              ; preds = %309, %306, %302, %245, %241
  %316 = load i32, ptr %129, align 4, !tbaa !59
  switch i32 %316, label %326 [
    i32 0, label %317
    i32 3, label %317
    i32 1, label %321
  ]

317:                                              ; preds = %315, %315
  %318 = load ptr, ptr %120, align 8, !tbaa !89
  %319 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %318, i64 0, i32 23
  %320 = load i32, ptr %319, align 8, !tbaa !106
  br label %329

321:                                              ; preds = %315
  %322 = load ptr, ptr %120, align 8, !tbaa !89
  %323 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %322, i64 0, i32 24
  %324 = load i32, ptr %323, align 4, !tbaa !107
  %325 = icmp eq i32 %324, 1
  br label %326

326:                                              ; preds = %315, %321
  %327 = phi i1 [ %325, %321 ], [ false, %315 ]
  %328 = zext i1 %327 to i32
  br label %329

329:                                              ; preds = %326, %317
  %330 = phi i32 [ %320, %317 ], [ %328, %326 ]
  %331 = trunc i32 %330 to i16
  %332 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 96
  store i16 %331, ptr %332, align 8, !tbaa !108
  %333 = icmp eq i32 %316, 1
  br i1 %333, label %334, label %339

334:                                              ; preds = %329
  %335 = load ptr, ptr %120, align 8, !tbaa !89
  %336 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %335, i64 0, i32 24
  %337 = load i32, ptr %336, align 4, !tbaa !107
  %338 = icmp ne i32 %337, 0
  br label %339

339:                                              ; preds = %334, %329
  %340 = phi i1 [ false, %329 ], [ %338, %334 ]
  %341 = zext i1 %340 to i16
  %342 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 97
  store i16 %341, ptr %342, align 2, !tbaa !109
  %343 = load ptr, ptr %120, align 8, !tbaa !89
  %344 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %343, i64 0, i32 23
  %345 = load i32, ptr %344, align 8, !tbaa !106
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %339
  %348 = load i32, ptr %145, align 8, !tbaa !60
  switch i32 %348, label %349 [
    i32 0, label %356
    i32 3, label %356
  ]

349:                                              ; preds = %347, %339
  %350 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %343, i64 0, i32 24
  %351 = load i32, ptr %350, align 4, !tbaa !107
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %623

353:                                              ; preds = %349
  %354 = load i32, ptr %145, align 8, !tbaa !60
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %356, label %623

356:                                              ; preds = %347, %347, %353
  %357 = load ptr, ptr %0, align 8, !tbaa !38
  %358 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !69
  %360 = load i32, ptr %7, align 8, !tbaa !46
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %361
  %363 = load i8, ptr %362, align 4, !tbaa !47
  %364 = load ptr, ptr %12, align 8, !tbaa !48
  %365 = zext i8 %363 to i64
  %366 = getelementptr inbounds %struct.datapartition, ptr %364, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !49
  %368 = tail call i32 @ue_v(ptr noundef nonnull @.str.71, ptr noundef %367) #10
  %369 = trunc i32 %368 to i16
  %370 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  store i16 %369, ptr %370, align 4, !tbaa !110
  %371 = and i32 %368, 65535
  %372 = icmp eq i32 %371, 0
  %373 = add nsw i32 %371, -1
  %374 = shl nuw i32 1, %373
  %375 = trunc i32 %374 to i16
  %376 = select i1 %372, i16 0, i16 %375
  %377 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 103
  store i16 %376, ptr %377, align 8, !tbaa !111
  %378 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %359, i64 0, i32 9
  %379 = load i32, ptr %378, align 4, !tbaa !112
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %392, label %381

381:                                              ; preds = %356
  %382 = tail call i32 @ue_v(ptr noundef nonnull @.str.72, ptr noundef %367) #10
  %383 = trunc i32 %382 to i16
  %384 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  store i16 %383, ptr %384, align 2, !tbaa !113
  %385 = and i32 %382, 65535
  %386 = icmp eq i32 %385, 0
  %387 = add nsw i32 %385, -1
  %388 = shl nuw i32 1, %387
  %389 = trunc i32 %388 to i16
  %390 = select i1 %386, i16 0, i16 %389
  %391 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 104
  store i16 %390, ptr %391, align 2, !tbaa !114
  br label %392

392:                                              ; preds = %381, %356
  %393 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  %394 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %395 = load ptr, ptr %394, align 8, !tbaa !115
  %396 = load ptr, ptr %395, align 8, !tbaa !54
  %397 = getelementptr inbounds ptr, ptr %395, i64 1
  %398 = load ptr, ptr %397, align 8, !tbaa !54
  br label %399

399:                                              ; preds = %392, %431
  %400 = phi i64 [ 0, %392 ], [ %432, %431 ]
  %401 = getelementptr inbounds ptr, ptr %396, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !54
  %403 = getelementptr inbounds ptr, ptr %398, i64 %400
  %404 = load ptr, ptr %403, align 8, !tbaa !54
  br label %420

405:                                              ; preds = %431
  %406 = load i32, ptr %140, align 8, !tbaa !94
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %512

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %410 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %411 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 64
  %412 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %413 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %414 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %415 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %416 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 65
  %417 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  %418 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %419 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  br label %434

420:                                              ; preds = %399, %420
  %421 = phi i64 [ 0, %399 ], [ %429, %420 ]
  %422 = icmp eq i64 %421, 0
  %423 = select i1 %422, ptr %370, ptr %393
  %424 = load i16, ptr %423, align 2, !tbaa !116
  %425 = zext nneg i16 %424 to i32
  %426 = shl nuw i32 1, %425
  %427 = getelementptr inbounds i32, ptr %402, i64 %421
  store i32 %426, ptr %427, align 4, !tbaa !94
  %428 = getelementptr inbounds i32, ptr %404, i64 %421
  store i32 %426, ptr %428, align 4, !tbaa !94
  %429 = add nuw nsw i64 %421, 1
  %430 = icmp eq i64 %429, 3
  br i1 %430, label %431, label %420, !llvm.loop !117

431:                                              ; preds = %420
  %432 = add nuw nsw i64 %400, 1
  %433 = icmp eq i64 %432, 32
  br i1 %433, label %405, label %399, !llvm.loop !118

434:                                              ; preds = %408, %507
  %435 = phi i64 [ 0, %408 ], [ %508, %507 ]
  %436 = tail call i32 @u_1(ptr noundef nonnull @.str.73, ptr noundef %367) #10
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %453, label %438

438:                                              ; preds = %434
  %439 = tail call i32 @se_v(ptr noundef nonnull @.str.74, ptr noundef %367) #10
  %440 = load ptr, ptr %409, align 8, !tbaa !115
  %441 = load ptr, ptr %440, align 8, !tbaa !54
  %442 = getelementptr inbounds ptr, ptr %441, i64 %435
  %443 = load ptr, ptr %442, align 8, !tbaa !54
  store i32 %439, ptr %443, align 4, !tbaa !94
  %444 = tail call i32 @se_v(ptr noundef nonnull @.str.75, ptr noundef %367) #10
  %445 = load ptr, ptr %410, align 8, !tbaa !119
  %446 = load ptr, ptr %445, align 8, !tbaa !54
  %447 = getelementptr inbounds ptr, ptr %446, i64 %435
  %448 = load ptr, ptr %447, align 8, !tbaa !54
  store i32 %444, ptr %448, align 4, !tbaa !94
  %449 = load i16, ptr %411, align 8, !tbaa !120
  %450 = sext i16 %449 to i32
  %451 = add nsw i32 %450, -8
  %452 = shl i32 %444, %451
  store i32 %452, ptr %448, align 4, !tbaa !94
  br label %465

453:                                              ; preds = %434
  %454 = load i16, ptr %370, align 4, !tbaa !110
  %455 = zext nneg i16 %454 to i32
  %456 = shl nuw i32 1, %455
  %457 = load ptr, ptr %412, align 8, !tbaa !115
  %458 = load ptr, ptr %457, align 8, !tbaa !54
  %459 = getelementptr inbounds ptr, ptr %458, i64 %435
  %460 = load ptr, ptr %459, align 8, !tbaa !54
  store i32 %456, ptr %460, align 4, !tbaa !94
  %461 = load ptr, ptr %413, align 8, !tbaa !119
  %462 = load ptr, ptr %461, align 8, !tbaa !54
  %463 = getelementptr inbounds ptr, ptr %462, i64 %435
  %464 = load ptr, ptr %463, align 8, !tbaa !54
  store i32 0, ptr %464, align 4, !tbaa !94
  br label %465

465:                                              ; preds = %453, %438
  %466 = load i32, ptr %378, align 4, !tbaa !112
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %507, label %468

468:                                              ; preds = %465
  %469 = tail call i32 @u_1(ptr noundef nonnull @.str.76, ptr noundef %367) #10
  %470 = icmp eq i32 %469, 0
  br label %471

471:                                              ; preds = %468, %504
  %472 = phi i64 [ 1, %468 ], [ %505, %504 ]
  br i1 %470, label %490, label %473

473:                                              ; preds = %471
  %474 = tail call i32 @se_v(ptr noundef nonnull @.str.77, ptr noundef %367) #10
  %475 = load ptr, ptr %414, align 8, !tbaa !115
  %476 = load ptr, ptr %475, align 8, !tbaa !54
  %477 = getelementptr inbounds ptr, ptr %476, i64 %435
  %478 = load ptr, ptr %477, align 8, !tbaa !54
  %479 = getelementptr inbounds i32, ptr %478, i64 %472
  store i32 %474, ptr %479, align 4, !tbaa !94
  %480 = tail call i32 @se_v(ptr noundef nonnull @.str.78, ptr noundef %367) #10
  %481 = load ptr, ptr %415, align 8, !tbaa !119
  %482 = load ptr, ptr %481, align 8, !tbaa !54
  %483 = getelementptr inbounds ptr, ptr %482, i64 %435
  %484 = load ptr, ptr %483, align 8, !tbaa !54
  %485 = getelementptr inbounds i32, ptr %484, i64 %472
  store i32 %480, ptr %485, align 4, !tbaa !94
  %486 = load i16, ptr %416, align 2, !tbaa !121
  %487 = sext i16 %486 to i32
  %488 = add nsw i32 %487, -8
  %489 = shl i32 %480, %488
  store i32 %489, ptr %485, align 4, !tbaa !94
  br label %504

490:                                              ; preds = %471
  %491 = load i16, ptr %417, align 2, !tbaa !113
  %492 = zext nneg i16 %491 to i32
  %493 = shl nuw i32 1, %492
  %494 = load ptr, ptr %418, align 8, !tbaa !115
  %495 = load ptr, ptr %494, align 8, !tbaa !54
  %496 = getelementptr inbounds ptr, ptr %495, i64 %435
  %497 = load ptr, ptr %496, align 8, !tbaa !54
  %498 = getelementptr inbounds i32, ptr %497, i64 %472
  store i32 %493, ptr %498, align 4, !tbaa !94
  %499 = load ptr, ptr %419, align 8, !tbaa !119
  %500 = load ptr, ptr %499, align 8, !tbaa !54
  %501 = getelementptr inbounds ptr, ptr %500, i64 %435
  %502 = load ptr, ptr %501, align 8, !tbaa !54
  %503 = getelementptr inbounds i32, ptr %502, i64 %472
  store i32 0, ptr %503, align 4, !tbaa !94
  br label %504

504:                                              ; preds = %490, %473
  %505 = add nuw nsw i64 %472, 1
  %506 = icmp eq i64 %505, 3
  br i1 %506, label %507, label %471, !llvm.loop !122

507:                                              ; preds = %504, %465
  %508 = add nuw nsw i64 %435, 1
  %509 = load i32, ptr %140, align 8, !tbaa !94
  %510 = sext i32 %509 to i64
  %511 = icmp slt i64 %508, %510
  br i1 %511, label %434, label %512, !llvm.loop !123

512:                                              ; preds = %507, %405
  %513 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 22
  %514 = load i32, ptr %513, align 8, !tbaa !60
  %515 = icmp eq i32 %514, 1
  br i1 %515, label %516, label %623

516:                                              ; preds = %512
  %517 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !89
  %519 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %518, i64 0, i32 24
  %520 = load i32, ptr %519, align 4, !tbaa !107
  %521 = icmp eq i32 %520, 1
  br i1 %521, label %522, label %623

522:                                              ; preds = %516
  %523 = load i32, ptr %144, align 4, !tbaa !94
  %524 = icmp sgt i32 %523, 0
  br i1 %524, label %525, label %623

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %527 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %528 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 64
  %529 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %530 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %531 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %532 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %533 = getelementptr inbounds %struct.video_par, ptr %357, i64 0, i32 65
  %534 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  %535 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %536 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  br label %537

537:                                              ; preds = %525, %618
  %538 = phi i64 [ 0, %525 ], [ %619, %618 ]
  %539 = tail call i32 @u_1(ptr noundef nonnull @.str.79, ptr noundef %367) #10
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %558, label %541

541:                                              ; preds = %537
  %542 = tail call i32 @se_v(ptr noundef nonnull @.str.80, ptr noundef %367) #10
  %543 = load ptr, ptr %526, align 8, !tbaa !115
  %544 = getelementptr inbounds ptr, ptr %543, i64 1
  %545 = load ptr, ptr %544, align 8, !tbaa !54
  %546 = getelementptr inbounds ptr, ptr %545, i64 %538
  %547 = load ptr, ptr %546, align 8, !tbaa !54
  store i32 %542, ptr %547, align 4, !tbaa !94
  %548 = tail call i32 @se_v(ptr noundef nonnull @.str.81, ptr noundef %367) #10
  %549 = load ptr, ptr %527, align 8, !tbaa !119
  %550 = getelementptr inbounds ptr, ptr %549, i64 1
  %551 = load ptr, ptr %550, align 8, !tbaa !54
  %552 = getelementptr inbounds ptr, ptr %551, i64 %538
  %553 = load ptr, ptr %552, align 8, !tbaa !54
  store i32 %548, ptr %553, align 4, !tbaa !94
  %554 = load i16, ptr %528, align 8, !tbaa !120
  %555 = sext i16 %554 to i32
  %556 = add nsw i32 %555, -8
  %557 = shl i32 %548, %556
  store i32 %557, ptr %553, align 4, !tbaa !94
  br label %572

558:                                              ; preds = %537
  %559 = load i16, ptr %370, align 4, !tbaa !110
  %560 = zext nneg i16 %559 to i32
  %561 = shl nuw i32 1, %560
  %562 = load ptr, ptr %529, align 8, !tbaa !115
  %563 = getelementptr inbounds ptr, ptr %562, i64 1
  %564 = load ptr, ptr %563, align 8, !tbaa !54
  %565 = getelementptr inbounds ptr, ptr %564, i64 %538
  %566 = load ptr, ptr %565, align 8, !tbaa !54
  store i32 %561, ptr %566, align 4, !tbaa !94
  %567 = load ptr, ptr %530, align 8, !tbaa !119
  %568 = getelementptr inbounds ptr, ptr %567, i64 1
  %569 = load ptr, ptr %568, align 8, !tbaa !54
  %570 = getelementptr inbounds ptr, ptr %569, i64 %538
  %571 = load ptr, ptr %570, align 8, !tbaa !54
  store i32 0, ptr %571, align 4, !tbaa !94
  br label %572

572:                                              ; preds = %558, %541
  %573 = load i32, ptr %378, align 4, !tbaa !112
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %618, label %575

575:                                              ; preds = %572
  %576 = tail call i32 @u_1(ptr noundef nonnull @.str.82, ptr noundef %367) #10
  %577 = icmp eq i32 %576, 0
  br label %578

578:                                              ; preds = %575, %615
  %579 = phi i64 [ 1, %575 ], [ %616, %615 ]
  br i1 %577, label %599, label %580

580:                                              ; preds = %578
  %581 = tail call i32 @se_v(ptr noundef nonnull @.str.83, ptr noundef %367) #10
  %582 = load ptr, ptr %531, align 8, !tbaa !115
  %583 = getelementptr inbounds ptr, ptr %582, i64 1
  %584 = load ptr, ptr %583, align 8, !tbaa !54
  %585 = getelementptr inbounds ptr, ptr %584, i64 %538
  %586 = load ptr, ptr %585, align 8, !tbaa !54
  %587 = getelementptr inbounds i32, ptr %586, i64 %579
  store i32 %581, ptr %587, align 4, !tbaa !94
  %588 = tail call i32 @se_v(ptr noundef nonnull @.str.84, ptr noundef %367) #10
  %589 = load ptr, ptr %532, align 8, !tbaa !119
  %590 = getelementptr inbounds ptr, ptr %589, i64 1
  %591 = load ptr, ptr %590, align 8, !tbaa !54
  %592 = getelementptr inbounds ptr, ptr %591, i64 %538
  %593 = load ptr, ptr %592, align 8, !tbaa !54
  %594 = getelementptr inbounds i32, ptr %593, i64 %579
  store i32 %588, ptr %594, align 4, !tbaa !94
  %595 = load i16, ptr %533, align 2, !tbaa !121
  %596 = sext i16 %595 to i32
  %597 = add nsw i32 %596, -8
  %598 = shl i32 %588, %597
  store i32 %598, ptr %594, align 4, !tbaa !94
  br label %615

599:                                              ; preds = %578
  %600 = load i16, ptr %534, align 2, !tbaa !113
  %601 = zext nneg i16 %600 to i32
  %602 = shl nuw i32 1, %601
  %603 = load ptr, ptr %535, align 8, !tbaa !115
  %604 = getelementptr inbounds ptr, ptr %603, i64 1
  %605 = load ptr, ptr %604, align 8, !tbaa !54
  %606 = getelementptr inbounds ptr, ptr %605, i64 %538
  %607 = load ptr, ptr %606, align 8, !tbaa !54
  %608 = getelementptr inbounds i32, ptr %607, i64 %579
  store i32 %602, ptr %608, align 4, !tbaa !94
  %609 = load ptr, ptr %536, align 8, !tbaa !119
  %610 = getelementptr inbounds ptr, ptr %609, i64 1
  %611 = load ptr, ptr %610, align 8, !tbaa !54
  %612 = getelementptr inbounds ptr, ptr %611, i64 %538
  %613 = load ptr, ptr %612, align 8, !tbaa !54
  %614 = getelementptr inbounds i32, ptr %613, i64 %579
  store i32 0, ptr %614, align 4, !tbaa !94
  br label %615

615:                                              ; preds = %599, %580
  %616 = add nuw nsw i64 %579, 1
  %617 = icmp eq i64 %616, 3
  br i1 %617, label %618, label %578, !llvm.loop !124

618:                                              ; preds = %615, %572
  %619 = add nuw nsw i64 %538, 1
  %620 = load i32, ptr %144, align 4, !tbaa !94
  %621 = sext i32 %620 to i64
  %622 = icmp slt i64 %619, %621
  br i1 %622, label %537, label %623, !llvm.loop !125

623:                                              ; preds = %618, %522, %516, %512, %353, %349
  %624 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %625 = load i32, ptr %624, align 8, !tbaa !126
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %628, label %627

627:                                              ; preds = %623
  tail call void @dec_ref_pic_marking(ptr noundef %2, ptr noundef %16, ptr noundef nonnull %0)
  br label %628

628:                                              ; preds = %627, %623
  %629 = load ptr, ptr %120, align 8, !tbaa !89
  %630 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %629, i64 0, i32 3
  %631 = load i32, ptr %630, align 4, !tbaa !127
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %637, label %633

633:                                              ; preds = %628
  %634 = load i32, ptr %145, align 8, !tbaa !60
  switch i32 %634, label %635 [
    i32 2, label %637
    i32 4, label %637
  ]

635:                                              ; preds = %633
  %636 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef %16) #10
  br label %637

637:                                              ; preds = %628, %633, %633, %635
  %638 = phi i32 [ %636, %635 ], [ 0, %633 ], [ 0, %633 ], [ 0, %628 ]
  %639 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 34
  store i32 %638, ptr %639, align 8, !tbaa !128
  %640 = tail call i32 @se_v(ptr noundef nonnull @.str.18, ptr noundef %16) #10
  %641 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 30
  store i32 %640, ptr %641, align 8, !tbaa !129
  %642 = load ptr, ptr %120, align 8, !tbaa !89
  %643 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %642, i64 0, i32 25
  %644 = load i32, ptr %643, align 8, !tbaa !130
  %645 = add i32 %640, 26
  %646 = add i32 %645, %644
  %647 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 29
  store i32 %646, ptr %647, align 4, !tbaa !131
  %648 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 67
  %649 = load i32, ptr %648, align 4, !tbaa !132
  %650 = sub nsw i32 0, %649
  %651 = icmp slt i32 %646, %650
  %652 = icmp sgt i32 %646, 51
  %653 = or i1 %651, %652
  br i1 %653, label %654, label %655

654:                                              ; preds = %637
  tail call void @error(ptr noundef nonnull @.str.19, i32 noundef 500) #10
  br label %655

655:                                              ; preds = %637, %654
  %656 = load i32, ptr %145, align 8, !tbaa !60
  %657 = add i32 %656, -3
  %658 = icmp ult i32 %657, 2
  br i1 %658, label %659, label %675

659:                                              ; preds = %655
  %660 = icmp eq i32 %656, 3
  br i1 %660, label %661, label %664

661:                                              ; preds = %659
  %662 = tail call i32 @u_1(ptr noundef nonnull @.str.20, ptr noundef %16) #10
  %663 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 48
  store i32 %662, ptr %663, align 8, !tbaa !133
  br label %664

664:                                              ; preds = %661, %659
  %665 = tail call i32 @se_v(ptr noundef nonnull @.str.21, ptr noundef %16) #10
  %666 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 32
  store i32 %665, ptr %666, align 8, !tbaa !134
  %667 = load ptr, ptr %120, align 8, !tbaa !89
  %668 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %667, i64 0, i32 26
  %669 = load i32, ptr %668, align 4, !tbaa !135
  %670 = add i32 %665, 26
  %671 = add i32 %670, %669
  %672 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 31
  store i32 %671, ptr %672, align 4, !tbaa !136
  %673 = icmp ugt i32 %671, 51
  br i1 %673, label %674, label %675

674:                                              ; preds = %664
  tail call void @error(ptr noundef nonnull @.str.22, i32 noundef 500) #10
  br label %675

675:                                              ; preds = %655, %664, %674
  %676 = load ptr, ptr %5, align 8, !tbaa !69
  %677 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %676, i64 0, i32 1
  %678 = load i32, ptr %677, align 4, !tbaa !137
  %679 = icmp ugt i32 %678, 109
  br i1 %679, label %680, label %684

680:                                              ; preds = %675
  %681 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %676, i64 0, i32 5
  %682 = load i32, ptr %681, align 4, !tbaa !138
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %697, label %686

684:                                              ; preds = %675
  %685 = icmp eq i32 %678, 44
  br i1 %685, label %686, label %697

686:                                              ; preds = %684, %680
  br i1 %679, label %687, label %691

687:                                              ; preds = %686
  %688 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %676, i64 0, i32 5
  %689 = load i32, ptr %688, align 4, !tbaa !138
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %724, label %693

691:                                              ; preds = %686
  %692 = icmp eq i32 %678, 44
  br i1 %692, label %693, label %724

693:                                              ; preds = %691, %687
  %694 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 8
  %695 = load i32, ptr %694, align 4, !tbaa !139
  %696 = icmp eq i32 %695, 1
  br i1 %696, label %697, label %724

697:                                              ; preds = %680, %693, %684
  %698 = load ptr, ptr %120, align 8, !tbaa !89
  %699 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %698, i64 0, i32 29
  %700 = load i32, ptr %699, align 8, !tbaa !142
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %720, label %702

702:                                              ; preds = %697
  %703 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %16) #10
  %704 = trunc i32 %703 to i16
  %705 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 %704, ptr %705, align 4, !tbaa !143
  %706 = and i32 %703, 65535
  %707 = icmp eq i32 %706, 1
  br i1 %707, label %717, label %708

708:                                              ; preds = %702
  %709 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %16) #10
  %710 = trunc i32 %709 to i16
  %711 = shl i16 %710, 1
  %712 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 %711, ptr %712, align 2, !tbaa !144
  %713 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %16) #10
  %714 = trunc i32 %713 to i16
  %715 = shl i16 %714, 1
  %716 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 %715, ptr %716, align 8, !tbaa !145
  br label %748

717:                                              ; preds = %702
  %718 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %718, align 8, !tbaa !145
  %719 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %719, align 2, !tbaa !144
  br label %748

720:                                              ; preds = %697
  %721 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %721, align 8, !tbaa !145
  %722 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %722, align 2, !tbaa !144
  %723 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 0, ptr %723, align 4, !tbaa !143
  br label %748

724:                                              ; preds = %687, %693, %691
  %725 = load ptr, ptr %120, align 8, !tbaa !89
  %726 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %725, i64 0, i32 29
  %727 = load i32, ptr %726, align 8, !tbaa !142
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %744, label %729

729:                                              ; preds = %724
  %730 = tail call i32 @ue_v(ptr noundef nonnull @.str.23, ptr noundef %16) #10
  %731 = trunc i32 %730 to i16
  %732 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 %731, ptr %732, align 4, !tbaa !143
  %733 = and i32 %730, 65535
  %734 = icmp eq i32 %733, 1
  br i1 %734, label %744, label %735

735:                                              ; preds = %729
  %736 = tail call i32 @se_v(ptr noundef nonnull @.str.24, ptr noundef %16) #10
  %737 = trunc i32 %736 to i16
  %738 = shl i16 %737, 1
  %739 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 %738, ptr %739, align 2, !tbaa !144
  %740 = tail call i32 @se_v(ptr noundef nonnull @.str.25, ptr noundef %16) #10
  %741 = trunc i32 %740 to i16
  %742 = shl i16 %741, 1
  %743 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 %742, ptr %743, align 8, !tbaa !145
  br label %744

744:                                              ; preds = %729, %735, %724
  %745 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  store i16 1, ptr %745, align 4, !tbaa !143
  %746 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  store i16 0, ptr %746, align 8, !tbaa !145
  %747 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  store i16 0, ptr %747, align 2, !tbaa !144
  br label %748

748:                                              ; preds = %720, %717, %708, %744
  %749 = load ptr, ptr %120, align 8, !tbaa !89
  %750 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %749, i64 0, i32 12
  %751 = load i32, ptr %750, align 4, !tbaa !146
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %785, label %753

753:                                              ; preds = %748
  %754 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %749, i64 0, i32 13
  %755 = load i32, ptr %754, align 8, !tbaa !147
  %756 = add i32 %755, -3
  %757 = icmp ult i32 %756, 3
  br i1 %757, label %758, label %785

758:                                              ; preds = %753
  %759 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 29
  %760 = load i32, ptr %759, align 4, !tbaa !148
  %761 = add i32 %760, 1
  %762 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 28
  %763 = load i32, ptr %762, align 4, !tbaa !149
  %764 = add i32 %763, 1
  %765 = mul i32 %764, %761
  %766 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %749, i64 0, i32 18
  %767 = load i32, ptr %766, align 8, !tbaa !150
  %768 = add i32 %767, 1
  %769 = udiv i32 %765, %768
  %770 = urem i32 %765, %768
  %771 = icmp ne i32 %770, 0
  %772 = zext i1 %771 to i32
  %773 = add nsw i32 %769, %772
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %781, label %775

775:                                              ; preds = %758, %775
  %776 = phi i32 [ %779, %775 ], [ 0, %758 ]
  %777 = phi i32 [ %778, %775 ], [ %773, %758 ]
  %778 = lshr i32 %777, 1
  %779 = add nuw nsw i32 %776, 1
  %780 = icmp ult i32 %777, 2
  br i1 %780, label %781, label %775, !llvm.loop !34

781:                                              ; preds = %775, %758
  %782 = phi i32 [ 0, %758 ], [ %779, %775 ]
  %783 = tail call i32 @u_v(i32 noundef %782, ptr noundef nonnull @.str.26, ptr noundef %16) #10
  %784 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 49
  store i32 %783, ptr %784, align 4, !tbaa !151
  br label %785

785:                                              ; preds = %781, %753, %748
  %786 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 55
  %787 = load i32, ptr %786, align 4, !tbaa !152
  %788 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %789 = load i32, ptr %788, align 8, !tbaa !80
  %790 = add i32 %789, 1
  %791 = udiv i32 %787, %790
  %792 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 56
  store i32 %791, ptr %792, align 8, !tbaa !153
  %793 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 53
  %794 = load i32, ptr %793, align 4, !tbaa !154
  %795 = mul i32 %794, %791
  %796 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 57
  store i32 %795, ptr %796, align 4, !tbaa !155
  %797 = mul i32 %794, %787
  %798 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 58
  store i32 %797, ptr %798, align 8, !tbaa !156
  %799 = load ptr, ptr @p_Dec, align 8, !tbaa !54
  %800 = getelementptr inbounds %struct.decoder_params, ptr %799, i64 0, i32 3
  %801 = load i32, ptr %800, align 8, !tbaa !55
  ret i32 %801
}

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @se_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dec_ref_pic_marking(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  store ptr %10, ptr %4, align 8, !tbaa !157
  tail call void @free(ptr noundef %8) #10
  %11 = load ptr, ptr %4, align 8, !tbaa !157
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !160

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !75
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @u_1(ptr noundef nonnull @.str.27, ptr noundef %1) #10
  %19 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 51
  store i32 %18, ptr %19, align 4, !tbaa !161
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 60
  store i32 %18, ptr %20, align 8, !tbaa !162
  %21 = tail call i32 @u_1(ptr noundef nonnull @.str.28, ptr noundef %1) #10
  %22 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 52
  store i32 %21, ptr %22, align 8, !tbaa !163
  br label %57

23:                                               ; preds = %13
  %24 = tail call i32 @u_1(ptr noundef nonnull @.str.29, ptr noundef %1) #10
  %25 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 53
  store i32 %24, ptr %25, align 4, !tbaa !164
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %23, %54
  %28 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #11
  %29 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !158
  %30 = tail call i32 @ue_v(ptr noundef nonnull @.str.30, ptr noundef %1) #10
  store i32 %30, ptr %28, align 8, !tbaa !165
  switch i32 %30, label %44 [
    i32 3, label %31
    i32 1, label %31
    i32 2, label %34
    i32 6, label %37
    i32 4, label %41
  ]

31:                                               ; preds = %27, %27
  %32 = tail call i32 @ue_v(ptr noundef nonnull @.str.31, ptr noundef %1) #10
  %33 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !166
  switch i32 %30, label %44 [
    i32 2, label %34
    i32 6, label %37
    i32 3, label %37
    i32 4, label %41
  ]

34:                                               ; preds = %27, %31
  %35 = tail call i32 @ue_v(ptr noundef nonnull @.str.32, ptr noundef %1) #10
  %36 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 2
  store i32 %35, ptr %36, align 8, !tbaa !167
  switch i32 %30, label %44 [
    i32 6, label %37
    i32 3, label %37
    i32 4, label %41
  ]

37:                                               ; preds = %27, %31, %31, %34, %34
  %38 = tail call i32 @ue_v(ptr noundef nonnull @.str.33, ptr noundef %1) #10
  %39 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !168
  %40 = icmp eq i32 %30, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %27, %31, %34, %37
  %42 = tail call i32 @ue_v(ptr noundef nonnull @.str.34, ptr noundef %1) #10
  %43 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %28, i64 0, i32 4
  store i32 %42, ptr %43, align 8, !tbaa !169
  br label %44

44:                                               ; preds = %27, %31, %34, %41, %37
  %45 = load ptr, ptr %4, align 8, !tbaa !157
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %50, %47 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !158
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %47, !llvm.loop !170

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %48, i64 0, i32 5
  br label %54

54:                                               ; preds = %44, %52
  %55 = phi ptr [ %53, %52 ], [ %4, %44 ]
  store ptr %28, ptr %55, align 8, !tbaa !54
  %56 = icmp eq i32 %30, 0
  br i1 %56, label %57, label %27, !llvm.loop !171

57:                                               ; preds = %54, %23, %17
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @decode_poc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = add i32 %6, 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !86
  switch i32 %10, label %332 [
    i32 0, label %11
    i32 1, label %109
    i32 2, label %260
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 0, ptr %16, align 8, !tbaa !172
  br label %29

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %19 = load i32, ptr %18, align 4, !tbaa !173
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 62
  %23 = load i32, ptr %22, align 8, !tbaa !174
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 0, ptr %25, align 8, !tbaa !172
  br i1 %24, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %28 = load i32, ptr %27, align 4, !tbaa !175
  br label %29

29:                                               ; preds = %21, %15, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %15 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  store i32 %30, ptr %31, align 4, !tbaa !176
  br label %32

32:                                               ; preds = %29, %17
  %33 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %34 = load i32, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 43
  %36 = load i32, ptr %35, align 4, !tbaa !176
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = sub i32 %36, %34
  %40 = lshr i32 %8, 1
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %44 = load i32, ptr %43, align 8, !tbaa !172
  %45 = add i32 %44, %8
  br label %59

46:                                               ; preds = %38, %32
  %47 = icmp ugt i32 %34, %36
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = sub i32 %34, %36
  %50 = lshr i32 %8, 1
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %54 = load i32, ptr %53, align 8, !tbaa !172
  %55 = sub i32 %54, %8
  br label %59

56:                                               ; preds = %48, %46
  %57 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  %58 = load i32, ptr %57, align 8, !tbaa !172
  br label %59

59:                                               ; preds = %52, %56, %42
  %60 = phi i32 [ %55, %52 ], [ %58, %56 ], [ %45, %42 ]
  %61 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 17
  store i32 %60, ptr %61, align 8, !tbaa !177
  %62 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %63 = load i32, ptr %62, align 8, !tbaa !80
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 17
  %67 = load i32, ptr %66, align 8, !tbaa !177
  %68 = add i32 %67, %34
  %69 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %68, ptr %69, align 4, !tbaa !175
  %70 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 15
  %71 = load i32, ptr %70, align 4, !tbaa !92
  %72 = add nsw i32 %71, %68
  %73 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %72, ptr %73, align 8, !tbaa !178
  %74 = icmp sgt i32 %71, 0
  %75 = select i1 %74, i32 %68, i32 %72
  %76 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %75, ptr %76, align 4, !tbaa !179
  %77 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %75, ptr %77, align 8, !tbaa !180
  br label %90

78:                                               ; preds = %59
  %79 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %80 = load i8, ptr %79, align 4, !tbaa !81
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 17
  %83 = load i32, ptr %82, align 8, !tbaa !177
  %84 = add i32 %83, %34
  %85 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  br i1 %81, label %86, label %88

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %84, ptr %87, align 4, !tbaa !175
  store i32 %84, ptr %85, align 8, !tbaa !180
  br label %90

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %84, ptr %89, align 8, !tbaa !178
  store i32 %84, ptr %85, align 8, !tbaa !180
  br label %90

90:                                               ; preds = %86, %88, %65
  %91 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  %92 = load i32, ptr %91, align 8, !tbaa !180
  %93 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %92, ptr %93, align 4, !tbaa !179
  %94 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 50
  store i32 %92, ptr %94, align 8, !tbaa !181
  %95 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %96 = load i32, ptr %95, align 4, !tbaa !74
  %97 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %98 = load i32, ptr %97, align 4, !tbaa !182
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  store i32 %96, ptr %97, align 4, !tbaa !182
  br label %101

101:                                              ; preds = %100, %90
  %102 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %103 = load i32, ptr %102, align 8, !tbaa !126
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %332, label %105

105:                                              ; preds = %101
  store i32 %34, ptr %35, align 4, !tbaa !176
  %106 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 17
  %107 = load i32, ptr %106, align 8, !tbaa !177
  %108 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 42
  store i32 %107, ptr %108, align 8, !tbaa !172
  br label %332

109:                                              ; preds = %2
  %110 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !75
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 0, ptr %114, align 8, !tbaa !183
  %115 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %116 = load i32, ptr %115, align 4, !tbaa !74
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %141, label %118

118:                                              ; preds = %113
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #10
  br label %141

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %121 = load i32, ptr %120, align 4, !tbaa !173
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 0, ptr %124, align 4, !tbaa !184
  %125 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 0, ptr %125, align 4, !tbaa !182
  br label %126

126:                                              ; preds = %123, %119
  %127 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %128 = load i32, ptr %127, align 4, !tbaa !74
  %129 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %130 = load i32, ptr %129, align 4, !tbaa !182
  %131 = icmp ult i32 %128, %130
  %132 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %133 = load i32, ptr %132, align 4, !tbaa !184
  br i1 %131, label %134, label %139

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %136 = load i32, ptr %135, align 8, !tbaa !185
  %137 = add nsw i32 %136, %133
  %138 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %137, ptr %138, align 8, !tbaa !183
  br label %141

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %133, ptr %140, align 8, !tbaa !183
  br label %141

141:                                              ; preds = %134, %139, %113, %118
  %142 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 24
  %143 = load i32, ptr %142, align 4, !tbaa !186
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %147 = load i32, ptr %146, align 8, !tbaa !183
  %148 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %149 = load i32, ptr %148, align 4, !tbaa !74
  %150 = add i32 %149, %147
  br label %151

151:                                              ; preds = %141, %145
  %152 = phi i32 [ %150, %145 ], [ 0, %141 ]
  %153 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 %152, ptr %153, align 4, !tbaa !187
  %154 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %155 = load i32, ptr %154, align 8, !tbaa !126
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  %159 = load i32, ptr %158, align 4, !tbaa !187
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = add i32 %159, -1
  store i32 %162, ptr %158, align 4, !tbaa !187
  br label %163

163:                                              ; preds = %161, %157, %151
  %164 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 49
  store i32 0, ptr %164, align 4, !tbaa !188
  %165 = icmp sgt i32 %143, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i32, ptr %164, align 4, !tbaa !188
  %168 = zext nneg i32 %143 to i64
  br label %169

169:                                              ; preds = %166, %169
  %170 = phi i64 [ 0, %166 ], [ %175, %169 ]
  %171 = phi i32 [ %167, %166 ], [ %174, %169 ]
  %172 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 25, i64 %170
  %173 = load i32, ptr %172, align 4, !tbaa !94
  %174 = add nsw i32 %171, %173
  store i32 %174, ptr %164, align 4, !tbaa !188
  %175 = add nuw nsw i64 %170, 1
  %176 = icmp eq i64 %175, %168
  br i1 %176, label %177, label %169, !llvm.loop !189

177:                                              ; preds = %169, %163
  %178 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  %179 = load i32, ptr %178, align 4, !tbaa !187
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %202, label %181

181:                                              ; preds = %177
  %182 = add i32 %179, -1
  %183 = udiv i32 %182, %143
  %184 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 45
  store i32 %183, ptr %184, align 4, !tbaa !190
  %185 = urem i32 %182, %143
  %186 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 46
  store i32 %185, ptr %186, align 8, !tbaa !191
  %187 = load i32, ptr %164, align 4, !tbaa !188
  %188 = mul nsw i32 %187, %183
  %189 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 %188, ptr %189, align 8, !tbaa !192
  %190 = icmp slt i32 %185, 0
  br i1 %190, label %204, label %191

191:                                              ; preds = %181
  %192 = load i32, ptr %189, align 8, !tbaa !192
  %193 = zext nneg i32 %185 to i64
  br label %194

194:                                              ; preds = %191, %194
  %195 = phi i64 [ 0, %191 ], [ %200, %194 ]
  %196 = phi i32 [ %192, %191 ], [ %199, %194 ]
  %197 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 25, i64 %195
  %198 = load i32, ptr %197, align 4, !tbaa !94
  %199 = add nsw i32 %196, %198
  store i32 %199, ptr %189, align 8, !tbaa !192
  %200 = add nuw nsw i64 %195, 1
  %201 = icmp ult i64 %195, %193
  br i1 %201, label %194, label %204, !llvm.loop !193

202:                                              ; preds = %177
  %203 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  store i32 0, ptr %203, align 8, !tbaa !192
  br label %204

204:                                              ; preds = %194, %181, %202
  br i1 %156, label %205, label %211

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 22
  %207 = load i32, ptr %206, align 4, !tbaa !194
  %208 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  %209 = load i32, ptr %208, align 8, !tbaa !192
  %210 = add nsw i32 %209, %207
  store i32 %210, ptr %208, align 8, !tbaa !192
  br label %211

211:                                              ; preds = %205, %204
  %212 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %213 = load i32, ptr %212, align 8, !tbaa !80
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  %217 = load i32, ptr %216, align 8, !tbaa !192
  %218 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %219 = load i32, ptr %218, align 8, !tbaa !94
  %220 = add nsw i32 %219, %217
  %221 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %220, ptr %221, align 4, !tbaa !175
  %222 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 23
  %223 = load i32, ptr %222, align 4, !tbaa !195
  %224 = add nsw i32 %223, %220
  %225 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %226 = load i32, ptr %225, align 4, !tbaa !94
  %227 = add nsw i32 %224, %226
  %228 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %227, ptr %228, align 8, !tbaa !178
  %229 = tail call i32 @llvm.smin.i32(i32 %220, i32 %227)
  %230 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %229, ptr %230, align 4, !tbaa !179
  br label %250

231:                                              ; preds = %211
  %232 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %233 = load i8, ptr %232, align 4, !tbaa !81
  %234 = icmp eq i8 %233, 0
  %235 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 44
  %236 = load i32, ptr %235, align 8, !tbaa !192
  br i1 %234, label %237, label %242

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %239 = load i32, ptr %238, align 8, !tbaa !94
  %240 = add nsw i32 %239, %236
  %241 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %240, ptr %241, align 4, !tbaa !175
  br label %250

242:                                              ; preds = %231
  %243 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 23
  %244 = load i32, ptr %243, align 4, !tbaa !195
  %245 = add nsw i32 %244, %236
  %246 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %247 = load i32, ptr %246, align 8, !tbaa !94
  %248 = add nsw i32 %245, %247
  %249 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %248, ptr %249, align 8, !tbaa !178
  br label %250

250:                                              ; preds = %237, %242, %215
  %251 = phi i32 [ %240, %237 ], [ %248, %242 ], [ %229, %215 ]
  %252 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %251, ptr %252, align 8, !tbaa !180
  %253 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %251, ptr %253, align 4, !tbaa !179
  %254 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %255 = load i32, ptr %254, align 4, !tbaa !74
  %256 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 %255, ptr %256, align 4, !tbaa !182
  %257 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %258 = load i32, ptr %257, align 8, !tbaa !183
  %259 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 %258, ptr %259, align 4, !tbaa !184
  br label %332

260:                                              ; preds = %2
  %261 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %262 = load i32, ptr %261, align 8, !tbaa !75
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %274, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 0, ptr %265, align 8, !tbaa !183
  %266 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 0, ptr %266, align 8, !tbaa !178
  %267 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 0, ptr %267, align 4, !tbaa !175
  %268 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 0, ptr %268, align 4, !tbaa !179
  %269 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 0, ptr %269, align 8, !tbaa !180
  %270 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %271 = load i32, ptr %270, align 4, !tbaa !74
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %325, label %273

273:                                              ; preds = %264
  tail call void @error(ptr noundef nonnull @.str.35, i32 noundef -1020) #10
  br label %325

274:                                              ; preds = %260
  %275 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %276 = load i32, ptr %275, align 4, !tbaa !173
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 0, ptr %279, align 4, !tbaa !182
  %280 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 0, ptr %280, align 4, !tbaa !184
  br label %281

281:                                              ; preds = %278, %274
  %282 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %283 = load i32, ptr %282, align 4, !tbaa !74
  %284 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  %285 = load i32, ptr %284, align 4, !tbaa !182
  %286 = icmp ult i32 %283, %285
  %287 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  %288 = load i32, ptr %287, align 4, !tbaa !184
  br i1 %286, label %289, label %293

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %291 = load i32, ptr %290, align 8, !tbaa !185
  %292 = add nsw i32 %291, %288
  br label %293

293:                                              ; preds = %281, %289
  %294 = phi i32 [ %292, %289 ], [ %288, %281 ]
  %295 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  store i32 %294, ptr %295, align 8, !tbaa !183
  %296 = add i32 %294, %283
  %297 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 18
  store i32 %296, ptr %297, align 4, !tbaa !187
  %298 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %299 = load i32, ptr %298, align 8, !tbaa !126
  %300 = icmp eq i32 %299, 0
  %301 = shl i32 %296, 1
  %302 = sext i1 %300 to i32
  %303 = add i32 %301, %302
  %304 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %303, ptr %304, align 8, !tbaa !180
  %305 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %306 = load i32, ptr %305, align 8, !tbaa !80
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %293
  %309 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  %310 = load i32, ptr %309, align 8, !tbaa !180
  %311 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %310, ptr %311, align 4, !tbaa !179
  %312 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %310, ptr %312, align 8, !tbaa !178
  %313 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %310, ptr %313, align 4, !tbaa !175
  br label %325

314:                                              ; preds = %293
  %315 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %316 = load i8, ptr %315, align 4, !tbaa !81
  %317 = icmp eq i8 %316, 0
  %318 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  %319 = load i32, ptr %318, align 8, !tbaa !180
  %320 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %319, ptr %320, align 4, !tbaa !179
  br i1 %317, label %321, label %323

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  store i32 %319, ptr %322, align 4, !tbaa !175
  br label %325

323:                                              ; preds = %314
  %324 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  store i32 %319, ptr %324, align 8, !tbaa !178
  br label %325

325:                                              ; preds = %308, %323, %321, %264, %273
  %326 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %327 = load i32, ptr %326, align 4, !tbaa !74
  %328 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 47
  store i32 %327, ptr %328, align 4, !tbaa !182
  %329 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 48
  %330 = load i32, ptr %329, align 8, !tbaa !183
  %331 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 51
  store i32 %330, ptr %331, align 4, !tbaa !184
  br label %332

332:                                              ; preds = %2, %101, %105, %325, %250
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dumppoc(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !175
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %9)
  %11 = load ptr, ptr %5, align 8, !tbaa !196
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !178
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %14)
  %16 = load ptr, ptr %5, align 8, !tbaa !196
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 35
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %19)
  %21 = load ptr, ptr %5, align 8, !tbaa !196
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 36
  %24 = load i32, ptr %23, align 8, !tbaa !80
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %24)
  %26 = load ptr, ptr %5, align 8, !tbaa !196
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.slice, ptr %27, i64 0, i32 37
  %29 = load i8, ptr %28, align 4, !tbaa !81
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %30)
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85)
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 18
  %34 = load i32, ptr %33, align 4, !tbaa !70
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %34)
  %36 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 20
  %37 = load i32, ptr %36, align 4, !tbaa !87
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %37)
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 19
  %40 = load i32, ptr %39, align 4, !tbaa !86
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %40)
  %42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 24
  %43 = load i32, ptr %42, align 4, !tbaa !186
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %43)
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 21
  %46 = load i32, ptr %45, align 4, !tbaa !93
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %46)
  %48 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 22
  %49 = load i32, ptr %48, align 4, !tbaa !194
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %49)
  %51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 23
  %52 = load i32, ptr %51, align 4, !tbaa !195
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %52)
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 25
  %55 = load i32, ptr %54, align 4, !tbaa !94
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %55)
  %57 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %3, i64 0, i32 25, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !94
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %58)
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !89
  %63 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %62, i64 0, i32 11
  %64 = load i32, ptr %63, align 8, !tbaa !90
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %64)
  %66 = load ptr, ptr %5, align 8, !tbaa !196
  %67 = load ptr, ptr %66, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.slice, ptr %67, i64 0, i32 16
  %69 = load i32, ptr %68, align 8, !tbaa !94
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %69)
  %71 = load ptr, ptr %5, align 8, !tbaa !196
  %72 = load ptr, ptr %71, align 8, !tbaa !54
  %73 = getelementptr inbounds %struct.slice, ptr %72, i64 0, i32 16, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !94
  %75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %74)
  %76 = load ptr, ptr %5, align 8, !tbaa !196
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct.slice, ptr %77, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !75
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %79)
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %82 = load i32, ptr %81, align 8, !tbaa !185
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, i32 noundef %82)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @picture_order(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 8, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  br label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  %9 = load i8, ptr %8, align 4, !tbaa !81
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
  %17 = load i32, ptr %16, align 4, !tbaa !94
  ret i32 %17
}

declare void @alloc_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }

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
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !35, !36}
!38 = !{!39, !40, i64 0}
!39 = !{!"slice", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !43, i64 32, !40, i64 40, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !41, i64 88, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !44, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !41, i64 136, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !41, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !40, i64 248, !41, i64 256, !41, i64 264, !40, i64 312, !40, i64 320, !40, i64 328, !41, i64 336, !41, i64 1104, !41, i64 1112, !41, i64 1128, !41, i64 1144, !41, i64 1160, !43, i64 1176, !43, i64 1180, !43, i64 1184, !45, i64 1188, !44, i64 1220, !44, i64 1222, !44, i64 1224, !43, i64 1228, !43, i64 1232, !43, i64 1236, !43, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !41, i64 1288, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !41, i64 1392, !41, i64 2544, !41, i64 3696, !41, i64 8304, !41, i64 12912, !41, i64 13008, !43, i64 13264, !43, i64 13268, !44, i64 13272, !44, i64 13274, !44, i64 13276, !44, i64 13278, !40, i64 13280, !40, i64 13288, !40, i64 13296, !44, i64 13304, !44, i64 13306, !43, i64 13308, !43, i64 13312, !40, i64 13320, !40, i64 13328, !43, i64 13336, !41, i64 13340, !40, i64 13408, !40, i64 13416, !40, i64 13424, !40, i64 13432, !40, i64 13440, !40, i64 13448, !40, i64 13456, !40, i64 13464, !40, i64 13472, !40, i64 13480, !40, i64 13488, !40, i64 13496, !43, i64 13504, !40, i64 13512, !40, i64 13520, !40, i64 13528, !40, i64 13536, !40, i64 13544, !41, i64 13552}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"short", !41, i64 0}
!45 = !{!"nalunitheadermvcext_tag", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28}
!46 = !{!39, !43, i64 200}
!47 = !{!41, !41, i64 0}
!48 = !{!39, !40, i64 312}
!49 = !{!50, !40, i64 0}
!50 = !{!"datapartition", !40, i64 0, !51, i64 8, !40, i64 40}
!51 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !40, i64 16, !40, i64 24}
!52 = !{!53, !43, i64 8}
!53 = !{!"bit_stream", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !43, i64 24}
!54 = !{!40, !40, i64 0}
!55 = !{!56, !43, i64 24}
!56 = !{!"decoder_params", !40, i64 0, !40, i64 8, !57, i64 16, !43, i64 24, !40, i64 32, !43, i64 40}
!57 = !{!"long", !41, i64 0}
!58 = !{!39, !43, i64 188}
!59 = !{!39, !43, i64 164}
!60 = !{!61, !43, i64 848776}
!61 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !41, i64 24, !41, i64 132120, !40, i64 699416, !41, i64 699424, !43, i64 848672, !43, i64 848676, !43, i64 848680, !43, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !43, i64 848712, !43, i64 848716, !43, i64 848720, !43, i64 848724, !43, i64 848728, !40, i64 848736, !40, i64 848744, !41, i64 848752, !43, i64 848776, !43, i64 848780, !43, i64 848784, !43, i64 848788, !43, i64 848792, !40, i64 848800, !41, i64 848808, !40, i64 848832, !40, i64 848840, !41, i64 848848, !43, i64 848872, !43, i64 848876, !40, i64 848880, !40, i64 848888, !41, i64 848896, !43, i64 848920, !40, i64 848928, !40, i64 848936, !43, i64 848944, !43, i64 848948, !43, i64 848952, !43, i64 848956, !43, i64 848960, !43, i64 848964, !43, i64 848968, !43, i64 848972, !43, i64 848976, !43, i64 848980, !43, i64 848984, !43, i64 848988, !43, i64 848992, !43, i64 848996, !43, i64 849000, !43, i64 849004, !43, i64 849008, !43, i64 849012, !43, i64 849016, !43, i64 849020, !43, i64 849024, !43, i64 849028, !43, i64 849032, !43, i64 849036, !44, i64 849040, !44, i64 849042, !41, i64 849044, !43, i64 849052, !43, i64 849056, !41, i64 849060, !41, i64 849072, !43, i64 849084, !43, i64 849088, !43, i64 849092, !43, i64 849096, !43, i64 849100, !43, i64 849104, !43, i64 849108, !43, i64 849112, !43, i64 849116, !43, i64 849120, !41, i64 849124, !41, i64 849148, !41, i64 849172, !43, i64 849196, !43, i64 849200, !43, i64 849204, !43, i64 849208, !43, i64 849212, !43, i64 849216, !43, i64 849220, !43, i64 849224, !43, i64 849228, !43, i64 849232, !43, i64 849236, !43, i64 849240, !43, i64 849244, !43, i64 849248, !43, i64 849252, !43, i64 849256, !43, i64 849260, !43, i64 849264, !43, i64 849268, !43, i64 849272, !43, i64 849276, !43, i64 849280, !43, i64 849284, !40, i64 849288, !40, i64 849296, !62, i64 849304, !62, i64 849624, !62, i64 849944, !62, i64 850264, !62, i64 850584, !62, i64 850904, !62, i64 851224, !62, i64 851544, !43, i64 851864, !43, i64 851868, !43, i64 851872, !57, i64 851880, !43, i64 851888, !41, i64 851892, !43, i64 855988, !43, i64 855992, !43, i64 855996, !43, i64 856000, !43, i64 856004, !43, i64 856008, !43, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !41, i64 856056, !40, i64 856456, !41, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !43, i64 856512, !40, i64 856520, !41, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !43, i64 856640, !43, i64 856644, !43, i64 856648, !40, i64 856656, !40, i64 856664, !41, i64 856672, !41, i64 856688, !40, i64 856704, !40, i64 856712, !43, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !43, i64 856824, !40, i64 856832, !43, i64 856840, !43, i64 856844, !43, i64 856848, !43, i64 856852, !43, i64 856856, !43, i64 856860, !43, i64 856864, !40, i64 856872}
!62 = !{!"image_data", !63, i64 0, !41, i64 136, !41, i64 160, !41, i64 184, !41, i64 208, !41, i64 232, !41, i64 256, !41, i64 280, !41, i64 292, !41, i64 304}
!63 = !{!"frame_format", !43, i64 0, !43, i64 4, !64, i64 8, !41, i64 16, !41, i64 28, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !41, i64 72, !43, i64 84, !41, i64 88, !41, i64 100, !41, i64 112, !43, i64 124, !43, i64 128}
!64 = !{!"double", !41, i64 0}
!65 = !{!39, !43, i64 1228}
!66 = !{!61, !43, i64 849280}
!67 = !{!39, !43, i64 216}
!68 = !{!39, !40, i64 8}
!69 = !{!61, !40, i64 16}
!70 = !{!71, !43, i64 2068}
!71 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !41, i64 44, !41, i64 92, !41, i64 476, !41, i64 2012, !41, i64 2036, !43, i64 2060, !43, i64 2064, !43, i64 2068, !43, i64 2072, !43, i64 2076, !43, i64 2080, !43, i64 2084, !43, i64 2088, !43, i64 2092, !41, i64 2096, !43, i64 3120, !43, i64 3124, !43, i64 3128, !43, i64 3132, !43, i64 3136, !43, i64 3140, !43, i64 3144, !43, i64 3148, !43, i64 3152, !43, i64 3156, !43, i64 3160, !43, i64 3164, !43, i64 3168, !72, i64 3172, !43, i64 4120, !43, i64 4124}
!72 = !{!"", !43, i64 0, !43, i64 4, !44, i64 8, !44, i64 10, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !43, i64 76, !73, i64 80, !43, i64 492, !73, i64 496, !43, i64 908, !43, i64 912, !43, i64 916, !43, i64 920, !43, i64 924, !43, i64 928, !43, i64 932, !43, i64 936, !43, i64 940, !43, i64 944}
!73 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !41, i64 12, !41, i64 140, !41, i64 268, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408}
!74 = !{!39, !43, i64 172}
!75 = !{!39, !43, i64 48}
!76 = !{!61, !43, i64 848944}
!77 = !{!61, !43, i64 849228}
!78 = !{!71, !43, i64 3136}
!79 = !{!61, !43, i64 848876}
!80 = !{!39, !43, i64 176}
!81 = !{!39, !41, i64 180}
!82 = !{!39, !43, i64 184}
!83 = !{!71, !43, i64 3140}
!84 = !{!39, !43, i64 128}
!85 = !{!39, !43, i64 52}
!86 = !{!71, !43, i64 2072}
!87 = !{!71, !43, i64 2076}
!88 = !{!39, !43, i64 80}
!89 = !{!61, !40, i64 8}
!90 = !{!91, !43, i64 2040}
!91 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !41, i64 24, !41, i64 72, !41, i64 456, !41, i64 1992, !41, i64 2016, !43, i64 2040, !43, i64 2044, !43, i64 2048, !41, i64 2052, !41, i64 2084, !41, i64 2116, !43, i64 2148, !43, i64 2152, !43, i64 2156, !40, i64 2160, !43, i64 2168, !43, i64 2172, !43, i64 2176, !43, i64 2180, !43, i64 2184, !43, i64 2188, !43, i64 2192, !43, i64 2196, !43, i64 2200, !43, i64 2204, !43, i64 2208}
!92 = !{!39, !43, i64 84}
!93 = !{!71, !43, i64 2080}
!94 = !{!43, !43, i64 0}
!95 = !{!91, !43, i64 2208}
!96 = !{!39, !43, i64 220}
!97 = !{!39, !43, i64 132}
!98 = !{!91, !43, i64 2168}
!99 = !{!91, !43, i64 2172}
!100 = !{!39, !43, i64 32}
!101 = distinct !{!101, !35, !36}
!102 = distinct !{!102, !35, !36}
!103 = distinct !{!103, !35, !36}
!104 = distinct !{!104, !35, !36}
!105 = !{!39, !43, i64 232}
!106 = !{!91, !43, i64 2176}
!107 = !{!91, !43, i64 2180}
!108 = !{!39, !44, i64 13272}
!109 = !{!39, !44, i64 13274}
!110 = !{!39, !44, i64 13276}
!111 = !{!39, !44, i64 13304}
!112 = !{!71, !43, i64 36}
!113 = !{!39, !44, i64 13278}
!114 = !{!39, !44, i64 13306}
!115 = !{!39, !40, i64 13280}
!116 = !{!44, !44, i64 0}
!117 = distinct !{!117, !35, !36}
!118 = distinct !{!118, !35, !36}
!119 = !{!39, !40, i64 13288}
!120 = !{!61, !44, i64 849040}
!121 = !{!61, !44, i64 849042}
!122 = distinct !{!122, !35, !36}
!123 = distinct !{!123, !35, !36}
!124 = distinct !{!124, !35, !36}
!125 = distinct !{!125, !35, !36}
!126 = !{!39, !43, i64 56}
!127 = !{!91, !43, i64 12}
!128 = !{!39, !43, i64 168}
!129 = !{!39, !43, i64 152}
!130 = !{!91, !43, i64 2184}
!131 = !{!39, !43, i64 148}
!132 = !{!61, !43, i64 849052}
!133 = !{!39, !43, i64 224}
!134 = !{!39, !43, i64 160}
!135 = !{!91, !43, i64 2188}
!136 = !{!39, !43, i64 156}
!137 = !{!71, !43, i64 4}
!138 = !{!71, !43, i64 20}
!139 = !{!140, !43, i64 788}
!140 = !{!"inp_par", !41, i64 0, !41, i64 255, !41, i64 510, !43, i64 768, !43, i64 772, !43, i64 776, !43, i64 780, !43, i64 784, !43, i64 788, !63, i64 792, !63, i64 928, !43, i64 1064, !43, i64 1068, !141, i64 1072, !141, i64 2040, !141, i64 3008, !43, i64 3976, !43, i64 3980, !43, i64 3984, !43, i64 3988, !43, i64 3992, !43, i64 3996, !43, i64 4000, !43, i64 4004, !43, i64 4008, !43, i64 4012}
!141 = !{!"video_data_file", !41, i64 0, !41, i64 255, !41, i64 510, !43, i64 768, !43, i64 772, !63, i64 776, !43, i64 912, !43, i64 916, !43, i64 920, !43, i64 924, !43, i64 928, !43, i64 932, !43, i64 936, !43, i64 940, !43, i64 944, !43, i64 948, !43, i64 952, !40, i64 960}
!142 = !{!91, !43, i64 2200}
!143 = !{!39, !44, i64 1220}
!144 = !{!39, !44, i64 1222}
!145 = !{!39, !44, i64 1224}
!146 = !{!91, !43, i64 2044}
!147 = !{!91, !43, i64 2048}
!148 = !{!71, !43, i64 3132}
!149 = !{!71, !43, i64 3128}
!150 = !{!91, !43, i64 2152}
!151 = !{!39, !43, i64 228}
!152 = !{!61, !43, i64 849004}
!153 = !{!61, !43, i64 849008}
!154 = !{!61, !43, i64 848996}
!155 = !{!61, !43, i64 849012}
!156 = !{!61, !43, i64 849016}
!157 = !{!39, !40, i64 248}
!158 = !{!159, !40, i64 24}
!159 = !{!"DecRefPicMarking_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 24}
!160 = distinct !{!160, !35, !36}
!161 = !{!39, !43, i64 236}
!162 = !{!61, !43, i64 849024}
!163 = !{!39, !43, i64 240}
!164 = !{!39, !43, i64 244}
!165 = !{!159, !43, i64 0}
!166 = !{!159, !43, i64 4}
!167 = !{!159, !43, i64 8}
!168 = !{!159, !43, i64 12}
!169 = !{!159, !43, i64 16}
!170 = distinct !{!170, !35, !36}
!171 = distinct !{!171, !35, !36}
!172 = !{!61, !43, i64 848952}
!173 = !{!61, !43, i64 849028}
!174 = !{!61, !43, i64 849032}
!175 = !{!39, !43, i64 68}
!176 = !{!61, !43, i64 848956}
!177 = !{!39, !43, i64 96}
!178 = !{!39, !43, i64 72}
!179 = !{!39, !43, i64 76}
!180 = !{!39, !43, i64 104}
!181 = !{!61, !43, i64 848984}
!182 = !{!61, !43, i64 848972}
!183 = !{!61, !43, i64 848976}
!184 = !{!61, !43, i64 848988}
!185 = !{!61, !43, i64 848992}
!186 = !{!71, !43, i64 2092}
!187 = !{!39, !43, i64 100}
!188 = !{!61, !43, i64 848980}
!189 = distinct !{!189, !35, !36}
!190 = !{!61, !43, i64 848964}
!191 = !{!61, !43, i64 848968}
!192 = !{!61, !43, i64 848960}
!193 = distinct !{!193, !35, !36}
!194 = !{!71, !43, i64 2084}
!195 = !{!71, !43, i64 2088}
!196 = !{!61, !40, i64 848736}

; ModuleID = 'ldecod_src/image.c'
source_filename = "ldecod_src/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.old_slice_par = type { i32, i32, i32, i32, i32, [2 x i32], i8, i8, i32, i32, i32, i32, i32 }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.tone_mapping_struct_s = type { i32, i32, i8, i8, i32, i32, [4096 x i16], ptr, i32 }
%struct.nalu_t = type { i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.snr_par = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.object_buffer = type { i8, i32, i32, [3 x i32] }

@.str = private unnamed_addr constant [111 x i8] c"Source picture has higher bit depth than imgpel data type. \0APlease recompile with larger data type for imgpel.\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"find_snr: buf\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [90 x i8] c"Warning: Could not seek to frame number %d in reference file. Shown PSNR might be wrong.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"%04d(P)  %8d %5d %5d %7.4f %7.4f %7.4f  %s %5d\0A\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"svc_extension_flag\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"NALU: DP_A slice_id\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"received data partition with CABAC, this is not allowed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"NALU: DP_B slice_id\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"NALU: DP_B redudant_pic_cnt\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"NALU: DP_C slice_id\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"NALU:SLICE_C redudand_pic_cnt\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"read_new_slice: Found NALU_TYPE_FILL, len %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Found SVC extension NALU (%d). Ignoring.\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"Found NALU type %d, len %d undefined, ignore NALU, moving on\0A\00", align 1
@__const.exit_picture.yuv_types = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] c"4:0:0\00", [6 x i8] c"4:2:0\00", [6 x i8] c"4:2:2\00", [6 x i8] c"4:4:4\00"], align 16
@.str.34 = private unnamed_addr constant [9 x i8] c")       \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"|IDR)\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"| I )\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"| P )\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"|SP )\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"|SI )\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"| B )\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"| b )\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"%05d(%s%5d %5d %5d %8.4f %8.4f %8.4f  %s %7d\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"%05d(%s%5d %5d %5d                             %s %7d\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Completed Decoding frame %05d.\0D\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"copy_dec_picture_JV: tone_mapping_lut\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"An unintentional loss of pictures occurs! Exit\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"p_Vid->structure not initialized\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"init_picture: tone_mapping_lut\00", align 1
@.str.50 = private unnamed_addr constant [103 x i8] c"Maximum number of supported slices exceeded. \0APlease recompile with increased value for MAX_NUM_SLICES\00", align 1
@str = private unnamed_addr constant [79 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'\00", align 1
@str.51 = private unnamed_addr constant [79 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'\00", align 1
@str.52 = private unnamed_addr constant [38 x i8] c"Found Subsequence SPS NALU. Ignoring.\00", align 1
@str.53 = private unnamed_addr constant [53 x i8] c"Skipping these filling bits, proceeding w/ next NALU\00", align 1
@str.54 = private unnamed_addr constant [57 x i8] c"found data partition C without matching DP A, discarding\00", align 1
@str.55 = private unnamed_addr constant [57 x i8] c"found data partition B without matching DP A, discarding\00", align 1
@str.56 = private unnamed_addr constant [68 x i8] c"Waning: got a data partition B which does not match DP_A (DP loss!)\00", align 1
@str.57 = private unnamed_addr constant [68 x i8] c"Warning: got a data partition C which does not match DP_A(DP loss!)\00", align 1
@str.58 = private unnamed_addr constant [54 x i8] c"Warning: Decoding does not start with an IDR picture.\00", align 1
@str.59 = private unnamed_addr constant [48 x i8] c"Warning: could not read from reconstructed file\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_all_macroblocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 16
  %3 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %2, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !42
  %6 = mul nsw i32 %5, %4
  %7 = icmp sgt i32 %6, 15
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %11, %8 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 1
  %16 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i8 -1, ptr %16, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 0, i32 2, i64 1
  store i8 -1, ptr %17, align 1, !tbaa !45
  %18 = add nuw nsw i32 %14, 1
  %19 = load i32, ptr %2, align 8, !tbaa !34
  %20 = load i32, ptr %3, align 4, !tbaa !42
  %21 = mul nsw i32 %20, %19
  %22 = ashr i32 %21, 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %12, label %24, !llvm.loop !46

24:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_slice(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 118
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  tail call void %10(ptr noundef %1) #27
  %11 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  %16 = load i32, ptr %15, align 8, !tbaa !62
  tail call void @reorder_lists_mvc(ptr noundef %1, i32 noundef %16) #27
  br label %18

17:                                               ; preds = %2
  tail call void @reorder_lists(ptr noundef %1)
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 107
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @free(ptr noundef %20) #27
  store ptr null, ptr %19, align 8, !tbaa !63
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 108
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free(ptr noundef %25) #27
  store ptr null, ptr %24, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 38
  %30 = load i32, ptr %29, align 8, !tbaa !65
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @init_mbaff_lists(ptr noundef %0, ptr noundef %1) #27
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 47
  %35 = load i32, ptr %34, align 4, !tbaa !66
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 117
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %33
  %44 = getelementptr i8, ptr %1, i64 13344
  %45 = getelementptr i8, ptr %1, i64 13340
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %44, ptr noundef nonnull align 4 dereferenceable(64) %45, i64 64, i1 false), !tbaa !69
  br label %46

46:                                               ; preds = %43, %37
  %47 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 118
  %48 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 119
  %49 = select i1 %36, ptr %47, ptr %48
  %50 = load i32, ptr %49, align 4, !tbaa !69
  %51 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 110
  store i32 %50, ptr %51, align 4, !tbaa !69
  %52 = load ptr, ptr %3, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !70
  switch i32 %54, label %55 [
    i32 0, label %56
    i32 3, label %56
  ]

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %46, %46, %55
  %57 = phi ptr [ @linfo_cbp_intra_normal, %55 ], [ @linfo_cbp_intra_other, %46 ], [ @linfo_cbp_intra_other, %46 ]
  %58 = phi ptr [ @linfo_cbp_inter_normal, %55 ], [ @linfo_cbp_inter_other, %46 ], [ @linfo_cbp_inter_other, %46 ]
  %59 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 120
  store ptr %57, ptr %59, align 8, !tbaa !74
  %60 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 121
  store ptr %58, ptr %60, align 8, !tbaa !75
  ret void
}

declare void @reorder_lists_mvc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @reorder_lists(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %4 = load i32, ptr %3, align 4, !tbaa !77
  switch i32 %4, label %5 [
    i32 2, label %33
    i32 4, label %33
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @reorder_ref_pic_list(ptr noundef nonnull %0, i32 noundef 0) #27
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !69
  %17 = sext i32 %16 to i64
  %18 = getelementptr ptr, ptr %14, i64 %17
  %19 = getelementptr ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %12, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  %24 = load i32, ptr %23, align 4, !tbaa !79
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %29

28:                                               ; preds = %22
  tail call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #27
  br label %29

29:                                               ; preds = %26, %28, %10
  %30 = load i32, ptr %15, align 8, !tbaa !69
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %31, ptr %32, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %1, %1, %29
  %34 = load i32, ptr %3, align 4, !tbaa !77
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @reorder_ref_pic_list(ptr noundef nonnull %0, i32 noundef 1) #27
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !69
  %48 = sext i32 %47 to i64
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 -1
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = icmp eq ptr %43, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  %55 = load i32, ptr %54, align 4, !tbaa !79
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  br label %60

59:                                               ; preds = %53
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 500) #27
  br label %60

60:                                               ; preds = %57, %59, %41
  %61 = load i32, ptr %46, align 4, !tbaa !69
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %62, ptr %63, align 1, !tbaa !45
  br label %64

64:                                               ; preds = %60, %33
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

declare void @init_mbaff_lists(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @linfo_cbp_intra_other(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @linfo_cbp_inter_other(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @linfo_cbp_intra_normal(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @linfo_cbp_inter_normal(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @decode_slice(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !81
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @init_contexts(ptr noundef nonnull %0) #27
  tail call void @cabac_new_slice(ptr noundef nonnull %0) #27
  br label %13

13:                                               ; preds = %12, %2
  %14 = load ptr, ptr %7, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %14, i64 0, i32 24
  %16 = load i32, ptr %15, align 4, !tbaa !83
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %14, i64 0, i32 23
  %24 = load i32, ptr %23, align 8, !tbaa !84
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %390, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %28 = load i32, ptr %27, align 4, !tbaa !77
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %390, label %30

30:                                               ; preds = %26, %18
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %32 = load i32, ptr %31, align 4, !tbaa !77
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %390

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = icmp eq i32 %16, 2
  br i1 %39, label %40, label %81

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  store i16 5, ptr %41, align 4, !tbaa !85
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  store i16 5, ptr %42, align 2, !tbaa !86
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 103
  store i16 16, ptr %43, align 8, !tbaa !87
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 104
  store i16 16, ptr %44, align 2, !tbaa !88
  %45 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = getelementptr inbounds ptr, ptr %46, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %51 = load ptr, ptr %50, align 8, !tbaa !90
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = getelementptr inbounds ptr, ptr %51, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  br label %55

55:                                               ; preds = %40, %78
  %56 = phi i64 [ 0, %40 ], [ %79, %78 ]
  %57 = getelementptr inbounds ptr, ptr %47, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = getelementptr inbounds ptr, ptr %49, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = getelementptr inbounds ptr, ptr %52, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = getelementptr inbounds ptr, ptr %54, i64 %56
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  br label %65

65:                                               ; preds = %55, %65
  %66 = phi i64 [ 0, %55 ], [ %76, %65 ]
  %67 = icmp eq i64 %66, 0
  %68 = select i1 %67, ptr %41, ptr %42
  %69 = load i16, ptr %68, align 2, !tbaa !91
  %70 = zext nneg i16 %69 to i32
  %71 = shl nuw i32 1, %70
  %72 = getelementptr inbounds i32, ptr %58, i64 %66
  store i32 %71, ptr %72, align 4, !tbaa !69
  %73 = getelementptr inbounds i32, ptr %60, i64 %66
  store i32 %71, ptr %73, align 4, !tbaa !69
  %74 = getelementptr inbounds i32, ptr %62, i64 %66
  store i32 0, ptr %74, align 4, !tbaa !69
  %75 = getelementptr inbounds i32, ptr %64, i64 %66
  store i32 0, ptr %75, align 4, !tbaa !69
  %76 = add nuw nsw i64 %66, 1
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %78, label %65, !llvm.loop !92

78:                                               ; preds = %65
  %79 = add nuw nsw i64 %56, 1
  %80 = icmp eq i64 %79, 32
  br i1 %80, label %81, label %55, !llvm.loop !93

81:                                               ; preds = %78, %34
  %82 = icmp sgt i32 %36, 0
  br i1 %82, label %83, label %215

83:                                               ; preds = %81
  %84 = icmp sgt i32 %38, 0
  %85 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %86 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %87 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %88 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %89 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %90 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %91 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %92 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %93 = zext nneg i32 %36 to i64
  %94 = zext nneg i32 %38 to i64
  br label %95

95:                                               ; preds = %83, %212
  %96 = phi i64 [ 0, %83 ], [ %213, %212 ]
  br i1 %84, label %97, label %212

97:                                               ; preds = %95, %209
  %98 = phi i64 [ %210, %209 ], [ 0, %95 ]
  br label %99

99:                                               ; preds = %97, %206
  %100 = phi i64 [ 0, %97 ], [ %207, %206 ]
  %101 = load i32, ptr %15, align 4, !tbaa !83
  switch i32 %101, label %206 [
    i32 1, label %102
    i32 2, label %125
  ]

102:                                              ; preds = %99
  %103 = load ptr, ptr %91, align 8, !tbaa !89
  %104 = load ptr, ptr %103, align 8, !tbaa !44
  %105 = getelementptr inbounds ptr, ptr %104, i64 %96
  %106 = load ptr, ptr %105, align 8, !tbaa !44
  %107 = getelementptr inbounds i32, ptr %106, i64 %100
  %108 = load i32, ptr %107, align 4, !tbaa !69
  %109 = load ptr, ptr %92, align 8, !tbaa !94
  %110 = load ptr, ptr %109, align 8, !tbaa !44
  %111 = getelementptr inbounds ptr, ptr %110, i64 %96
  %112 = load ptr, ptr %111, align 8, !tbaa !44
  %113 = getelementptr inbounds ptr, ptr %112, i64 %98
  %114 = load ptr, ptr %113, align 8, !tbaa !44
  %115 = getelementptr inbounds i32, ptr %114, i64 %100
  store i32 %108, ptr %115, align 4, !tbaa !69
  %116 = getelementptr inbounds ptr, ptr %103, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !44
  %118 = getelementptr inbounds ptr, ptr %117, i64 %98
  %119 = load ptr, ptr %118, align 8, !tbaa !44
  %120 = getelementptr inbounds i32, ptr %119, i64 %100
  %121 = load i32, ptr %120, align 4, !tbaa !69
  %122 = getelementptr inbounds ptr, ptr %109, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  %124 = getelementptr inbounds ptr, ptr %123, i64 %96
  br label %199

125:                                              ; preds = %99
  %126 = load ptr, ptr %86, align 8, !tbaa !44
  %127 = getelementptr inbounds ptr, ptr %126, i64 %98
  %128 = load ptr, ptr %127, align 8, !tbaa !44
  %129 = getelementptr inbounds %struct.storable_picture, ptr %128, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !95
  %131 = load ptr, ptr %85, align 8, !tbaa !44
  %132 = getelementptr inbounds ptr, ptr %131, i64 %96
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  %134 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !95
  %136 = sub nsw i32 %130, %135
  %137 = tail call i32 @llvm.smax.i32(i32 %136, i32 -128)
  %138 = tail call i32 @llvm.smin.i32(i32 %137, i32 127)
  %139 = icmp eq i32 %130, %135
  br i1 %139, label %148, label %140

140:                                              ; preds = %125
  %141 = getelementptr inbounds %struct.storable_picture, ptr %128, i64 0, i32 10
  %142 = load i8, ptr %141, align 8, !tbaa !96
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.storable_picture, ptr %133, i64 0, i32 10
  %146 = load i8, ptr %145, align 8, !tbaa !96
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %144, %140, %125
  %149 = load ptr, ptr %90, align 8, !tbaa !94
  %150 = load ptr, ptr %149, align 8, !tbaa !44
  %151 = getelementptr inbounds ptr, ptr %150, i64 %96
  %152 = load ptr, ptr %151, align 8, !tbaa !44
  %153 = getelementptr inbounds ptr, ptr %152, i64 %98
  %154 = load ptr, ptr %153, align 8, !tbaa !44
  %155 = getelementptr inbounds i32, ptr %154, i64 %100
  store i32 32, ptr %155, align 4, !tbaa !69
  %156 = getelementptr inbounds ptr, ptr %149, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !44
  %158 = getelementptr inbounds ptr, ptr %157, i64 %96
  br label %199

159:                                              ; preds = %144
  %160 = load i32, ptr %87, align 8, !tbaa !62
  %161 = sub nsw i32 %160, %135
  %162 = tail call i32 @llvm.smax.i32(i32 %161, i32 -128)
  %163 = tail call i32 @llvm.smin.i32(i32 %162, i32 127)
  %164 = sdiv i32 %138, 2
  %165 = tail call i32 @llvm.abs.i32(i32 %164, i1 true)
  %166 = add nuw nsw i32 %165, 16384
  %167 = sdiv i32 %166, %138
  %168 = mul nsw i32 %163, %167
  %169 = add nsw i32 %168, 32
  %170 = ashr i32 %169, 6
  %171 = tail call i32 @llvm.smax.i32(i32 %170, i32 -1024)
  %172 = tail call i32 @llvm.smin.i32(i32 %171, i32 1023)
  %173 = ashr i32 %172, 2
  %174 = load ptr, ptr %88, align 8, !tbaa !94
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !44
  %177 = getelementptr inbounds ptr, ptr %176, i64 %96
  %178 = load ptr, ptr %177, align 8, !tbaa !44
  %179 = getelementptr inbounds ptr, ptr %178, i64 %98
  %180 = load ptr, ptr %179, align 8, !tbaa !44
  %181 = getelementptr inbounds i32, ptr %180, i64 %100
  store i32 %173, ptr %181, align 4, !tbaa !69
  %182 = sub nsw i32 64, %173
  %183 = load ptr, ptr %174, align 8, !tbaa !44
  %184 = getelementptr inbounds ptr, ptr %183, i64 %96
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = getelementptr inbounds ptr, ptr %185, i64 %98
  %187 = load ptr, ptr %186, align 8, !tbaa !44
  %188 = getelementptr inbounds i32, ptr %187, i64 %100
  store i32 %182, ptr %188, align 4, !tbaa !69
  %189 = load i32, ptr %181, align 4, !tbaa !69
  %190 = add i32 %189, -129
  %191 = icmp ult i32 %190, -193
  br i1 %191, label %192, label %206

192:                                              ; preds = %159
  store i32 32, ptr %188, align 4, !tbaa !69
  store i32 32, ptr %181, align 4, !tbaa !69
  %193 = load ptr, ptr %89, align 8, !tbaa !90
  %194 = load ptr, ptr %193, align 8, !tbaa !44
  %195 = getelementptr inbounds ptr, ptr %194, i64 %96
  %196 = load ptr, ptr %195, align 8, !tbaa !44
  %197 = getelementptr inbounds i32, ptr %196, i64 %100
  store i32 0, ptr %197, align 4, !tbaa !69
  %198 = getelementptr inbounds ptr, ptr %193, i64 1
  br label %199

199:                                              ; preds = %102, %148, %192
  %200 = phi ptr [ %198, %192 ], [ %158, %148 ], [ %124, %102 ]
  %201 = phi i32 [ 0, %192 ], [ 32, %148 ], [ %121, %102 ]
  %202 = load ptr, ptr %200, align 8, !tbaa !44
  %203 = getelementptr inbounds ptr, ptr %202, i64 %98
  %204 = load ptr, ptr %203, align 8, !tbaa !44
  %205 = getelementptr inbounds i32, ptr %204, i64 %100
  store i32 %201, ptr %205, align 4, !tbaa !69
  br label %206

206:                                              ; preds = %199, %159, %99
  %207 = add nuw nsw i64 %100, 1
  %208 = icmp eq i64 %207, 3
  br i1 %208, label %209, label %99, !llvm.loop !97

209:                                              ; preds = %206
  %210 = add nuw nsw i64 %98, 1
  %211 = icmp eq i64 %210, %94
  br i1 %211, label %212, label %97, !llvm.loop !98

212:                                              ; preds = %209, %95
  %213 = add nuw nsw i64 %96, 1
  %214 = icmp eq i64 %213, %93
  br i1 %214, label %215, label %95, !llvm.loop !99

215:                                              ; preds = %212, %81
  %216 = load i32, ptr %4, align 8, !tbaa !80
  %217 = icmp ne i32 %216, 0
  %218 = icmp sgt i32 %36, 0
  %219 = select i1 %217, i1 %218, i1 false
  br i1 %219, label %220, label %390

220:                                              ; preds = %215
  %221 = shl i32 %36, 1
  %222 = shl i32 %38, 1
  %223 = icmp sgt i32 %38, 0
  %224 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %225 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 11
  %226 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 12
  %227 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %228 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %229 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %230 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %231 = tail call i32 @llvm.smax.i32(i32 %222, i32 1)
  %232 = tail call i32 @llvm.smax.i32(i32 %221, i32 1)
  %233 = zext nneg i32 %232 to i64
  %234 = zext nneg i32 %231 to i64
  br label %235

235:                                              ; preds = %220, %387
  %236 = phi i64 [ 0, %220 ], [ %388, %387 ]
  br i1 %223, label %237, label %387

237:                                              ; preds = %235
  %238 = load ptr, ptr %224, align 8, !tbaa !90
  %239 = load ptr, ptr %238, align 8, !tbaa !44
  %240 = lshr i64 %236, 1
  %241 = and i64 %240, 2147483647
  %242 = getelementptr inbounds ptr, ptr %239, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !44
  %244 = getelementptr inbounds ptr, ptr %238, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !44
  br label %246

246:                                              ; preds = %237, %384
  %247 = phi i64 [ 0, %237 ], [ %385, %384 ]
  %248 = lshr i64 %247, 1
  %249 = and i64 %248, 2147483647
  %250 = getelementptr inbounds ptr, ptr %245, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !44
  br label %252

252:                                              ; preds = %246, %381
  %253 = phi i64 [ 0, %246 ], [ %382, %381 ]
  %254 = getelementptr inbounds i32, ptr %243, i64 %253
  %255 = getelementptr inbounds i32, ptr %251, i64 %253
  br label %256

256:                                              ; preds = %252, %378
  %257 = phi i64 [ 2, %252 ], [ %379, %378 ]
  %258 = load i32, ptr %254, align 4, !tbaa !69
  %259 = getelementptr inbounds ptr, ptr %238, i64 %257
  %260 = load ptr, ptr %259, align 8, !tbaa !44
  %261 = getelementptr inbounds ptr, ptr %260, i64 %236
  %262 = load ptr, ptr %261, align 8, !tbaa !44
  %263 = getelementptr inbounds i32, ptr %262, i64 %253
  store i32 %258, ptr %263, align 4, !tbaa !69
  %264 = load i32, ptr %255, align 4, !tbaa !69
  %265 = or disjoint i64 %257, 1
  %266 = getelementptr inbounds ptr, ptr %238, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !44
  %268 = getelementptr inbounds ptr, ptr %267, i64 %247
  %269 = load ptr, ptr %268, align 8, !tbaa !44
  %270 = getelementptr inbounds i32, ptr %269, i64 %253
  store i32 %264, ptr %270, align 4, !tbaa !69
  %271 = load i32, ptr %15, align 4, !tbaa !83
  switch i32 %271, label %378 [
    i32 1, label %272
    i32 2, label %300
  ]

272:                                              ; preds = %256
  %273 = load ptr, ptr %229, align 8, !tbaa !89
  %274 = load ptr, ptr %273, align 8, !tbaa !44
  %275 = getelementptr inbounds ptr, ptr %274, i64 %241
  %276 = load ptr, ptr %275, align 8, !tbaa !44
  %277 = getelementptr inbounds i32, ptr %276, i64 %253
  %278 = load i32, ptr %277, align 4, !tbaa !69
  %279 = load ptr, ptr %230, align 8, !tbaa !94
  %280 = getelementptr inbounds ptr, ptr %279, i64 %257
  %281 = load ptr, ptr %280, align 8, !tbaa !44
  %282 = getelementptr inbounds ptr, ptr %281, i64 %236
  %283 = load ptr, ptr %282, align 8, !tbaa !44
  %284 = getelementptr inbounds ptr, ptr %283, i64 %247
  %285 = load ptr, ptr %284, align 8, !tbaa !44
  %286 = getelementptr inbounds i32, ptr %285, i64 %253
  store i32 %278, ptr %286, align 4, !tbaa !69
  %287 = getelementptr inbounds ptr, ptr %273, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !44
  %289 = getelementptr inbounds ptr, ptr %288, i64 %249
  %290 = load ptr, ptr %289, align 8, !tbaa !44
  %291 = getelementptr inbounds i32, ptr %290, i64 %253
  %292 = load i32, ptr %291, align 4, !tbaa !69
  %293 = getelementptr inbounds ptr, ptr %279, i64 %265
  %294 = load ptr, ptr %293, align 8, !tbaa !44
  %295 = getelementptr inbounds ptr, ptr %294, i64 %236
  %296 = load ptr, ptr %295, align 8, !tbaa !44
  %297 = getelementptr inbounds ptr, ptr %296, i64 %247
  %298 = load ptr, ptr %297, align 8, !tbaa !44
  %299 = getelementptr inbounds i32, ptr %298, i64 %253
  store i32 %292, ptr %299, align 4, !tbaa !69
  br label %378

300:                                              ; preds = %256
  %301 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %265
  %302 = load ptr, ptr %301, align 8, !tbaa !44
  %303 = getelementptr inbounds ptr, ptr %302, i64 %247
  %304 = load ptr, ptr %303, align 8, !tbaa !44
  %305 = getelementptr inbounds %struct.storable_picture, ptr %304, i64 0, i32 1
  %306 = load i32, ptr %305, align 4, !tbaa !95
  %307 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %257
  %308 = load ptr, ptr %307, align 8, !tbaa !44
  %309 = getelementptr inbounds ptr, ptr %308, i64 %236
  %310 = load ptr, ptr %309, align 8, !tbaa !44
  %311 = getelementptr inbounds %struct.storable_picture, ptr %310, i64 0, i32 1
  %312 = load i32, ptr %311, align 4, !tbaa !95
  %313 = sub nsw i32 %306, %312
  %314 = tail call i32 @llvm.smax.i32(i32 %313, i32 -128)
  %315 = tail call i32 @llvm.smin.i32(i32 %314, i32 127)
  %316 = icmp eq i32 %306, %312
  br i1 %316, label %325, label %317

317:                                              ; preds = %300
  %318 = getelementptr inbounds %struct.storable_picture, ptr %304, i64 0, i32 10
  %319 = load i8, ptr %318, align 8, !tbaa !96
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.storable_picture, ptr %310, i64 0, i32 10
  %323 = load i8, ptr %322, align 8, !tbaa !96
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %341, label %325

325:                                              ; preds = %321, %317, %300
  %326 = load ptr, ptr %228, align 8, !tbaa !94
  %327 = getelementptr inbounds ptr, ptr %326, i64 %257
  %328 = load ptr, ptr %327, align 8, !tbaa !44
  %329 = getelementptr inbounds ptr, ptr %328, i64 %236
  %330 = load ptr, ptr %329, align 8, !tbaa !44
  %331 = getelementptr inbounds ptr, ptr %330, i64 %247
  %332 = load ptr, ptr %331, align 8, !tbaa !44
  %333 = getelementptr inbounds i32, ptr %332, i64 %253
  store i32 32, ptr %333, align 4, !tbaa !69
  %334 = getelementptr inbounds ptr, ptr %326, i64 %265
  %335 = load ptr, ptr %334, align 8, !tbaa !44
  %336 = getelementptr inbounds ptr, ptr %335, i64 %236
  %337 = load ptr, ptr %336, align 8, !tbaa !44
  %338 = getelementptr inbounds ptr, ptr %337, i64 %247
  %339 = load ptr, ptr %338, align 8, !tbaa !44
  %340 = getelementptr inbounds i32, ptr %339, i64 %253
  store i32 32, ptr %340, align 4, !tbaa !69
  br label %378

341:                                              ; preds = %321
  %342 = icmp eq i64 %257, 2
  %343 = select i1 %342, ptr %225, ptr %226
  %344 = load i32, ptr %343, align 4, !tbaa !69
  %345 = sub nsw i32 %344, %312
  %346 = tail call i32 @llvm.smax.i32(i32 %345, i32 -128)
  %347 = tail call i32 @llvm.smin.i32(i32 %346, i32 127)
  %348 = sdiv i32 %315, 2
  %349 = tail call i32 @llvm.abs.i32(i32 %348, i1 true)
  %350 = add nuw nsw i32 %349, 16384
  %351 = sdiv i32 %350, %315
  %352 = mul nsw i32 %347, %351
  %353 = add nsw i32 %352, 32
  %354 = ashr i32 %353, 6
  %355 = tail call i32 @llvm.smax.i32(i32 %354, i32 -1024)
  %356 = tail call i32 @llvm.smin.i32(i32 %355, i32 1023)
  %357 = ashr i32 %356, 2
  %358 = load ptr, ptr %227, align 8, !tbaa !94
  %359 = getelementptr inbounds ptr, ptr %358, i64 %265
  %360 = load ptr, ptr %359, align 8, !tbaa !44
  %361 = getelementptr inbounds ptr, ptr %360, i64 %236
  %362 = load ptr, ptr %361, align 8, !tbaa !44
  %363 = getelementptr inbounds ptr, ptr %362, i64 %247
  %364 = load ptr, ptr %363, align 8, !tbaa !44
  %365 = getelementptr inbounds i32, ptr %364, i64 %253
  store i32 %357, ptr %365, align 4, !tbaa !69
  %366 = sub nsw i32 64, %357
  %367 = getelementptr inbounds ptr, ptr %358, i64 %257
  %368 = load ptr, ptr %367, align 8, !tbaa !44
  %369 = getelementptr inbounds ptr, ptr %368, i64 %236
  %370 = load ptr, ptr %369, align 8, !tbaa !44
  %371 = getelementptr inbounds ptr, ptr %370, i64 %247
  %372 = load ptr, ptr %371, align 8, !tbaa !44
  %373 = getelementptr inbounds i32, ptr %372, i64 %253
  store i32 %366, ptr %373, align 4, !tbaa !69
  %374 = load i32, ptr %365, align 4, !tbaa !69
  %375 = add i32 %374, -129
  %376 = icmp ult i32 %375, -193
  br i1 %376, label %377, label %378

377:                                              ; preds = %341
  store i32 32, ptr %365, align 4, !tbaa !69
  store i32 32, ptr %373, align 4, !tbaa !69
  store i32 0, ptr %263, align 4, !tbaa !69
  store i32 0, ptr %270, align 4, !tbaa !69
  br label %378

378:                                              ; preds = %377, %341, %325, %272, %256
  %379 = add nuw nsw i64 %257, 2
  %380 = icmp ult i64 %257, 4
  br i1 %380, label %256, label %381, !llvm.loop !100

381:                                              ; preds = %378
  %382 = add nuw nsw i64 %253, 1
  %383 = icmp eq i64 %382, 3
  br i1 %383, label %384, label %252, !llvm.loop !101

384:                                              ; preds = %381
  %385 = add nuw nsw i64 %247, 1
  %386 = icmp eq i64 %385, %234
  br i1 %386, label %387, label %246, !llvm.loop !102

387:                                              ; preds = %384, %235
  %388 = add nuw nsw i64 %236, 1
  %389 = icmp eq i64 %388, %233
  br i1 %389, label %390, label %235, !llvm.loop !103

390:                                              ; preds = %387, %215, %30, %26, %22
  %391 = and i32 %1, -2
  %392 = icmp eq i32 %391, 2
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 28
  %395 = load i32, ptr %394, align 8, !tbaa !104
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %393
  tail call void @decode_one_slice(ptr noundef nonnull %0)
  br label %398

398:                                              ; preds = %390, %397, %393
  %399 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 170
  %400 = load i32, ptr %399, align 8, !tbaa !105
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %428, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 176
  %404 = load i32, ptr %403, align 8, !tbaa !106
  %405 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %406 = load ptr, ptr %405, align 8, !tbaa !107
  %407 = getelementptr inbounds %struct.storable_picture, ptr %406, i64 0, i32 11
  %408 = load i32, ptr %407, align 4, !tbaa !108
  %409 = shl nuw i32 1, %408
  %410 = and i32 %409, %404
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %428, label %412

412:                                              ; preds = %402
  %413 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 105
  %414 = load i32, ptr %413, align 8, !tbaa !109
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %419, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  %418 = load i32, ptr %417, align 8, !tbaa !110
  tail call void @change_plane_JV(ptr noundef %3, i32 noundef %418, ptr noundef nonnull %0) #27
  br label %419

419:                                              ; preds = %412, %416
  %420 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %421 = load ptr, ptr %420, align 8, !tbaa !111
  %422 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  %423 = load i32, ptr %422, align 4, !tbaa !112
  %424 = mul nsw i32 %423, %6
  %425 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 40
  %426 = load i32, ptr %425, align 8, !tbaa !113
  %427 = mul nsw i32 %426, %6
  tail call void @DeblockPicturePartially(ptr noundef %3, ptr noundef %421, i32 noundef %424, i32 noundef %427) #27
  br label %428

428:                                              ; preds = %419, %402, %398
  ret void
}

declare void @init_contexts(ptr noundef) local_unnamed_addr #3

declare void @cabac_new_slice(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @decode_one_slice(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store ptr null, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 23
  store i32 -1, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 105
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  %10 = load i32, ptr %9, align 8, !tbaa !110
  tail call void @change_plane_JV(ptr noundef %3, i32 noundef %10, ptr noundef nonnull %0) #27
  br label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  store ptr %13, ptr %14, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  store ptr %16, ptr %17, align 8, !tbaa !111
  %18 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 126
  store ptr %19, ptr %20, align 8, !tbaa !118
  %21 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 127
  store ptr %22, ptr %23, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 128
  store ptr %25, ptr %26, align 8, !tbaa !122
  br label %27

27:                                               ; preds = %11, %8
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %29 = load i32, ptr %28, align 4, !tbaa !77
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  tail call void @compute_colocated(ptr noundef nonnull %0, ptr noundef nonnull %32) #27
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, ptr %28, align 4, !tbaa !77
  switch i32 %34, label %35 [
    i32 2, label %102
    i32 4, label %102
  ]

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 8, !tbaa !109
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 138
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !123
  %42 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 104
  %43 = load i32, ptr %42, align 4, !tbaa !124
  %44 = icmp slt i32 %41, %43
  br i1 %37, label %72, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  %47 = load i32, ptr %46, align 8, !tbaa !110
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %45, %69
  %50 = phi i64 [ %70, %69 ], [ 0, %45 ]
  %51 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %50
  br label %52

52:                                               ; preds = %49, %66
  %53 = phi i64 [ 0, %49 ], [ %67, %66 ]
  %54 = load ptr, ptr %51, align 8, !tbaa !44
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !44
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = icmp eq ptr %56, %39
  %60 = select i1 %44, i1 %59, i1 false
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 72
  store i32 %61, ptr %62, align 8, !tbaa !125
  %63 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 32
  %64 = load ptr, ptr %63, align 8, !tbaa !126
  %65 = getelementptr inbounds %struct.storable_picture, ptr %56, i64 0, i32 71
  store ptr %64, ptr %65, align 8, !tbaa !127
  br label %66

66:                                               ; preds = %58, %52
  %67 = add nuw nsw i64 %53, 1
  %68 = icmp eq i64 %67, 33
  br i1 %68, label %69, label %52, !llvm.loop !128

69:                                               ; preds = %66
  %70 = add nuw nsw i64 %50, 1
  %71 = icmp eq i64 %70, 6
  br i1 %71, label %102, label %49, !llvm.loop !129

72:                                               ; preds = %35
  %73 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %74 = load i32, ptr %73, align 8, !tbaa !80
  %75 = icmp eq i32 %74, 0
  %76 = icmp eq i32 %34, 1
  %77 = select i1 %76, i64 2, i64 1
  %78 = select i1 %75, i64 %77, i64 6
  br label %79

79:                                               ; preds = %72, %99
  %80 = phi i64 [ 0, %72 ], [ %100, %99 ]
  %81 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %80
  br label %82

82:                                               ; preds = %79, %96
  %83 = phi i64 [ 0, %79 ], [ %97, %96 ]
  %84 = load ptr, ptr %81, align 8, !tbaa !44
  %85 = getelementptr inbounds ptr, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = icmp eq ptr %86, %39
  %90 = select i1 %44, i1 %89, i1 false
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.storable_picture, ptr %86, i64 0, i32 72
  store i32 %91, ptr %92, align 8, !tbaa !125
  %93 = getelementptr inbounds %struct.storable_picture, ptr %86, i64 0, i32 32
  %94 = load ptr, ptr %93, align 8, !tbaa !126
  %95 = getelementptr inbounds %struct.storable_picture, ptr %86, i64 0, i32 71
  store ptr %94, ptr %95, align 8, !tbaa !127
  br label %96

96:                                               ; preds = %88, %82
  %97 = add nuw nsw i64 %83, 1
  %98 = icmp eq i64 %97, 33
  br i1 %98, label %99, label %82, !llvm.loop !130

99:                                               ; preds = %96
  %100 = add nuw nsw i64 %80, 1
  %101 = icmp eq i64 %100, %78
  br i1 %101, label %102, label %79, !llvm.loop !131

102:                                              ; preds = %69, %99, %45, %33, %33
  %103 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  %104 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %105 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %106 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %107 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %108 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  br label %109

109:                                              ; preds = %102, %132
  call void @start_macroblock(ptr noundef nonnull %0, ptr noundef nonnull %2) #27
  %110 = load ptr, ptr %103, align 8, !tbaa !132
  %111 = load ptr, ptr %2, align 8, !tbaa !44
  call void %110(ptr noundef %111) #27
  %112 = load ptr, ptr %2, align 8, !tbaa !44
  %113 = load ptr, ptr %104, align 8, !tbaa !111
  %114 = call i32 @decode_one_macroblock(ptr noundef %112, ptr noundef %113) #27
  %115 = load i32, ptr %105, align 8, !tbaa !80
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %109
  %118 = load ptr, ptr %2, align 8, !tbaa !44
  %119 = getelementptr inbounds %struct.macroblock, ptr %118, i64 0, i32 45
  %120 = load i32, ptr %119, align 8, !tbaa !133
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %106, align 8, !tbaa !69
  %124 = ashr i32 %123, 1
  store i32 %124, ptr %106, align 8, !tbaa !69
  %125 = load i32, ptr %107, align 4, !tbaa !69
  %126 = ashr i32 %125, 1
  store i32 %126, ptr %107, align 4, !tbaa !69
  br label %127

127:                                              ; preds = %122, %117
  br i1 %116, label %132, label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %108, align 4, !tbaa !136
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %109, %128, %127
  %133 = phi i1 [ true, %127 ], [ %131, %128 ], [ true, %109 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @exit_macroblock(ptr noundef nonnull %0, i32 noundef %134) #27
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %109, label %137, !llvm.loop !137

137:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

declare void @change_plane_JV(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @DeblockPicturePartially(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @decode_one_frame(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32 }, align 8
  %3 = alloca [48 x i8], align 8
  %4 = getelementptr inbounds %struct.decoder_params, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 16
  store i32 0, ptr %9, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 18
  store i32 0, ptr %10, align 8, !tbaa !143
  %11 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 15
  store i32 0, ptr %11, align 4, !tbaa !144
  %12 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 32
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 179
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  %18 = load i32, ptr %17, align 8, !tbaa !147
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %17, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !148
  %23 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 34
  %24 = load ptr, ptr %23, align 8, !tbaa !149
  %25 = getelementptr inbounds %struct.slice, ptr %24, i64 0, i32 73
  %26 = load i32, ptr %25, align 4, !tbaa !150
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  tail call void @MakePPSavailable(ptr noundef nonnull %5, i32 noundef %22, ptr noundef nonnull %17) #27
  %29 = load ptr, ptr %16, align 8, !tbaa !146
  store i32 0, ptr %29, align 8, !tbaa !147
  br label %30

30:                                               ; preds = %28, %20, %15
  %31 = load i32, ptr %9, align 8, !tbaa !142
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %8, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 34
  %36 = load ptr, ptr %35, align 8, !tbaa !149
  store ptr %36, ptr %33, align 8, !tbaa !44
  store ptr %34, ptr %35, align 8, !tbaa !149
  %37 = load ptr, ptr %33, align 8, !tbaa !44
  tail call void @UseParameterSet(ptr noundef %37) #27
  tail call fastcc void @init_picture(ptr noundef nonnull %5, ptr noundef %37, ptr noundef %6)
  %38 = load i32, ptr %9, align 8, !tbaa !142
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %9, align 8, !tbaa !142
  br label %40

40:                                               ; preds = %30, %1
  %41 = phi i32 [ 3, %30 ], [ 0, %1 ]
  %42 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 151
  %43 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 119
  %44 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 118
  %45 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %46 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 118
  %47 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %48 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 119
  %49 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 117
  %50 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 118
  %51 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 58
  %52 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 58
  %53 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 34
  %54 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 136
  %55 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 17
  %56 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 12
  br label %57

57:                                               ; preds = %279, %40
  %58 = phi i32 [ %231, %279 ], [ %41, %40 ]
  %59 = phi ptr [ %232, %279 ], [ %8, %40 ]
  br label %60

60:                                               ; preds = %57, %129
  %61 = phi i32 [ %88, %129 ], [ %58, %57 ]
  %62 = add nsw i32 %61, -3
  %63 = icmp ult i32 %62, -2
  br i1 %63, label %64, label %289

64:                                               ; preds = %60
  %65 = load i32, ptr %9, align 8, !tbaa !142
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %59, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = tail call ptr @malloc_slice(ptr noundef %6, ptr noundef nonnull %5) #27
  %72 = load i32, ptr %9, align 8, !tbaa !142
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %59, i64 %73
  store ptr %71, ptr %74, align 8, !tbaa !44
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, ptr %9, align 8, !tbaa !142
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %59, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  store ptr %5, ptr %79, align 8, !tbaa !76
  %80 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 1
  store ptr %6, ptr %80, align 8, !tbaa !151
  %81 = load ptr, ptr %42, align 8, !tbaa !152
  %82 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 5
  store ptr %81, ptr %82, align 8, !tbaa !153
  %83 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 44
  store i32 -8888, ptr %83, align 8, !tbaa !154
  %84 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 21
  store i32 0, ptr %84, align 8, !tbaa !155
  %85 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 94
  store i32 -1, ptr %85, align 8, !tbaa !156
  %86 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 95
  store i32 0, ptr %86, align 4, !tbaa !157
  %87 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 76
  store i32 0, ptr %87, align 8, !tbaa !158
  %88 = tail call i32 @read_new_slice(ptr noundef nonnull %79), !range !159
  %89 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 43
  store i32 %88, ptr %89, align 4, !tbaa !160
  %90 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 47
  %91 = load i32, ptr %90, align 4, !tbaa !66
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %75
  store i32 1, ptr %43, align 8, !tbaa !161
  store i32 1, ptr %44, align 4, !tbaa !162
  %94 = load i32, ptr %45, align 8, !tbaa !163
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %111, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 27
  %98 = load i32, ptr %97, align 8, !tbaa !69
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %96, %106
  %101 = phi i64 [ %107, %106 ], [ 0, %96 ]
  %102 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 110, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !69
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, ptr %46, align 4, !tbaa !162
  br label %106

106:                                              ; preds = %105, %100
  %107 = add nuw nsw i64 %101, 1
  %108 = load i32, ptr %97, align 8, !tbaa !69
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %100, label %123, !llvm.loop !164

111:                                              ; preds = %93
  br i1 %92, label %123, label %112

112:                                              ; preds = %75, %111
  %113 = load i32, ptr %47, align 8, !tbaa !163
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 50
  %117 = load i32, ptr %116, align 8, !tbaa !165
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 110, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !69
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 0, ptr %48, align 8, !tbaa !161
  br label %123

123:                                              ; preds = %106, %96, %111, %112, %115, %122
  %124 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 35
  %125 = load i32, ptr %124, align 4, !tbaa !68
  %126 = load i32, ptr %49, align 8, !tbaa !67
  %127 = icmp ne i32 %125, %126
  %128 = or i1 %92, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load i32, ptr %50, align 4, !tbaa !162
  %131 = icmp ne i32 %130, 0
  %132 = icmp ne i32 %88, 1
  %133 = and i1 %132, %131
  br i1 %133, label %60, label %134, !llvm.loop !166

134:                                              ; preds = %123, %129
  %135 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 35
  %136 = add nsw i32 %88, -3
  %137 = icmp ult i32 %136, -2
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %9, align 8, !tbaa !142
  %140 = icmp eq i32 %139, 0
  %141 = icmp eq i32 %88, 2
  %142 = and i1 %141, %140
  br i1 %142, label %143, label %206

143:                                              ; preds = %138, %134
  %144 = load i32, ptr %9, align 8, !tbaa !142
  %145 = trunc i32 %144 to i16
  %146 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 22
  store i16 %145, ptr %146, align 4, !tbaa !167
  %147 = shl i32 %144, 16
  %148 = ashr exact i32 %147, 16
  %149 = load ptr, ptr %54, align 8, !tbaa !107
  %150 = getelementptr inbounds %struct.storable_picture, ptr %149, i64 0, i32 15
  %151 = load i16, ptr %150, align 4, !tbaa !168
  %152 = sext i16 %151 to i32
  %153 = tail call i32 @llvm.smax.i32(i32 %148, i32 %152)
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %150, align 4, !tbaa !168
  %155 = icmp sgt i32 %144, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %143
  %157 = load ptr, ptr %59, align 8, !tbaa !44
  %158 = getelementptr inbounds %struct.slice, ptr %157, i64 0, i32 13
  %159 = load i32, ptr %158, align 4, !tbaa !123
  %160 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 13
  store i32 %159, ptr %160, align 4, !tbaa !123
  %161 = getelementptr inbounds %struct.slice, ptr %157, i64 0, i32 11
  %162 = load i32, ptr %161, align 4, !tbaa !169
  %163 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 11
  store i32 %162, ptr %163, align 4, !tbaa !169
  %164 = getelementptr inbounds %struct.slice, ptr %157, i64 0, i32 12
  %165 = load i32, ptr %164, align 8, !tbaa !170
  %166 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 12
  store i32 %165, ptr %166, align 8, !tbaa !170
  %167 = getelementptr inbounds %struct.slice, ptr %157, i64 0, i32 19
  %168 = load i32, ptr %167, align 8, !tbaa !62
  %169 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 19
  store i32 %168, ptr %169, align 8, !tbaa !62
  %170 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 39
  %171 = load i32, ptr %170, align 4, !tbaa !112
  %172 = add nsw i32 %144, -1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds ptr, ptr %59, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !44
  %176 = getelementptr inbounds %struct.slice, ptr %175, i64 0, i32 40
  store i32 %171, ptr %176, align 8, !tbaa !113
  br label %177

177:                                              ; preds = %156, %143
  %178 = add nsw i32 %144, 1
  store i32 %178, ptr %9, align 8, !tbaa !142
  %179 = load i32, ptr %55, align 4, !tbaa !171
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %230, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %7, align 8, !tbaa !141
  %183 = add nsw i32 %179, 16
  %184 = sext i32 %183 to i64
  %185 = shl nsw i64 %184, 3
  %186 = tail call ptr @realloc(ptr noundef %182, i64 noundef %185) #28
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %181
  %189 = load i32, ptr %55, align 4, !tbaa !171
  %190 = add nsw i32 %189, 16
  %191 = sext i32 %190 to i64
  %192 = tail call noalias ptr @calloc(i64 noundef %191, i64 noundef 8) #29
  %193 = load ptr, ptr %7, align 8, !tbaa !141
  %194 = load i32, ptr %9, align 8, !tbaa !142
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %192, ptr align 8 %193, i64 %196, i1 false)
  %197 = load ptr, ptr %7, align 8, !tbaa !141
  tail call void @free(ptr noundef %197) #27
  store ptr %192, ptr %7, align 8, !tbaa !141
  br label %202

198:                                              ; preds = %181
  store ptr %186, ptr %7, align 8, !tbaa !141
  %199 = load i32, ptr %9, align 8, !tbaa !142
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds ptr, ptr %186, i64 %200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %201, i8 0, i64 128, i1 false)
  br label %202

202:                                              ; preds = %198, %188
  %203 = phi ptr [ %186, %198 ], [ %192, %188 ]
  %204 = load i32, ptr %55, align 4, !tbaa !171
  %205 = add nsw i32 %204, 16
  store i32 %205, ptr %55, align 4, !tbaa !171
  br label %230

206:                                              ; preds = %138
  %207 = add nsw i32 %139, -1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds ptr, ptr %59, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !44
  %211 = getelementptr inbounds %struct.slice, ptr %210, i64 0, i32 25
  %212 = load i32, ptr %211, align 8, !tbaa !80
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %206
  %215 = load i32, ptr %51, align 8, !tbaa !172
  %216 = lshr i32 %215, 1
  br label %223

217:                                              ; preds = %206
  %218 = load i32, ptr %52, align 8, !tbaa !172
  %219 = getelementptr inbounds %struct.slice, ptr %210, i64 0, i32 36
  %220 = load i32, ptr %219, align 8, !tbaa !173
  %221 = add i32 %220, 1
  %222 = udiv i32 %218, %221
  br label %223

223:                                              ; preds = %217, %214
  %224 = phi i32 [ %222, %217 ], [ %216, %214 ]
  %225 = getelementptr inbounds %struct.slice, ptr %210, i64 0, i32 40
  store i32 %224, ptr %225, align 8, !tbaa !113
  store i32 1, ptr %12, align 8, !tbaa !145
  %226 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 22
  store i16 0, ptr %226, align 4, !tbaa !167
  %227 = load ptr, ptr %53, align 8, !tbaa !149
  %228 = sext i32 %139 to i64
  %229 = getelementptr inbounds ptr, ptr %59, i64 %228
  store ptr %227, ptr %229, align 8, !tbaa !44
  store ptr %79, ptr %53, align 8, !tbaa !149
  br label %230

230:                                              ; preds = %177, %202, %223
  %231 = phi i32 [ %88, %223 ], [ 3, %202 ], [ 3, %177 ]
  %232 = phi ptr [ %59, %223 ], [ %203, %202 ], [ %59, %177 ]
  %233 = load ptr, ptr %56, align 8, !tbaa !174
  %234 = load ptr, ptr %79, align 8, !tbaa !76
  %235 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 73
  %236 = load i32, ptr %235, align 4, !tbaa !150
  %237 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 9
  store i32 %236, ptr %237, align 4, !tbaa !175
  %238 = load i32, ptr %135, align 4, !tbaa !68
  %239 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 1
  store i32 %238, ptr %239, align 4, !tbaa !177
  %240 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 36
  %241 = load i32, ptr %240, align 8, !tbaa !173
  store i32 %241, ptr %233, align 4, !tbaa !178
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %230
  %244 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 37
  %245 = load i8, ptr %244, align 4, !tbaa !179
  %246 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 6
  store i8 %245, ptr %246, align 4, !tbaa !180
  br label %247

247:                                              ; preds = %243, %230
  %248 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 8
  %249 = load i32, ptr %248, align 8, !tbaa !181
  %250 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 2
  store i32 %249, ptr %250, align 4, !tbaa !182
  %251 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 6
  %252 = load i32, ptr %251, align 8, !tbaa !183
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 7
  store i8 %253, ptr %254, align 1, !tbaa !184
  %255 = icmp eq i32 %252, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 7
  %258 = load i32, ptr %257, align 4, !tbaa !185
  %259 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 8
  store i32 %258, ptr %259, align 4, !tbaa !186
  br label %260

260:                                              ; preds = %256, %247
  %261 = getelementptr inbounds %struct.video_par, ptr %234, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !52
  %263 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %262, i64 0, i32 19
  %264 = load i32, ptr %263, align 4, !tbaa !187
  switch i32 %264, label %279 [
    i32 0, label %265
    i32 1, label %272
  ]

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 14
  %267 = load i32, ptr %266, align 8, !tbaa !188
  %268 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 3
  store i32 %267, ptr %268, align 4, !tbaa !189
  %269 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 15
  %270 = load i32, ptr %269, align 4, !tbaa !190
  %271 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 4
  store i32 %270, ptr %271, align 4, !tbaa !191
  br label %279

272:                                              ; preds = %260
  %273 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 16
  %274 = load i32, ptr %273, align 8, !tbaa !69
  %275 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 5
  store i32 %274, ptr %275, align 4, !tbaa !69
  %276 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 16, i64 1
  %277 = load i32, ptr %276, align 4, !tbaa !69
  %278 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 5, i64 1
  store i32 %277, ptr %278, align 4, !tbaa !69
  br label %279

279:                                              ; preds = %260, %265, %272
  %280 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 66
  %281 = load i32, ptr %280, align 8, !tbaa !192
  %282 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 10
  store i32 %281, ptr %282, align 4, !tbaa !193
  %283 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 67
  %284 = load i32, ptr %283, align 4, !tbaa !194
  %285 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 11
  store i32 %284, ptr %285, align 4, !tbaa !195
  %286 = getelementptr inbounds %struct.slice, ptr %79, i64 0, i32 68
  %287 = load i32, ptr %286, align 8, !tbaa !196
  %288 = getelementptr inbounds %struct.old_slice_par, ptr %233, i64 0, i32 12
  store i32 %287, ptr %288, align 4, !tbaa !197
  br label %57, !llvm.loop !166

289:                                              ; preds = %60
  %290 = load ptr, ptr %7, align 8, !tbaa !141
  %291 = load ptr, ptr %290, align 8, !tbaa !44
  %292 = load i32, ptr %9, align 8, !tbaa !142
  %293 = icmp sgt i32 %292, 49
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 200) #27
  br label %295

295:                                              ; preds = %294, %289
  %296 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 179
  %297 = load ptr, ptr %296, align 8, !tbaa !146
  %298 = load i32, ptr %297, align 8, !tbaa !147
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %315, label %300

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %297, i64 0, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !148
  %303 = getelementptr inbounds %struct.slice, ptr %291, i64 0, i32 73
  %304 = load i32, ptr %303, align 4, !tbaa !150
  %305 = icmp eq i32 %302, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 2160, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  %307 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %2, ptr noundef nonnull align 8 dereferenceable(2160) %308, i64 2160, i1 false)
  %309 = getelementptr inbounds i8, ptr %308, i64 2160
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds i8, ptr %308, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %311, i64 48, i1 false)
  store ptr null, ptr %309, align 8, !tbaa !198
  tail call void @MakePPSavailable(ptr noundef %5, i32 noundef %302, ptr noundef nonnull %297) #27
  %312 = load ptr, ptr %296, align 8, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %312, ptr noundef nonnull align 8 dereferenceable(2160) %2, i64 2160, i1 false)
  %313 = getelementptr inbounds i8, ptr %312, i64 2160
  store ptr %310, ptr %313, align 8
  %314 = getelementptr inbounds i8, ptr %312, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %314, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(i64 2160, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  br label %315

315:                                              ; preds = %306, %300, %295
  tail call void @UseParameterSet(ptr noundef %291) #27
  %316 = getelementptr inbounds %struct.slice, ptr %291, i64 0, i32 6
  %317 = load i32, ptr %316, align 8, !tbaa !183
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 14
  store i32 0, ptr %320, align 8, !tbaa !199
  br label %321

321:                                              ; preds = %319, %315
  %322 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 55
  %323 = load i32, ptr %322, align 4, !tbaa !200
  %324 = getelementptr inbounds %struct.slice, ptr %291, i64 0, i32 36
  %325 = load i32, ptr %324, align 8, !tbaa !173
  %326 = add i32 %325, 1
  %327 = udiv i32 %323, %326
  %328 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 56
  store i32 %327, ptr %328, align 8, !tbaa !201
  %329 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %330 = load i32, ptr %329, align 4, !tbaa !202
  %331 = mul i32 %330, %327
  %332 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 57
  store i32 %331, ptr %332, align 4, !tbaa !203
  %333 = mul i32 %330, %323
  %334 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 58
  store i32 %333, ptr %334, align 8, !tbaa !172
  %335 = getelementptr inbounds %struct.slice, ptr %291, i64 0, i32 38
  %336 = load i32, ptr %335, align 8, !tbaa !65
  %337 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 33
  store i32 %336, ptr %337, align 4, !tbaa !204
  %338 = tail call i32 @fmo_init(ptr noundef %5, ptr noundef %291) #27
  %339 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 151
  %340 = load ptr, ptr %339, align 8, !tbaa !152
  %341 = getelementptr inbounds %struct.slice, ptr %291, i64 0, i32 66
  %342 = load i32, ptr %341, align 8, !tbaa !192
  tail call void @update_ref_list(ptr noundef %340, i32 noundef %342) #27
  %343 = load ptr, ptr %339, align 8, !tbaa !152
  %344 = load i32, ptr %341, align 8, !tbaa !192
  tail call void @update_ltref_list(ptr noundef %343, i32 noundef %344) #27
  tail call void @update_pic_num(ptr noundef %291) #27
  %345 = getelementptr inbounds %struct.slice, ptr %291, i64 0, i32 25
  %346 = load i32, ptr %345, align 8, !tbaa !80
  tail call void @init_Deblock(ptr noundef %5, i32 noundef %346) #27
  %347 = load i32, ptr %9, align 8, !tbaa !142
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %363

349:                                              ; preds = %321
  %350 = load ptr, ptr %7, align 8, !tbaa !141
  %351 = zext nneg i32 %347 to i64
  br label %352

352:                                              ; preds = %349, %352
  %353 = phi i64 [ 0, %349 ], [ %361, %352 ]
  %354 = phi i32 [ 1, %349 ], [ %360, %352 ]
  %355 = getelementptr inbounds ptr, ptr %350, i64 %353
  %356 = load ptr, ptr %355, align 8, !tbaa !44
  %357 = getelementptr inbounds %struct.slice, ptr %356, i64 0, i32 70
  %358 = load i16, ptr %357, align 4, !tbaa !205
  %359 = icmp eq i16 %358, 0
  %360 = select i1 %359, i32 0, i32 %354
  %361 = add nuw nsw i64 %353, 1
  %362 = icmp eq i64 %361, %351
  br i1 %362, label %363, label %352, !llvm.loop !206

363:                                              ; preds = %352, %321
  %364 = phi i32 [ 1, %321 ], [ %360, %352 ]
  %365 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 170
  store i32 %364, ptr %365, align 8, !tbaa !105
  %366 = icmp eq i32 %364, 1
  %367 = icmp sgt i32 %347, 0
  %368 = and i1 %366, %367
  br i1 %368, label %369, label %411

369:                                              ; preds = %363
  %370 = load ptr, ptr %7, align 8, !tbaa !141
  %371 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 105
  %372 = load i32, ptr %371, align 8, !tbaa !109
  %373 = icmp eq i32 %372, 0
  %374 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %375 = zext i32 %347 to i64
  br label %376

376:                                              ; preds = %369, %408
  %377 = phi i64 [ 0, %369 ], [ %409, %408 ]
  %378 = getelementptr inbounds ptr, ptr %370, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !44
  %380 = getelementptr inbounds %struct.slice, ptr %379, i64 0, i32 22
  %381 = load i16, ptr %380, align 4, !tbaa !167
  br i1 %373, label %387, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.slice, ptr %379, i64 0, i32 46
  %384 = load i32, ptr %383, align 8, !tbaa !110
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 36, i64 %385
  br label %387

387:                                              ; preds = %376, %382
  %388 = phi ptr [ %386, %382 ], [ %374, %376 ]
  %389 = load ptr, ptr %388, align 8, !tbaa !44
  %390 = getelementptr inbounds %struct.slice, ptr %379, i64 0, i32 39
  %391 = load i32, ptr %390, align 4, !tbaa !112
  %392 = getelementptr inbounds %struct.slice, ptr %379, i64 0, i32 25
  %393 = load i32, ptr %392, align 8, !tbaa !80
  %394 = add nsw i32 %393, 1
  %395 = mul nsw i32 %394, %391
  %396 = getelementptr inbounds %struct.slice, ptr %379, i64 0, i32 40
  %397 = load i32, ptr %396, align 8, !tbaa !113
  %398 = mul nsw i32 %397, %394
  %399 = icmp slt i32 %395, %398
  br i1 %399, label %400, label %408

400:                                              ; preds = %387
  %401 = sext i32 %395 to i64
  %402 = sext i32 %398 to i64
  br label %403

403:                                              ; preds = %400, %403
  %404 = phi i64 [ %401, %400 ], [ %406, %403 ]
  %405 = getelementptr inbounds %struct.macroblock, ptr %389, i64 %404, i32 21
  store i16 %381, ptr %405, align 4, !tbaa !207
  %406 = add nsw i64 %404, 1
  %407 = icmp eq i64 %406, %402
  br i1 %407, label %408, label %403, !llvm.loop !208

408:                                              ; preds = %403, %387
  %409 = add nuw nsw i64 %377, 1
  %410 = icmp eq i64 %409, %375
  br i1 %410, label %411, label %376, !llvm.loop !209

411:                                              ; preds = %408, %363
  %412 = load i32, ptr %9, align 8, !tbaa !142
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %436

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 141
  br label %416

416:                                              ; preds = %414, %416
  %417 = phi i64 [ 0, %414 ], [ %432, %416 ]
  %418 = getelementptr inbounds ptr, ptr %59, i64 %417
  %419 = load ptr, ptr %418, align 8, !tbaa !44
  %420 = getelementptr inbounds %struct.slice, ptr %419, i64 0, i32 43
  %421 = load i32, ptr %420, align 4, !tbaa !160
  tail call void @init_slice(ptr noundef nonnull %5, ptr noundef %419)
  tail call void @decode_slice(ptr noundef %419, i32 noundef %421)
  %422 = load i32, ptr %10, align 8, !tbaa !143
  %423 = add nsw i32 %422, 1
  store i32 %423, ptr %10, align 8, !tbaa !143
  %424 = getelementptr inbounds %struct.slice, ptr %419, i64 0, i32 21
  %425 = load i32, ptr %424, align 8, !tbaa !155
  %426 = load i32, ptr %11, align 4, !tbaa !144
  %427 = add i32 %426, %425
  store i32 %427, ptr %11, align 4, !tbaa !144
  %428 = getelementptr inbounds %struct.slice, ptr %419, i64 0, i32 123
  %429 = load i32, ptr %428, align 8, !tbaa !210
  %430 = load i32, ptr %415, align 8, !tbaa !211
  %431 = add nsw i32 %430, %429
  store i32 %431, ptr %415, align 8, !tbaa !211
  %432 = add nuw nsw i64 %417, 1
  %433 = load i32, ptr %9, align 8, !tbaa !142
  %434 = sext i32 %433 to i64
  %435 = icmp slt i64 %432, %434
  br i1 %435, label %416, label %436, !llvm.loop !212

436:                                              ; preds = %416, %411
  %437 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 136
  tail call void @exit_picture(ptr noundef nonnull %5, ptr noundef nonnull %437)
  %438 = load ptr, ptr %59, align 8, !tbaa !44
  %439 = getelementptr inbounds %struct.slice, ptr %438, i64 0, i32 35
  %440 = load i32, ptr %439, align 4, !tbaa !68
  %441 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 117
  store i32 %440, ptr %441, align 8, !tbaa !67
  ret i32 %61
}

declare void @MakePPSavailable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @UseParameterSet(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_picture(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 178
  store i32 1, ptr %8, align 8, !tbaa !213
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @exit_picture(ptr noundef %0, ptr noundef nonnull %9)
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 100
  %15 = load i32, ptr %14, align 4, !tbaa !214
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 102
  %21 = load i32, ptr %20, align 4, !tbaa !215
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %24 = load i32, ptr %23, align 8, !tbaa !216
  %25 = urem i32 %22, %24
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 103
  store i32 %25, ptr %26, align 8, !tbaa !217
  br label %27

27:                                               ; preds = %17, %13
  %28 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !183
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %33 = load i32, ptr %32, align 4, !tbaa !68
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 103
  store i32 %33, ptr %34, align 8, !tbaa !217
  br label %35

35:                                               ; preds = %31, %27
  br i1 %16, label %36, label %69

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %38 = load i32, ptr %37, align 4, !tbaa !68
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  %40 = load i32, ptr %39, align 8, !tbaa !218
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %69, label %42

42:                                               ; preds = %36
  %43 = add i32 %40, 1
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %45 = load i32, ptr %44, align 8, !tbaa !216
  %46 = urem i32 %43, %45
  %47 = icmp eq i32 %38, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 27
  %50 = load i32, ptr %49, align 4, !tbaa !219
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.inp_par, ptr %2, i64 0, i32 17
  %54 = load i32, ptr %53, align 4, !tbaa !220
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = icmp ult i32 %38, %46
  %58 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 95
  %59 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 98
  br i1 %57, label %60, label %62

60:                                               ; preds = %56
  store i32 1, ptr %58, align 8, !tbaa !223
  store i32 1, ptr %59, align 4, !tbaa !224
  tail call void @conceal_lost_frames(ptr noundef %7, ptr noundef %1) #27
  %61 = load i32, ptr %53, align 4, !tbaa !220
  store i32 %61, ptr %58, align 8, !tbaa !223
  br label %64

62:                                               ; preds = %56
  store i32 %54, ptr %58, align 8, !tbaa !223
  store i32 0, ptr %59, align 4, !tbaa !224
  tail call void @conceal_lost_frames(ptr noundef %7, ptr noundef %1) #27
  br label %64

63:                                               ; preds = %52
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #27
  br label %64

64:                                               ; preds = %63, %62, %60, %48
  %65 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 95
  %66 = load i32, ptr %65, align 8, !tbaa !223
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fill_frame_num_gap(ptr noundef %0, ptr noundef %1) #27
  br label %69

69:                                               ; preds = %64, %68, %42, %36, %35
  %70 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !181
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %75 = load i32, ptr %74, align 4, !tbaa !68
  %76 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  store i32 %75, ptr %76, align 8, !tbaa !218
  br label %77

77:                                               ; preds = %73, %69
  tail call void @decode_poc(ptr noundef %0, ptr noundef %1) #27
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 103
  %79 = load i32, ptr %78, align 8, !tbaa !217
  %80 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %81 = load i32, ptr %80, align 4, !tbaa !68
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 104
  %85 = load i32, ptr %84, align 4, !tbaa !124
  %86 = icmp eq i32 %85, 2147483647
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %89 = load i32, ptr %88, align 4, !tbaa !123
  store i32 %89, ptr %84, align 4, !tbaa !124
  br label %90

90:                                               ; preds = %87, %83, %77
  %91 = load i32, ptr %70, align 8, !tbaa !181
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %95 = load i32, ptr %94, align 4, !tbaa !123
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 92
  store i32 %95, ptr %96, align 4, !tbaa !225
  br label %97

97:                                               ; preds = %93, %90
  %98 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 38
  %99 = load i32, ptr %98, align 8, !tbaa !65
  %100 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %101 = load i32, ptr %100, align 4, !tbaa !226
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %103 = load i32, ptr %102, align 8, !tbaa !227
  %104 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %105 = load i32, ptr %104, align 4, !tbaa !228
  %106 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %107 = load i32, ptr %106, align 8, !tbaa !229
  %108 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #27
  store ptr %108, ptr %9, align 8, !tbaa !107
  %109 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %110 = load i32, ptr %109, align 4, !tbaa !169
  %111 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 2
  store i32 %110, ptr %111, align 8, !tbaa !230
  %112 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  %113 = load i32, ptr %112, align 8, !tbaa !170
  %114 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 3
  store i32 %113, ptr %114, align 4, !tbaa !231
  %115 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %116 = load i32, ptr %115, align 4, !tbaa !123
  %117 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 4
  store i32 %116, ptr %117, align 8, !tbaa !232
  %118 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 29
  %119 = load i32, ptr %118, align 4, !tbaa !233
  %120 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 55
  store i32 %119, ptr %120, align 8, !tbaa !234
  %121 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 30
  %122 = load i32, ptr %121, align 8, !tbaa !235
  %123 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 57
  store i32 %122, ptr %123, align 4, !tbaa !236
  %124 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  %126 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %125, i64 0, i32 27
  %127 = load i32, ptr %126, align 8, !tbaa !237
  %128 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 56
  store i32 %127, ptr %128, align 4, !tbaa !69
  %129 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %125, i64 0, i32 28
  %130 = load i32, ptr %129, align 4, !tbaa !238
  %131 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 56, i64 1
  store i32 %130, ptr %131, align 4, !tbaa !69
  %132 = load i32, ptr %98, align 8, !tbaa !65
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %97
  %135 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 25
  %136 = load i32, ptr %135, align 8, !tbaa !80
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i32 0, i32 3
  br label %139

139:                                              ; preds = %97, %134
  %140 = phi i32 [ %138, %134 ], [ 1, %97 ]
  %141 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 73
  store i32 %140, ptr %141, align 4, !tbaa !239
  %142 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 66
  %143 = load i32, ptr %142, align 8, !tbaa !192
  %144 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 64
  store i32 %143, ptr %144, align 8, !tbaa !240
  %145 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 67
  %146 = load i32, ptr %145, align 4, !tbaa !194
  %147 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 65
  store i32 %146, ptr %147, align 4, !tbaa !241
  %148 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 68
  %149 = load i32, ptr %148, align 8, !tbaa !196
  %150 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 66
  store i32 %149, ptr %150, align 8, !tbaa !242
  %151 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 140
  %152 = load ptr, ptr %151, align 8, !tbaa !243
  %153 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %154 = load i32, ptr %153, align 4, !tbaa !203
  %155 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 16
  %156 = load i32, ptr %155, align 8, !tbaa !34
  tail call void @ercReset(ptr noundef %152, i32 noundef %154, i32 noundef %154, i32 noundef %156) #27
  %157 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 141
  store i32 0, ptr %157, align 8, !tbaa !211
  %158 = load i32, ptr %98, align 8, !tbaa !65
  switch i32 %158, label %175 [
    i32 1, label %159
    i32 2, label %165
    i32 0, label %172
  ]

159:                                              ; preds = %139
  %160 = load i32, ptr %109, align 4, !tbaa !169
  %161 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 1
  store i32 %160, ptr %161, align 4, !tbaa !95
  %162 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %163 = load i32, ptr %162, align 8, !tbaa !199
  %164 = shl nsw i32 %163, 1
  store i32 %164, ptr %162, align 8, !tbaa !199
  br label %176

165:                                              ; preds = %139
  %166 = load i32, ptr %112, align 8, !tbaa !170
  %167 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 1
  store i32 %166, ptr %167, align 4, !tbaa !95
  %168 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %169 = load i32, ptr %168, align 8, !tbaa !199
  %170 = shl nsw i32 %169, 1
  %171 = or disjoint i32 %170, 1
  store i32 %171, ptr %168, align 8, !tbaa !199
  br label %176

172:                                              ; preds = %139
  %173 = load i32, ptr %115, align 4, !tbaa !123
  %174 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 1
  store i32 %173, ptr %174, align 4, !tbaa !95
  br label %176

175:                                              ; preds = %139
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 235) #27
  br label %176

176:                                              ; preds = %175, %172, %165, %159
  %177 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 22
  %178 = load i32, ptr %177, align 8, !tbaa !163
  %179 = icmp sgt i32 %178, 4
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = tail call i32 @set_ec_flag(ptr noundef %0, i32 noundef 1) #27
  store i32 0, ptr %177, align 8, !tbaa !163
  br label %182

182:                                              ; preds = %180, %176
  %183 = load ptr, ptr %124, align 8, !tbaa !59
  %184 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %183, i64 0, i32 3
  %185 = load i32, ptr %184, align 4, !tbaa !81
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 29
  %189 = load ptr, ptr %188, align 8, !tbaa !244
  %190 = load ptr, ptr %189, align 8, !tbaa !44
  %191 = load ptr, ptr %190, align 8, !tbaa !44
  %192 = load ptr, ptr %191, align 8, !tbaa !44
  %193 = load i32, ptr %153, align 4, !tbaa !203
  %194 = mul i32 %193, 48
  %195 = zext i32 %194 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %192, i8 -1, i64 %195, i1 false)
  br label %196

196:                                              ; preds = %187, %182
  %197 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %198 = load i32, ptr %197, align 8, !tbaa !109
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %247, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %202 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  br label %203

203:                                              ; preds = %200, %244
  %204 = phi i64 [ 0, %200 ], [ %245, %244 ]
  %205 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !44
  %207 = load i32, ptr %153, align 4, !tbaa !203
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %204
  %211 = load ptr, ptr %210, align 8, !tbaa !44
  br label %212

212:                                              ; preds = %209, %212
  %213 = phi i32 [ %219, %212 ], [ 0, %209 ]
  %214 = phi ptr [ %215, %212 ], [ %211, %209 ]
  %215 = getelementptr inbounds %struct.macroblock, ptr %214, i64 1
  %216 = getelementptr inbounds %struct.macroblock, ptr %214, i64 0, i32 21
  store i16 -1, ptr %216, align 4, !tbaa !207
  %217 = getelementptr inbounds %struct.macroblock, ptr %214, i64 0, i32 22
  store i8 1, ptr %217, align 2, !tbaa !245
  %218 = getelementptr inbounds %struct.macroblock, ptr %214, i64 0, i32 23
  store i8 0, ptr %218, align 1, !tbaa !246
  %219 = add nuw nsw i32 %213, 1
  %220 = icmp eq i32 %219, %207
  br i1 %220, label %221, label %212, !llvm.loop !247

221:                                              ; preds = %212, %203
  %222 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %204
  %223 = load ptr, ptr %222, align 8, !tbaa !44
  %224 = load ptr, ptr %223, align 8, !tbaa !44
  %225 = load i32, ptr %201, align 4, !tbaa !200
  %226 = shl i32 %225, 4
  %227 = load i32, ptr %202, align 4, !tbaa !202
  %228 = mul i32 %226, %227
  %229 = sext i32 %228 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %224, i8 2, i64 %229, i1 false)
  %230 = load ptr, ptr %124, align 8, !tbaa !59
  %231 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %230, i64 0, i32 30
  %232 = load i32, ptr %231, align 4, !tbaa !248
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %221
  %235 = load i32, ptr %153, align 4, !tbaa !203
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234, %237
  %238 = phi i64 [ %240, %237 ], [ 0, %234 ]
  %239 = getelementptr inbounds i8, ptr %206, i64 %238
  store i8 1, ptr %239, align 1, !tbaa !45
  %240 = add nuw nsw i64 %238, 1
  %241 = load i32, ptr %153, align 4, !tbaa !203
  %242 = sext i32 %241 to i64
  %243 = icmp slt i64 %240, %242
  br i1 %243, label %237, label %244, !llvm.loop !249

244:                                              ; preds = %237, %234, %221
  %245 = add nuw nsw i64 %204, 1
  %246 = icmp eq i64 %245, 3
  br i1 %246, label %291, label %203, !llvm.loop !250

247:                                              ; preds = %196
  %248 = load i32, ptr %153, align 4, !tbaa !203
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %252 = load ptr, ptr %251, align 8, !tbaa !115
  br label %253

253:                                              ; preds = %250, %253
  %254 = phi i32 [ %260, %253 ], [ 0, %250 ]
  %255 = phi ptr [ %256, %253 ], [ %252, %250 ]
  %256 = getelementptr inbounds %struct.macroblock, ptr %255, i64 1
  %257 = getelementptr inbounds %struct.macroblock, ptr %255, i64 0, i32 21
  store i16 -1, ptr %257, align 4, !tbaa !207
  %258 = getelementptr inbounds %struct.macroblock, ptr %255, i64 0, i32 22
  store i8 1, ptr %258, align 2, !tbaa !245
  %259 = getelementptr inbounds %struct.macroblock, ptr %255, i64 0, i32 23
  store i8 0, ptr %259, align 1, !tbaa !246
  %260 = add nuw nsw i32 %254, 1
  %261 = icmp eq i32 %260, %248
  br i1 %261, label %262, label %253, !llvm.loop !251

262:                                              ; preds = %253, %247
  %263 = load ptr, ptr %124, align 8, !tbaa !59
  %264 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %263, i64 0, i32 30
  %265 = load i32, ptr %264, align 4, !tbaa !248
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %280, label %267

267:                                              ; preds = %262
  %268 = load i32, ptr %153, align 4, !tbaa !203
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  br label %272

272:                                              ; preds = %270, %272
  %273 = phi i64 [ 0, %270 ], [ %276, %272 ]
  %274 = load ptr, ptr %271, align 8, !tbaa !121
  %275 = getelementptr inbounds i8, ptr %274, i64 %273
  store i8 1, ptr %275, align 1, !tbaa !45
  %276 = add nuw nsw i64 %273, 1
  %277 = load i32, ptr %153, align 4, !tbaa !203
  %278 = sext i32 %277 to i64
  %279 = icmp slt i64 %276, %278
  br i1 %279, label %272, label %280, !llvm.loop !252

280:                                              ; preds = %272, %267, %262
  %281 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  %282 = load ptr, ptr %281, align 8, !tbaa !119
  %283 = load ptr, ptr %282, align 8, !tbaa !44
  %284 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %285 = load i32, ptr %284, align 4, !tbaa !200
  %286 = shl i32 %285, 4
  %287 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %288 = load i32, ptr %287, align 4, !tbaa !202
  %289 = mul i32 %286, %288
  %290 = sext i32 %289 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %283, i8 2, i64 %290, i1 false)
  br label %291

291:                                              ; preds = %244, %280
  %292 = load i32, ptr %177, align 8, !tbaa !163
  %293 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 43
  store i32 %292, ptr %293, align 8, !tbaa !253
  %294 = load i32, ptr %70, align 8, !tbaa !181
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 11
  store i32 %296, ptr %297, align 4, !tbaa !108
  %298 = load i32, ptr %28, align 8, !tbaa !183
  %299 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 44
  store i32 %298, ptr %299, align 4, !tbaa !254
  %300 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 51
  %301 = load i32, ptr %300, align 4, !tbaa !255
  %302 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 45
  store i32 %301, ptr %302, align 8, !tbaa !256
  %303 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 52
  %304 = load i32, ptr %303, align 8, !tbaa !257
  %305 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 46
  store i32 %304, ptr %305, align 4, !tbaa !258
  %306 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 53
  %307 = load i32, ptr %306, align 4, !tbaa !259
  %308 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 47
  store i32 %307, ptr %308, align 8, !tbaa !260
  %309 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 54
  %310 = load ptr, ptr %309, align 8, !tbaa !261
  %311 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 58
  store ptr %310, ptr %311, align 8, !tbaa !262
  store ptr null, ptr %309, align 8, !tbaa !261
  %312 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 25
  %313 = load i32, ptr %312, align 8, !tbaa !80
  %314 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 25
  store i32 %313, ptr %314, align 4, !tbaa !263
  %315 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %316 = load i32, ptr %315, align 4, !tbaa !202
  %317 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 26
  store i32 %316, ptr %317, align 8, !tbaa !264
  %318 = icmp eq i32 %313, 0
  %319 = select i1 %318, ptr @get_mb_block_pos_normal, ptr @get_mb_block_pos_mbaff
  %320 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 161
  store ptr %319, ptr %320, align 8, !tbaa !265
  %321 = select i1 %318, ptr @getNonAffNeighbour, ptr @getAffNeighbour
  %322 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 160
  store ptr %321, ptr %322, align 8, !tbaa !266
  %323 = load i32, ptr %80, align 4, !tbaa !68
  %324 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 7
  store i32 %323, ptr %324, align 4, !tbaa !267
  %325 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 5
  store i32 %323, ptr %325, align 4, !tbaa !268
  %326 = load i32, ptr %78, align 8, !tbaa !217
  %327 = icmp eq i32 %323, %326
  %328 = zext i1 %327 to i32
  %329 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 6
  store i32 %328, ptr %329, align 8, !tbaa !269
  %330 = load i32, ptr %98, align 8, !tbaa !65
  %331 = icmp eq i32 %330, 0
  %332 = zext i1 %331 to i32
  %333 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 24
  store i32 %332, ptr %333, align 8, !tbaa !270
  %334 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 9
  %335 = load i32, ptr %334, align 4, !tbaa !70
  %336 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 48
  store i32 %335, ptr %336, align 4, !tbaa !271
  %337 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 30
  %338 = load i32, ptr %337, align 4, !tbaa !272
  %339 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 49
  store i32 %338, ptr %339, align 8, !tbaa !273
  %340 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 33
  %341 = load i32, ptr %340, align 4, !tbaa !274
  %342 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 50
  store i32 %341, ptr %342, align 4, !tbaa !275
  %343 = icmp eq i32 %341, 0
  br i1 %343, label %357, label %344

344:                                              ; preds = %291
  %345 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 34
  %346 = load i32, ptr %345, align 4, !tbaa !276
  %347 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 51
  store i32 %346, ptr %347, align 8, !tbaa !277
  %348 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 35
  %349 = load i32, ptr %348, align 4, !tbaa !278
  %350 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 52
  store i32 %349, ptr %350, align 4, !tbaa !279
  %351 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 36
  %352 = load i32, ptr %351, align 4, !tbaa !280
  %353 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 53
  store i32 %352, ptr %353, align 8, !tbaa !281
  %354 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 37
  %355 = load i32, ptr %354, align 4, !tbaa !282
  %356 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 54
  store i32 %355, ptr %356, align 4, !tbaa !283
  br label %357

357:                                              ; preds = %344, %291
  %358 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 158
  %359 = load ptr, ptr %358, align 8, !tbaa !284
  %360 = load i32, ptr %359, align 8, !tbaa !285
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %387, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %359, i64 0, i32 2
  %364 = load i8, ptr %363, align 8, !tbaa !287
  %365 = zext nneg i8 %364 to i32
  %366 = shl nuw i32 1, %365
  %367 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 60
  store i32 1, ptr %367, align 4, !tbaa !288
  %368 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %359, i64 0, i32 4
  %369 = load i32, ptr %368, align 4, !tbaa !289
  %370 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 61
  store i32 %369, ptr %370, align 8, !tbaa !290
  %371 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %359, i64 0, i32 3
  %372 = load i8, ptr %371, align 1, !tbaa !291
  %373 = zext i8 %372 to i32
  %374 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 62
  store i32 %373, ptr %374, align 4, !tbaa !292
  %375 = sext i32 %366 to i64
  %376 = shl nsw i64 %375, 2
  %377 = tail call noalias ptr @malloc(i64 noundef %376) #30
  %378 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 63
  store ptr %377, ptr %378, align 8, !tbaa !293
  %379 = icmp eq ptr %377, null
  br i1 %379, label %380, label %381

380:                                              ; preds = %362
  tail call void @no_mem_exit(ptr noundef nonnull @.str.49) #27
  br label %381

381:                                              ; preds = %380, %362
  %382 = load ptr, ptr %378, align 8, !tbaa !293
  %383 = load ptr, ptr %358, align 8, !tbaa !284
  %384 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %383, i64 0, i32 6
  %385 = shl nsw i64 %375, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %382, ptr noundef nonnull align 4 dereferenceable(1) %384, i64 %385, i1 false)
  %386 = load ptr, ptr %358, align 8, !tbaa !284
  tail call void @update_tone_mapping_sei(ptr noundef %386) #27
  br label %389

387:                                              ; preds = %357
  %388 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 60
  store i32 0, ptr %388, align 4, !tbaa !288
  br label %389

389:                                              ; preds = %387, %381
  %390 = load i32, ptr %197, align 8, !tbaa !109
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %411, label %392

392:                                              ; preds = %389
  %393 = load ptr, ptr %9, align 8, !tbaa !107
  %394 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137
  store ptr %393, ptr %394, align 8, !tbaa !44
  %395 = load i32, ptr %98, align 8, !tbaa !65
  %396 = load i32, ptr %100, align 4, !tbaa !226
  %397 = load i32, ptr %102, align 8, !tbaa !227
  %398 = load i32, ptr %104, align 4, !tbaa !228
  %399 = load i32, ptr %106, align 8, !tbaa !229
  %400 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef %395, i32 noundef %396, i32 noundef %397, i32 noundef %398, i32 noundef %399) #27
  %401 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 1
  store ptr %400, ptr %401, align 8, !tbaa !44
  %402 = load ptr, ptr %394, align 8, !tbaa !44
  tail call void @copy_dec_picture_JV(ptr noundef %0, ptr noundef %400, ptr noundef %402)
  %403 = load i32, ptr %98, align 8, !tbaa !65
  %404 = load i32, ptr %100, align 4, !tbaa !226
  %405 = load i32, ptr %102, align 8, !tbaa !227
  %406 = load i32, ptr %104, align 4, !tbaa !228
  %407 = load i32, ptr %106, align 8, !tbaa !229
  %408 = tail call ptr @alloc_storable_picture(ptr noundef %0, i32 noundef %403, i32 noundef %404, i32 noundef %405, i32 noundef %406, i32 noundef %407) #27
  %409 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 2
  store ptr %408, ptr %409, align 8, !tbaa !44
  %410 = load ptr, ptr %394, align 8, !tbaa !44
  tail call void @copy_dec_picture_JV(ptr noundef %0, ptr noundef %408, ptr noundef %410)
  br label %411

411:                                              ; preds = %392, %389
  ret void
}

declare ptr @malloc_slice(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_new_slice(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 171
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  store i32 -1, ptr %7, align 8, !tbaa !61
  %8 = tail call i32 @read_next_nalu(ptr noundef %2, ptr noundef %6) #27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %472, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 16
  %12 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 4
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %14 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 6
  %15 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 7
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69
  %19 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 4
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 74
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 75
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 5
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 41
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 28
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %29 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 6
  %30 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  %31 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 136
  %32 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 12
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  %34 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  %35 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %36 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %40 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %41 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 7
  %42 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 7
  %43 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %44 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %45 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %46 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  %47 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 6
  %48 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  %49 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %50 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %51 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 100
  %52 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 101
  %53 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  %54 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  %55 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 101
  %56 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %57 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  br label %58

58:                                               ; preds = %10, %469
  %59 = phi ptr [ null, %10 ], [ %102, %469 ]
  %60 = load i32, ptr %11, align 8, !tbaa !295
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load i32, ptr %12, align 8, !tbaa !296
  switch i32 %63, label %99 [
    i32 14, label %64
    i32 20, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = load ptr, ptr %13, align 8, !tbaa !298
  %66 = load ptr, ptr %65, align 8, !tbaa !299
  %67 = getelementptr inbounds %struct.bit_stream, ptr %66, i64 0, i32 5
  store i32 0, ptr %67, align 8, !tbaa !302
  store i32 0, ptr %66, align 8, !tbaa !304
  %68 = getelementptr inbounds %struct.bit_stream, ptr %66, i64 0, i32 2
  store i32 0, ptr %68, align 8, !tbaa !305
  %69 = getelementptr inbounds %struct.bit_stream, ptr %66, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !306
  %71 = load ptr, ptr %14, align 8, !tbaa !307
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load i32, ptr %15, align 4, !tbaa !308
  %74 = add i32 %73, -1
  %75 = sext i32 %74 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr nonnull align 1 %72, i64 %75, i1 false)
  %76 = load ptr, ptr %69, align 8, !tbaa !306
  %77 = load i32, ptr %15, align 4, !tbaa !308
  %78 = add i32 %77, -1
  %79 = tail call i32 @RBSPtoSODB(ptr noundef %76, i32 noundef %78) #27
  %80 = getelementptr inbounds %struct.bit_stream, ptr %66, i64 0, i32 3
  store i32 %79, ptr %80, align 4, !tbaa !309
  %81 = getelementptr inbounds %struct.bit_stream, ptr %66, i64 0, i32 1
  store i32 %79, ptr %81, align 4, !tbaa !310
  %82 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef nonnull %66) #27
  store i32 %82, ptr %7, align 8, !tbaa !61
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %64
  tail call void (...) @nal_unit_header_svc_extension() #27
  br label %89

85:                                               ; preds = %64
  tail call void @nal_unit_header_mvc_extension(ptr noundef nonnull %16, ptr noundef nonnull %66) #27
  %86 = load i32, ptr %12, align 8, !tbaa !296
  %87 = icmp eq i32 %86, 14
  %88 = zext i1 %87 to i32
  store i32 %88, ptr %17, align 4, !tbaa !311
  br label %89

89:                                               ; preds = %85, %84
  %90 = load i32, ptr %12, align 8, !tbaa !296
  %91 = icmp eq i32 %90, 20
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, ptr %7, align 8, !tbaa !61
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, ptr %18, align 4, !tbaa !312
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 5, i32 1
  store i32 %98, ptr %12, align 8, !tbaa !296
  br label %99

99:                                               ; preds = %62, %89, %92, %95, %58
  %100 = phi ptr [ %59, %62 ], [ %59, %58 ], [ %66, %89 ], [ %66, %95 ], [ %66, %92 ]
  br label %101

101:                                              ; preds = %99, %415
  %102 = phi ptr [ %416, %415 ], [ %100, %99 ]
  %103 = load i32, ptr %19, align 8, !tbaa !296
  switch i32 %103, label %463 [
    i32 1, label %104
    i32 5, label %104
    i32 2, label %286
    i32 3, label %420
    i32 4, label %425
    i32 6, label %430
    i32 8, label %433
    i32 7, label %434
    i32 9, label %469
    i32 10, label %469
    i32 11, label %469
    i32 12, label %435
    i32 24, label %469
    i32 14, label %442
    i32 15, label %446
    i32 20, label %455
  ]

104:                                              ; preds = %101, %101
  %105 = load i32, ptr %51, align 4, !tbaa !214
  %106 = icmp ne i32 %105, 0
  %107 = icmp eq i32 %103, 5
  %108 = or i1 %107, %106
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, ptr %52, align 8, !tbaa !313
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = icmp eq i32 %103, 5
  br i1 %113, label %116, label %114

114:                                              ; preds = %112
  %115 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  store i32 1, ptr %53, align 4, !tbaa !79
  br label %117

116:                                              ; preds = %112
  store i32 0, ptr %54, align 4, !tbaa !79
  br label %117

117:                                              ; preds = %114, %116, %109
  store i32 1, ptr %52, align 8, !tbaa !313
  br label %118

118:                                              ; preds = %104, %117
  %119 = load i32, ptr %55, align 8, !tbaa !313
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %469, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 100
  %123 = load i32, ptr %19, align 8, !tbaa !296
  %124 = icmp eq i32 %123, 5
  %125 = zext i1 %124 to i32
  %126 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  store i32 %125, ptr %126, align 8, !tbaa !183
  %127 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 5
  %128 = load i32, ptr %127, align 4, !tbaa !314
  %129 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  store i32 %128, ptr %129, align 8, !tbaa !181
  %130 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  store i32 0, ptr %130, align 8, !tbaa !315
  %131 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 41
  store i32 1, ptr %131, align 4, !tbaa !316
  %132 = load i32, ptr %7, align 8, !tbaa !61
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %155, label %134

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %136 = load ptr, ptr %135, align 8, !tbaa !298
  %137 = load ptr, ptr %136, align 8, !tbaa !299
  %138 = getelementptr inbounds %struct.bit_stream, ptr %137, i64 0, i32 5
  store i32 0, ptr %138, align 8, !tbaa !302
  store i32 0, ptr %137, align 8, !tbaa !304
  %139 = getelementptr inbounds %struct.bit_stream, ptr %137, i64 0, i32 2
  store i32 0, ptr %139, align 8, !tbaa !305
  %140 = getelementptr inbounds %struct.bit_stream, ptr %137, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !306
  %142 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 6
  %143 = load ptr, ptr %142, align 8, !tbaa !307
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  %145 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !308
  %147 = add i32 %146, -1
  %148 = sext i32 %147 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr nonnull align 1 %144, i64 %148, i1 false)
  %149 = load ptr, ptr %140, align 8, !tbaa !306
  %150 = load i32, ptr %145, align 4, !tbaa !308
  %151 = add i32 %150, -1
  %152 = tail call i32 @RBSPtoSODB(ptr noundef %149, i32 noundef %151) #27
  %153 = getelementptr inbounds %struct.bit_stream, ptr %137, i64 0, i32 3
  store i32 %152, ptr %153, align 4, !tbaa !309
  %154 = getelementptr inbounds %struct.bit_stream, ptr %137, i64 0, i32 1
  store i32 %152, ptr %154, align 4, !tbaa !310
  br label %155

155:                                              ; preds = %134, %121
  %156 = phi ptr [ %137, %134 ], [ %102, %121 ]
  %157 = tail call i32 @FirstPartOfSliceHeader(ptr noundef nonnull %0) #27
  tail call void @UseParameterSet(ptr noundef nonnull %0) #27
  %158 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  %160 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  store ptr %159, ptr %160, align 8, !tbaa !49
  %161 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !59
  %163 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  store ptr %162, ptr %163, align 8, !tbaa !58
  %164 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %162, i64 0, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !317
  %166 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 9
  store i32 %165, ptr %166, align 4, !tbaa !318
  %167 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %159, i64 0, i32 9
  %168 = load i32, ptr %167, align 4, !tbaa !70
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %170, label %175

170:                                              ; preds = %155
  %171 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 105
  %172 = load i32, ptr %171, align 8, !tbaa !109
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  br label %175

175:                                              ; preds = %170, %155
  %176 = phi i32 [ 0, %155 ], [ %174, %170 ]
  %177 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 10
  store i32 %176, ptr %177, align 8, !tbaa !319
  %178 = tail call i32 @RestOfSliceHeader(ptr noundef nonnull %0) #27
  %179 = load i32, ptr %7, align 8, !tbaa !61
  switch i32 %179, label %227 [
    i32 0, label %180
    i32 -1, label %188
  ]

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !320
  %183 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %182, ptr %183, align 8, !tbaa !192
  %184 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !321
  %186 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 %185, ptr %186, align 4, !tbaa !194
  %187 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 4
  br label %223

188:                                              ; preds = %175
  %189 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 5
  %190 = load ptr, ptr %189, align 8, !tbaa !322
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = tail call i32 @GetBaseViewId(ptr noundef %2, ptr noundef nonnull %189) #27
  %194 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %193, ptr %194, align 8, !tbaa !192
  %195 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 7
  %196 = load i32, ptr %195, align 4, !tbaa !311
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 5
  %200 = load i32, ptr %199, align 4, !tbaa !321
  %201 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 %200, ptr %201, align 4, !tbaa !194
  %202 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 4
  br label %223

203:                                              ; preds = %192
  %204 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 1, ptr %204, align 4, !tbaa !194
  br label %223

205:                                              ; preds = %188
  %206 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 7
  %207 = load i32, ptr %206, align 4, !tbaa !311
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 2
  %211 = load i32, ptr %210, align 4, !tbaa !320
  %212 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %211, ptr %212, align 8, !tbaa !192
  %213 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 5
  %214 = load i32, ptr %213, align 4, !tbaa !321
  %215 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 %214, ptr %215, align 4, !tbaa !194
  %216 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 4
  br label %223

217:                                              ; preds = %205
  %218 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %190, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !323
  %220 = load i32, ptr %219, align 4, !tbaa !69
  %221 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %220, ptr %221, align 8, !tbaa !192
  %222 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 1, ptr %222, align 4, !tbaa !194
  br label %223

223:                                              ; preds = %180, %203, %198, %217, %209
  %224 = phi ptr [ %216, %209 ], [ %126, %217 ], [ %202, %198 ], [ %126, %203 ], [ %187, %180 ]
  %225 = load i32, ptr %224, align 4, !tbaa !69
  %226 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  store i32 %225, ptr %226, align 8, !tbaa !196
  br label %227

227:                                              ; preds = %223, %175
  tail call void @assign_quant_params(ptr noundef nonnull %0) #27
  %228 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %229 = load i32, ptr %228, align 4, !tbaa !66
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 118
  %233 = load i32, ptr %232, align 4, !tbaa !162
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 119
  %237 = load i32, ptr %236, align 8, !tbaa !161
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %241 = load i32, ptr %240, align 8, !tbaa !163
  %242 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 136
  %243 = load ptr, ptr %242, align 8, !tbaa !107
  %244 = getelementptr inbounds %struct.storable_picture, ptr %243, i64 0, i32 43
  store i32 %241, ptr %244, align 8, !tbaa !253
  br label %245

245:                                              ; preds = %239, %235, %231, %227
  %246 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 136
  %247 = load ptr, ptr %246, align 8, !tbaa !107
  %248 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 12
  %249 = load ptr, ptr %248, align 8, !tbaa !174
  %250 = tail call i32 @is_new_picture(ptr noundef %247, ptr noundef nonnull %0, ptr noundef %249), !range !326
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 16
  %254 = load i32, ptr %253, align 8, !tbaa !142
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  tail call fastcc void @init_picture(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4)
  br label %257

257:                                              ; preds = %256, %252
  tail call void @CheckZeroByteVCL(ptr noundef %2, ptr noundef %6) #27
  br label %258

258:                                              ; preds = %245, %257
  %259 = phi i32 [ 2, %257 ], [ 3, %245 ]
  tail call void @setup_slice_methods(ptr noundef nonnull %0) #27
  %260 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %261 = load i32, ptr %260, align 8, !tbaa !80
  %262 = icmp ne i32 %261, 0
  %263 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  %264 = load i32, ptr %263, align 4, !tbaa !112
  %265 = zext i1 %262 to i32
  %266 = shl i32 %264, %265
  %267 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  store i32 %266, ptr %267, align 4, !tbaa !136
  %268 = load ptr, ptr %161, align 8, !tbaa !59
  %269 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %268, i64 0, i32 3
  %270 = load i32, ptr %269, align 4, !tbaa !81
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %285, label %272

272:                                              ; preds = %258
  %273 = getelementptr inbounds %struct.bit_stream, ptr %156, i64 0, i32 2
  %274 = load i32, ptr %273, align 8, !tbaa !305
  %275 = sdiv i32 %274, 8
  %276 = and i32 %274, 7
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i32
  %279 = add nsw i32 %275, %278
  %280 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %281 = load ptr, ptr %280, align 8, !tbaa !298
  %282 = getelementptr inbounds %struct.datapartition, ptr %281, i64 0, i32 1
  %283 = getelementptr inbounds %struct.bit_stream, ptr %156, i64 0, i32 4
  %284 = load ptr, ptr %283, align 8, !tbaa !306
  tail call void @arideco_start_decoding(ptr noundef nonnull %282, ptr noundef %284, i32 noundef %279, ptr noundef %156) #27
  br label %285

285:                                              ; preds = %272, %258
  store i32 0, ptr %122, align 4, !tbaa !214
  br label %472

286:                                              ; preds = %101
  store i32 1, ptr %20, align 8, !tbaa !327
  store i32 1, ptr %21, align 4, !tbaa !328
  store i32 0, ptr %22, align 8, !tbaa !183
  %287 = load i32, ptr %23, align 4, !tbaa !314
  store i32 %287, ptr %24, align 8, !tbaa !181
  store i32 1, ptr %25, align 8, !tbaa !315
  store i32 3, ptr %26, align 4, !tbaa !316
  store i32 0, ptr %27, align 8, !tbaa !104
  %288 = load ptr, ptr %28, align 8, !tbaa !298
  %289 = load ptr, ptr %288, align 8, !tbaa !299
  %290 = getelementptr inbounds %struct.bit_stream, ptr %289, i64 0, i32 5
  store i32 0, ptr %290, align 8, !tbaa !302
  store i32 0, ptr %289, align 8, !tbaa !304
  %291 = getelementptr inbounds %struct.bit_stream, ptr %289, i64 0, i32 2
  store i32 0, ptr %291, align 8, !tbaa !305
  %292 = getelementptr inbounds %struct.bit_stream, ptr %289, i64 0, i32 4
  %293 = load ptr, ptr %292, align 8, !tbaa !306
  %294 = load ptr, ptr %29, align 8, !tbaa !307
  %295 = getelementptr inbounds i8, ptr %294, i64 1
  %296 = load i32, ptr %30, align 4, !tbaa !308
  %297 = add i32 %296, -1
  %298 = zext i32 %297 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %293, ptr nonnull align 1 %295, i64 %298, i1 false)
  %299 = load ptr, ptr %292, align 8, !tbaa !306
  %300 = load i32, ptr %30, align 4, !tbaa !308
  %301 = add i32 %300, -1
  %302 = tail call i32 @RBSPtoSODB(ptr noundef %299, i32 noundef %301) #27
  %303 = getelementptr inbounds %struct.bit_stream, ptr %289, i64 0, i32 3
  store i32 %302, ptr %303, align 4, !tbaa !309
  %304 = getelementptr inbounds %struct.bit_stream, ptr %289, i64 0, i32 1
  store i32 %302, ptr %304, align 4, !tbaa !310
  %305 = tail call i32 @FirstPartOfSliceHeader(ptr noundef nonnull %0) #27
  tail call void @UseParameterSet(ptr noundef nonnull %0) #27
  %306 = tail call i32 @RestOfSliceHeader(ptr noundef nonnull %0) #27
  %307 = tail call i32 @fmo_init(ptr noundef %2, ptr noundef nonnull %0) #27
  %308 = load ptr, ptr %31, align 8, !tbaa !107
  %309 = load ptr, ptr %32, align 8, !tbaa !174
  %310 = tail call i32 @is_new_picture(ptr noundef %308, ptr noundef nonnull %0, ptr noundef %309), !range !326
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %286
  tail call fastcc void @init_picture(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4)
  tail call void @CheckZeroByteVCL(ptr noundef %2, ptr noundef %6) #27
  br label %313

313:                                              ; preds = %286, %312
  %314 = phi i32 [ 2, %312 ], [ 3, %286 ]
  tail call void @update_pic_num(ptr noundef nonnull %0) #27
  %315 = load ptr, ptr %33, align 8, !tbaa !60
  tail call void %315(ptr noundef nonnull %0) #27
  tail call void @reorder_lists(ptr noundef nonnull %0)
  %316 = load i32, ptr %34, align 4, !tbaa !204
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  tail call void @init_mbaff_lists(ptr noundef %2, ptr noundef nonnull %0) #27
  br label %319

319:                                              ; preds = %318, %313
  %320 = load i32, ptr %35, align 8, !tbaa !80
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i32, ptr %36, align 4, !tbaa !112
  %324 = shl i32 %323, 1
  store i32 %324, ptr %37, align 4, !tbaa !136
  br label %327

325:                                              ; preds = %319
  %326 = load i32, ptr %38, align 4, !tbaa !112
  store i32 %326, ptr %39, align 4, !tbaa !136
  br label %327

327:                                              ; preds = %325, %322
  %328 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef nonnull %289) #27
  %329 = load ptr, ptr %40, align 8, !tbaa !59
  %330 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %329, i64 0, i32 3
  %331 = load i32, ptr %330, align 4, !tbaa !81
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %327
  tail call void @error(ptr noundef nonnull @.str.13, i32 noundef 500) #27
  br label %334

334:                                              ; preds = %333, %327
  %335 = tail call i32 @read_next_nalu(ptr noundef %2, ptr noundef %6) #27
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %472, label %337

337:                                              ; preds = %334
  %338 = load i32, ptr %19, align 8, !tbaa !296
  %339 = icmp eq i32 %338, 3
  br i1 %339, label %340, label %376

340:                                              ; preds = %337
  %341 = load ptr, ptr %28, align 8, !tbaa !298
  %342 = getelementptr inbounds %struct.datapartition, ptr %341, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !299
  %344 = getelementptr inbounds %struct.bit_stream, ptr %343, i64 0, i32 5
  store i32 0, ptr %344, align 8, !tbaa !302
  store i32 0, ptr %343, align 8, !tbaa !304
  %345 = getelementptr inbounds %struct.bit_stream, ptr %343, i64 0, i32 2
  store i32 0, ptr %345, align 8, !tbaa !305
  %346 = getelementptr inbounds %struct.bit_stream, ptr %343, i64 0, i32 4
  %347 = load ptr, ptr %346, align 8, !tbaa !306
  %348 = load ptr, ptr %29, align 8, !tbaa !307
  %349 = getelementptr inbounds i8, ptr %348, i64 1
  %350 = load i32, ptr %30, align 4, !tbaa !308
  %351 = add i32 %350, -1
  %352 = zext i32 %351 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %347, ptr nonnull align 1 %349, i64 %352, i1 false)
  %353 = load ptr, ptr %346, align 8, !tbaa !306
  %354 = load i32, ptr %30, align 4, !tbaa !308
  %355 = add i32 %354, -1
  %356 = tail call i32 @RBSPtoSODB(ptr noundef %353, i32 noundef %355) #27
  %357 = getelementptr inbounds %struct.bit_stream, ptr %343, i64 0, i32 3
  store i32 %356, ptr %357, align 4, !tbaa !309
  %358 = getelementptr inbounds %struct.bit_stream, ptr %343, i64 0, i32 1
  store i32 %356, ptr %358, align 4, !tbaa !310
  %359 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef nonnull %343) #27
  store i32 0, ptr %20, align 8, !tbaa !327
  %360 = icmp eq i32 %359, %328
  br i1 %360, label %361, label %364

361:                                              ; preds = %340
  %362 = load i16, ptr %41, align 8, !tbaa !329
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %361, %340
  %365 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  store i32 1, ptr %20, align 8, !tbaa !327
  store i32 1, ptr %21, align 4, !tbaa !328
  br label %377

366:                                              ; preds = %361
  %367 = load ptr, ptr %40, align 8, !tbaa !59
  %368 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %367, i64 0, i32 31
  %369 = load i32, ptr %368, align 8, !tbaa !330
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %366
  %372 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef nonnull %343) #27
  br label %373

373:                                              ; preds = %366, %371
  %374 = tail call i32 @read_next_nalu(ptr noundef %2, ptr noundef %6) #27
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %472, label %377

376:                                              ; preds = %337
  store i32 1, ptr %20, align 8, !tbaa !327
  br label %377

377:                                              ; preds = %364, %373, %376
  %378 = phi ptr [ %343, %364 ], [ %343, %373 ], [ %289, %376 ]
  %379 = load i32, ptr %19, align 8, !tbaa !296
  %380 = icmp eq i32 %379, 4
  br i1 %380, label %381, label %414

381:                                              ; preds = %377
  %382 = load ptr, ptr %28, align 8, !tbaa !298
  %383 = getelementptr inbounds %struct.datapartition, ptr %382, i64 2
  %384 = load ptr, ptr %383, align 8, !tbaa !299
  %385 = getelementptr inbounds %struct.bit_stream, ptr %384, i64 0, i32 5
  store i32 0, ptr %385, align 8, !tbaa !302
  store i32 0, ptr %384, align 8, !tbaa !304
  %386 = getelementptr inbounds %struct.bit_stream, ptr %384, i64 0, i32 2
  store i32 0, ptr %386, align 8, !tbaa !305
  %387 = getelementptr inbounds %struct.bit_stream, ptr %384, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !306
  %389 = load ptr, ptr %29, align 8, !tbaa !307
  %390 = getelementptr inbounds i8, ptr %389, i64 1
  %391 = load i32, ptr %30, align 4, !tbaa !308
  %392 = add i32 %391, -1
  %393 = zext i32 %392 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %388, ptr nonnull align 1 %390, i64 %393, i1 false)
  %394 = load ptr, ptr %387, align 8, !tbaa !306
  %395 = load i32, ptr %30, align 4, !tbaa !308
  %396 = add i32 %395, -1
  %397 = tail call i32 @RBSPtoSODB(ptr noundef %394, i32 noundef %396) #27
  %398 = getelementptr inbounds %struct.bit_stream, ptr %384, i64 0, i32 3
  store i32 %397, ptr %398, align 4, !tbaa !309
  %399 = getelementptr inbounds %struct.bit_stream, ptr %384, i64 0, i32 1
  store i32 %397, ptr %399, align 4, !tbaa !310
  store i32 0, ptr %21, align 4, !tbaa !328
  %400 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef nonnull %384) #27
  %401 = icmp eq i32 %400, %328
  br i1 %401, label %402, label %405

402:                                              ; preds = %381
  %403 = load i16, ptr %42, align 8, !tbaa !329
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %402, %381
  %406 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  store i32 1, ptr %21, align 4, !tbaa !328
  br label %407

407:                                              ; preds = %405, %402
  %408 = load ptr, ptr %40, align 8, !tbaa !59
  %409 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %408, i64 0, i32 31
  %410 = load i32, ptr %409, align 8, !tbaa !330
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %407
  %413 = tail call i32 @ue_v(ptr noundef nonnull @.str.19, ptr noundef nonnull %384) #27
  br label %415

414:                                              ; preds = %377
  store i32 1, ptr %21, align 4, !tbaa !328
  br label %415

415:                                              ; preds = %407, %412, %414
  %416 = phi ptr [ %384, %412 ], [ %378, %414 ], [ %384, %407 ]
  %417 = load i32, ptr %19, align 8, !tbaa !296
  %418 = add i32 %417, -3
  %419 = icmp ult i32 %418, 2
  br i1 %419, label %472, label %101

420:                                              ; preds = %101
  %421 = load i32, ptr %50, align 8, !tbaa !331
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %469

423:                                              ; preds = %420
  %424 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  br label %469

425:                                              ; preds = %101
  %426 = load i32, ptr %49, align 8, !tbaa !331
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %469

428:                                              ; preds = %425
  %429 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %469

430:                                              ; preds = %101
  %431 = load ptr, ptr %47, align 8, !tbaa !307
  %432 = load i32, ptr %48, align 4, !tbaa !308
  tail call void @InterpretSEIMessage(ptr noundef %431, i32 noundef %432, ptr noundef %2, ptr noundef nonnull %0) #27
  br label %469

433:                                              ; preds = %101
  tail call void @ProcessPPS(ptr noundef %2, ptr noundef %6) #27
  br label %469

434:                                              ; preds = %101
  tail call void @ProcessSPS(ptr noundef %2, ptr noundef %6) #27
  br label %469

435:                                              ; preds = %101
  %436 = load i32, ptr %45, align 8, !tbaa !331
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %469

438:                                              ; preds = %435
  %439 = load i32, ptr %46, align 4, !tbaa !308
  %440 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %439)
  %441 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53)
  br label %469

442:                                              ; preds = %101
  %443 = load i32, ptr %7, align 8, !tbaa !61
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %469

445:                                              ; preds = %442
  tail call void (...) @prefix_nal_unit_svc() #27
  br label %469

446:                                              ; preds = %101
  %447 = load i32, ptr %11, align 8, !tbaa !295
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  tail call void @ProcessSubsetSPS(ptr noundef %2, ptr noundef %6) #27
  br label %469

450:                                              ; preds = %446
  %451 = load i32, ptr %44, align 8, !tbaa !331
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %469

453:                                              ; preds = %450
  %454 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  br label %469

455:                                              ; preds = %101
  %456 = load i32, ptr %11, align 8, !tbaa !295
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %455
  %459 = load i32, ptr %43, align 8, !tbaa !331
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %458
  %462 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef 20)
  br label %469

463:                                              ; preds = %101
  %464 = load i32, ptr %56, align 8, !tbaa !331
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = load i32, ptr %57, align 4, !tbaa !308
  %468 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %103, i32 noundef %467)
  br label %469

469:                                              ; preds = %101, %101, %101, %101, %463, %466, %455, %458, %461, %449, %453, %450, %442, %445, %435, %438, %425, %428, %420, %423, %118, %434, %433, %430
  store i32 -1, ptr %7, align 8, !tbaa !61
  %470 = tail call i32 @read_next_nalu(ptr noundef %2, ptr noundef %6) #27
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %58, !llvm.loop !332

472:                                              ; preds = %469, %415, %373, %334, %1, %285
  %473 = phi i32 [ %259, %285 ], [ 1, %1 ], [ %314, %334 ], [ %314, %373 ], [ %314, %415 ], [ 1, %469 ]
  ret i32 %473
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopySliceInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 73
  %5 = load i32, ptr %4, align 4, !tbaa !150
  %6 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 9
  store i32 %5, ptr %6, align 4, !tbaa !175
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !177
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %11 = load i32, ptr %10, align 8, !tbaa !173
  store i32 %11, ptr %1, align 4, !tbaa !178
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  %15 = load i8, ptr %14, align 4, !tbaa !179
  %16 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 6
  store i8 %15, ptr %16, align 4, !tbaa !180
  br label %17

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !181
  %20 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !182
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !183
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 7
  store i8 %23, ptr %24, align 1, !tbaa !184
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !185
  %29 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 8
  store i32 %28, ptr %29, align 4, !tbaa !186
  br label %30

30:                                               ; preds = %26, %17
  %31 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %32, i64 0, i32 19
  %34 = load i32, ptr %33, align 4, !tbaa !187
  switch i32 %34, label %49 [
    i32 0, label %35
    i32 1, label %42
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !188
  %38 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !189
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !190
  %41 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 4
  store i32 %40, ptr %41, align 4, !tbaa !191
  br label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  %44 = load i32, ptr %43, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 5
  store i32 %44, ptr %45, align 4, !tbaa !69
  %46 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !69
  %48 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 5, i64 1
  store i32 %47, ptr %48, align 4, !tbaa !69
  br label %49

49:                                               ; preds = %35, %30, %42
  %50 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %51 = load i32, ptr %50, align 8, !tbaa !192
  %52 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 10
  store i32 %51, ptr %52, align 4, !tbaa !193
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  %54 = load i32, ptr %53, align 4, !tbaa !194
  %55 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 11
  store i32 %54, ptr %55, align 4, !tbaa !195
  %56 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %57 = load i32, ptr %56, align 8, !tbaa !196
  %58 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 12
  store i32 %57, ptr %58, align 4, !tbaa !197
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @exit_picture(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca [32 x [16 x i16]], align 16
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca [10 x i8], align 1
  %7 = load ptr, ptr %0, align 8, !tbaa !140
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #27
  %10 = load ptr, ptr %1, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %427, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !144
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %16 = load i32, ptr %15, align 4, !tbaa !203
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %20 = load i32, ptr %19, align 8, !tbaa !334
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %427

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %427, label %26

26:                                               ; preds = %22, %12
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 170
  %28 = load i32, ptr %27, align 8, !tbaa !105
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 176
  %32 = load i32, ptr %31, align 8, !tbaa !106
  %33 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 11
  %34 = load i32, ptr %33, align 4, !tbaa !108
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %40 = load i32, ptr %39, align 8, !tbaa !109
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.slice, ptr %45, i64 0, i32 46
  %47 = load i32, ptr %46, align 8, !tbaa !110
  br label %48

48:                                               ; preds = %42, %48
  %49 = phi i32 [ 0, %42 ], [ %54, %48 ]
  %50 = load ptr, ptr %43, align 8, !tbaa !141
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = getelementptr inbounds %struct.slice, ptr %51, i64 0, i32 46
  store i32 %49, ptr %52, align 8, !tbaa !110
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef %49, ptr noundef null) #27
  %53 = load ptr, ptr %1, align 8, !tbaa !44
  tail call void @DeblockPicture(ptr noundef nonnull %0, ptr noundef %53) #27
  %54 = add nuw nsw i32 %49, 1
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %48, !llvm.loop !335

56:                                               ; preds = %48
  %57 = load ptr, ptr %43, align 8, !tbaa !141
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = getelementptr inbounds %struct.slice, ptr %58, i64 0, i32 46
  store i32 %47, ptr %59, align 8, !tbaa !110
  tail call void @make_frame_picture_JV(ptr noundef nonnull %0) #27
  br label %66

60:                                               ; preds = %38
  tail call void @DeblockPicture(ptr noundef nonnull %0, ptr noundef nonnull %10) #27
  br label %66

61:                                               ; preds = %30, %26
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %63 = load i32, ptr %62, align 8, !tbaa !109
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @make_frame_picture_JV(ptr noundef nonnull %0) #27
  br label %66

66:                                               ; preds = %61, %65, %56, %60
  %67 = load ptr, ptr %1, align 8, !tbaa !44
  %68 = getelementptr inbounds %struct.storable_picture, ptr %67, i64 0, i32 25
  %69 = load i32, ptr %68, align 4, !tbaa !263
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %243, label %71

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #27
  %72 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %73 = load ptr, ptr %72, align 8, !tbaa !107
  %74 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 32
  %75 = load ptr, ptr %74, align 8, !tbaa !126
  %76 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 33
  %77 = load ptr, ptr %76, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #27
  %78 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 27
  %79 = load i32, ptr %78, align 4, !tbaa !337
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %242

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 37
  %83 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81
  %84 = getelementptr inbounds [16 x i16], ptr %3, i64 16
  %85 = getelementptr inbounds %struct.storable_picture, ptr %73, i64 0, i32 48
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  %87 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  %88 = getelementptr inbounds ptr, ptr %77, i64 1
  br label %89

89:                                               ; preds = %81, %237
  %90 = phi i32 [ 0, %81 ], [ %239, %237 ]
  %91 = phi i16 [ 0, %81 ], [ %238, %237 ]
  %92 = load ptr, ptr %82, align 8, !tbaa !338
  %93 = sext i16 %91 to i64
  %94 = getelementptr inbounds i8, ptr %92, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !45
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %237, label %97

97:                                               ; preds = %89
  call void @get_mb_pos(ptr noundef nonnull %0, i32 noundef %90, ptr noundef nonnull %83, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  %98 = load i16, ptr %5, align 2, !tbaa !91
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %75, i64 %99
  %101 = load i16, ptr %4, align 2, !tbaa !91
  %102 = sext i16 %101 to i64
  br label %105

103:                                              ; preds = %105
  %104 = sext i16 %101 to i64
  br label %115

105:                                              ; preds = %97, %105
  %106 = phi i32 [ 0, %97 ], [ %113, %105 ]
  %107 = phi ptr [ %100, %97 ], [ %110, %105 ]
  %108 = phi ptr [ %3, %97 ], [ %109, %105 ]
  %109 = getelementptr inbounds [16 x i16], ptr %108, i64 1
  %110 = getelementptr inbounds ptr, ptr %107, i64 1
  %111 = load ptr, ptr %107, align 8, !tbaa !44
  %112 = getelementptr inbounds i16, ptr %111, i64 %102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %108, ptr noundef nonnull align 2 dereferenceable(32) %112, i64 32, i1 false)
  %113 = add nuw nsw i32 %106, 1
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %103, label %105, !llvm.loop !339

115:                                              ; preds = %103, %115
  %116 = phi i32 [ 0, %103 ], [ %128, %115 ]
  %117 = phi ptr [ %84, %103 ], [ %127, %115 ]
  %118 = phi ptr [ %3, %103 ], [ %123, %115 ]
  %119 = phi ptr [ %100, %103 ], [ %124, %115 ]
  %120 = getelementptr inbounds ptr, ptr %119, i64 1
  %121 = load ptr, ptr %119, align 8, !tbaa !44
  %122 = getelementptr inbounds i16, ptr %121, i64 %104
  %123 = getelementptr inbounds [16 x i16], ptr %118, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %122, ptr noundef nonnull align 2 dereferenceable(32) %118, i64 32, i1 false)
  %124 = getelementptr inbounds ptr, ptr %119, i64 2
  %125 = load ptr, ptr %120, align 8, !tbaa !44
  %126 = getelementptr inbounds i16, ptr %125, i64 %104
  %127 = getelementptr inbounds [16 x i16], ptr %117, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %126, ptr noundef nonnull align 2 dereferenceable(32) %117, i64 32, i1 false)
  %128 = add nuw nsw i32 %116, 1
  %129 = icmp eq i32 %128, 16
  br i1 %129, label %130, label %115, !llvm.loop !340

130:                                              ; preds = %115
  %131 = load i32, ptr %85, align 4, !tbaa !271
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %237, label %133

133:                                              ; preds = %130
  %134 = sext i16 %101 to i32
  %135 = load i32, ptr %86, align 4, !tbaa !341
  %136 = mul nsw i32 %135, %134
  %137 = lshr i32 %136, 4
  %138 = trunc i32 %137 to i16
  store i16 %138, ptr %4, align 2, !tbaa !91
  %139 = sext i16 %98 to i32
  %140 = load i32, ptr %87, align 8, !tbaa !342
  %141 = mul nsw i32 %140, %139
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i16
  store i16 %143, ptr %5, align 2, !tbaa !91
  %144 = load ptr, ptr %77, align 8, !tbaa !44
  %145 = shl i32 %142, 16
  %146 = ashr exact i32 %145, 16
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %144, i64 %147
  %149 = sext i32 %140 to i64
  %150 = getelementptr inbounds [16 x i16], ptr %3, i64 %149
  %151 = icmp sgt i32 %140, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %133
  %153 = shl nuw i32 %140, 1
  %154 = sext i16 %138 to i64
  %155 = sext i32 %135 to i64
  %156 = shl nsw i64 %155, 1
  %157 = call i32 @llvm.smax.i32(i32 %153, i32 1)
  br label %164

158:                                              ; preds = %164, %133
  %159 = icmp sgt i32 %140, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %158
  %161 = sext i16 %138 to i64
  %162 = sext i32 %135 to i64
  %163 = shl nsw i64 %162, 1
  br label %174

164:                                              ; preds = %152, %164
  %165 = phi i32 [ 0, %152 ], [ %172, %164 ]
  %166 = phi ptr [ %148, %152 ], [ %169, %164 ]
  %167 = phi ptr [ %3, %152 ], [ %168, %164 ]
  %168 = getelementptr inbounds [16 x i16], ptr %167, i64 1
  %169 = getelementptr inbounds ptr, ptr %166, i64 1
  %170 = load ptr, ptr %166, align 8, !tbaa !44
  %171 = getelementptr inbounds i16, ptr %170, i64 %154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %167, ptr align 2 %171, i64 %156, i1 false)
  %172 = add nuw nsw i32 %165, 1
  %173 = icmp eq i32 %172, %157
  br i1 %173, label %158, label %164, !llvm.loop !339

174:                                              ; preds = %160, %174
  %175 = phi i32 [ 0, %160 ], [ %187, %174 ]
  %176 = phi ptr [ %150, %160 ], [ %186, %174 ]
  %177 = phi ptr [ %3, %160 ], [ %182, %174 ]
  %178 = phi ptr [ %148, %160 ], [ %183, %174 ]
  %179 = getelementptr inbounds ptr, ptr %178, i64 1
  %180 = load ptr, ptr %178, align 8, !tbaa !44
  %181 = getelementptr inbounds i16, ptr %180, i64 %161
  %182 = getelementptr inbounds [16 x i16], ptr %177, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %181, ptr nonnull align 2 %177, i64 %163, i1 false)
  %183 = getelementptr inbounds ptr, ptr %178, i64 2
  %184 = load ptr, ptr %179, align 8, !tbaa !44
  %185 = getelementptr inbounds i16, ptr %184, i64 %161
  %186 = getelementptr inbounds [16 x i16], ptr %176, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %185, ptr align 2 %176, i64 %163, i1 false)
  %187 = add nuw nsw i32 %175, 1
  %188 = icmp eq i32 %187, %140
  br i1 %188, label %189, label %174, !llvm.loop !340

189:                                              ; preds = %174, %158
  %190 = load ptr, ptr %88, align 8, !tbaa !44
  %191 = load i16, ptr %5, align 2, !tbaa !91
  %192 = sext i16 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load i16, ptr %4, align 2, !tbaa !91
  %195 = load i32, ptr %86, align 4, !tbaa !341
  %196 = load i32, ptr %87, align 8, !tbaa !342
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [16 x i16], ptr %3, i64 %197
  %199 = icmp sgt i32 %196, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %189
  %201 = shl nuw i32 %196, 1
  %202 = sext i16 %194 to i64
  %203 = sext i32 %195 to i64
  %204 = shl nsw i64 %203, 1
  %205 = call i32 @llvm.smax.i32(i32 %201, i32 1)
  br label %212

206:                                              ; preds = %212, %189
  %207 = icmp sgt i32 %196, 0
  br i1 %207, label %208, label %237

208:                                              ; preds = %206
  %209 = sext i16 %194 to i64
  %210 = sext i32 %195 to i64
  %211 = shl nsw i64 %210, 1
  br label %222

212:                                              ; preds = %200, %212
  %213 = phi i32 [ 0, %200 ], [ %220, %212 ]
  %214 = phi ptr [ %193, %200 ], [ %217, %212 ]
  %215 = phi ptr [ %3, %200 ], [ %216, %212 ]
  %216 = getelementptr inbounds [16 x i16], ptr %215, i64 1
  %217 = getelementptr inbounds ptr, ptr %214, i64 1
  %218 = load ptr, ptr %214, align 8, !tbaa !44
  %219 = getelementptr inbounds i16, ptr %218, i64 %202
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %215, ptr align 2 %219, i64 %204, i1 false)
  %220 = add nuw nsw i32 %213, 1
  %221 = icmp eq i32 %220, %205
  br i1 %221, label %206, label %212, !llvm.loop !339

222:                                              ; preds = %208, %222
  %223 = phi i32 [ 0, %208 ], [ %235, %222 ]
  %224 = phi ptr [ %198, %208 ], [ %234, %222 ]
  %225 = phi ptr [ %3, %208 ], [ %230, %222 ]
  %226 = phi ptr [ %193, %208 ], [ %231, %222 ]
  %227 = getelementptr inbounds ptr, ptr %226, i64 1
  %228 = load ptr, ptr %226, align 8, !tbaa !44
  %229 = getelementptr inbounds i16, ptr %228, i64 %209
  %230 = getelementptr inbounds [16 x i16], ptr %225, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %229, ptr nonnull align 2 %225, i64 %211, i1 false)
  %231 = getelementptr inbounds ptr, ptr %226, i64 2
  %232 = load ptr, ptr %227, align 8, !tbaa !44
  %233 = getelementptr inbounds i16, ptr %232, i64 %209
  %234 = getelementptr inbounds [16 x i16], ptr %224, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %233, ptr align 2 %224, i64 %211, i1 false)
  %235 = add nuw nsw i32 %223, 1
  %236 = icmp eq i32 %235, %196
  br i1 %236, label %237, label %222, !llvm.loop !340

237:                                              ; preds = %222, %206, %130, %89
  %238 = add i16 %91, 2
  %239 = sext i16 %238 to i32
  %240 = load i32, ptr %78, align 4, !tbaa !337
  %241 = icmp sgt i32 %240, %239
  br i1 %241, label %89, label %242, !llvm.loop !343

242:                                              ; preds = %237, %71
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #27
  br label %243

243:                                              ; preds = %242, %66
  %244 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 33
  %245 = load i32, ptr %244, align 4, !tbaa !204
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %249 = load i32, ptr %248, align 8, !tbaa !199
  %250 = sdiv i32 %249, 2
  store i32 %250, ptr %248, align 8, !tbaa !199
  br label %251

251:                                              ; preds = %243, %247
  %252 = load ptr, ptr %1, align 8, !tbaa !44
  %253 = getelementptr inbounds %struct.storable_picture, ptr %252, i64 0, i32 11
  %254 = load i32, ptr %253, align 4, !tbaa !108
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.storable_picture, ptr %252, i64 0, i32 65
  %258 = load i32, ptr %257, align 4, !tbaa !241
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %261

260:                                              ; preds = %256, %251
  call void @pad_dec_picture(ptr noundef nonnull %0, ptr noundef %252)
  br label %261

261:                                              ; preds = %260, %256
  %262 = load ptr, ptr %1, align 8, !tbaa !44
  %263 = load i32, ptr %262, align 8, !tbaa !344
  %264 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 43
  %265 = load i32, ptr %264, align 8, !tbaa !253
  %266 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 4
  %267 = load i32, ptr %266, align 8, !tbaa !232
  %268 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 11
  %269 = load i32, ptr %268, align 4, !tbaa !108
  %270 = freeze i32 %269
  %271 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 55
  %272 = load i32, ptr %271, align 8, !tbaa !234
  %273 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 7
  %274 = load i32, ptr %273, align 4, !tbaa !267
  %275 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 44
  %276 = load i32, ptr %275, align 4, !tbaa !254
  %277 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 48
  %278 = load i32, ptr %277, align 4, !tbaa !271
  %279 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %280 = load ptr, ptr %279, align 8, !tbaa !152
  call void @store_picture_in_dpb(ptr noundef %280, ptr noundef nonnull %262) #27
  store ptr null, ptr %1, align 8, !tbaa !44
  %281 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %282 = load i32, ptr %281, align 4, !tbaa !345
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %261
  %285 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  store i32 0, ptr %285, align 8, !tbaa !218
  br label %286

286:                                              ; preds = %284, %261
  %287 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 7
  %288 = load i32, ptr %287, align 8, !tbaa !331
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %362

290:                                              ; preds = %286
  %291 = icmp eq i32 %263, 0
  %292 = icmp ult i32 %263, 2
  br i1 %292, label %293, label %320

293:                                              ; preds = %290
  %294 = icmp eq i32 %265, 2
  %295 = icmp ne i32 %276, 0
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 5391433, ptr %298, align 1
  br label %314

299:                                              ; preds = %293
  br i1 %294, label %300, label %302

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2115872, ptr %301, align 1
  br label %314

302:                                              ; preds = %299
  switch i32 %265, label %309 [
    i32 0, label %303
    i32 3, label %305
    i32 4, label %307
  ]

303:                                              ; preds = %302
  %304 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2117664, ptr %304, align 1
  br label %314

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2117715, ptr %306, align 1
  br label %314

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2115923, ptr %308, align 1
  br label %314

309:                                              ; preds = %302
  %310 = icmp eq i32 %270, 0
  %311 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  br i1 %310, label %313, label %312

312:                                              ; preds = %309
  store i32 2114080, ptr %311, align 1
  br label %314

313:                                              ; preds = %309
  store i32 2122272, ptr %311, align 1
  br label %314

314:                                              ; preds = %300, %305, %312, %313, %307, %303, %297
  br i1 %291, label %315, label %362

315:                                              ; preds = %314
  %316 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %317 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %316) #31
  %318 = sub i64 8, %317
  %319 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %316, ptr noundef nonnull @.str.34, i64 noundef %318) #27
  br label %362

320:                                              ; preds = %290
  %321 = icmp eq i32 %263, 2
  br i1 %321, label %322, label %362

322:                                              ; preds = %320
  %323 = icmp eq i32 %265, 2
  %324 = icmp ne i32 %276, 0
  %325 = select i1 %323, i1 %324, i1 false
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %328 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %327) #31
  %329 = sub i64 8, %328
  %330 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %327, ptr noundef nonnull @.str.35, i64 noundef %329) #27
  br label %362

331:                                              ; preds = %322
  br i1 %323, label %332, label %337

332:                                              ; preds = %331
  %333 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %334 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %333) #31
  %335 = sub i64 8, %334
  %336 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %333, ptr noundef nonnull @.str.36, i64 noundef %335) #27
  br label %362

337:                                              ; preds = %331
  switch i32 %265, label %353 [
    i32 0, label %338
    i32 3, label %343
    i32 4, label %348
  ]

338:                                              ; preds = %337
  %339 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %340 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %339) #31
  %341 = sub i64 8, %340
  %342 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %339, ptr noundef nonnull @.str.37, i64 noundef %341) #27
  br label %362

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %345 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %344) #31
  %346 = sub i64 8, %345
  %347 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %344, ptr noundef nonnull @.str.38, i64 noundef %346) #27
  br label %362

348:                                              ; preds = %337
  %349 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %350 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %349) #31
  %351 = sub i64 8, %350
  %352 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %349, ptr noundef nonnull @.str.39, i64 noundef %351) #27
  br label %362

353:                                              ; preds = %337
  %354 = icmp eq i32 %270, 0
  %355 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %356 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %355) #31
  %357 = sub i64 8, %356
  br i1 %354, label %360, label %358

358:                                              ; preds = %353
  %359 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %355, ptr noundef nonnull @.str.40, i64 noundef %357) #27
  br label %362

360:                                              ; preds = %353
  %361 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %355, ptr noundef nonnull @.str.41, i64 noundef %357) #27
  br label %362

362:                                              ; preds = %315, %314, %326, %338, %348, %360, %358, %343, %332, %320, %286
  %363 = and i32 %263, -3
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %427

365:                                              ; preds = %362
  %366 = sext i32 %278 to i64
  %367 = getelementptr inbounds [4 x [6 x i8]], ptr @__const.exit_picture.yuv_types, i64 0, i64 %366
  %368 = call ptr @strcpy(ptr nonnull dereferenceable(1) %6, ptr nonnull dereferenceable(1) %367)
  %369 = load i32, ptr %287, align 8, !tbaa !331
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %397

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %373 = load i32, ptr %372, align 4, !tbaa !346
  %374 = icmp eq i32 %373, -1
  br i1 %374, label %391, label %375

375:                                              ; preds = %371
  %376 = load ptr, ptr %8, align 8, !tbaa !333
  %377 = load ptr, ptr @stdout, align 8, !tbaa !44
  %378 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  %379 = load i32, ptr %378, align 4, !tbaa !347
  %380 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %381 = getelementptr inbounds %struct.snr_par, ptr %376, i64 0, i32 1
  %382 = load float, ptr %381, align 4, !tbaa !348
  %383 = fpext float %382 to double
  %384 = getelementptr inbounds %struct.snr_par, ptr %376, i64 0, i32 1, i64 1
  %385 = load float, ptr %384, align 4, !tbaa !348
  %386 = fpext float %385 to double
  %387 = getelementptr inbounds %struct.snr_par, ptr %376, i64 0, i32 1, i64 2
  %388 = load float, ptr %387, align 4, !tbaa !348
  %389 = fpext float %388 to double
  %390 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %377, ptr noundef nonnull @.str.43, i32 noundef %379, ptr noundef nonnull %380, i32 noundef %267, i32 noundef %274, i32 noundef %272, double noundef %383, double noundef %386, double noundef %389, ptr noundef nonnull %6, i32 noundef 0)
  br label %401

391:                                              ; preds = %371
  %392 = load ptr, ptr @stdout, align 8, !tbaa !44
  %393 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  %394 = load i32, ptr %393, align 4, !tbaa !347
  %395 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %396 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %392, ptr noundef nonnull @.str.44, i32 noundef %394, ptr noundef nonnull %395, i32 noundef %267, i32 noundef %274, i32 noundef %272, ptr noundef nonnull %6, i32 noundef 0)
  br label %401

397:                                              ; preds = %365
  %398 = load ptr, ptr @stdout, align 8, !tbaa !44
  %399 = load i32, ptr %9, align 4, !tbaa !350
  %400 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.45, i32 noundef %399)
  br label %401

401:                                              ; preds = %375, %391, %397
  %402 = load ptr, ptr @stdout, align 8, !tbaa !44
  %403 = call i32 @fflush(ptr noundef %402)
  %404 = icmp eq i32 %270, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %401
  switch i32 %265, label %415 [
    i32 4, label %406
    i32 2, label %406
    i32 0, label %406
  ]

406:                                              ; preds = %405, %405, %405, %401
  %407 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %408 = load ptr, ptr %407, align 8, !tbaa !141
  %409 = load ptr, ptr %408, align 8, !tbaa !44
  %410 = getelementptr inbounds %struct.slice, ptr %409, i64 0, i32 66
  %411 = load i32, ptr %410, align 8, !tbaa !192
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %421, label %413

413:                                              ; preds = %406
  %414 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  br label %417

415:                                              ; preds = %405
  %416 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 126
  br label %417

417:                                              ; preds = %415, %413
  %418 = phi ptr [ %414, %413 ], [ %416, %415 ]
  %419 = load i32, ptr %418, align 8, !tbaa !69
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %418, align 8, !tbaa !69
  br label %421

421:                                              ; preds = %417, %406
  %422 = load i32, ptr %9, align 4, !tbaa !350
  %423 = add nsw i32 %422, 1
  store i32 %423, ptr %9, align 4, !tbaa !350
  %424 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 128
  %425 = load i32, ptr %424, align 8, !tbaa !352
  %426 = add nsw i32 %425, 1
  store i32 %426, ptr %424, align 8, !tbaa !352
  br label %427

427:                                              ; preds = %421, %362, %2, %18, %22
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @buffer2img(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %4, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #27
  br label %8

8:                                                ; preds = %7, %5
  %9 = tail call i32 @testEndian() #27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %96, label %11

11:                                               ; preds = %8
  switch i32 %4, label %95 [
    i32 1, label %24
    i32 2, label %18
    i32 4, label %12
  ]

12:                                               ; preds = %11
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %12
  %15 = icmp sgt i32 %2, 0
  %16 = zext nneg i32 %3 to i64
  %17 = zext nneg i32 %2 to i64
  br label %72

18:                                               ; preds = %11
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %148

20:                                               ; preds = %18
  %21 = icmp sgt i32 %2, 0
  %22 = zext nneg i32 %3 to i64
  %23 = zext nneg i32 %2 to i64
  br label %50

24:                                               ; preds = %11
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %148

26:                                               ; preds = %24
  %27 = icmp sgt i32 %2, 0
  %28 = zext nneg i32 %3 to i64
  %29 = zext nneg i32 %2 to i64
  br label %30

30:                                               ; preds = %26, %47
  %31 = phi i64 [ 0, %26 ], [ %48, %47 ]
  br i1 %27, label %32, label %47

32:                                               ; preds = %30
  %33 = getelementptr inbounds ptr, ptr %0, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = trunc i64 %31 to i32
  %36 = mul i32 %35, %2
  %37 = zext i32 %36 to i64
  %38 = getelementptr i8, ptr %1, i64 %37
  br label %39

39:                                               ; preds = %32, %39
  %40 = phi i64 [ 0, %32 ], [ %45, %39 ]
  %41 = getelementptr i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !45
  %43 = zext i8 %42 to i16
  %44 = getelementptr inbounds i16, ptr %34, i64 %40
  store i16 %43, ptr %44, align 2, !tbaa !91
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %29
  br i1 %46, label %47, label %39, !llvm.loop !353

47:                                               ; preds = %39, %30
  %48 = add nuw nsw i64 %31, 1
  %49 = icmp eq i64 %48, %28
  br i1 %49, label %148, label %30, !llvm.loop !354

50:                                               ; preds = %20, %69
  %51 = phi i64 [ 0, %20 ], [ %70, %69 ]
  br i1 %21, label %52, label %69

52:                                               ; preds = %50
  %53 = getelementptr inbounds ptr, ptr %0, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = trunc i64 %51 to i32
  %56 = mul i32 %55, %2
  br label %57

57:                                               ; preds = %52, %57
  %58 = phi i64 [ 0, %52 ], [ %67, %57 ]
  %59 = trunc i64 %58 to i32
  %60 = add i32 %56, %59
  %61 = shl nuw nsw i32 %60, 1
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %1, i64 %62
  %64 = load i16, ptr %63, align 1
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %66 = getelementptr inbounds i16, ptr %54, i64 %58
  store i16 %65, ptr %66, align 2, !tbaa !91
  %67 = add nuw nsw i64 %58, 1
  %68 = icmp eq i64 %67, %23
  br i1 %68, label %69, label %57, !llvm.loop !355

69:                                               ; preds = %57, %50
  %70 = add nuw nsw i64 %51, 1
  %71 = icmp eq i64 %70, %22
  br i1 %71, label %148, label %50, !llvm.loop !356

72:                                               ; preds = %14, %92
  %73 = phi i64 [ 0, %14 ], [ %93, %92 ]
  br i1 %15, label %74, label %92

74:                                               ; preds = %72
  %75 = getelementptr inbounds ptr, ptr %0, i64 %73
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  %77 = trunc i64 %73 to i32
  %78 = mul i32 %77, %2
  br label %79

79:                                               ; preds = %74, %79
  %80 = phi i64 [ 0, %74 ], [ %90, %79 ]
  %81 = trunc i64 %80 to i32
  %82 = add i32 %78, %81
  %83 = shl nsw i32 %82, 2
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  %86 = load i32, ptr %85, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds i16, ptr %76, i64 %80
  store i16 %88, ptr %89, align 2, !tbaa !91
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, %17
  br i1 %91, label %92, label %79, !llvm.loop !357

92:                                               ; preds = %79, %72
  %93 = add nuw nsw i64 %73, 1
  %94 = icmp eq i64 %93, %16
  br i1 %94, label %95, label %72, !llvm.loop !358

95:                                               ; preds = %92, %12, %11
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #27
  br label %148

96:                                               ; preds = %8
  %97 = icmp eq i32 %4, 1
  %98 = icmp sgt i32 %3, 0
  br i1 %97, label %107, label %99

99:                                               ; preds = %96
  br i1 %98, label %100, label %148

100:                                              ; preds = %99
  %101 = icmp sgt i32 %2, 0
  %102 = sext i32 %4 to i64
  %103 = sext i32 %4 to i64
  %104 = sext i32 %2 to i64
  %105 = zext nneg i32 %3 to i64
  %106 = zext nneg i32 %2 to i64
  br label %131

107:                                              ; preds = %96
  br i1 %98, label %108, label %148

108:                                              ; preds = %107
  %109 = icmp sgt i32 %2, 0
  %110 = zext nneg i32 %3 to i64
  %111 = zext nneg i32 %2 to i64
  br label %112

112:                                              ; preds = %108, %127
  %113 = phi i64 [ 0, %108 ], [ %129, %127 ]
  %114 = phi ptr [ %1, %108 ], [ %128, %127 ]
  br i1 %109, label %115, label %127

115:                                              ; preds = %112
  %116 = getelementptr inbounds ptr, ptr %0, i64 %113
  %117 = load ptr, ptr %116, align 8, !tbaa !44
  br label %118

118:                                              ; preds = %115, %118
  %119 = phi i64 [ 0, %115 ], [ %125, %118 ]
  %120 = phi ptr [ %114, %115 ], [ %121, %118 ]
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  %122 = load i8, ptr %120, align 1, !tbaa !45
  %123 = zext i8 %122 to i16
  %124 = getelementptr inbounds i16, ptr %117, i64 %119
  store i16 %123, ptr %124, align 2, !tbaa !91
  %125 = add nuw nsw i64 %119, 1
  %126 = icmp eq i64 %125, %111
  br i1 %126, label %127, label %118, !llvm.loop !359

127:                                              ; preds = %118, %112
  %128 = phi ptr [ %114, %112 ], [ %121, %118 ]
  %129 = add nuw nsw i64 %113, 1
  %130 = icmp eq i64 %129, %110
  br i1 %130, label %148, label %112, !llvm.loop !360

131:                                              ; preds = %100, %145
  %132 = phi i64 [ 0, %100 ], [ %146, %145 ]
  %133 = mul nsw i64 %132, %104
  br i1 %101, label %134, label %145

134:                                              ; preds = %131
  %135 = getelementptr inbounds ptr, ptr %0, i64 %132
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ 0, %134 ], [ %143, %136 ]
  %138 = load ptr, ptr %135, align 8, !tbaa !44
  %139 = getelementptr inbounds i16, ptr %138, i64 %137
  store i16 0, ptr %139, align 2, !tbaa !91
  %140 = add nuw nsw i64 %137, %133
  %141 = mul nsw i64 %140, %103
  %142 = getelementptr inbounds i8, ptr %1, i64 %141
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %139, ptr align 1 %142, i64 %102, i1 false)
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %143, %106
  br i1 %144, label %145, label %136, !llvm.loop !361

145:                                              ; preds = %136, %131
  %146 = add nuw nsw i64 %132, 1
  %147 = icmp eq i64 %146, %105
  br i1 %147, label %148, label %131, !llvm.loop !362

148:                                              ; preds = %69, %47, %145, %127, %18, %24, %99, %107, %95
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @testEndian() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @compute_SSE(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 {
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %6
  %9 = sext i32 %2 to i64
  %10 = sext i32 %3 to i64
  %11 = icmp sgt i32 %5, 0
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %8, %40
  %14 = phi i64 [ 0, %8 ], [ %42, %40 ]
  %15 = phi i64 [ 0, %8 ], [ %41, %40 ]
  br i1 %11, label %16, label %40

16:                                               ; preds = %13
  %17 = getelementptr inbounds ptr, ptr %1, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds i16, ptr %18, i64 %10
  %20 = getelementptr inbounds ptr, ptr %0, i64 %14
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds i16, ptr %21, i64 %9
  br label %23

23:                                               ; preds = %16, %23
  %24 = phi i64 [ %37, %23 ], [ %15, %16 ]
  %25 = phi ptr [ %31, %23 ], [ %19, %16 ]
  %26 = phi ptr [ %28, %23 ], [ %22, %16 ]
  %27 = phi i32 [ %38, %23 ], [ 0, %16 ]
  %28 = getelementptr inbounds i16, ptr %26, i64 1
  %29 = load i16, ptr %26, align 2, !tbaa !91
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds i16, ptr %25, i64 1
  %32 = load i16, ptr %25, align 2, !tbaa !91
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = mul nsw i32 %34, %34
  %36 = zext nneg i32 %35 to i64
  %37 = add nsw i64 %24, %36
  %38 = add nuw nsw i32 %27, 1
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %40, label %23, !llvm.loop !363

40:                                               ; preds = %23, %13
  %41 = phi i64 [ %15, %13 ], [ %37, %23 ]
  %42 = add nuw nsw i64 %14, 1
  %43 = icmp eq i64 %42, %12
  br i1 %43, label %44, label %13, !llvm.loop !364

44:                                               ; preds = %40, %6
  %45 = phi i64 [ 0, %6 ], [ %41, %40 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculate_frame_no(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !95
  %6 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !365
  %8 = sdiv i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !199
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 93
  %14 = load i32, ptr %13, align 8, !tbaa !366
  %15 = mul nsw i32 %14, %12
  %16 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !365
  %18 = sdiv i32 %15, %17
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 90
  store i32 %18, ptr %19, align 4, !tbaa !367
  br label %20

20:                                               ; preds = %10, %2
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 91
  %22 = load i32, ptr %21, align 8, !tbaa !368
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 90
  %24 = load i32, ptr %23, align 4, !tbaa !367
  %25 = add nsw i32 %24, %8
  %26 = tail call i32 @llvm.smax.i32(i32 %22, i32 %25)
  store i32 %26, ptr %21, align 8, !tbaa !368
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  store i32 %25, ptr %27, align 4, !tbaa !347
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @find_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  %9 = alloca [4 x [6 x i8]], align 16
  %10 = load ptr, ptr %0, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !333
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 63
  %14 = load i32, ptr %13, align 4, !tbaa !369
  %15 = ashr i32 %14, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %17, i64 0, i32 39, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !370
  %20 = icmp eq i32 %19, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 16 dereferenceable(24) @__const.exit_picture.yuv_types, i64 24, i1 false)
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  %22 = load i32, ptr %21, align 8, !tbaa !69
  %23 = mul nsw i32 %22, %22
  store i32 %23, ptr %6, align 4, !tbaa !69
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = mul nsw i32 %25, %25
  %27 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !69
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 2
  %29 = load i32, ptr %28, align 8, !tbaa !69
  %30 = mul nsw i32 %29, %29
  %31 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  store i32 %30, ptr %31, align 4, !tbaa !69
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %33 = load ptr, ptr %32, align 8, !tbaa !371
  store ptr %33, ptr %7, align 16, !tbaa !44
  %34 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %35 = load i32, ptr %34, align 4, !tbaa !271
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 131
  %39 = load ptr, ptr %38, align 8, !tbaa !372
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  store ptr %40, ptr %41, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  br label %46

44:                                               ; preds = %3
  %45 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  store ptr null, ptr %45, align 8, !tbaa !44
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi ptr [ %43, %37 ], [ null, %44 ]
  %48 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  store ptr %47, ptr %48, align 16, !tbaa !44
  %49 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %50 = load ptr, ptr %49, align 8, !tbaa !126
  store ptr %50, ptr %8, align 16, !tbaa !44
  br i1 %36, label %58, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %53 = load ptr, ptr %52, align 8, !tbaa !336
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store ptr %54, ptr %55, align 8, !tbaa !44
  %56 = getelementptr inbounds ptr, ptr %53, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  br label %60

58:                                               ; preds = %46
  %59 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store ptr null, ptr %59, align 8, !tbaa !44
  br label %60

60:                                               ; preds = %58, %51
  %61 = phi ptr [ %57, %51 ], [ null, %58 ]
  %62 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  store ptr %61, ptr %62, align 16, !tbaa !44
  %63 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !69
  store i32 %64, ptr %4, align 4, !tbaa !69
  %65 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !69
  store i32 %66, ptr %5, align 4, !tbaa !69
  %67 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 3, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !69
  %69 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 %68, ptr %69, align 4, !tbaa !69
  %70 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 %68, ptr %70, align 4, !tbaa !69
  %71 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 4, i64 1
  %72 = load i32, ptr %71, align 4, !tbaa !69
  %73 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 2
  store i32 %72, ptr %73, align 4, !tbaa !69
  %74 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  store i32 %72, ptr %74, align 4, !tbaa !69
  %75 = sext i32 %64 to i64
  %76 = sext i32 %66 to i64
  %77 = mul nsw i64 %76, %75
  %78 = sext i32 %68 to i64
  %79 = sext i32 %72 to i64
  %80 = shl nsw i64 %78, 1
  %81 = mul i64 %80, %79
  %82 = add nsw i64 %81, %77
  %83 = sext i32 %15 to i64
  %84 = mul nsw i64 %82, %83
  %85 = mul i32 %64, %15
  %86 = mul i32 %85, %66
  %87 = sext i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #30
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %60
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #27
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i32, ptr %2, align 4, !tbaa !69
  %93 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  %94 = load i32, ptr %93, align 4, !tbaa !347
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %84, %95
  %97 = tail call i64 @lseek(i32 noundef %92, i64 noundef %96, i32 noundef 0) #27
  %98 = icmp eq i64 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load ptr, ptr @stderr, align 8, !tbaa !44
  %101 = load i32, ptr %93, align 4, !tbaa !347
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.3, i32 noundef %101) #32
  tail call void @free(ptr noundef %88) #27
  br label %238

103:                                              ; preds = %91
  br i1 %20, label %104, label %108

104:                                              ; preds = %103
  %105 = load i32, ptr %2, align 4, !tbaa !69
  %106 = sdiv i64 %84, 3
  %107 = tail call i64 @lseek(i32 noundef %105, i64 noundef %106, i32 noundef 1) #27
  br label %108

108:                                              ; preds = %104, %103
  %109 = sub nsw i64 0, %84
  br label %110

110:                                              ; preds = %108, %199
  %111 = phi i64 [ 0, %108 ], [ %201, %199 ]
  %112 = icmp eq i64 %111, 2
  %113 = and i1 %20, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, ptr %2, align 4, !tbaa !69
  %116 = tail call i64 @lseek(i32 noundef %115, i64 noundef %109, i32 noundef 1) #27
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, ptr %2, align 4, !tbaa !69
  %119 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %111
  %120 = load i32, ptr %119, align 4, !tbaa !69
  %121 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %111
  %122 = load i32, ptr %121, align 4, !tbaa !69
  %123 = mul nsw i32 %122, %120
  %124 = mul nsw i32 %123, %15
  %125 = sext i32 %124 to i64
  %126 = tail call i64 @read(i32 noundef %118, ptr noundef %88, i64 noundef %125) #27
  %127 = trunc i64 %126 to i32
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %117
  %130 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  tail call void @llvm.memset.p0.i64(ptr align 1 %88, i8 0, i64 %125, i1 false)
  %131 = load i32, ptr %2, align 4, !tbaa !69
  %132 = tail call i32 @close(i32 noundef %131) #27
  store i32 -1, ptr %2, align 4, !tbaa !69
  br label %206

133:                                              ; preds = %117
  %134 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %111
  %135 = load ptr, ptr %134, align 8, !tbaa !44
  tail call void @buffer2img(ptr noundef %135, ptr noundef %88, i32 noundef %120, i32 noundef %122, i32 noundef %15)
  %136 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %111
  %137 = load ptr, ptr %136, align 8, !tbaa !44
  %138 = icmp sgt i32 %122, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %133
  %140 = icmp sgt i32 %120, 0
  %141 = zext nneg i32 %122 to i64
  br label %142

142:                                              ; preds = %139, %167
  %143 = phi i64 [ 0, %139 ], [ %169, %167 ]
  %144 = phi i64 [ 0, %139 ], [ %168, %167 ]
  br i1 %140, label %145, label %167

145:                                              ; preds = %142
  %146 = getelementptr inbounds ptr, ptr %137, i64 %143
  %147 = load ptr, ptr %146, align 8, !tbaa !44
  %148 = getelementptr inbounds ptr, ptr %135, i64 %143
  %149 = load ptr, ptr %148, align 8, !tbaa !44
  br label %150

150:                                              ; preds = %145, %150
  %151 = phi i64 [ %164, %150 ], [ %144, %145 ]
  %152 = phi ptr [ %158, %150 ], [ %147, %145 ]
  %153 = phi ptr [ %155, %150 ], [ %149, %145 ]
  %154 = phi i32 [ %165, %150 ], [ 0, %145 ]
  %155 = getelementptr inbounds i16, ptr %153, i64 1
  %156 = load i16, ptr %153, align 2, !tbaa !91
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds i16, ptr %152, i64 1
  %159 = load i16, ptr %152, align 2, !tbaa !91
  %160 = zext i16 %159 to i32
  %161 = sub nsw i32 %157, %160
  %162 = mul nsw i32 %161, %161
  %163 = zext nneg i32 %162 to i64
  %164 = add nsw i64 %151, %163
  %165 = add nuw nsw i32 %154, 1
  %166 = icmp eq i32 %165, %120
  br i1 %166, label %167, label %150, !llvm.loop !363

167:                                              ; preds = %150, %142
  %168 = phi i64 [ %144, %142 ], [ %164, %150 ]
  %169 = add nuw nsw i64 %143, 1
  %170 = icmp eq i64 %169, %141
  br i1 %170, label %171, label %142, !llvm.loop !364

171:                                              ; preds = %167, %133
  %172 = phi i64 [ 0, %133 ], [ %168, %167 ]
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %171
  %175 = sitofp i64 %172 to float
  %176 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %111
  %177 = load i32, ptr %176, align 4, !tbaa !69
  %178 = fpext float %175 to double
  %179 = sitofp i32 %177 to double
  %180 = sitofp i32 %123 to double
  %181 = fdiv double %180, %178
  %182 = fmul double %181, %179
  %183 = tail call double @log10(double noundef %182) #27
  %184 = fmul double %183, 1.000000e+01
  %185 = fptrunc double %184 to float
  br label %186

186:                                              ; preds = %171, %174
  %187 = phi float [ %185, %174 ], [ 0.000000e+00, %171 ]
  %188 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1, i64 %111
  store float %187, ptr %188, align 4, !tbaa !348
  %189 = load i32, ptr %12, align 4, !tbaa !350
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3, i64 %111
  br i1 %190, label %199, label %192

192:                                              ; preds = %186
  %193 = load float, ptr %191, align 4, !tbaa !348
  %194 = sitofp i32 %189 to float
  %195 = tail call float @llvm.fmuladd.f32(float %193, float %194, float %187)
  %196 = add nsw i32 %189, 1
  %197 = sitofp i32 %196 to float
  %198 = fdiv float %195, %197
  br label %199

199:                                              ; preds = %186, %192
  %200 = phi float [ %198, %192 ], [ %187, %186 ]
  store float %200, ptr %191, align 4, !tbaa !348
  %201 = add nuw nsw i64 %111, 1
  %202 = load i32, ptr %34, align 4, !tbaa !271
  %203 = icmp ne i32 %202, 0
  %204 = icmp ult i64 %111, 2
  %205 = and i1 %203, %204
  br i1 %205, label %110, label %206, !llvm.loop !373

206:                                              ; preds = %199, %129
  br i1 %20, label %207, label %212

207:                                              ; preds = %206
  %208 = load i32, ptr %2, align 4, !tbaa !69
  %209 = shl nsw i64 %84, 1
  %210 = sdiv i64 %209, 3
  %211 = tail call i64 @lseek(i32 noundef %208, i64 noundef %210, i32 noundef 1) #27
  br label %212

212:                                              ; preds = %207, %206
  tail call void @free(ptr noundef %88) #27
  %213 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 59
  %214 = load i32, ptr %213, align 8, !tbaa !374
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %238, label %216

216:                                              ; preds = %212
  %217 = load ptr, ptr @stdout, align 8, !tbaa !44
  %218 = load i32, ptr %93, align 4, !tbaa !347
  %219 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 4
  %220 = load i32, ptr %219, align 8, !tbaa !232
  %221 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  %222 = load i32, ptr %221, align 4, !tbaa !267
  %223 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 55
  %224 = load i32, ptr %223, align 8, !tbaa !234
  %225 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1
  %226 = load float, ptr %225, align 4, !tbaa !348
  %227 = fpext float %226 to double
  %228 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !348
  %230 = fpext float %229 to double
  %231 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1, i64 2
  %232 = load float, ptr %231, align 4, !tbaa !348
  %233 = fpext float %232 to double
  %234 = load i32, ptr %34, align 4, !tbaa !271
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x [6 x i8]], ptr %9, i64 0, i64 %235
  %237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.5, i32 noundef %218, i32 noundef %220, i32 noundef %222, i32 noundef %224, double noundef %227, double noundef %230, double noundef %233, ptr noundef nonnull %236, i32 noundef 0)
  br label %238

238:                                              ; preds = %212, %216, %99
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare void @reorder_ref_pic_list(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #3

declare i32 @read_next_nalu(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RBSPtoSODB(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @nal_unit_header_svc_extension(...) local_unnamed_addr #3

declare void @nal_unit_header_mvc_extension(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @FirstPartOfSliceHeader(ptr noundef) local_unnamed_addr #3

declare i32 @RestOfSliceHeader(ptr noundef) local_unnamed_addr #3

declare i32 @GetBaseViewId(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assign_quant_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @is_new_picture(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #16 {
  %4 = load ptr, ptr %1, align 8, !tbaa !76
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !175
  %8 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 73
  %9 = load i32, ptr %8, align 4, !tbaa !150
  %10 = icmp ne i32 %7, %9
  %11 = or i1 %5, %10
  %12 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !177
  %14 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = icmp ne i32 %13, %15
  %17 = or i1 %11, %16
  %18 = load i32, ptr %2, align 4, !tbaa !178
  %19 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %20 = load i32, ptr %19, align 8, !tbaa !173
  %21 = icmp ne i32 %18, %20
  %22 = or i1 %17, %21
  %23 = icmp eq i32 %20, 0
  %24 = icmp eq i32 %18, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 6
  %28 = load i8, ptr %27, align 4, !tbaa !180
  %29 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %30 = load i8, ptr %29, align 4, !tbaa !179
  %31 = icmp ne i8 %28, %30
  %32 = or i1 %22, %31
  br label %33

33:                                               ; preds = %26, %3
  %34 = phi i1 [ %32, %26 ], [ %22, %3 ]
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !182
  %38 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !181
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = icmp eq i32 %37, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = icmp eq i32 %39, 0
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %41, %43, %33
  %47 = phi i32 [ 0, %33 ], [ 1, %41 ], [ %45, %43 ]
  %48 = or i32 %47, %35
  %49 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 7
  %50 = load i8, ptr %49, align 1, !tbaa !184
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !183
  %54 = icmp ne i32 %53, %51
  %55 = zext i1 %54 to i32
  %56 = or i32 %48, %55
  %57 = icmp eq i32 %53, 0
  %58 = icmp eq i8 %50, 0
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !186
  %63 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 7
  %64 = load i32, ptr %63, align 4, !tbaa !185
  %65 = icmp ne i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = or i32 %56, %66
  br label %68

68:                                               ; preds = %60, %46
  %69 = phi i32 [ %67, %60 ], [ %56, %46 ]
  %70 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %71, i64 0, i32 19
  %73 = load i32, ptr %72, align 4, !tbaa !187
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !189
  %78 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %79 = load i32, ptr %78, align 8, !tbaa !188
  %80 = icmp ne i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = or i32 %69, %81
  %83 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !59
  %85 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !375
  %87 = icmp eq i32 %86, 1
  %88 = and i1 %23, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 4
  %91 = load i32, ptr %90, align 4, !tbaa !191
  %92 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 15
  %93 = load i32, ptr %92, align 4, !tbaa !190
  %94 = icmp ne i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = or i32 %82, %95
  br label %97

97:                                               ; preds = %75, %89, %68
  %98 = phi i32 [ %96, %89 ], [ %82, %75 ], [ %69, %68 ]
  %99 = icmp eq i32 %73, 1
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %71, i64 0, i32 21
  %102 = load i32, ptr %101, align 4, !tbaa !376
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !69
  %107 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %108 = load i32, ptr %107, align 8, !tbaa !69
  %109 = icmp ne i32 %106, %108
  %110 = zext i1 %109 to i32
  %111 = or i32 %98, %110
  %112 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !59
  %114 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %113, i64 0, i32 11
  %115 = load i32, ptr %114, align 8, !tbaa !375
  %116 = icmp eq i32 %115, 1
  %117 = and i1 %23, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 5, i64 1
  %120 = load i32, ptr %119, align 4, !tbaa !69
  %121 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %122 = load i32, ptr %121, align 4, !tbaa !69
  %123 = icmp ne i32 %120, %122
  %124 = zext i1 %123 to i32
  %125 = or i32 %111, %124
  br label %126

126:                                              ; preds = %104, %100, %118, %97
  %127 = phi i32 [ %98, %100 ], [ %125, %118 ], [ %111, %104 ], [ %98, %97 ]
  %128 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 66
  %129 = load i32, ptr %128, align 8, !tbaa !192
  %130 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 10
  %131 = load i32, ptr %130, align 4, !tbaa !193
  %132 = icmp ne i32 %129, %131
  %133 = zext i1 %132 to i32
  %134 = or i32 %127, %133
  %135 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 67
  %136 = load i32, ptr %135, align 4, !tbaa !194
  %137 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 11
  %138 = load i32, ptr %137, align 4, !tbaa !195
  %139 = icmp ne i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = or i32 %134, %140
  %142 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 68
  %143 = load i32, ptr %142, align 8, !tbaa !196
  %144 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 12
  %145 = load i32, ptr %144, align 4, !tbaa !197
  %146 = icmp ne i32 %143, %145
  %147 = zext i1 %146 to i32
  %148 = or i32 %141, %147
  ret i32 %148
}

declare void @CheckZeroByteVCL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @setup_slice_methods(ptr noundef) local_unnamed_addr #3

declare void @arideco_start_decoding(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fmo_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_pic_num(ptr noundef) local_unnamed_addr #3

declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @InterpretSEIMessage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ProcessPPS(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ProcessSPS(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @prefix_nal_unit_svc(...) local_unnamed_addr #3

declare void @ProcessSubsetSPS(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pad_buf(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
  %7 = sext i32 %4 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i16, ptr %0, i64 %8
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = sub nsw i32 0, %4
  %13 = load i16, ptr %0, align 2, !tbaa !91
  %14 = sext i32 %12 to i64
  br label %24

15:                                               ; preds = %24, %6
  %16 = icmp sgt i32 %4, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %15
  %18 = getelementptr i16, ptr %0, i64 -1
  %19 = sext i32 %1 to i64
  %20 = getelementptr i16, ptr %18, i64 %19
  %21 = sext i32 %1 to i64
  %22 = zext nneg i32 %4 to i64
  %23 = getelementptr i16, ptr %0, i64 %21
  br label %30

24:                                               ; preds = %11, %24
  %25 = phi i64 [ %14, %11 ], [ %27, %24 ]
  %26 = getelementptr inbounds i16, ptr %0, i64 %25
  store i16 %13, ptr %26, align 2, !tbaa !91
  %27 = add nsw i64 %25, 1
  %28 = and i64 %27, 4294967295
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %15, label %24, !llvm.loop !377

30:                                               ; preds = %17, %30
  %31 = phi i64 [ 0, %17 ], [ %34, %30 ]
  %32 = load i16, ptr %20, align 2, !tbaa !91
  %33 = getelementptr i16, ptr %23, i64 %31
  store i16 %32, ptr %33, align 2, !tbaa !91
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %22
  br i1 %35, label %36, label %30, !llvm.loop !378

36:                                               ; preds = %30, %15
  %37 = icmp sgt i32 %5, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = sub nsw i32 0, %5
  %40 = sext i32 %3 to i64
  %41 = shl nsw i64 %40, 1
  %42 = sext i32 %39 to i64
  %43 = sext i32 %3 to i64
  br label %56

44:                                               ; preds = %56, %36
  %45 = icmp sgt i32 %2, 1
  br i1 %45, label %46, label %87

46:                                               ; preds = %44
  %47 = icmp sgt i32 %4, 0
  %48 = add nsw i32 %4, %1
  %49 = sext i32 %48 to i64
  %50 = icmp slt i32 %4, 1
  %51 = add i32 %4, 1
  %52 = sext i32 %3 to i64
  %53 = zext nneg i32 %2 to i64
  %54 = zext nneg i32 %4 to i64
  %55 = zext i32 %51 to i64
  br label %63

56:                                               ; preds = %38, %56
  %57 = phi i64 [ %42, %38 ], [ %60, %56 ]
  %58 = mul nsw i64 %57, %43
  %59 = getelementptr inbounds i16, ptr %9, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %59, ptr align 2 %9, i64 %41, i1 false)
  %60 = add nsw i64 %57, 1
  %61 = and i64 %60, 4294967295
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %44, label %56, !llvm.loop !379

63:                                               ; preds = %46, %84
  %64 = phi i64 [ 1, %46 ], [ %85, %84 ]
  %65 = mul nsw i64 %64, %52
  %66 = getelementptr inbounds i16, ptr %9, i64 %65
  br i1 %47, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds i16, ptr %66, i64 %7
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %73, %69 ]
  %71 = load i16, ptr %68, align 2, !tbaa !91
  %72 = getelementptr inbounds i16, ptr %66, i64 %70
  store i16 %71, ptr %72, align 2, !tbaa !91
  %73 = add nuw nsw i64 %70, 1
  %74 = icmp eq i64 %73, %54
  br i1 %74, label %75, label %69, !llvm.loop !380

75:                                               ; preds = %69, %63
  %76 = getelementptr i16, ptr %66, i64 %49
  %77 = getelementptr i16, ptr %76, i64 -1
  br i1 %50, label %84, label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ %82, %78 ], [ 1, %75 ]
  %80 = load i16, ptr %77, align 2, !tbaa !91
  %81 = getelementptr inbounds i16, ptr %77, i64 %79
  store i16 %80, ptr %81, align 2, !tbaa !91
  %82 = add nuw nsw i64 %79, 1
  %83 = icmp eq i64 %82, %55
  br i1 %83, label %84, label %78, !llvm.loop !381

84:                                               ; preds = %78, %75
  %85 = add nuw nsw i64 %64, 1
  %86 = icmp eq i64 %85, %53
  br i1 %86, label %87, label %63, !llvm.loop !382

87:                                               ; preds = %84, %44
  %88 = add nsw i32 %2, -1
  %89 = mul nsw i32 %88, %3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %9, i64 %90
  %92 = icmp sgt i32 %5, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = add nsw i32 %5, %2
  %95 = sext i32 %3 to i64
  %96 = shl nsw i64 %95, 1
  %97 = sext i32 %2 to i64
  %98 = sext i32 %3 to i64
  %99 = sext i32 %94 to i64
  br label %100

100:                                              ; preds = %93, %100
  %101 = phi i64 [ %97, %93 ], [ %104, %100 ]
  %102 = mul nsw i64 %101, %98
  %103 = getelementptr inbounds i16, ptr %9, i64 %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %103, ptr align 2 %91, i64 %96, i1 false)
  %104 = add nsw i64 %101, 1
  %105 = icmp slt i64 %104, %99
  br i1 %105, label %100, label %106, !llvm.loop !383

106:                                              ; preds = %100, %87
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_dec_picture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 172
  %4 = load i32, ptr %3, align 8, !tbaa !384
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 173
  %6 = load i32, ptr %5, align 4, !tbaa !385
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 67
  %12 = load i32, ptr %11, align 4, !tbaa !386
  %13 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  tail call void @pad_buf(ptr noundef %15, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %4, i32 noundef %6)
  %16 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %17 = load i32, ptr %16, align 4, !tbaa !271
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  %21 = load i32, ptr %20, align 8, !tbaa !387
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  %23 = load i32, ptr %22, align 4, !tbaa !388
  %24 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %25 = load i32, ptr %24, align 8, !tbaa !389
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %27 = load i32, ptr %26, align 4, !tbaa !390
  %28 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 68
  %29 = load i32, ptr %28, align 8, !tbaa !391
  %30 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %31 = load ptr, ptr %30, align 8, !tbaa !336
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  tail call void @pad_buf(ptr noundef %33, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %21, i32 noundef %23)
  %34 = load ptr, ptr %30, align 8, !tbaa !336
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void @pad_buf(ptr noundef %37, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %21, i32 noundef %23)
  br label %38

38:                                               ; preds = %19, %2
  ret void
}

declare void @DeblockPicture(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_frame_picture_JV(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @frame_postprocessing(ptr nocapture noundef readnone %0) local_unnamed_addr #18 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @field_postprocessing(ptr nocapture noundef %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !199
  %4 = sdiv i32 %3, 2
  store i32 %4, ptr %2, align 8, !tbaa !199
  ret void
}

declare void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercWriteMBMODEandMV(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !392
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !393
  %6 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = ashr i32 %9, 4
  %11 = srem i32 %5, %10
  %12 = sdiv i32 %5, %10
  %13 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 139
  %14 = load ptr, ptr %13, align 8, !tbaa !394
  %15 = shl i32 %5, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.object_buffer, ptr %14, i64 %16
  %18 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 22
  %19 = load i32, ptr %18, align 8, !tbaa !163
  %20 = icmp eq i32 %19, 1
  %21 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 35
  br i1 %20, label %30, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !395
  %25 = icmp eq i16 %24, 10
  %26 = shl nsw i32 %11, 2
  %27 = shl nsw i32 %12, 2
  %28 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 35
  %29 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 35
  br label %36

30:                                               ; preds = %1
  %31 = shl nsw i32 %11, 2
  %32 = shl nsw i32 %12, 2
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %34 = load i16, ptr %33, align 8, !tbaa !395
  %35 = icmp eq i16 %34, 10
  br label %146

36:                                               ; preds = %22, %141
  %37 = phi i64 [ 0, %22 ], [ %144, %141 ]
  %38 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37
  br i1 %25, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !45
  switch i8 %41, label %42 [
    i8 11, label %46
    i8 0, label %45
  ]

42:                                               ; preds = %39
  %43 = icmp eq i8 %41, 1
  %44 = select i1 %43, i8 1, i8 5
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %39, %45, %42, %36
  %47 = phi i8 [ 2, %36 ], [ 6, %39 ], [ %44, %42 ], [ 0, %45 ]
  store i8 %47, ptr %38, align 4, !tbaa !396
  %48 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %37
  %49 = load i8, ptr %48, align 1, !tbaa !45
  switch i8 %49, label %53 [
    i8 0, label %50
    i8 11, label %50
  ]

50:                                               ; preds = %46, %46
  %51 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3
  store i32 0, ptr %51, align 4, !tbaa !69
  %52 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3, i64 1
  store i32 0, ptr %52, align 4, !tbaa !69
  br label %141

53:                                               ; preds = %46
  %54 = trunc i64 %37 to i32
  %55 = shl i32 %54, 1
  %56 = and i32 %55, 2
  %57 = or disjoint i32 %56, %26
  %58 = trunc i64 %37 to i32
  %59 = and i32 %58, 2
  %60 = or disjoint i32 %59, %27
  %61 = add i8 %49, -5
  %62 = icmp ult i8 %61, 3
  %63 = sext i32 %60 to i64
  %64 = sext i32 %57 to i64
  br i1 %62, label %65, label %110

65:                                               ; preds = %53
  %66 = load ptr, ptr %28, align 8, !tbaa !43
  %67 = getelementptr inbounds ptr, ptr %66, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = getelementptr inbounds %struct.pic_motion_params, ptr %68, i64 %64, i32 1
  %70 = load i16, ptr %69, align 8, !tbaa !398
  %71 = sext i16 %70 to i32
  %72 = or disjoint i32 %57, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %68, i64 %73, i32 1
  %75 = load i16, ptr %74, align 8, !tbaa !398
  %76 = sext i16 %75 to i32
  %77 = or disjoint i32 %60, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %66, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %64, i32 1
  %82 = load i16, ptr %81, align 8, !tbaa !398
  %83 = sext i16 %82 to i32
  %84 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %73, i32 1
  %85 = load i16, ptr %84, align 8, !tbaa !398
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %71, 2
  %88 = add nsw i32 %87, %76
  %89 = add nsw i32 %88, %83
  %90 = add nsw i32 %89, %86
  %91 = sdiv i32 %90, 4
  %92 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3
  store i32 %91, ptr %92, align 4, !tbaa !69
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %68, i64 %64, i32 1, i64 0, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !399
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %68, i64 %73, i32 1, i64 0, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !399
  %98 = sext i16 %97 to i32
  %99 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %64, i32 1, i64 0, i32 1
  %100 = load i16, ptr %99, align 2, !tbaa !399
  %101 = sext i16 %100 to i32
  %102 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %73, i32 1, i64 0, i32 1
  %103 = load i16, ptr %102, align 2, !tbaa !399
  %104 = sext i16 %103 to i32
  %105 = add nsw i32 %95, 2
  %106 = add nsw i32 %105, %98
  %107 = add nsw i32 %106, %101
  %108 = add nsw i32 %107, %104
  %109 = sdiv i32 %108, 4
  br label %121

110:                                              ; preds = %53
  %111 = load ptr, ptr %21, align 8, !tbaa !43
  %112 = getelementptr inbounds ptr, ptr %111, i64 %63
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = getelementptr inbounds %struct.pic_motion_params, ptr %113, i64 %64, i32 1
  %115 = load i16, ptr %114, align 8, !tbaa !398
  %116 = sext i16 %115 to i32
  %117 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3
  store i32 %116, ptr %117, align 4, !tbaa !69
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %113, i64 %64, i32 1, i64 0, i32 1
  %119 = load i16, ptr %118, align 2, !tbaa !399
  %120 = sext i16 %119 to i32
  br label %121

121:                                              ; preds = %110, %65
  %122 = phi i32 [ %120, %110 ], [ %109, %65 ]
  %123 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3, i64 1
  store i32 %122, ptr %123, align 4, !tbaa !69
  %124 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !69
  %126 = tail call i32 @llvm.abs.i32(i32 %125, i1 true)
  %127 = tail call i32 @llvm.abs.i32(i32 %122, i1 true)
  %128 = add nuw nsw i32 %127, %126
  %129 = load ptr, ptr %0, align 8, !tbaa !400
  %130 = getelementptr inbounds %struct.slice, ptr %129, i64 0, i32 123
  %131 = load i32, ptr %130, align 8, !tbaa !210
  %132 = add nsw i32 %128, %131
  store i32 %132, ptr %130, align 8, !tbaa !210
  %133 = load ptr, ptr %29, align 8, !tbaa !43
  %134 = sext i32 %60 to i64
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !44
  %137 = sext i32 %57 to i64
  %138 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %137, i32 2
  %139 = load i8, ptr %138, align 8, !tbaa !45
  %140 = sext i8 %139 to i32
  br label %141

141:                                              ; preds = %50, %121
  %142 = phi i32 [ 0, %50 ], [ %140, %121 ]
  %143 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %37, i32 3, i64 2
  store i32 %142, ptr %143, align 4, !tbaa !69
  %144 = add nuw nsw i64 %37, 1
  %145 = icmp eq i64 %144, 4
  br i1 %145, label %235, label %36, !llvm.loop !401

146:                                              ; preds = %30, %230
  %147 = phi i64 [ 0, %30 ], [ %233, %230 ]
  %148 = trunc i64 %147 to i32
  %149 = shl i32 %148, 1
  %150 = and i32 %149, 2
  %151 = or disjoint i32 %150, %31
  %152 = trunc i64 %147 to i32
  %153 = and i32 %152, 2
  %154 = or disjoint i32 %153, %32
  %155 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %147
  br i1 %35, label %164, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %147
  %158 = load i8, ptr %157, align 1, !tbaa !45
  %159 = icmp eq i8 %158, 11
  %160 = select i1 %159, i8 6, i8 5
  store i8 %160, ptr %155, align 4, !tbaa !396
  %161 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %147
  %162 = load i8, ptr %161, align 1, !tbaa !45
  %163 = icmp eq i8 %162, 11
  br i1 %163, label %165, label %168

164:                                              ; preds = %146
  store i8 2, ptr %155, align 4, !tbaa !396
  br label %165

165:                                              ; preds = %164, %156
  %166 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %147, i32 3
  store i32 0, ptr %166, align 4, !tbaa !69
  %167 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %147, i32 3, i64 1
  store i32 0, ptr %167, align 4, !tbaa !69
  br label %230

168:                                              ; preds = %156
  %169 = load ptr, ptr %21, align 8, !tbaa !43
  %170 = sext i32 %154 to i64
  %171 = getelementptr inbounds ptr, ptr %169, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !44
  %173 = sext i32 %151 to i64
  %174 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %173, i32 2
  %175 = load i8, ptr %174, align 8, !tbaa !45
  %176 = lshr i8 %175, 7
  %177 = zext nneg i8 %176 to i64
  %178 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %173, i32 1, i64 %177
  %179 = load i16, ptr %178, align 4, !tbaa !398
  %180 = sext i16 %179 to i32
  %181 = or disjoint i32 %151, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %182, i32 1, i64 %177
  %184 = load i16, ptr %183, align 4, !tbaa !398
  %185 = sext i16 %184 to i32
  %186 = or disjoint i32 %154, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %169, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !44
  %190 = getelementptr inbounds %struct.pic_motion_params, ptr %189, i64 %173, i32 1, i64 %177
  %191 = load i16, ptr %190, align 4, !tbaa !398
  %192 = sext i16 %191 to i32
  %193 = getelementptr inbounds %struct.pic_motion_params, ptr %189, i64 %182, i32 1, i64 %177
  %194 = load i16, ptr %193, align 4, !tbaa !398
  %195 = sext i16 %194 to i32
  %196 = add nsw i32 %180, 2
  %197 = add nsw i32 %196, %185
  %198 = add nsw i32 %197, %192
  %199 = add nsw i32 %198, %195
  %200 = sdiv i32 %199, 4
  %201 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %147, i32 3
  store i32 %200, ptr %201, align 4, !tbaa !69
  %202 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %173, i32 1, i64 %177, i32 1
  %203 = load i16, ptr %202, align 2, !tbaa !399
  %204 = sext i16 %203 to i32
  %205 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %182, i32 1, i64 %177, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !399
  %207 = sext i16 %206 to i32
  %208 = getelementptr inbounds %struct.pic_motion_params, ptr %189, i64 %173, i32 1, i64 %177, i32 1
  %209 = load i16, ptr %208, align 2, !tbaa !399
  %210 = sext i16 %209 to i32
  %211 = getelementptr inbounds %struct.pic_motion_params, ptr %189, i64 %182, i32 1, i64 %177, i32 1
  %212 = load i16, ptr %211, align 2, !tbaa !399
  %213 = sext i16 %212 to i32
  %214 = add nsw i32 %204, 2
  %215 = add nsw i32 %214, %207
  %216 = add nsw i32 %215, %210
  %217 = add nsw i32 %216, %213
  %218 = sdiv i32 %217, 4
  %219 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %147, i32 3, i64 1
  store i32 %218, ptr %219, align 4, !tbaa !69
  %220 = tail call i32 @llvm.abs.i32(i32 %200, i1 true)
  %221 = tail call i32 @llvm.abs.i32(i32 %218, i1 true)
  %222 = load ptr, ptr %0, align 8, !tbaa !400
  %223 = getelementptr inbounds %struct.slice, ptr %222, i64 0, i32 123
  %224 = load i32, ptr %223, align 8, !tbaa !210
  %225 = add i32 %224, %220
  %226 = add i32 %225, %221
  store i32 %226, ptr %223, align 8, !tbaa !210
  %227 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %173, i32 2, i64 %177
  %228 = load i8, ptr %227, align 1, !tbaa !45
  %229 = sext i8 %228 to i32
  br label %230

230:                                              ; preds = %165, %168
  %231 = phi i32 [ 0, %165 ], [ %229, %168 ]
  %232 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %147, i32 3, i64 2
  store i32 %231, ptr %232, align 4, !tbaa !69
  %233 = add nuw nsw i64 %147, 1
  %234 = icmp eq i64 %233, 4
  br i1 %234, label %235, label %146, !llvm.loop !402

235:                                              ; preds = %141, %230
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_old_slice(ptr nocapture noundef writeonly %0) local_unnamed_addr #22 {
  store i32 0, ptr %0, align 4, !tbaa !178
  %2 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 9
  store i32 2147483647, ptr %2, align 4, !tbaa !175
  %3 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 1
  store i32 2147483647, ptr %3, align 4, !tbaa !177
  %4 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 2
  store i32 2147483647, ptr %4, align 4, !tbaa !182
  %5 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 7
  store i8 0, ptr %5, align 1, !tbaa !184
  %6 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 3
  store i32 -1, ptr %6, align 4, !tbaa !189
  %7 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 4
  store i32 2147483647, ptr %7, align 4, !tbaa !191
  %8 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 5
  store i32 2147483647, ptr %8, align 4, !tbaa !69
  %9 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 5, i64 1
  store i32 2147483647, ptr %9, align 4, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_dec_picture_JV(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !230
  %6 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !230
  %7 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !231
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !231
  %10 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !232
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !232
  %13 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 55
  %14 = load i32, ptr %13, align 8, !tbaa !234
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 55
  store i32 %14, ptr %15, align 8, !tbaa !234
  %16 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 57
  %17 = load i32, ptr %16, align 4, !tbaa !236
  %18 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 57
  store i32 %17, ptr %18, align 4, !tbaa !236
  %19 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 56
  %20 = load i32, ptr %19, align 4, !tbaa !69
  %21 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 56
  store i32 %20, ptr %21, align 4, !tbaa !69
  %22 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 56, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !69
  %24 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 56, i64 1
  store i32 %23, ptr %24, align 4, !tbaa !69
  %25 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !95
  %27 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !95
  %28 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 43
  %29 = load i32, ptr %28, align 8, !tbaa !253
  %30 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 43
  store i32 %29, ptr %30, align 8, !tbaa !253
  %31 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !108
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  store i32 %32, ptr %33, align 4, !tbaa !108
  %34 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 44
  %35 = load i32, ptr %34, align 4, !tbaa !254
  %36 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 44
  store i32 %35, ptr %36, align 4, !tbaa !254
  %37 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 45
  %38 = load i32, ptr %37, align 8, !tbaa !256
  %39 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 45
  store i32 %38, ptr %39, align 8, !tbaa !256
  %40 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 46
  %41 = load i32, ptr %40, align 4, !tbaa !258
  %42 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 46
  store i32 %41, ptr %42, align 4, !tbaa !258
  %43 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 47
  %44 = load i32, ptr %43, align 8, !tbaa !260
  %45 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  store i32 %44, ptr %45, align 8, !tbaa !260
  %46 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 58
  %47 = load ptr, ptr %46, align 8, !tbaa !262
  %48 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 58
  store ptr %47, ptr %48, align 8, !tbaa !262
  %49 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 25
  %50 = load i32, ptr %49, align 4, !tbaa !263
  %51 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 25
  store i32 %50, ptr %51, align 4, !tbaa !263
  %52 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 26
  %53 = load i32, ptr %52, align 8, !tbaa !264
  %54 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 26
  store i32 %53, ptr %54, align 8, !tbaa !264
  %55 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !267
  %57 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  store i32 %56, ptr %57, align 4, !tbaa !267
  %58 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !268
  %60 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  store i32 %59, ptr %60, align 4, !tbaa !268
  %61 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !269
  %63 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 6
  store i32 %62, ptr %63, align 8, !tbaa !269
  %64 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 24
  %65 = load i32, ptr %64, align 8, !tbaa !270
  %66 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 24
  store i32 %65, ptr %66, align 8, !tbaa !270
  %67 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %68 = load i32, ptr %67, align 4, !tbaa !271
  %69 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  store i32 %68, ptr %69, align 4, !tbaa !271
  %70 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 49
  %71 = load i32, ptr %70, align 8, !tbaa !273
  %72 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  store i32 %71, ptr %72, align 8, !tbaa !273
  %73 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 50
  %74 = load i32, ptr %73, align 4, !tbaa !275
  %75 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 50
  store i32 %74, ptr %75, align 4, !tbaa !275
  %76 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 51
  %77 = load i32, ptr %76, align 8, !tbaa !277
  %78 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  store i32 %77, ptr %78, align 8, !tbaa !277
  %79 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 52
  %80 = load i32, ptr %79, align 4, !tbaa !279
  %81 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  store i32 %80, ptr %81, align 4, !tbaa !279
  %82 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 53
  %83 = load i32, ptr %82, align 8, !tbaa !281
  %84 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  store i32 %83, ptr %84, align 8, !tbaa !281
  %85 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 54
  %86 = load i32, ptr %85, align 4, !tbaa !283
  %87 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  store i32 %86, ptr %87, align 4, !tbaa !283
  %88 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 60
  %89 = load i32, ptr %88, align 4, !tbaa !288
  %90 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 60
  store i32 %89, ptr %90, align 4, !tbaa !288
  %91 = load i32, ptr %88, align 4, !tbaa !288
  store i32 %91, ptr %90, align 4, !tbaa !288
  %92 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 61
  %93 = load i32, ptr %92, align 8, !tbaa !290
  %94 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 61
  store i32 %93, ptr %94, align 8, !tbaa !290
  %95 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 62
  %96 = load i32, ptr %95, align 4, !tbaa !292
  %97 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 62
  store i32 %96, ptr %97, align 4, !tbaa !292
  %98 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 63
  %99 = load ptr, ptr %98, align 8, !tbaa !293
  %100 = icmp eq ptr %99, null
  br i1 %100, label %118, label %101

101:                                              ; preds = %3
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 158
  %103 = load ptr, ptr %102, align 8, !tbaa !284
  %104 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %103, i64 0, i32 2
  %105 = load i8, ptr %104, align 8, !tbaa !287
  %106 = zext nneg i8 %105 to i32
  %107 = shl nuw i32 1, %106
  %108 = sext i32 %107 to i64
  %109 = shl nsw i64 %108, 2
  %110 = tail call noalias ptr @malloc(i64 noundef %109) #30
  %111 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 63
  store ptr %110, ptr %111, align 8, !tbaa !293
  %112 = icmp eq ptr %110, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  tail call void @no_mem_exit(ptr noundef nonnull @.str.46) #27
  br label %114

114:                                              ; preds = %113, %101
  %115 = load ptr, ptr %111, align 8, !tbaa !293
  %116 = load ptr, ptr %98, align 8, !tbaa !293
  %117 = shl nsw i64 %108, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %115, ptr noundef nonnull align 2 dereferenceable(1) %116, i64 %117, i1 false)
  br label %118

118:                                              ; preds = %114, %3
  ret void
}

declare void @compute_colocated(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @start_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @decode_one_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @exit_macroblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetVOIdx(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !322
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !323
  %9 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !403
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %6, %18
  %13 = phi i32 [ %19, %18 ], [ %10, %6 ]
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %13, -1
  %20 = icmp sgt i32 %13, 0
  br i1 %20, label %12, label %21, !llvm.loop !404

21:                                               ; preds = %12, %18, %6, %2
  %22 = phi i32 [ -1, %2 ], [ %10, %6 ], [ -1, %18 ], [ %13, %12 ]
  ret i32 %22
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_maxViewIdx(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !323
  %11 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !403
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %8, %20
  %15 = phi i32 [ %21, %20 ], [ %12, %8 ]
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = add nsw i32 %15, -1
  %22 = icmp sgt i32 %15, 0
  br i1 %22, label %14, label %23, !llvm.loop !404

23:                                               ; preds = %14, %20, %8, %4
  %24 = phi i32 [ -1, %4 ], [ %12, %8 ], [ -1, %20 ], [ %15, %14 ]
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = icmp eq i32 %2, 0
  %28 = icmp eq i32 %3, 0
  %29 = zext nneg i32 %24 to i64
  %30 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 4
  %31 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 6
  %32 = select i1 %28, ptr %30, ptr %31
  %33 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 8
  %34 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 10
  %35 = select i1 %28, ptr %33, ptr %34
  %36 = select i1 %27, ptr %35, ptr %32
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds i32, ptr %37, i64 %29
  %39 = load i32, ptr %38, align 4, !tbaa !69
  br label %40

40:                                               ; preds = %26, %23
  %41 = phi i32 [ 0, %23 ], [ %39, %26 ]
  ret i32 %41
}

declare void @conceal_lost_frames(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fill_frame_num_gap(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decode_poc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ercReset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @set_ec_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) #3

declare void @get_mb_block_pos_normal(i32 noundef, ptr noundef, ptr noundef) #3

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @update_tone_mapping_sei(ptr noundef) local_unnamed_addr #3

declare void @update_ref_list(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_ltref_list(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @init_Deblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #23

declare void @get_mb_pos(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #26

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { cold }

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
!34 = !{!35, !36, i64 64}
!35 = !{!"storable_picture", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !37, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !37, i64 160, !41, i64 184, !37, i64 192, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !37, i64 300, !36, i64 308, !40, i64 312, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !40, i64 336, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !40, i64 376, !36, i64 384, !36, i64 388, !37, i64 392, !37, i64 400}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"pic_motion_params_old", !40, i64 0}
!42 = !{!35, !36, i64 68}
!43 = !{!35, !40, i64 152}
!44 = !{!40, !40, i64 0}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !40, i64 24}
!50 = !{!"slice", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !37, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !39, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !37, i64 136, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !40, i64 248, !37, i64 256, !37, i64 264, !40, i64 312, !40, i64 320, !40, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !36, i64 1176, !36, i64 1180, !36, i64 1184, !51, i64 1188, !39, i64 1220, !39, i64 1222, !39, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !37, i64 1288, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !36, i64 13264, !36, i64 13268, !39, i64 13272, !39, i64 13274, !39, i64 13276, !39, i64 13278, !40, i64 13280, !40, i64 13288, !40, i64 13296, !39, i64 13304, !39, i64 13306, !36, i64 13308, !36, i64 13312, !40, i64 13320, !40, i64 13328, !36, i64 13336, !37, i64 13340, !40, i64 13408, !40, i64 13416, !40, i64 13424, !40, i64 13432, !40, i64 13440, !40, i64 13448, !40, i64 13456, !40, i64 13464, !40, i64 13472, !40, i64 13480, !40, i64 13488, !40, i64 13496, !36, i64 13504, !40, i64 13512, !40, i64 13520, !40, i64 13528, !40, i64 13536, !40, i64 13544, !37, i64 13552}
!51 = !{!"nalunitheadermvcext_tag", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!52 = !{!53, !40, i64 16}
!53 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 132120, !40, i64 699416, !37, i64 699424, !36, i64 848672, !36, i64 848676, !36, i64 848680, !36, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !36, i64 848712, !36, i64 848716, !36, i64 848720, !36, i64 848724, !36, i64 848728, !40, i64 848736, !40, i64 848744, !37, i64 848752, !36, i64 848776, !36, i64 848780, !36, i64 848784, !36, i64 848788, !36, i64 848792, !40, i64 848800, !37, i64 848808, !40, i64 848832, !40, i64 848840, !37, i64 848848, !36, i64 848872, !36, i64 848876, !40, i64 848880, !40, i64 848888, !37, i64 848896, !36, i64 848920, !40, i64 848928, !40, i64 848936, !36, i64 848944, !36, i64 848948, !36, i64 848952, !36, i64 848956, !36, i64 848960, !36, i64 848964, !36, i64 848968, !36, i64 848972, !36, i64 848976, !36, i64 848980, !36, i64 848984, !36, i64 848988, !36, i64 848992, !36, i64 848996, !36, i64 849000, !36, i64 849004, !36, i64 849008, !36, i64 849012, !36, i64 849016, !36, i64 849020, !36, i64 849024, !36, i64 849028, !36, i64 849032, !36, i64 849036, !39, i64 849040, !39, i64 849042, !37, i64 849044, !36, i64 849052, !36, i64 849056, !37, i64 849060, !37, i64 849072, !36, i64 849084, !36, i64 849088, !36, i64 849092, !36, i64 849096, !36, i64 849100, !36, i64 849104, !36, i64 849108, !36, i64 849112, !36, i64 849116, !36, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !36, i64 849196, !36, i64 849200, !36, i64 849204, !36, i64 849208, !36, i64 849212, !36, i64 849216, !36, i64 849220, !36, i64 849224, !36, i64 849228, !36, i64 849232, !36, i64 849236, !36, i64 849240, !36, i64 849244, !36, i64 849248, !36, i64 849252, !36, i64 849256, !36, i64 849260, !36, i64 849264, !36, i64 849268, !36, i64 849272, !36, i64 849276, !36, i64 849280, !36, i64 849284, !40, i64 849288, !40, i64 849296, !54, i64 849304, !54, i64 849624, !54, i64 849944, !54, i64 850264, !54, i64 850584, !54, i64 850904, !54, i64 851224, !54, i64 851544, !36, i64 851864, !36, i64 851868, !36, i64 851872, !57, i64 851880, !36, i64 851888, !37, i64 851892, !36, i64 855988, !36, i64 855992, !36, i64 855996, !36, i64 856000, !36, i64 856004, !36, i64 856008, !36, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !37, i64 856056, !40, i64 856456, !37, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !36, i64 856512, !40, i64 856520, !37, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !36, i64 856640, !36, i64 856644, !36, i64 856648, !40, i64 856656, !40, i64 856664, !37, i64 856672, !37, i64 856688, !40, i64 856704, !40, i64 856712, !36, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !36, i64 856824, !40, i64 856832, !36, i64 856840, !36, i64 856844, !36, i64 856848, !36, i64 856852, !36, i64 856856, !36, i64 856860, !36, i64 856864, !40, i64 856872}
!54 = !{!"image_data", !55, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!55 = !{!"frame_format", !36, i64 0, !36, i64 4, !56, i64 8, !37, i64 16, !37, i64 28, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !36, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !36, i64 124, !36, i64 128}
!56 = !{!"double", !37, i64 0}
!57 = !{!"long", !37, i64 0}
!58 = !{!50, !40, i64 16}
!59 = !{!53, !40, i64 8}
!60 = !{!50, !40, i64 13464}
!61 = !{!50, !36, i64 32}
!62 = !{!50, !36, i64 104}
!63 = !{!50, !40, i64 13320}
!64 = !{!50, !40, i64 13328}
!65 = !{!50, !36, i64 184}
!66 = !{!50, !36, i64 220}
!67 = !{!53, !36, i64 851864}
!68 = !{!50, !36, i64 172}
!69 = !{!36, !36, i64 0}
!70 = !{!71, !36, i64 36}
!71 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !36, i64 2060, !36, i64 2064, !36, i64 2068, !36, i64 2072, !36, i64 2076, !36, i64 2080, !36, i64 2084, !36, i64 2088, !36, i64 2092, !37, i64 2096, !36, i64 3120, !36, i64 3124, !36, i64 3128, !36, i64 3132, !36, i64 3136, !36, i64 3140, !36, i64 3144, !36, i64 3148, !36, i64 3152, !36, i64 3156, !36, i64 3160, !36, i64 3164, !36, i64 3168, !72, i64 3172, !36, i64 4120, !36, i64 4124}
!72 = !{!"", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 10, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !73, i64 80, !36, i64 492, !73, i64 496, !36, i64 908, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944}
!73 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408}
!74 = !{!50, !40, i64 13480}
!75 = !{!50, !40, i64 13488}
!76 = !{!50, !40, i64 0}
!77 = !{!50, !36, i64 164}
!78 = !{!53, !40, i64 856488}
!79 = !{!53, !36, i64 848948}
!80 = !{!50, !36, i64 128}
!81 = !{!82, !36, i64 12}
!82 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !36, i64 2040, !36, i64 2044, !36, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !36, i64 2148, !36, i64 2152, !36, i64 2156, !40, i64 2160, !36, i64 2168, !36, i64 2172, !36, i64 2176, !36, i64 2180, !36, i64 2184, !36, i64 2188, !36, i64 2192, !36, i64 2196, !36, i64 2200, !36, i64 2204, !36, i64 2208}
!83 = !{!82, !36, i64 2180}
!84 = !{!82, !36, i64 2176}
!85 = !{!50, !39, i64 13276}
!86 = !{!50, !39, i64 13278}
!87 = !{!50, !39, i64 13304}
!88 = !{!50, !39, i64 13306}
!89 = !{!50, !40, i64 13280}
!90 = !{!50, !40, i64 13288}
!91 = !{!39, !39, i64 0}
!92 = distinct !{!92, !47, !48}
!93 = distinct !{!93, !47, !48}
!94 = !{!50, !40, i64 13296}
!95 = !{!35, !36, i64 4}
!96 = !{!35, !37, i64 40}
!97 = distinct !{!97, !47, !48}
!98 = distinct !{!98, !47, !48}
!99 = distinct !{!99, !47, !48}
!100 = distinct !{!100, !47, !48}
!101 = distinct !{!101, !47, !48}
!102 = distinct !{!102, !47, !48}
!103 = distinct !{!103, !47, !48}
!104 = !{!50, !36, i64 144}
!105 = !{!53, !36, i64 856824}
!106 = !{!53, !36, i64 856856}
!107 = !{!53, !40, i64 856456}
!108 = !{!35, !36, i64 44}
!109 = !{!53, !36, i64 849280}
!110 = !{!50, !36, i64 216}
!111 = !{!50, !40, i64 13520}
!112 = !{!50, !36, i64 188}
!113 = !{!50, !36, i64 192}
!114 = !{!50, !36, i64 120}
!115 = !{!53, !40, i64 848888}
!116 = !{!50, !40, i64 13512}
!117 = !{!53, !40, i64 848840}
!118 = !{!50, !40, i64 13528}
!119 = !{!53, !40, i64 848800}
!120 = !{!50, !40, i64 13536}
!121 = !{!53, !40, i64 848744}
!122 = !{!50, !40, i64 13544}
!123 = !{!50, !36, i64 76}
!124 = !{!53, !36, i64 849276}
!125 = !{!35, !36, i64 384}
!126 = !{!35, !40, i64 128}
!127 = !{!35, !40, i64 376}
!128 = distinct !{!128, !47, !48}
!129 = distinct !{!129, !47, !48}
!130 = distinct !{!130, !47, !48}
!131 = distinct !{!131, !47, !48}
!132 = !{!50, !40, i64 13448}
!133 = !{!134, !36, i64 384}
!134 = !{!"macroblock", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !135, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !39, i64 108, !37, i64 110, !37, i64 111, !39, i64 112, !39, i64 114, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !39, i64 152, !37, i64 154, !36, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !36, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !39, i64 376, !39, i64 378, !39, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !37, i64 472}
!135 = !{!"", !39, i64 0, !39, i64 2}
!136 = !{!50, !36, i64 108}
!137 = distinct !{!137, !47, !48}
!138 = !{!139, !40, i64 8}
!139 = !{!"decoder_params", !40, i64 0, !40, i64 8, !57, i64 16, !36, i64 24, !40, i64 32, !36, i64 40}
!140 = !{!53, !40, i64 0}
!141 = !{!53, !40, i64 848736}
!142 = !{!53, !36, i64 848720}
!143 = !{!53, !36, i64 848728}
!144 = !{!53, !36, i64 848716}
!145 = !{!53, !36, i64 848872}
!146 = !{!53, !40, i64 856872}
!147 = !{!82, !36, i64 0}
!148 = !{!82, !36, i64 4}
!149 = !{!53, !40, i64 848880}
!150 = !{!50, !36, i64 1228}
!151 = !{!50, !40, i64 8}
!152 = !{!53, !40, i64 856656}
!153 = !{!50, !40, i64 40}
!154 = !{!50, !36, i64 208}
!155 = !{!50, !36, i64 112}
!156 = !{!50, !36, i64 13264}
!157 = !{!50, !36, i64 13268}
!158 = !{!50, !36, i64 1240}
!159 = !{i32 1, i32 4}
!160 = !{!50, !36, i64 204}
!161 = !{!53, !36, i64 851872}
!162 = !{!53, !36, i64 851868}
!163 = !{!53, !36, i64 848776}
!164 = distinct !{!164, !47, !48}
!165 = !{!50, !36, i64 232}
!166 = distinct !{!166, !47, !48}
!167 = !{!50, !39, i64 116}
!168 = !{!35, !39, i64 60}
!169 = !{!50, !36, i64 68}
!170 = !{!50, !36, i64 72}
!171 = !{!53, !36, i64 848724}
!172 = !{!53, !36, i64 849016}
!173 = !{!50, !36, i64 176}
!174 = !{!53, !40, i64 848696}
!175 = !{!176, !36, i64 36}
!176 = !{!"old_slice_par", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48}
!177 = !{!176, !36, i64 4}
!178 = !{!176, !36, i64 0}
!179 = !{!50, !37, i64 180}
!180 = !{!176, !37, i64 28}
!181 = !{!50, !36, i64 56}
!182 = !{!176, !36, i64 8}
!183 = !{!50, !36, i64 48}
!184 = !{!176, !37, i64 29}
!185 = !{!50, !36, i64 52}
!186 = !{!176, !36, i64 32}
!187 = !{!71, !36, i64 2072}
!188 = !{!50, !36, i64 80}
!189 = !{!176, !36, i64 12}
!190 = !{!50, !36, i64 84}
!191 = !{!176, !36, i64 16}
!192 = !{!50, !36, i64 1176}
!193 = !{!176, !36, i64 40}
!194 = !{!50, !36, i64 1180}
!195 = !{!176, !36, i64 44}
!196 = !{!50, !36, i64 1184}
!197 = !{!176, !36, i64 48}
!198 = !{!82, !40, i64 2160}
!199 = !{!53, !36, i64 848712}
!200 = !{!53, !36, i64 849004}
!201 = !{!53, !36, i64 849008}
!202 = !{!53, !36, i64 848996}
!203 = !{!53, !36, i64 849012}
!204 = !{!53, !36, i64 848876}
!205 = !{!50, !39, i64 1220}
!206 = distinct !{!206, !47, !48}
!207 = !{!134, !39, i64 108}
!208 = distinct !{!208, !47, !48}
!209 = distinct !{!209, !47, !48}
!210 = !{!50, !36, i64 13504}
!211 = !{!53, !36, i64 856512}
!212 = distinct !{!212, !47, !48}
!213 = !{!53, !36, i64 856864}
!214 = !{!53, !36, i64 849260}
!215 = !{!53, !36, i64 849268}
!216 = !{!53, !36, i64 848992}
!217 = !{!53, !36, i64 849272}
!218 = !{!53, !36, i64 848944}
!219 = !{!71, !36, i64 3124}
!220 = !{!221, !36, i64 3980}
!221 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !36, i64 768, !36, i64 772, !36, i64 776, !36, i64 780, !36, i64 784, !36, i64 788, !55, i64 792, !55, i64 928, !36, i64 1064, !36, i64 1068, !222, i64 1072, !222, i64 2040, !222, i64 3008, !36, i64 3976, !36, i64 3980, !36, i64 3984, !36, i64 3988, !36, i64 3992, !36, i64 3996, !36, i64 4000, !36, i64 4004, !36, i64 4008, !36, i64 4012}
!222 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !36, i64 768, !36, i64 772, !55, i64 776, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944, !36, i64 948, !36, i64 952, !40, i64 960}
!223 = !{!53, !36, i64 849240}
!224 = !{!53, !36, i64 849252}
!225 = !{!53, !36, i64 849228}
!226 = !{!53, !36, i64 848780}
!227 = !{!53, !36, i64 848784}
!228 = !{!53, !36, i64 848788}
!229 = !{!53, !36, i64 848792}
!230 = !{!35, !36, i64 8}
!231 = !{!35, !36, i64 12}
!232 = !{!35, !36, i64 16}
!233 = !{!50, !36, i64 148}
!234 = !{!35, !36, i64 296}
!235 = !{!50, !36, i64 152}
!236 = !{!35, !36, i64 308}
!237 = !{!82, !36, i64 2192}
!238 = !{!82, !36, i64 2196}
!239 = !{!35, !36, i64 388}
!240 = !{!35, !36, i64 344}
!241 = !{!35, !36, i64 348}
!242 = !{!35, !36, i64 352}
!243 = !{!53, !40, i64 856504}
!244 = !{!53, !40, i64 848832}
!245 = !{!134, !37, i64 110}
!246 = !{!134, !37, i64 111}
!247 = distinct !{!247, !47, !48}
!248 = !{!82, !36, i64 2204}
!249 = distinct !{!249, !47, !48}
!250 = distinct !{!250, !47, !48}
!251 = distinct !{!251, !47, !48}
!252 = distinct !{!252, !47, !48}
!253 = !{!35, !36, i64 248}
!254 = !{!35, !36, i64 252}
!255 = !{!50, !36, i64 236}
!256 = !{!35, !36, i64 256}
!257 = !{!50, !36, i64 240}
!258 = !{!35, !36, i64 260}
!259 = !{!50, !36, i64 244}
!260 = !{!35, !36, i64 264}
!261 = !{!50, !40, i64 248}
!262 = !{!35, !40, i64 312}
!263 = !{!35, !36, i64 100}
!264 = !{!35, !36, i64 104}
!265 = !{!53, !40, i64 856752}
!266 = !{!53, !40, i64 856744}
!267 = !{!35, !36, i64 28}
!268 = !{!35, !36, i64 20}
!269 = !{!35, !36, i64 24}
!270 = !{!35, !36, i64 96}
!271 = !{!35, !36, i64 268}
!272 = !{!71, !36, i64 3136}
!273 = !{!35, !36, i64 272}
!274 = !{!71, !36, i64 3148}
!275 = !{!35, !36, i64 276}
!276 = !{!71, !36, i64 3152}
!277 = !{!35, !36, i64 280}
!278 = !{!71, !36, i64 3156}
!279 = !{!35, !36, i64 284}
!280 = !{!71, !36, i64 3160}
!281 = !{!35, !36, i64 288}
!282 = !{!71, !36, i64 3164}
!283 = !{!35, !36, i64 292}
!284 = !{!53, !40, i64 856728}
!285 = !{!286, !36, i64 0}
!286 = !{!"tone_mapping_struct_s", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !36, i64 12, !36, i64 16, !37, i64 20, !40, i64 8216, !36, i64 8224}
!287 = !{!286, !37, i64 8}
!288 = !{!35, !36, i64 324}
!289 = !{!286, !36, i64 12}
!290 = !{!35, !36, i64 328}
!291 = !{!286, !37, i64 9}
!292 = !{!35, !36, i64 332}
!293 = !{!35, !40, i64 336}
!294 = !{!53, !40, i64 856832}
!295 = !{!221, !36, i64 3976}
!296 = !{!297, !36, i64 16}
!297 = !{!"nalu_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !39, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64}
!298 = !{!50, !40, i64 312}
!299 = !{!300, !40, i64 0}
!300 = !{!"datapartition", !40, i64 0, !301, i64 8, !40, i64 40}
!301 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 16, !40, i64 24}
!302 = !{!303, !36, i64 24}
!303 = !{!"bit_stream", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !40, i64 16, !36, i64 24}
!304 = !{!303, !36, i64 0}
!305 = !{!303, !36, i64 8}
!306 = !{!303, !40, i64 16}
!307 = !{!297, !40, i64 24}
!308 = !{!297, !36, i64 4}
!309 = !{!303, !36, i64 12}
!310 = !{!303, !36, i64 4}
!311 = !{!50, !36, i64 1216}
!312 = !{!50, !36, i64 1188}
!313 = !{!53, !36, i64 849264}
!314 = !{!297, !36, i64 20}
!315 = !{!50, !36, i64 200}
!316 = !{!50, !36, i64 196}
!317 = !{!82, !36, i64 16}
!318 = !{!50, !36, i64 60}
!319 = !{!50, !36, i64 64}
!320 = !{!50, !36, i64 1196}
!321 = !{!50, !36, i64 1208}
!322 = !{!53, !40, i64 699416}
!323 = !{!324, !40, i64 4136}
!324 = !{!"", !71, i64 0, !36, i64 4128, !36, i64 4132, !40, i64 4136, !40, i64 4144, !40, i64 4152, !40, i64 4160, !40, i64 4168, !40, i64 4176, !40, i64 4184, !40, i64 4192, !40, i64 4200, !36, i64 4208, !40, i64 4216, !40, i64 4224, !40, i64 4232, !40, i64 4240, !40, i64 4248, !40, i64 4256, !36, i64 4264, !36, i64 4268, !325, i64 4272}
!325 = !{!"mvcvui_tag", !36, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !37, i64 96, !37, i64 97, !37, i64 98, !37, i64 100, !37, i64 228, !37, i64 356, !37, i64 388, !37, i64 389, !37, i64 390, !37, i64 391}
!326 = !{i32 0, i32 2}
!327 = !{!50, !36, i64 1232}
!328 = !{!50, !36, i64 1236}
!329 = !{!297, !39, i64 32}
!330 = !{!82, !36, i64 2208}
!331 = !{!221, !36, i64 784}
!332 = distinct !{!332, !48}
!333 = !{!53, !40, i64 848704}
!334 = !{!53, !36, i64 849088}
!335 = distinct !{!335, !47, !48}
!336 = !{!35, !40, i64 136}
!337 = !{!35, !36, i64 108}
!338 = !{!35, !40, i64 184}
!339 = distinct !{!339, !47, !48}
!340 = distinct !{!340, !47, !48}
!341 = !{!53, !36, i64 849108}
!342 = !{!53, !36, i64 849112}
!343 = distinct !{!343, !47, !48}
!344 = !{!35, !36, i64 0}
!345 = !{!53, !36, i64 849028}
!346 = !{!53, !36, i64 855988}
!347 = !{!53, !36, i64 856004}
!348 = !{!349, !349, i64 0}
!349 = !{!"float", !37, i64 0}
!350 = !{!351, !36, i64 0}
!351 = !{!"snr_par", !36, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52}
!352 = !{!53, !36, i64 856008}
!353 = distinct !{!353, !47, !48}
!354 = distinct !{!354, !47, !48}
!355 = distinct !{!355, !47, !48}
!356 = distinct !{!356, !47, !48}
!357 = distinct !{!357, !47, !48}
!358 = distinct !{!358, !47, !48}
!359 = distinct !{!359, !47, !48}
!360 = distinct !{!360, !47, !48}
!361 = distinct !{!361, !47, !48}
!362 = distinct !{!362, !47, !48}
!363 = distinct !{!363, !47, !48}
!364 = distinct !{!364, !47, !48}
!365 = !{!221, !36, i64 776}
!366 = !{!53, !36, i64 849232}
!367 = !{!53, !36, i64 849220}
!368 = !{!53, !36, i64 849224}
!369 = !{!53, !36, i64 849036}
!370 = !{!71, !36, i64 3216}
!371 = !{!53, !40, i64 856016}
!372 = !{!53, !40, i64 856024}
!373 = distinct !{!373, !47, !48}
!374 = !{!35, !36, i64 320}
!375 = !{!82, !36, i64 2040}
!376 = !{!71, !36, i64 2080}
!377 = distinct !{!377, !47, !48}
!378 = distinct !{!378, !47, !48}
!379 = distinct !{!379, !47, !48}
!380 = distinct !{!380, !47, !48}
!381 = distinct !{!381, !47, !48}
!382 = distinct !{!382, !47, !48}
!383 = distinct !{!383, !47, !48}
!384 = !{!53, !36, i64 856840}
!385 = !{!53, !36, i64 856844}
!386 = !{!35, !36, i64 356}
!387 = !{!53, !36, i64 856848}
!388 = !{!53, !36, i64 856852}
!389 = !{!35, !36, i64 72}
!390 = !{!35, !36, i64 76}
!391 = !{!35, !36, i64 360}
!392 = !{!134, !40, i64 8}
!393 = !{!134, !36, i64 24}
!394 = !{!53, !40, i64 856496}
!395 = !{!134, !39, i64 152}
!396 = !{!397, !37, i64 0}
!397 = !{!"object_buffer", !37, i64 0, !36, i64 4, !36, i64 8, !37, i64 12}
!398 = !{!135, !39, i64 0}
!399 = !{!135, !39, i64 2}
!400 = !{!134, !40, i64 0}
!401 = distinct !{!401, !47, !48}
!402 = distinct !{!402, !47, !48}
!403 = !{!324, !36, i64 4132}
!404 = distinct !{!404, !47, !48}

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
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.tone_mapping_struct_s = type { i32, i32, i8, i8, i32, i32, [4096 x i16], ptr, i32 }
%struct.nalu_t = type { i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.old_slice_par = type { i32, i32, i32, i32, i32, [2 x i32], i8, i8, i32, i32, i32, i32, i32 }
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @init_all_macroblocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 16
  %3 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %2, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !42
  %6 = mul nsw i32 %5, %4
  %7 = icmp sgt i32 %6, 15
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %15, %12 ], [ %11, %8 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 1
  tail call fastcc void @reset_mv_info(ptr noundef %13) #28
  %16 = add nuw nsw i32 %14, 1
  %17 = load i32, ptr %2, align 8, !tbaa !34
  %18 = load i32, ptr %3, align 4, !tbaa !42
  %19 = mul nsw i32 %18, %17
  %20 = ashr i32 %19, 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %12, label %22, !llvm.loop !45

22:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @reset_mv_info(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !47 {
  %2 = getelementptr inbounds %struct.pic_motion_params, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 -1, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.pic_motion_params, ptr %0, i64 0, i32 2, i64 1
  store i8 -1, ptr %3, align 1, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_slice(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %6 = load <2 x ptr>, ptr %4, align 8, !tbaa !44
  store <2 x ptr> %6, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 118
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void %8(ptr noundef %1) #29
  %9 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  %14 = load i32, ptr %13, align 8, !tbaa !53
  tail call void @reorder_lists_mvc(ptr noundef nonnull %1, i32 noundef %14) #29
  br label %16

15:                                               ; preds = %2
  tail call void @reorder_lists(ptr noundef nonnull %1) #28
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 107
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #29
  store ptr null, ptr %17, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 108
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #29
  store ptr null, ptr %22, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 38
  %28 = load i32, ptr %27, align 8, !tbaa !56
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @init_mbaff_lists(ptr noundef nonnull %0, ptr noundef nonnull %1) #29
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 47
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 117
  %37 = load i32, ptr %36, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %39 = load i32, ptr %38, align 4, !tbaa !64
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr i8, ptr %1, i64 13344
  %43 = getelementptr i8, ptr %1, i64 13340
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %42, ptr noundef nonnull align 4 dereferenceable(64) %43, i64 64, i1 false), !tbaa !65
  br label %44

44:                                               ; preds = %41, %35
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 118
  %46 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 119
  %47 = select i1 %34, ptr %45, ptr %46
  %48 = load i32, ptr %47, align 4, !tbaa !65
  %49 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 110
  store i32 %48, ptr %49, align 4, !tbaa !65
  %50 = load ptr, ptr %3, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 4, !tbaa !67
  switch i32 %52, label %53 [
    i32 0, label %54
    i32 3, label %54
  ]

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %44, %44, %53
  %55 = phi ptr [ @linfo_cbp_intra_normal, %53 ], [ @linfo_cbp_intra_other, %44 ], [ @linfo_cbp_intra_other, %44 ]
  %56 = phi ptr [ @linfo_cbp_inter_normal, %53 ], [ @linfo_cbp_inter_other, %44 ], [ @linfo_cbp_inter_other, %44 ]
  %57 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 120
  store ptr %55, ptr %57, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 121
  store ptr %56, ptr %58, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @reorder_lists_mvc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_lists(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %4 = load i32, ptr %3, align 4, !tbaa !74
  switch i32 %4, label %5 [
    i32 2, label %62
    i32 4, label %62
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @reorder_ref_pic_list(ptr noundef nonnull %0, i32 noundef 0) #29
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !65
  %17 = sext i32 %16 to i64
  %18 = getelementptr ptr, ptr %14, i64 %17
  %19 = getelementptr ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %12, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  %24 = load i32, ptr %23, align 4, !tbaa !76
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %29

28:                                               ; preds = %22
  tail call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #29
  br label %29

29:                                               ; preds = %10, %28, %26
  %30 = load i32, ptr %15, align 8, !tbaa !65
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %31, ptr %32, align 8, !tbaa !48
  %33 = load i32, ptr %3, align 4, !tbaa !74
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @reorder_ref_pic_list(ptr noundef nonnull %0, i32 noundef 1) #29
  br label %40

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %11, align 8, !tbaa !75
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !65
  %46 = sext i32 %45 to i64
  %47 = getelementptr ptr, ptr %43, i64 %46
  %48 = getelementptr ptr, ptr %47, i64 -1
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = icmp eq ptr %41, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  %53 = load i32, ptr %52, align 4, !tbaa !76
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  br label %58

57:                                               ; preds = %51
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 500) #29
  br label %58

58:                                               ; preds = %55, %57, %40
  %59 = load i32, ptr %44, align 4, !tbaa !65
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %60, ptr %61, align 1, !tbaa !48
  br label %62

62:                                               ; preds = %1, %1, %58, %29
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @init_mbaff_lists(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @linfo_cbp_intra_other(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @linfo_cbp_inter_other(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @linfo_cbp_intra_normal(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @linfo_cbp_inter_normal(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_slice(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !79
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  tail call void @init_contexts(ptr noundef nonnull %0) #29
  tail call void @cabac_new_slice(ptr noundef nonnull %0) #29
  %13 = load ptr, ptr %7, align 8, !tbaa !78
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %8, %2 ]
  %16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %15, i64 0, i32 24
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %21 = load i32, ptr %20, align 4, !tbaa !74
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %31, label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %15, i64 0, i32 23
  %25 = load i32, ptr %24, align 8, !tbaa !82
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %29 = load i32, ptr %28, align 4, !tbaa !74
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %19
  tail call fastcc void @fill_wp_params(ptr noundef nonnull %0) #28
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = and i32 %1, -2
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 28
  %37 = load i32, ptr %36, align 8, !tbaa !83
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @decode_one_slice(ptr noundef nonnull %0) #28
  br label %40

40:                                               ; preds = %32, %39, %35
  %41 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 170
  %42 = load i32, ptr %41, align 8, !tbaa !84
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 176
  %46 = load i32, ptr %45, align 8, !tbaa !85
  %47 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 4, !tbaa !87
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %46
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 105
  %56 = load i32, ptr %55, align 8, !tbaa !88
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  %60 = load i32, ptr %59, align 8, !tbaa !89
  tail call void @change_plane_JV(ptr noundef nonnull %3, i32 noundef %60, ptr noundef nonnull %0) #29
  br label %61

61:                                               ; preds = %54, %58
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %63 = load ptr, ptr %62, align 8, !tbaa !90
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  %65 = load i32, ptr %64, align 4, !tbaa !91
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 40
  %68 = load i32, ptr %67, align 8, !tbaa !92
  %69 = mul nsw i32 %68, %6
  tail call void @DeblockPicturePartially(ptr noundef nonnull %3, ptr noundef %63, i32 noundef %66, i32 noundef %69) #29
  br label %70

70:                                               ; preds = %61, %44, %40
  ret void
}

; Function Attrs: optsize
declare void @init_contexts(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @cabac_new_slice(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fill_wp_params(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !93 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %355

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %11, i64 0, i32 24
  %13 = load i32, ptr %12, align 4, !tbaa !81
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %56

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 98
  store i16 5, ptr %16, align 4, !tbaa !94
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 99
  store i16 5, ptr %17, align 2, !tbaa !95
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 103
  store i16 16, ptr %18, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 104
  store i16 16, ptr %19, align 2, !tbaa !97
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds ptr, ptr %21, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds ptr, ptr %26, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %15, %53
  %31 = phi i64 [ 0, %15 ], [ %54, %53 ]
  %32 = getelementptr inbounds ptr, ptr %22, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds ptr, ptr %24, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = getelementptr inbounds ptr, ptr %27, i64 %31
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds ptr, ptr %29, i64 %31
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  br label %40

40:                                               ; preds = %30, %40
  %41 = phi i64 [ 0, %30 ], [ %51, %40 ]
  %42 = icmp eq i64 %41, 0
  %43 = select i1 %42, ptr %16, ptr %17
  %44 = load i16, ptr %43, align 2, !tbaa !100
  %45 = zext nneg i16 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = getelementptr inbounds i32, ptr %33, i64 %41
  store i32 %46, ptr %47, align 4, !tbaa !65
  %48 = getelementptr inbounds i32, ptr %35, i64 %41
  store i32 %46, ptr %48, align 4, !tbaa !65
  %49 = getelementptr inbounds i32, ptr %37, i64 %41
  store i32 0, ptr %49, align 4, !tbaa !65
  %50 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 0, ptr %50, align 4, !tbaa !65
  %51 = add nuw nsw i64 %41, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %40, !llvm.loop !101

53:                                               ; preds = %40
  %54 = add nuw nsw i64 %31, 1
  %55 = icmp eq i64 %54, 32
  br i1 %55, label %56, label %30, !llvm.loop !102

56:                                               ; preds = %53, %5
  %57 = icmp slt i32 %7, 1
  br i1 %57, label %355, label %58

58:                                               ; preds = %56
  %59 = icmp sgt i32 %9, 0
  %60 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %66 = zext nneg i32 %7 to i64
  %67 = zext nneg i32 %9 to i64
  br label %68

68:                                               ; preds = %58, %182
  %69 = phi i64 [ 0, %58 ], [ %183, %182 ]
  br i1 %59, label %70, label %182

70:                                               ; preds = %68, %179
  %71 = phi i64 [ %180, %179 ], [ 0, %68 ]
  br label %72

72:                                               ; preds = %70, %176
  %73 = phi i64 [ 0, %70 ], [ %177, %176 ]
  %74 = load i32, ptr %12, align 4, !tbaa !81
  switch i32 %74, label %176 [
    i32 1, label %75
    i32 2, label %98
  ]

75:                                               ; preds = %72
  %76 = load ptr, ptr %65, align 8, !tbaa !98
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = getelementptr inbounds ptr, ptr %77, i64 %69
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = getelementptr inbounds i32, ptr %79, i64 %73
  %81 = load i32, ptr %80, align 4, !tbaa !65
  %82 = load ptr, ptr %63, align 8, !tbaa !103
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = getelementptr inbounds ptr, ptr %83, i64 %69
  %85 = load ptr, ptr %84, align 8, !tbaa !44
  %86 = getelementptr inbounds ptr, ptr %85, i64 %71
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  %88 = getelementptr inbounds i32, ptr %87, i64 %73
  store i32 %81, ptr %88, align 4, !tbaa !65
  %89 = getelementptr inbounds ptr, ptr %76, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  %91 = getelementptr inbounds ptr, ptr %90, i64 %71
  %92 = load ptr, ptr %91, align 8, !tbaa !44
  %93 = getelementptr inbounds i32, ptr %92, i64 %73
  %94 = load i32, ptr %93, align 4, !tbaa !65
  %95 = getelementptr inbounds ptr, ptr %82, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  %97 = getelementptr inbounds ptr, ptr %96, i64 %69
  br label %169

98:                                               ; preds = %72
  %99 = load ptr, ptr %61, align 8, !tbaa !44
  %100 = getelementptr inbounds ptr, ptr %99, i64 %71
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  %102 = getelementptr inbounds %struct.storable_picture, ptr %101, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !104
  %104 = load ptr, ptr %60, align 8, !tbaa !44
  %105 = getelementptr inbounds ptr, ptr %104, i64 %69
  %106 = load ptr, ptr %105, align 8, !tbaa !44
  %107 = getelementptr inbounds %struct.storable_picture, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !104
  %109 = sub nsw i32 %103, %108
  %110 = tail call fastcc i32 @iClip3(i32 noundef -128, i32 noundef 127, i32 noundef %109) #28
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.storable_picture, ptr %101, i64 0, i32 10
  %114 = load i8, ptr %113, align 8, !tbaa !105
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.storable_picture, ptr %106, i64 0, i32 10
  %118 = load i8, ptr %117, align 8, !tbaa !105
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %116, %112, %98
  %121 = load ptr, ptr %63, align 8, !tbaa !103
  %122 = load ptr, ptr %121, align 8, !tbaa !44
  %123 = getelementptr inbounds ptr, ptr %122, i64 %69
  %124 = load ptr, ptr %123, align 8, !tbaa !44
  %125 = getelementptr inbounds ptr, ptr %124, i64 %71
  %126 = load ptr, ptr %125, align 8, !tbaa !44
  %127 = getelementptr inbounds i32, ptr %126, i64 %73
  store i32 32, ptr %127, align 4, !tbaa !65
  %128 = getelementptr inbounds ptr, ptr %121, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !44
  %130 = getelementptr inbounds ptr, ptr %129, i64 %69
  br label %169

131:                                              ; preds = %116
  %132 = load i32, ptr %62, align 8, !tbaa !53
  %133 = sub nsw i32 %132, %108
  %134 = tail call fastcc i32 @iClip3(i32 noundef -128, i32 noundef 127, i32 noundef %133) #28
  %135 = sdiv i32 %110, 2
  %136 = tail call fastcc i32 @iabs(i32 noundef %135) #28
  %137 = add nsw i32 %136, 16384
  %138 = sdiv i32 %137, %110
  %139 = mul nsw i32 %138, %134
  %140 = add nsw i32 %139, 32
  %141 = ashr i32 %140, 6
  %142 = tail call fastcc i32 @iClip3(i32 noundef -1024, i32 noundef 1023, i32 noundef %141) #28
  %143 = ashr i32 %142, 2
  %144 = load ptr, ptr %63, align 8, !tbaa !103
  %145 = getelementptr inbounds ptr, ptr %144, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !44
  %147 = getelementptr inbounds ptr, ptr %146, i64 %69
  %148 = load ptr, ptr %147, align 8, !tbaa !44
  %149 = getelementptr inbounds ptr, ptr %148, i64 %71
  %150 = load ptr, ptr %149, align 8, !tbaa !44
  %151 = getelementptr inbounds i32, ptr %150, i64 %73
  store i32 %143, ptr %151, align 4, !tbaa !65
  %152 = sub nsw i32 64, %143
  %153 = load ptr, ptr %144, align 8, !tbaa !44
  %154 = getelementptr inbounds ptr, ptr %153, i64 %69
  %155 = load ptr, ptr %154, align 8, !tbaa !44
  %156 = getelementptr inbounds ptr, ptr %155, i64 %71
  %157 = load ptr, ptr %156, align 8, !tbaa !44
  %158 = getelementptr inbounds i32, ptr %157, i64 %73
  store i32 %152, ptr %158, align 4, !tbaa !65
  %159 = load i32, ptr %151, align 4, !tbaa !65
  %160 = add i32 %159, -129
  %161 = icmp ult i32 %160, -193
  br i1 %161, label %162, label %176

162:                                              ; preds = %131
  store i32 32, ptr %158, align 4, !tbaa !65
  store i32 32, ptr %151, align 4, !tbaa !65
  %163 = load ptr, ptr %64, align 8, !tbaa !99
  %164 = load ptr, ptr %163, align 8, !tbaa !44
  %165 = getelementptr inbounds ptr, ptr %164, i64 %69
  %166 = load ptr, ptr %165, align 8, !tbaa !44
  %167 = getelementptr inbounds i32, ptr %166, i64 %73
  store i32 0, ptr %167, align 4, !tbaa !65
  %168 = getelementptr inbounds ptr, ptr %163, i64 1
  br label %169

169:                                              ; preds = %162, %120, %75
  %170 = phi ptr [ %97, %75 ], [ %130, %120 ], [ %168, %162 ]
  %171 = phi i32 [ %94, %75 ], [ 32, %120 ], [ 0, %162 ]
  %172 = load ptr, ptr %170, align 8, !tbaa !44
  %173 = getelementptr inbounds ptr, ptr %172, i64 %71
  %174 = load ptr, ptr %173, align 8, !tbaa !44
  %175 = getelementptr inbounds i32, ptr %174, i64 %73
  store i32 %171, ptr %175, align 4, !tbaa !65
  br label %176

176:                                              ; preds = %169, %131, %72
  %177 = add nuw nsw i64 %73, 1
  %178 = icmp eq i64 %177, 3
  br i1 %178, label %179, label %72, !llvm.loop !106

179:                                              ; preds = %176
  %180 = add nuw nsw i64 %71, 1
  %181 = icmp eq i64 %180, %67
  br i1 %181, label %182, label %70, !llvm.loop !107

182:                                              ; preds = %179, %68
  %183 = add nuw nsw i64 %69, 1
  %184 = icmp eq i64 %183, %66
  br i1 %184, label %185, label %68, !llvm.loop !108

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %187 = load i32, ptr %186, align 8, !tbaa !77
  %188 = icmp eq i32 %187, 0
  %189 = or i1 %188, %57
  br i1 %189, label %355, label %190

190:                                              ; preds = %185
  %191 = shl nuw i32 %7, 1
  %192 = shl i32 %9, 1
  %193 = icmp sgt i32 %9, 0
  %194 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %195 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 11
  %196 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 12
  %197 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %198 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %199 = tail call i32 @llvm.smax.i32(i32 %192, i32 1)
  %200 = tail call i32 @llvm.smax.i32(i32 %191, i32 1)
  %201 = zext nneg i32 %200 to i64
  %202 = zext nneg i32 %199 to i64
  br label %203

203:                                              ; preds = %190, %352
  %204 = phi i64 [ 0, %190 ], [ %353, %352 ]
  br i1 %193, label %205, label %352

205:                                              ; preds = %203
  %206 = load ptr, ptr %194, align 8, !tbaa !99
  %207 = load ptr, ptr %206, align 8, !tbaa !44
  %208 = lshr i64 %204, 1
  %209 = and i64 %208, 2147483647
  %210 = getelementptr inbounds ptr, ptr %207, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !44
  %212 = getelementptr inbounds ptr, ptr %206, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !44
  br label %214

214:                                              ; preds = %205, %349
  %215 = phi i64 [ 0, %205 ], [ %350, %349 ]
  %216 = lshr i64 %215, 1
  %217 = and i64 %216, 2147483647
  %218 = getelementptr inbounds ptr, ptr %213, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !44
  br label %220

220:                                              ; preds = %214, %346
  %221 = phi i64 [ 0, %214 ], [ %347, %346 ]
  %222 = getelementptr inbounds i32, ptr %211, i64 %221
  %223 = getelementptr inbounds i32, ptr %219, i64 %221
  br label %224

224:                                              ; preds = %220, %343
  %225 = phi i64 [ 2, %220 ], [ %344, %343 ]
  %226 = load i32, ptr %222, align 4, !tbaa !65
  %227 = getelementptr inbounds ptr, ptr %206, i64 %225
  %228 = load ptr, ptr %227, align 8, !tbaa !44
  %229 = getelementptr inbounds ptr, ptr %228, i64 %204
  %230 = load ptr, ptr %229, align 8, !tbaa !44
  %231 = getelementptr inbounds i32, ptr %230, i64 %221
  store i32 %226, ptr %231, align 4, !tbaa !65
  %232 = load i32, ptr %223, align 4, !tbaa !65
  %233 = or disjoint i64 %225, 1
  %234 = getelementptr inbounds ptr, ptr %206, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !44
  %236 = getelementptr inbounds ptr, ptr %235, i64 %215
  %237 = load ptr, ptr %236, align 8, !tbaa !44
  %238 = getelementptr inbounds i32, ptr %237, i64 %221
  store i32 %232, ptr %238, align 4, !tbaa !65
  %239 = load i32, ptr %12, align 4, !tbaa !81
  switch i32 %239, label %343 [
    i32 1, label %240
    i32 2, label %268
  ]

240:                                              ; preds = %224
  %241 = load ptr, ptr %198, align 8, !tbaa !98
  %242 = load ptr, ptr %241, align 8, !tbaa !44
  %243 = getelementptr inbounds ptr, ptr %242, i64 %209
  %244 = load ptr, ptr %243, align 8, !tbaa !44
  %245 = getelementptr inbounds i32, ptr %244, i64 %221
  %246 = load i32, ptr %245, align 4, !tbaa !65
  %247 = load ptr, ptr %197, align 8, !tbaa !103
  %248 = getelementptr inbounds ptr, ptr %247, i64 %225
  %249 = load ptr, ptr %248, align 8, !tbaa !44
  %250 = getelementptr inbounds ptr, ptr %249, i64 %204
  %251 = load ptr, ptr %250, align 8, !tbaa !44
  %252 = getelementptr inbounds ptr, ptr %251, i64 %215
  %253 = load ptr, ptr %252, align 8, !tbaa !44
  %254 = getelementptr inbounds i32, ptr %253, i64 %221
  store i32 %246, ptr %254, align 4, !tbaa !65
  %255 = getelementptr inbounds ptr, ptr %241, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !44
  %257 = getelementptr inbounds ptr, ptr %256, i64 %217
  %258 = load ptr, ptr %257, align 8, !tbaa !44
  %259 = getelementptr inbounds i32, ptr %258, i64 %221
  %260 = load i32, ptr %259, align 4, !tbaa !65
  %261 = getelementptr inbounds ptr, ptr %247, i64 %233
  %262 = load ptr, ptr %261, align 8, !tbaa !44
  %263 = getelementptr inbounds ptr, ptr %262, i64 %204
  %264 = load ptr, ptr %263, align 8, !tbaa !44
  %265 = getelementptr inbounds ptr, ptr %264, i64 %215
  %266 = load ptr, ptr %265, align 8, !tbaa !44
  %267 = getelementptr inbounds i32, ptr %266, i64 %221
  store i32 %260, ptr %267, align 4, !tbaa !65
  br label %343

268:                                              ; preds = %224
  %269 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %233
  %270 = load ptr, ptr %269, align 8, !tbaa !44
  %271 = getelementptr inbounds ptr, ptr %270, i64 %215
  %272 = load ptr, ptr %271, align 8, !tbaa !44
  %273 = getelementptr inbounds %struct.storable_picture, ptr %272, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !104
  %275 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %225
  %276 = load ptr, ptr %275, align 8, !tbaa !44
  %277 = getelementptr inbounds ptr, ptr %276, i64 %204
  %278 = load ptr, ptr %277, align 8, !tbaa !44
  %279 = getelementptr inbounds %struct.storable_picture, ptr %278, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !104
  %281 = sub nsw i32 %274, %280
  %282 = tail call fastcc i32 @iClip3(i32 noundef -128, i32 noundef 127, i32 noundef %281) #28
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %292, label %284

284:                                              ; preds = %268
  %285 = getelementptr inbounds %struct.storable_picture, ptr %272, i64 0, i32 10
  %286 = load i8, ptr %285, align 8, !tbaa !105
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.storable_picture, ptr %278, i64 0, i32 10
  %290 = load i8, ptr %289, align 8, !tbaa !105
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %308, label %292

292:                                              ; preds = %288, %284, %268
  %293 = load ptr, ptr %197, align 8, !tbaa !103
  %294 = getelementptr inbounds ptr, ptr %293, i64 %225
  %295 = load ptr, ptr %294, align 8, !tbaa !44
  %296 = getelementptr inbounds ptr, ptr %295, i64 %204
  %297 = load ptr, ptr %296, align 8, !tbaa !44
  %298 = getelementptr inbounds ptr, ptr %297, i64 %215
  %299 = load ptr, ptr %298, align 8, !tbaa !44
  %300 = getelementptr inbounds i32, ptr %299, i64 %221
  store i32 32, ptr %300, align 4, !tbaa !65
  %301 = getelementptr inbounds ptr, ptr %293, i64 %233
  %302 = load ptr, ptr %301, align 8, !tbaa !44
  %303 = getelementptr inbounds ptr, ptr %302, i64 %204
  %304 = load ptr, ptr %303, align 8, !tbaa !44
  %305 = getelementptr inbounds ptr, ptr %304, i64 %215
  %306 = load ptr, ptr %305, align 8, !tbaa !44
  %307 = getelementptr inbounds i32, ptr %306, i64 %221
  store i32 32, ptr %307, align 4, !tbaa !65
  br label %343

308:                                              ; preds = %288
  %309 = icmp eq i64 %225, 2
  %310 = select i1 %309, ptr %195, ptr %196
  %311 = load i32, ptr %310, align 4, !tbaa !65
  %312 = sub nsw i32 %311, %280
  %313 = tail call fastcc i32 @iClip3(i32 noundef -128, i32 noundef 127, i32 noundef %312) #28
  %314 = sdiv i32 %282, 2
  %315 = tail call fastcc i32 @iabs(i32 noundef %314) #28
  %316 = add nsw i32 %315, 16384
  %317 = sdiv i32 %316, %282
  %318 = mul nsw i32 %317, %313
  %319 = add nsw i32 %318, 32
  %320 = ashr i32 %319, 6
  %321 = tail call fastcc i32 @iClip3(i32 noundef -1024, i32 noundef 1023, i32 noundef %320) #28
  %322 = ashr i32 %321, 2
  %323 = load ptr, ptr %197, align 8, !tbaa !103
  %324 = getelementptr inbounds ptr, ptr %323, i64 %233
  %325 = load ptr, ptr %324, align 8, !tbaa !44
  %326 = getelementptr inbounds ptr, ptr %325, i64 %204
  %327 = load ptr, ptr %326, align 8, !tbaa !44
  %328 = getelementptr inbounds ptr, ptr %327, i64 %215
  %329 = load ptr, ptr %328, align 8, !tbaa !44
  %330 = getelementptr inbounds i32, ptr %329, i64 %221
  store i32 %322, ptr %330, align 4, !tbaa !65
  %331 = sub nsw i32 64, %322
  %332 = getelementptr inbounds ptr, ptr %323, i64 %225
  %333 = load ptr, ptr %332, align 8, !tbaa !44
  %334 = getelementptr inbounds ptr, ptr %333, i64 %204
  %335 = load ptr, ptr %334, align 8, !tbaa !44
  %336 = getelementptr inbounds ptr, ptr %335, i64 %215
  %337 = load ptr, ptr %336, align 8, !tbaa !44
  %338 = getelementptr inbounds i32, ptr %337, i64 %221
  store i32 %331, ptr %338, align 4, !tbaa !65
  %339 = load i32, ptr %330, align 4, !tbaa !65
  %340 = add i32 %339, -129
  %341 = icmp ult i32 %340, -193
  br i1 %341, label %342, label %343

342:                                              ; preds = %308
  store i32 32, ptr %330, align 4, !tbaa !65
  store i32 32, ptr %338, align 4, !tbaa !65
  store i32 0, ptr %231, align 4, !tbaa !65
  store i32 0, ptr %238, align 4, !tbaa !65
  br label %343

343:                                              ; preds = %308, %224, %240, %292, %342
  %344 = add nuw nsw i64 %225, 2
  %345 = icmp ult i64 %225, 4
  br i1 %345, label %224, label %346, !llvm.loop !109

346:                                              ; preds = %343
  %347 = add nuw nsw i64 %221, 1
  %348 = icmp eq i64 %347, 3
  br i1 %348, label %349, label %220, !llvm.loop !110

349:                                              ; preds = %346
  %350 = add nuw nsw i64 %215, 1
  %351 = icmp eq i64 %350, %202
  br i1 %351, label %352, label %214, !llvm.loop !111

352:                                              ; preds = %349, %203
  %353 = add nuw nsw i64 %204, 1
  %354 = icmp eq i64 %353, %201
  br i1 %354, label %355, label %203, !llvm.loop !112

355:                                              ; preds = %352, %185, %56, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_one_slice(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #30
  store ptr null, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 23
  store i32 -1, ptr %4, align 8, !tbaa !113
  %5 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 105
  %6 = load i32, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  %10 = load i32, ptr %9, align 8, !tbaa !89
  tail call void @change_plane_JV(ptr noundef nonnull %3, i32 noundef %10, ptr noundef nonnull %0) #29
  br label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  store ptr %13, ptr %14, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  store ptr %16, ptr %17, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 126
  store ptr %19, ptr %20, align 8, !tbaa !117
  %21 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 127
  store ptr %22, ptr %23, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !120
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 128
  store ptr %25, ptr %26, align 8, !tbaa !121
  br label %27

27:                                               ; preds = %11, %8
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %29 = load i32, ptr %28, align 4, !tbaa !74
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  tail call void @compute_colocated(ptr noundef nonnull %0, ptr noundef nonnull %32) #29
  %33 = load i32, ptr %28, align 4, !tbaa !74
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ %29, %27 ]
  switch i32 %35, label %36 [
    i32 2, label %37
    i32 4, label %37
  ]

36:                                               ; preds = %34
  tail call fastcc void @init_cur_imgy(ptr noundef nonnull %0, ptr noundef nonnull %3) #28
  br label %37

37:                                               ; preds = %34, %34, %36
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  br label %43

43:                                               ; preds = %37, %63
  call void @start_macroblock(ptr noundef nonnull %0, ptr noundef nonnull %2) #29
  %44 = load ptr, ptr %38, align 8, !tbaa !122
  %45 = load ptr, ptr %2, align 8, !tbaa !44
  call void %44(ptr noundef %45) #29
  %46 = load ptr, ptr %2, align 8, !tbaa !44
  %47 = load ptr, ptr %39, align 8, !tbaa !90
  %48 = call i32 @decode_one_macroblock(ptr noundef %46, ptr noundef %47) #29
  %49 = load i32, ptr %40, align 8, !tbaa !77
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %2, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.macroblock, ptr %52, i64 0, i32 45
  %54 = load i32, ptr %53, align 8, !tbaa !123
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load <2 x i32>, ptr %41, align 8, !tbaa !65
  %58 = ashr <2 x i32> %57, <i32 1, i32 1>
  store <2 x i32> %58, ptr %41, align 8, !tbaa !65
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, ptr %42, align 4, !tbaa !126
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %43, %59
  %64 = phi i1 [ %62, %59 ], [ true, %43 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @exit_macroblock(ptr noundef nonnull %0, i32 noundef %65) #29
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %43, label %68, !llvm.loop !127

68:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #30
  ret void
}

; Function Attrs: optsize
declare void @change_plane_JV(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DeblockPicturePartially(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @decode_one_frame(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.decoder_params, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 16
  store i32 0, ptr %7, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 18
  store i32 0, ptr %8, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 15
  store i32 0, ptr %9, align 4, !tbaa !134
  %10 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 32
  %11 = load i32, ptr %10, align 8, !tbaa !135
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 179
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = load i32, ptr %15, align 8, !tbaa !137
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %15, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !138
  %21 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 73
  %24 = load i32, ptr %23, align 4, !tbaa !140
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  tail call void @MakePPSavailable(ptr noundef nonnull %3, i32 noundef %20, ptr noundef nonnull %15) #29
  %27 = load ptr, ptr %14, align 8, !tbaa !136
  store i32 0, ptr %27, align 8, !tbaa !137
  %28 = load i32, ptr %7, align 8, !tbaa !132
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %26, %18, %13
  %31 = phi i64 [ %29, %26 ], [ 0, %18 ], [ 0, %13 ]
  %32 = getelementptr inbounds ptr, ptr %6, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 34
  %35 = load ptr, ptr %34, align 8, !tbaa !139
  store ptr %35, ptr %32, align 8, !tbaa !44
  store ptr %33, ptr %34, align 8, !tbaa !139
  %36 = load ptr, ptr %32, align 8, !tbaa !44
  tail call void @UseParameterSet(ptr noundef %36) #29
  tail call fastcc void @init_picture(ptr noundef nonnull %3, ptr noundef %36, ptr noundef %4) #28
  %37 = load i32, ptr %7, align 8, !tbaa !132
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %7, align 8, !tbaa !132
  br label %39

39:                                               ; preds = %30, %1
  %40 = phi i32 [ 3, %30 ], [ 0, %1 ]
  %41 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 151
  %42 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 117
  %43 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 118
  %44 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 58
  %45 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 34
  %46 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %47 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 17
  %48 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 12
  br label %49

49:                                               ; preds = %175, %39
  %50 = phi i32 [ %176, %175 ], [ %40, %39 ]
  %51 = phi ptr [ %177, %175 ], [ %6, %39 ]
  br label %52

52:                                               ; preds = %49, %87
  %53 = phi i32 [ %77, %87 ], [ %50, %49 ]
  %54 = add nsw i32 %53, -3
  %55 = icmp ult i32 %54, -2
  br i1 %55, label %56, label %179

56:                                               ; preds = %52
  %57 = load i32, ptr %7, align 8, !tbaa !132
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %51, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = tail call ptr @malloc_slice(ptr noundef %4, ptr noundef nonnull %3) #29
  %64 = load i32, ptr %7, align 8, !tbaa !132
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %51, i64 %65
  store ptr %63, ptr %66, align 8, !tbaa !44
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi ptr [ %63, %62 ], [ %60, %56 ]
  store ptr %3, ptr %68, align 8, !tbaa !73
  %69 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 1
  store ptr %4, ptr %69, align 8, !tbaa !141
  %70 = load ptr, ptr %41, align 8, !tbaa !142
  %71 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 5
  store ptr %70, ptr %71, align 8, !tbaa !143
  %72 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 44
  store i32 -8888, ptr %72, align 8, !tbaa !144
  %73 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 21
  store i32 0, ptr %73, align 8, !tbaa !145
  %74 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 94
  store i32 -1, ptr %74, align 8, !tbaa !146
  %75 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 95
  store i32 0, ptr %75, align 4, !tbaa !147
  %76 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 76
  store i32 0, ptr %76, align 8, !tbaa !148
  %77 = tail call i32 @read_new_slice(ptr noundef nonnull %68) #28, !range !149
  %78 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 43
  store i32 %77, ptr %78, align 4, !tbaa !150
  tail call fastcc void @Error_tracking(ptr noundef nonnull %3, ptr noundef nonnull %68) #28
  %79 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 35
  %80 = load i32, ptr %79, align 4, !tbaa !64
  %81 = load i32, ptr %42, align 8, !tbaa !58
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 47
  %85 = load i32, ptr %84, align 4, !tbaa !57
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %43, align 4, !tbaa !151
  %89 = icmp ne i32 %88, 0
  %90 = icmp ne i32 %77, 1
  %91 = and i1 %90, %89
  br i1 %91, label %52, label %92, !llvm.loop !152

92:                                               ; preds = %87, %83, %67
  %93 = add nsw i32 %77, -3
  %94 = icmp ult i32 %93, -2
  %95 = load i32, ptr %7, align 8, !tbaa !132
  br i1 %94, label %100, label %96

96:                                               ; preds = %92
  %97 = icmp eq i32 %95, 0
  %98 = icmp eq i32 %77, 2
  %99 = and i1 %98, %97
  br i1 %99, label %100, label %152

100:                                              ; preds = %92, %96
  %101 = phi i32 [ 0, %96 ], [ %95, %92 ]
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 22
  store i16 %102, ptr %103, align 4, !tbaa !153
  %104 = shl i32 %101, 16
  %105 = ashr exact i32 %104, 16
  %106 = load ptr, ptr %46, align 8, !tbaa !86
  %107 = getelementptr inbounds %struct.storable_picture, ptr %106, i64 0, i32 15
  %108 = load i16, ptr %107, align 4, !tbaa !154
  %109 = sext i16 %108 to i32
  %110 = tail call fastcc i32 @imax(i32 noundef %105, i32 noundef %109) #28
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %107, align 4, !tbaa !154
  %112 = icmp sgt i32 %101, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %100
  %114 = load ptr, ptr %51, align 8, !tbaa !44
  tail call fastcc void @CopyPOC(ptr noundef %114, ptr noundef nonnull %68) #28
  %115 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 39
  %116 = load i32, ptr %115, align 4, !tbaa !91
  %117 = load i32, ptr %7, align 8, !tbaa !132
  %118 = add nsw i32 %117, -1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %51, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  %122 = getelementptr inbounds %struct.slice, ptr %121, i64 0, i32 40
  store i32 %116, ptr %122, align 8, !tbaa !92
  br label %123

123:                                              ; preds = %113, %100
  %124 = phi i32 [ %117, %113 ], [ %101, %100 ]
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %7, align 8, !tbaa !132
  %126 = load i32, ptr %47, align 4, !tbaa !155
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %175, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %5, align 8, !tbaa !131
  %130 = add nsw i32 %126, 16
  %131 = sext i32 %130 to i64
  %132 = shl nsw i64 %131, 3
  %133 = tail call ptr @realloc(ptr noundef %129, i64 noundef %132) #31
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32, ptr %47, align 4, !tbaa !155
  %137 = add nsw i32 %136, 16
  %138 = sext i32 %137 to i64
  %139 = tail call noalias ptr @calloc(i64 noundef %138, i64 noundef 8) #32
  %140 = load ptr, ptr %5, align 8, !tbaa !131
  %141 = load i32, ptr %7, align 8, !tbaa !132
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %139, ptr align 8 %140, i64 %143, i1 false)
  tail call void @free(ptr noundef %140) #29
  store ptr %139, ptr %5, align 8, !tbaa !131
  br label %148

144:                                              ; preds = %128
  store ptr %133, ptr %5, align 8, !tbaa !131
  %145 = load i32, ptr %7, align 8, !tbaa !132
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %133, i64 %146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %147, i8 0, i64 128, i1 false)
  br label %148

148:                                              ; preds = %144, %135
  %149 = phi ptr [ %133, %144 ], [ %139, %135 ]
  %150 = load i32, ptr %47, align 4, !tbaa !155
  %151 = add nsw i32 %150, 16
  store i32 %151, ptr %47, align 4, !tbaa !155
  br label %175

152:                                              ; preds = %96
  %153 = add nsw i32 %95, -1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %51, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !44
  %157 = getelementptr inbounds %struct.slice, ptr %156, i64 0, i32 25
  %158 = load i32, ptr %157, align 8, !tbaa !77
  %159 = icmp eq i32 %158, 0
  %160 = load i32, ptr %44, align 8, !tbaa !156
  br i1 %159, label %163, label %161

161:                                              ; preds = %152
  %162 = lshr i32 %160, 1
  br label %168

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.slice, ptr %156, i64 0, i32 36
  %165 = load i32, ptr %164, align 8, !tbaa !157
  %166 = add i32 %165, 1
  %167 = udiv i32 %160, %166
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i32 [ %167, %163 ], [ %162, %161 ]
  %170 = getelementptr inbounds %struct.slice, ptr %156, i64 0, i32 40
  store i32 %169, ptr %170, align 8
  store i32 1, ptr %10, align 8, !tbaa !135
  %171 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 22
  store i16 0, ptr %171, align 4, !tbaa !153
  %172 = load ptr, ptr %45, align 8, !tbaa !139
  %173 = sext i32 %95 to i64
  %174 = getelementptr inbounds ptr, ptr %51, i64 %173
  store ptr %172, ptr %174, align 8, !tbaa !44
  store ptr %68, ptr %45, align 8, !tbaa !139
  br label %175

175:                                              ; preds = %123, %148, %168
  %176 = phi i32 [ %77, %168 ], [ 3, %148 ], [ 3, %123 ]
  %177 = phi ptr [ %51, %168 ], [ %149, %148 ], [ %51, %123 ]
  %178 = load ptr, ptr %48, align 8, !tbaa !158
  tail call void @CopySliceInfo(ptr noundef nonnull %68, ptr noundef %178) #28
  br label %49, !llvm.loop !152

179:                                              ; preds = %52
  tail call fastcc void @init_picture_decoding(ptr noundef nonnull %3) #28
  %180 = load i32, ptr %7, align 8, !tbaa !132
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 141
  br label %184

184:                                              ; preds = %182, %184
  %185 = phi i64 [ 0, %182 ], [ %200, %184 ]
  %186 = getelementptr inbounds ptr, ptr %51, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !44
  %188 = getelementptr inbounds %struct.slice, ptr %187, i64 0, i32 43
  %189 = load i32, ptr %188, align 4, !tbaa !150
  tail call void @init_slice(ptr noundef nonnull %3, ptr noundef %187) #28
  tail call void @decode_slice(ptr noundef %187, i32 noundef %189) #28
  %190 = load i32, ptr %8, align 8, !tbaa !133
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %8, align 8, !tbaa !133
  %192 = getelementptr inbounds %struct.slice, ptr %187, i64 0, i32 21
  %193 = load i32, ptr %192, align 8, !tbaa !145
  %194 = load i32, ptr %9, align 4, !tbaa !134
  %195 = add i32 %194, %193
  store i32 %195, ptr %9, align 4, !tbaa !134
  %196 = getelementptr inbounds %struct.slice, ptr %187, i64 0, i32 123
  %197 = load i32, ptr %196, align 8, !tbaa !159
  %198 = load i32, ptr %183, align 8, !tbaa !160
  %199 = add nsw i32 %198, %197
  store i32 %199, ptr %183, align 8, !tbaa !160
  %200 = add nuw nsw i64 %185, 1
  %201 = load i32, ptr %7, align 8, !tbaa !132
  %202 = sext i32 %201 to i64
  %203 = icmp slt i64 %200, %202
  br i1 %203, label %184, label %204, !llvm.loop !161

204:                                              ; preds = %184, %179
  tail call void @exit_picture(ptr noundef nonnull %3, ptr noundef nonnull %46) #28
  %205 = load ptr, ptr %51, align 8, !tbaa !44
  %206 = getelementptr inbounds %struct.slice, ptr %205, i64 0, i32 35
  %207 = load i32, ptr %206, align 4, !tbaa !64
  store i32 %207, ptr %42, align 8, !tbaa !58
  ret i32 %53
}

; Function Attrs: optsize
declare void @MakePPSavailable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UseParameterSet(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_picture(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !162 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 178
  store i32 1, ptr %8, align 8, !tbaa !164
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @exit_picture(ptr noundef nonnull %0, ptr noundef nonnull %9) #28
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 100
  %15 = load i32, ptr %14, align 4, !tbaa !165
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %19 = load i32, ptr %18, align 4, !tbaa !64
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 102
  %21 = load i32, ptr %20, align 4, !tbaa !166
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %24 = load i32, ptr %23, align 8, !tbaa !167
  %25 = urem i32 %22, %24
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 103
  store i32 %25, ptr %26, align 8, !tbaa !168
  br label %27

27:                                               ; preds = %17, %13
  %28 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !169
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %33 = load i32, ptr %32, align 4, !tbaa !64
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 103
  store i32 %33, ptr %34, align 8, !tbaa !168
  br label %35

35:                                               ; preds = %31, %27
  br i1 %16, label %36, label %69

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %38 = load i32, ptr %37, align 4, !tbaa !64
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  %40 = load i32, ptr %39, align 8, !tbaa !170
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %69, label %42

42:                                               ; preds = %36
  %43 = add i32 %40, 1
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 52
  %45 = load i32, ptr %44, align 8, !tbaa !167
  %46 = urem i32 %43, %45
  %47 = icmp eq i32 %38, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 27
  %50 = load i32, ptr %49, align 4, !tbaa !171
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.inp_par, ptr %2, i64 0, i32 17
  %54 = load i32, ptr %53, align 4, !tbaa !172
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = icmp ult i32 %38, %46
  %58 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 95
  %59 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 98
  br i1 %57, label %60, label %62

60:                                               ; preds = %56
  store i32 1, ptr %58, align 8, !tbaa !175
  store i32 1, ptr %59, align 4, !tbaa !176
  tail call void @conceal_lost_frames(ptr noundef %7, ptr noundef nonnull %1) #29
  %61 = load i32, ptr %53, align 4, !tbaa !172
  store i32 %61, ptr %58, align 8, !tbaa !175
  br label %64

62:                                               ; preds = %56
  store i32 %54, ptr %58, align 8, !tbaa !175
  store i32 0, ptr %59, align 4, !tbaa !176
  tail call void @conceal_lost_frames(ptr noundef %7, ptr noundef nonnull %1) #29
  br label %64

63:                                               ; preds = %52
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #29
  br label %64

64:                                               ; preds = %63, %62, %60, %48
  %65 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 95
  %66 = load i32, ptr %65, align 8, !tbaa !175
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @fill_frame_num_gap(ptr noundef nonnull %0, ptr noundef nonnull %1) #29
  br label %69

69:                                               ; preds = %64, %68, %42, %36, %35
  %70 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !177
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %75 = load i32, ptr %74, align 4, !tbaa !64
  %76 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  store i32 %75, ptr %76, align 8, !tbaa !170
  br label %77

77:                                               ; preds = %73, %69
  tail call void @decode_poc(ptr noundef nonnull %0, ptr noundef nonnull %1) #29
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 103
  %79 = load i32, ptr %78, align 8, !tbaa !168
  %80 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %81 = load i32, ptr %80, align 4, !tbaa !64
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 104
  %85 = load i32, ptr %84, align 4, !tbaa !178
  %86 = icmp eq i32 %85, 2147483647
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %89 = load i32, ptr %88, align 4, !tbaa !179
  store i32 %89, ptr %84, align 4, !tbaa !178
  br label %90

90:                                               ; preds = %87, %83, %77
  %91 = load i32, ptr %70, align 8, !tbaa !177
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %95 = load i32, ptr %94, align 4, !tbaa !179
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 92
  store i32 %95, ptr %96, align 4, !tbaa !180
  br label %97

97:                                               ; preds = %93, %90
  %98 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 38
  %99 = load i32, ptr %98, align 8, !tbaa !56
  %100 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %101 = load i32, ptr %100, align 4, !tbaa !181
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %103 = load i32, ptr %102, align 8, !tbaa !182
  %104 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %105 = load i32, ptr %104, align 4, !tbaa !183
  %106 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %107 = load i32, ptr %106, align 8, !tbaa !184
  %108 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #29
  store ptr %108, ptr %9, align 8, !tbaa !86
  %109 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %110 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 2
  %111 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 12
  %112 = load <2 x i32>, ptr %109, align 4, !tbaa !65
  store <2 x i32> %112, ptr %110, align 8, !tbaa !65
  %113 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %114 = load i32, ptr %113, align 4, !tbaa !179
  %115 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 4
  store i32 %114, ptr %115, align 8, !tbaa !185
  %116 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 29
  %117 = load i32, ptr %116, align 4, !tbaa !186
  %118 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 55
  store i32 %117, ptr %118, align 8, !tbaa !187
  %119 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 30
  %120 = load i32, ptr %119, align 8, !tbaa !188
  %121 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 57
  store i32 %120, ptr %121, align 4, !tbaa !189
  %122 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !190
  %124 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %123, i64 0, i32 27
  %125 = load i32, ptr %124, align 8, !tbaa !191
  %126 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 56
  store i32 %125, ptr %126, align 4, !tbaa !65
  %127 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %123, i64 0, i32 28
  %128 = load i32, ptr %127, align 4, !tbaa !192
  %129 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 56, i64 1
  store i32 %128, ptr %129, align 4, !tbaa !65
  %130 = load i32, ptr %98, align 8, !tbaa !56
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %97
  %133 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 25
  %134 = load i32, ptr %133, align 8, !tbaa !77
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 0, i32 3
  br label %137

137:                                              ; preds = %97, %132
  %138 = phi i32 [ %136, %132 ], [ 1, %97 ]
  %139 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 73
  store i32 %138, ptr %139, align 4, !tbaa !193
  %140 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 66
  %141 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 64
  %142 = load <2 x i32>, ptr %140, align 8, !tbaa !65
  store <2 x i32> %142, ptr %141, align 8, !tbaa !65
  %143 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 68
  %144 = load i32, ptr %143, align 8, !tbaa !194
  %145 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 66
  store i32 %144, ptr %145, align 8, !tbaa !195
  %146 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 140
  %147 = load ptr, ptr %146, align 8, !tbaa !196
  %148 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %149 = load i32, ptr %148, align 4, !tbaa !197
  %150 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 16
  %151 = load i32, ptr %150, align 8, !tbaa !34
  tail call void @ercReset(ptr noundef %147, i32 noundef %149, i32 noundef %149, i32 noundef %151) #29
  %152 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 141
  store i32 0, ptr %152, align 8, !tbaa !160
  %153 = load i32, ptr %98, align 8, !tbaa !56
  switch i32 %153, label %170 [
    i32 1, label %154
    i32 2, label %160
    i32 0, label %167
  ]

154:                                              ; preds = %137
  %155 = load i32, ptr %109, align 4, !tbaa !198
  %156 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 1
  store i32 %155, ptr %156, align 4, !tbaa !104
  %157 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %158 = load i32, ptr %157, align 8, !tbaa !199
  %159 = shl nsw i32 %158, 1
  store i32 %159, ptr %157, align 8, !tbaa !199
  br label %171

160:                                              ; preds = %137
  %161 = load i32, ptr %111, align 8, !tbaa !200
  %162 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 1
  store i32 %161, ptr %162, align 4, !tbaa !104
  %163 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %164 = load i32, ptr %163, align 8, !tbaa !199
  %165 = shl nsw i32 %164, 1
  %166 = or disjoint i32 %165, 1
  store i32 %166, ptr %163, align 8, !tbaa !199
  br label %171

167:                                              ; preds = %137
  %168 = load i32, ptr %113, align 4, !tbaa !179
  %169 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 1
  store i32 %168, ptr %169, align 4, !tbaa !104
  br label %171

170:                                              ; preds = %137
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 235) #29
  br label %171

171:                                              ; preds = %170, %167, %160, %154
  %172 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 22
  %173 = load i32, ptr %172, align 8, !tbaa !201
  %174 = icmp sgt i32 %173, 4
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = tail call i32 @set_ec_flag(ptr noundef nonnull %0, i32 noundef 1) #29
  store i32 0, ptr %172, align 8, !tbaa !201
  br label %177

177:                                              ; preds = %175, %171
  %178 = load ptr, ptr %122, align 8, !tbaa !190
  %179 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %178, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !79
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 29
  %184 = load ptr, ptr %183, align 8, !tbaa !202
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = load ptr, ptr %185, align 8, !tbaa !44
  %187 = load ptr, ptr %186, align 8, !tbaa !44
  %188 = load i32, ptr %148, align 4, !tbaa !197
  %189 = mul i32 %188, 48
  %190 = zext i32 %189 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %187, i8 -1, i64 %190, i1 false)
  br label %191

191:                                              ; preds = %182, %177
  %192 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %193 = load i32, ptr %192, align 8, !tbaa !88
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %239, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %197 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  br label %198

198:                                              ; preds = %195, %236
  %199 = phi i64 [ 0, %195 ], [ %237, %236 ]
  %200 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !44
  %202 = load i32, ptr %148, align 4, !tbaa !197
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %199
  %206 = load ptr, ptr %205, align 8, !tbaa !44
  br label %207

207:                                              ; preds = %204, %207
  %208 = phi i32 [ %211, %207 ], [ 0, %204 ]
  %209 = phi ptr [ %210, %207 ], [ %206, %204 ]
  %210 = getelementptr inbounds %struct.macroblock, ptr %209, i64 1
  tail call fastcc void @reset_mbs(ptr noundef %209) #28
  %211 = add nuw nsw i32 %208, 1
  %212 = load i32, ptr %148, align 4, !tbaa !197
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %207, label %214, !llvm.loop !203

214:                                              ; preds = %207, %198
  %215 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %199
  %216 = load ptr, ptr %215, align 8, !tbaa !44
  %217 = load ptr, ptr %216, align 8, !tbaa !44
  %218 = load i32, ptr %196, align 4, !tbaa !204
  %219 = shl i32 %218, 4
  %220 = load i32, ptr %197, align 4, !tbaa !205
  %221 = mul i32 %219, %220
  tail call fastcc void @fast_memset(ptr noundef %217, i32 noundef %221) #28
  %222 = load ptr, ptr %122, align 8, !tbaa !190
  %223 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %222, i64 0, i32 30
  %224 = load i32, ptr %223, align 4, !tbaa !206
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %214
  %227 = load i32, ptr %148, align 4, !tbaa !197
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %226, %229
  %230 = phi i64 [ %232, %229 ], [ 0, %226 ]
  %231 = getelementptr inbounds i8, ptr %201, i64 %230
  store i8 1, ptr %231, align 1, !tbaa !48
  %232 = add nuw nsw i64 %230, 1
  %233 = load i32, ptr %148, align 4, !tbaa !197
  %234 = sext i32 %233 to i64
  %235 = icmp slt i64 %232, %234
  br i1 %235, label %229, label %236, !llvm.loop !207

236:                                              ; preds = %229, %226, %214
  %237 = add nuw nsw i64 %199, 1
  %238 = icmp eq i64 %237, 3
  br i1 %238, label %279, label %198, !llvm.loop !208

239:                                              ; preds = %191
  %240 = load i32, ptr %148, align 4, !tbaa !197
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %269

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %244 = load ptr, ptr %243, align 8, !tbaa !114
  br label %245

245:                                              ; preds = %242, %245
  %246 = phi i32 [ %249, %245 ], [ 0, %242 ]
  %247 = phi ptr [ %248, %245 ], [ %244, %242 ]
  %248 = getelementptr inbounds %struct.macroblock, ptr %247, i64 1
  tail call fastcc void @reset_mbs(ptr noundef %247) #28
  %249 = add nuw nsw i32 %246, 1
  %250 = load i32, ptr %148, align 4, !tbaa !197
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %245, label %252, !llvm.loop !209

252:                                              ; preds = %245
  %253 = icmp slt i32 %250, 1
  %254 = load ptr, ptr %122, align 8, !tbaa !190
  %255 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %254, i64 0, i32 30
  %256 = load i32, ptr %255, align 4, !tbaa !206
  %257 = icmp eq i32 %256, 0
  %258 = or i1 %257, %253
  br i1 %258, label %269, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  br label %261

261:                                              ; preds = %259, %261
  %262 = phi i64 [ 0, %259 ], [ %265, %261 ]
  %263 = load ptr, ptr %260, align 8, !tbaa !120
  %264 = getelementptr inbounds i8, ptr %263, i64 %262
  store i8 1, ptr %264, align 1, !tbaa !48
  %265 = add nuw nsw i64 %262, 1
  %266 = load i32, ptr %148, align 4, !tbaa !197
  %267 = sext i32 %266 to i64
  %268 = icmp slt i64 %265, %267
  br i1 %268, label %261, label %269, !llvm.loop !210

269:                                              ; preds = %261, %252, %239
  %270 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  %271 = load ptr, ptr %270, align 8, !tbaa !118
  %272 = load ptr, ptr %271, align 8, !tbaa !44
  %273 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %274 = load i32, ptr %273, align 4, !tbaa !204
  %275 = shl i32 %274, 4
  %276 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %277 = load i32, ptr %276, align 4, !tbaa !205
  %278 = mul i32 %275, %277
  tail call fastcc void @fast_memset(ptr noundef %272, i32 noundef %278) #28
  br label %279

279:                                              ; preds = %236, %269
  %280 = load i32, ptr %172, align 8, !tbaa !201
  %281 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 43
  store i32 %280, ptr %281, align 8, !tbaa !211
  %282 = load i32, ptr %70, align 8, !tbaa !177
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 11
  store i32 %284, ptr %285, align 4, !tbaa !87
  %286 = load i32, ptr %28, align 8, !tbaa !169
  %287 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 44
  store i32 %286, ptr %287, align 4, !tbaa !212
  %288 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 51
  %289 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 45
  %290 = load <2 x i32>, ptr %288, align 4, !tbaa !65
  store <2 x i32> %290, ptr %289, align 8, !tbaa !65
  %291 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 53
  %292 = load i32, ptr %291, align 4, !tbaa !213
  %293 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 47
  store i32 %292, ptr %293, align 8, !tbaa !214
  %294 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 54
  %295 = load ptr, ptr %294, align 8, !tbaa !215
  %296 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 58
  store ptr %295, ptr %296, align 8, !tbaa !216
  store ptr null, ptr %294, align 8, !tbaa !215
  %297 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 25
  %298 = load i32, ptr %297, align 8, !tbaa !77
  %299 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 25
  store i32 %298, ptr %299, align 4, !tbaa !217
  %300 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %301 = load i32, ptr %300, align 4, !tbaa !205
  %302 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 26
  store i32 %301, ptr %302, align 8, !tbaa !218
  %303 = icmp eq i32 %298, 0
  %304 = select i1 %303, ptr @get_mb_block_pos_normal, ptr @get_mb_block_pos_mbaff
  %305 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 161
  store ptr %304, ptr %305, align 8, !tbaa !219
  %306 = select i1 %303, ptr @getNonAffNeighbour, ptr @getAffNeighbour
  %307 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 160
  store ptr %306, ptr %307, align 8, !tbaa !220
  %308 = load i32, ptr %80, align 4, !tbaa !64
  %309 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 7
  store i32 %308, ptr %309, align 4, !tbaa !221
  %310 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 5
  store i32 %308, ptr %310, align 4, !tbaa !222
  %311 = load i32, ptr %78, align 8, !tbaa !168
  %312 = icmp eq i32 %308, %311
  %313 = zext i1 %312 to i32
  %314 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 6
  store i32 %313, ptr %314, align 8, !tbaa !223
  %315 = load i32, ptr %98, align 8, !tbaa !56
  %316 = icmp eq i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 24
  store i32 %317, ptr %318, align 8, !tbaa !224
  %319 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 9
  %320 = load i32, ptr %319, align 4, !tbaa !67
  %321 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 48
  store i32 %320, ptr %321, align 4, !tbaa !225
  %322 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 30
  %323 = load i32, ptr %322, align 4, !tbaa !226
  %324 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 49
  store i32 %323, ptr %324, align 8, !tbaa !227
  %325 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 33
  %326 = load i32, ptr %325, align 4, !tbaa !228
  %327 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 50
  store i32 %326, ptr %327, align 4, !tbaa !229
  %328 = icmp eq i32 %326, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %279
  %330 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 34
  %331 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 51
  %332 = load <4 x i32>, ptr %330, align 4, !tbaa !65
  store <4 x i32> %332, ptr %331, align 8, !tbaa !65
  br label %333

333:                                              ; preds = %329, %279
  %334 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 158
  %335 = load ptr, ptr %334, align 8, !tbaa !230
  %336 = load i32, ptr %335, align 8, !tbaa !231
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %365, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %335, i64 0, i32 2
  %340 = load i8, ptr %339, align 8, !tbaa !233
  %341 = zext nneg i8 %340 to i32
  %342 = shl nuw i32 1, %341
  %343 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 60
  store i32 1, ptr %343, align 4, !tbaa !234
  %344 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %335, i64 0, i32 4
  %345 = load i32, ptr %344, align 4, !tbaa !235
  %346 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 61
  store i32 %345, ptr %346, align 8, !tbaa !236
  %347 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %335, i64 0, i32 3
  %348 = load i8, ptr %347, align 1, !tbaa !237
  %349 = zext i8 %348 to i32
  %350 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 62
  store i32 %349, ptr %350, align 4, !tbaa !238
  %351 = sext i32 %342 to i64
  %352 = shl nsw i64 %351, 2
  %353 = tail call noalias ptr @malloc(i64 noundef %352) #33
  %354 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 63
  store ptr %353, ptr %354, align 8, !tbaa !239
  %355 = icmp eq ptr %353, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %338
  tail call void @no_mem_exit(ptr noundef nonnull @.str.49) #29
  %357 = load ptr, ptr %354, align 8, !tbaa !239
  %358 = load ptr, ptr %334, align 8, !tbaa !230
  br label %359

359:                                              ; preds = %356, %338
  %360 = phi ptr [ %358, %356 ], [ %335, %338 ]
  %361 = phi ptr [ %357, %356 ], [ %353, %338 ]
  %362 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %360, i64 0, i32 6
  %363 = shl nsw i64 %351, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %361, ptr noundef nonnull align 4 dereferenceable(1) %362, i64 %363, i1 false)
  %364 = load ptr, ptr %334, align 8, !tbaa !230
  tail call void @update_tone_mapping_sei(ptr noundef %364) #29
  br label %367

365:                                              ; preds = %333
  %366 = getelementptr inbounds %struct.storable_picture, ptr %108, i64 0, i32 60
  store i32 0, ptr %366, align 4, !tbaa !234
  br label %367

367:                                              ; preds = %365, %359
  %368 = load i32, ptr %192, align 8, !tbaa !88
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %389, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr %9, align 8, !tbaa !86
  %372 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137
  store ptr %371, ptr %372, align 8, !tbaa !44
  %373 = load i32, ptr %98, align 8, !tbaa !56
  %374 = load i32, ptr %100, align 4, !tbaa !181
  %375 = load i32, ptr %102, align 8, !tbaa !182
  %376 = load i32, ptr %104, align 4, !tbaa !183
  %377 = load i32, ptr %106, align 8, !tbaa !184
  %378 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef %373, i32 noundef %374, i32 noundef %375, i32 noundef %376, i32 noundef %377) #29
  %379 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 1
  store ptr %378, ptr %379, align 8, !tbaa !44
  %380 = load ptr, ptr %372, align 8, !tbaa !44
  tail call void @copy_dec_picture_JV(ptr noundef nonnull %0, ptr noundef %378, ptr noundef %380) #28
  %381 = load i32, ptr %98, align 8, !tbaa !56
  %382 = load i32, ptr %100, align 4, !tbaa !181
  %383 = load i32, ptr %102, align 8, !tbaa !182
  %384 = load i32, ptr %104, align 4, !tbaa !183
  %385 = load i32, ptr %106, align 8, !tbaa !184
  %386 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef %381, i32 noundef %382, i32 noundef %383, i32 noundef %384, i32 noundef %385) #29
  %387 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 2
  store ptr %386, ptr %387, align 8, !tbaa !44
  %388 = load ptr, ptr %372, align 8, !tbaa !44
  tail call void @copy_dec_picture_JV(ptr noundef nonnull %0, ptr noundef %386, ptr noundef %388) #28
  br label %389

389:                                              ; preds = %370, %367
  ret void
}

; Function Attrs: optsize
declare ptr @malloc_slice(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @read_new_slice(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 171
  %6 = load ptr, ptr %5, align 8, !tbaa !240
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  store i32 -1, ptr %7, align 8, !tbaa !52
  %8 = tail call i32 @read_next_nalu(ptr noundef %2, ptr noundef %6) #29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %435, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 16
  %12 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 4
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %14 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 6
  %15 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 7
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 74
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 75
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %21 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 5
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 41
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 28
  %26 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 136
  %27 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 12
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  %29 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 33
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 39
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %33 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %34 = getelementptr inbounds %struct.nalu_t, ptr %6, i64 0, i32 7
  %35 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %36 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 100
  %37 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 101
  %38 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 41
  br label %39

39:                                               ; preds = %10, %432
  %40 = phi ptr [ null, %10 ], [ %85, %432 ]
  %41 = load i32, ptr %11, align 8, !tbaa !241
  %42 = icmp eq i32 %41, 1
  %43 = load i32, ptr %12, align 8, !tbaa !242
  br i1 %42, label %44, label %80

44:                                               ; preds = %39
  switch i32 %43, label %80 [
    i32 14, label %45
    i32 20, label %45
  ]

45:                                               ; preds = %44, %44
  %46 = load ptr, ptr %13, align 8, !tbaa !244
  %47 = load ptr, ptr %46, align 8, !tbaa !245
  %48 = getelementptr inbounds %struct.bit_stream, ptr %47, i64 0, i32 5
  store i32 0, ptr %48, align 8, !tbaa !248
  store i32 0, ptr %47, align 8, !tbaa !250
  %49 = getelementptr inbounds %struct.bit_stream, ptr %47, i64 0, i32 2
  store i32 0, ptr %49, align 8, !tbaa !251
  %50 = getelementptr inbounds %struct.bit_stream, ptr %47, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !252
  %52 = load ptr, ptr %14, align 8, !tbaa !253
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i32, ptr %15, align 4, !tbaa !254
  %55 = add i32 %54, -1
  tail call fastcc void @fast_memcpy(ptr noundef %51, ptr noundef nonnull %53, i32 noundef %55) #28
  %56 = load ptr, ptr %50, align 8, !tbaa !252
  %57 = load i32, ptr %15, align 4, !tbaa !254
  %58 = add i32 %57, -1
  %59 = tail call i32 @RBSPtoSODB(ptr noundef %56, i32 noundef %58) #29
  %60 = getelementptr inbounds %struct.bit_stream, ptr %47, i64 0, i32 3
  store i32 %59, ptr %60, align 4, !tbaa !255
  %61 = getelementptr inbounds %struct.bit_stream, ptr %47, i64 0, i32 1
  store i32 %59, ptr %61, align 4, !tbaa !256
  %62 = tail call i32 @u_1(ptr noundef nonnull @.str.10, ptr noundef nonnull %47) #29
  store i32 %62, ptr %7, align 8, !tbaa !52
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %45
  tail call void (...) @nal_unit_header_svc_extension() #29
  %65 = load i32, ptr %12, align 8, !tbaa !242
  br label %70

66:                                               ; preds = %45
  tail call void @nal_unit_header_mvc_extension(ptr noundef nonnull %16, ptr noundef nonnull %47) #29
  %67 = load i32, ptr %12, align 8, !tbaa !242
  %68 = icmp eq i32 %67, 14
  %69 = zext i1 %68 to i32
  store i32 %69, ptr %17, align 4, !tbaa !257
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i32 [ %67, %66 ], [ %65, %64 ]
  %72 = icmp eq i32 %71, 20
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, ptr %7, align 8, !tbaa !52
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, ptr %16, align 4, !tbaa !258
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 5, i32 1
  store i32 %79, ptr %12, align 8, !tbaa !242
  br label %80

80:                                               ; preds = %44, %70, %73, %76, %39
  %81 = phi i32 [ %43, %44 ], [ %43, %39 ], [ %71, %70 ], [ %79, %76 ], [ 20, %73 ]
  %82 = phi ptr [ %40, %44 ], [ %40, %39 ], [ %47, %70 ], [ %47, %76 ], [ %47, %73 ]
  br label %83

83:                                               ; preds = %80, %378
  %84 = phi i32 [ %380, %378 ], [ %81, %80 ]
  %85 = phi ptr [ %379, %378 ], [ %82, %80 ]
  switch i32 %84, label %426 [
    i32 1, label %86
    i32 5, label %86
    i32 2, label %250
    i32 3, label %383
    i32 4, label %388
    i32 6, label %393
    i32 8, label %396
    i32 7, label %397
    i32 9, label %432
    i32 10, label %432
    i32 11, label %432
    i32 12, label %398
    i32 24, label %432
    i32 14, label %405
    i32 15, label %409
    i32 20, label %418
  ]

86:                                               ; preds = %83, %83
  %87 = load i32, ptr %36, align 4, !tbaa !165
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = icmp eq i32 %84, 5
  %91 = load i32, ptr %37, align 8, !tbaa !259
  %92 = icmp eq i32 %91, 0
  br i1 %90, label %96, label %104

93:                                               ; preds = %86
  %94 = load i32, ptr %37, align 8, !tbaa !259
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %103

96:                                               ; preds = %89
  br i1 %92, label %101, label %103

97:                                               ; preds = %93
  %98 = icmp eq i32 %84, 5
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  br label %101

101:                                              ; preds = %97, %96, %99
  %102 = phi i32 [ 1, %99 ], [ 0, %96 ], [ 0, %97 ]
  store i32 %102, ptr %38, align 4, !tbaa !76
  br label %103

103:                                              ; preds = %101, %93, %96
  store i32 1, ptr %37, align 8, !tbaa !259
  br label %105

104:                                              ; preds = %89
  br i1 %92, label %432, label %105

105:                                              ; preds = %104, %103
  %106 = load i32, ptr %12, align 8, !tbaa !242
  %107 = icmp eq i32 %106, 5
  %108 = zext i1 %107 to i32
  store i32 %108, ptr %20, align 8, !tbaa !169
  %109 = load i32, ptr %21, align 4, !tbaa !260
  store i32 %109, ptr %22, align 8, !tbaa !177
  store i32 0, ptr %23, align 8, !tbaa !261
  store i32 1, ptr %24, align 4, !tbaa !262
  %110 = load i32, ptr %7, align 8, !tbaa !52
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %13, align 8, !tbaa !244
  %114 = load ptr, ptr %113, align 8, !tbaa !245
  %115 = getelementptr inbounds %struct.bit_stream, ptr %114, i64 0, i32 5
  store i32 0, ptr %115, align 8, !tbaa !248
  store i32 0, ptr %114, align 8, !tbaa !250
  %116 = getelementptr inbounds %struct.bit_stream, ptr %114, i64 0, i32 2
  store i32 0, ptr %116, align 8, !tbaa !251
  %117 = getelementptr inbounds %struct.bit_stream, ptr %114, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !252
  %119 = load ptr, ptr %14, align 8, !tbaa !253
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load i32, ptr %15, align 4, !tbaa !254
  %122 = add i32 %121, -1
  tail call fastcc void @fast_memcpy(ptr noundef %118, ptr noundef nonnull %120, i32 noundef %122) #28
  %123 = load ptr, ptr %117, align 8, !tbaa !252
  %124 = load i32, ptr %15, align 4, !tbaa !254
  %125 = add i32 %124, -1
  %126 = tail call i32 @RBSPtoSODB(ptr noundef %123, i32 noundef %125) #29
  %127 = getelementptr inbounds %struct.bit_stream, ptr %114, i64 0, i32 3
  store i32 %126, ptr %127, align 4, !tbaa !255
  %128 = getelementptr inbounds %struct.bit_stream, ptr %114, i64 0, i32 1
  store i32 %126, ptr %128, align 4, !tbaa !256
  br label %129

129:                                              ; preds = %112, %105
  %130 = phi ptr [ %114, %112 ], [ %85, %105 ]
  %131 = tail call i32 @FirstPartOfSliceHeader(ptr noundef nonnull %0) #29
  tail call void @UseParameterSet(ptr noundef nonnull %0) #29
  %132 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !163
  %134 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  store ptr %133, ptr %134, align 8, !tbaa !66
  %135 = load ptr, ptr %33, align 8, !tbaa !190
  %136 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 2
  store ptr %135, ptr %136, align 8, !tbaa !78
  %137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %135, i64 0, i32 4
  %138 = load i32, ptr %137, align 8, !tbaa !263
  %139 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 9
  store i32 %138, ptr %139, align 4, !tbaa !264
  %140 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %133, i64 0, i32 9
  %141 = load i32, ptr %140, align 4, !tbaa !67
  %142 = icmp eq i32 %141, 3
  br i1 %142, label %143, label %148

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 105
  %145 = load i32, ptr %144, align 8, !tbaa !88
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i32
  br label %148

148:                                              ; preds = %143, %129
  %149 = phi i32 [ 0, %129 ], [ %147, %143 ]
  %150 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 10
  store i32 %149, ptr %150, align 8, !tbaa !265
  %151 = tail call i32 @RestOfSliceHeader(ptr noundef nonnull %0) #29
  %152 = load i32, ptr %7, align 8, !tbaa !52
  switch i32 %152, label %198 [
    i32 0, label %153
    i32 -1, label %161
  ]

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !266
  %156 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %155, ptr %156, align 8, !tbaa !267
  %157 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 5
  %158 = load i32, ptr %157, align 4, !tbaa !268
  %159 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 %158, ptr %159, align 4, !tbaa !269
  %160 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 4
  br label %194

161:                                              ; preds = %148
  %162 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !270
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = tail call i32 @GetBaseViewId(ptr noundef nonnull %2, ptr noundef nonnull %162) #29
  %167 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %166, ptr %167, align 8, !tbaa !267
  %168 = load i32, ptr %17, align 4, !tbaa !257
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !268
  %173 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 %172, ptr %173, align 4, !tbaa !269
  %174 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 4
  br label %194

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 1, ptr %176, align 4, !tbaa !269
  br label %194

177:                                              ; preds = %161
  %178 = load i32, ptr %17, align 4, !tbaa !257
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !266
  %183 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %182, ptr %183, align 8, !tbaa !267
  %184 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !268
  %186 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 %185, ptr %186, align 4, !tbaa !269
  %187 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 69, i32 4
  br label %194

188:                                              ; preds = %177
  %189 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %163, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !271
  %191 = load i32, ptr %190, align 4, !tbaa !65
  %192 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  store i32 %191, ptr %192, align 8, !tbaa !267
  %193 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 67
  store i32 1, ptr %193, align 4, !tbaa !269
  br label %194

194:                                              ; preds = %153, %175, %170, %188, %180
  %195 = phi ptr [ %187, %180 ], [ %20, %188 ], [ %174, %170 ], [ %20, %175 ], [ %160, %153 ]
  %196 = load i32, ptr %195, align 4, !tbaa !65
  %197 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  store i32 %196, ptr %197, align 8, !tbaa !194
  br label %198

198:                                              ; preds = %194, %148
  tail call void @assign_quant_params(ptr noundef nonnull %0) #29
  %199 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 47
  %200 = load i32, ptr %199, align 4, !tbaa !57
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 118
  %204 = load i32, ptr %203, align 4, !tbaa !151
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 119
  %208 = load i32, ptr %207, align 8, !tbaa !274
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 22
  %212 = load i32, ptr %211, align 8, !tbaa !201
  %213 = load ptr, ptr %26, align 8, !tbaa !86
  %214 = getelementptr inbounds %struct.storable_picture, ptr %213, i64 0, i32 43
  store i32 %212, ptr %214, align 8, !tbaa !211
  br label %215

215:                                              ; preds = %210, %206, %202, %198
  %216 = load ptr, ptr %26, align 8, !tbaa !86
  %217 = load ptr, ptr %27, align 8, !tbaa !158
  %218 = tail call i32 @is_new_picture(ptr noundef %216, ptr noundef nonnull %0, ptr noundef %217) #28, !range !275
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 16
  %222 = load i32, ptr %221, align 8, !tbaa !132
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  tail call fastcc void @init_picture(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef %4) #28
  br label %225

225:                                              ; preds = %224, %220
  tail call void @CheckZeroByteVCL(ptr noundef nonnull %2, ptr noundef nonnull %6) #29
  br label %226

226:                                              ; preds = %215, %225
  %227 = phi i32 [ 2, %225 ], [ 3, %215 ]
  tail call void @setup_slice_methods(ptr noundef nonnull %0) #29
  %228 = load i32, ptr %30, align 8, !tbaa !77
  %229 = icmp ne i32 %228, 0
  %230 = load i32, ptr %31, align 4, !tbaa !91
  %231 = zext i1 %229 to i32
  %232 = shl i32 %230, %231
  store i32 %232, ptr %32, align 4
  %233 = load ptr, ptr %33, align 8, !tbaa !190
  %234 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %233, i64 0, i32 3
  %235 = load i32, ptr %234, align 4, !tbaa !79
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %249, label %237

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct.bit_stream, ptr %130, i64 0, i32 2
  %239 = load i32, ptr %238, align 8, !tbaa !251
  %240 = sdiv i32 %239, 8
  %241 = and i32 %239, 7
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = add nsw i32 %240, %243
  %245 = load ptr, ptr %13, align 8, !tbaa !244
  %246 = getelementptr inbounds %struct.datapartition, ptr %245, i64 0, i32 1
  %247 = getelementptr inbounds %struct.bit_stream, ptr %130, i64 0, i32 4
  %248 = load ptr, ptr %247, align 8, !tbaa !252
  tail call void @arideco_start_decoding(ptr noundef nonnull %246, ptr noundef %248, i32 noundef %244, ptr noundef %130) #29
  br label %249

249:                                              ; preds = %237, %226
  store i32 0, ptr %36, align 4, !tbaa !165
  br label %435

250:                                              ; preds = %83
  store i32 1, ptr %18, align 8, !tbaa !276
  store i32 1, ptr %19, align 4, !tbaa !277
  store i32 0, ptr %20, align 8, !tbaa !169
  %251 = load i32, ptr %21, align 4, !tbaa !260
  store i32 %251, ptr %22, align 8, !tbaa !177
  store i32 1, ptr %23, align 8, !tbaa !261
  store i32 3, ptr %24, align 4, !tbaa !262
  store i32 0, ptr %25, align 8, !tbaa !83
  %252 = load ptr, ptr %13, align 8, !tbaa !244
  %253 = load ptr, ptr %252, align 8, !tbaa !245
  %254 = getelementptr inbounds %struct.bit_stream, ptr %253, i64 0, i32 5
  store i32 0, ptr %254, align 8, !tbaa !248
  store i32 0, ptr %253, align 8, !tbaa !250
  %255 = getelementptr inbounds %struct.bit_stream, ptr %253, i64 0, i32 2
  store i32 0, ptr %255, align 8, !tbaa !251
  %256 = getelementptr inbounds %struct.bit_stream, ptr %253, i64 0, i32 4
  %257 = load ptr, ptr %256, align 8, !tbaa !252
  %258 = load ptr, ptr %14, align 8, !tbaa !253
  %259 = getelementptr inbounds i8, ptr %258, i64 1
  %260 = load i32, ptr %15, align 4, !tbaa !254
  %261 = add i32 %260, -1
  %262 = zext i32 %261 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %257, ptr nonnull align 1 %259, i64 %262, i1 false)
  %263 = load ptr, ptr %256, align 8, !tbaa !252
  %264 = load i32, ptr %15, align 4, !tbaa !254
  %265 = add i32 %264, -1
  %266 = tail call i32 @RBSPtoSODB(ptr noundef %263, i32 noundef %265) #29
  %267 = getelementptr inbounds %struct.bit_stream, ptr %253, i64 0, i32 3
  store i32 %266, ptr %267, align 4, !tbaa !255
  %268 = getelementptr inbounds %struct.bit_stream, ptr %253, i64 0, i32 1
  store i32 %266, ptr %268, align 4, !tbaa !256
  %269 = tail call i32 @FirstPartOfSliceHeader(ptr noundef nonnull %0) #29
  tail call void @UseParameterSet(ptr noundef nonnull %0) #29
  %270 = tail call i32 @RestOfSliceHeader(ptr noundef nonnull %0) #29
  %271 = tail call i32 @fmo_init(ptr noundef %2, ptr noundef nonnull %0) #29
  %272 = load ptr, ptr %26, align 8, !tbaa !86
  %273 = load ptr, ptr %27, align 8, !tbaa !158
  %274 = tail call i32 @is_new_picture(ptr noundef %272, ptr noundef nonnull %0, ptr noundef %273) #28, !range !275
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %250
  tail call fastcc void @init_picture(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef %4) #28
  tail call void @CheckZeroByteVCL(ptr noundef nonnull %2, ptr noundef nonnull %6) #29
  br label %277

277:                                              ; preds = %250, %276
  %278 = phi i32 [ 2, %276 ], [ 3, %250 ]
  tail call void @update_pic_num(ptr noundef nonnull %0) #29
  %279 = load ptr, ptr %28, align 8, !tbaa !49
  tail call void %279(ptr noundef nonnull %0) #29
  tail call void @reorder_lists(ptr noundef nonnull %0) #28
  %280 = load i32, ptr %29, align 4, !tbaa !278
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  tail call void @init_mbaff_lists(ptr noundef nonnull %2, ptr noundef nonnull %0) #29
  br label %283

283:                                              ; preds = %282, %277
  %284 = load i32, ptr %30, align 8, !tbaa !77
  %285 = icmp ne i32 %284, 0
  %286 = load i32, ptr %31, align 4, !tbaa !91
  %287 = zext i1 %285 to i32
  %288 = shl i32 %286, %287
  store i32 %288, ptr %32, align 4, !tbaa !126
  %289 = tail call i32 @ue_v(ptr noundef nonnull @.str.12, ptr noundef nonnull %253) #29
  %290 = load ptr, ptr %33, align 8, !tbaa !190
  %291 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %290, i64 0, i32 3
  %292 = load i32, ptr %291, align 4, !tbaa !79
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %283
  tail call void @error(ptr noundef nonnull @.str.13, i32 noundef 500) #29
  br label %295

295:                                              ; preds = %294, %283
  %296 = tail call i32 @read_next_nalu(ptr noundef nonnull %2, ptr noundef nonnull %6) #29
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %435, label %298

298:                                              ; preds = %295
  %299 = load i32, ptr %12, align 8, !tbaa !242
  %300 = icmp eq i32 %299, 3
  br i1 %300, label %301, label %337

301:                                              ; preds = %298
  %302 = load ptr, ptr %13, align 8, !tbaa !244
  %303 = getelementptr inbounds %struct.datapartition, ptr %302, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !245
  %305 = getelementptr inbounds %struct.bit_stream, ptr %304, i64 0, i32 5
  store i32 0, ptr %305, align 8, !tbaa !248
  store i32 0, ptr %304, align 8, !tbaa !250
  %306 = getelementptr inbounds %struct.bit_stream, ptr %304, i64 0, i32 2
  store i32 0, ptr %306, align 8, !tbaa !251
  %307 = getelementptr inbounds %struct.bit_stream, ptr %304, i64 0, i32 4
  %308 = load ptr, ptr %307, align 8, !tbaa !252
  %309 = load ptr, ptr %14, align 8, !tbaa !253
  %310 = getelementptr inbounds i8, ptr %309, i64 1
  %311 = load i32, ptr %15, align 4, !tbaa !254
  %312 = add i32 %311, -1
  %313 = zext i32 %312 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %308, ptr nonnull align 1 %310, i64 %313, i1 false)
  %314 = load ptr, ptr %307, align 8, !tbaa !252
  %315 = load i32, ptr %15, align 4, !tbaa !254
  %316 = add i32 %315, -1
  %317 = tail call i32 @RBSPtoSODB(ptr noundef %314, i32 noundef %316) #29
  %318 = getelementptr inbounds %struct.bit_stream, ptr %304, i64 0, i32 3
  store i32 %317, ptr %318, align 4, !tbaa !255
  %319 = getelementptr inbounds %struct.bit_stream, ptr %304, i64 0, i32 1
  store i32 %317, ptr %319, align 4, !tbaa !256
  %320 = tail call i32 @ue_v(ptr noundef nonnull @.str.14, ptr noundef nonnull %304) #29
  store i32 0, ptr %18, align 8, !tbaa !276
  %321 = icmp eq i32 %320, %289
  br i1 %321, label %322, label %325

322:                                              ; preds = %301
  %323 = load i16, ptr %34, align 8, !tbaa !279
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %322, %301
  %326 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  store i32 1, ptr %18, align 8, !tbaa !276
  store i32 1, ptr %19, align 4, !tbaa !277
  br label %338

327:                                              ; preds = %322
  %328 = load ptr, ptr %33, align 8, !tbaa !190
  %329 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %328, i64 0, i32 31
  %330 = load i32, ptr %329, align 8, !tbaa !280
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332

332:                                              ; preds = %327
  %333 = tail call i32 @ue_v(ptr noundef nonnull @.str.16, ptr noundef nonnull %304) #29
  br label %334

334:                                              ; preds = %327, %332
  %335 = tail call i32 @read_next_nalu(ptr noundef nonnull %2, ptr noundef nonnull %6) #29
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %435, label %338

337:                                              ; preds = %298
  store i32 1, ptr %18, align 8, !tbaa !276
  br label %340

338:                                              ; preds = %334, %325
  %339 = load i32, ptr %12, align 8, !tbaa !242
  br label %340

340:                                              ; preds = %338, %337
  %341 = phi i32 [ %339, %338 ], [ %299, %337 ]
  %342 = phi ptr [ %304, %338 ], [ %253, %337 ]
  %343 = icmp eq i32 %341, 4
  br i1 %343, label %344, label %377

344:                                              ; preds = %340
  %345 = load ptr, ptr %13, align 8, !tbaa !244
  %346 = getelementptr inbounds %struct.datapartition, ptr %345, i64 2
  %347 = load ptr, ptr %346, align 8, !tbaa !245
  %348 = getelementptr inbounds %struct.bit_stream, ptr %347, i64 0, i32 5
  store i32 0, ptr %348, align 8, !tbaa !248
  store i32 0, ptr %347, align 8, !tbaa !250
  %349 = getelementptr inbounds %struct.bit_stream, ptr %347, i64 0, i32 2
  store i32 0, ptr %349, align 8, !tbaa !251
  %350 = getelementptr inbounds %struct.bit_stream, ptr %347, i64 0, i32 4
  %351 = load ptr, ptr %350, align 8, !tbaa !252
  %352 = load ptr, ptr %14, align 8, !tbaa !253
  %353 = getelementptr inbounds i8, ptr %352, i64 1
  %354 = load i32, ptr %15, align 4, !tbaa !254
  %355 = add i32 %354, -1
  %356 = zext i32 %355 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %351, ptr nonnull align 1 %353, i64 %356, i1 false)
  %357 = load ptr, ptr %350, align 8, !tbaa !252
  %358 = load i32, ptr %15, align 4, !tbaa !254
  %359 = add i32 %358, -1
  %360 = tail call i32 @RBSPtoSODB(ptr noundef %357, i32 noundef %359) #29
  %361 = getelementptr inbounds %struct.bit_stream, ptr %347, i64 0, i32 3
  store i32 %360, ptr %361, align 4, !tbaa !255
  %362 = getelementptr inbounds %struct.bit_stream, ptr %347, i64 0, i32 1
  store i32 %360, ptr %362, align 4, !tbaa !256
  store i32 0, ptr %19, align 4, !tbaa !277
  %363 = tail call i32 @ue_v(ptr noundef nonnull @.str.17, ptr noundef nonnull %347) #29
  %364 = icmp eq i32 %363, %289
  br i1 %364, label %365, label %368

365:                                              ; preds = %344
  %366 = load i16, ptr %34, align 8, !tbaa !279
  %367 = icmp eq i16 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %365, %344
  %369 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  store i32 1, ptr %19, align 4, !tbaa !277
  br label %370

370:                                              ; preds = %368, %365
  %371 = load ptr, ptr %33, align 8, !tbaa !190
  %372 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %371, i64 0, i32 31
  %373 = load i32, ptr %372, align 8, !tbaa !280
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %370
  %376 = tail call i32 @ue_v(ptr noundef nonnull @.str.19, ptr noundef nonnull %347) #29
  br label %378

377:                                              ; preds = %340
  store i32 1, ptr %19, align 4, !tbaa !277
  br label %378

378:                                              ; preds = %370, %375, %377
  %379 = phi ptr [ %347, %375 ], [ %342, %377 ], [ %347, %370 ]
  %380 = load i32, ptr %12, align 8, !tbaa !242
  %381 = add i32 %380, -3
  %382 = icmp ult i32 %381, 2
  br i1 %382, label %435, label %83

383:                                              ; preds = %83
  %384 = load i32, ptr %35, align 8, !tbaa !281
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %432

386:                                              ; preds = %383
  %387 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  br label %432

388:                                              ; preds = %83
  %389 = load i32, ptr %35, align 8, !tbaa !281
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %432

391:                                              ; preds = %388
  %392 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %432

393:                                              ; preds = %83
  %394 = load ptr, ptr %14, align 8, !tbaa !253
  %395 = load i32, ptr %15, align 4, !tbaa !254
  tail call void @InterpretSEIMessage(ptr noundef %394, i32 noundef %395, ptr noundef %2, ptr noundef nonnull %0) #29
  br label %432

396:                                              ; preds = %83
  tail call void @ProcessPPS(ptr noundef %2, ptr noundef nonnull %6) #29
  br label %432

397:                                              ; preds = %83
  tail call void @ProcessSPS(ptr noundef %2, ptr noundef nonnull %6) #29
  br label %432

398:                                              ; preds = %83
  %399 = load i32, ptr %35, align 8, !tbaa !281
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %432

401:                                              ; preds = %398
  %402 = load i32, ptr %15, align 4, !tbaa !254
  %403 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %402) #28
  %404 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53)
  br label %432

405:                                              ; preds = %83
  %406 = load i32, ptr %7, align 8, !tbaa !52
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %432

408:                                              ; preds = %405
  tail call void (...) @prefix_nal_unit_svc() #29
  br label %432

409:                                              ; preds = %83
  %410 = load i32, ptr %11, align 8, !tbaa !241
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  tail call void @ProcessSubsetSPS(ptr noundef %2, ptr noundef nonnull %6) #29
  br label %432

413:                                              ; preds = %409
  %414 = load i32, ptr %35, align 8, !tbaa !281
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %432

416:                                              ; preds = %413
  %417 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  br label %432

418:                                              ; preds = %83
  %419 = load i32, ptr %11, align 8, !tbaa !241
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %418
  %422 = load i32, ptr %35, align 8, !tbaa !281
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %421
  %425 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef 20) #28
  br label %432

426:                                              ; preds = %83
  %427 = load i32, ptr %35, align 8, !tbaa !281
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = load i32, ptr %15, align 4, !tbaa !254
  %431 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %84, i32 noundef %430) #28
  br label %432

432:                                              ; preds = %83, %83, %83, %83, %426, %429, %418, %421, %424, %412, %416, %413, %405, %408, %398, %401, %388, %391, %383, %386, %104, %397, %396, %393
  store i32 -1, ptr %7, align 8, !tbaa !52
  %433 = tail call i32 @read_next_nalu(ptr noundef %2, ptr noundef nonnull %6) #29
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %39

435:                                              ; preds = %432, %378, %334, %295, %1, %249
  %436 = phi i32 [ %227, %249 ], [ 1, %1 ], [ %278, %295 ], [ %278, %334 ], [ %278, %378 ], [ 1, %432 ]
  ret i32 %436
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @Error_tracking(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !282 {
  %3 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 47
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 119
  store i32 1, ptr %7, align 8, !tbaa !274
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 118
  store i32 1, ptr %8, align 4, !tbaa !151
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 8, !tbaa !201
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %42, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !65
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %12, %24
  %17 = phi i32 [ %25, %24 ], [ %14, %12 ]
  %18 = phi i64 [ %26, %24 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 110, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  store i32 0, ptr %8, align 4, !tbaa !151
  %23 = load i32, ptr %13, align 8, !tbaa !65
  br label %24

24:                                               ; preds = %16, %22
  %25 = phi i32 [ %17, %16 ], [ %23, %22 ]
  %26 = add nuw nsw i64 %18, 1
  %27 = sext i32 %25 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %16, label %42, !llvm.loop !283

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 22
  %31 = load i32, ptr %30, align 8, !tbaa !201
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 50
  %35 = load i32, ptr %34, align 8, !tbaa !284
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 110, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !65
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 119
  store i32 0, ptr %41, align 8, !tbaa !274
  br label %42

42:                                               ; preds = %24, %12, %6, %29, %40, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !285 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CopyPOC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !PGOFuncName !286 {
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 4, !tbaa !179
  %5 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  store i32 %4, ptr %5, align 4, !tbaa !179
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 11
  %8 = load <2 x i32>, ptr %6, align 4, !tbaa !65
  store <2 x i32> %8, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 19
  store i32 %10, ptr %11, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopySliceInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 73
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 9
  store i32 %5, ptr %6, align 4, !tbaa !287
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !289
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 36
  %11 = load i32, ptr %10, align 8, !tbaa !157
  store i32 %11, ptr %1, align 4, !tbaa !290
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 37
  %15 = load i8, ptr %14, align 4, !tbaa !291
  %16 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 6
  store i8 %15, ptr %16, align 4, !tbaa !292
  br label %17

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !177
  %20 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !293
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !169
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 7
  store i8 %23, ptr %24, align 1, !tbaa !294
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !295
  %29 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 8
  store i32 %28, ptr %29, align 4, !tbaa !296
  br label %30

30:                                               ; preds = %26, %17
  %31 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !163
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %32, i64 0, i32 19
  %34 = load i32, ptr %33, align 4, !tbaa !297
  switch i32 %34, label %46 [
    i32 0, label %35
    i32 1, label %39
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 14
  %37 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 3
  %38 = load <2 x i32>, ptr %36, align 8, !tbaa !65
  store <2 x i32> %38, ptr %37, align 4, !tbaa !65
  br label %46

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 5
  store i32 %41, ptr %42, align 4, !tbaa !65
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 16, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !65
  %45 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 5, i64 1
  store i32 %44, ptr %45, align 4, !tbaa !65
  br label %46

46:                                               ; preds = %30, %35, %39
  %47 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %48 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 10
  %49 = load <2 x i32>, ptr %47, align 8, !tbaa !65
  store <2 x i32> %49, ptr %48, align 4, !tbaa !65
  %50 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %51 = load i32, ptr %50, align 8, !tbaa !194
  %52 = getelementptr inbounds %struct.old_slice_par, ptr %1, i64 0, i32 12
  store i32 %51, ptr %52, align 4, !tbaa !298
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_picture_decoding(ptr noundef %0) unnamed_addr #3 !PGOFuncName !299 {
  %2 = alloca { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32 }, align 8
  %3 = alloca [48 x i8], align 8
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !132
  %9 = icmp sgt i32 %8, 49
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 200) #29
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 179
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = load i32, ptr %13, align 8, !tbaa !137
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %13, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !138
  %19 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 73
  %20 = load i32, ptr %19, align 4, !tbaa !140
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2160, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %2, ptr noundef nonnull align 8 dereferenceable(2160) %24, i64 2160, i1 false)
  %25 = getelementptr inbounds i8, ptr %24, i64 2160
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %24, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %27, i64 48, i1 false)
  store ptr null, ptr %25, align 8, !tbaa !300
  tail call void @MakePPSavailable(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %13) #29
  %28 = load ptr, ptr %12, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %28, ptr noundef nonnull align 8 dereferenceable(2160) %2, i64 2160, i1 false)
  %29 = getelementptr inbounds i8, ptr %28, i64 2160
  store ptr %26, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %28, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(i64 2160, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  br label %31

31:                                               ; preds = %22, %16, %11
  tail call void @UseParameterSet(ptr noundef %6) #29
  %32 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !169
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  store i32 0, ptr %36, align 8, !tbaa !199
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %39 = load i32, ptr %38, align 4, !tbaa !204
  %40 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 36
  %41 = load i32, ptr %40, align 8, !tbaa !157
  %42 = add i32 %41, 1
  %43 = udiv i32 %39, %42
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 56
  store i32 %43, ptr %44, align 8, !tbaa !301
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %46 = load i32, ptr %45, align 4, !tbaa !205
  %47 = mul i32 %46, %43
  %48 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  store i32 %47, ptr %48, align 4, !tbaa !197
  %49 = mul i32 %46, %39
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  store i32 %49, ptr %50, align 8, !tbaa !156
  %51 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 38
  %52 = load i32, ptr %51, align 8, !tbaa !56
  %53 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 33
  store i32 %52, ptr %53, align 4, !tbaa !278
  %54 = tail call i32 @fmo_init(ptr noundef nonnull %0, ptr noundef nonnull %6) #29
  %55 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %56 = load ptr, ptr %55, align 8, !tbaa !142
  %57 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 66
  %58 = load i32, ptr %57, align 8, !tbaa !267
  tail call void @update_ref_list(ptr noundef %56, i32 noundef %58) #29
  %59 = load ptr, ptr %55, align 8, !tbaa !142
  %60 = load i32, ptr %57, align 8, !tbaa !267
  tail call void @update_ltref_list(ptr noundef %59, i32 noundef %60) #29
  tail call void @update_pic_num(ptr noundef nonnull %6) #29
  %61 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 25
  %62 = load i32, ptr %61, align 8, !tbaa !77
  tail call void @init_Deblock(ptr noundef nonnull %0, i32 noundef %62) #29
  %63 = load i32, ptr %7, align 8, !tbaa !132
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %37
  %66 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 170
  store i32 1, ptr %66, align 8, !tbaa !84
  br label %127

67:                                               ; preds = %37
  %68 = load ptr, ptr %4, align 8, !tbaa !131
  %69 = zext nneg i32 %63 to i64
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ 0, %67 ], [ %79, %70 ]
  %72 = phi i32 [ 1, %67 ], [ %78, %70 ]
  %73 = getelementptr inbounds ptr, ptr %68, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = getelementptr inbounds %struct.slice, ptr %74, i64 0, i32 70
  %76 = load i16, ptr %75, align 4, !tbaa !302
  %77 = icmp eq i16 %76, 0
  %78 = select i1 %77, i32 0, i32 %72
  %79 = add nuw nsw i64 %71, 1
  %80 = icmp eq i64 %79, %69
  br i1 %80, label %81, label %70, !llvm.loop !303

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 170
  store i32 %78, ptr %82, align 8, !tbaa !84
  %83 = icmp eq i32 %78, 1
  %84 = and i1 %83, %64
  br i1 %84, label %85, label %127

85:                                               ; preds = %81
  %86 = load ptr, ptr %4, align 8, !tbaa !131
  %87 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %88 = load i32, ptr %87, align 8, !tbaa !88
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %91 = zext nneg i32 %63 to i64
  br label %92

92:                                               ; preds = %85, %124
  %93 = phi i64 [ 0, %85 ], [ %125, %124 ]
  %94 = getelementptr inbounds ptr, ptr %86, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 22
  %97 = load i16, ptr %96, align 4, !tbaa !153
  br i1 %89, label %103, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 46
  %100 = load i32, ptr %99, align 8, !tbaa !89
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %101
  br label %103

103:                                              ; preds = %92, %98
  %104 = phi ptr [ %102, %98 ], [ %90, %92 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 39
  %107 = load i32, ptr %106, align 4, !tbaa !91
  %108 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 25
  %109 = load i32, ptr %108, align 8, !tbaa !77
  %110 = add nsw i32 %109, 1
  %111 = mul nsw i32 %110, %107
  %112 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 40
  %113 = load i32, ptr %112, align 8, !tbaa !92
  %114 = mul nsw i32 %113, %110
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %103
  %117 = sext i32 %111 to i64
  %118 = sext i32 %114 to i64
  br label %119

119:                                              ; preds = %116, %119
  %120 = phi i64 [ %117, %116 ], [ %122, %119 ]
  %121 = getelementptr inbounds %struct.macroblock, ptr %105, i64 %120, i32 21
  store i16 %97, ptr %121, align 4, !tbaa !304
  %122 = add nsw i64 %120, 1
  %123 = icmp eq i64 %122, %118
  br i1 %123, label %124, label %119, !llvm.loop !305

124:                                              ; preds = %119, %103
  %125 = add nuw nsw i64 %93, 1
  %126 = icmp eq i64 %125, %91
  br i1 %126, label %127, label %92, !llvm.loop !306

127:                                              ; preds = %124, %65, %81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @exit_picture(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = alloca [10 x i8], align 1
  %4 = load ptr, ptr %0, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #30
  %7 = load ptr, ptr %1, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %252, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 4, !tbaa !134
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %13 = load i32, ptr %12, align 4, !tbaa !197
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %17 = load i32, ptr %16, align 8, !tbaa !308
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %252

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %21 = load i32, ptr %20, align 8, !tbaa !88
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %252, label %23

23:                                               ; preds = %19, %9
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 170
  %25 = load i32, ptr %24, align 8, !tbaa !84
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 176
  %29 = load i32, ptr %28, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !87
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %37 = load i32, ptr %36, align 8, !tbaa !88
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !131
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.slice, ptr %42, i64 0, i32 46
  %44 = load i32, ptr %43, align 8, !tbaa !89
  br label %45

45:                                               ; preds = %39, %45
  %46 = phi i32 [ 0, %39 ], [ %51, %45 ]
  %47 = load ptr, ptr %40, align 8, !tbaa !131
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct.slice, ptr %48, i64 0, i32 46
  store i32 %46, ptr %49, align 8, !tbaa !89
  tail call void @change_plane_JV(ptr noundef nonnull %0, i32 noundef %46, ptr noundef null) #29
  %50 = load ptr, ptr %1, align 8, !tbaa !44
  tail call void @DeblockPicture(ptr noundef nonnull %0, ptr noundef %50) #29
  %51 = add nuw nsw i32 %46, 1
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %45, !llvm.loop !309

53:                                               ; preds = %45
  %54 = load ptr, ptr %40, align 8, !tbaa !131
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.slice, ptr %55, i64 0, i32 46
  store i32 %44, ptr %56, align 8, !tbaa !89
  tail call void @make_frame_picture_JV(ptr noundef nonnull %0) #29
  br label %63

57:                                               ; preds = %35
  tail call void @DeblockPicture(ptr noundef nonnull %0, ptr noundef nonnull %7) #29
  br label %63

58:                                               ; preds = %27, %23
  %59 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %60 = load i32, ptr %59, align 8, !tbaa !88
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @make_frame_picture_JV(ptr noundef nonnull %0) #29
  br label %63

63:                                               ; preds = %58, %62, %53, %57
  %64 = load ptr, ptr %1, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.storable_picture, ptr %64, i64 0, i32 25
  %66 = load i32, ptr %65, align 4, !tbaa !217
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call fastcc void @MbAffPostProc(ptr noundef nonnull %0) #28
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 33
  %71 = load i32, ptr %70, align 4, !tbaa !278
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @field_postprocessing(ptr noundef nonnull %0) #28
  br label %74

74:                                               ; preds = %69, %73
  %75 = load ptr, ptr %1, align 8, !tbaa !44
  %76 = getelementptr inbounds %struct.storable_picture, ptr %75, i64 0, i32 11
  %77 = load i32, ptr %76, align 4, !tbaa !87
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.storable_picture, ptr %75, i64 0, i32 65
  %81 = load i32, ptr %80, align 4, !tbaa !310
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %74
  tail call void @pad_dec_picture(ptr noundef nonnull %0, ptr noundef nonnull %75) #28
  %84 = load ptr, ptr %1, align 8, !tbaa !44
  %85 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 4, !tbaa !87
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %86, %83 ], [ 0, %79 ]
  %89 = phi ptr [ %84, %83 ], [ %75, %79 ]
  %90 = load i32, ptr %89, align 8, !tbaa !311
  %91 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 43
  %92 = load i32, ptr %91, align 8, !tbaa !211
  %93 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 4
  %94 = load i32, ptr %93, align 8, !tbaa !185
  %95 = freeze i32 %88
  %96 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 55
  %97 = load i32, ptr %96, align 8, !tbaa !187
  %98 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 7
  %99 = load i32, ptr %98, align 4, !tbaa !221
  %100 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 44
  %101 = load i32, ptr %100, align 4, !tbaa !212
  %102 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 48
  %103 = load i32, ptr %102, align 4, !tbaa !225
  %104 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  %105 = load ptr, ptr %104, align 8, !tbaa !142
  tail call void @store_picture_in_dpb(ptr noundef %105, ptr noundef nonnull %89) #29
  store ptr null, ptr %1, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 61
  %107 = load i32, ptr %106, align 4, !tbaa !312
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %87
  %110 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 40
  store i32 0, ptr %110, align 8, !tbaa !170
  br label %111

111:                                              ; preds = %109, %87
  %112 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !281
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %187

115:                                              ; preds = %111
  %116 = icmp eq i32 %90, 0
  %117 = icmp ult i32 %90, 2
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = icmp eq i32 %92, 2
  %120 = icmp ne i32 %101, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 5391433, ptr %123, align 1
  br label %139

124:                                              ; preds = %118
  br i1 %119, label %125, label %127

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2115872, ptr %126, align 1
  br label %139

127:                                              ; preds = %124
  switch i32 %92, label %134 [
    i32 0, label %128
    i32 3, label %130
    i32 4, label %132
  ]

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2117664, ptr %129, align 1
  br label %139

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2117715, ptr %131, align 1
  br label %139

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  store i32 2115923, ptr %133, align 1
  br label %139

134:                                              ; preds = %127
  %135 = icmp eq i32 %95, 0
  %136 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  br i1 %135, label %138, label %137

137:                                              ; preds = %134
  store i32 2114080, ptr %136, align 1
  br label %139

138:                                              ; preds = %134
  store i32 2122272, ptr %136, align 1
  br label %139

139:                                              ; preds = %125, %130, %137, %138, %132, %128, %122
  br i1 %116, label %140, label %252

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %142 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %141) #34
  %143 = sub i64 8, %142
  %144 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %141, ptr noundef nonnull @.str.34, i64 noundef %143) #29
  br label %190

145:                                              ; preds = %115
  %146 = icmp eq i32 %90, 2
  br i1 %146, label %147, label %187

147:                                              ; preds = %145
  %148 = icmp eq i32 %92, 2
  %149 = icmp ne i32 %101, 0
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %153 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %152) #34
  %154 = sub i64 8, %153
  %155 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %152, ptr noundef nonnull @.str.35, i64 noundef %154) #29
  br label %190

156:                                              ; preds = %147
  br i1 %148, label %157, label %162

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %159 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %158) #34
  %160 = sub i64 8, %159
  %161 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %158, ptr noundef nonnull @.str.36, i64 noundef %160) #29
  br label %190

162:                                              ; preds = %156
  switch i32 %92, label %178 [
    i32 0, label %163
    i32 3, label %168
    i32 4, label %173
  ]

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %165 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %164) #34
  %166 = sub i64 8, %165
  %167 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull @.str.37, i64 noundef %166) #29
  br label %190

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %170 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %169) #34
  %171 = sub i64 8, %170
  %172 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %169, ptr noundef nonnull @.str.38, i64 noundef %171) #29
  br label %190

173:                                              ; preds = %162
  %174 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %175 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %174) #34
  %176 = sub i64 8, %175
  %177 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %174, ptr noundef nonnull @.str.39, i64 noundef %176) #29
  br label %190

178:                                              ; preds = %162
  %179 = icmp eq i32 %95, 0
  %180 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %181 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %180) #34
  %182 = sub i64 8, %181
  br i1 %179, label %185, label %183

183:                                              ; preds = %178
  %184 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull @.str.40, i64 noundef %182) #29
  br label %190

185:                                              ; preds = %178
  %186 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull @.str.41, i64 noundef %182) #29
  br label %190

187:                                              ; preds = %145, %111
  %188 = and i32 %90, -3
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %252

190:                                              ; preds = %157, %168, %183, %185, %173, %163, %151, %140, %187
  %191 = sext i32 %103 to i64
  %192 = getelementptr inbounds [4 x [6 x i8]], ptr @__const.exit_picture.yuv_types, i64 0, i64 %191
  %193 = call ptr @strcpy(ptr nonnull dereferenceable(1) %3, ptr nonnull dereferenceable(1) %192)
  %194 = load i32, ptr %112, align 8, !tbaa !281
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %222

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 123
  %198 = load i32, ptr %197, align 4, !tbaa !313
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %216, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %5, align 8, !tbaa !307
  %202 = load ptr, ptr @stdout, align 8, !tbaa !44
  %203 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  %204 = load i32, ptr %203, align 4, !tbaa !314
  %205 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %206 = getelementptr inbounds %struct.snr_par, ptr %201, i64 0, i32 1
  %207 = load float, ptr %206, align 4, !tbaa !315
  %208 = fpext float %207 to double
  %209 = getelementptr inbounds %struct.snr_par, ptr %201, i64 0, i32 1, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !315
  %211 = fpext float %210 to double
  %212 = getelementptr inbounds %struct.snr_par, ptr %201, i64 0, i32 1, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !315
  %214 = fpext float %213 to double
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.43, i32 noundef %204, ptr noundef nonnull %205, i32 noundef %94, i32 noundef %99, i32 noundef %97, double noundef %208, double noundef %211, double noundef %214, ptr noundef nonnull %3, i32 noundef 0) #28
  br label %226

216:                                              ; preds = %196
  %217 = load ptr, ptr @stdout, align 8, !tbaa !44
  %218 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  %219 = load i32, ptr %218, align 4, !tbaa !314
  %220 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 154
  %221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.44, i32 noundef %219, ptr noundef nonnull %220, i32 noundef %94, i32 noundef %99, i32 noundef %97, ptr noundef nonnull %3, i32 noundef 0) #28
  br label %226

222:                                              ; preds = %190
  %223 = load ptr, ptr @stdout, align 8, !tbaa !44
  %224 = load i32, ptr %6, align 4, !tbaa !317
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.45, i32 noundef %224) #28
  br label %226

226:                                              ; preds = %200, %216, %222
  %227 = load ptr, ptr @stdout, align 8, !tbaa !44
  %228 = call i32 @fflush(ptr noundef %227) #28
  %229 = icmp eq i32 %95, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  switch i32 %92, label %240 [
    i32 4, label %231
    i32 2, label %231
    i32 0, label %231
  ]

231:                                              ; preds = %230, %230, %230, %226
  %232 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !131
  %234 = load ptr, ptr %233, align 8, !tbaa !44
  %235 = getelementptr inbounds %struct.slice, ptr %234, i64 0, i32 66
  %236 = load i32, ptr %235, align 8, !tbaa !267
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  br label %242

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 126
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi ptr [ %239, %238 ], [ %241, %240 ]
  %244 = load i32, ptr %243, align 8, !tbaa !65
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %243, align 8, !tbaa !65
  br label %246

246:                                              ; preds = %242, %231
  %247 = load i32, ptr %6, align 4, !tbaa !317
  %248 = add nsw i32 %247, 1
  store i32 %248, ptr %6, align 4, !tbaa !317
  %249 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 128
  %250 = load i32, ptr %249, align 8, !tbaa !319
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %249, align 8, !tbaa !319
  br label %252

252:                                              ; preds = %139, %246, %187, %2, %15, %19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buffer2img(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp sgt i32 %4, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #29
  br label %8

8:                                                ; preds = %7, %5
  %9 = tail call i32 @testEndian() #29
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
  br i1 %19, label %20, label %147

20:                                               ; preds = %18
  %21 = icmp sgt i32 %2, 0
  %22 = zext nneg i32 %3 to i64
  %23 = zext nneg i32 %2 to i64
  br label %50

24:                                               ; preds = %11
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %147

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
  %42 = load i8, ptr %41, align 1, !tbaa !48
  %43 = zext i8 %42 to i16
  %44 = getelementptr inbounds i16, ptr %34, i64 %40
  store i16 %43, ptr %44, align 2, !tbaa !100
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %29
  br i1 %46, label %47, label %39, !llvm.loop !320

47:                                               ; preds = %39, %30
  %48 = add nuw nsw i64 %31, 1
  %49 = icmp eq i64 %48, %28
  br i1 %49, label %147, label %30, !llvm.loop !321

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
  store i16 %65, ptr %66, align 2, !tbaa !100
  %67 = add nuw nsw i64 %58, 1
  %68 = icmp eq i64 %67, %23
  br i1 %68, label %69, label %57, !llvm.loop !322

69:                                               ; preds = %57, %50
  %70 = add nuw nsw i64 %51, 1
  %71 = icmp eq i64 %70, %22
  br i1 %71, label %147, label %50, !llvm.loop !323

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
  store i16 %88, ptr %89, align 2, !tbaa !100
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, %17
  br i1 %91, label %92, label %79, !llvm.loop !324

92:                                               ; preds = %79, %72
  %93 = add nuw nsw i64 %73, 1
  %94 = icmp eq i64 %93, %16
  br i1 %94, label %95, label %72, !llvm.loop !325

95:                                               ; preds = %92, %12, %11
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #29
  br label %147

96:                                               ; preds = %8
  %97 = icmp eq i32 %4, 1
  %98 = icmp sgt i32 %3, 0
  br i1 %97, label %106, label %99

99:                                               ; preds = %96
  br i1 %98, label %100, label %147

100:                                              ; preds = %99
  %101 = icmp sgt i32 %2, 0
  %102 = sext i32 %4 to i64
  %103 = sext i32 %2 to i64
  %104 = zext nneg i32 %3 to i64
  %105 = zext nneg i32 %2 to i64
  br label %130

106:                                              ; preds = %96
  br i1 %98, label %107, label %147

107:                                              ; preds = %106
  %108 = icmp sgt i32 %2, 0
  %109 = zext nneg i32 %3 to i64
  %110 = zext nneg i32 %2 to i64
  br label %111

111:                                              ; preds = %107, %126
  %112 = phi i64 [ 0, %107 ], [ %128, %126 ]
  %113 = phi ptr [ %1, %107 ], [ %127, %126 ]
  br i1 %108, label %114, label %126

114:                                              ; preds = %111
  %115 = getelementptr inbounds ptr, ptr %0, i64 %112
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  br label %117

117:                                              ; preds = %114, %117
  %118 = phi i64 [ 0, %114 ], [ %124, %117 ]
  %119 = phi ptr [ %113, %114 ], [ %120, %117 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load i8, ptr %119, align 1, !tbaa !48
  %122 = zext i8 %121 to i16
  %123 = getelementptr inbounds i16, ptr %116, i64 %118
  store i16 %122, ptr %123, align 2, !tbaa !100
  %124 = add nuw nsw i64 %118, 1
  %125 = icmp eq i64 %124, %110
  br i1 %125, label %126, label %117, !llvm.loop !326

126:                                              ; preds = %117, %111
  %127 = phi ptr [ %113, %111 ], [ %120, %117 ]
  %128 = add nuw nsw i64 %112, 1
  %129 = icmp eq i64 %128, %109
  br i1 %129, label %147, label %111, !llvm.loop !327

130:                                              ; preds = %100, %144
  %131 = phi i64 [ 0, %100 ], [ %145, %144 ]
  %132 = mul nsw i64 %131, %103
  br i1 %101, label %133, label %144

133:                                              ; preds = %130
  %134 = getelementptr inbounds ptr, ptr %0, i64 %131
  br label %135

135:                                              ; preds = %133, %135
  %136 = phi i64 [ 0, %133 ], [ %142, %135 ]
  %137 = load ptr, ptr %134, align 8, !tbaa !44
  %138 = getelementptr inbounds i16, ptr %137, i64 %136
  store i16 0, ptr %138, align 2, !tbaa !100
  %139 = add nuw nsw i64 %136, %132
  %140 = mul nsw i64 %139, %102
  %141 = getelementptr inbounds i8, ptr %1, i64 %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %138, ptr align 1 %141, i64 %102, i1 false)
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i64 %142, %105
  br i1 %143, label %144, label %135, !llvm.loop !328

144:                                              ; preds = %135, %130
  %145 = add nuw nsw i64 %131, 1
  %146 = icmp eq i64 %145, %104
  br i1 %146, label %147, label %130, !llvm.loop !329

147:                                              ; preds = %69, %47, %144, %126, %18, %24, %99, %106, %95
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @testEndian() local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @compute_SSE(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #14 {
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
  %29 = load i16, ptr %26, align 2, !tbaa !100
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds i16, ptr %25, i64 1
  %32 = load i16, ptr %25, align 2, !tbaa !100
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = tail call fastcc i32 @iabs2(i32 noundef %34) #28
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %24, %36
  %38 = add nuw nsw i32 %27, 1
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %40, label %23, !llvm.loop !330

40:                                               ; preds = %23, %13
  %41 = phi i64 [ %15, %13 ], [ %37, %23 ]
  %42 = add nuw nsw i64 %14, 1
  %43 = icmp eq i64 %42, %12
  br i1 %43, label %44, label %13, !llvm.loop !331

44:                                               ; preds = %40, %6
  %45 = phi i64 [ 0, %6 ], [ %41, %40 ]
  ret i64 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs2(i32 noundef %0) unnamed_addr #7 !PGOFuncName !332 {
  %2 = mul nsw i32 %0, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculate_frame_no(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !104
  %6 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !333
  %8 = sdiv i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 90
  %12 = load i32, ptr %11, align 4, !tbaa !334
  br label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %15 = load i32, ptr %14, align 8, !tbaa !199
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 93
  %17 = load i32, ptr %16, align 8, !tbaa !335
  %18 = mul nsw i32 %17, %15
  %19 = sdiv i32 %18, %7
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 90
  store i32 %19, ptr %20, align 4, !tbaa !334
  br label %21

21:                                               ; preds = %10, %13
  %22 = phi i32 [ %12, %10 ], [ %19, %13 ]
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 91
  %24 = load i32, ptr %23, align 8, !tbaa !336
  %25 = add nsw i32 %22, %8
  %26 = tail call fastcc i32 @imax(i32 noundef %24, i32 noundef %25) #28
  store i32 %26, ptr %23, align 8, !tbaa !336
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  store i32 %25, ptr %27, align 4, !tbaa !314
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  %9 = alloca [4 x [6 x i8]], align 16
  %10 = load ptr, ptr %0, align 8, !tbaa !130
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 63
  %14 = load i32, ptr %13, align 4, !tbaa !337
  %15 = ashr i32 %14, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #30
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !163
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %17, i64 0, i32 39, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !338
  %20 = icmp eq i32 %19, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 16 dereferenceable(24) @__const.exit_picture.yuv_types, i64 24, i1 false)
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  %22 = load i32, ptr %21, align 8, !tbaa !65
  %23 = tail call fastcc i32 @iabs2(i32 noundef %22) #28
  store i32 %23, ptr %6, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = tail call fastcc i32 @iabs2(i32 noundef %25) #28
  %27 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !65
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 2
  %29 = load i32, ptr %28, align 8, !tbaa !65
  %30 = tail call fastcc i32 @iabs2(i32 noundef %29) #28
  %31 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  store i32 %30, ptr %31, align 4, !tbaa !65
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %33 = load ptr, ptr %32, align 8, !tbaa !339
  store ptr %33, ptr %7, align 16, !tbaa !44
  %34 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %35 = load i32, ptr %34, align 4, !tbaa !225
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 131
  %39 = load ptr, ptr %38, align 8, !tbaa !340
  %40 = load <2 x ptr>, ptr %39, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !341
  %43 = load <2 x ptr>, ptr %42, align 8, !tbaa !44
  br label %44

44:                                               ; preds = %3, %37
  %45 = phi <2 x ptr> [ %40, %37 ], [ zeroinitializer, %3 ]
  %46 = phi <2 x ptr> [ %43, %37 ], [ zeroinitializer, %3 ]
  %47 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %48 = load ptr, ptr %47, align 8, !tbaa !342
  %49 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  store <2 x ptr> %45, ptr %49, align 8
  store ptr %48, ptr %8, align 16
  %50 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  store <2 x ptr> %46, ptr %50, align 8
  %51 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !65
  store i32 %52, ptr %4, align 4, !tbaa !65
  %53 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !65
  store i32 %54, ptr %5, align 4, !tbaa !65
  %55 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 3, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !65
  %57 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 %56, ptr %57, align 4, !tbaa !65
  %58 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 %56, ptr %58, align 4, !tbaa !65
  %59 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 9, i32 4, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !65
  %61 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 2
  store i32 %60, ptr %61, align 4, !tbaa !65
  %62 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  store i32 %60, ptr %62, align 4, !tbaa !65
  %63 = sext i32 %52 to i64
  %64 = sext i32 %54 to i64
  %65 = mul nsw i64 %64, %63
  %66 = sext i32 %56 to i64
  %67 = sext i32 %60 to i64
  %68 = shl nsw i64 %66, 1
  %69 = mul i64 %68, %67
  %70 = add nsw i64 %69, %65
  %71 = sext i32 %15 to i64
  %72 = mul nsw i64 %70, %71
  %73 = mul i32 %52, %15
  %74 = mul i32 %73, %54
  %75 = sext i32 %74 to i64
  %76 = tail call noalias ptr @malloc(i64 noundef %75) #33
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %44
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #29
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i32, ptr %2, align 4, !tbaa !65
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 127
  %82 = load i32, ptr %81, align 4, !tbaa !314
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %72, %83
  %85 = tail call i64 @lseek(i32 noundef %80, i64 noundef %84, i32 noundef 0) #29
  %86 = icmp eq i64 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load ptr, ptr @stderr, align 8, !tbaa !44
  %89 = load i32, ptr %81, align 4, !tbaa !314
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.3, i32 noundef %89) #35
  tail call void @free(ptr noundef %76) #29
  br label %181

91:                                               ; preds = %79
  br i1 %20, label %92, label %96

92:                                               ; preds = %91
  %93 = load i32, ptr %2, align 4, !tbaa !65
  %94 = sdiv i64 %72, 3
  %95 = tail call i64 @lseek(i32 noundef %93, i64 noundef %94, i32 noundef 1) #29
  br label %96

96:                                               ; preds = %92, %91
  %97 = sub nsw i64 0, %72
  br label %98

98:                                               ; preds = %96, %142
  %99 = phi i64 [ 0, %96 ], [ %144, %142 ]
  %100 = icmp eq i64 %99, 2
  %101 = and i1 %20, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, ptr %2, align 4, !tbaa !65
  %104 = tail call i64 @lseek(i32 noundef %103, i64 noundef %97, i32 noundef 1) #29
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, ptr %2, align 4, !tbaa !65
  %107 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %99
  %108 = load i32, ptr %107, align 4, !tbaa !65
  %109 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %99
  %110 = load i32, ptr %109, align 4, !tbaa !65
  %111 = mul nsw i32 %110, %108
  %112 = mul nsw i32 %111, %15
  %113 = sext i32 %112 to i64
  %114 = tail call i64 @read(i32 noundef %106, ptr noundef %76, i64 noundef %113) #29
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %105
  %118 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  %119 = load i32, ptr %2, align 4, !tbaa !65
  %120 = tail call i32 @close(i32 noundef %119) #29
  store i32 -1, ptr %2, align 4, !tbaa !65
  br label %149

121:                                              ; preds = %105
  %122 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %99
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  tail call void @buffer2img(ptr noundef %123, ptr noundef %76, i32 noundef %108, i32 noundef %110, i32 noundef %15) #28
  %124 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %99
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = tail call i64 @compute_SSE(ptr noundef %123, ptr noundef %125, i32 noundef 0, i32 noundef 0, i32 noundef %110, i32 noundef %108) #28
  %127 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %99
  %128 = load i32, ptr %127, align 4, !tbaa !65
  %129 = sitofp i64 %126 to float
  %130 = tail call fastcc float @psnr(i32 noundef %128, i32 noundef %111, float noundef %129) #28
  %131 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1, i64 %99
  store float %130, ptr %131, align 4, !tbaa !315
  %132 = load i32, ptr %12, align 4, !tbaa !317
  %133 = icmp eq i32 %132, 0
  %134 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3, i64 %99
  br i1 %133, label %142, label %135

135:                                              ; preds = %121
  %136 = load float, ptr %134, align 4, !tbaa !315
  %137 = sitofp i32 %132 to float
  %138 = tail call float @llvm.fmuladd.f32(float %136, float %137, float %130)
  %139 = add nsw i32 %132, 1
  %140 = sitofp i32 %139 to float
  %141 = fdiv float %138, %140
  br label %142

142:                                              ; preds = %121, %135
  %143 = phi float [ %141, %135 ], [ %130, %121 ]
  store float %143, ptr %134, align 4, !tbaa !315
  %144 = add nuw nsw i64 %99, 1
  %145 = load i32, ptr %34, align 4, !tbaa !225
  %146 = icmp ne i32 %145, 0
  %147 = icmp ult i64 %99, 2
  %148 = and i1 %146, %147
  br i1 %148, label %98, label %149, !llvm.loop !343

149:                                              ; preds = %142, %117
  br i1 %20, label %150, label %155

150:                                              ; preds = %149
  %151 = load i32, ptr %2, align 4, !tbaa !65
  %152 = shl nsw i64 %72, 1
  %153 = sdiv i64 %152, 3
  %154 = tail call i64 @lseek(i32 noundef %151, i64 noundef %153, i32 noundef 1) #29
  br label %155

155:                                              ; preds = %150, %149
  tail call void @free(ptr noundef %76) #29
  %156 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 59
  %157 = load i32, ptr %156, align 8, !tbaa !344
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %181, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr @stdout, align 8, !tbaa !44
  %161 = load i32, ptr %81, align 4, !tbaa !314
  %162 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 4
  %163 = load i32, ptr %162, align 8, !tbaa !185
  %164 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  %165 = load i32, ptr %164, align 4, !tbaa !221
  %166 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 55
  %167 = load i32, ptr %166, align 8, !tbaa !187
  %168 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1
  %169 = load float, ptr %168, align 4, !tbaa !315
  %170 = fpext float %169 to double
  %171 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !315
  %173 = fpext float %172 to double
  %174 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 1, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !315
  %176 = fpext float %175 to double
  %177 = load i32, ptr %34, align 4, !tbaa !225
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x [6 x i8]], ptr %9, i64 0, i64 %178
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.5, i32 noundef %161, i32 noundef %163, i32 noundef %165, i32 noundef %167, double noundef %170, double noundef %173, double noundef %176, ptr noundef nonnull %179, i32 noundef 0) #28
  br label %181

181:                                              ; preds = %155, %159, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @psnr(i32 noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #19 !PGOFuncName !345 {
  %4 = fcmp oeq float %2, 0.000000e+00
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = fpext float %2 to double
  %7 = sitofp i32 %0 to double
  %8 = sitofp i32 %1 to double
  %9 = fdiv double %8, %6
  %10 = fmul double %9, %7
  %11 = tail call double @log10(double noundef %10) #29
  %12 = fmul double %11, 1.000000e+01
  %13 = fptrunc double %12 to float
  br label %14

14:                                               ; preds = %3, %5
  %15 = phi float [ %13, %5 ], [ 0.000000e+00, %3 ]
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #20

; Function Attrs: optsize
declare void @reorder_ref_pic_list(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @read_next_nalu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @fast_memcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !346 {
  %4 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret void
}

; Function Attrs: optsize
declare i32 @RBSPtoSODB(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @u_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @nal_unit_header_svc_extension(...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @nal_unit_header_mvc_extension(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @FirstPartOfSliceHeader(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RestOfSliceHeader(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @GetBaseViewId(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @assign_quant_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @is_new_picture(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #21 {
  %4 = load ptr, ptr %1, align 8, !tbaa !73
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !287
  %8 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 73
  %9 = load i32, ptr %8, align 4, !tbaa !140
  %10 = icmp ne i32 %7, %9
  %11 = or i1 %5, %10
  %12 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !289
  %14 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %15 = load i32, ptr %14, align 4, !tbaa !64
  %16 = icmp ne i32 %13, %15
  %17 = or i1 %11, %16
  %18 = load i32, ptr %2, align 4, !tbaa !290
  %19 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %20 = load i32, ptr %19, align 8, !tbaa !157
  %21 = icmp ne i32 %18, %20
  %22 = or i1 %17, %21
  %23 = icmp eq i32 %20, 0
  %24 = icmp eq i32 %18, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 6
  %28 = load i8, ptr %27, align 4, !tbaa !292
  %29 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 37
  %30 = load i8, ptr %29, align 4, !tbaa !291
  %31 = icmp ne i8 %28, %30
  %32 = or i1 %22, %31
  br label %33

33:                                               ; preds = %26, %3
  %34 = phi i1 [ %32, %26 ], [ %22, %3 ]
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !293
  %38 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !177
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
  %50 = load i8, ptr %49, align 1, !tbaa !294
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !169
  %54 = icmp ne i32 %53, %51
  %55 = zext i1 %54 to i32
  %56 = or i32 %48, %55
  %57 = icmp eq i32 %53, 0
  %58 = icmp eq i8 %50, 0
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !296
  %63 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 7
  %64 = load i32, ptr %63, align 4, !tbaa !295
  %65 = icmp ne i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = or i32 %56, %66
  br label %68

68:                                               ; preds = %60, %46
  %69 = phi i32 [ %67, %60 ], [ %56, %46 ]
  %70 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !163
  %72 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %71, i64 0, i32 19
  %73 = load i32, ptr %72, align 4, !tbaa !297
  switch i32 %73, label %121 [
    i32 0, label %74
    i32 1, label %91
  ]

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !347
  %77 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 14
  %78 = load i32, ptr %77, align 8, !tbaa !348
  %79 = icmp ne i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = or i32 %69, %80
  %82 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !190
  %84 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !349
  %86 = icmp eq i32 %85, 1
  %87 = and i1 %23, %86
  br i1 %87, label %88, label %121

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 4
  %90 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 15
  br label %112

91:                                               ; preds = %68
  %92 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %71, i64 0, i32 21
  %93 = load i32, ptr %92, align 4, !tbaa !350
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !65
  %98 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %99 = load i32, ptr %98, align 8, !tbaa !65
  %100 = icmp ne i32 %97, %99
  %101 = zext i1 %100 to i32
  %102 = or i32 %69, %101
  %103 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !190
  %105 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %104, i64 0, i32 11
  %106 = load i32, ptr %105, align 8, !tbaa !349
  %107 = icmp eq i32 %106, 1
  %108 = and i1 %23, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 5, i64 1
  %111 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  br label %112

112:                                              ; preds = %109, %88
  %113 = phi ptr [ %90, %88 ], [ %111, %109 ]
  %114 = phi ptr [ %89, %88 ], [ %110, %109 ]
  %115 = phi i32 [ %81, %88 ], [ %102, %109 ]
  %116 = load i32, ptr %114, align 4, !tbaa !65
  %117 = load i32, ptr %113, align 4, !tbaa !65
  %118 = icmp ne i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = or i32 %115, %119
  br label %121

121:                                              ; preds = %112, %95, %68, %74, %91
  %122 = phi i32 [ %69, %91 ], [ %102, %95 ], [ %81, %74 ], [ %69, %68 ], [ %120, %112 ]
  %123 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 66
  %124 = load i32, ptr %123, align 8, !tbaa !267
  %125 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 10
  %126 = load i32, ptr %125, align 4, !tbaa !351
  %127 = icmp ne i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = or i32 %122, %128
  %130 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 67
  %131 = load i32, ptr %130, align 4, !tbaa !269
  %132 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 11
  %133 = load i32, ptr %132, align 4, !tbaa !352
  %134 = icmp ne i32 %131, %133
  %135 = zext i1 %134 to i32
  %136 = or i32 %129, %135
  %137 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 68
  %138 = load i32, ptr %137, align 8, !tbaa !194
  %139 = getelementptr inbounds %struct.old_slice_par, ptr %2, i64 0, i32 12
  %140 = load i32, ptr %139, align 4, !tbaa !298
  %141 = icmp ne i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = or i32 %136, %142
  ret i32 %143
}

; Function Attrs: optsize
declare void @CheckZeroByteVCL(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @setup_slice_methods(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @arideco_start_decoding(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @fmo_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_pic_num(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ue_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @InterpretSEIMessage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ProcessPPS(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ProcessSPS(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @prefix_nal_unit_svc(...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ProcessSubsetSPS(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @pad_buf(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = sext i32 %4 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i16, ptr %0, i64 %8
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %6
  %12 = sub nsw i32 0, %4
  %13 = load i16, ptr %0, align 2, !tbaa !100
  %14 = sext i32 %12 to i64
  br label %74

15:                                               ; preds = %74
  br i1 %10, label %16, label %80

16:                                               ; preds = %15
  %17 = getelementptr i16, ptr %0, i64 -1
  %18 = sext i32 %1 to i64
  %19 = getelementptr i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !100
  %21 = getelementptr i16, ptr %0, i64 %18
  %22 = zext nneg i32 %4 to i64
  %23 = add nuw nsw i64 %22, 7
  %24 = and i64 %23, 4294967288
  %25 = add nsw i64 %22, -1
  %26 = insertelement <8 x i64> poison, i64 %25, i64 0
  %27 = shufflevector <8 x i64> %26, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %28

28:                                               ; preds = %70, %16
  %29 = phi i64 [ 0, %16 ], [ %71, %70 ]
  %30 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %16 ], [ %72, %70 ]
  %31 = icmp ule <8 x i64> %30, %27
  %32 = extractelement <8 x i1> %31, i64 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr i16, ptr %21, i64 %29
  store i16 %20, ptr %34, align 2, !tbaa !100
  br label %35

35:                                               ; preds = %33, %28
  %36 = extractelement <8 x i1> %31, i64 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = or disjoint i64 %29, 1
  %39 = getelementptr i16, ptr %21, i64 %38
  store i16 %20, ptr %39, align 2, !tbaa !100
  br label %40

40:                                               ; preds = %37, %35
  %41 = extractelement <8 x i1> %31, i64 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or disjoint i64 %29, 2
  %44 = getelementptr i16, ptr %21, i64 %43
  store i16 %20, ptr %44, align 2, !tbaa !100
  br label %45

45:                                               ; preds = %42, %40
  %46 = extractelement <8 x i1> %31, i64 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = or disjoint i64 %29, 3
  %49 = getelementptr i16, ptr %21, i64 %48
  store i16 %20, ptr %49, align 2, !tbaa !100
  br label %50

50:                                               ; preds = %47, %45
  %51 = extractelement <8 x i1> %31, i64 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %29, 4
  %54 = getelementptr i16, ptr %21, i64 %53
  store i16 %20, ptr %54, align 2, !tbaa !100
  br label %55

55:                                               ; preds = %52, %50
  %56 = extractelement <8 x i1> %31, i64 5
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %29, 5
  %59 = getelementptr i16, ptr %21, i64 %58
  store i16 %20, ptr %59, align 2, !tbaa !100
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <8 x i1> %31, i64 6
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %29, 6
  %64 = getelementptr i16, ptr %21, i64 %63
  store i16 %20, ptr %64, align 2, !tbaa !100
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <8 x i1> %31, i64 7
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %29, 7
  %69 = getelementptr i16, ptr %21, i64 %68
  store i16 %20, ptr %69, align 2, !tbaa !100
  br label %70

70:                                               ; preds = %67, %65
  %71 = add i64 %29, 8
  %72 = add <8 x i64> %30, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %73 = icmp eq i64 %71, %24
  br i1 %73, label %80, label %28, !llvm.loop !353

74:                                               ; preds = %11, %74
  %75 = phi i64 [ %14, %11 ], [ %77, %74 ]
  %76 = getelementptr inbounds i16, ptr %0, i64 %75
  store i16 %13, ptr %76, align 2, !tbaa !100
  %77 = add nsw i64 %75, 1
  %78 = and i64 %77, 4294967295
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %15, label %74, !llvm.loop !356

80:                                               ; preds = %70, %6, %15
  %81 = icmp sgt i32 %5, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = sub nsw i32 0, %5
  %84 = sext i32 %3 to i64
  %85 = shl nsw i64 %84, 1
  %86 = sext i32 %83 to i64
  br label %103

87:                                               ; preds = %103, %80
  %88 = icmp sgt i32 %2, 1
  br i1 %88, label %89, label %176

89:                                               ; preds = %87
  %90 = add nsw i32 %4, %1
  %91 = sext i32 %90 to i64
  %92 = icmp slt i32 %4, 1
  %93 = add i32 %4, 1
  %94 = sext i32 %3 to i64
  %95 = zext nneg i32 %2 to i64
  %96 = zext i32 %4 to i64
  %97 = zext i32 %93 to i64
  %98 = add nuw nsw i64 %96, 7
  %99 = and i64 %98, 4294967288
  %100 = add nsw i64 %96, -1
  %101 = insertelement <8 x i64> poison, i64 %100, i64 0
  %102 = shufflevector <8 x i64> %101, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %110

103:                                              ; preds = %82, %103
  %104 = phi i64 [ %86, %82 ], [ %107, %103 ]
  %105 = mul nsw i64 %104, %84
  %106 = getelementptr inbounds i16, ptr %9, i64 %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %106, ptr align 2 %9, i64 %85, i1 false)
  %107 = add nsw i64 %104, 1
  %108 = and i64 %107, 4294967295
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %87, label %103, !llvm.loop !357

110:                                              ; preds = %89, %173
  %111 = phi i64 [ 1, %89 ], [ %174, %173 ]
  %112 = mul nsw i64 %111, %94
  %113 = getelementptr inbounds i16, ptr %9, i64 %112
  br i1 %10, label %114, label %173

114:                                              ; preds = %110
  %115 = getelementptr inbounds i16, ptr %113, i64 %7
  %116 = load i16, ptr %115, align 2, !tbaa !100
  br label %117

117:                                              ; preds = %159, %114
  %118 = phi i64 [ 0, %114 ], [ %160, %159 ]
  %119 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %114 ], [ %161, %159 ]
  %120 = icmp ule <8 x i64> %119, %102
  %121 = extractelement <8 x i1> %120, i64 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = getelementptr inbounds i16, ptr %113, i64 %118
  store i16 %116, ptr %123, align 2, !tbaa !100
  br label %124

124:                                              ; preds = %122, %117
  %125 = extractelement <8 x i1> %120, i64 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = or disjoint i64 %118, 1
  %128 = getelementptr inbounds i16, ptr %113, i64 %127
  store i16 %116, ptr %128, align 2, !tbaa !100
  br label %129

129:                                              ; preds = %126, %124
  %130 = extractelement <8 x i1> %120, i64 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = or disjoint i64 %118, 2
  %133 = getelementptr inbounds i16, ptr %113, i64 %132
  store i16 %116, ptr %133, align 2, !tbaa !100
  br label %134

134:                                              ; preds = %131, %129
  %135 = extractelement <8 x i1> %120, i64 3
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = or disjoint i64 %118, 3
  %138 = getelementptr inbounds i16, ptr %113, i64 %137
  store i16 %116, ptr %138, align 2, !tbaa !100
  br label %139

139:                                              ; preds = %136, %134
  %140 = extractelement <8 x i1> %120, i64 4
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = or disjoint i64 %118, 4
  %143 = getelementptr inbounds i16, ptr %113, i64 %142
  store i16 %116, ptr %143, align 2, !tbaa !100
  br label %144

144:                                              ; preds = %141, %139
  %145 = extractelement <8 x i1> %120, i64 5
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = or disjoint i64 %118, 5
  %148 = getelementptr inbounds i16, ptr %113, i64 %147
  store i16 %116, ptr %148, align 2, !tbaa !100
  br label %149

149:                                              ; preds = %146, %144
  %150 = extractelement <8 x i1> %120, i64 6
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = or disjoint i64 %118, 6
  %153 = getelementptr inbounds i16, ptr %113, i64 %152
  store i16 %116, ptr %153, align 2, !tbaa !100
  br label %154

154:                                              ; preds = %151, %149
  %155 = extractelement <8 x i1> %120, i64 7
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = or disjoint i64 %118, 7
  %158 = getelementptr inbounds i16, ptr %113, i64 %157
  store i16 %116, ptr %158, align 2, !tbaa !100
  br label %159

159:                                              ; preds = %156, %154
  %160 = add i64 %118, 8
  %161 = add <8 x i64> %119, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %162 = icmp eq i64 %160, %99
  br i1 %162, label %163, label %117, !llvm.loop !358

163:                                              ; preds = %159
  %164 = getelementptr i16, ptr %113, i64 %91
  %165 = getelementptr i16, ptr %164, i64 -1
  br i1 %92, label %173, label %166

166:                                              ; preds = %163
  %167 = load i16, ptr %165, align 2, !tbaa !100
  br label %168

168:                                              ; preds = %166, %168
  %169 = phi i64 [ 1, %166 ], [ %171, %168 ]
  %170 = getelementptr inbounds i16, ptr %165, i64 %169
  store i16 %167, ptr %170, align 2, !tbaa !100
  %171 = add nuw nsw i64 %169, 1
  %172 = icmp eq i64 %171, %97
  br i1 %172, label %173, label %168, !llvm.loop !359

173:                                              ; preds = %168, %110, %163
  %174 = add nuw nsw i64 %111, 1
  %175 = icmp eq i64 %174, %95
  br i1 %175, label %176, label %110, !llvm.loop !360

176:                                              ; preds = %173, %87
  %177 = add nsw i32 %2, -1
  %178 = mul nsw i32 %177, %3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i16, ptr %9, i64 %179
  br i1 %81, label %181, label %193

181:                                              ; preds = %176
  %182 = add nsw i32 %5, %2
  %183 = sext i32 %3 to i64
  %184 = shl nsw i64 %183, 1
  %185 = sext i32 %2 to i64
  %186 = sext i32 %182 to i64
  br label %187

187:                                              ; preds = %181, %187
  %188 = phi i64 [ %185, %181 ], [ %191, %187 ]
  %189 = mul nsw i64 %188, %183
  %190 = getelementptr inbounds i16, ptr %9, i64 %189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %190, ptr align 2 %180, i64 %184, i1 false)
  %191 = add nsw i64 %188, 1
  %192 = icmp slt i64 %191, %186
  br i1 %192, label %187, label %193, !llvm.loop !361

193:                                              ; preds = %187, %176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pad_dec_picture(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 172
  %4 = load i32, ptr %3, align 8, !tbaa !362
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 173
  %6 = load i32, ptr %5, align 4, !tbaa !363
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 67
  %12 = load i32, ptr %11, align 4, !tbaa !364
  %13 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !342
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  tail call void @pad_buf(ptr noundef %15, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %4, i32 noundef %6) #28
  %16 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %17 = load i32, ptr %16, align 4, !tbaa !225
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 174
  %21 = load i32, ptr %20, align 8, !tbaa !365
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 175
  %23 = load i32, ptr %22, align 4, !tbaa !366
  %24 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 18
  %25 = load i32, ptr %24, align 8, !tbaa !367
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 19
  %27 = load i32, ptr %26, align 4, !tbaa !368
  %28 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 68
  %29 = load i32, ptr %28, align 8, !tbaa !369
  %30 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %31 = load ptr, ptr %30, align 8, !tbaa !341
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  tail call void @pad_buf(ptr noundef %33, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %21, i32 noundef %23) #28
  %34 = load ptr, ptr %30, align 8, !tbaa !341
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void @pad_buf(ptr noundef %37, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %21, i32 noundef %23) #28
  br label %38

38:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: optsize
declare void @DeblockPicture(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @make_frame_picture_JV(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MbAffPostProc(ptr noundef %0) unnamed_addr #3 !PGOFuncName !370 {
  %2 = alloca [32 x [16 x i16]], align 16
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #30
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 32
  %8 = load ptr, ptr %7, align 8, !tbaa !342
  %9 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #30
  %11 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 27
  %12 = load i32, ptr %11, align 4, !tbaa !371
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 37
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81
  %17 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  %20 = getelementptr inbounds ptr, ptr %10, i64 1
  br label %21

21:                                               ; preds = %14, %65
  %22 = phi i32 [ 0, %14 ], [ %67, %65 ]
  %23 = phi i16 [ 0, %14 ], [ %66, %65 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !372
  %25 = sext i16 %23 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !48
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %65, label %29

29:                                               ; preds = %21
  call void @get_mb_pos(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #29
  %30 = load i16, ptr %4, align 2, !tbaa !100
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %8, i64 %31
  %33 = load i16, ptr %3, align 2, !tbaa !100
  %34 = sext i16 %33 to i32
  call fastcc void @update_mbaff_macroblock_data(ptr noundef %32, ptr noundef nonnull %2, i32 noundef %34, i32 noundef 16, i32 noundef 16) #28
  %35 = load i32, ptr %17, align 4, !tbaa !225
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %29
  %38 = load i16, ptr %3, align 2, !tbaa !100
  %39 = sext i16 %38 to i32
  %40 = load i32, ptr %18, align 4, !tbaa !373
  %41 = mul nsw i32 %40, %39
  %42 = lshr i32 %41, 4
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %3, align 2, !tbaa !100
  %44 = load i16, ptr %4, align 2, !tbaa !100
  %45 = sext i16 %44 to i32
  %46 = load i32, ptr %19, align 8, !tbaa !374
  %47 = mul nsw i32 %46, %45
  %48 = lshr i32 %47, 4
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %4, align 2, !tbaa !100
  %50 = load ptr, ptr %10, align 8, !tbaa !44
  %51 = shl i32 %48, 16
  %52 = ashr exact i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %50, i64 %53
  %55 = shl i32 %42, 16
  %56 = ashr exact i32 %55, 16
  call fastcc void @update_mbaff_macroblock_data(ptr noundef %54, ptr noundef nonnull %2, i32 noundef %56, i32 noundef %40, i32 noundef %46) #28
  %57 = load ptr, ptr %20, align 8, !tbaa !44
  %58 = load i16, ptr %4, align 2, !tbaa !100
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59
  %61 = load i16, ptr %3, align 2, !tbaa !100
  %62 = sext i16 %61 to i32
  %63 = load i32, ptr %18, align 4, !tbaa !373
  %64 = load i32, ptr %19, align 8, !tbaa !374
  call fastcc void @update_mbaff_macroblock_data(ptr noundef %60, ptr noundef nonnull %2, i32 noundef %62, i32 noundef %63, i32 noundef %64) #28
  br label %65

65:                                               ; preds = %21, %37, %29
  %66 = add i16 %23, 2
  %67 = sext i16 %66 to i32
  %68 = load i32, ptr %11, align 4, !tbaa !371
  %69 = icmp sgt i32 %68, %67
  br i1 %69, label %21, label %70, !llvm.loop !375

70:                                               ; preds = %65, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @frame_postprocessing(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @field_postprocessing(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !199
  %4 = sdiv i32 %3, 2
  store i32 %4, ptr %2, align 8, !tbaa !199
  ret void
}

; Function Attrs: optsize
declare void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercWriteMBMODEandMV(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !376
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !377
  %6 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 136
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = ashr i32 %9, 4
  %11 = srem i32 %5, %10
  %12 = sdiv i32 %5, %10
  %13 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 139
  %14 = load ptr, ptr %13, align 8, !tbaa !378
  %15 = shl i32 %5, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.object_buffer, ptr %14, i64 %16
  %18 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 22
  %19 = load i32, ptr %18, align 8, !tbaa !201
  %20 = icmp eq i32 %19, 1
  %21 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 35
  br i1 %20, label %28, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !379
  %25 = icmp eq i16 %24, 10
  %26 = shl nsw i32 %11, 2
  %27 = shl nsw i32 %12, 2
  br label %34

28:                                               ; preds = %1
  %29 = shl nsw i32 %11, 2
  %30 = shl nsw i32 %12, 2
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %32 = load i16, ptr %31, align 8, !tbaa !379
  %33 = icmp eq i16 %32, 10
  br label %134

34:                                               ; preds = %22, %129
  %35 = phi i64 [ 0, %22 ], [ %132, %129 ]
  %36 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %35
  br i1 %25, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %35
  %39 = load i8, ptr %38, align 1, !tbaa !48
  switch i8 %39, label %40 [
    i8 11, label %44
    i8 0, label %43
  ]

40:                                               ; preds = %37
  %41 = icmp eq i8 %39, 1
  %42 = select i1 %41, i8 1, i8 5
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %37, %43, %40, %34
  %45 = phi i8 [ 2, %34 ], [ 6, %37 ], [ %42, %40 ], [ 0, %43 ]
  store i8 %45, ptr %36, align 4, !tbaa !380
  %46 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %35
  %47 = load i8, ptr %46, align 1, !tbaa !48
  switch i8 %47, label %51 [
    i8 0, label %48
    i8 11, label %48
  ]

48:                                               ; preds = %44, %44
  %49 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %35, i32 3
  store i32 0, ptr %49, align 4, !tbaa !65
  %50 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %35, i32 3, i64 1
  store i32 0, ptr %50, align 4, !tbaa !65
  br label %129

51:                                               ; preds = %44
  %52 = trunc i64 %35 to i32
  %53 = shl i32 %52, 1
  %54 = and i32 %53, 2
  %55 = or disjoint i32 %54, %26
  %56 = trunc i64 %35 to i32
  %57 = and i32 %56, 2
  %58 = or disjoint i32 %57, %27
  %59 = add i8 %47, -5
  %60 = icmp ult i8 %59, 3
  %61 = load ptr, ptr %21, align 8, !tbaa !43
  %62 = sext i32 %58 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = sext i32 %55 to i64
  %66 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %65, i32 1
  %67 = load i16, ptr %66, align 8, !tbaa !382
  %68 = sext i16 %67 to i32
  br i1 %60, label %69, label %107

69:                                               ; preds = %51
  %70 = or disjoint i32 %55, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %71, i32 1
  %73 = load i16, ptr %72, align 8, !tbaa !382
  %74 = sext i16 %73 to i32
  %75 = or disjoint i32 %58, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %61, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  %79 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %65, i32 1
  %80 = load i16, ptr %79, align 8, !tbaa !382
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %71, i32 1
  %83 = load i16, ptr %82, align 8, !tbaa !382
  %84 = sext i16 %83 to i32
  %85 = add nsw i32 %68, 2
  %86 = add nsw i32 %85, %74
  %87 = add nsw i32 %86, %81
  %88 = add nsw i32 %87, %84
  %89 = sdiv i32 %88, 4
  %90 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %65, i32 1, i64 0, i32 1
  %91 = load i16, ptr %90, align 2, !tbaa !383
  %92 = sext i16 %91 to i32
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %71, i32 1, i64 0, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !383
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %65, i32 1, i64 0, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !383
  %98 = sext i16 %97 to i32
  %99 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %71, i32 1, i64 0, i32 1
  %100 = load i16, ptr %99, align 2, !tbaa !383
  %101 = sext i16 %100 to i32
  %102 = add nsw i32 %92, 2
  %103 = add nsw i32 %102, %95
  %104 = add nsw i32 %103, %98
  %105 = add nsw i32 %104, %101
  %106 = sdiv i32 %105, 4
  br label %111

107:                                              ; preds = %51
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %65, i32 1, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !383
  %110 = sext i16 %109 to i32
  br label %111

111:                                              ; preds = %107, %69
  %112 = phi i32 [ %68, %107 ], [ %89, %69 ]
  %113 = phi i32 [ %110, %107 ], [ %106, %69 ]
  %114 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %35, i32 3
  store i32 %112, ptr %114, align 4
  %115 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %35, i32 3, i64 1
  store i32 %113, ptr %115, align 4
  %116 = tail call fastcc i32 @iabs(i32 noundef %112) #28
  %117 = tail call fastcc i32 @iabs(i32 noundef %113) #28
  %118 = add nsw i32 %117, %116
  %119 = load ptr, ptr %0, align 8, !tbaa !384
  %120 = getelementptr inbounds %struct.slice, ptr %119, i64 0, i32 123
  %121 = load i32, ptr %120, align 8, !tbaa !159
  %122 = add nsw i32 %118, %121
  store i32 %122, ptr %120, align 8, !tbaa !159
  %123 = load ptr, ptr %21, align 8, !tbaa !43
  %124 = getelementptr inbounds ptr, ptr %123, i64 %62
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %65, i32 2
  %127 = load i8, ptr %126, align 8, !tbaa !48
  %128 = sext i8 %127 to i32
  br label %129

129:                                              ; preds = %48, %111
  %130 = phi i32 [ 0, %48 ], [ %128, %111 ]
  %131 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %35, i32 3, i64 2
  store i32 %130, ptr %131, align 4, !tbaa !65
  %132 = add nuw nsw i64 %35, 1
  %133 = icmp eq i64 %132, 4
  br i1 %133, label %206, label %34, !llvm.loop !385

134:                                              ; preds = %28, %201
  %135 = phi i64 [ 0, %28 ], [ %204, %201 ]
  %136 = trunc i64 %135 to i32
  %137 = shl i32 %136, 1
  %138 = and i32 %137, 2
  %139 = or disjoint i32 %138, %29
  %140 = trunc i64 %135 to i32
  %141 = and i32 %140, 2
  %142 = or disjoint i32 %141, %30
  %143 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %135
  br i1 %33, label %144, label %145

144:                                              ; preds = %134
  store i8 2, ptr %143, align 4, !tbaa !380
  br label %152

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %135
  %147 = load i8, ptr %146, align 1, !tbaa !48
  %148 = icmp eq i8 %147, 11
  %149 = select i1 %148, i8 6, i8 5
  store i8 %149, ptr %143, align 4, !tbaa !380
  %150 = load i8, ptr %146, align 1, !tbaa !48
  %151 = icmp eq i8 %150, 11
  br i1 %151, label %152, label %155

152:                                              ; preds = %144, %145
  %153 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %135, i32 3
  store i32 0, ptr %153, align 4, !tbaa !65
  %154 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %135, i32 3, i64 1
  store i32 0, ptr %154, align 4, !tbaa !65
  br label %201

155:                                              ; preds = %145
  %156 = load ptr, ptr %21, align 8, !tbaa !43
  %157 = sext i32 %142 to i64
  %158 = getelementptr inbounds ptr, ptr %156, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !44
  %160 = sext i32 %139 to i64
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %159, i64 %160, i32 2
  %162 = load i8, ptr %161, align 8, !tbaa !48
  %163 = lshr i8 %162, 7
  %164 = zext nneg i8 %163 to i64
  %165 = getelementptr inbounds %struct.pic_motion_params, ptr %159, i64 %160, i32 1, i64 %164
  %166 = or disjoint i32 %139, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.pic_motion_params, ptr %159, i64 %167, i32 1, i64 %164
  %169 = or disjoint i32 %142, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %156, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !44
  %173 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %160, i32 1, i64 %164
  %174 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %167, i32 1, i64 %164
  %175 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %135, i32 3
  %176 = load <2 x i16>, ptr %165, align 4, !tbaa !100
  %177 = sext <2 x i16> %176 to <2 x i32>
  %178 = load <2 x i16>, ptr %168, align 4, !tbaa !100
  %179 = sext <2 x i16> %178 to <2 x i32>
  %180 = load <2 x i16>, ptr %173, align 4, !tbaa !100
  %181 = sext <2 x i16> %180 to <2 x i32>
  %182 = load <2 x i16>, ptr %174, align 4, !tbaa !100
  %183 = sext <2 x i16> %182 to <2 x i32>
  %184 = add nsw <2 x i32> %177, <i32 2, i32 2>
  %185 = add nsw <2 x i32> %184, %179
  %186 = add nsw <2 x i32> %185, %181
  %187 = add nsw <2 x i32> %186, %183
  %188 = sdiv <2 x i32> %187, <i32 4, i32 4>
  store <2 x i32> %188, ptr %175, align 4, !tbaa !65
  %189 = extractelement <2 x i32> %188, i64 0
  %190 = tail call fastcc i32 @iabs(i32 noundef %189) #28
  %191 = extractelement <2 x i32> %188, i64 1
  %192 = tail call fastcc i32 @iabs(i32 noundef %191) #28
  %193 = add nsw i32 %192, %190
  %194 = load ptr, ptr %0, align 8, !tbaa !384
  %195 = getelementptr inbounds %struct.slice, ptr %194, i64 0, i32 123
  %196 = load i32, ptr %195, align 8, !tbaa !159
  %197 = add nsw i32 %193, %196
  store i32 %197, ptr %195, align 8, !tbaa !159
  %198 = getelementptr inbounds %struct.pic_motion_params, ptr %159, i64 %160, i32 2, i64 %164
  %199 = load i8, ptr %198, align 1, !tbaa !48
  %200 = sext i8 %199 to i32
  br label %201

201:                                              ; preds = %152, %155
  %202 = phi i32 [ 0, %152 ], [ %200, %155 ]
  %203 = getelementptr inbounds %struct.object_buffer, ptr %17, i64 %135, i32 3, i64 2
  store i32 %202, ptr %203, align 4, !tbaa !65
  %204 = add nuw nsw i64 %135, 1
  %205 = icmp eq i64 %204, 4
  br i1 %205, label %206, label %134, !llvm.loop !386

206:                                              ; preds = %129, %201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #7 !PGOFuncName !387 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_old_slice(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store i32 0, ptr %0, align 4, !tbaa !290
  %2 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 9
  store i32 2147483647, ptr %2, align 4, !tbaa !287
  %3 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 1
  store i32 2147483647, ptr %3, align 4, !tbaa !289
  %4 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 2
  store i32 2147483647, ptr %4, align 4, !tbaa !293
  %5 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 7
  store i8 0, ptr %5, align 1, !tbaa !294
  %6 = getelementptr inbounds %struct.old_slice_par, ptr %0, i64 0, i32 3
  store <4 x i32> <i32 -1, i32 2147483647, i32 2147483647, i32 2147483647>, ptr %6, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_dec_picture_JV(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 2
  %6 = load <2 x i32>, ptr %4, align 8, !tbaa !65
  store <2 x i32> %6, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 4
  store i32 %8, ptr %9, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 55
  %11 = load i32, ptr %10, align 8, !tbaa !187
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 55
  store i32 %11, ptr %12, align 8, !tbaa !187
  %13 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 57
  %14 = load i32, ptr %13, align 4, !tbaa !189
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 57
  store i32 %14, ptr %15, align 4, !tbaa !189
  %16 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 56
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 56
  store i32 %17, ptr %18, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 56, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 56, i64 1
  store i32 %20, ptr %21, align 4, !tbaa !65
  %22 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !104
  %24 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !104
  %25 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 43
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 43
  %27 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 11
  %28 = load i32, ptr %27, align 4, !tbaa !87
  %29 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 11
  store i32 %28, ptr %29, align 4, !tbaa !87
  %30 = load <4 x i32>, ptr %25, align 8, !tbaa !65
  store <4 x i32> %30, ptr %26, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 47
  %32 = load i32, ptr %31, align 8, !tbaa !214
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  store i32 %32, ptr %33, align 8, !tbaa !214
  %34 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 58
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 58
  store ptr %35, ptr %36, align 8, !tbaa !216
  %37 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 25
  %38 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 25
  %39 = load <2 x i32>, ptr %37, align 4, !tbaa !65
  store <2 x i32> %39, ptr %38, align 4, !tbaa !65
  %40 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !221
  %42 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 7
  store i32 %41, ptr %42, align 4, !tbaa !221
  %43 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 5
  %44 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 5
  %45 = load <2 x i32>, ptr %43, align 4, !tbaa !65
  store <2 x i32> %45, ptr %44, align 4, !tbaa !65
  %46 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 24
  %47 = load i32, ptr %46, align 8, !tbaa !224
  %48 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 24
  store i32 %47, ptr %48, align 8, !tbaa !224
  %49 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %50 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %51 = load <4 x i32>, ptr %49, align 4, !tbaa !65
  store <4 x i32> %51, ptr %50, align 4, !tbaa !65
  %52 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 52
  %53 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %54 = load <2 x i32>, ptr %52, align 4, !tbaa !65
  store <2 x i32> %54, ptr %53, align 4, !tbaa !65
  %55 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 54
  %56 = load i32, ptr %55, align 4, !tbaa !388
  %57 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  store i32 %56, ptr %57, align 4, !tbaa !388
  %58 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 60
  %59 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 60
  %60 = load <2 x i32>, ptr %58, align 4, !tbaa !65
  store <2 x i32> %60, ptr %59, align 4, !tbaa !65
  %61 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 62
  %62 = load i32, ptr %61, align 4, !tbaa !238
  %63 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 62
  store i32 %62, ptr %63, align 4, !tbaa !238
  %64 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 63
  %65 = load ptr, ptr %64, align 8, !tbaa !239
  %66 = icmp eq ptr %65, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 158
  %69 = load ptr, ptr %68, align 8, !tbaa !230
  %70 = getelementptr inbounds %struct.tone_mapping_struct_s, ptr %69, i64 0, i32 2
  %71 = load i8, ptr %70, align 8, !tbaa !233
  %72 = zext nneg i8 %71 to i32
  %73 = shl nuw i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = shl nsw i64 %74, 2
  %76 = tail call noalias ptr @malloc(i64 noundef %75) #33
  %77 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 63
  store ptr %76, ptr %77, align 8, !tbaa !239
  %78 = icmp eq ptr %76, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  tail call void @no_mem_exit(ptr noundef nonnull @.str.46) #29
  %80 = load ptr, ptr %77, align 8, !tbaa !239
  br label %81

81:                                               ; preds = %79, %67
  %82 = phi ptr [ %80, %79 ], [ %76, %67 ]
  %83 = load ptr, ptr %64, align 8, !tbaa !239
  %84 = shl nsw i64 %74, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %82, ptr noundef nonnull align 2 dereferenceable(1) %83, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: optsize
declare void @compute_colocated(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_cur_imgy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !389 {
  %3 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 105
  %4 = load i32, ptr %3, align 8, !tbaa !88
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 138
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !179
  %10 = getelementptr inbounds %struct.video_par, ptr %1, i64 0, i32 104
  %11 = load i32, ptr %10, align 4, !tbaa !178
  %12 = icmp slt i32 %9, %11
  br i1 %5, label %40, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 46
  %15 = load i32, ptr %14, align 8, !tbaa !89
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %13, %37
  %18 = phi i64 [ %38, %37 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %18
  br label %20

20:                                               ; preds = %17, %34
  %21 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %22 = load ptr, ptr %19, align 8, !tbaa !44
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = icmp eq ptr %24, %7
  %28 = select i1 %12, i1 %27, i1 false
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 72
  store i32 %29, ptr %30, align 8, !tbaa !390
  %31 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 32
  %32 = load ptr, ptr %31, align 8, !tbaa !342
  %33 = getelementptr inbounds %struct.storable_picture, ptr %24, i64 0, i32 71
  store ptr %32, ptr %33, align 8, !tbaa !391
  br label %34

34:                                               ; preds = %26, %20
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, 33
  br i1 %36, label %37, label %20, !llvm.loop !392

37:                                               ; preds = %34
  %38 = add nuw nsw i64 %18, 1
  %39 = icmp eq i64 %38, 6
  br i1 %39, label %74, label %17, !llvm.loop !393

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %42 = load i32, ptr %41, align 8, !tbaa !77
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %46 = load i32, ptr %45, align 4, !tbaa !74
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, i64 2, i64 1
  br label %49

49:                                               ; preds = %40, %44
  %50 = phi i64 [ %48, %44 ], [ 6, %40 ]
  br label %51

51:                                               ; preds = %49, %71
  %52 = phi i64 [ 0, %49 ], [ %72, %71 ]
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %52
  br label %54

54:                                               ; preds = %51, %68
  %55 = phi i64 [ 0, %51 ], [ %69, %68 ]
  %56 = load ptr, ptr %53, align 8, !tbaa !44
  %57 = getelementptr inbounds ptr, ptr %56, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = icmp eq ptr %58, %7
  %62 = select i1 %12, i1 %61, i1 false
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds %struct.storable_picture, ptr %58, i64 0, i32 72
  store i32 %63, ptr %64, align 8, !tbaa !390
  %65 = getelementptr inbounds %struct.storable_picture, ptr %58, i64 0, i32 32
  %66 = load ptr, ptr %65, align 8, !tbaa !342
  %67 = getelementptr inbounds %struct.storable_picture, ptr %58, i64 0, i32 71
  store ptr %66, ptr %67, align 8, !tbaa !391
  br label %68

68:                                               ; preds = %60, %54
  %69 = add nuw nsw i64 %55, 1
  %70 = icmp eq i64 %69, 33
  br i1 %70, label %71, label %54, !llvm.loop !394

71:                                               ; preds = %68
  %72 = add nuw nsw i64 %52, 1
  %73 = icmp eq i64 %72, %50
  br i1 %73, label %74, label %51, !llvm.loop !395

74:                                               ; preds = %37, %71, %13
  ret void
}

; Function Attrs: optsize
declare void @start_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @decode_one_macroblock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @exit_macroblock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GetVOIdx(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !270
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !271
  %9 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !396
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %21

12:                                               ; preds = %6, %18
  %13 = phi i32 [ %19, %18 ], [ %10, %6 ]
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %13, -1
  %20 = icmp sgt i32 %13, 0
  br i1 %20, label %12, label %21, !llvm.loop !397

21:                                               ; preds = %12, %18, %6, %2
  %22 = phi i32 [ -1, %2 ], [ %10, %6 ], [ %13, %12 ], [ -1, %18 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_maxViewIdx(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = tail call i32 @GetVOIdx(ptr noundef %0, i32 noundef %1) #28
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 0
  %9 = icmp eq i32 %3, 0
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !270
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %11, i64 0, i32 4
  %14 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %11, i64 0, i32 6
  %15 = select i1 %9, ptr %13, ptr %14
  %16 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %11, i64 0, i32 8
  %17 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %11, i64 0, i32 10
  %18 = select i1 %9, ptr %16, ptr %17
  %19 = select i1 %8, ptr %18, ptr %15
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds i32, ptr %20, i64 %12
  %22 = load i32, ptr %21, align 4, !tbaa !65
  br label %23

23:                                               ; preds = %7, %4
  %24 = phi i32 [ 0, %4 ], [ %22, %7 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !398 {
  %4 = tail call fastcc i32 @imax(i32 noundef %2, i32 noundef %0) #28
  %5 = tail call fastcc i32 @imin(i32 noundef %4, i32 noundef %1) #28
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !399 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @conceal_lost_frames(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fill_frame_num_gap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @decode_poc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ercReset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @set_ec_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @reset_mbs(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !400 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  store i16 -1, ptr %2, align 4, !tbaa !304
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %3, align 2, !tbaa !401
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 0, ptr %4, align 1, !tbaa !402
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fast_memset(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !403 {
  %3 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 2, i64 %3, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @get_mb_block_pos_normal(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @update_tone_mapping_sei(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_ref_list(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_ltref_list(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_Deblock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #24

; Function Attrs: optsize
declare void @get_mb_pos(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_mbaff_macroblock_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !404 {
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds [16 x i16], ptr %1, i64 %6
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = shl nuw i32 %4, 1
  %11 = sext i32 %2 to i64
  %12 = sext i32 %3 to i64
  %13 = shl nsw i64 %12, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  br label %20

15:                                               ; preds = %20
  br i1 %8, label %16, label %45

16:                                               ; preds = %15
  %17 = sext i32 %2 to i64
  %18 = sext i32 %3 to i64
  %19 = shl nsw i64 %18, 1
  br label %30

20:                                               ; preds = %9, %20
  %21 = phi i32 [ 0, %9 ], [ %28, %20 ]
  %22 = phi ptr [ %0, %9 ], [ %25, %20 ]
  %23 = phi ptr [ %1, %9 ], [ %24, %20 ]
  %24 = getelementptr inbounds [16 x i16], ptr %23, i64 1
  %25 = getelementptr inbounds ptr, ptr %22, i64 1
  %26 = load ptr, ptr %22, align 8, !tbaa !44
  %27 = getelementptr inbounds i16, ptr %26, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %23, ptr align 2 %27, i64 %13, i1 false)
  %28 = add nuw nsw i32 %21, 1
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %15, label %20, !llvm.loop !405

30:                                               ; preds = %16, %30
  %31 = phi i32 [ 0, %16 ], [ %43, %30 ]
  %32 = phi ptr [ %7, %16 ], [ %42, %30 ]
  %33 = phi ptr [ %1, %16 ], [ %38, %30 ]
  %34 = phi ptr [ %0, %16 ], [ %39, %30 ]
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %34, align 8, !tbaa !44
  %37 = getelementptr inbounds i16, ptr %36, i64 %17
  %38 = getelementptr inbounds [16 x i16], ptr %33, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %33, i64 %19, i1 false)
  %39 = getelementptr inbounds ptr, ptr %34, i64 2
  %40 = load ptr, ptr %35, align 8, !tbaa !44
  %41 = getelementptr inbounds i16, ptr %40, i64 %17
  %42 = getelementptr inbounds [16 x i16], ptr %32, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %32, i64 %19, i1 false)
  %43 = add nuw nsw i32 %31, 1
  %44 = icmp eq i32 %43, %4
  br i1 %44, label %45, label %30, !llvm.loop !406

45:                                               ; preds = %30, %5, %15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #27

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { optsize }
attributes #29 = { nounwind optsize }
attributes #30 = { nounwind }
attributes #31 = { nounwind optsize allocsize(1) }
attributes #32 = { nounwind optsize allocsize(0,1) }
attributes #33 = { nounwind optsize allocsize(0) }
attributes #34 = { nounwind optsize willreturn memory(read) }
attributes #35 = { cold optsize }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"image.c:reset_mv_info"}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !40, i64 13464}
!50 = !{!"slice", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !37, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !39, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !37, i64 136, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !40, i64 248, !37, i64 256, !37, i64 264, !40, i64 312, !40, i64 320, !40, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !36, i64 1176, !36, i64 1180, !36, i64 1184, !51, i64 1188, !39, i64 1220, !39, i64 1222, !39, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !37, i64 1288, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !36, i64 13264, !36, i64 13268, !39, i64 13272, !39, i64 13274, !39, i64 13276, !39, i64 13278, !40, i64 13280, !40, i64 13288, !40, i64 13296, !39, i64 13304, !39, i64 13306, !36, i64 13308, !36, i64 13312, !40, i64 13320, !40, i64 13328, !36, i64 13336, !37, i64 13340, !40, i64 13408, !40, i64 13416, !40, i64 13424, !40, i64 13432, !40, i64 13440, !40, i64 13448, !40, i64 13456, !40, i64 13464, !40, i64 13472, !40, i64 13480, !40, i64 13488, !40, i64 13496, !36, i64 13504, !40, i64 13512, !40, i64 13520, !40, i64 13528, !40, i64 13536, !40, i64 13544, !37, i64 13552}
!51 = !{!"nalunitheadermvcext_tag", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!52 = !{!50, !36, i64 32}
!53 = !{!50, !36, i64 104}
!54 = !{!50, !40, i64 13320}
!55 = !{!50, !40, i64 13328}
!56 = !{!50, !36, i64 184}
!57 = !{!50, !36, i64 220}
!58 = !{!59, !36, i64 851864}
!59 = !{!"video_par", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 132120, !40, i64 699416, !37, i64 699424, !36, i64 848672, !36, i64 848676, !36, i64 848680, !36, i64 848684, !40, i64 848688, !40, i64 848696, !40, i64 848704, !36, i64 848712, !36, i64 848716, !36, i64 848720, !36, i64 848724, !36, i64 848728, !40, i64 848736, !40, i64 848744, !37, i64 848752, !36, i64 848776, !36, i64 848780, !36, i64 848784, !36, i64 848788, !36, i64 848792, !40, i64 848800, !37, i64 848808, !40, i64 848832, !40, i64 848840, !37, i64 848848, !36, i64 848872, !36, i64 848876, !40, i64 848880, !40, i64 848888, !37, i64 848896, !36, i64 848920, !40, i64 848928, !40, i64 848936, !36, i64 848944, !36, i64 848948, !36, i64 848952, !36, i64 848956, !36, i64 848960, !36, i64 848964, !36, i64 848968, !36, i64 848972, !36, i64 848976, !36, i64 848980, !36, i64 848984, !36, i64 848988, !36, i64 848992, !36, i64 848996, !36, i64 849000, !36, i64 849004, !36, i64 849008, !36, i64 849012, !36, i64 849016, !36, i64 849020, !36, i64 849024, !36, i64 849028, !36, i64 849032, !36, i64 849036, !39, i64 849040, !39, i64 849042, !37, i64 849044, !36, i64 849052, !36, i64 849056, !37, i64 849060, !37, i64 849072, !36, i64 849084, !36, i64 849088, !36, i64 849092, !36, i64 849096, !36, i64 849100, !36, i64 849104, !36, i64 849108, !36, i64 849112, !36, i64 849116, !36, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !36, i64 849196, !36, i64 849200, !36, i64 849204, !36, i64 849208, !36, i64 849212, !36, i64 849216, !36, i64 849220, !36, i64 849224, !36, i64 849228, !36, i64 849232, !36, i64 849236, !36, i64 849240, !36, i64 849244, !36, i64 849248, !36, i64 849252, !36, i64 849256, !36, i64 849260, !36, i64 849264, !36, i64 849268, !36, i64 849272, !36, i64 849276, !36, i64 849280, !36, i64 849284, !40, i64 849288, !40, i64 849296, !60, i64 849304, !60, i64 849624, !60, i64 849944, !60, i64 850264, !60, i64 850584, !60, i64 850904, !60, i64 851224, !60, i64 851544, !36, i64 851864, !36, i64 851868, !36, i64 851872, !63, i64 851880, !36, i64 851888, !37, i64 851892, !36, i64 855988, !36, i64 855992, !36, i64 855996, !36, i64 856000, !36, i64 856004, !36, i64 856008, !36, i64 856012, !40, i64 856016, !40, i64 856024, !40, i64 856032, !40, i64 856040, !40, i64 856048, !37, i64 856056, !40, i64 856456, !37, i64 856464, !40, i64 856488, !40, i64 856496, !40, i64 856504, !36, i64 856512, !40, i64 856520, !37, i64 856528, !40, i64 856608, !40, i64 856616, !40, i64 856624, !40, i64 856632, !36, i64 856640, !36, i64 856644, !36, i64 856648, !40, i64 856656, !40, i64 856664, !37, i64 856672, !37, i64 856688, !40, i64 856704, !40, i64 856712, !36, i64 856720, !40, i64 856728, !40, i64 856736, !40, i64 856744, !40, i64 856752, !40, i64 856760, !40, i64 856768, !40, i64 856776, !40, i64 856784, !40, i64 856792, !40, i64 856800, !40, i64 856808, !40, i64 856816, !36, i64 856824, !40, i64 856832, !36, i64 856840, !36, i64 856844, !36, i64 856848, !36, i64 856852, !36, i64 856856, !36, i64 856860, !36, i64 856864, !40, i64 856872}
!60 = !{!"image_data", !61, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!61 = !{!"frame_format", !36, i64 0, !36, i64 4, !62, i64 8, !37, i64 16, !37, i64 28, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !36, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !36, i64 124, !36, i64 128}
!62 = !{!"double", !37, i64 0}
!63 = !{!"long", !37, i64 0}
!64 = !{!50, !36, i64 172}
!65 = !{!36, !36, i64 0}
!66 = !{!50, !40, i64 24}
!67 = !{!68, !36, i64 36}
!68 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !36, i64 2060, !36, i64 2064, !36, i64 2068, !36, i64 2072, !36, i64 2076, !36, i64 2080, !36, i64 2084, !36, i64 2088, !36, i64 2092, !37, i64 2096, !36, i64 3120, !36, i64 3124, !36, i64 3128, !36, i64 3132, !36, i64 3136, !36, i64 3140, !36, i64 3144, !36, i64 3148, !36, i64 3152, !36, i64 3156, !36, i64 3160, !36, i64 3164, !36, i64 3168, !69, i64 3172, !36, i64 4120, !36, i64 4124}
!69 = !{!"", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 10, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !70, i64 80, !36, i64 492, !70, i64 496, !36, i64 908, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944}
!70 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408}
!71 = !{!50, !40, i64 13480}
!72 = !{!50, !40, i64 13488}
!73 = !{!50, !40, i64 0}
!74 = !{!50, !36, i64 164}
!75 = !{!59, !40, i64 856488}
!76 = !{!59, !36, i64 848948}
!77 = !{!50, !36, i64 128}
!78 = !{!50, !40, i64 16}
!79 = !{!80, !36, i64 12}
!80 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !36, i64 2040, !36, i64 2044, !36, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !36, i64 2148, !36, i64 2152, !36, i64 2156, !40, i64 2160, !36, i64 2168, !36, i64 2172, !36, i64 2176, !36, i64 2180, !36, i64 2184, !36, i64 2188, !36, i64 2192, !36, i64 2196, !36, i64 2200, !36, i64 2204, !36, i64 2208}
!81 = !{!80, !36, i64 2180}
!82 = !{!80, !36, i64 2176}
!83 = !{!50, !36, i64 144}
!84 = !{!59, !36, i64 856824}
!85 = !{!59, !36, i64 856856}
!86 = !{!59, !40, i64 856456}
!87 = !{!35, !36, i64 44}
!88 = !{!59, !36, i64 849280}
!89 = !{!50, !36, i64 216}
!90 = !{!50, !40, i64 13520}
!91 = !{!50, !36, i64 188}
!92 = !{!50, !36, i64 192}
!93 = !{!"image.c:fill_wp_params"}
!94 = !{!50, !39, i64 13276}
!95 = !{!50, !39, i64 13278}
!96 = !{!50, !39, i64 13304}
!97 = !{!50, !39, i64 13306}
!98 = !{!50, !40, i64 13280}
!99 = !{!50, !40, i64 13288}
!100 = !{!39, !39, i64 0}
!101 = distinct !{!101, !46}
!102 = distinct !{!102, !46}
!103 = !{!50, !40, i64 13296}
!104 = !{!35, !36, i64 4}
!105 = !{!35, !37, i64 40}
!106 = distinct !{!106, !46}
!107 = distinct !{!107, !46}
!108 = distinct !{!108, !46}
!109 = distinct !{!109, !46}
!110 = distinct !{!110, !46}
!111 = distinct !{!111, !46}
!112 = distinct !{!112, !46}
!113 = !{!50, !36, i64 120}
!114 = !{!59, !40, i64 848888}
!115 = !{!50, !40, i64 13512}
!116 = !{!59, !40, i64 848840}
!117 = !{!50, !40, i64 13528}
!118 = !{!59, !40, i64 848800}
!119 = !{!50, !40, i64 13536}
!120 = !{!59, !40, i64 848744}
!121 = !{!50, !40, i64 13544}
!122 = !{!50, !40, i64 13448}
!123 = !{!124, !36, i64 384}
!124 = !{!"macroblock", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !125, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !39, i64 108, !37, i64 110, !37, i64 111, !39, i64 112, !39, i64 114, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !39, i64 152, !37, i64 154, !36, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !36, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !39, i64 376, !39, i64 378, !39, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !37, i64 472}
!125 = !{!"", !39, i64 0, !39, i64 2}
!126 = !{!50, !36, i64 108}
!127 = distinct !{!127, !46}
!128 = !{!129, !40, i64 8}
!129 = !{!"decoder_params", !40, i64 0, !40, i64 8, !63, i64 16, !36, i64 24, !40, i64 32, !36, i64 40}
!130 = !{!59, !40, i64 0}
!131 = !{!59, !40, i64 848736}
!132 = !{!59, !36, i64 848720}
!133 = !{!59, !36, i64 848728}
!134 = !{!59, !36, i64 848716}
!135 = !{!59, !36, i64 848872}
!136 = !{!59, !40, i64 856872}
!137 = !{!80, !36, i64 0}
!138 = !{!80, !36, i64 4}
!139 = !{!59, !40, i64 848880}
!140 = !{!50, !36, i64 1228}
!141 = !{!50, !40, i64 8}
!142 = !{!59, !40, i64 856656}
!143 = !{!50, !40, i64 40}
!144 = !{!50, !36, i64 208}
!145 = !{!50, !36, i64 112}
!146 = !{!50, !36, i64 13264}
!147 = !{!50, !36, i64 13268}
!148 = !{!50, !36, i64 1240}
!149 = !{i32 1, i32 4}
!150 = !{!50, !36, i64 204}
!151 = !{!59, !36, i64 851868}
!152 = distinct !{!152, !46}
!153 = !{!50, !39, i64 116}
!154 = !{!35, !39, i64 60}
!155 = !{!59, !36, i64 848724}
!156 = !{!59, !36, i64 849016}
!157 = !{!50, !36, i64 176}
!158 = !{!59, !40, i64 848696}
!159 = !{!50, !36, i64 13504}
!160 = !{!59, !36, i64 856512}
!161 = distinct !{!161, !46}
!162 = !{!"image.c:init_picture"}
!163 = !{!59, !40, i64 16}
!164 = !{!59, !36, i64 856864}
!165 = !{!59, !36, i64 849260}
!166 = !{!59, !36, i64 849268}
!167 = !{!59, !36, i64 848992}
!168 = !{!59, !36, i64 849272}
!169 = !{!50, !36, i64 48}
!170 = !{!59, !36, i64 848944}
!171 = !{!68, !36, i64 3124}
!172 = !{!173, !36, i64 3980}
!173 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !36, i64 768, !36, i64 772, !36, i64 776, !36, i64 780, !36, i64 784, !36, i64 788, !61, i64 792, !61, i64 928, !36, i64 1064, !36, i64 1068, !174, i64 1072, !174, i64 2040, !174, i64 3008, !36, i64 3976, !36, i64 3980, !36, i64 3984, !36, i64 3988, !36, i64 3992, !36, i64 3996, !36, i64 4000, !36, i64 4004, !36, i64 4008, !36, i64 4012}
!174 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !36, i64 768, !36, i64 772, !61, i64 776, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944, !36, i64 948, !36, i64 952, !40, i64 960}
!175 = !{!59, !36, i64 849240}
!176 = !{!59, !36, i64 849252}
!177 = !{!50, !36, i64 56}
!178 = !{!59, !36, i64 849276}
!179 = !{!50, !36, i64 76}
!180 = !{!59, !36, i64 849228}
!181 = !{!59, !36, i64 848780}
!182 = !{!59, !36, i64 848784}
!183 = !{!59, !36, i64 848788}
!184 = !{!59, !36, i64 848792}
!185 = !{!35, !36, i64 16}
!186 = !{!50, !36, i64 148}
!187 = !{!35, !36, i64 296}
!188 = !{!50, !36, i64 152}
!189 = !{!35, !36, i64 308}
!190 = !{!59, !40, i64 8}
!191 = !{!80, !36, i64 2192}
!192 = !{!80, !36, i64 2196}
!193 = !{!35, !36, i64 388}
!194 = !{!50, !36, i64 1184}
!195 = !{!35, !36, i64 352}
!196 = !{!59, !40, i64 856504}
!197 = !{!59, !36, i64 849012}
!198 = !{!50, !36, i64 68}
!199 = !{!59, !36, i64 848712}
!200 = !{!50, !36, i64 72}
!201 = !{!59, !36, i64 848776}
!202 = !{!59, !40, i64 848832}
!203 = distinct !{!203, !46}
!204 = !{!59, !36, i64 849004}
!205 = !{!59, !36, i64 848996}
!206 = !{!80, !36, i64 2204}
!207 = distinct !{!207, !46}
!208 = distinct !{!208, !46}
!209 = distinct !{!209, !46}
!210 = distinct !{!210, !46}
!211 = !{!35, !36, i64 248}
!212 = !{!35, !36, i64 252}
!213 = !{!50, !36, i64 244}
!214 = !{!35, !36, i64 264}
!215 = !{!50, !40, i64 248}
!216 = !{!35, !40, i64 312}
!217 = !{!35, !36, i64 100}
!218 = !{!35, !36, i64 104}
!219 = !{!59, !40, i64 856752}
!220 = !{!59, !40, i64 856744}
!221 = !{!35, !36, i64 28}
!222 = !{!35, !36, i64 20}
!223 = !{!35, !36, i64 24}
!224 = !{!35, !36, i64 96}
!225 = !{!35, !36, i64 268}
!226 = !{!68, !36, i64 3136}
!227 = !{!35, !36, i64 272}
!228 = !{!68, !36, i64 3148}
!229 = !{!35, !36, i64 276}
!230 = !{!59, !40, i64 856728}
!231 = !{!232, !36, i64 0}
!232 = !{!"tone_mapping_struct_s", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !36, i64 12, !36, i64 16, !37, i64 20, !40, i64 8216, !36, i64 8224}
!233 = !{!232, !37, i64 8}
!234 = !{!35, !36, i64 324}
!235 = !{!232, !36, i64 12}
!236 = !{!35, !36, i64 328}
!237 = !{!232, !37, i64 9}
!238 = !{!35, !36, i64 332}
!239 = !{!35, !40, i64 336}
!240 = !{!59, !40, i64 856832}
!241 = !{!173, !36, i64 3976}
!242 = !{!243, !36, i64 16}
!243 = !{!"nalu_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !40, i64 24, !39, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64}
!244 = !{!50, !40, i64 312}
!245 = !{!246, !40, i64 0}
!246 = !{!"datapartition", !40, i64 0, !247, i64 8, !40, i64 40}
!247 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 16, !40, i64 24}
!248 = !{!249, !36, i64 24}
!249 = !{!"bit_stream", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !40, i64 16, !36, i64 24}
!250 = !{!249, !36, i64 0}
!251 = !{!249, !36, i64 8}
!252 = !{!249, !40, i64 16}
!253 = !{!243, !40, i64 24}
!254 = !{!243, !36, i64 4}
!255 = !{!249, !36, i64 12}
!256 = !{!249, !36, i64 4}
!257 = !{!50, !36, i64 1216}
!258 = !{!50, !36, i64 1188}
!259 = !{!59, !36, i64 849264}
!260 = !{!243, !36, i64 20}
!261 = !{!50, !36, i64 200}
!262 = !{!50, !36, i64 196}
!263 = !{!80, !36, i64 16}
!264 = !{!50, !36, i64 60}
!265 = !{!50, !36, i64 64}
!266 = !{!50, !36, i64 1196}
!267 = !{!50, !36, i64 1176}
!268 = !{!50, !36, i64 1208}
!269 = !{!50, !36, i64 1180}
!270 = !{!59, !40, i64 699416}
!271 = !{!272, !40, i64 4136}
!272 = !{!"", !68, i64 0, !36, i64 4128, !36, i64 4132, !40, i64 4136, !40, i64 4144, !40, i64 4152, !40, i64 4160, !40, i64 4168, !40, i64 4176, !40, i64 4184, !40, i64 4192, !40, i64 4200, !36, i64 4208, !40, i64 4216, !40, i64 4224, !40, i64 4232, !40, i64 4240, !40, i64 4248, !40, i64 4256, !36, i64 4264, !36, i64 4268, !273, i64 4272}
!273 = !{!"mvcvui_tag", !36, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !37, i64 96, !37, i64 97, !37, i64 98, !37, i64 100, !37, i64 228, !37, i64 356, !37, i64 388, !37, i64 389, !37, i64 390, !37, i64 391}
!274 = !{!59, !36, i64 851872}
!275 = !{i32 0, i32 2}
!276 = !{!50, !36, i64 1232}
!277 = !{!50, !36, i64 1236}
!278 = !{!59, !36, i64 848876}
!279 = !{!243, !39, i64 32}
!280 = !{!80, !36, i64 2208}
!281 = !{!173, !36, i64 784}
!282 = !{!"image.c:Error_tracking"}
!283 = distinct !{!283, !46}
!284 = !{!50, !36, i64 232}
!285 = !{!"image.c:imax"}
!286 = !{!"image.c:CopyPOC"}
!287 = !{!288, !36, i64 36}
!288 = !{!"old_slice_par", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48}
!289 = !{!288, !36, i64 4}
!290 = !{!288, !36, i64 0}
!291 = !{!50, !37, i64 180}
!292 = !{!288, !37, i64 28}
!293 = !{!288, !36, i64 8}
!294 = !{!288, !37, i64 29}
!295 = !{!50, !36, i64 52}
!296 = !{!288, !36, i64 32}
!297 = !{!68, !36, i64 2072}
!298 = !{!288, !36, i64 48}
!299 = !{!"image.c:init_picture_decoding"}
!300 = !{!80, !40, i64 2160}
!301 = !{!59, !36, i64 849008}
!302 = !{!50, !39, i64 1220}
!303 = distinct !{!303, !46}
!304 = !{!124, !39, i64 108}
!305 = distinct !{!305, !46}
!306 = distinct !{!306, !46}
!307 = !{!59, !40, i64 848704}
!308 = !{!59, !36, i64 849088}
!309 = distinct !{!309, !46}
!310 = !{!35, !36, i64 348}
!311 = !{!35, !36, i64 0}
!312 = !{!59, !36, i64 849028}
!313 = !{!59, !36, i64 855988}
!314 = !{!59, !36, i64 856004}
!315 = !{!316, !316, i64 0}
!316 = !{!"float", !37, i64 0}
!317 = !{!318, !36, i64 0}
!318 = !{!"snr_par", !36, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52}
!319 = !{!59, !36, i64 856008}
!320 = distinct !{!320, !46}
!321 = distinct !{!321, !46}
!322 = distinct !{!322, !46}
!323 = distinct !{!323, !46}
!324 = distinct !{!324, !46}
!325 = distinct !{!325, !46}
!326 = distinct !{!326, !46}
!327 = distinct !{!327, !46}
!328 = distinct !{!328, !46}
!329 = distinct !{!329, !46}
!330 = distinct !{!330, !46}
!331 = distinct !{!331, !46}
!332 = !{!"image.c:iabs2"}
!333 = !{!173, !36, i64 776}
!334 = !{!59, !36, i64 849220}
!335 = !{!59, !36, i64 849232}
!336 = !{!59, !36, i64 849224}
!337 = !{!59, !36, i64 849036}
!338 = !{!68, !36, i64 3216}
!339 = !{!59, !40, i64 856016}
!340 = !{!59, !40, i64 856024}
!341 = !{!35, !40, i64 136}
!342 = !{!35, !40, i64 128}
!343 = distinct !{!343, !46}
!344 = !{!35, !36, i64 320}
!345 = !{!"image.c:psnr"}
!346 = !{!"image.c:fast_memcpy"}
!347 = !{!288, !36, i64 12}
!348 = !{!50, !36, i64 80}
!349 = !{!80, !36, i64 2040}
!350 = !{!68, !36, i64 2080}
!351 = !{!288, !36, i64 40}
!352 = !{!288, !36, i64 44}
!353 = distinct !{!353, !46, !354, !355}
!354 = !{!"llvm.loop.isvectorized", i32 1}
!355 = !{!"llvm.loop.unroll.runtime.disable"}
!356 = distinct !{!356, !46}
!357 = distinct !{!357, !46}
!358 = distinct !{!358, !46, !354, !355}
!359 = distinct !{!359, !46}
!360 = distinct !{!360, !46}
!361 = distinct !{!361, !46}
!362 = !{!59, !36, i64 856840}
!363 = !{!59, !36, i64 856844}
!364 = !{!35, !36, i64 356}
!365 = !{!59, !36, i64 856848}
!366 = !{!59, !36, i64 856852}
!367 = !{!35, !36, i64 72}
!368 = !{!35, !36, i64 76}
!369 = !{!35, !36, i64 360}
!370 = !{!"image.c:MbAffPostProc"}
!371 = !{!35, !36, i64 108}
!372 = !{!35, !40, i64 184}
!373 = !{!59, !36, i64 849108}
!374 = !{!59, !36, i64 849112}
!375 = distinct !{!375, !46}
!376 = !{!124, !40, i64 8}
!377 = !{!124, !36, i64 24}
!378 = !{!59, !40, i64 856496}
!379 = !{!124, !39, i64 152}
!380 = !{!381, !37, i64 0}
!381 = !{!"object_buffer", !37, i64 0, !36, i64 4, !36, i64 8, !37, i64 12}
!382 = !{!125, !39, i64 0}
!383 = !{!125, !39, i64 2}
!384 = !{!124, !40, i64 0}
!385 = distinct !{!385, !46}
!386 = distinct !{!386, !46}
!387 = !{!"image.c:iabs"}
!388 = !{!35, !36, i64 292}
!389 = !{!"image.c:init_cur_imgy"}
!390 = !{!35, !36, i64 384}
!391 = !{!35, !40, i64 376}
!392 = distinct !{!392, !46}
!393 = distinct !{!393, !46}
!394 = distinct !{!394, !46}
!395 = distinct !{!395, !46}
!396 = !{!272, !36, i64 4132}
!397 = distinct !{!397, !46}
!398 = !{!"image.c:iClip3"}
!399 = !{!"image.c:imin"}
!400 = !{!"image.c:reset_mbs"}
!401 = !{!124, !37, i64 110}
!402 = !{!124, !37, i64 111}
!403 = !{!"image.c:fast_memset"}
!404 = !{!"image.c:update_mbaff_macroblock_data"}
!405 = distinct !{!405, !46}
!406 = distinct !{!406, !46}

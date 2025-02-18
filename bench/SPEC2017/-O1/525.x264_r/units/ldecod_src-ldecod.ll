; ModuleID = 'ldecod_src/ldecod.c'
source_filename = "ldecod_src/ldecod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decodedpic_t = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BlockPos = type { i16, i16 }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [1024 x i32], i32, i32, ptr }
%struct.snr_par = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.sBitsFile = type { ptr, ptr, ptr }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [60 x i8] c"AllocPartition: Memory allocation for Data Partition failed\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"AllocPartition: Memory allocation for Bitstream failed\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"AllocPartition: Memory allocation for streamBuffer failed\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Memory allocation for Slice datastruct in NAL-mode %d failed\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"malloc_slice: currSlice->listX[i]\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"init_global_buffers: p_Vid->mb_data\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"init_global_buffers: p_Vid->intra_block_JV\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"init_global_buffers: p_Vid->intra_block\00", align 1
@PicPos = dso_local local_unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"init_global_buffers: PicPos\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"init_global_buffers: p_Vid->siblock_JV\00", align 1
@p_Dec = dso_local local_unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [62 x i8] c" Input reference file                   : %s does not exist \0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"                                          SNR values are not available\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"alloc_decoder: p_Dec\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"alloc_video_params: p_Vid\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"alloc_video_params: p_Vid->old_slice\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"alloc_video_params: p_Vid->snr\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"alloc_video_params: p_Vid->p_Dpb_legacy\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"alloc_video_params: p_Vid->p_Dpb_layer[i]\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"alloc_video_params: (*p_Vid)->seiToneMapping\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"alloc_video_params: p_Vid->ppSliceList\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"alloc_params: p_Inp\00", align 1
@Report.yuv_formats = internal constant [4 x [4 x i8]] [[4 x i8] c"400\00", [4 x i8] c"420\00", [4 x i8] c"422\00", [4 x i8] c"444\00"], align 16
@.str.23 = private unnamed_addr constant [76 x i8] c"-------------------- Average SNR all frames ------------------------------\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c" SNR Y(dB)           : %5.2f\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c" SNR U(dB)           : %5.2f\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c" SNR V(dB)           : %5.2f\0A\00", align 1
@.str.27 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c" Exit JM %s decoder, ver %s \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"17 (FRExt)\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"17.1\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"\0A----------------------- Decoding Completed -------------------------------\0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c" Output status file                     : %s \0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"log.dec\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Error open file %s for appending\00", align 1
@.str.39 = private unnamed_addr constant [118 x i8] c" -------------------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.40 = private unnamed_addr constant [94 x i8] c"|  Decoder statistics. This file is made first time, later runs are appended               |\0A\00", align 1
@.str.41 = private unnamed_addr constant [119 x i8] c" ------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str.42 = private unnamed_addr constant [119 x i8] c"|   ver  | Date  | Time  |    Sequence        |#Img| Format  | YUV |Coding|SNRY 1|SNRU 1|SNRV 1|SNRY N|SNRU N|SNRV N|\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"%6.3f|\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"dataDec.txt\00", align 1
@.str.56 = private unnamed_addr constant [84 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %.3f\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @error(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %0) #16
  tail call void @exit(i32 noundef %1) #17
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FreeDecPicList(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %11
  %4 = phi ptr [ %6, %11 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.decodedpic_t, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.decodedpic_t, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @free(ptr noundef %8) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %11

11:                                               ; preds = %10, %3
  tail call void @free(ptr noundef %4) #18
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %3, !llvm.loop !42

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @init_frext(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 64
  %3 = load i16, ptr %2, align 8, !tbaa !45
  %4 = sext i16 %3 to i32
  %5 = mul nsw i32 %4, 6
  %6 = add nsw i32 %5, -48
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 67
  store i32 %6, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 65
  %9 = load i16, ptr %8, align 2, !tbaa !53
  %10 = icmp sgt i16 %3, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i16 %3, i16 %9
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i16 [ %3, %1 ], [ %17, %11 ]
  %20 = icmp sgt i16 %19, 8
  %21 = select i1 %20, i32 16, i32 8
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 63
  store i32 %21, ptr %22, align 4, !tbaa !59
  %23 = add nsw i32 %4, -1
  %24 = shl nuw i32 1, %23
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  store i32 %24, ptr %25, align 4, !tbaa !60
  %26 = zext nneg i16 %3 to i32
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  store i32 %28, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 0, i64 1
  store i32 16, ptr %31, align 4, !tbaa !60
  store i32 16, ptr %30, align 4, !tbaa !60
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !55
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %18
  %38 = sext i16 %9 to i32
  %39 = mul nsw i32 %38, 6
  %40 = add nsw i32 %39, -48
  %41 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 68
  store i32 %40, ptr %41, align 8, !tbaa !61
  %42 = add nsw i32 %38, -1
  %43 = shl nuw i32 1, %42
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  store i32 %43, ptr %44, align 4, !tbaa !60
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 2
  store i32 %43, ptr %45, align 4, !tbaa !60
  %46 = zext nneg i16 %9 to i32
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 1
  store i32 %48, ptr %49, align 4, !tbaa !60
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 2
  store i32 %48, ptr %50, align 8, !tbaa !60
  %51 = load i32, ptr %34, align 4, !tbaa !55
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, -2
  %54 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 74
  store i32 %53, ptr %54, align 8, !tbaa !62
  %55 = ashr i32 %52, 1
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 75
  store i32 %55, ptr %56, align 4, !tbaa !63
  %57 = shl i32 %53, 1
  %58 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 76
  store i32 %57, ptr %58, align 8, !tbaa !64
  %59 = add i32 %51, -1
  %60 = icmp ult i32 %59, 2
  %61 = select i1 %60, i32 8, i32 16
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  store i32 %61, ptr %62, align 4, !tbaa !65
  %63 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 2
  store i32 %61, ptr %63, align 4, !tbaa !60
  %64 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1
  store i32 %61, ptr %64, align 4, !tbaa !60
  %65 = load i32, ptr %34, align 4, !tbaa !55
  %66 = and i32 %65, -2
  %67 = icmp eq i32 %66, 2
  %68 = select i1 %67, i32 16, i32 8
  %69 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  store i32 %68, ptr %69, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 2, i64 1
  store i32 %68, ptr %70, align 4, !tbaa !60
  %71 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1, i64 1
  store i32 %68, ptr %71, align 4, !tbaa !60
  %72 = select i1 %60, i32 7, i32 3
  %73 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 84
  store i32 %72, ptr %73, align 4, !tbaa !67
  %74 = select i1 %67, i32 3, i32 7
  %75 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 85
  store i32 %74, ptr %75, align 8, !tbaa !68
  %76 = select i1 %60, i32 3, i32 2
  %77 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 86
  store i32 %76, ptr %77, align 4, !tbaa !69
  %78 = select i1 %67, i32 2, i32 3
  %79 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 87
  store i32 %78, ptr %79, align 8, !tbaa !70
  %80 = add nuw nsw i32 %78, %76
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 88
  store i32 %80, ptr %81, align 4, !tbaa !71
  br label %89

82:                                               ; preds = %18
  %83 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 68
  store i32 0, ptr %83, align 8, !tbaa !61
  %84 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 1
  store i32 0, ptr %84, align 4, !tbaa !60
  %85 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 2
  store i32 0, ptr %85, align 8, !tbaa !60
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 74
  %87 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1
  %88 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %86, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %87, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %88, i8 0, i64 20, i1 false)
  br label %89

89:                                               ; preds = %82, %37
  %90 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82
  %91 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 0, i64 1
  store i32 4, ptr %91, align 4, !tbaa !60
  store i32 4, ptr %90, align 4, !tbaa !60
  %92 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !60
  %94 = ashr i32 %93, 2
  %95 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 2
  store i32 %94, ptr %95, align 4, !tbaa !60
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 1
  store i32 %94, ptr %96, align 4, !tbaa !60
  %97 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1, i64 1
  %98 = load i32, ptr %97, align 4, !tbaa !60
  %99 = ashr i32 %98, 2
  %100 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 2, i64 1
  store i32 %99, ptr %100, align 4, !tbaa !60
  %101 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 1, i64 1
  store i32 %99, ptr %101, align 4, !tbaa !60
  %102 = tail call i32 @CeilLog2_sf(i32 noundef 16) #18
  %103 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83
  %104 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 0, i64 1
  store i32 %102, ptr %104, align 4, !tbaa !60
  store i32 %102, ptr %103, align 4, !tbaa !60
  %105 = load i32, ptr %92, align 4, !tbaa !60
  %106 = tail call i32 @CeilLog2_sf(i32 noundef %105) #18
  %107 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 2
  store i32 %106, ptr %107, align 4, !tbaa !60
  %108 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 1
  store i32 %106, ptr %108, align 4, !tbaa !60
  %109 = load i32, ptr %97, align 4, !tbaa !60
  %110 = tail call i32 @CeilLog2_sf(i32 noundef %109) #18
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 2, i64 1
  store i32 %110, ptr %111, align 4, !tbaa !60
  %112 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 1, i64 1
  store i32 %110, ptr %112, align 4, !tbaa !60
  ret void
}

declare i32 @CeilLog2_sf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPartition(i32 noundef %0) local_unnamed_addr #3 {
  %2 = sext i32 %0 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 48) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  br label %15

9:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.1, i64 60, i1 false)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !34
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

12:                                               ; preds = %23
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %30, label %15, !llvm.loop !72

15:                                               ; preds = %7, %12
  %16 = phi i64 [ 0, %7 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.datapartition, ptr %3, i64 %16
  %18 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  store ptr %18, ptr %17, align 8, !tbaa !73
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.2, i64 55, i1 false)
  %21 = load ptr, ptr @stderr, align 8, !tbaa !34
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

23:                                               ; preds = %15
  %24 = tail call noalias dereferenceable_or_null(8000000) ptr @calloc(i64 noundef 8000000, i64 noundef 1) #19
  %25 = getelementptr inbounds %struct.bit_stream, ptr %18, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !76
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %12

27:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.3, i64 58, i1 false)
  %28 = load ptr, ptr @stderr, align 8, !tbaa !34
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

30:                                               ; preds = %12, %5
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @FreePartition(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = getelementptr inbounds %struct.datapartition, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.bit_stream, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  tail call void @free(ptr noundef %11) #18
  %12 = load ptr, ptr %8, align 8, !tbaa !73
  tail call void @free(ptr noundef %12) #18
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !78

15:                                               ; preds = %6, %2
  tail call void @free(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @malloc_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = tail call noalias dereferenceable_or_null(13648) ptr @calloc(i64 noundef 1, i64 noundef 13648) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !79
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, i32 noundef %7) #18
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  tail call void @exit(i32 noundef 100) #17
  unreachable

11:                                               ; preds = %2
  %12 = tail call ptr @create_contexts_MotionInfo() #18
  %13 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 58
  store ptr %12, ptr %13, align 8, !tbaa !82
  %14 = tail call ptr @create_contexts_TextureInfo() #18
  %15 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 59
  store ptr %14, ptr %15, align 8, !tbaa !85
  %16 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 41
  store i32 3, ptr %16, align 4, !tbaa !86
  %17 = tail call ptr @AllocPartition(i32 noundef 3)
  %18 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  store ptr %17, ptr %18, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 100
  %20 = tail call i32 @get_mem3Dint(ptr noundef nonnull %19, i32 noundef 2, i32 noundef 32, i32 noundef 3) #18
  %21 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 101
  %22 = tail call i32 @get_mem3Dint(ptr noundef nonnull %21, i32 noundef 6, i32 noundef 32, i32 noundef 3) #18
  %23 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 102
  %24 = tail call i32 @get_mem4Dint(ptr noundef nonnull %23, i32 noundef 6, i32 noundef 32, i32 noundef 32, i32 noundef 3) #18
  %25 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 77
  %26 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %25, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %27 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 78
  %28 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %27, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %29 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 79
  %30 = tail call i32 @get_mem3Dint(ptr noundef nonnull %29, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %31 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 80
  %32 = tail call i32 @get_mem3Dint(ptr noundef nonnull %31, i32 noundef 3, i32 noundef 16, i32 noundef 16) #18
  %33 = tail call i32 @allocate_pred_mem(ptr noundef nonnull %3) #18
  %34 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 66
  store i32 -1, ptr %34, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 67
  store i32 0, ptr %35, align 4, !tbaa !89
  %36 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 68
  store i32 0, ptr %36, align 8, !tbaa !90
  br label %37

37:                                               ; preds = %11, %37
  %38 = phi i64 [ 0, %11 ], [ %40, %37 ]
  %39 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 110, i64 %38
  store i32 1, ptr %39, align 4, !tbaa !60
  %40 = add nuw nsw i64 %38, 1
  %41 = icmp eq i64 %40, 17
  br i1 %41, label %42, label %37, !llvm.loop !91

42:                                               ; preds = %37, %48
  %43 = phi i64 [ %49, %48 ], [ 0, %37 ]
  %44 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #19
  %45 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %43
  store ptr %44, ptr %45, align 8, !tbaa !34
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #18
  br label %48

48:                                               ; preds = %42, %47
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %51, label %42, !llvm.loop !92

51:                                               ; preds = %48, %60
  %52 = phi i64 [ %62, %60 ], [ 0, %48 ]
  %53 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %52
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ 0, %51 ], [ %58, %54 ]
  %56 = load ptr, ptr %53, align 8, !tbaa !34
  %57 = getelementptr inbounds ptr, ptr %56, i64 %55
  store ptr null, ptr %57, align 8, !tbaa !34
  %58 = add nuw nsw i64 %55, 1
  %59 = icmp eq i64 %58, 33
  br i1 %59, label %60, label %54, !llvm.loop !93

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 55, i64 %52
  store i8 0, ptr %61, align 1, !tbaa !94
  %62 = add nuw nsw i64 %52, 1
  %63 = icmp eq i64 %62, 6
  br i1 %63, label %64, label %51, !llvm.loop !95

64:                                               ; preds = %60
  ret ptr %3
}

declare ptr @create_contexts_MotionInfo() local_unnamed_addr #6

declare ptr @create_contexts_TextureInfo() local_unnamed_addr #6

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @allocate_pred_mem(ptr noundef) local_unnamed_addr #6

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @init_global_buffers(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 129
  %3 = load i32, ptr %2, align 4, !tbaa !96
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free_global_buffers(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %11 = load i32, ptr %10, align 4, !tbaa !98
  %12 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %7, i32 noundef %9, i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !55
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 131
  br i1 %17, label %26, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %21 = load i32, ptr %20, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %18, i32 noundef 2, i32 noundef %21, i32 noundef %23) #18
  %25 = add nsw i32 %24, %12
  br label %27

26:                                               ; preds = %6
  store ptr null, ptr %18, align 8, !tbaa !101
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i32 [ %25, %19 ], [ %12, %26 ]
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %30 = load i32, ptr %29, align 8, !tbaa !102
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  br i1 %31, label %46, label %33

33:                                               ; preds = %27, %41
  %34 = phi i64 [ %42, %41 ], [ 0, %27 ]
  %35 = load i32, ptr %32, align 8, !tbaa !103
  %36 = zext i32 %35 to i64
  %37 = tail call noalias ptr @calloc(i64 noundef %36, i64 noundef 480) #19
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %34
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  br label %41

41:                                               ; preds = %33, %40
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %33, !llvm.loop !104

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  store ptr null, ptr %45, align 8, !tbaa !105
  br label %53

46:                                               ; preds = %27
  %47 = load i32, ptr %32, align 8, !tbaa !103
  %48 = zext i32 %47 to i64
  %49 = tail call noalias ptr @calloc(i64 noundef %48, i64 noundef 480) #19
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  store ptr %49, ptr %50, align 8, !tbaa !105
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #18
  br label %53

53:                                               ; preds = %46, %52, %44
  %54 = load i32, ptr %29, align 8, !tbaa !102
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  br i1 %55, label %70, label %57

57:                                               ; preds = %53, %65
  %58 = phi i64 [ %66, %65 ], [ 0, %53 ]
  %59 = load i32, ptr %56, align 8, !tbaa !103
  %60 = zext i32 %59 to i64
  %61 = tail call noalias ptr @calloc(i64 noundef %60, i64 noundef 1) #19
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %58
  store ptr %61, ptr %62, align 8, !tbaa !34
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #18
  br label %65

65:                                               ; preds = %57, %64
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %57, !llvm.loop !106

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  store ptr null, ptr %69, align 8, !tbaa !107
  br label %77

70:                                               ; preds = %53
  %71 = load i32, ptr %56, align 8, !tbaa !103
  %72 = zext i32 %71 to i64
  %73 = tail call noalias ptr @calloc(i64 noundef %72, i64 noundef 1) #19
  %74 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  store ptr %73, ptr %74, align 8, !tbaa !107
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #18
  br label %77

77:                                               ; preds = %70, %76, %68
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  %79 = load i32, ptr %78, align 8, !tbaa !103
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = tail call noalias ptr @calloc(i64 noundef %81, i64 noundef 4) #19
  store ptr %82, ptr @PicPos, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #18
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i32, ptr %78, align 8, !tbaa !103
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %90 = load i32, ptr %89, align 4, !tbaa !108
  %91 = load ptr, ptr @PicPos, align 8, !tbaa !34
  %92 = add nuw i32 %86, 1
  %93 = zext i32 %92 to i64
  br label %94

94:                                               ; preds = %88, %94
  %95 = phi i64 [ 0, %88 ], [ %104, %94 ]
  %96 = trunc i64 %95 to i32
  %97 = urem i32 %96, %90
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.BlockPos, ptr %91, i64 %95
  store i16 %98, ptr %99, align 2, !tbaa !109
  %100 = trunc i64 %95 to i32
  %101 = udiv i32 %100, %90
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds %struct.BlockPos, ptr %91, i64 %95, i32 1
  store i16 %102, ptr %103, align 2, !tbaa !111
  %104 = add nuw nsw i64 %95, 1
  %105 = icmp eq i64 %104, %93
  br i1 %105, label %106, label %94, !llvm.loop !112

106:                                              ; preds = %94, %85
  %107 = load i32, ptr %29, align 8, !tbaa !102
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  br label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ 0, %109 ], [ %120, %112 ]
  %114 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %113
  %115 = load i32, ptr %110, align 4, !tbaa !113
  %116 = shl i32 %115, 2
  %117 = load i32, ptr %111, align 4, !tbaa !108
  %118 = shl i32 %117, 2
  %119 = tail call i32 @get_mem2D(ptr noundef nonnull %114, i32 noundef %116, i32 noundef %118) #18
  %120 = add nuw nsw i64 %113, 1
  %121 = icmp eq i64 %120, 3
  br i1 %121, label %122, label %112, !llvm.loop !114

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  store ptr null, ptr %123, align 8, !tbaa !115
  br label %134

124:                                              ; preds = %106
  %125 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  %126 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %127 = load i32, ptr %126, align 4, !tbaa !113
  %128 = shl i32 %127, 2
  %129 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %130 = load i32, ptr %129, align 4, !tbaa !108
  %131 = shl i32 %130, 2
  %132 = tail call i32 @get_mem2D(ptr noundef nonnull %125, i32 noundef %128, i32 noundef %131) #18
  %133 = add nsw i32 %132, %28
  br label %134

134:                                              ; preds = %124, %122
  %135 = phi i32 [ %28, %122 ], [ %133, %124 ]
  %136 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 29
  %137 = load i32, ptr %78, align 8, !tbaa !103
  %138 = tail call i32 @get_mem4D(ptr noundef nonnull %136, i32 noundef %137, i32 noundef 3, i32 noundef 4, i32 noundef 4) #18
  %139 = add nsw i32 %138, %135
  %140 = load i32, ptr %29, align 8, !tbaa !102
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %144 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  br label %145

145:                                              ; preds = %142, %154
  %146 = phi i64 [ 0, %142 ], [ %155, %154 ]
  %147 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 31, i64 %146
  %148 = load i32, ptr %143, align 4, !tbaa !113
  %149 = load i32, ptr %144, align 4, !tbaa !108
  %150 = tail call i32 @get_mem2Dint(ptr noundef nonnull %147, i32 noundef %148, i32 noundef %149) #18
  %151 = load ptr, ptr %147, align 8, !tbaa !34
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #18
  br label %154

154:                                              ; preds = %145, %153
  %155 = add nuw nsw i64 %146, 1
  %156 = icmp eq i64 %155, 3
  br i1 %156, label %157, label %145, !llvm.loop !116

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  store ptr null, ptr %158, align 8, !tbaa !117
  br label %167

159:                                              ; preds = %134
  %160 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  %161 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %162 = load i32, ptr %161, align 4, !tbaa !113
  %163 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %164 = load i32, ptr %163, align 4, !tbaa !108
  %165 = tail call i32 @get_mem2Dint(ptr noundef nonnull %160, i32 noundef %162, i32 noundef %164) #18
  %166 = add nsw i32 %165, %139
  br label %167

167:                                              ; preds = %159, %157
  %168 = phi i32 [ %139, %157 ], [ %166, %159 ]
  tail call void @init_qp_process(ptr noundef %0) #18
  store i32 1, ptr %2, align 4, !tbaa !96
  %169 = load i32, ptr %78, align 8, !tbaa !103
  %170 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 59
  store i32 %169, ptr %170, align 4, !tbaa !118
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define dso_local void @free_global_buffers(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @free_mem2Dpel(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 131
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @free_mem3Dpel(ptr noundef nonnull %5) #18
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  tail call void @free_mem4D(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ %24, %14 ], [ 0, %8 ]
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  tail call void @free(ptr noundef %17) #18
  store ptr null, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 31, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  tail call void @free_mem2Dint(ptr noundef %19) #18
  store ptr null, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @free_mem2D(ptr noundef %21) #18
  store ptr null, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %15
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  tail call void @free(ptr noundef %23) #18
  store ptr null, ptr %22, align 8, !tbaa !34
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %46, label %14, !llvm.loop !121

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #18
  store ptr null, ptr %27, align 8, !tbaa !105
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free_mem2Dint(ptr noundef nonnull %33) #18
  store ptr null, ptr %32, align 8, !tbaa !117
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @free_mem2D(ptr noundef nonnull %38) #18
  store ptr null, ptr %37, align 8, !tbaa !115
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !107
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef %43) #18
  store ptr null, ptr %42, align 8, !tbaa !107
  br label %46

46:                                               ; preds = %14, %41, %45
  %47 = load ptr, ptr @PicPos, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @free(ptr noundef %47) #18
  store ptr null, ptr @PicPos, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %49, %46
  tail call void @free_qp_matrices(ptr noundef %0) #18
  %51 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 129
  store i32 0, ptr %51, align 4, !tbaa !96
  ret void
}

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem4D(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @init_qp_process(ptr noundef) local_unnamed_addr #6

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #6

declare void @free_mem3Dpel(ptr noundef) local_unnamed_addr #6

declare void @free_mem4D(ptr noundef) local_unnamed_addr #6

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #6

declare void @free_mem2D(ptr noundef) local_unnamed_addr #6

declare void @free_qp_matrices(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define dso_local void @report_stats_on_error() local_unnamed_addr #0 {
  tail call void @exit(i32 noundef -1) #17
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClearDecPicList(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 169
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !122
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %16

8:                                                ; preds = %11
  %9 = load i32, ptr %14, align 8, !tbaa !122
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16, !llvm.loop !123

11:                                               ; preds = %5, %8
  %12 = phi ptr [ %14, %8 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct.decodedpic_t, ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %8, !llvm.loop !123

16:                                               ; preds = %8, %5
  %17 = phi ptr [ %3, %5 ], [ %14, %8 ]
  %18 = phi ptr [ null, %5 ], [ %12, %8 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !124
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %24, %21 ], [ %17, %16 ]
  %23 = getelementptr inbounds %struct.decodedpic_t, ptr %22, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !125

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.decodedpic_t, ptr %22, i64 0, i32 14
  store ptr %19, ptr %27, align 8, !tbaa !38
  store ptr %17, ptr %2, align 8, !tbaa !124
  %28 = getelementptr inbounds %struct.decodedpic_t, ptr %18, i64 0, i32 14
  store ptr null, ptr %28, align 8, !tbaa !38
  br label %29

29:                                               ; preds = %11, %1, %26, %16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @GetOneAvailDecPicFromList(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %3, label %9, label %5

5:                                                ; preds = %2
  br i1 %4, label %29, label %6

6:                                                ; preds = %5
  %7 = load i32, ptr %0, align 8, !tbaa !122
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %16, label %29

9:                                                ; preds = %2
  br i1 %4, label %29, label %10

10:                                               ; preds = %9
  %11 = load i32, ptr %0, align 8, !tbaa !122
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %24

13:                                               ; preds = %16
  %14 = load i32, ptr %19, align 8, !tbaa !122
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %29, !llvm.loop !126

16:                                               ; preds = %6, %13
  %17 = phi ptr [ %19, %13 ], [ %0, %6 ]
  %18 = getelementptr inbounds %struct.decodedpic_t, ptr %17, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %13, !llvm.loop !126

21:                                               ; preds = %24
  %22 = load i32, ptr %27, align 8, !tbaa !122
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !llvm.loop !127

24:                                               ; preds = %10, %21
  %25 = phi ptr [ %27, %21 ], [ %0, %10 ]
  %26 = getelementptr inbounds %struct.decodedpic_t, ptr %25, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21, !llvm.loop !127

29:                                               ; preds = %13, %16, %21, %24, %6, %10, %5, %9
  %30 = phi ptr [ null, %9 ], [ null, %5 ], [ %0, %10 ], [ %0, %6 ], [ null, %24 ], [ %27, %21 ], [ null, %16 ], [ %19, %13 ]
  %31 = phi ptr [ null, %9 ], [ null, %5 ], [ null, %10 ], [ null, %6 ], [ %25, %24 ], [ %25, %21 ], [ %17, %16 ], [ %17, %13 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #19
  %35 = getelementptr inbounds %struct.decodedpic_t, ptr %31, i64 0, i32 14
  store ptr %34, ptr %35, align 8, !tbaa !38
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %30, %29 ], [ %34, %33 ]
  ret ptr %37
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OpenDecoder(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #19
  store ptr %2, ptr @p_Dec, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %5) #16
  br label %92

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.decoder_params, ptr %2, i64 0, i32 1
  %9 = tail call noalias dereferenceable_or_null(856880) ptr @calloc(i64 noundef 1, i64 noundef 856880) #19
  store ptr %9, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #18
  br label %12

12:                                               ; preds = %11, %7
  %13 = tail call noalias dereferenceable_or_null(52) ptr @calloc(i64 noundef 1, i64 noundef 52) #19
  %14 = load ptr, ptr %8, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 12
  store ptr %13, ptr %15, align 8, !tbaa !128
  %16 = icmp eq ptr %13, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #18
  br label %18

18:                                               ; preds = %17, %12
  %19 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #19
  %20 = load ptr, ptr %8, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 13
  store ptr %19, ptr %21, align 8, !tbaa !129
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #18
  br label %24

24:                                               ; preds = %23, %18
  %25 = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19
  %26 = load ptr, ptr %8, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 152
  store ptr %25, ptr %27, align 8, !tbaa !130
  %28 = icmp eq ptr %25, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #18
  br label %30

30:                                               ; preds = %29, %24
  %31 = load ptr, ptr %8, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.video_par, ptr %31, i64 0, i32 152
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  %34 = getelementptr inbounds %struct.video_par, ptr %31, i64 0, i32 151
  store ptr %33, ptr %34, align 8, !tbaa !131
  %35 = load ptr, ptr %8, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.video_par, ptr %35, i64 0, i32 151
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  store ptr %35, ptr %37, align 8, !tbaa !132
  %38 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %37, i64 0, i32 12
  store i32 0, ptr %38, align 8, !tbaa !134
  br label %39

39:                                               ; preds = %30, %46
  %40 = phi i64 [ 0, %30 ], [ %51, %46 ]
  %41 = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #19
  %42 = load ptr, ptr %8, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.video_par, ptr %42, i64 0, i32 153, i64 %40
  store ptr %41, ptr %43, align 8, !tbaa !34
  %44 = icmp eq ptr %41, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #18
  br label %46

46:                                               ; preds = %45, %39
  %47 = load ptr, ptr %8, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.video_par, ptr %47, i64 0, i32 153, i64 %40
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  store ptr %47, ptr %49, align 8, !tbaa !132
  %50 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %49, i64 0, i32 12
  store i32 0, ptr %50, align 8, !tbaa !134
  %51 = add nuw nsw i64 %40, 1
  %52 = icmp eq i64 %40, 0
  br i1 %52, label %39, label %53, !llvm.loop !135

53:                                               ; preds = %46
  %54 = load ptr, ptr %8, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.video_par, ptr %54, i64 0, i32 129
  store i32 0, ptr %55, align 4, !tbaa !96
  %56 = tail call noalias dereferenceable_or_null(8232) ptr @calloc(i64 noundef 1, i64 noundef 8232) #19
  %57 = getelementptr inbounds %struct.video_par, ptr %54, i64 0, i32 158
  store ptr %56, ptr %57, align 8, !tbaa !136
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #18
  br label %60

60:                                               ; preds = %59, %53
  %61 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #19
  %62 = load ptr, ptr %8, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.video_par, ptr %62, i64 0, i32 19
  store ptr %61, ptr %63, align 8, !tbaa !137
  %64 = icmp eq ptr %61, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #18
  br label %66

66:                                               ; preds = %65, %60
  %67 = load ptr, ptr %8, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.video_par, ptr %67, i64 0, i32 17
  store i32 16, ptr %68, align 4, !tbaa !138
  %69 = getelementptr inbounds %struct.video_par, ptr %67, i64 0, i32 34
  store ptr null, ptr %69, align 8, !tbaa !139
  %70 = tail call ptr @AllocNALU(i32 noundef 8000000) #18
  %71 = load ptr, ptr %8, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.video_par, ptr %71, i64 0, i32 171
  store ptr %70, ptr %72, align 8, !tbaa !140
  %73 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #19
  %74 = load ptr, ptr %8, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.video_par, ptr %74, i64 0, i32 169
  store ptr %73, ptr %75, align 8, !tbaa !124
  %76 = tail call ptr @AllocPPS() #18
  %77 = load ptr, ptr %8, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.video_par, ptr %77, i64 0, i32 179
  store ptr %76, ptr %78, align 8, !tbaa !141
  %79 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %80 = tail call noalias dereferenceable_or_null(4016) ptr @calloc(i64 noundef 1, i64 noundef 4016) #19
  store ptr %80, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #18
  br label %83

83:                                               ; preds = %82, %66
  %84 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %85 = load ptr, ptr %84, align 8, !tbaa !142
  %86 = getelementptr inbounds %struct.decoder_params, ptr %84, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !144
  store ptr %85, ptr %87, align 8, !tbaa !145
  %88 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.decoder_params, ptr %88, i64 0, i32 4
  store ptr null, ptr %89, align 8, !tbaa !146
  %90 = getelementptr inbounds %struct.decoder_params, ptr %88, i64 0, i32 2
  store i64 0, ptr %90, align 8, !tbaa !147
  %91 = getelementptr inbounds %struct.decoder_params, ptr %88, i64 0, i32 5
  store i32 0, ptr %91, align 8, !tbaa !148
  br label %92

92:                                               ; preds = %4, %83
  %93 = phi i32 [ -1, %4 ], [ 32768, %83 ]
  br i1 %3, label %184, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %96 = load ptr, ptr %95, align 8, !tbaa !142
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %96, ptr noundef nonnull align 8 dereferenceable(4016) %0, i64 4016, i1 false)
  %97 = load ptr, ptr %95, align 8, !tbaa !142
  %98 = getelementptr inbounds %struct.inp_par, ptr %97, i64 0, i32 17
  %99 = load i32, ptr %98, align 4, !tbaa !149
  %100 = getelementptr inbounds %struct.decoder_params, ptr %95, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !144
  %102 = getelementptr inbounds %struct.video_par, ptr %101, i64 0, i32 95
  store i32 %99, ptr %102, align 8, !tbaa !150
  %103 = getelementptr inbounds %struct.inp_par, ptr %97, i64 0, i32 18
  %104 = load i32, ptr %103, align 8, !tbaa !151
  %105 = getelementptr inbounds %struct.video_par, ptr %101, i64 0, i32 93
  store i32 %104, ptr %105, align 8, !tbaa !152
  %106 = getelementptr inbounds %struct.inp_par, ptr %97, i64 0, i32 19
  %107 = load i32, ptr %106, align 4, !tbaa !153
  %108 = getelementptr inbounds %struct.video_par, ptr %101, i64 0, i32 94
  store i32 %107, ptr %108, align 4, !tbaa !154
  %109 = getelementptr inbounds %struct.inp_par, ptr %97, i64 0, i32 2
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %94
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %109, ptr noundef nonnull dereferenceable(3) @.str.11) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %109, i32 noundef 0) #18
  %117 = load ptr, ptr %100, align 8, !tbaa !144
  %118 = getelementptr inbounds %struct.video_par, ptr %117, i64 0, i32 123
  store i32 %116, ptr %118, align 4, !tbaa !155
  %119 = icmp eq i32 %116, -1
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load ptr, ptr @stdout, align 8, !tbaa !34
  %122 = load ptr, ptr %95, align 8, !tbaa !142
  %123 = getelementptr inbounds %struct.inp_par, ptr %122, i64 0, i32 2
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.12, ptr noundef nonnull %123)
  %125 = load ptr, ptr @stdout, align 8, !tbaa !34
  %126 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 71, i64 1, ptr %125)
  br label %129

127:                                              ; preds = %112, %94
  %128 = getelementptr inbounds %struct.video_par, ptr %101, i64 0, i32 123
  store i32 -1, ptr %128, align 4, !tbaa !155
  br label %129

129:                                              ; preds = %115, %120, %127
  %130 = load ptr, ptr %100, align 8, !tbaa !144
  %131 = load ptr, ptr %95, align 8, !tbaa !142
  %132 = getelementptr inbounds %struct.inp_par, ptr %131, i64 0, i32 3
  %133 = load i32, ptr %132, align 8, !tbaa !79
  tail call void @initBitsFile(ptr noundef %130, i32 noundef %133) #18
  %134 = load ptr, ptr %100, align 8, !tbaa !144
  %135 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 145
  %136 = load ptr, ptr %135, align 8, !tbaa !156
  %137 = load ptr, ptr %136, align 8, !tbaa !157
  %138 = load ptr, ptr %95, align 8, !tbaa !142
  tail call void %137(ptr noundef %134, ptr noundef %138) #18
  %139 = load ptr, ptr %100, align 8, !tbaa !144
  %140 = getelementptr inbounds %struct.video_par, ptr %139, i64 0, i32 12
  %141 = load ptr, ptr %140, align 8, !tbaa !128
  tail call void @init_old_slice(ptr noundef %141) #18
  %142 = load ptr, ptr %100, align 8, !tbaa !144
  %143 = load ptr, ptr %142, align 8, !tbaa !145
  %144 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 59
  store i32 -1, ptr %144, align 4, !tbaa !118
  %145 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 130
  %146 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 100
  store i32 0, ptr %146, align 4, !tbaa !159
  %147 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 101
  store i32 0, ptr %147, align 8, !tbaa !160
  %148 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %145, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %148, align 4, !tbaa !161
  %149 = getelementptr inbounds %struct.inp_par, ptr %143, i64 0, i32 4
  %150 = load i32, ptr %149, align 4, !tbaa !162
  %151 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 90
  store i32 %150, ptr %151, align 4, !tbaa !163
  %152 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 91
  store i32 0, ptr %152, align 8, !tbaa !164
  %153 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 14
  store i32 0, ptr %153, align 8, !tbaa !165
  %154 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 22
  store i32 2, ptr %154, align 8, !tbaa !166
  %155 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 128
  store i32 0, ptr %155, align 8, !tbaa !167
  %156 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 13
  %157 = load ptr, ptr %156, align 8, !tbaa !129
  store i32 0, ptr %157, align 4, !tbaa !168
  %158 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 126
  store i32 0, ptr %158, align 8, !tbaa !170
  %159 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 120
  store i64 0, ptr %159, align 8, !tbaa !171
  %160 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 136
  store ptr null, ptr %160, align 8, !tbaa !172
  %161 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 155
  %162 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 124
  store i32 0, ptr %162, align 8, !tbaa !173
  %163 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 125
  store i32 0, ptr %163, align 4, !tbaa !174
  %164 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 146
  %165 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %164, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %161, i8 0, i64 16, i1 false)
  %166 = load ptr, ptr %165, align 8, !tbaa !136
  tail call void @init_tone_mapping_sei(ptr noundef %166) #18
  %167 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 7
  store i32 0, ptr %167, align 8, !tbaa !175
  %168 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 8
  store i32 0, ptr %168, align 4, !tbaa !176
  %169 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 9
  store i32 0, ptr %169, align 8, !tbaa !177
  %170 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 32
  store i32 0, ptr %170, align 8, !tbaa !178
  %171 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 117
  store i32 0, ptr %171, align 8, !tbaa !179
  %172 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 172
  store i32 32, ptr %172, align 8, !tbaa !180
  %173 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 173
  store i32 12, ptr %173, align 4, !tbaa !181
  %174 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 174
  store i32 16, ptr %174, align 8, !tbaa !182
  %175 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 175
  store i32 8, ptr %175, align 4, !tbaa !183
  %176 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 177
  store i32 0, ptr %176, align 4, !tbaa !184
  %177 = getelementptr inbounds %struct.video_par, ptr %142, i64 0, i32 176
  store i32 3, ptr %177, align 8, !tbaa !185
  %178 = load ptr, ptr %100, align 8, !tbaa !144
  tail call void @init_out_buffer(ptr noundef %178) #18
  %179 = load ptr, ptr %100, align 8, !tbaa !144
  %180 = getelementptr inbounds %struct.video_par, ptr %179, i64 0, i32 121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4100) %180, i8 -1, i64 4100, i1 false)
  %181 = getelementptr inbounds %struct.video_par, ptr %179, i64 0, i32 2
  store ptr null, ptr %181, align 8, !tbaa !54
  %182 = getelementptr inbounds %struct.video_par, ptr %179, i64 0, i32 5
  store ptr null, ptr %182, align 8, !tbaa !186
  %183 = getelementptr inbounds %struct.video_par, ptr %179, i64 0, i32 6
  tail call void @init_subset_sps_list(ptr noundef nonnull %183, i32 noundef 32) #18
  br label %184

184:                                              ; preds = %92, %129
  %185 = phi i32 [ 0, %129 ], [ %93, %92 ]
  ret i32 %185
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

declare void @initBitsFile(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @init_old_slice(ptr noundef) local_unnamed_addr #6

declare void @init_out_buffer(ptr noundef) local_unnamed_addr #6

declare void @init_subset_sps_list(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @DecodeOneFrame(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.decoder_params, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 169
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 8, !tbaa !122
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %19

11:                                               ; preds = %14
  %12 = load i32, ptr %17, align 8, !tbaa !122
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !llvm.loop !123

14:                                               ; preds = %8, %11
  %15 = phi ptr [ %17, %11 ], [ %6, %8 ]
  %16 = getelementptr inbounds %struct.decodedpic_t, ptr %15, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %11, !llvm.loop !123

19:                                               ; preds = %11, %8
  %20 = phi ptr [ %6, %8 ], [ %17, %11 ]
  %21 = phi ptr [ null, %8 ], [ %15, %11 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !124
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = getelementptr inbounds %struct.decodedpic_t, ptr %25, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %24, !llvm.loop !125

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.decodedpic_t, ptr %25, i64 0, i32 14
  store ptr %22, ptr %30, align 8, !tbaa !38
  store ptr %20, ptr %5, align 8, !tbaa !124
  %31 = getelementptr inbounds %struct.decodedpic_t, ptr %21, i64 0, i32 14
  store ptr null, ptr %31, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %14, %1, %19, %29
  %33 = tail call i32 @decode_one_frame(ptr noundef %2) #18
  switch i32 %33, label %35 [
    i32 2, label %37
    i32 1, label %34
  ]

34:                                               ; preds = %32
  br label %37

35:                                               ; preds = %32
  %36 = or i32 %33, 32768
  br label %37

37:                                               ; preds = %32, %34, %35
  %38 = phi i32 [ 1, %34 ], [ %36, %35 ], [ 0, %32 ]
  %39 = load ptr, ptr %3, align 8, !tbaa !144
  %40 = getelementptr inbounds %struct.video_par, ptr %39, i64 0, i32 169
  %41 = load ptr, ptr %40, align 8, !tbaa !124
  store ptr %41, ptr %0, align 8, !tbaa !34
  ret i32 %38
}

declare i32 @decode_one_frame(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FinitDecoder(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.decoder_params, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 169
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %8, align 8, !tbaa !122
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %21

13:                                               ; preds = %16
  %14 = load i32, ptr %19, align 8, !tbaa !122
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21, !llvm.loop !123

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %19, %13 ], [ %8, %10 ]
  %18 = getelementptr inbounds %struct.decodedpic_t, ptr %17, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %13, !llvm.loop !123

21:                                               ; preds = %13, %10
  %22 = phi ptr [ %8, %10 ], [ %19, %13 ]
  %23 = phi ptr [ null, %10 ], [ %17, %13 ]
  %24 = load ptr, ptr %7, align 8, !tbaa !124
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %29, %26 ], [ %22, %21 ]
  %28 = getelementptr inbounds %struct.decodedpic_t, ptr %27, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !125

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.decodedpic_t, ptr %27, i64 0, i32 14
  store ptr %24, ptr %32, align 8, !tbaa !38
  store ptr %22, ptr %7, align 8, !tbaa !124
  %33 = getelementptr inbounds %struct.decodedpic_t, ptr %23, i64 0, i32 14
  store ptr null, ptr %33, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %16, %4, %21, %31
  %35 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 151
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  tail call void @flush_dpb(ptr noundef %36, i32 noundef -1) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !144
  %38 = getelementptr inbounds %struct.video_par, ptr %37, i64 0, i32 144
  %39 = load ptr, ptr %38, align 8, !tbaa !187
  tail call void @ResetAnnexB(ptr noundef %39) #18
  %40 = load ptr, ptr %5, align 8, !tbaa !144
  %41 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 32
  store i32 0, ptr %41, align 8, !tbaa !178
  %42 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 117
  store i32 0, ptr %42, align 8, !tbaa !179
  %43 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 169
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  store ptr %44, ptr %0, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %1, %34
  ret i32 0
}

declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @ResetAnnexB(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CloseDecoder() local_unnamed_addr #3 {
  %1 = alloca [255 x i8], align 16
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %320, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.decoder_params, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  %10 = load ptr, ptr %7, align 8, !tbaa !145
  %11 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %13 = getelementptr inbounds %struct.inp_par, ptr %10, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !189
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr @stdout, align 8, !tbaa !34
  br i1 %15, label %17, label %34

17:                                               ; preds = %5
  %18 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 75, i64 1, ptr %16)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !190
  %22 = fpext float %21 to double
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.24, double noundef %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !190
  %27 = fpext float %26 to double
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.25, double noundef %27)
  %29 = load ptr, ptr @stdout, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !190
  %32 = fpext float %31 to double
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.26, double noundef %32)
  br label %36

34:                                               ; preds = %5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 76, i64 1, ptr %16)
  br label %36

36:                                               ; preds = %34, %17
  %37 = load ptr, ptr @stdout, align 8, !tbaa !34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 75, i64 1, ptr %37)
  %39 = load ptr, ptr @stdout, align 8, !tbaa !34
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  %41 = load ptr, ptr @stdout, align 8, !tbaa !34
  %42 = tail call i32 @fputc(i32 10, ptr %41)
  %43 = load ptr, ptr @stdout, align 8, !tbaa !34
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
  store i64 27977503644020588, ptr %1, align 16
  %45 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.36)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.37)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.38, ptr noundef nonnull %1) #18
  %52 = load ptr, ptr @stderr, align 8, !tbaa !34
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef nonnull @errortext) #16
  call void @exit(i32 noundef 500) #17
  unreachable

54:                                               ; preds = %47
  %55 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %48)
  %56 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 93, i64 1, ptr nonnull %48)
  %57 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 118, i64 1, ptr nonnull %48)
  %58 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 118, i64 1, ptr nonnull %48)
  %59 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %48)
  br label %63

60:                                               ; preds = %36
  %61 = tail call i32 @fclose(ptr noundef nonnull %45)
  %62 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.37)
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi ptr [ %48, %54 ], [ %62, %60 ]
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.44)
  %66 = tail call i64 @time(ptr noundef null) #18
  store i64 %66, ptr %2, align 8, !tbaa !192
  %67 = call i64 @time(ptr noundef nonnull %2) #18
  %68 = call ptr @localtime(ptr noundef nonnull %2) #18
  %69 = call i64 @strftime(ptr noundef nonnull %1, i64 noundef 255, ptr noundef nonnull @.str.45, ptr noundef %68) #18
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.46, ptr noundef nonnull %1)
  %71 = call i64 @strftime(ptr noundef nonnull %1, i64 noundef 255, ptr noundef nonnull @.str.47, ptr noundef %68) #18
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.46, ptr noundef nonnull %1)
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.48, ptr noundef %10)
  %74 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 14
  %75 = load i32, ptr %74, align 8, !tbaa !165
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.49, i32 noundef %75)
  %77 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 23
  %78 = load i32, ptr %77, align 4, !tbaa !98
  %79 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 24
  %80 = load i32, ptr %79, align 8, !tbaa !97
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.50, i32 noundef %78, i32 noundef %80)
  %82 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 72
  %83 = load i32, ptr %82, align 8, !tbaa !193
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x [4 x i8]], ptr @Report.yuv_formats, i64 0, i64 %84
  %86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.51, ptr noundef nonnull %85)
  %87 = icmp eq ptr %9, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %63
  %89 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %9, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !194
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.52, ptr @.str.53
  %93 = call i64 @fwrite(ptr nonnull %92, i64 7, i64 1, ptr %64)
  br label %94

94:                                               ; preds = %88, %63
  %95 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 2
  %96 = load float, ptr %95, align 4, !tbaa !190
  %97 = fpext float %96 to double
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.54, double noundef %97)
  %99 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 2, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !190
  %101 = fpext float %100 to double
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.54, double noundef %101)
  %103 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 2, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !190
  %105 = fpext float %104 to double
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.54, double noundef %105)
  %107 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3
  %108 = load float, ptr %107, align 4, !tbaa !190
  %109 = fpext float %108 to double
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.54, double noundef %109)
  %111 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !190
  %113 = fpext float %112 to double
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.54, double noundef %113)
  %115 = getelementptr inbounds %struct.snr_par, ptr %12, i64 0, i32 3, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !190
  %117 = fpext float %116 to double
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.54, double noundef %117)
  %119 = call i32 @fputc(i32 10, ptr %64)
  %120 = call i32 @fclose(ptr noundef %64)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false)
  %121 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.37)
  %122 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 126
  %123 = load i32, ptr %122, align 8, !tbaa !170
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %74, align 8, !tbaa !165
  %126 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !137
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  br i1 %124, label %153, label %129

129:                                              ; preds = %94
  %130 = getelementptr inbounds %struct.slice, ptr %128, i64 0, i32 29
  %131 = load i32, ptr %130, align 4, !tbaa !196
  %132 = load float, ptr %95, align 4, !tbaa !190
  %133 = fpext float %132 to double
  %134 = load float, ptr %99, align 4, !tbaa !190
  %135 = fpext float %134 to double
  %136 = load float, ptr %103, align 4, !tbaa !190
  %137 = fpext float %136 to double
  %138 = load float, ptr %107, align 4, !tbaa !190
  %139 = fpext float %138 to double
  %140 = load float, ptr %111, align 4, !tbaa !190
  %141 = fpext float %140 to double
  %142 = load float, ptr %115, align 4, !tbaa !190
  %143 = fpext float %142 to double
  %144 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 120
  %145 = load i64, ptr %144, align 8, !tbaa !171
  %146 = sitofp i64 %145 to double
  %147 = fmul double %146, 1.000000e-03
  %148 = add i32 %123, -1
  %149 = add i32 %148, %125
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %147, %150
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.56, i32 noundef %125, i32 noundef 0, i32 noundef %131, double noundef %133, double noundef %135, double noundef %137, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %139, double noundef %141, double noundef %143, i32 noundef 0, double noundef %151)
  br label %183

153:                                              ; preds = %94
  %154 = icmp eq ptr %128, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.slice, ptr %128, i64 0, i32 29
  %157 = load i32, ptr %156, align 4, !tbaa !196
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %157, %155 ], [ 0, %153 ]
  %160 = load float, ptr %95, align 4, !tbaa !190
  %161 = fpext float %160 to double
  %162 = load float, ptr %99, align 4, !tbaa !190
  %163 = fpext float %162 to double
  %164 = load float, ptr %103, align 4, !tbaa !190
  %165 = fpext float %164 to double
  %166 = load float, ptr %107, align 4, !tbaa !190
  %167 = fpext float %166 to double
  %168 = load float, ptr %111, align 4, !tbaa !190
  %169 = fpext float %168 to double
  %170 = load float, ptr %115, align 4, !tbaa !190
  %171 = fpext float %170 to double
  %172 = icmp eq i32 %125, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %158
  %174 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 120
  %175 = load i64, ptr %174, align 8, !tbaa !171
  %176 = sitofp i64 %175 to double
  %177 = fmul double %176, 1.000000e-03
  %178 = sitofp i32 %125 to double
  %179 = fdiv double %177, %178
  br label %180

180:                                              ; preds = %173, %158
  %181 = phi double [ %179, %173 ], [ 0.000000e+00, %158 ]
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.56, i32 noundef %125, i32 noundef 0, i32 noundef %159, double noundef %161, double noundef %163, double noundef %165, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %167, double noundef %169, double noundef %171, i32 noundef 0, double noundef %181)
  br label %183

183:                                              ; preds = %129, %180
  %184 = call i32 @fclose(ptr noundef %121)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %1) #18
  %185 = load ptr, ptr %6, align 8, !tbaa !144
  %186 = call i32 @FmoFinit(ptr noundef %185) #18
  %187 = load ptr, ptr %6, align 8, !tbaa !144
  call void @free_global_buffers(ptr noundef %187)
  %188 = load ptr, ptr %6, align 8, !tbaa !144
  %189 = getelementptr inbounds %struct.video_par, ptr %188, i64 0, i32 145
  %190 = load ptr, ptr %189, align 8, !tbaa !156
  %191 = getelementptr inbounds %struct.sBitsFile, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !197
  call void %192(ptr noundef %188) #18
  br label %193

193:                                              ; preds = %183, %201
  %194 = phi i64 [ 0, %183 ], [ %202, %201 ]
  %195 = load ptr, ptr %6, align 8, !tbaa !144
  %196 = getelementptr inbounds %struct.video_par, ptr %195, i64 0, i32 122, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !60
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %201, label %199

199:                                              ; preds = %193
  %200 = call i32 @close(i32 noundef %197) #18
  br label %201

201:                                              ; preds = %193, %199
  %202 = add nuw nsw i64 %194, 1
  %203 = icmp eq i64 %202, 1024
  br i1 %203, label %204, label %193, !llvm.loop !198

204:                                              ; preds = %201
  %205 = load ptr, ptr %6, align 8, !tbaa !144
  %206 = getelementptr inbounds %struct.video_par, ptr %205, i64 0, i32 123
  %207 = load i32, ptr %206, align 4, !tbaa !155
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = call i32 @close(i32 noundef %207) #18
  br label %211

211:                                              ; preds = %209, %204
  %212 = load ptr, ptr %6, align 8, !tbaa !144
  %213 = getelementptr inbounds %struct.video_par, ptr %212, i64 0, i32 140
  %214 = load ptr, ptr %213, align 8, !tbaa !199
  call void @ercClose(ptr noundef %212, ptr noundef %214) #18
  %215 = load ptr, ptr %6, align 8, !tbaa !144
  call void @CleanUpPPS(ptr noundef %215) #18
  br label %216

216:                                              ; preds = %211, %216
  %217 = phi i64 [ 0, %211 ], [ %221, %216 ]
  %218 = load ptr, ptr %6, align 8, !tbaa !144
  %219 = getelementptr inbounds %struct.video_par, ptr %218, i64 0, i32 6
  %220 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %219, i64 %217
  call void @reset_subset_sps(ptr noundef nonnull %220) #18
  %221 = add nuw nsw i64 %217, 1
  %222 = icmp eq i64 %221, 32
  br i1 %222, label %223, label %216, !llvm.loop !200

223:                                              ; preds = %216
  %224 = load ptr, ptr %6, align 8, !tbaa !144
  %225 = getelementptr inbounds %struct.video_par, ptr %224, i64 0, i32 151
  %226 = load ptr, ptr %225, align 8, !tbaa !131
  call void @free_dpb(ptr noundef %226) #18
  %227 = load ptr, ptr %6, align 8, !tbaa !144
  call void @uninit_out_buffer(ptr noundef %227) #18
  %228 = load ptr, ptr %3, align 8, !tbaa !142
  call void @free(ptr noundef %228) #18
  %229 = load ptr, ptr %6, align 8, !tbaa !144
  %230 = icmp eq ptr %229, null
  br i1 %230, label %319, label %231

231:                                              ; preds = %223
  call void @free_annex_b(ptr noundef nonnull %229) #18
  %232 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 158
  %233 = load ptr, ptr %232, align 8, !tbaa !136
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  call void @free(ptr noundef %233) #18
  store ptr null, ptr %232, align 8, !tbaa !136
  br label %236

236:                                              ; preds = %235, %231
  %237 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 145
  %238 = load ptr, ptr %237, align 8, !tbaa !156
  %239 = icmp eq ptr %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %236
  call void @free(ptr noundef %238) #18
  store ptr null, ptr %237, align 8, !tbaa !156
  br label %241

241:                                              ; preds = %240, %236
  %242 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 152
  %243 = load ptr, ptr %242, align 8, !tbaa !130
  %244 = icmp eq ptr %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call void @free(ptr noundef %243) #18
  store ptr null, ptr %242, align 8, !tbaa !130
  br label %246

246:                                              ; preds = %245, %241
  br label %247

247:                                              ; preds = %246, %253
  %248 = phi i64 [ %254, %253 ], [ 0, %246 ]
  %249 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 153, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !34
  %251 = icmp eq ptr %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  call void @free(ptr noundef %250) #18
  store ptr null, ptr %249, align 8, !tbaa !34
  br label %253

253:                                              ; preds = %252, %247
  %254 = add nuw nsw i64 %248, 1
  %255 = icmp eq i64 %248, 0
  br i1 %255, label %247, label %256, !llvm.loop !201

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 151
  store ptr null, ptr %257, align 8, !tbaa !131
  %258 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 13
  %259 = load ptr, ptr %258, align 8, !tbaa !129
  %260 = icmp eq ptr %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %256
  call void @free(ptr noundef %259) #18
  store ptr null, ptr %258, align 8, !tbaa !129
  br label %262

262:                                              ; preds = %261, %256
  %263 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 12
  %264 = load ptr, ptr %263, align 8, !tbaa !128
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  call void @free(ptr noundef %264) #18
  store ptr null, ptr %263, align 8, !tbaa !128
  br label %267

267:                                              ; preds = %266, %262
  %268 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 34
  %269 = load ptr, ptr %268, align 8, !tbaa !139
  %270 = icmp eq ptr %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %267
  call fastcc void @free_slice(ptr noundef nonnull %269)
  store ptr null, ptr %268, align 8, !tbaa !139
  br label %272

272:                                              ; preds = %271, %267
  %273 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 19
  %274 = load ptr, ptr %273, align 8, !tbaa !137
  %275 = icmp eq ptr %274, null
  br i1 %275, label %294, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 17
  %278 = load i32, ptr %277, align 4, !tbaa !138
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %276, %287
  %281 = phi i64 [ %288, %287 ], [ 0, %276 ]
  %282 = load ptr, ptr %273, align 8, !tbaa !137
  %283 = getelementptr inbounds ptr, ptr %282, i64 %281
  %284 = load ptr, ptr %283, align 8, !tbaa !34
  %285 = icmp eq ptr %284, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %280
  call fastcc void @free_slice(ptr noundef nonnull %284)
  br label %287

287:                                              ; preds = %286, %280
  %288 = add nuw nsw i64 %281, 1
  %289 = load i32, ptr %277, align 4, !tbaa !138
  %290 = sext i32 %289 to i64
  %291 = icmp slt i64 %288, %290
  br i1 %291, label %280, label %292, !llvm.loop !202

292:                                              ; preds = %287, %276
  %293 = load ptr, ptr %273, align 8, !tbaa !137
  call void @free(ptr noundef %293) #18
  br label %294

294:                                              ; preds = %292, %272
  %295 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 171
  %296 = load ptr, ptr %295, align 8, !tbaa !140
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  call void @FreeNALU(ptr noundef nonnull %296) #18
  store ptr null, ptr %295, align 8, !tbaa !140
  br label %299

299:                                              ; preds = %298, %294
  %300 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 169
  %301 = load ptr, ptr %300, align 8, !tbaa !124
  %302 = icmp eq ptr %301, null
  br i1 %302, label %313, label %303

303:                                              ; preds = %299, %311
  %304 = phi ptr [ %306, %311 ], [ %301, %299 ]
  %305 = getelementptr inbounds %struct.decodedpic_t, ptr %304, i64 0, i32 14
  %306 = load ptr, ptr %305, align 8, !tbaa !38
  %307 = getelementptr inbounds %struct.decodedpic_t, ptr %304, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !41
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %303
  call void @free(ptr noundef %308) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %307, i8 0, i64 24, i1 false)
  br label %311

311:                                              ; preds = %310, %303
  call void @free(ptr noundef %304) #18
  %312 = icmp eq ptr %306, null
  br i1 %312, label %313, label %303, !llvm.loop !42

313:                                              ; preds = %311, %299
  %314 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 179
  %315 = load ptr, ptr %314, align 8, !tbaa !141
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void @FreePPS(ptr noundef nonnull %315) #18
  store ptr null, ptr %314, align 8, !tbaa !141
  br label %318

318:                                              ; preds = %317, %313
  call void @free(ptr noundef %229) #18
  br label %319

319:                                              ; preds = %223, %318
  call void @free(ptr noundef %3) #18
  br label %320

320:                                              ; preds = %0, %319
  ret i32 0
}

declare i32 @FmoFinit(ptr noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #6

declare void @ercClose(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @CleanUpPPS(ptr noundef) local_unnamed_addr #6

declare void @reset_subset_sps(ptr noundef) local_unnamed_addr #6

declare void @free_dpb(ptr noundef) local_unnamed_addr #6

declare void @uninit_out_buffer(ptr noundef) local_unnamed_addr #6

declare ptr @AllocNALU(i32 noundef) local_unnamed_addr #6

declare ptr @AllocPPS() local_unnamed_addr #6

declare void @init_tone_mapping_sei(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @free_annex_b(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @free_slice(ptr noundef %0) unnamed_addr #3 {
  tail call void @free_pred_mem(ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  tail call void @free_mem3Dint(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 79
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  tail call void @free_mem3Dint(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 78
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  tail call void @free_mem3Dpel(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 77
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  tail call void @free_mem3Dpel(ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  tail call void @free_mem3Dint(ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  tail call void @free_mem3Dint(ptr noundef %13) #18
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  tail call void @free_mem4Dint(ptr noundef %15) #18
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %18, %1
  %19 = phi i64 [ 0, %1 ], [ %25, %18 ]
  %20 = getelementptr inbounds %struct.datapartition, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  tail call void @free(ptr noundef %23) #18
  %24 = load ptr, ptr %20, align 8, !tbaa !73
  tail call void @free(ptr noundef %24) #18
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %18, !llvm.loop !78

27:                                               ; preds = %18
  tail call void @free(ptr noundef %17) #18
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 58
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  tail call void @delete_contexts_MotionInfo(ptr noundef %29) #18
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 59
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  tail call void @delete_contexts_TextureInfo(ptr noundef %31) #18
  br label %36

32:                                               ; preds = %42
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 54
  %34 = load ptr, ptr %33, align 8, !tbaa !210
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %45

36:                                               ; preds = %27, %42
  %37 = phi i64 [ 0, %27 ], [ %43, %42 ]
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @free(ptr noundef %39) #18
  store ptr null, ptr %38, align 8, !tbaa !34
  br label %42

42:                                               ; preds = %36, %41
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, 6
  br i1 %44, label %32, label %36, !llvm.loop !211

45:                                               ; preds = %32, %45
  %46 = phi ptr [ %49, %45 ], [ %34, %32 ]
  %47 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !212
  store ptr %48, ptr %33, align 8, !tbaa !210
  tail call void @free(ptr noundef %46) #18
  %49 = load ptr, ptr %33, align 8, !tbaa !210
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %45, !llvm.loop !214

51:                                               ; preds = %45, %32
  tail call void @free(ptr noundef %0) #18
  ret void
}

declare void @FreeNALU(ptr noundef) local_unnamed_addr #6

declare void @FreePPS(ptr noundef) local_unnamed_addr #6

declare void @free_pred_mem(ptr noundef) local_unnamed_addr #6

declare void @free_mem3Dint(ptr noundef) local_unnamed_addr #6

declare void @free_mem4Dint(ptr noundef) local_unnamed_addr #6

declare void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #6

declare void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind willreturn memory(read) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 72}
!39 = !{!"decodedpic_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !35, i64 72}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 24}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !47, i64 849040}
!46 = !{!"video_par", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 132120, !35, i64 699416, !36, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !35, i64 848688, !35, i64 848696, !35, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !35, i64 848736, !35, i64 848744, !36, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !35, i64 848800, !36, i64 848808, !35, i64 848832, !35, i64 848840, !36, i64 848848, !40, i64 848872, !40, i64 848876, !35, i64 848880, !35, i64 848888, !36, i64 848896, !40, i64 848920, !35, i64 848928, !35, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !47, i64 849040, !47, i64 849042, !36, i64 849044, !40, i64 849052, !40, i64 849056, !36, i64 849060, !36, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !36, i64 849124, !36, i64 849148, !36, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !35, i64 849288, !35, i64 849296, !48, i64 849304, !48, i64 849624, !48, i64 849944, !48, i64 850264, !48, i64 850584, !48, i64 850904, !48, i64 851224, !48, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !51, i64 851880, !40, i64 851888, !36, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !35, i64 856016, !35, i64 856024, !35, i64 856032, !35, i64 856040, !35, i64 856048, !36, i64 856056, !35, i64 856456, !36, i64 856464, !35, i64 856488, !35, i64 856496, !35, i64 856504, !40, i64 856512, !35, i64 856520, !36, i64 856528, !35, i64 856608, !35, i64 856616, !35, i64 856624, !35, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !35, i64 856656, !35, i64 856664, !36, i64 856672, !36, i64 856688, !35, i64 856704, !35, i64 856712, !40, i64 856720, !35, i64 856728, !35, i64 856736, !35, i64 856744, !35, i64 856752, !35, i64 856760, !35, i64 856768, !35, i64 856776, !35, i64 856784, !35, i64 856792, !35, i64 856800, !35, i64 856808, !35, i64 856816, !40, i64 856824, !35, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !35, i64 856872}
!47 = !{!"short", !36, i64 0}
!48 = !{!"image_data", !49, i64 0, !36, i64 136, !36, i64 160, !36, i64 184, !36, i64 208, !36, i64 232, !36, i64 256, !36, i64 280, !36, i64 292, !36, i64 304}
!49 = !{!"frame_format", !40, i64 0, !40, i64 4, !50, i64 8, !36, i64 16, !36, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !36, i64 72, !40, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !40, i64 124, !40, i64 128}
!50 = !{!"double", !36, i64 0}
!51 = !{!"long", !36, i64 0}
!52 = !{!46, !40, i64 849052}
!53 = !{!46, !47, i64 849042}
!54 = !{!46, !35, i64 16}
!55 = !{!56, !40, i64 36}
!56 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 44, !36, i64 92, !36, i64 476, !36, i64 2012, !36, i64 2036, !40, i64 2060, !40, i64 2064, !40, i64 2068, !40, i64 2072, !40, i64 2076, !40, i64 2080, !40, i64 2084, !40, i64 2088, !40, i64 2092, !36, i64 2096, !40, i64 3120, !40, i64 3124, !40, i64 3128, !40, i64 3132, !40, i64 3136, !40, i64 3140, !40, i64 3144, !40, i64 3148, !40, i64 3152, !40, i64 3156, !40, i64 3160, !40, i64 3164, !40, i64 3168, !57, i64 3172, !40, i64 4120, !40, i64 4124}
!57 = !{!"", !40, i64 0, !40, i64 4, !47, i64 8, !47, i64 10, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !58, i64 80, !40, i64 492, !58, i64 496, !40, i64 908, !40, i64 912, !40, i64 916, !40, i64 920, !40, i64 924, !40, i64 928, !40, i64 932, !40, i64 936, !40, i64 940, !40, i64 944}
!58 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !36, i64 12, !36, i64 140, !36, i64 268, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408}
!59 = !{!46, !40, i64 849036}
!60 = !{!40, !40, i64 0}
!61 = !{!46, !40, i64 849056}
!62 = !{!46, !40, i64 849096}
!63 = !{!46, !40, i64 849100}
!64 = !{!46, !40, i64 849104}
!65 = !{!46, !40, i64 849108}
!66 = !{!46, !40, i64 849112}
!67 = !{!46, !40, i64 849196}
!68 = !{!46, !40, i64 849200}
!69 = !{!46, !40, i64 849204}
!70 = !{!46, !40, i64 849208}
!71 = !{!46, !40, i64 849212}
!72 = distinct !{!72, !43, !44}
!73 = !{!74, !35, i64 0}
!74 = !{!"datapartition", !35, i64 0, !75, i64 8, !35, i64 40}
!75 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !35, i64 16, !35, i64 24}
!76 = !{!77, !35, i64 16}
!77 = !{!"bit_stream", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !35, i64 16, !40, i64 24}
!78 = distinct !{!78, !43, !44}
!79 = !{!80, !40, i64 768}
!80 = !{!"inp_par", !36, i64 0, !36, i64 255, !36, i64 510, !40, i64 768, !40, i64 772, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !49, i64 792, !49, i64 928, !40, i64 1064, !40, i64 1068, !81, i64 1072, !81, i64 2040, !81, i64 3008, !40, i64 3976, !40, i64 3980, !40, i64 3984, !40, i64 3988, !40, i64 3992, !40, i64 3996, !40, i64 4000, !40, i64 4004, !40, i64 4008, !40, i64 4012}
!81 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !40, i64 768, !40, i64 772, !49, i64 776, !40, i64 912, !40, i64 916, !40, i64 920, !40, i64 924, !40, i64 928, !40, i64 932, !40, i64 936, !40, i64 940, !40, i64 944, !40, i64 948, !40, i64 952, !35, i64 960}
!82 = !{!83, !35, i64 320}
!83 = !{!"slice", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !47, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !36, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !36, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !35, i64 248, !36, i64 256, !36, i64 264, !35, i64 312, !35, i64 320, !35, i64 328, !36, i64 336, !36, i64 1104, !36, i64 1112, !36, i64 1128, !36, i64 1144, !36, i64 1160, !40, i64 1176, !40, i64 1180, !40, i64 1184, !84, i64 1188, !47, i64 1220, !47, i64 1222, !47, i64 1224, !40, i64 1228, !40, i64 1232, !40, i64 1236, !40, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !36, i64 1288, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !36, i64 1392, !36, i64 2544, !36, i64 3696, !36, i64 8304, !36, i64 12912, !36, i64 13008, !40, i64 13264, !40, i64 13268, !47, i64 13272, !47, i64 13274, !47, i64 13276, !47, i64 13278, !35, i64 13280, !35, i64 13288, !35, i64 13296, !47, i64 13304, !47, i64 13306, !40, i64 13308, !40, i64 13312, !35, i64 13320, !35, i64 13328, !40, i64 13336, !36, i64 13340, !35, i64 13408, !35, i64 13416, !35, i64 13424, !35, i64 13432, !35, i64 13440, !35, i64 13448, !35, i64 13456, !35, i64 13464, !35, i64 13472, !35, i64 13480, !35, i64 13488, !35, i64 13496, !40, i64 13504, !35, i64 13512, !35, i64 13520, !35, i64 13528, !35, i64 13536, !35, i64 13544, !36, i64 13552}
!84 = !{!"nalunitheadermvcext_tag", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!85 = !{!83, !35, i64 328}
!86 = !{!83, !40, i64 196}
!87 = !{!83, !35, i64 312}
!88 = !{!83, !40, i64 1176}
!89 = !{!83, !40, i64 1180}
!90 = !{!83, !40, i64 1184}
!91 = distinct !{!91, !43, !44}
!92 = distinct !{!92, !43, !44}
!93 = distinct !{!93, !43, !44}
!94 = !{!36, !36, i64 0}
!95 = distinct !{!95, !43, !44}
!96 = !{!46, !40, i64 856012}
!97 = !{!46, !40, i64 848784}
!98 = !{!46, !40, i64 848780}
!99 = !{!46, !40, i64 848792}
!100 = !{!46, !40, i64 848788}
!101 = !{!46, !35, i64 856024}
!102 = !{!46, !40, i64 849280}
!103 = !{!46, !40, i64 849016}
!104 = distinct !{!104, !43, !44}
!105 = !{!46, !35, i64 848888}
!106 = distinct !{!106, !43, !44}
!107 = !{!46, !35, i64 848744}
!108 = !{!46, !40, i64 848996}
!109 = !{!110, !47, i64 0}
!110 = !{!"", !47, i64 0, !47, i64 2}
!111 = !{!110, !47, i64 2}
!112 = distinct !{!112, !43, !44}
!113 = !{!46, !40, i64 849004}
!114 = distinct !{!114, !43, !44}
!115 = !{!46, !35, i64 848800}
!116 = distinct !{!116, !43, !44}
!117 = !{!46, !35, i64 848840}
!118 = !{!46, !40, i64 849020}
!119 = !{!46, !35, i64 856016}
!120 = !{!46, !35, i64 848832}
!121 = distinct !{!121, !43, !44}
!122 = !{!39, !40, i64 0}
!123 = distinct !{!123, !43, !44}
!124 = !{!46, !35, i64 856816}
!125 = distinct !{!125, !43, !44}
!126 = distinct !{!126, !43, !44}
!127 = distinct !{!127, !43, !44}
!128 = !{!46, !35, i64 848696}
!129 = !{!46, !35, i64 848704}
!130 = !{!46, !35, i64 856664}
!131 = !{!46, !35, i64 856656}
!132 = !{!133, !35, i64 0}
!133 = !{!"decoded_picture_buffer", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64, !40, i64 4160, !40, i64 4164, !35, i64 4168}
!134 = !{!133, !40, i64 4160}
!135 = distinct !{!135, !43, !44}
!136 = !{!46, !35, i64 856728}
!137 = !{!46, !35, i64 848736}
!138 = !{!46, !40, i64 848724}
!139 = !{!46, !35, i64 848880}
!140 = !{!46, !35, i64 856832}
!141 = !{!46, !35, i64 856872}
!142 = !{!143, !35, i64 0}
!143 = !{!"decoder_params", !35, i64 0, !35, i64 8, !51, i64 16, !40, i64 24, !35, i64 32, !40, i64 40}
!144 = !{!143, !35, i64 8}
!145 = !{!46, !35, i64 0}
!146 = !{!143, !35, i64 32}
!147 = !{!143, !51, i64 16}
!148 = !{!143, !40, i64 40}
!149 = !{!80, !40, i64 3980}
!150 = !{!46, !40, i64 849240}
!151 = !{!80, !40, i64 3984}
!152 = !{!46, !40, i64 849232}
!153 = !{!80, !40, i64 3988}
!154 = !{!46, !40, i64 849236}
!155 = !{!46, !40, i64 855988}
!156 = !{!46, !35, i64 856616}
!157 = !{!158, !35, i64 0}
!158 = !{!"sBitsFile", !35, i64 0, !35, i64 8, !35, i64 16}
!159 = !{!46, !40, i64 849260}
!160 = !{!46, !40, i64 849264}
!161 = !{!46, !40, i64 849276}
!162 = !{!80, !40, i64 772}
!163 = !{!46, !40, i64 849220}
!164 = !{!46, !40, i64 849224}
!165 = !{!46, !40, i64 848712}
!166 = !{!46, !40, i64 848776}
!167 = !{!46, !40, i64 856008}
!168 = !{!169, !40, i64 0}
!169 = !{!"snr_par", !40, i64 0, !36, i64 4, !36, i64 16, !36, i64 28, !36, i64 40, !36, i64 52}
!170 = !{!46, !40, i64 856000}
!171 = !{!46, !51, i64 851880}
!172 = !{!46, !35, i64 856456}
!173 = !{!46, !40, i64 855992}
!174 = !{!46, !40, i64 855996}
!175 = !{!46, !40, i64 848672}
!176 = !{!46, !40, i64 848676}
!177 = !{!46, !40, i64 848680}
!178 = !{!46, !40, i64 848872}
!179 = !{!46, !40, i64 851864}
!180 = !{!46, !40, i64 856840}
!181 = !{!46, !40, i64 856844}
!182 = !{!46, !40, i64 856848}
!183 = !{!46, !40, i64 856852}
!184 = !{!46, !40, i64 856860}
!185 = !{!46, !40, i64 856856}
!186 = !{!46, !35, i64 699416}
!187 = !{!46, !35, i64 856608}
!188 = !{!46, !35, i64 8}
!189 = !{!80, !40, i64 784}
!190 = !{!191, !191, i64 0}
!191 = !{!"float", !36, i64 0}
!192 = !{!51, !51, i64 0}
!193 = !{!46, !40, i64 849088}
!194 = !{!195, !40, i64 12}
!195 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 72, !36, i64 456, !36, i64 1992, !36, i64 2016, !40, i64 2040, !40, i64 2044, !40, i64 2048, !36, i64 2052, !36, i64 2084, !36, i64 2116, !40, i64 2148, !40, i64 2152, !40, i64 2156, !35, i64 2160, !40, i64 2168, !40, i64 2172, !40, i64 2176, !40, i64 2180, !40, i64 2184, !40, i64 2188, !40, i64 2192, !40, i64 2196, !40, i64 2200, !40, i64 2204, !40, i64 2208}
!196 = !{!83, !40, i64 148}
!197 = !{!158, !35, i64 8}
!198 = distinct !{!198, !43, !44}
!199 = !{!46, !35, i64 856504}
!200 = distinct !{!200, !43, !44}
!201 = distinct !{!201, !43, !44}
!202 = distinct !{!202, !43, !44}
!203 = !{!83, !35, i64 1272}
!204 = !{!83, !35, i64 1264}
!205 = !{!83, !35, i64 1256}
!206 = !{!83, !35, i64 1248}
!207 = !{!83, !35, i64 13280}
!208 = !{!83, !35, i64 13288}
!209 = !{!83, !35, i64 13296}
!210 = !{!83, !35, i64 248}
!211 = distinct !{!211, !43, !44}
!212 = !{!213, !35, i64 24}
!213 = !{!"DecRefPicMarking_s", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !35, i64 24}
!214 = distinct !{!214, !43, !44}

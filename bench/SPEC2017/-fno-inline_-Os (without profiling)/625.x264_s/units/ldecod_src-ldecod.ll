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
%struct.sBitsFile = type { ptr, ptr, ptr }
%struct.snr_par = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, ptr }

@p_Dec = dso_local local_unnamed_addr global ptr null, align 8
@errortext = dso_local global [300 x i8] zeroinitializer, align 16
@PicPos = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"AllocPartition: Memory allocation for Data Partition failed\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"AllocPartition: Memory allocation for Bitstream failed\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"AllocPartition: Memory allocation for streamBuffer failed\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Memory allocation for Slice datastruct in NAL-mode %d failed\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"malloc_slice: currSlice->listX[i]\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"init_global_buffers: p_Vid->mb_data\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"init_global_buffers: p_Vid->intra_block_JV\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"init_global_buffers: p_Vid->intra_block\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"init_global_buffers: PicPos\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"init_global_buffers: p_Vid->siblock_JV\00", align 1
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

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @error(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !6
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %0) #18
  tail call void @exit(i32 noundef %1) #19
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FreeDecPicList(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %11
  %4 = phi ptr [ %6, %11 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.decodedpic_t, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.decodedpic_t, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %8) #20
  br label %11

11:                                               ; preds = %10, %3
  tail call void @free(ptr noundef nonnull %4) #20
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %3, !llvm.loop !14

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_frext(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 64
  %3 = load i16, ptr %2, align 8, !tbaa !16
  %4 = sext i16 %3 to i32
  %5 = mul nsw i32 %4, 6
  %6 = add nsw i32 %5, -48
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 67
  store i32 %6, ptr %7, align 4, !tbaa !23
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 65
  %9 = load i16, ptr %8, align 2, !tbaa !24
  %10 = icmp sgt i16 %3, %9
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  br i1 %10, label %18, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %12, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !26
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i16 %3, i16 %9
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i16 [ %3, %1 ], [ %17, %13 ]
  %20 = icmp sgt i16 %19, 8
  %21 = select i1 %20, i32 16, i32 8
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 63
  store i32 %21, ptr %22, align 4, !tbaa !30
  %23 = add nsw i32 %4, -1
  %24 = shl nuw i32 1, %23
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  store i32 %24, ptr %25, align 4, !tbaa !31
  %26 = zext nneg i16 %3 to i32
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  store i32 %28, ptr %29, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 0, i64 1
  store i32 16, ptr %31, align 4, !tbaa !31
  store i32 16, ptr %30, align 4, !tbaa !31
  %32 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %12, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %18
  %36 = sext i16 %9 to i32
  %37 = mul nsw i32 %36, 6
  %38 = add nsw i32 %37, -48
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 68
  store i32 %38, ptr %39, align 8, !tbaa !32
  %40 = add nsw i32 %36, -1
  %41 = shl nuw i32 1, %40
  %42 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  store i32 %41, ptr %42, align 4, !tbaa !31
  %43 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 2
  store i32 %41, ptr %43, align 4, !tbaa !31
  %44 = zext nneg i16 %9 to i32
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 1
  store i32 %46, ptr %47, align 4, !tbaa !31
  %48 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 2
  store i32 %46, ptr %48, align 8, !tbaa !31
  %49 = load i32, ptr %32, align 4, !tbaa !26
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, -2
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 74
  store i32 %51, ptr %52, align 8, !tbaa !33
  %53 = ashr i32 %50, 1
  %54 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 75
  store i32 %53, ptr %54, align 4, !tbaa !34
  %55 = shl i32 %51, 1
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 76
  store i32 %55, ptr %56, align 8, !tbaa !35
  %57 = add i32 %49, -1
  %58 = icmp ult i32 %57, 2
  %59 = select i1 %58, i32 8, i32 16
  %60 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  store i32 %59, ptr %60, align 4, !tbaa !36
  %61 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 2
  store i32 %59, ptr %61, align 4, !tbaa !31
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1
  store i32 %59, ptr %62, align 4, !tbaa !31
  %63 = load i32, ptr %32, align 4, !tbaa !26
  %64 = and i32 %63, -2
  %65 = icmp eq i32 %64, 2
  %66 = select i1 %65, i32 16, i32 8
  %67 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  store i32 %66, ptr %67, align 8, !tbaa !37
  %68 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 2, i64 1
  store i32 %66, ptr %68, align 4, !tbaa !31
  %69 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1, i64 1
  store i32 %66, ptr %69, align 4, !tbaa !31
  %70 = select i1 %58, i32 7, i32 3
  %71 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 84
  store i32 %70, ptr %71, align 4, !tbaa !38
  %72 = select i1 %65, i32 3, i32 7
  %73 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 85
  store i32 %72, ptr %73, align 8, !tbaa !39
  %74 = select i1 %58, i32 3, i32 2
  %75 = select i1 %65, i32 2, i32 3
  %76 = add nuw nsw i32 %75, %74
  %77 = lshr exact i32 %59, 2
  %78 = lshr exact i32 %66, 2
  br label %87

79:                                               ; preds = %18
  %80 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 68
  store i32 0, ptr %80, align 8, !tbaa !32
  %81 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 1
  store i32 0, ptr %81, align 4, !tbaa !31
  %82 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70, i64 2
  store i32 0, ptr %82, align 8, !tbaa !31
  %83 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 74
  %84 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1
  %85 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 84
  store i32 0, ptr %85, align 4, !tbaa !38
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 85
  store i32 0, ptr %86, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %83, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  br label %87

87:                                               ; preds = %79, %35
  %88 = phi i32 [ 0, %79 ], [ %78, %35 ]
  %89 = phi i32 [ 0, %79 ], [ %77, %35 ]
  %90 = phi i32 [ 0, %79 ], [ %74, %35 ]
  %91 = phi i32 [ 0, %79 ], [ %75, %35 ]
  %92 = phi i32 [ 0, %79 ], [ %76, %35 ]
  %93 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 86
  store i32 %90, ptr %93, align 4
  %94 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 87
  store i32 %91, ptr %94, align 8
  %95 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 88
  store i32 %92, ptr %95, align 4
  %96 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82
  %97 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 0, i64 1
  store i32 4, ptr %97, align 4, !tbaa !31
  store i32 4, ptr %96, align 4, !tbaa !31
  %98 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1
  %99 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 2
  store i32 %89, ptr %99, align 4, !tbaa !31
  %100 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 1
  store i32 %89, ptr %100, align 4, !tbaa !31
  %101 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 81, i64 1, i64 1
  %102 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 2, i64 1
  store i32 %88, ptr %102, align 4, !tbaa !31
  %103 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 82, i64 1, i64 1
  store i32 %88, ptr %103, align 4, !tbaa !31
  %104 = tail call i32 @CeilLog2_sf(i32 noundef 16) #20
  %105 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83
  %106 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 0, i64 1
  store i32 %104, ptr %106, align 4, !tbaa !31
  store i32 %104, ptr %105, align 4, !tbaa !31
  %107 = load i32, ptr %98, align 4, !tbaa !31
  %108 = tail call i32 @CeilLog2_sf(i32 noundef %107) #20
  %109 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 2
  store i32 %108, ptr %109, align 4, !tbaa !31
  %110 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 1
  store i32 %108, ptr %110, align 4, !tbaa !31
  %111 = load i32, ptr %101, align 4, !tbaa !31
  %112 = tail call i32 @CeilLog2_sf(i32 noundef %111) #20
  %113 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 2, i64 1
  store i32 %112, ptr %113, align 4, !tbaa !31
  %114 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 83, i64 1, i64 1
  store i32 %112, ptr %114, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare i32 @CeilLog2_sf(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @AllocPartition(i32 noundef %0) local_unnamed_addr #3 {
  %2 = sext i32 %0 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 48) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  br label %13

9:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) @errortext, ptr noundef nonnull align 1 dereferenceable(60) @.str.1, i64 60, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #22
  unreachable

10:                                               ; preds = %19
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %24, label %13, !llvm.loop !40

13:                                               ; preds = %7, %10
  %14 = phi i64 [ 0, %7 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.datapartition, ptr %3, i64 %14
  %16 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21
  store ptr %16, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.2, i64 55, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #22
  unreachable

19:                                               ; preds = %13
  %20 = tail call noalias dereferenceable_or_null(8000000) ptr @calloc(i64 noundef 8000000, i64 noundef 1) #21
  %21 = getelementptr inbounds %struct.bit_stream, ptr %16, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !44
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %10

23:                                               ; preds = %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) @errortext, ptr noundef nonnull align 1 dereferenceable(58) @.str.3, i64 58, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #22
  unreachable

24:                                               ; preds = %10, %5
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FreePartition(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = getelementptr inbounds %struct.datapartition, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.bit_stream, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void @free(ptr noundef %11) #20
  %12 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @free(ptr noundef %12) #20
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !46

15:                                               ; preds = %6, %2
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @malloc_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = tail call noalias dereferenceable_or_null(13648) ptr @calloc(i64 noundef 1, i64 noundef 13648) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, i32 noundef %7) #20
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #22
  unreachable

9:                                                ; preds = %2
  %10 = tail call ptr @create_contexts_MotionInfo() #20
  %11 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 58
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @create_contexts_TextureInfo() #20
  %13 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 59
  store ptr %12, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 41
  store i32 3, ptr %14, align 4, !tbaa !54
  %15 = tail call ptr @AllocPartition(i32 noundef 3) #22
  %16 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  store ptr %15, ptr %16, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 100
  %18 = tail call i32 @get_mem3Dint(ptr noundef nonnull %17, i32 noundef 2, i32 noundef 32, i32 noundef 3) #20
  %19 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 101
  %20 = tail call i32 @get_mem3Dint(ptr noundef nonnull %19, i32 noundef 6, i32 noundef 32, i32 noundef 3) #20
  %21 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 102
  %22 = tail call i32 @get_mem4Dint(ptr noundef nonnull %21, i32 noundef 6, i32 noundef 32, i32 noundef 32, i32 noundef 3) #20
  %23 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 77
  %24 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %23, i32 noundef 3, i32 noundef 16, i32 noundef 16) #20
  %25 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 78
  %26 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %25, i32 noundef 3, i32 noundef 16, i32 noundef 16) #20
  %27 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 79
  %28 = tail call i32 @get_mem3Dint(ptr noundef nonnull %27, i32 noundef 3, i32 noundef 16, i32 noundef 16) #20
  %29 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 80
  %30 = tail call i32 @get_mem3Dint(ptr noundef nonnull %29, i32 noundef 3, i32 noundef 16, i32 noundef 16) #20
  %31 = tail call i32 @allocate_pred_mem(ptr noundef nonnull %3) #20
  %32 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 66
  store i32 -1, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 67
  store i32 0, ptr %33, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 68
  store i32 0, ptr %34, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %57, %9
  %36 = phi i64 [ 0, %9 ], [ %58, %57 ]
  %37 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %9 ], [ %59, %57 ]
  %38 = icmp ult <4 x i64> %37, <i64 17, i64 17, i64 17, i64 17>
  %39 = extractelement <4 x i1> %38, i64 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 110, i64 %36
  store i32 1, ptr %41, align 4, !tbaa !31
  br label %42

42:                                               ; preds = %40, %35
  %43 = extractelement <4 x i1> %38, i64 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = or disjoint i64 %36, 1
  %46 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 110, i64 %45
  store i32 1, ptr %46, align 4, !tbaa !31
  br label %47

47:                                               ; preds = %44, %42
  %48 = extractelement <4 x i1> %38, i64 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = or disjoint i64 %36, 2
  %51 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 110, i64 %50
  store i32 1, ptr %51, align 4, !tbaa !31
  br label %52

52:                                               ; preds = %49, %47
  %53 = extractelement <4 x i1> %38, i64 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = or disjoint i64 %36, 3
  %56 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 110, i64 %55
  store i32 1, ptr %56, align 4, !tbaa !31
  br label %57

57:                                               ; preds = %54, %52
  %58 = add i64 %36, 4
  %59 = add <4 x i64> %37, <i64 4, i64 4, i64 4, i64 4>
  %60 = icmp eq i64 %58, 20
  br i1 %60, label %61, label %35, !llvm.loop !59

61:                                               ; preds = %57, %67
  %62 = phi i64 [ %68, %67 ], [ 0, %57 ]
  %63 = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #21
  %64 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %62
  store ptr %63, ptr %64, align 8, !tbaa !6
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #20
  br label %67

67:                                               ; preds = %61, %66
  %68 = add nuw nsw i64 %62, 1
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %70, label %61, !llvm.loop !62

70:                                               ; preds = %67, %79
  %71 = phi i64 [ %81, %79 ], [ 0, %67 ]
  %72 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %71
  br label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ 0, %70 ], [ %77, %73 ]
  %75 = load ptr, ptr %72, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %74
  store ptr null, ptr %76, align 8, !tbaa !6
  %77 = add nuw nsw i64 %74, 1
  %78 = icmp eq i64 %77, 33
  br i1 %78, label %79, label %73, !llvm.loop !63

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 55, i64 %71
  store i8 0, ptr %80, align 1, !tbaa !64
  %81 = add nuw nsw i64 %71, 1
  %82 = icmp eq i64 %81, 6
  br i1 %82, label %83, label %70, !llvm.loop !65

83:                                               ; preds = %79
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @create_contexts_MotionInfo() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @create_contexts_TextureInfo() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @allocate_pred_mem(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @init_global_buffers(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 129
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free_global_buffers(ptr noundef nonnull %0) #22
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = tail call i32 @get_mem2Dpel(ptr noundef nonnull %7, i32 noundef %9, i32 noundef %11) #20
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !26
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 131
  br i1 %17, label %26, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 26
  %21 = load i32, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 25
  %23 = load i32, ptr %22, align 4, !tbaa !70
  %24 = tail call i32 @get_mem3Dpel(ptr noundef nonnull %18, i32 noundef 2, i32 noundef %21, i32 noundef %23) #20
  %25 = add nsw i32 %24, %12
  br label %27

26:                                               ; preds = %6
  store ptr null, ptr %18, align 8, !tbaa !71
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i32 [ %25, %19 ], [ %12, %26 ]
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %30 = load i32, ptr %29, align 8, !tbaa !72
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  br i1 %31, label %46, label %33

33:                                               ; preds = %27, %41
  %34 = phi i64 [ %42, %41 ], [ 0, %27 ]
  %35 = load i32, ptr %32, align 8, !tbaa !73
  %36 = zext i32 %35 to i64
  %37 = tail call noalias ptr @calloc(i64 noundef %36, i64 noundef 480) #21
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %34
  store ptr %37, ptr %38, align 8, !tbaa !6
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #20
  br label %41

41:                                               ; preds = %33, %40
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %33, !llvm.loop !74

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  store ptr null, ptr %45, align 8, !tbaa !75
  br label %53

46:                                               ; preds = %27
  %47 = load i32, ptr %32, align 8, !tbaa !73
  %48 = zext i32 %47 to i64
  %49 = tail call noalias ptr @calloc(i64 noundef %48, i64 noundef 480) #21
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  store ptr %49, ptr %50, align 8, !tbaa !75
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #20
  br label %53

53:                                               ; preds = %46, %52, %44
  %54 = load i32, ptr %29, align 8, !tbaa !72
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  br i1 %55, label %70, label %57

57:                                               ; preds = %53, %65
  %58 = phi i64 [ %66, %65 ], [ 0, %53 ]
  %59 = load i32, ptr %56, align 8, !tbaa !73
  %60 = zext i32 %59 to i64
  %61 = tail call noalias ptr @calloc(i64 noundef %60, i64 noundef 1) #21
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %58
  store ptr %61, ptr %62, align 8, !tbaa !6
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #20
  br label %65

65:                                               ; preds = %57, %64
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %57, !llvm.loop !76

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  store ptr null, ptr %69, align 8, !tbaa !77
  br label %77

70:                                               ; preds = %53
  %71 = load i32, ptr %56, align 8, !tbaa !73
  %72 = zext i32 %71 to i64
  %73 = tail call noalias ptr @calloc(i64 noundef %72, i64 noundef 1) #21
  %74 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  store ptr %73, ptr %74, align 8, !tbaa !77
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #20
  br label %77

77:                                               ; preds = %70, %76, %68
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 58
  %79 = load i32, ptr %78, align 8, !tbaa !73
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = tail call noalias ptr @calloc(i64 noundef %81, i64 noundef 4) #21
  store ptr %82, ptr @PicPos, align 8, !tbaa !6
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #20
  %85 = load i32, ptr %78, align 8, !tbaa !73
  br label %86

86:                                               ; preds = %84, %77
  %87 = phi i32 [ %85, %84 ], [ %79, %77 ]
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %91 = load i32, ptr %90, align 4, !tbaa !78
  %92 = load ptr, ptr @PicPos, align 8, !tbaa !6
  %93 = add nuw i32 %87, 1
  %94 = zext i32 %93 to i64
  br label %95

95:                                               ; preds = %89, %95
  %96 = phi i64 [ 0, %89 ], [ %104, %95 ]
  %97 = trunc i64 %96 to i32
  %98 = urem i32 %97, %91
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.BlockPos, ptr %92, i64 %96
  store i16 %99, ptr %100, align 2, !tbaa !79
  %101 = udiv i32 %97, %91
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds %struct.BlockPos, ptr %92, i64 %96, i32 1
  store i16 %102, ptr %103, align 2, !tbaa !81
  %104 = add nuw nsw i64 %96, 1
  %105 = icmp eq i64 %104, %94
  br i1 %105, label %106, label %95, !llvm.loop !82

106:                                              ; preds = %95, %86
  %107 = load i32, ptr %29, align 8, !tbaa !72
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %111 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  br label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ 0, %109 ], [ %120, %112 ]
  %114 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %113
  %115 = load i32, ptr %110, align 4, !tbaa !83
  %116 = shl i32 %115, 2
  %117 = load i32, ptr %111, align 4, !tbaa !78
  %118 = shl i32 %117, 2
  %119 = tail call i32 @get_mem2D(ptr noundef nonnull %114, i32 noundef %116, i32 noundef %118) #20
  %120 = add nuw nsw i64 %113, 1
  %121 = icmp eq i64 %120, 3
  br i1 %121, label %122, label %112, !llvm.loop !84

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  store ptr null, ptr %123, align 8, !tbaa !85
  br label %134

124:                                              ; preds = %106
  %125 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  %126 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %127 = load i32, ptr %126, align 4, !tbaa !83
  %128 = shl i32 %127, 2
  %129 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %130 = load i32, ptr %129, align 4, !tbaa !78
  %131 = shl i32 %130, 2
  %132 = tail call i32 @get_mem2D(ptr noundef nonnull %125, i32 noundef %128, i32 noundef %131) #20
  %133 = add nsw i32 %132, %28
  br label %134

134:                                              ; preds = %124, %122
  %135 = phi i32 [ %28, %122 ], [ %133, %124 ]
  %136 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 29
  %137 = load i32, ptr %78, align 8, !tbaa !73
  %138 = tail call i32 @get_mem4D(ptr noundef nonnull %136, i32 noundef %137, i32 noundef 3, i32 noundef 4, i32 noundef 4) #20
  %139 = add nsw i32 %138, %135
  %140 = load i32, ptr %29, align 8, !tbaa !72
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %144 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  br label %145

145:                                              ; preds = %142, %154
  %146 = phi i64 [ 0, %142 ], [ %155, %154 ]
  %147 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 31, i64 %146
  %148 = load i32, ptr %143, align 4, !tbaa !83
  %149 = load i32, ptr %144, align 4, !tbaa !78
  %150 = tail call i32 @get_mem2Dint(ptr noundef nonnull %147, i32 noundef %148, i32 noundef %149) #20
  %151 = load ptr, ptr %147, align 8, !tbaa !6
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #20
  br label %154

154:                                              ; preds = %145, %153
  %155 = add nuw nsw i64 %146, 1
  %156 = icmp eq i64 %155, 3
  br i1 %156, label %157, label %145, !llvm.loop !86

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  store ptr null, ptr %158, align 8, !tbaa !87
  br label %167

159:                                              ; preds = %134
  %160 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  %161 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 55
  %162 = load i32, ptr %161, align 4, !tbaa !83
  %163 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %164 = load i32, ptr %163, align 4, !tbaa !78
  %165 = tail call i32 @get_mem2Dint(ptr noundef nonnull %160, i32 noundef %162, i32 noundef %164) #20
  %166 = add nsw i32 %165, %139
  br label %167

167:                                              ; preds = %159, %157
  %168 = phi i32 [ %139, %157 ], [ %166, %159 ]
  tail call void @init_qp_process(ptr noundef nonnull %0) #20
  store i32 1, ptr %2, align 4, !tbaa !66
  %169 = load i32, ptr %78, align 8, !tbaa !73
  %170 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 59
  store i32 %169, ptr %170, align 4, !tbaa !88
  ret i32 %168
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_global_buffers(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  tail call void @free_mem2Dpel(ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 131
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @free_mem3Dpel(ptr noundef nonnull %5) #20
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  tail call void @free_mem4D(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ %24, %14 ], [ 0, %8 ]
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  tail call void @free(ptr noundef %17) #20
  store ptr null, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 31, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  tail call void @free_mem2Dint(ptr noundef %19) #20
  store ptr null, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  tail call void @free_mem2D(ptr noundef %21) #20
  store ptr null, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %15
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  tail call void @free(ptr noundef %23) #20
  store ptr null, ptr %22, align 8, !tbaa !6
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %46, label %14, !llvm.loop !91

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #20
  store ptr null, ptr %27, align 8, !tbaa !75
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @free_mem2Dint(ptr noundef nonnull %33) #20
  store ptr null, ptr %32, align 8, !tbaa !87
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @free_mem2D(ptr noundef nonnull %38) #20
  store ptr null, ptr %37, align 8, !tbaa !85
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %43) #20
  store ptr null, ptr %42, align 8, !tbaa !77
  br label %46

46:                                               ; preds = %14, %41, %45
  %47 = load ptr, ptr @PicPos, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @free(ptr noundef nonnull %47) #20
  store ptr null, ptr @PicPos, align 8, !tbaa !6
  br label %50

50:                                               ; preds = %49, %46
  tail call void @free_qp_matrices(ptr noundef nonnull %0) #20
  %51 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 129
  store i32 0, ptr %51, align 4, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mem4D(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_qp_process(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem3Dpel(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem4D(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem2D(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_qp_matrices(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @report_stats_on_error() local_unnamed_addr #0 {
  tail call void @exit(i32 noundef -1) #19
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClearDecPicList(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 169
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !92
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %16

8:                                                ; preds = %11
  %9 = load i32, ptr %14, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16, !llvm.loop !93

11:                                               ; preds = %5, %8
  %12 = phi ptr [ %14, %8 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct.decodedpic_t, ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %8, !llvm.loop !93

16:                                               ; preds = %8, %5
  %17 = phi ptr [ %3, %5 ], [ %14, %8 ]
  %18 = phi ptr [ null, %5 ], [ %12, %8 ]
  %19 = icmp eq ptr %17, %3
  br i1 %19, label %28, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %23, %20 ], [ %17, %16 ]
  %22 = getelementptr inbounds %struct.decodedpic_t, ptr %21, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !94

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.decodedpic_t, ptr %21, i64 0, i32 14
  store ptr %3, ptr %26, align 8, !tbaa !10
  store ptr %17, ptr %2, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.decodedpic_t, ptr %18, i64 0, i32 14
  store ptr null, ptr %27, align 8, !tbaa !10
  br label %28

28:                                               ; preds = %11, %1, %25, %16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef ptr @GetOneAvailDecPicFromList(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 0
  %4 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %4)
  br i1 %3, label %13, label %5

5:                                                ; preds = %2, %9
  %6 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.decodedpic_t, ptr %6, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %5, !llvm.loop !96

13:                                               ; preds = %2, %17
  %14 = phi ptr [ %19, %17 ], [ %0, %2 ]
  %15 = load i32, ptr %14, align 8, !tbaa !92
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.decodedpic_t, ptr %14, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !97

21:                                               ; preds = %9, %17
  %22 = phi ptr [ %14, %17 ], [ %6, %9 ]
  %23 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #21
  %24 = getelementptr inbounds %struct.decodedpic_t, ptr %22, i64 0, i32 14
  store ptr %23, ptr %24, align 8, !tbaa !10
  br label %25

25:                                               ; preds = %5, %13, %21
  %26 = phi ptr [ %23, %21 ], [ %14, %13 ], [ %6, %5 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OpenDecoder(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call fastcc i32 @alloc_decoder() #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %58

4:                                                ; preds = %1
  %5 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %6, ptr noundef nonnull align 8 dereferenceable(4016) %0, i64 4016, i1 false)
  %7 = load ptr, ptr %5, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = getelementptr inbounds %struct.decoder_params, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 95
  store i32 %9, ptr %12, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 18
  %14 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 93
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !31
  store <2 x i32> %15, ptr %14, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.inp_par, ptr %7, i64 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %4
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(3) @.str.11) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %16, i32 noundef 0) #20
  %24 = load ptr, ptr %10, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.video_par, ptr %24, i64 0, i32 123
  store i32 %23, ptr %25, align 4, !tbaa !103
  %26 = icmp eq i32 %23, -1
  %27 = load ptr, ptr %5, align 8, !tbaa !98
  br i1 %26, label %28, label %38

28:                                               ; preds = %22
  %29 = load ptr, ptr @stdout, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.inp_par, ptr %27, i64 0, i32 2
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.12, ptr noundef nonnull %30) #22
  %32 = load ptr, ptr @stdout, align 8, !tbaa !6
  %33 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 71, i64 1, ptr %32)
  %34 = load ptr, ptr %10, align 8, !tbaa !101
  %35 = load ptr, ptr %5, align 8, !tbaa !98
  br label %38

36:                                               ; preds = %19, %4
  %37 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 123
  store i32 -1, ptr %37, align 4, !tbaa !103
  br label %38

38:                                               ; preds = %22, %28, %36
  %39 = phi ptr [ %27, %22 ], [ %35, %28 ], [ %7, %36 ]
  %40 = phi ptr [ %24, %22 ], [ %34, %28 ], [ %11, %36 ]
  %41 = getelementptr inbounds %struct.inp_par, ptr %39, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !47
  tail call void @initBitsFile(ptr noundef %40, i32 noundef %42) #20
  %43 = load ptr, ptr %10, align 8, !tbaa !101
  %44 = getelementptr inbounds %struct.video_par, ptr %43, i64 0, i32 145
  %45 = load ptr, ptr %44, align 8, !tbaa !104
  %46 = load ptr, ptr %45, align 8, !tbaa !105
  %47 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void %46(ptr noundef %43, ptr noundef %47) #20
  %48 = load ptr, ptr %10, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.video_par, ptr %48, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !107
  tail call void @init_old_slice(ptr noundef %50) #20
  %51 = load ptr, ptr %10, align 8, !tbaa !101
  tail call fastcc void @init(ptr noundef %51) #22
  %52 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void @init_out_buffer(ptr noundef %52) #20
  %53 = load ptr, ptr %10, align 8, !tbaa !101
  %54 = getelementptr inbounds %struct.video_par, ptr %53, i64 0, i32 121
  %55 = getelementptr inbounds %struct.video_par, ptr %53, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4100) %54, i8 -1, i64 4100, i1 false)
  store ptr null, ptr %55, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.video_par, ptr %53, i64 0, i32 5
  store ptr null, ptr %56, align 8, !tbaa !108
  %57 = getelementptr inbounds %struct.video_par, ptr %53, i64 0, i32 6
  tail call void @init_subset_sps_list(ptr noundef nonnull %57, i32 noundef 32) #20
  br label %58

58:                                               ; preds = %1, %38
  %59 = phi i32 [ 0, %38 ], [ -1, %1 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @alloc_decoder() unnamed_addr #3 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %1, ptr @p_Dec, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !tbaa !6
  %5 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %4) #24
  br label %17

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.decoder_params, ptr %1, i64 0, i32 1
  tail call fastcc void @alloc_video_params(ptr noundef nonnull %7) #22
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  tail call fastcc void @alloc_params(ptr noundef %8) #22
  %9 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.decoder_params, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  store ptr %10, ptr %12, align 8, !tbaa !109
  %13 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.decoder_params, ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.decoder_params, ptr %13, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.decoder_params, ptr %13, i64 0, i32 5
  store i32 0, ptr %16, align 8, !tbaa !112
  br label %17

17:                                               ; preds = %6, %3
  %18 = phi i32 [ -1, %3 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @initBitsFile(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_old_slice(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 59
  store i32 -1, ptr %3, align 4, !tbaa !88
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 130
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 100
  store i32 0, ptr %5, align 4, !tbaa !113
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 101
  store i32 0, ptr %6, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %7, align 4, !tbaa !115
  %8 = getelementptr inbounds %struct.inp_par, ptr %2, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !116
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 90
  store i32 %9, ptr %10, align 4, !tbaa !117
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 91
  store i32 0, ptr %11, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  store i32 0, ptr %12, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 22
  store i32 2, ptr %13, align 8, !tbaa !120
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 128
  store i32 0, ptr %14, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  store i32 0, ptr %16, align 4, !tbaa !123
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 126
  store i32 0, ptr %17, align 8, !tbaa !125
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 120
  store i64 0, ptr %18, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  store ptr null, ptr %19, align 8, !tbaa !127
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 124
  store i32 0, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  store i32 0, ptr %22, align 4, !tbaa !129
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 146
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  tail call void @init_tone_mapping_sei(ptr noundef %25) #20
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 7
  store i32 0, ptr %26, align 8, !tbaa !131
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 8
  store i32 0, ptr %27, align 4, !tbaa !132
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 9
  store i32 0, ptr %28, align 8, !tbaa !133
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 32
  store i32 0, ptr %29, align 8, !tbaa !134
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 117
  store i32 0, ptr %30, align 8, !tbaa !135
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 172
  store <4 x i32> <i32 32, i32 12, i32 16, i32 8>, ptr %31, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 177
  store i32 0, ptr %32, align 4, !tbaa !136
  %33 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 176
  store i32 3, ptr %33, align 8, !tbaa !137
  ret void
}

; Function Attrs: optsize
declare void @init_out_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_subset_sps_list(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_video_params(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = tail call noalias dereferenceable_or_null(856880) ptr @calloc(i64 noundef 1, i64 noundef 856880) #21
  store ptr %2, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.15) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call noalias dereferenceable_or_null(52) ptr @calloc(i64 noundef 1, i64 noundef 52) #21
  %9 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 12
  store ptr %8, ptr %9, align 8, !tbaa !107
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.16) #20
  br label %12

12:                                               ; preds = %11, %6
  %13 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #21
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 13
  store ptr %13, ptr %15, align 8, !tbaa !122
  %16 = icmp eq ptr %13, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.17) #20
  br label %18

18:                                               ; preds = %17, %12
  %19 = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #21
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 152
  store ptr %19, ptr %21, align 8, !tbaa !138
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.18) #20
  br label %24

24:                                               ; preds = %23, %18
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.video_par, ptr %25, i64 0, i32 152
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  %28 = getelementptr inbounds %struct.video_par, ptr %25, i64 0, i32 151
  store ptr %27, ptr %28, align 8, !tbaa !139
  %29 = load ptr, ptr %0, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.video_par, ptr %29, i64 0, i32 151
  %31 = load ptr, ptr %30, align 8, !tbaa !139
  tail call fastcc void @reset_dpb(ptr noundef %29, ptr noundef %31) #22
  br label %32

32:                                               ; preds = %24, %40
  %33 = phi i1 [ true, %24 ], [ false, %40 ]
  %34 = phi i64 [ 0, %24 ], [ 1, %40 ]
  %35 = tail call noalias dereferenceable_or_null(4176) ptr @calloc(i64 noundef 1, i64 noundef 4176) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.video_par, ptr %36, i64 0, i32 153, i64 %34
  store ptr %35, ptr %37, align 8, !tbaa !6
  %38 = icmp eq ptr %35, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #20
  br label %40

40:                                               ; preds = %39, %32
  %41 = load ptr, ptr %0, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.video_par, ptr %41, i64 0, i32 153, i64 %34
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  tail call fastcc void @reset_dpb(ptr noundef %41, ptr noundef %43) #22
  br i1 %33, label %32, label %44, !llvm.loop !140

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.video_par, ptr %45, i64 0, i32 129
  store i32 0, ptr %46, align 4, !tbaa !66
  %47 = tail call noalias dereferenceable_or_null(8232) ptr @calloc(i64 noundef 1, i64 noundef 8232) #21
  %48 = getelementptr inbounds %struct.video_par, ptr %45, i64 0, i32 158
  store ptr %47, ptr %48, align 8, !tbaa !130
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #20
  br label %51

51:                                               ; preds = %50, %44
  %52 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 16, i64 noundef 8) #21
  %53 = load ptr, ptr %0, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.video_par, ptr %53, i64 0, i32 19
  store ptr %52, ptr %54, align 8, !tbaa !141
  %55 = icmp eq ptr %52, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #20
  br label %57

57:                                               ; preds = %56, %51
  %58 = load ptr, ptr %0, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.video_par, ptr %58, i64 0, i32 17
  store i32 16, ptr %59, align 4, !tbaa !142
  %60 = getelementptr inbounds %struct.video_par, ptr %58, i64 0, i32 34
  store ptr null, ptr %60, align 8, !tbaa !143
  %61 = tail call ptr @AllocNALU(i32 noundef 8000000) #20
  %62 = load ptr, ptr %0, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.video_par, ptr %62, i64 0, i32 171
  store ptr %61, ptr %63, align 8, !tbaa !144
  %64 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #21
  %65 = load ptr, ptr %0, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.video_par, ptr %65, i64 0, i32 169
  store ptr %64, ptr %66, align 8, !tbaa !95
  %67 = tail call ptr @AllocPPS() #20
  %68 = load ptr, ptr %0, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.video_par, ptr %68, i64 0, i32 179
  store ptr %67, ptr %69, align 8, !tbaa !145
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_params(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  %2 = tail call noalias dereferenceable_or_null(4016) ptr @calloc(i64 noundef 1, i64 noundef 4016) #21
  store ptr %2, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @reset_dpb(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 {
  store ptr %0, ptr %1, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %1, i64 0, i32 12
  store i32 0, ptr %3, align 8, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare ptr @AllocNALU(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @AllocPPS() local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_tone_mapping_sei(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DecodeOneFrame(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.decoder_params, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  tail call void @ClearDecPicList(ptr noundef %4) #22
  %5 = tail call i32 @decode_one_frame(ptr noundef %2) #20
  switch i32 %5, label %7 [
    i32 2, label %9
    i32 1, label %6
  ]

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  %8 = or i32 %5, 32768
  br label %9

9:                                                ; preds = %1, %6, %7
  %10 = phi i32 [ 1, %6 ], [ %8, %7 ], [ 0, %1 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 169
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  store ptr %13, ptr %0, align 8, !tbaa !6
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @decode_one_frame(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @FinitDecoder(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.decoder_params, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  tail call void @ClearDecPicList(ptr noundef %6) #22
  %7 = load ptr, ptr %5, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 151
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  tail call void @flush_dpb(ptr noundef %9, i32 noundef -1) #20
  %10 = load ptr, ptr %5, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 144
  %12 = load ptr, ptr %11, align 8, !tbaa !149
  tail call void @ResetAnnexB(ptr noundef %12) #20
  %13 = load ptr, ptr %5, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 32
  store i32 0, ptr %14, align 8, !tbaa !134
  %15 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 117
  store i32 0, ptr %15, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 169
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  store ptr %17, ptr %0, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %1, %4
  ret i32 0
}

; Function Attrs: optsize
declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ResetAnnexB(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CloseDecoder() local_unnamed_addr #3 {
  %1 = load ptr, ptr @p_Dec, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.decoder_params, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  tail call fastcc void @Report(ptr noundef %5) #22
  %6 = load ptr, ptr %4, align 8, !tbaa !101
  %7 = tail call i32 @FmoFinit(ptr noundef %6) #20
  %8 = load ptr, ptr %4, align 8, !tbaa !101
  tail call void @free_global_buffers(ptr noundef %8) #22
  %9 = load ptr, ptr %4, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 145
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.sBitsFile, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  tail call void %13(ptr noundef %9) #20
  br label %14

14:                                               ; preds = %3, %22
  %15 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 122, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !31
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @close(i32 noundef %18) #20
  br label %22

22:                                               ; preds = %14, %20
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, 1024
  br i1 %24, label %25, label %14, !llvm.loop !151

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.video_par, ptr %26, i64 0, i32 123
  %28 = load i32, ptr %27, align 4, !tbaa !103
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @close(i32 noundef %28) #20
  %32 = load ptr, ptr %4, align 8, !tbaa !101
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %32, %30 ], [ %26, %25 ]
  %35 = getelementptr inbounds %struct.video_par, ptr %34, i64 0, i32 140
  %36 = load ptr, ptr %35, align 8, !tbaa !152
  tail call void @ercClose(ptr noundef %34, ptr noundef %36) #20
  %37 = load ptr, ptr %4, align 8, !tbaa !101
  tail call void @CleanUpPPS(ptr noundef %37) #20
  br label %38

38:                                               ; preds = %33, %38
  %39 = phi i64 [ 0, %33 ], [ %43, %38 ]
  %40 = load ptr, ptr %4, align 8, !tbaa !101
  %41 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 6
  %42 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %41, i64 %39
  tail call void @reset_subset_sps(ptr noundef nonnull %42) #20
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, 32
  br i1 %44, label %45, label %38, !llvm.loop !153

45:                                               ; preds = %38
  %46 = load ptr, ptr %4, align 8, !tbaa !101
  %47 = getelementptr inbounds %struct.video_par, ptr %46, i64 0, i32 151
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  tail call void @free_dpb(ptr noundef %48) #20
  %49 = load ptr, ptr %4, align 8, !tbaa !101
  tail call void @uninit_out_buffer(ptr noundef %49) #20
  %50 = load ptr, ptr %1, align 8, !tbaa !98
  tail call void @free(ptr noundef %50) #20
  %51 = load ptr, ptr %4, align 8, !tbaa !101
  tail call fastcc void @free_img(ptr noundef %51) #22
  tail call void @free(ptr noundef nonnull %1) #20
  br label %52

52:                                               ; preds = %0, %45
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Report(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca [255 x i8], align 16
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = load ptr, ptr %0, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %9 = getelementptr inbounds %struct.inp_par, ptr %6, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !155
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr @stdout, align 8, !tbaa !6
  br i1 %11, label %13, label %30

13:                                               ; preds = %1
  %14 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 75, i64 1, ptr %12)
  %15 = load ptr, ptr @stdout, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !156
  %18 = fpext float %17 to double
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.24, double noundef %18) #22
  %20 = load ptr, ptr @stdout, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !156
  %23 = fpext float %22 to double
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.25, double noundef %23) #22
  %25 = load ptr, ptr @stdout, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !156
  %28 = fpext float %27 to double
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.26, double noundef %28) #22
  br label %32

30:                                               ; preds = %1
  %31 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 76, i64 1, ptr %12)
  br label %32

32:                                               ; preds = %30, %13
  %33 = load ptr, ptr @stdout, align 8, !tbaa !6
  %34 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 75, i64 1, ptr %33)
  %35 = load ptr, ptr @stdout, align 8, !tbaa !6
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #22
  %37 = load ptr, ptr @stdout, align 8, !tbaa !6
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  %39 = load ptr, ptr @stdout, align 8, !tbaa !6
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #22
  store i64 27977503644020588, ptr %2, align 16
  %41 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.36) #22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.37) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.38, ptr noundef nonnull %2) #20
  call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #22
  unreachable

48:                                               ; preds = %43
  %49 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %44)
  %50 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 93, i64 1, ptr nonnull %44)
  %51 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 118, i64 1, ptr nonnull %44)
  %52 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 118, i64 1, ptr nonnull %44)
  %53 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 117, i64 1, ptr nonnull %44)
  br label %57

54:                                               ; preds = %32
  %55 = tail call i32 @fclose(ptr noundef nonnull %41) #22
  %56 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.37) #22
  br label %57

57:                                               ; preds = %48, %54
  %58 = phi ptr [ %44, %48 ], [ %56, %54 ]
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.44) #22
  %60 = tail call i64 @time(ptr noundef null) #20
  store i64 %60, ptr %3, align 8, !tbaa !158
  %61 = call i64 @time(ptr noundef nonnull %3) #20
  %62 = call ptr @localtime(ptr noundef nonnull %3) #20
  %63 = call i64 @strftime(ptr noundef nonnull %2, i64 noundef 255, ptr noundef nonnull @.str.45, ptr noundef %62) #20
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.46, ptr noundef nonnull %2) #22
  %65 = call i64 @strftime(ptr noundef nonnull %2, i64 noundef 255, ptr noundef nonnull @.str.47, ptr noundef %62) #20
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.46, ptr noundef nonnull %2) #22
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.48, ptr noundef nonnull %6) #22
  %68 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 14
  %69 = load i32, ptr %68, align 8, !tbaa !119
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.49, i32 noundef %69) #22
  %71 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %72 = load i32, ptr %71, align 4, !tbaa !68
  %73 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %74 = load i32, ptr %73, align 8, !tbaa !67
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.50, i32 noundef %72, i32 noundef %74) #22
  %76 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 72
  %77 = load i32, ptr %76, align 8, !tbaa !159
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x [4 x i8]], ptr @Report.yuv_formats, i64 0, i64 %78
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.51, ptr noundef nonnull %79) #22
  %81 = icmp eq ptr %5, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %57
  %83 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !160
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, ptr @.str.52, ptr @.str.53
  %87 = call i64 @fwrite(ptr nonnull %86, i64 7, i64 1, ptr %58)
  br label %88

88:                                               ; preds = %82, %57
  %89 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 2
  %90 = load float, ptr %89, align 4, !tbaa !156
  %91 = fpext float %90 to double
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.54, double noundef %91) #22
  %93 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 2, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !156
  %95 = fpext float %94 to double
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.54, double noundef %95) #22
  %97 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 2, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !156
  %99 = fpext float %98 to double
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.54, double noundef %99) #22
  %101 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 3
  %102 = load float, ptr %101, align 4, !tbaa !156
  %103 = fpext float %102 to double
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.54, double noundef %103) #22
  %105 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 3, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !156
  %107 = fpext float %106 to double
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.54, double noundef %107) #22
  %109 = getelementptr inbounds %struct.snr_par, ptr %8, i64 0, i32 3, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !156
  %111 = fpext float %110 to double
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.54, double noundef %111) #22
  %113 = call i32 @fputc(i32 10, ptr %58)
  %114 = call i32 @fclose(ptr noundef %58) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false)
  %115 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.37) #22
  %116 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 126
  %117 = load i32, ptr %116, align 8, !tbaa !125
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr %68, align 8, !tbaa !119
  %120 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !141
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  br i1 %118, label %147, label %123

123:                                              ; preds = %88
  %124 = getelementptr inbounds %struct.slice, ptr %122, i64 0, i32 29
  %125 = load i32, ptr %124, align 4, !tbaa !162
  %126 = load float, ptr %89, align 4, !tbaa !156
  %127 = fpext float %126 to double
  %128 = load float, ptr %93, align 4, !tbaa !156
  %129 = fpext float %128 to double
  %130 = load float, ptr %97, align 4, !tbaa !156
  %131 = fpext float %130 to double
  %132 = load float, ptr %101, align 4, !tbaa !156
  %133 = fpext float %132 to double
  %134 = load float, ptr %105, align 4, !tbaa !156
  %135 = fpext float %134 to double
  %136 = load float, ptr %109, align 4, !tbaa !156
  %137 = fpext float %136 to double
  %138 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 120
  %139 = load i64, ptr %138, align 8, !tbaa !126
  %140 = sitofp i64 %139 to double
  %141 = fmul double %140, 1.000000e-03
  %142 = add i32 %117, -1
  %143 = add i32 %142, %119
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %141, %144
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.56, i32 noundef %119, i32 noundef 0, i32 noundef %125, double noundef %127, double noundef %129, double noundef %131, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %133, double noundef %135, double noundef %137, i32 noundef 0, double noundef %145) #22
  br label %177

147:                                              ; preds = %88
  %148 = icmp eq ptr %122, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.slice, ptr %122, i64 0, i32 29
  %151 = load i32, ptr %150, align 4, !tbaa !162
  br label %152

152:                                              ; preds = %147, %149
  %153 = phi i32 [ %151, %149 ], [ 0, %147 ]
  %154 = load float, ptr %89, align 4, !tbaa !156
  %155 = fpext float %154 to double
  %156 = load float, ptr %93, align 4, !tbaa !156
  %157 = fpext float %156 to double
  %158 = load float, ptr %97, align 4, !tbaa !156
  %159 = fpext float %158 to double
  %160 = load float, ptr %101, align 4, !tbaa !156
  %161 = fpext float %160 to double
  %162 = load float, ptr %105, align 4, !tbaa !156
  %163 = fpext float %162 to double
  %164 = load float, ptr %109, align 4, !tbaa !156
  %165 = fpext float %164 to double
  %166 = icmp eq i32 %119, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %152
  %168 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 120
  %169 = load i64, ptr %168, align 8, !tbaa !126
  %170 = sitofp i64 %169 to double
  %171 = fmul double %170, 1.000000e-03
  %172 = sitofp i32 %119 to double
  %173 = fdiv double %171, %172
  br label %174

174:                                              ; preds = %152, %167
  %175 = phi double [ %173, %167 ], [ 0.000000e+00, %152 ]
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.56, i32 noundef %119, i32 noundef 0, i32 noundef %153, double noundef %155, double noundef %157, double noundef %159, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0, double noundef %161, double noundef %163, double noundef %165, i32 noundef 0, double noundef %175) #22
  br label %177

177:                                              ; preds = %174, %123
  %178 = call i32 @fclose(ptr noundef %115) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare i32 @FmoFinit(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ercClose(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @CleanUpPPS(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @reset_subset_sps(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_dpb(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @uninit_out_buffer(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_img(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %82, label %3

3:                                                ; preds = %1
  tail call void @free_annex_b(ptr noundef nonnull %0) #20
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 158
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #20
  store ptr null, ptr %4, align 8, !tbaa !130
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 145
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #20
  store ptr null, ptr %9, align 8, !tbaa !104
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 152
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %15) #20
  store ptr null, ptr %14, align 8, !tbaa !138
  br label %18

18:                                               ; preds = %17, %13
  br label %19

19:                                               ; preds = %18, %26
  %20 = phi i1 [ false, %26 ], [ true, %18 ]
  %21 = phi i64 [ 1, %26 ], [ 0, %18 ]
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 153, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %23) #20
  store ptr null, ptr %22, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %19, %25
  br i1 %20, label %19, label %27, !llvm.loop !163

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 151
  store ptr null, ptr %28, align 8, !tbaa !139
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !122
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %30) #20
  store ptr null, ptr %29, align 8, !tbaa !122
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !107
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %35) #20
  store ptr null, ptr %34, align 8, !tbaa !107
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 34
  %40 = load ptr, ptr %39, align 8, !tbaa !143
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @free_slice(ptr noundef nonnull %40) #22
  store ptr null, ptr %39, align 8, !tbaa !143
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !141
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !142
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47, %60
  %52 = phi i32 [ %61, %60 ], [ %49, %47 ]
  %53 = phi i64 [ %62, %60 ], [ 0, %47 ]
  %54 = load ptr, ptr %44, align 8, !tbaa !141
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  tail call fastcc void @free_slice(ptr noundef nonnull %56) #22
  %59 = load i32, ptr %48, align 4, !tbaa !142
  br label %60

60:                                               ; preds = %51, %58
  %61 = phi i32 [ %52, %51 ], [ %59, %58 ]
  %62 = add nuw nsw i64 %53, 1
  %63 = sext i32 %61 to i64
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %51, label %65, !llvm.loop !164

65:                                               ; preds = %60
  %66 = load ptr, ptr %44, align 8, !tbaa !141
  br label %67

67:                                               ; preds = %65, %47
  %68 = phi ptr [ %66, %65 ], [ %45, %47 ]
  tail call void @free(ptr noundef %68) #20
  br label %69

69:                                               ; preds = %67, %43
  %70 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 171
  %71 = load ptr, ptr %70, align 8, !tbaa !144
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @FreeNALU(ptr noundef nonnull %71) #20
  store ptr null, ptr %70, align 8, !tbaa !144
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 169
  %76 = load ptr, ptr %75, align 8, !tbaa !95
  tail call void @FreeDecPicList(ptr noundef %76) #22
  %77 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 179
  %78 = load ptr, ptr %77, align 8, !tbaa !145
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @FreePPS(ptr noundef nonnull %78) #20
  br label %81

81:                                               ; preds = %80, %74
  tail call void @free(ptr noundef nonnull %0) #20
  br label %82

82:                                               ; preds = %81, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @free_annex_b(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_slice(ptr noundef %0) unnamed_addr #3 {
  tail call void @free_pred_mem(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  tail call void @free_mem3Dint(ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 79
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  tail call void @free_mem3Dint(ptr noundef %5) #20
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 78
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  tail call void @free_mem3Dpel(ptr noundef %7) #20
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 77
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  tail call void @free_mem3Dpel(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 100
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  tail call void @free_mem3Dint(ptr noundef %11) #20
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 101
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  tail call void @free_mem3Dint(ptr noundef %13) #20
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 102
  %15 = load ptr, ptr %14, align 8, !tbaa !171
  tail call void @free_mem4Dint(ptr noundef %15) #20
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  tail call void @FreePartition(ptr noundef %17, i32 noundef 3) #22
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 58
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  tail call void @delete_contexts_MotionInfo(ptr noundef %19) #20
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 59
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  tail call void @delete_contexts_TextureInfo(ptr noundef %21) #20
  br label %26

22:                                               ; preds = %32
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %35

26:                                               ; preds = %1, %32
  %27 = phi i64 [ 0, %1 ], [ %33, %32 ]
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %29) #20
  store ptr null, ptr %28, align 8, !tbaa !6
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, 6
  br i1 %34, label %22, label %26, !llvm.loop !173

35:                                               ; preds = %22, %35
  %36 = phi ptr [ %39, %35 ], [ %24, %22 ]
  %37 = getelementptr inbounds %struct.DecRefPicMarking_s, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !174
  store ptr %38, ptr %23, align 8, !tbaa !172
  tail call void @free(ptr noundef nonnull %36) #20
  %39 = load ptr, ptr %23, align 8, !tbaa !172
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35, !llvm.loop !176

41:                                               ; preds = %35, %22
  tail call void @free(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @FreeNALU(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @FreePPS(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_pred_mem(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem3Dint(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_mem4Dint(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold optsize }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0,1) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 72}
!11 = !{!"decodedpic_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !7, i64 72}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 24}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !18, i64 849040}
!17 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !12, i64 848672, !12, i64 848676, !12, i64 848680, !12, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !12, i64 848712, !12, i64 848716, !12, i64 848720, !12, i64 848724, !12, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !12, i64 848776, !12, i64 848780, !12, i64 848784, !12, i64 848788, !12, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !12, i64 848872, !12, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !12, i64 848920, !7, i64 848928, !7, i64 848936, !12, i64 848944, !12, i64 848948, !12, i64 848952, !12, i64 848956, !12, i64 848960, !12, i64 848964, !12, i64 848968, !12, i64 848972, !12, i64 848976, !12, i64 848980, !12, i64 848984, !12, i64 848988, !12, i64 848992, !12, i64 848996, !12, i64 849000, !12, i64 849004, !12, i64 849008, !12, i64 849012, !12, i64 849016, !12, i64 849020, !12, i64 849024, !12, i64 849028, !12, i64 849032, !12, i64 849036, !18, i64 849040, !18, i64 849042, !8, i64 849044, !12, i64 849052, !12, i64 849056, !8, i64 849060, !8, i64 849072, !12, i64 849084, !12, i64 849088, !12, i64 849092, !12, i64 849096, !12, i64 849100, !12, i64 849104, !12, i64 849108, !12, i64 849112, !12, i64 849116, !12, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !12, i64 849196, !12, i64 849200, !12, i64 849204, !12, i64 849208, !12, i64 849212, !12, i64 849216, !12, i64 849220, !12, i64 849224, !12, i64 849228, !12, i64 849232, !12, i64 849236, !12, i64 849240, !12, i64 849244, !12, i64 849248, !12, i64 849252, !12, i64 849256, !12, i64 849260, !12, i64 849264, !12, i64 849268, !12, i64 849272, !12, i64 849276, !12, i64 849280, !12, i64 849284, !7, i64 849288, !7, i64 849296, !19, i64 849304, !19, i64 849624, !19, i64 849944, !19, i64 850264, !19, i64 850584, !19, i64 850904, !19, i64 851224, !19, i64 851544, !12, i64 851864, !12, i64 851868, !12, i64 851872, !22, i64 851880, !12, i64 851888, !8, i64 851892, !12, i64 855988, !12, i64 855992, !12, i64 855996, !12, i64 856000, !12, i64 856004, !12, i64 856008, !12, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !12, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !12, i64 856640, !12, i64 856644, !12, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !12, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !12, i64 856824, !7, i64 856832, !12, i64 856840, !12, i64 856844, !12, i64 856848, !12, i64 856852, !12, i64 856856, !12, i64 856860, !12, i64 856864, !7, i64 856872}
!18 = !{!"short", !8, i64 0}
!19 = !{!"image_data", !20, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!20 = !{!"frame_format", !12, i64 0, !12, i64 4, !21, i64 8, !8, i64 16, !8, i64 28, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !8, i64 72, !12, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !12, i64 124, !12, i64 128}
!21 = !{!"double", !8, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!17, !12, i64 849052}
!24 = !{!17, !18, i64 849042}
!25 = !{!17, !7, i64 16}
!26 = !{!27, !12, i64 36}
!27 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 44, !8, i64 92, !8, i64 476, !8, i64 2012, !8, i64 2036, !12, i64 2060, !12, i64 2064, !12, i64 2068, !12, i64 2072, !12, i64 2076, !12, i64 2080, !12, i64 2084, !12, i64 2088, !12, i64 2092, !8, i64 2096, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !12, i64 3152, !12, i64 3156, !12, i64 3160, !12, i64 3164, !12, i64 3168, !28, i64 3172, !12, i64 4120, !12, i64 4124}
!28 = !{!"", !12, i64 0, !12, i64 4, !18, i64 8, !18, i64 10, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !29, i64 80, !12, i64 492, !29, i64 496, !12, i64 908, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!29 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!30 = !{!17, !12, i64 849036}
!31 = !{!12, !12, i64 0}
!32 = !{!17, !12, i64 849056}
!33 = !{!17, !12, i64 849096}
!34 = !{!17, !12, i64 849100}
!35 = !{!17, !12, i64 849104}
!36 = !{!17, !12, i64 849108}
!37 = !{!17, !12, i64 849112}
!38 = !{!17, !12, i64 849196}
!39 = !{!17, !12, i64 849200}
!40 = distinct !{!40, !15}
!41 = !{!42, !7, i64 0}
!42 = !{!"datapartition", !7, i64 0, !43, i64 8, !7, i64 40}
!43 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !7, i64 24}
!44 = !{!45, !7, i64 16}
!45 = !{!"bit_stream", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !7, i64 16, !12, i64 24}
!46 = distinct !{!46, !15}
!47 = !{!48, !12, i64 768}
!48 = !{!"inp_par", !8, i64 0, !8, i64 255, !8, i64 510, !12, i64 768, !12, i64 772, !12, i64 776, !12, i64 780, !12, i64 784, !12, i64 788, !20, i64 792, !20, i64 928, !12, i64 1064, !12, i64 1068, !49, i64 1072, !49, i64 2040, !49, i64 3008, !12, i64 3976, !12, i64 3980, !12, i64 3984, !12, i64 3988, !12, i64 3992, !12, i64 3996, !12, i64 4000, !12, i64 4004, !12, i64 4008, !12, i64 4012}
!49 = !{!"video_data_file", !8, i64 0, !8, i64 255, !8, i64 510, !12, i64 768, !12, i64 772, !20, i64 776, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944, !12, i64 948, !12, i64 952, !7, i64 960}
!50 = !{!51, !7, i64 320}
!51 = !{!"slice", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !7, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !8, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !18, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !8, i64 136, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !8, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !7, i64 248, !8, i64 256, !8, i64 264, !7, i64 312, !7, i64 320, !7, i64 328, !8, i64 336, !8, i64 1104, !8, i64 1112, !8, i64 1128, !8, i64 1144, !8, i64 1160, !12, i64 1176, !12, i64 1180, !12, i64 1184, !52, i64 1188, !18, i64 1220, !18, i64 1222, !18, i64 1224, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !8, i64 1288, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !8, i64 1392, !8, i64 2544, !8, i64 3696, !8, i64 8304, !8, i64 12912, !8, i64 13008, !12, i64 13264, !12, i64 13268, !18, i64 13272, !18, i64 13274, !18, i64 13276, !18, i64 13278, !7, i64 13280, !7, i64 13288, !7, i64 13296, !18, i64 13304, !18, i64 13306, !12, i64 13308, !12, i64 13312, !7, i64 13320, !7, i64 13328, !12, i64 13336, !8, i64 13340, !7, i64 13408, !7, i64 13416, !7, i64 13424, !7, i64 13432, !7, i64 13440, !7, i64 13448, !7, i64 13456, !7, i64 13464, !7, i64 13472, !7, i64 13480, !7, i64 13488, !7, i64 13496, !12, i64 13504, !7, i64 13512, !7, i64 13520, !7, i64 13528, !7, i64 13536, !7, i64 13544, !8, i64 13552}
!52 = !{!"nalunitheadermvcext_tag", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28}
!53 = !{!51, !7, i64 328}
!54 = !{!51, !12, i64 196}
!55 = !{!51, !7, i64 312}
!56 = !{!51, !12, i64 1176}
!57 = !{!51, !12, i64 1180}
!58 = !{!51, !12, i64 1184}
!59 = distinct !{!59, !15, !60, !61}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = !{!8, !8, i64 0}
!65 = distinct !{!65, !15}
!66 = !{!17, !12, i64 856012}
!67 = !{!17, !12, i64 848784}
!68 = !{!17, !12, i64 848780}
!69 = !{!17, !12, i64 848792}
!70 = !{!17, !12, i64 848788}
!71 = !{!17, !7, i64 856024}
!72 = !{!17, !12, i64 849280}
!73 = !{!17, !12, i64 849016}
!74 = distinct !{!74, !15}
!75 = !{!17, !7, i64 848888}
!76 = distinct !{!76, !15}
!77 = !{!17, !7, i64 848744}
!78 = !{!17, !12, i64 848996}
!79 = !{!80, !18, i64 0}
!80 = !{!"", !18, i64 0, !18, i64 2}
!81 = !{!80, !18, i64 2}
!82 = distinct !{!82, !15}
!83 = !{!17, !12, i64 849004}
!84 = distinct !{!84, !15}
!85 = !{!17, !7, i64 848800}
!86 = distinct !{!86, !15}
!87 = !{!17, !7, i64 848840}
!88 = !{!17, !12, i64 849020}
!89 = !{!17, !7, i64 856016}
!90 = !{!17, !7, i64 848832}
!91 = distinct !{!91, !15}
!92 = !{!11, !12, i64 0}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = !{!17, !7, i64 856816}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = !{!99, !7, i64 0}
!99 = !{!"decoder_params", !7, i64 0, !7, i64 8, !22, i64 16, !12, i64 24, !7, i64 32, !12, i64 40}
!100 = !{!48, !12, i64 3980}
!101 = !{!99, !7, i64 8}
!102 = !{!17, !12, i64 849240}
!103 = !{!17, !12, i64 855988}
!104 = !{!17, !7, i64 856616}
!105 = !{!106, !7, i64 0}
!106 = !{!"sBitsFile", !7, i64 0, !7, i64 8, !7, i64 16}
!107 = !{!17, !7, i64 848696}
!108 = !{!17, !7, i64 699416}
!109 = !{!17, !7, i64 0}
!110 = !{!99, !7, i64 32}
!111 = !{!99, !22, i64 16}
!112 = !{!99, !12, i64 40}
!113 = !{!17, !12, i64 849260}
!114 = !{!17, !12, i64 849264}
!115 = !{!17, !12, i64 849276}
!116 = !{!48, !12, i64 772}
!117 = !{!17, !12, i64 849220}
!118 = !{!17, !12, i64 849224}
!119 = !{!17, !12, i64 848712}
!120 = !{!17, !12, i64 848776}
!121 = !{!17, !12, i64 856008}
!122 = !{!17, !7, i64 848704}
!123 = !{!124, !12, i64 0}
!124 = !{!"snr_par", !12, i64 0, !8, i64 4, !8, i64 16, !8, i64 28, !8, i64 40, !8, i64 52}
!125 = !{!17, !12, i64 856000}
!126 = !{!17, !22, i64 851880}
!127 = !{!17, !7, i64 856456}
!128 = !{!17, !12, i64 855992}
!129 = !{!17, !12, i64 855996}
!130 = !{!17, !7, i64 856728}
!131 = !{!17, !12, i64 848672}
!132 = !{!17, !12, i64 848676}
!133 = !{!17, !12, i64 848680}
!134 = !{!17, !12, i64 848872}
!135 = !{!17, !12, i64 851864}
!136 = !{!17, !12, i64 856860}
!137 = !{!17, !12, i64 856856}
!138 = !{!17, !7, i64 856664}
!139 = !{!17, !7, i64 856656}
!140 = distinct !{!140, !15}
!141 = !{!17, !7, i64 848736}
!142 = !{!17, !12, i64 848724}
!143 = !{!17, !7, i64 848880}
!144 = !{!17, !7, i64 856832}
!145 = !{!17, !7, i64 856872}
!146 = !{!147, !7, i64 0}
!147 = !{!"decoded_picture_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64, !12, i64 4160, !12, i64 4164, !7, i64 4168}
!148 = !{!147, !12, i64 4160}
!149 = !{!17, !7, i64 856608}
!150 = !{!106, !7, i64 8}
!151 = distinct !{!151, !15}
!152 = !{!17, !7, i64 856504}
!153 = distinct !{!153, !15}
!154 = !{!17, !7, i64 8}
!155 = !{!48, !12, i64 784}
!156 = !{!157, !157, i64 0}
!157 = !{!"float", !8, i64 0}
!158 = !{!22, !22, i64 0}
!159 = !{!17, !12, i64 849088}
!160 = !{!161, !12, i64 12}
!161 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24, !8, i64 72, !8, i64 456, !8, i64 1992, !8, i64 2016, !12, i64 2040, !12, i64 2044, !12, i64 2048, !8, i64 2052, !8, i64 2084, !8, i64 2116, !12, i64 2148, !12, i64 2152, !12, i64 2156, !7, i64 2160, !12, i64 2168, !12, i64 2172, !12, i64 2176, !12, i64 2180, !12, i64 2184, !12, i64 2188, !12, i64 2192, !12, i64 2196, !12, i64 2200, !12, i64 2204, !12, i64 2208}
!162 = !{!51, !12, i64 148}
!163 = distinct !{!163, !15}
!164 = distinct !{!164, !15}
!165 = !{!51, !7, i64 1272}
!166 = !{!51, !7, i64 1264}
!167 = !{!51, !7, i64 1256}
!168 = !{!51, !7, i64 1248}
!169 = !{!51, !7, i64 13280}
!170 = !{!51, !7, i64 13288}
!171 = !{!51, !7, i64 13296}
!172 = !{!51, !7, i64 248}
!173 = distinct !{!173, !15}
!174 = !{!175, !7, i64 24}
!175 = !{!"DecRefPicMarking_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24}
!176 = distinct !{!176, !15}

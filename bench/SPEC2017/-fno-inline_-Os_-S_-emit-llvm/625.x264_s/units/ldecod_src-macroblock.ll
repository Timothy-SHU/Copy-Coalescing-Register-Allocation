; ModuleID = 'ldecod_src/macroblock.c'
source_filename = "ldecod_src/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@QP_SCALE_CR = internal unnamed_addr constant [52 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''", align 16
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@PicPos = external local_unnamed_addr global ptr, align 8
@assignSE2partition = internal constant [2 x [20 x i8]] [[20 x i8] zeroinitializer, [20 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\00\02\02\02\02\00\00\00\00"], align 16
@BLOCK_STEP = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1]], align 16
@.str.2 = private unnamed_addr constant [33 x i8] c"illegal chroma intra pred mode!\0A\00", align 1
@interpret_mb_mode_B.offset2pdir16x16 = internal unnamed_addr constant <{ i16, i16, i16, i16, [8 x i16] }> <{ i16 0, i16 0, i16 1, i16 2, [8 x i16] zeroinitializer }>, align 16
@interpret_mb_mode_B.offset2pdir16x8 = internal unnamed_addr constant [22 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 2], [2 x i16] zeroinitializer], align 16
@interpret_mb_mode_B.offset2pdir8x16 = internal unnamed_addr constant [22 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 2]], align 16
@interpret_mb_mode_I.ICBPTAB = internal unnamed_addr constant [6 x i16] [i16 0, i16 16, i16 32, i16 15, i16 31, i16 47], align 2
@__const.interpret_mb_mode_SI.ICBPTAB = private unnamed_addr constant [6 x i32] [i32 0, i32 16, i32 32, i32 15, i32 31, i32 47], align 16
@SNGL_SCAN = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\03\03"], align 16
@FIELD_SCAN = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03", [2 x i8] c"\02\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\02\03", [2 x i8] c"\03\00", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\03\03"], align 16
@.str.4 = private unnamed_addr constant [28 x i8] c"mb_qp_delta is out of range\00", align 1
@SNGL_SCAN8x8 = internal unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 16
@FIELD_SCAN8x8 = internal unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 16
@SCAN_YUV422 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03"], align 16
@cofuv_blk_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03"]], align 16
@cofuv_blk_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] c"\02\02\03\03", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] c"\02\02\03\03"]], align 16
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@cbp_blk_chroma = internal unnamed_addr constant [8 x [4 x i8]] [[4 x i8] c"\10\11\12\13", [4 x i8] c"\14\15\16\17", [4 x i8] c"\18\19\1A\1B", [4 x i8] c"\1C\1D\1E\1F", [4 x i8] c" !\22#", [4 x i8] c"$%&'", [4 x i8] c"()*+", [4 x i8] c",-./"], align 16
@readCoeff4x4_CAVLC.incVlc = internal unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 6, i32 12, i32 24, i32 48, i32 32768], align 16
@SetB8Mode.p_v2b8 = internal unnamed_addr constant [5 x i8] c"\04\05\06\07\0B", align 1
@SetB8Mode.p_v2pd = internal unnamed_addr constant [5 x i8] c"\00\00\00\00\FF", align 1
@SetB8Mode.b_v2b8 = internal unnamed_addr constant [14 x i8] c"\00\04\04\04\05\06\05\06\05\06\07\07\07\0B", align 1
@SetB8Mode.b_v2pd = internal unnamed_addr constant [14 x i8] c"\02\00\01\02\00\00\01\01\02\02\00\01\02\FF", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"writeCoeff4x4_CAVLC: Invalid block type\00", align 1
@str = private unnamed_addr constant [23 x i8] c"Unsupported slice type\00", align 1
@str.7 = private unnamed_addr constant [32 x i8] c"Unsupported entropy coding mode\00", align 1
@str.8 = private unnamed_addr constant [32 x i8] c"Partition Mode is not supported\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_chroma_qp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 68
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 4, !tbaa !18
  br label %10

10:                                               ; preds = %1, %26
  %11 = phi i1 [ true, %1 ], [ false, %26 ]
  %12 = phi i64 [ 0, %1 ], [ 1, %26 ]
  %13 = load i32, ptr %7, align 8, !tbaa !19
  %14 = sub nsw i32 0, %13
  %15 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 56, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !25
  %17 = add nsw i32 %16, %9
  %18 = tail call fastcc i32 @iClip3(i32 noundef %14, i32 noundef %17) #17
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %12
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = zext nneg i32 %18 to i64
  %23 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !26
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %10, %21
  %27 = phi i32 [ %25, %21 ], [ %18, %10 ]
  store i32 %27, ptr %19, align 4, !tbaa !25
  %28 = load i32, ptr %7, align 8, !tbaa !19
  %29 = add nsw i32 %28, %27
  %30 = add nuw nsw i64 %12, 1
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %30
  store i32 %29, ptr %31, align 4, !tbaa !25
  br i1 %11, label %10, label %32, !llvm.loop !27

32:                                               ; preds = %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1, i32 noundef %0) #17
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef 51) #17
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_qp(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %1, ptr %5, align 4, !tbaa !18
  %6 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 67
  %7 = load i32, ptr %6, align 4, !tbaa !29
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %8, ptr %9, align 8, !tbaa !25
  tail call void @set_chroma_qp(ptr noundef %0) #17
  %10 = load i32, ptr %9, align 8, !tbaa !25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 73
  %14 = load i32, ptr %13, align 4, !tbaa !30
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %12 ]
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %18, ptr %19, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @invScaleCoeff(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10) local_unnamed_addr #3 {
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %11
  %14 = add nsw i32 %2, 1
  %15 = add nsw i32 %14, %8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x i8], ptr %9, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !26
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [2 x i8], ptr %9, i64 %16, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !26
  %22 = zext i8 %21 to i32
  %23 = shl i32 %5, 2
  %24 = add nsw i32 %23, %4
  %25 = tail call fastcc i64 @i64_power2(i32 noundef %24) #17
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %27 = load i64, ptr %26, align 8, !tbaa !32
  %28 = or i64 %27, %25
  store i64 %28, ptr %26, align 8, !tbaa !32
  %29 = zext i8 %21 to i64
  %30 = zext i8 %18 to i64
  %31 = getelementptr inbounds [4 x i32], ptr %10, i64 %29, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !25
  %33 = mul nsw i32 %32, %1
  %34 = shl i32 %33, %3
  %35 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %34, i32 noundef 4) #17, !range !33
  %36 = load ptr, ptr %0, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.slice, ptr %36, i64 0, i32 80
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = add nsw i32 %23, %22
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = shl i32 %4, 2
  %45 = add nsw i32 %44, %19
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  store i32 %35, ptr %47, align 4, !tbaa !25
  br label %48

48:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @i64_power2(i32 noundef %0) unnamed_addr #2 {
  %2 = icmp sgt i32 %0, 63
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !32
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = add nsw i32 %1, -1
  %4 = shl nuw nsw i32 1, %3
  %5 = add nsw i32 %4, %0
  %6 = ashr i32 %5, %1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @start_macroblock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10
  store ptr %11, ptr %1, align 8, !tbaa !35
  store ptr %0, ptr %11, align 8, !tbaa !14
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 1
  store ptr %3, ptr %13, align 8, !tbaa !6
  %14 = load ptr, ptr %1, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 3
  store i32 %7, ptr %15, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %17 = load i32, ptr %16, align 8, !tbaa !40
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = sdiv i32 %21, 8
  %23 = srem i32 %7, %22
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 4
  %26 = sdiv i32 %7, %22
  %27 = trunc i32 %26 to i16
  %28 = shl i16 %27, 1
  %29 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 4, i32 1
  %30 = and i16 %24, 1
  %31 = or disjoint i16 %28, %30
  store i16 %31, ptr %29, align 2, !tbaa !42
  %32 = ashr i16 %24, 1
  store i16 %32, ptr %25, align 4, !tbaa !43
  br label %43

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 4
  %35 = load ptr, ptr @PicPos, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.BlockPos, ptr %35, i64 %10
  %37 = load i32, ptr %36, align 2
  store i32 %37, ptr %34, align 4
  %38 = load ptr, ptr %1, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.macroblock, ptr %38, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !43
  %41 = getelementptr inbounds %struct.macroblock, ptr %38, i64 0, i32 4, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !42
  br label %43

43:                                               ; preds = %33, %19
  %44 = phi i16 [ %42, %33 ], [ %31, %19 ]
  %45 = phi i16 [ %40, %33 ], [ %32, %19 ]
  %46 = phi ptr [ %38, %33 ], [ %14, %19 ]
  %47 = sext i16 %45 to i32
  %48 = shl nsw i32 %47, 2
  %49 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 5
  store i32 %48, ptr %49, align 8, !tbaa !44
  %50 = sext i16 %44 to i32
  %51 = shl nsw i32 %50, 2
  %52 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 6
  store i32 %51, ptr %52, align 4, !tbaa !45
  %53 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 7
  store i32 %51, ptr %53, align 8, !tbaa !46
  %54 = shl nsw i32 %47, 4
  %55 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 8
  store i32 %54, ptr %55, align 4, !tbaa !47
  %56 = shl nsw i32 %50, 4
  %57 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 9
  store i32 %56, ptr %57, align 8, !tbaa !48
  %58 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 77
  %59 = load i32, ptr %58, align 4, !tbaa !49
  %60 = mul nsw i32 %59, %47
  %61 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 10
  store i32 %60, ptr %61, align 4, !tbaa !50
  %62 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 78
  %63 = load i32, ptr %62, align 8, !tbaa !51
  %64 = mul nsw i32 %63, %50
  %65 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 11
  store i32 %64, ptr %65, align 8, !tbaa !52
  %66 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 18
  store i32 0, ptr %66, align 8, !tbaa !53
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 22
  %68 = load i16, ptr %67, align 4, !tbaa !54
  %69 = getelementptr inbounds %struct.macroblock, ptr %46, i64 0, i32 21
  store i16 %68, ptr %69, align 4, !tbaa !55
  %70 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 39
  %71 = load ptr, ptr %70, align 8, !tbaa !56
  %72 = sext i16 %44 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = sext i16 %45 to i64
  %76 = getelementptr inbounds i16, ptr %74, i64 %75
  store i16 %68, ptr %76, align 2, !tbaa !59
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %46) #18
  %77 = load ptr, ptr %1, align 8, !tbaa !35
  %78 = load i32, ptr %16, align 8, !tbaa !40
  tail call void @init_motion_vector_prediction(ptr noundef %77, i32 noundef %78) #18
  %79 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !60
  %81 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %80, i64 0, i32 9
  %82 = load i32, ptr %81, align 4, !tbaa !61
  tail call void @set_read_and_store_CBP(ptr noundef nonnull %1, i32 noundef %82) #18
  %83 = load ptr, ptr %1, align 8, !tbaa !35
  %84 = getelementptr inbounds %struct.macroblock, ptr %83, i64 0, i32 30
  store i16 0, ptr %84, align 8, !tbaa !65
  %85 = getelementptr inbounds %struct.macroblock, ptr %83, i64 0, i32 24
  store i16 0, ptr %85, align 8, !tbaa !66
  %86 = getelementptr inbounds %struct.macroblock, ptr %83, i64 0, i32 32
  store i32 0, ptr %86, align 4, !tbaa !67
  %87 = getelementptr inbounds %struct.macroblock, ptr %83, i64 0, i32 40
  store i8 0, ptr %87, align 1, !tbaa !68
  %88 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %89 = load i32, ptr %88, align 4, !tbaa !69
  switch i32 %89, label %91 [
    i32 2, label %94
    i32 1, label %90
  ]

90:                                               ; preds = %43
  br label %91

91:                                               ; preds = %43, %90
  %92 = phi i32 [ 128, %90 ], [ 64, %43 ]
  %93 = getelementptr inbounds %struct.macroblock, ptr %83, i64 0, i32 31
  tail call fastcc void @fast_memset(ptr noundef nonnull %93, i32 noundef %92) #17
  br label %94

94:                                               ; preds = %91, %43
  %95 = load ptr, ptr %1, align 8, !tbaa !35
  %96 = getelementptr i8, ptr %95, i64 288
  %97 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %96, i8 0, i64 72, i1 false)
  %98 = load i32, ptr %97, align 8, !tbaa !70
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %134

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 79
  %102 = load ptr, ptr %101, align 8, !tbaa !71
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  tail call fastcc void @fast_memset(ptr noundef %104, i32 noundef 1024) #17
  %105 = load ptr, ptr %101, align 8, !tbaa !71
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !35
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load i32, ptr %58, align 4, !tbaa !49
  %110 = load i32, ptr %62, align 8, !tbaa !51
  %111 = shl i32 %109, 2
  %112 = mul i32 %111, %110
  tail call fastcc void @fast_memset(ptr noundef %108, i32 noundef %112) #17
  %113 = load ptr, ptr %101, align 8, !tbaa !71
  %114 = getelementptr inbounds ptr, ptr %113, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = load i32, ptr %58, align 4, !tbaa !49
  %118 = load i32, ptr %62, align 8, !tbaa !51
  %119 = shl i32 %117, 2
  %120 = mul i32 %119, %118
  tail call fastcc void @fast_memset(ptr noundef %116, i32 noundef %120) #17
  %121 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  tail call fastcc void @fast_memset(ptr noundef %124, i32 noundef 1024) #17
  %125 = load ptr, ptr %121, align 8, !tbaa !34
  %126 = getelementptr inbounds ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = load ptr, ptr %127, align 8, !tbaa !35
  tail call fastcc void @fast_memset(ptr noundef %128, i32 noundef 1024) #17
  %129 = load ptr, ptr %121, align 8, !tbaa !34
  %130 = getelementptr inbounds ptr, ptr %129, i64 2
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  tail call fastcc void @fast_memset(ptr noundef %132, i32 noundef 1024) #17
  store i32 1, ptr %97, align 8, !tbaa !70
  %133 = load ptr, ptr %1, align 8, !tbaa !35
  br label %134

134:                                              ; preds = %100, %94
  %135 = phi ptr [ %133, %100 ], [ %95, %94 ]
  %136 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  %137 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 42
  %138 = load <2 x i16>, ptr %136, align 4, !tbaa !59
  store <2 x i16> %138, ptr %137, align 8, !tbaa !59
  %139 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  %140 = load i16, ptr %139, align 8, !tbaa !72
  %141 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 44
  store i16 %140, ptr %141, align 4, !tbaa !73
  %142 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 25
  store i16 0, ptr %142, align 2, !tbaa !74
  %143 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 61
  store i8 0, ptr %143, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_motion_vector_prediction(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_read_and_store_CBP(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fast_memset(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %3, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @exit_macroblock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 57
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = add i32 %10, -1
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @FmoGetNextMBNr(ptr noundef nonnull %3, i32 noundef %8) #18
  store i32 %14, ptr %7, align 4, !tbaa !37
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 114
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = tail call i32 %18(ptr noundef nonnull %0, i32 noundef %1) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !69
  switch i32 %23, label %24 [
    i32 2, label %35
    i32 4, label %35
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !80
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 23
  %32 = load i32, ptr %31, align 8, !tbaa !82
  %33 = icmp slt i32 %32, 1
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %30, %24, %21, %21, %16, %13, %2
  %36 = phi i32 [ 1, %2 ], [ 1, %13 ], [ 0, %16 ], [ 1, %21 ], [ 1, %21 ], [ 1, %24 ], [ %34, %30 ]
  ret i32 %36
}

; Function Attrs: optsize
declare i32 @FmoGetNextMBNr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setup_slice_methods(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %3 = load i32, ptr %2, align 4, !tbaa !69
  switch i32 %3, label %58 [
    i32 0, label %4
    i32 3, label %15
    i32 1, label %26
    i32 2, label %36
    i32 4, label %47
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_P, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr @read_motion_info_from_NAL_p_slice, ptr %6, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_p_slice, ptr %7, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_p_slice, ptr %8, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %9, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @init_lists_p_slice, ptr @init_lists_p_slice_mvc
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %13, ptr %14, align 8, !tbaa !89
  br label %60

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_P, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr @read_motion_info_from_NAL_p_slice, ptr %17, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_p_slice, ptr %18, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_sp_slice, ptr %19, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %20, align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %22 = load i32, ptr %21, align 8, !tbaa !88
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @init_lists_p_slice, ptr @init_lists_p_slice_mvc
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %24, ptr %25, align 8, !tbaa !89
  br label %60

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_B, ptr %27, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr @read_motion_info_from_NAL_b_slice, ptr %28, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_b_slice, ptr %29, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_b_slice, ptr %30, align 8, !tbaa !86
  tail call void @update_direct_types(ptr noundef nonnull %0) #18
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %32 = load i32, ptr %31, align 8, !tbaa !88
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @init_lists_b_slice, ptr @init_lists_b_slice_mvc
  %35 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %34, ptr %35, align 8, !tbaa !89
  br label %60

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_I, ptr %37, align 8, !tbaa !83
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr null, ptr %38, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_i_slice, ptr %39, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_i_slice, ptr %40, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %41, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %43 = load i32, ptr %42, align 8, !tbaa !88
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @init_lists_i_slice, ptr @init_lists_i_slice_mvc
  %46 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %45, ptr %46, align 8, !tbaa !89
  br label %60

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_SI, ptr %48, align 8, !tbaa !83
  %49 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr null, ptr %49, align 8, !tbaa !84
  %50 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_i_slice, ptr %50, align 8, !tbaa !85
  %51 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_i_slice, ptr %51, align 8, !tbaa !86
  %52 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %52, align 8, !tbaa !87
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %54 = load i32, ptr %53, align 8, !tbaa !88
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @init_lists_i_slice, ptr @init_lists_i_slice_mvc
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %56, ptr %57, align 8, !tbaa !89
  br label %60

58:                                               ; preds = %1
  %59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %60

60:                                               ; preds = %58, %47, %36, %26, %15, %4
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %62 = load i32, ptr %61, align 8, !tbaa !40
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @intrapred_chroma, ptr @intrapred_chroma_mbaff
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 119
  store ptr %64, ptr %65, align 8
  %66 = load ptr, ptr %0, align 8, !tbaa !36
  %67 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !79
  %69 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %68, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !80
  switch i32 %70, label %105 [
    i32 1, label %71
    i32 0, label %88
  ]

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %73, i64 0, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !61
  switch i32 %75, label %86 [
    i32 3, label %76
    i32 2, label %82
    i32 0, label %84
  ]

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 105
  %78 = load i32, ptr %77, align 8, !tbaa !91
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_444, ptr %81, align 8, !tbaa !92
  br label %107

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_422, ptr %83, align 8, !tbaa !92
  br label %107

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_400, ptr %85, align 8, !tbaa !92
  br label %107

86:                                               ; preds = %71, %76
  %87 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_420, ptr %87, align 8, !tbaa !92
  br label %107

88:                                               ; preds = %60
  %89 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !90
  %91 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %90, i64 0, i32 9
  %92 = load i32, ptr %91, align 4, !tbaa !61
  switch i32 %92, label %103 [
    i32 3, label %93
    i32 2, label %99
    i32 0, label %101
  ]

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 105
  %95 = load i32, ptr %94, align 8, !tbaa !91
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_444, ptr %98, align 8, !tbaa !92
  br label %107

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_422, ptr %100, align 8, !tbaa !92
  br label %107

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_400, ptr %102, align 8, !tbaa !92
  br label %107

103:                                              ; preds = %88, %93
  %104 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_420, ptr %104, align 8, !tbaa !92
  br label %107

105:                                              ; preds = %60
  %106 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %107

107:                                              ; preds = %97, %101, %103, %99, %80, %84, %86, %82, %105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @interpret_mb_mode_P(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !65
  %4 = icmp slt i16 %3, 4
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %7 = trunc i16 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %6, i8 %7, i64 4, i1 false)
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 0, ptr %8, align 8
  br label %40

9:                                                ; preds = %1
  %10 = and i16 %3, 32766
  %11 = icmp eq i16 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = icmp eq i16 %3, 5
  store i16 8, ptr %2, align 8, !tbaa !65
  %14 = zext i1 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 24
  store i32 %14, ptr %16, align 4, !tbaa !93
  br label %40

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %18, align 8, !tbaa !53
  switch i16 %3, label %27 [
    i16 6, label %19
    i16 31, label %22
  ]

19:                                               ; preds = %17
  store i16 9, ptr %2, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %20, align 4
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %21, align 8
  br label %40

22:                                               ; preds = %17
  store i16 14, ptr %2, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %24, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %26, align 8
  br label %40

27:                                               ; preds = %17
  store i16 10, ptr %2, align 8, !tbaa !65
  %28 = add nsw i16 %3, -7
  %29 = sext i16 %28 to i32
  %30 = lshr i32 %29, 2
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [6 x i16], ptr @interpret_mb_mode_I.ICBPTAB, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !59
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %34, ptr %35, align 4, !tbaa !67
  %36 = and i32 %29, 3
  %37 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %36, ptr %37, align 8, !tbaa !94
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %39, align 8
  br label %40

40:                                               ; preds = %12, %22, %27, %19, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_motion_info_from_NAL_p_slice(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i16 %7, 8
  %9 = select i1 %8, i16 4, i16 %7
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %10, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !25
  %15 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %18 = load i16, ptr %17, align 2, !tbaa !74
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  store i32 3, ptr %2, align 8, !tbaa !95
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 57
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %25 = load i32, ptr %24, align 8, !tbaa !25
  br i1 %8, label %26, label %31

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 24
  %28 = load i32, ptr %27, align 4, !tbaa !93
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i32 [ 1, %1 ], [ %30, %26 ]
  call fastcc void @prepareListforRefIdx(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %23, i32 noundef %25, i32 noundef %32) #17
  %33 = getelementptr inbounds %struct.storable_picture, ptr %16, i64 0, i32 35
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !45
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  call fastcc void @readMBRefPictureIdx(ptr noundef nonnull %2, ptr noundef %23, ptr noundef nonnull %0, ptr noundef %38, i32 noundef 0, i32 noundef %14, i32 noundef %12) #17
  store i32 5, ptr %2, align 8, !tbaa !95
  %39 = load ptr, ptr %22, align 8, !tbaa !97
  %40 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !80
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = load ptr, ptr %39, align 8, !tbaa !99
  %47 = getelementptr inbounds %struct.bit_stream, ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !102
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %31
  %51 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_se, ptr %51, align 8, !tbaa !104
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_MVD_CABAC, ptr %53, align 8, !tbaa !105
  br label %54

54:                                               ; preds = %52, %50
  call fastcc void @readMBMotionVectors(ptr noundef nonnull %2, ptr noundef %39, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %12, i32 noundef %14) #17
  %55 = load i32, ptr %35, align 4, !tbaa !45
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !44
  %58 = sext i32 %57 to i64
  %59 = sext i32 %55 to i64
  %60 = add nsw i32 %55, 3
  %61 = sext i32 %60 to i64
  br label %62

62:                                               ; preds = %54, %62
  %63 = phi i64 [ %59, %54 ], [ %91, %62 ]
  %64 = load ptr, ptr %33, align 8, !tbaa !98
  %65 = getelementptr inbounds ptr, ptr %64, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.pic_motion_params, ptr %66, i64 %58
  %68 = getelementptr inbounds %struct.pic_motion_params, ptr %66, i64 %58, i32 2
  %69 = load i8, ptr %68, align 8, !tbaa !26
  %70 = sext i8 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %21, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  store ptr %72, ptr %67, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 1
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 1, i32 2
  %75 = load i8, ptr %74, align 8, !tbaa !26
  %76 = sext i8 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %21, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  store ptr %78, ptr %73, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 2
  %80 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 2, i32 2
  %81 = load i8, ptr %80, align 8, !tbaa !26
  %82 = sext i8 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %21, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  store ptr %84, ptr %79, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 3
  %86 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 3, i32 2
  %87 = load i8, ptr %86, align 8, !tbaa !26
  %88 = sext i8 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %21, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  store ptr %90, ptr %85, align 8, !tbaa !35
  %91 = add nsw i64 %63, 1
  %92 = icmp slt i64 %63, %61
  br i1 %92, label %62, label %93, !llvm.loop !106

93:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_one_macroblock_p_slice(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 37
  %14 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %7, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  %23 = sext i32 %7 to i64
  %24 = getelementptr %struct.macroblock, ptr %22, i64 %23
  %25 = getelementptr %struct.macroblock, ptr %24, i64 -1
  %26 = getelementptr %struct.macroblock, ptr %24, i64 -1, i32 30
  %27 = load i16, ptr %26, align 8, !tbaa !65
  %28 = icmp eq i16 %27, 0
  %29 = zext i1 %28 to i32
  br label %35

30:                                               ; preds = %1
  br i1 %18, label %43, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = sext i32 %7 to i64
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi i64 [ %34, %31 ], [ %23, %20 ]
  %37 = phi ptr [ %33, %31 ], [ %22, %20 ]
  %38 = phi i32 [ 0, %31 ], [ %29, %20 ]
  %39 = phi ptr [ null, %31 ], [ %25, %20 ]
  %40 = getelementptr %struct.macroblock, ptr %37, i64 %36
  %41 = getelementptr %struct.macroblock, ptr %40, i64 -1, i32 45
  %42 = load i32, ptr %41, align 8, !tbaa !109
  br label %43

43:                                               ; preds = %30, %35
  %44 = phi i32 [ %38, %35 ], [ 0, %30 ]
  %45 = phi ptr [ %39, %35 ], [ null, %30 ]
  %46 = phi i32 [ %42, %35 ], [ 0, %30 ]
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %46, ptr %47, align 8, !tbaa !109
  %48 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %49 = load i32, ptr %48, align 4, !tbaa !110
  tail call void @update_qp(ptr noundef nonnull %0, i32 noundef %49) #17
  store i32 2, ptr %2, align 8, !tbaa !95
  %50 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  %52 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !80
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = load ptr, ptr %51, align 8, !tbaa !99
  %59 = getelementptr inbounds %struct.bit_stream, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !102
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57, %43
  %63 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %63, align 8, !tbaa !104
  br label %64

64:                                               ; preds = %62, %57
  %65 = icmp eq i32 %55, 1
  br i1 %65, label %66, label %128

66:                                               ; preds = %64
  %67 = load i32, ptr %14, align 8, !tbaa !40
  %68 = icmp ne i32 %67, 0
  %69 = icmp ne i32 %44, 0
  %70 = select i1 %18, i1 true, i1 %69
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  tail call void @field_flag_inference(ptr noundef nonnull %0) #17
  br label %73

73:                                               ; preds = %72, %66
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #18
  %74 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_skip_flag_CABAC_p_slice, ptr %74, align 8, !tbaa !105
  %75 = getelementptr inbounds %struct.datapartition, ptr %51, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !111
  %77 = call i32 %76(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %51) #18
  %78 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !112
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %80, ptr %81, align 8, !tbaa !65
  %82 = icmp eq i32 %79, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 %83, ptr %84, align 2, !tbaa !113
  %85 = load ptr, ptr %51, align 8, !tbaa !99
  %86 = getelementptr inbounds %struct.bit_stream, ptr %85, i64 0, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !102
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %90, align 2, !tbaa !114
  br label %91

91:                                               ; preds = %89, %73
  %92 = load i32, ptr %14, align 8, !tbaa !40
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %91
  br i1 %18, label %95, label %96

95:                                               ; preds = %94
  br i1 %82, label %105, label %101

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.macroblock, ptr %45, i64 0, i32 41
  %98 = load i8, ptr %97, align 2, !tbaa !113
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i1 true, i1 %82
  br i1 %100, label %107, label %101

101:                                              ; preds = %96, %95
  store ptr @readFieldModeInfo_CABAC, ptr %74, align 8, !tbaa !105
  %102 = load ptr, ptr %75, align 8, !tbaa !111
  %103 = call i32 %102(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %51) #18
  %104 = load i32, ptr %78, align 4, !tbaa !112
  store i32 %104, ptr %47, align 8, !tbaa !109
  br label %107

105:                                              ; preds = %95
  %106 = call i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %51) #18
  br label %107

107:                                              ; preds = %96, %101, %105
  %108 = load i32, ptr %47, align 8, !tbaa !109
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %18, i16 2, i16 4
  %111 = select i1 %109, i16 0, i16 %110
  %112 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %111, ptr %112, align 2, !tbaa !74
  call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #18
  %113 = load i16, ptr %81, align 8, !tbaa !65
  br label %114

114:                                              ; preds = %107, %91
  %115 = phi i16 [ %113, %107 ], [ %80, %91 ]
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %240, label %117

117:                                              ; preds = %114
  store ptr @readMB_typeInfo_CABAC_p_slice, ptr %74, align 8, !tbaa !105
  %118 = load ptr, ptr %75, align 8, !tbaa !111
  %119 = call i32 %118(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %51) #18
  %120 = load i32, ptr %78, align 4, !tbaa !112
  %121 = trunc i32 %120 to i16
  store i16 %121, ptr %81, align 8, !tbaa !65
  %122 = load ptr, ptr %51, align 8, !tbaa !99
  %123 = getelementptr inbounds %struct.bit_stream, ptr %122, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !102
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %240

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %127, align 2, !tbaa !114
  br label %240

128:                                              ; preds = %64
  %129 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  %130 = load i32, ptr %129, align 8, !tbaa !82
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.datapartition, ptr %51, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !111
  %135 = call i32 %134(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %51) #18
  %136 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !112
  store i32 %137, ptr %129, align 8, !tbaa !82
  br label %138

138:                                              ; preds = %132, %128
  %139 = phi i32 [ %137, %132 ], [ %130, %128 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %180

141:                                              ; preds = %138
  %142 = load i32, ptr %14, align 8, !tbaa !40
  %143 = icmp ne i32 %142, 0
  %144 = icmp ne i32 %44, 0
  %145 = select i1 %18, i1 true, i1 %144
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %148, align 4, !tbaa !115
  %149 = load ptr, ptr %51, align 8, !tbaa !99
  %150 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %149) #18
  %151 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !112
  store i32 %152, ptr %47, align 8, !tbaa !109
  br label %153

153:                                              ; preds = %147, %141
  %154 = getelementptr inbounds %struct.datapartition, ptr %51, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !111
  %156 = call i32 %155(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %51) #18
  %157 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 33
  %158 = load i32, ptr %157, align 4, !tbaa !69
  switch i32 %158, label %159 [
    i32 0, label %162
    i32 3, label %162
  ]

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !112
  br label %166

162:                                              ; preds = %153, %153
  %163 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !112
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %163, align 4, !tbaa !112
  br label %166

166:                                              ; preds = %159, %162
  %167 = phi i32 [ %161, %159 ], [ %165, %162 ]
  %168 = trunc i32 %167 to i16
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %168, ptr %169, align 8, !tbaa !65
  %170 = load ptr, ptr %51, align 8, !tbaa !99
  %171 = getelementptr inbounds %struct.bit_stream, ptr %170, i64 0, i32 5
  %172 = load i32, ptr %171, align 8, !tbaa !102
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %175, align 2, !tbaa !114
  br label %176

176:                                              ; preds = %174, %166
  %177 = load i32, ptr %129, align 8, !tbaa !82
  %178 = add nsw i32 %177, -1
  store i32 %178, ptr %129, align 8, !tbaa !82
  %179 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 0, ptr %179, align 2, !tbaa !113
  br label %234

180:                                              ; preds = %138
  %181 = add nsw i32 %139, -1
  store i32 %181, ptr %129, align 8, !tbaa !82
  %182 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 0, ptr %182, align 8, !tbaa !65
  %183 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %183, align 2, !tbaa !114
  %184 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 1, ptr %184, align 2, !tbaa !113
  %185 = load i32, ptr %14, align 8, !tbaa !40
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %234, label %187

187:                                              ; preds = %180
  %188 = or i32 %181, %17
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %191, align 4, !tbaa !115
  %192 = load ptr, ptr %51, align 8, !tbaa !99
  %193 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %192) #18
  %194 = load ptr, ptr %51, align 8, !tbaa !99
  %195 = getelementptr inbounds %struct.bit_stream, ptr %194, i64 0, i32 2
  %196 = load i32, ptr %195, align 8, !tbaa !116
  %197 = add nsw i32 %196, -1
  store i32 %197, ptr %195, align 8, !tbaa !116
  %198 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !112
  store i32 %199, ptr %47, align 8, !tbaa !109
  br label %234

200:                                              ; preds = %187
  %201 = icmp sgt i32 %139, 1
  %202 = and i1 %18, %201
  br i1 %202, label %203, label %234

203:                                              ; preds = %200
  %204 = add nsw i32 %7, -2
  %205 = call i32 @mb_is_available(i32 noundef %204, ptr noundef nonnull %0) #18
  %206 = icmp eq i32 %205, 0
  %207 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %208 = load i32, ptr %207, align 4, !tbaa !117
  %209 = shl i32 %208, 1
  br i1 %206, label %219, label %210

210:                                              ; preds = %203
  %211 = urem i32 %7, %209
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %215 = load ptr, ptr %214, align 8, !tbaa !108
  %216 = sext i32 %204 to i64
  %217 = getelementptr inbounds %struct.macroblock, ptr %215, i64 %216, i32 45
  %218 = load i32, ptr %217, align 8, !tbaa !109
  store i32 %218, ptr %47, align 8, !tbaa !109
  br label %234

219:                                              ; preds = %203, %210
  %220 = sub i32 %7, %209
  %221 = call i32 @mb_is_available(i32 noundef %220, ptr noundef nonnull %0) #18
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %225 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %226 = load ptr, ptr %225, align 8, !tbaa !108
  %227 = load i32, ptr %224, align 4, !tbaa !117
  %228 = shl i32 %227, 1
  %229 = sub i32 %7, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.macroblock, ptr %226, i64 %230, i32 45
  %232 = load i32, ptr %231, align 8, !tbaa !109
  store i32 %232, ptr %47, align 8, !tbaa !109
  br label %234

233:                                              ; preds = %219
  store i32 0, ptr %47, align 8, !tbaa !109
  br label %234

234:                                              ; preds = %200, %180, %223, %233, %213, %190, %176
  %235 = load i32, ptr %47, align 8, !tbaa !109
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %18, i16 2, i16 4
  %238 = select i1 %236, i16 0, i16 %237
  %239 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %238, ptr %239, align 2, !tbaa !74
  br label %240

240:                                              ; preds = %114, %126, %117, %234
  %241 = load i32, ptr %47, align 8, !tbaa !109
  %242 = trunc i32 %241 to i8
  %243 = load ptr, ptr %13, align 8, !tbaa !118
  %244 = sext i32 %7 to i64
  %245 = getelementptr inbounds i8, ptr %243, i64 %244
  store i8 %242, ptr %245, align 1, !tbaa !26
  %246 = load i32, ptr %47, align 8, !tbaa !109
  %247 = icmp eq i32 %246, 0
  %248 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %249 = load i32, ptr %248, align 4, !tbaa !45
  br i1 %247, label %256, label %250

250:                                              ; preds = %240
  br i1 %18, label %254, label %251

251:                                              ; preds = %250
  %252 = add nsw i32 %249, -4
  %253 = ashr i32 %252, 1
  br label %256

254:                                              ; preds = %250
  %255 = ashr i32 %249, 1
  br label %256

256:                                              ; preds = %240, %251, %254
  %257 = phi i32 [ %253, %251 ], [ %255, %254 ], [ %249, %240 ]
  %258 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  store i32 %257, ptr %258, align 8, !tbaa !46
  %259 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 126
  %260 = load ptr, ptr %259, align 8, !tbaa !119
  %261 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %262 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %263 = load i16, ptr %262, align 2, !tbaa !42
  %264 = sext i16 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %260, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  %267 = load i16, ptr %261, align 4, !tbaa !43
  %268 = sext i16 %267 to i64
  %269 = getelementptr inbounds i32, ptr %266, i64 %268
  store i32 0, ptr %269, align 4, !tbaa !25
  %270 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 117
  %271 = load ptr, ptr %270, align 8, !tbaa !83
  call void %271(ptr noundef nonnull %0) #18
  %272 = load i32, ptr %14, align 8, !tbaa !40
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %281, label %274

274:                                              ; preds = %256
  %275 = load i32, ptr %47, align 8, !tbaa !109
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27
  %279 = load <2 x i32>, ptr %278, align 8, !tbaa !25
  %280 = shl <2 x i32> %279, <i32 1, i32 1>
  store <2 x i32> %280, ptr %278, align 8, !tbaa !25
  br label %281

281:                                              ; preds = %274, %277, %256
  %282 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 1, ptr %282, align 8, !tbaa !120
  %283 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %284 = load i16, ptr %283, align 8, !tbaa !65
  %285 = icmp eq i16 %284, 8
  br i1 %285, label %286, label %336

286:                                              ; preds = %281
  store i32 2, ptr %2, align 8, !tbaa !95
  %287 = load ptr, ptr %50, align 8, !tbaa !97
  %288 = load ptr, ptr %52, align 8, !tbaa !79
  %289 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %288, i64 0, i32 3
  %290 = load i32, ptr %289, align 4, !tbaa !80
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %286
  %293 = load ptr, ptr %287, align 8, !tbaa !99
  %294 = getelementptr inbounds %struct.bit_stream, ptr %293, i64 0, i32 5
  %295 = load i32, ptr %294, align 8, !tbaa !102
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %292, %286
  %298 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %298, align 8, !tbaa !104
  br label %301

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readB8_typeInfo_CABAC_p_slice, ptr %300, align 8, !tbaa !105
  br label %301

301:                                              ; preds = %299, %297
  %302 = getelementptr inbounds %struct.datapartition, ptr %287, i64 0, i32 2
  %303 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %304 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 2
  br label %305

305:                                              ; preds = %301, %328
  %306 = phi i64 [ 0, %301 ], [ %330, %328 ]
  %307 = load ptr, ptr %302, align 8, !tbaa !111
  %308 = call i32 %307(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %287) #18
  %309 = load i32, ptr %303, align 4, !tbaa !112
  %310 = trunc i64 %306 to i32
  call void @SetB8Mode(ptr noundef nonnull %0, i32 noundef %309, i32 noundef %310) #17
  %311 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %306
  %312 = load i8, ptr %311, align 1, !tbaa !26
  %313 = freeze i8 %312
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %305
  %316 = load ptr, ptr %304, align 8, !tbaa !90
  %317 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %316, i64 0, i32 32
  %318 = load i32, ptr %317, align 4, !tbaa !121
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %328, label %320

320:                                              ; preds = %315
  %321 = load i32, ptr %282, align 8, !tbaa !120
  %322 = and i32 %321, 1
  br label %328

323:                                              ; preds = %305
  %324 = icmp eq i8 %313, 4
  %325 = load i32, ptr %282, align 8, !tbaa !120
  %326 = and i32 %325, 1
  %327 = select i1 %324, i32 %326, i32 0
  br label %328

328:                                              ; preds = %323, %315, %320
  %329 = phi i32 [ %322, %320 ], [ 0, %315 ], [ %327, %323 ]
  store i32 %329, ptr %282, align 8, !tbaa !120
  %330 = add nuw nsw i64 %306, 1
  %331 = icmp eq i64 %330, 4
  br i1 %331, label %332, label %305, !llvm.loop !122

332:                                              ; preds = %328
  call fastcc void @init_macroblock(ptr noundef nonnull %0) #17
  %333 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %334 = load ptr, ptr %333, align 8, !tbaa !84
  call void %334(ptr noundef nonnull %0) #18
  %335 = load i16, ptr %283, align 8, !tbaa !65
  br label %336

336:                                              ; preds = %332, %281
  %337 = phi i16 [ %335, %332 ], [ %284, %281 ]
  %338 = icmp eq i16 %337, 9
  br i1 %338, label %339, label %370

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %341 = load i32, ptr %340, align 4, !tbaa !123
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %370, label %343

343:                                              ; preds = %339
  store i32 0, ptr %2, align 8, !tbaa !95
  %344 = load ptr, ptr %50, align 8, !tbaa !97
  %345 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %345, align 8, !tbaa !105
  %346 = load ptr, ptr %52, align 8, !tbaa !79
  %347 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %346, i64 0, i32 3
  %348 = load i32, ptr %347, align 4, !tbaa !80
  %349 = icmp eq i32 %348, 0
  %350 = load ptr, ptr %344, align 8, !tbaa !99
  br i1 %349, label %355, label %351

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.bit_stream, ptr %350, i64 0, i32 5
  %353 = load i32, ptr %352, align 8, !tbaa !102
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %351, %343
  %356 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %356, align 4, !tbaa !115
  %357 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %350) #18
  br label %362

358:                                              ; preds = %351
  %359 = getelementptr inbounds %struct.datapartition, ptr %344, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !111
  %361 = call i32 %360(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %344) #18
  br label %362

362:                                              ; preds = %358, %355
  %363 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %364 = load i32, ptr %363, align 4, !tbaa !112
  %365 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %364, ptr %365, align 4, !tbaa !124
  %366 = icmp eq i32 %364, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %362
  store i16 13, ptr %283, align 8, !tbaa !65
  %368 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 218959117, ptr %368, align 4
  %369 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %369, align 8
  br label %372

370:                                              ; preds = %339, %336
  %371 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 0, ptr %371, align 4, !tbaa !124
  br label %372

372:                                              ; preds = %362, %367, %370
  %373 = load ptr, ptr %52, align 8, !tbaa !79
  %374 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %373, i64 0, i32 30
  %375 = load i32, ptr %374, align 4, !tbaa !125
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %379 = load i32, ptr %378, align 8, !tbaa !53
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %383 = load ptr, ptr %382, align 8, !tbaa !126
  %384 = getelementptr inbounds i8, ptr %383, i64 %244
  store i8 0, ptr %384, align 1, !tbaa !26
  br label %385

385:                                              ; preds = %377, %381, %372
  %386 = load i16, ptr %283, align 8, !tbaa !65
  %387 = icmp eq i16 %386, 8
  br i1 %387, label %391, label %388

388:                                              ; preds = %385
  call fastcc void @init_macroblock(ptr noundef nonnull %0) #17
  %389 = load i16, ptr %283, align 8, !tbaa !65
  switch i16 %389, label %391 [
    i16 0, label %390
    i16 14, label %408
  ]

390:                                              ; preds = %388
  call void @skip_macroblock(ptr noundef nonnull %0) #17
  br label %422

391:                                              ; preds = %385, %388
  %392 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %393 = load i32, ptr %392, align 8, !tbaa !53
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %397

395:                                              ; preds = %391
  call fastcc void @read_ipred_modes(ptr noundef nonnull %0) #17
  %396 = load i32, ptr %392, align 8, !tbaa !53
  br label %397

397:                                              ; preds = %395, %391
  %398 = phi i32 [ %396, %395 ], [ %393, %391 ]
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %397
  %401 = load i16, ptr %283, align 8, !tbaa !65
  switch i16 %401, label %402 [
    i16 0, label %405
    i16 8, label %405
  ]

402:                                              ; preds = %400
  %403 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %404 = load ptr, ptr %403, align 8, !tbaa !84
  call void %404(ptr noundef nonnull %0) #18
  br label %405

405:                                              ; preds = %400, %400, %402, %397
  %406 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 111
  %407 = load ptr, ptr %406, align 8, !tbaa !92
  call void %407(ptr noundef nonnull %0) #18
  br label %422

408:                                              ; preds = %388
  %409 = load i32, ptr %8, align 8, !tbaa !107
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %416, label %411

411:                                              ; preds = %408
  %412 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %413 = load i32, ptr %412, align 8, !tbaa !127
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %411
  call fastcc void @concealIPCMcoeffs(ptr noundef nonnull %0) #17
  br label %422

416:                                              ; preds = %411, %408
  %417 = load ptr, ptr %50, align 8, !tbaa !97
  %418 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10, i64 7
  %419 = load i8, ptr %418, align 1, !tbaa !26
  %420 = zext i8 %419 to i64
  %421 = getelementptr inbounds %struct.datapartition, ptr %417, i64 %420
  call fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef nonnull %3, ptr noundef %421) #17
  br label %422

422:                                              ; preds = %405, %416, %415, %390
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @decode_one_component_p_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !128
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !65
  switch i16 %7, label %24 [
    i16 14, label %8
    i16 10, label %10
    i16 9, label %12
    i16 13, label %14
    i16 0, label %16
    i16 1, label %18
    i16 2, label %20
    i16 3, label %22
  ]

8:                                                ; preds = %4
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef nonnull %0) #18
  br label %26

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %26

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %26

16:                                               ; preds = %4
  %17 = tail call i32 @mb_pred_skip(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %26

18:                                               ; preds = %4
  %19 = tail call i32 @mb_pred_p_inter16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

20:                                               ; preds = %4
  %21 = tail call i32 @mb_pred_p_inter16x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

22:                                               ; preds = %4
  %23 = tail call i32 @mb_pred_p_inter8x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

24:                                               ; preds = %4
  %25 = tail call i32 @mb_pred_p_inter8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

26:                                               ; preds = %10, %14, %18, %22, %24, %20, %16, %12, %8
  ret i32 1
}

; Function Attrs: optsize
declare void @init_lists_p_slice_mvc(ptr noundef) #6

; Function Attrs: optsize
declare void @init_lists_p_slice(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @decode_one_component_sp_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !128
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !65
  switch i16 %7, label %24 [
    i16 14, label %8
    i16 10, label %10
    i16 9, label %12
    i16 13, label %14
    i16 0, label %16
    i16 1, label %18
    i16 2, label %20
    i16 3, label %22
  ]

8:                                                ; preds = %4
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef nonnull %0) #18
  br label %26

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %26

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %26

16:                                               ; preds = %4
  %17 = tail call i32 @mb_pred_sp_skip(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

18:                                               ; preds = %4
  %19 = tail call i32 @mb_pred_p_inter16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

20:                                               ; preds = %4
  %21 = tail call i32 @mb_pred_p_inter16x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

22:                                               ; preds = %4
  %23 = tail call i32 @mb_pred_p_inter8x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

24:                                               ; preds = %4
  %25 = tail call i32 @mb_pred_p_inter8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %26

26:                                               ; preds = %10, %14, %18, %22, %24, %20, %16, %12, %8
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @interpret_mb_mode_B(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !65
  %4 = sext i16 %3 to i32
  switch i16 %3, label %12 [
    i16 0, label %5
    i16 23, label %8
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 33686018, ptr %7, align 8
  br label %74

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %10, align 4
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %11, align 8
  br label %74

12:                                               ; preds = %1
  %13 = add i16 %3, -24
  %14 = icmp ult i16 %13, 24
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %18, align 8
  %19 = add nsw i32 %4, -24
  %20 = lshr i32 %19, 2
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [6 x i16], ptr @interpret_mb_mode_I.ICBPTAB, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !59
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %24, ptr %25, align 4, !tbaa !67
  %26 = and i32 %4, 3
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %26, ptr %27, align 8, !tbaa !94
  br label %74

28:                                               ; preds = %12
  %29 = icmp eq i16 %3, 22
  br i1 %29, label %74, label %30

30:                                               ; preds = %28
  %31 = icmp slt i16 %3, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 16843009, ptr %33, align 4
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %35 = sext i16 %3 to i64
  %36 = getelementptr inbounds [12 x i16], ptr @interpret_mb_mode_B.offset2pdir16x16, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !59
  %38 = trunc i16 %37 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %34, i8 %38, i64 4, i1 false)
  br label %74

39:                                               ; preds = %30
  %40 = icmp eq i16 %3, 48
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  br i1 %40, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %43, align 8, !tbaa !53
  store i32 0, ptr %41, align 4
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %44, align 8
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %45, align 4, !tbaa !67
  %46 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %46, align 8, !tbaa !94
  br label %74

47:                                               ; preds = %39
  %48 = and i32 %4, 1
  %49 = icmp eq i32 %48, 0
  %50 = zext nneg i16 %3 to i64
  br i1 %49, label %51, label %64

51:                                               ; preds = %47
  store i32 33686018, ptr %41, align 4
  br label %52

52:                                               ; preds = %52, %51
  %53 = phi i64 [ 0, %51 ], [ %62, %52 ]
  %54 = lshr exact i64 %53, 1
  %55 = and i64 %54, 32767
  %56 = getelementptr inbounds [22 x [2 x i16]], ptr @interpret_mb_mode_B.offset2pdir16x8, i64 0, i64 %50, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !59
  %58 = trunc i16 %57 to i8
  %59 = insertelement <2 x i8> poison, i8 %58, i64 0
  %60 = shufflevector <2 x i8> %59, <2 x i8> poison, <2 x i32> zeroinitializer
  %61 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %53
  store <2 x i8> %60, ptr %61, align 1, !tbaa !26
  %62 = add nuw i64 %53, 2
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %74, label %52, !llvm.loop !129

64:                                               ; preds = %47
  store i32 50529027, ptr %41, align 4
  br label %65

65:                                               ; preds = %64, %65
  %66 = phi i64 [ 0, %64 ], [ %72, %65 ]
  %67 = and i64 %66, 1
  %68 = getelementptr inbounds [22 x [2 x i16]], ptr @interpret_mb_mode_B.offset2pdir8x16, i64 0, i64 %50, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !59
  %70 = trunc i16 %69 to i8
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %66
  store i8 %70, ptr %71, align 1, !tbaa !26
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %74, label %65, !llvm.loop !132

74:                                               ; preds = %65, %52, %28, %8, %42, %32, %15, %5
  %75 = phi i16 [ 0, %5 ], [ 9, %8 ], [ 10, %15 ], [ 1, %32 ], [ 14, %42 ], [ 8, %28 ], [ 2, %52 ], [ 3, %65 ]
  store i16 %75, ptr %2, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_motion_info_from_NAL_b_slice(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %9 = load i16, ptr %8, align 8, !tbaa !65
  %10 = icmp eq i16 %9, 8
  %11 = select i1 %10, i16 4, i16 %9
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %12, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !25
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %18 = load i16, ptr %17, align 2, !tbaa !74
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = add nsw i64 %19, 1
  %23 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  br i1 %10, label %25, label %28

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 122
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  tail call void %27(ptr noundef nonnull %0) #18
  br label %28

28:                                               ; preds = %25, %1
  store i32 3, ptr %2, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !25
  call fastcc void @prepareListforRefIdx(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %30, i32 noundef %32, i32 noundef 1) #17
  %33 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 35
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !45
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  call fastcc void @readMBRefPictureIdx(ptr noundef nonnull %2, ptr noundef %30, ptr noundef nonnull %0, ptr noundef %38, i32 noundef 0, i32 noundef %16, i32 noundef %14) #17
  %39 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !25
  call fastcc void @prepareListforRefIdx(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %30, i32 noundef %40, i32 noundef 1) #17
  %41 = load ptr, ptr %33, align 8, !tbaa !98
  %42 = load i32, ptr %35, align 4, !tbaa !45
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  call fastcc void @readMBRefPictureIdx(ptr noundef nonnull %2, ptr noundef %30, ptr noundef nonnull %0, ptr noundef %44, i32 noundef 1, i32 noundef %16, i32 noundef %14) #17
  store i32 5, ptr %2, align 8, !tbaa !95
  %45 = load ptr, ptr %29, align 8, !tbaa !97
  %46 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !79
  %48 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !80
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %28
  %52 = load ptr, ptr %45, align 8, !tbaa !99
  %53 = getelementptr inbounds %struct.bit_stream, ptr %52, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !102
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51, %28
  %57 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_se, ptr %57, align 8, !tbaa !104
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_MVD_CABAC, ptr %59, align 8, !tbaa !105
  br label %60

60:                                               ; preds = %58, %56
  call fastcc void @readMBMotionVectors(ptr noundef nonnull %2, ptr noundef %45, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %14, i32 noundef %16) #17
  call fastcc void @readMBMotionVectors(ptr noundef nonnull %2, ptr noundef %45, ptr noundef nonnull %0, i32 noundef 1, i32 noundef %14, i32 noundef %16) #17
  %61 = load i32, ptr %35, align 4, !tbaa !45
  %62 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !44
  %64 = sext i32 %63 to i64
  %65 = sext i32 %61 to i64
  %66 = add nsw i32 %63, 3
  %67 = sext i32 %66 to i64
  %68 = add nsw i32 %61, 3
  %69 = sext i32 %68 to i64
  br label %70

70:                                               ; preds = %60, %99
  %71 = phi i64 [ %65, %60 ], [ %100, %99 ]
  br label %72

72:                                               ; preds = %70, %94
  %73 = phi i64 [ %64, %70 ], [ %97, %94 ]
  %74 = load ptr, ptr %33, align 8, !tbaa !98
  %75 = getelementptr inbounds ptr, ptr %74, i64 %71
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %73
  %78 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %73, i32 2
  %79 = load i8, ptr %78, align 8, !tbaa !26
  %80 = icmp sgt i8 %79, -1
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = zext nneg i8 %79 to i64
  %83 = getelementptr inbounds ptr, ptr %21, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  br label %85

85:                                               ; preds = %72, %81
  %86 = phi ptr [ %84, %81 ], [ null, %72 ]
  store ptr %86, ptr %77, align 8, !tbaa !35
  %87 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %73, i32 2, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !26
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = zext nneg i8 %88 to i64
  %92 = getelementptr inbounds ptr, ptr %24, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  br label %94

94:                                               ; preds = %85, %90
  %95 = phi ptr [ %93, %90 ], [ null, %85 ]
  %96 = getelementptr inbounds [2 x ptr], ptr %77, i64 0, i64 1
  store ptr %95, ptr %96, align 8, !tbaa !35
  %97 = add nsw i64 %73, 1
  %98 = icmp slt i64 %73, %67
  br i1 %98, label %72, label %99, !llvm.loop !133

99:                                               ; preds = %94
  %100 = add nsw i64 %71, 1
  %101 = icmp slt i64 %71, %69
  br i1 %101, label %70, label %102, !llvm.loop !134

102:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_one_macroblock_b_slice(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 37
  %14 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %7, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  %23 = sext i32 %7 to i64
  %24 = getelementptr %struct.macroblock, ptr %22, i64 %23
  %25 = getelementptr %struct.macroblock, ptr %24, i64 -1
  %26 = getelementptr %struct.macroblock, ptr %24, i64 -1, i32 41
  %27 = load i8, ptr %26, align 2, !tbaa !113
  %28 = sext i8 %27 to i32
  br label %34

29:                                               ; preds = %1
  br i1 %18, label %42, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  %33 = sext i32 %7 to i64
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i64 [ %33, %30 ], [ %23, %20 ]
  %36 = phi ptr [ %32, %30 ], [ %22, %20 ]
  %37 = phi i32 [ 0, %30 ], [ %28, %20 ]
  %38 = phi ptr [ null, %30 ], [ %25, %20 ]
  %39 = getelementptr %struct.macroblock, ptr %36, i64 %35
  %40 = getelementptr %struct.macroblock, ptr %39, i64 -1, i32 45
  %41 = load i32, ptr %40, align 8, !tbaa !109
  br label %42

42:                                               ; preds = %29, %34
  %43 = phi i32 [ %37, %34 ], [ 0, %29 ]
  %44 = phi ptr [ %38, %34 ], [ null, %29 ]
  %45 = phi i32 [ %41, %34 ], [ 0, %29 ]
  %46 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %45, ptr %46, align 8, !tbaa !109
  %47 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %48 = load i32, ptr %47, align 4, !tbaa !110
  tail call void @update_qp(ptr noundef nonnull %0, i32 noundef %48) #17
  store i32 2, ptr %2, align 8, !tbaa !95
  %49 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !79
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !80
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %42
  %57 = load ptr, ptr %50, align 8, !tbaa !99
  %58 = getelementptr inbounds %struct.bit_stream, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !102
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56, %42
  %62 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %62, align 8, !tbaa !104
  br label %63

63:                                               ; preds = %61, %56
  %64 = icmp eq i32 %54, 1
  br i1 %64, label %65, label %135

65:                                               ; preds = %63
  %66 = load i32, ptr %14, align 8, !tbaa !40
  %67 = icmp ne i32 %66, 0
  %68 = icmp ne i32 %43, 0
  %69 = select i1 %18, i1 true, i1 %68
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @field_flag_inference(ptr noundef nonnull %0) #17
  br label %72

72:                                               ; preds = %71, %65
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #18
  %73 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_skip_flag_CABAC_b_slice, ptr %73, align 8, !tbaa !105
  %74 = getelementptr inbounds %struct.datapartition, ptr %50, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !111
  %76 = call i32 %75(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %50) #18
  %77 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !112
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %79, ptr %80, align 8, !tbaa !65
  %81 = icmp eq i32 %78, 0
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 %82, ptr %83, align 2, !tbaa !113
  %84 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %85, ptr %86, align 4, !tbaa !67
  %87 = load ptr, ptr %50, align 8, !tbaa !99
  %88 = getelementptr inbounds %struct.bit_stream, ptr %87, i64 0, i32 5
  %89 = load i32, ptr %88, align 8, !tbaa !102
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %92, align 2, !tbaa !114
  br label %93

93:                                               ; preds = %91, %72
  %94 = icmp eq i32 %85, 0
  %95 = select i1 %81, i1 %94, i1 false
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  store i32 0, ptr %97, align 8, !tbaa !82
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, ptr %14, align 8, !tbaa !40
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %98
  br i1 %18, label %102, label %103

102:                                              ; preds = %101
  br i1 %81, label %112, label %108

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.macroblock, ptr %44, i64 0, i32 41
  %105 = load i8, ptr %104, align 2, !tbaa !113
  %106 = icmp eq i8 %105, 0
  %107 = select i1 %106, i1 true, i1 %81
  br i1 %107, label %114, label %108

108:                                              ; preds = %103, %102
  store ptr @readFieldModeInfo_CABAC, ptr %73, align 8, !tbaa !105
  %109 = load ptr, ptr %74, align 8, !tbaa !111
  %110 = call i32 %109(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %50) #18
  %111 = load i32, ptr %77, align 4, !tbaa !112
  store i32 %111, ptr %46, align 8, !tbaa !109
  br label %114

112:                                              ; preds = %102
  %113 = call i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %50) #18
  br label %114

114:                                              ; preds = %103, %108, %112
  %115 = load i32, ptr %46, align 8, !tbaa !109
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %18, i16 2, i16 4
  %118 = select i1 %116, i16 0, i16 %117
  %119 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %118, ptr %119, align 2, !tbaa !74
  call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #18
  %120 = load i16, ptr %80, align 8, !tbaa !65
  br label %121

121:                                              ; preds = %114, %98
  %122 = phi i16 [ %120, %114 ], [ %79, %98 ]
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %247, label %124

124:                                              ; preds = %121
  store ptr @readMB_typeInfo_CABAC_b_slice, ptr %73, align 8, !tbaa !105
  %125 = load ptr, ptr %74, align 8, !tbaa !111
  %126 = call i32 %125(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %50) #18
  %127 = load i32, ptr %77, align 4, !tbaa !112
  %128 = trunc i32 %127 to i16
  store i16 %128, ptr %80, align 8, !tbaa !65
  %129 = load ptr, ptr %50, align 8, !tbaa !99
  %130 = getelementptr inbounds %struct.bit_stream, ptr %129, i64 0, i32 5
  %131 = load i32, ptr %130, align 8, !tbaa !102
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %247

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %134, align 2, !tbaa !114
  br label %247

135:                                              ; preds = %63
  %136 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  %137 = load i32, ptr %136, align 8, !tbaa !82
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.datapartition, ptr %50, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !111
  %142 = call i32 %141(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %50) #18
  %143 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !112
  store i32 %144, ptr %136, align 8, !tbaa !82
  br label %145

145:                                              ; preds = %139, %135
  %146 = phi i32 [ %144, %139 ], [ %137, %135 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %187

148:                                              ; preds = %145
  %149 = load i32, ptr %14, align 8, !tbaa !40
  %150 = icmp ne i32 %149, 0
  %151 = icmp ne i32 %43, 0
  %152 = select i1 %18, i1 true, i1 %151
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %155, align 4, !tbaa !115
  %156 = load ptr, ptr %50, align 8, !tbaa !99
  %157 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %156) #18
  %158 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !112
  store i32 %159, ptr %46, align 8, !tbaa !109
  br label %160

160:                                              ; preds = %154, %148
  %161 = getelementptr inbounds %struct.datapartition, ptr %50, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !111
  %163 = call i32 %162(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %50) #18
  %164 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 33
  %165 = load i32, ptr %164, align 4, !tbaa !69
  switch i32 %165, label %166 [
    i32 0, label %169
    i32 3, label %169
  ]

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !112
  br label %173

169:                                              ; preds = %160, %160
  %170 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !112
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %170, align 4, !tbaa !112
  br label %173

173:                                              ; preds = %166, %169
  %174 = phi i32 [ %168, %166 ], [ %172, %169 ]
  %175 = trunc i32 %174 to i16
  %176 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %175, ptr %176, align 8, !tbaa !65
  %177 = load ptr, ptr %50, align 8, !tbaa !99
  %178 = getelementptr inbounds %struct.bit_stream, ptr %177, i64 0, i32 5
  %179 = load i32, ptr %178, align 8, !tbaa !102
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %182, align 2, !tbaa !114
  br label %183

183:                                              ; preds = %181, %173
  %184 = load i32, ptr %136, align 8, !tbaa !82
  %185 = add nsw i32 %184, -1
  store i32 %185, ptr %136, align 8, !tbaa !82
  %186 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 0, ptr %186, align 2, !tbaa !113
  br label %241

187:                                              ; preds = %145
  %188 = add nsw i32 %146, -1
  store i32 %188, ptr %136, align 8, !tbaa !82
  %189 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 0, ptr %189, align 8, !tbaa !65
  %190 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %190, align 2, !tbaa !114
  %191 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 1, ptr %191, align 2, !tbaa !113
  %192 = load i32, ptr %14, align 8, !tbaa !40
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %241, label %194

194:                                              ; preds = %187
  %195 = or i32 %188, %17
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %198, align 4, !tbaa !115
  %199 = load ptr, ptr %50, align 8, !tbaa !99
  %200 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %199) #18
  %201 = load ptr, ptr %50, align 8, !tbaa !99
  %202 = getelementptr inbounds %struct.bit_stream, ptr %201, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !116
  %204 = add nsw i32 %203, -1
  store i32 %204, ptr %202, align 8, !tbaa !116
  %205 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !112
  store i32 %206, ptr %46, align 8, !tbaa !109
  br label %241

207:                                              ; preds = %194
  %208 = icmp sgt i32 %146, 1
  %209 = and i1 %18, %208
  br i1 %209, label %210, label %241

210:                                              ; preds = %207
  %211 = add nsw i32 %7, -2
  %212 = call i32 @mb_is_available(i32 noundef %211, ptr noundef nonnull %0) #18
  %213 = icmp eq i32 %212, 0
  %214 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %215 = load i32, ptr %214, align 4, !tbaa !117
  %216 = shl i32 %215, 1
  br i1 %213, label %226, label %217

217:                                              ; preds = %210
  %218 = urem i32 %7, %216
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %222 = load ptr, ptr %221, align 8, !tbaa !108
  %223 = sext i32 %211 to i64
  %224 = getelementptr inbounds %struct.macroblock, ptr %222, i64 %223, i32 45
  %225 = load i32, ptr %224, align 8, !tbaa !109
  store i32 %225, ptr %46, align 8, !tbaa !109
  br label %241

226:                                              ; preds = %210, %217
  %227 = sub i32 %7, %216
  %228 = call i32 @mb_is_available(i32 noundef %227, ptr noundef nonnull %0) #18
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %232 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %233 = load ptr, ptr %232, align 8, !tbaa !108
  %234 = load i32, ptr %231, align 4, !tbaa !117
  %235 = shl i32 %234, 1
  %236 = sub i32 %7, %235
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.macroblock, ptr %233, i64 %237, i32 45
  %239 = load i32, ptr %238, align 8, !tbaa !109
  store i32 %239, ptr %46, align 8, !tbaa !109
  br label %241

240:                                              ; preds = %226
  store i32 0, ptr %46, align 8, !tbaa !109
  br label %241

241:                                              ; preds = %207, %187, %230, %240, %220, %197, %183
  %242 = load i32, ptr %46, align 8, !tbaa !109
  %243 = icmp eq i32 %242, 0
  %244 = select i1 %18, i16 2, i16 4
  %245 = select i1 %243, i16 0, i16 %244
  %246 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %245, ptr %246, align 2, !tbaa !74
  br label %247

247:                                              ; preds = %121, %133, %124, %241
  %248 = load i32, ptr %46, align 8, !tbaa !109
  %249 = trunc i32 %248 to i8
  %250 = load ptr, ptr %13, align 8, !tbaa !118
  %251 = sext i32 %7 to i64
  %252 = getelementptr inbounds i8, ptr %250, i64 %251
  store i8 %249, ptr %252, align 1, !tbaa !26
  %253 = load i32, ptr %46, align 8, !tbaa !109
  %254 = icmp eq i32 %253, 0
  %255 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %256 = load i32, ptr %255, align 4, !tbaa !45
  br i1 %254, label %263, label %257

257:                                              ; preds = %247
  br i1 %18, label %261, label %258

258:                                              ; preds = %257
  %259 = add nsw i32 %256, -4
  %260 = ashr i32 %259, 1
  br label %263

261:                                              ; preds = %257
  %262 = ashr i32 %256, 1
  br label %263

263:                                              ; preds = %247, %258, %261
  %264 = phi i32 [ %260, %258 ], [ %262, %261 ], [ %256, %247 ]
  %265 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  store i32 %264, ptr %265, align 8, !tbaa !46
  %266 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 126
  %267 = load ptr, ptr %266, align 8, !tbaa !119
  %268 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %269 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %270 = load i16, ptr %269, align 2, !tbaa !42
  %271 = sext i16 %270 to i64
  %272 = getelementptr inbounds ptr, ptr %267, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !35
  %274 = load i16, ptr %268, align 4, !tbaa !43
  %275 = sext i16 %274 to i64
  %276 = getelementptr inbounds i32, ptr %273, i64 %275
  store i32 0, ptr %276, align 4, !tbaa !25
  %277 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 117
  %278 = load ptr, ptr %277, align 8, !tbaa !83
  call void %278(ptr noundef nonnull %0) #18
  %279 = load i32, ptr %14, align 8, !tbaa !40
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %263
  %282 = load i32, ptr %46, align 8, !tbaa !109
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27
  %286 = load <2 x i32>, ptr %285, align 8, !tbaa !25
  %287 = shl <2 x i32> %286, <i32 1, i32 1>
  store <2 x i32> %287, ptr %285, align 8, !tbaa !25
  br label %288

288:                                              ; preds = %281, %284, %263
  %289 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %290 = load i16, ptr %289, align 8, !tbaa !65
  switch i16 %290, label %350 [
    i16 8, label %291
    i16 0, label %343
  ]

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 1, ptr %292, align 8, !tbaa !120
  store i32 2, ptr %2, align 8, !tbaa !95
  %293 = load ptr, ptr %49, align 8, !tbaa !97
  %294 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !135
  %296 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %295, i64 0, i32 3
  %297 = load i32, ptr %296, align 4, !tbaa !80
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %291
  %300 = load ptr, ptr %293, align 8, !tbaa !99
  %301 = getelementptr inbounds %struct.bit_stream, ptr %300, i64 0, i32 5
  %302 = load i32, ptr %301, align 8, !tbaa !102
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %299, %291
  %305 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %305, align 8, !tbaa !104
  br label %308

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readB8_typeInfo_CABAC_b_slice, ptr %307, align 8, !tbaa !105
  br label %308

308:                                              ; preds = %306, %304
  %309 = getelementptr inbounds %struct.datapartition, ptr %293, i64 0, i32 2
  %310 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %311 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 3
  br label %312

312:                                              ; preds = %308, %335
  %313 = phi i64 [ 0, %308 ], [ %337, %335 ]
  %314 = load ptr, ptr %309, align 8, !tbaa !111
  %315 = call i32 %314(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %293) #18
  %316 = load i32, ptr %310, align 4, !tbaa !112
  %317 = trunc i64 %313 to i32
  call void @SetB8Mode(ptr noundef nonnull %0, i32 noundef %316, i32 noundef %317) #17
  %318 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %313
  %319 = load i8, ptr %318, align 1, !tbaa !26
  %320 = freeze i8 %319
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %312
  %323 = load ptr, ptr %311, align 8, !tbaa !60
  %324 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %323, i64 0, i32 32
  %325 = load i32, ptr %324, align 4, !tbaa !121
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %335, label %327

327:                                              ; preds = %322
  %328 = load i32, ptr %292, align 8, !tbaa !120
  %329 = and i32 %328, 1
  br label %335

330:                                              ; preds = %312
  %331 = icmp eq i8 %320, 4
  %332 = load i32, ptr %292, align 8, !tbaa !120
  %333 = and i32 %332, 1
  %334 = select i1 %331, i32 %333, i32 0
  br label %335

335:                                              ; preds = %330, %322, %327
  %336 = phi i32 [ %329, %327 ], [ 0, %322 ], [ %334, %330 ]
  store i32 %336, ptr %292, align 8, !tbaa !120
  %337 = add nuw nsw i64 %313, 1
  %338 = icmp eq i64 %337, 4
  br i1 %338, label %339, label %312, !llvm.loop !136

339:                                              ; preds = %335
  call fastcc void @init_macroblock(ptr noundef nonnull %0) #17
  %340 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %341 = load ptr, ptr %340, align 8, !tbaa !84
  call void %341(ptr noundef nonnull %0) #18
  %342 = load i16, ptr %289, align 8, !tbaa !65
  br label %353

343:                                              ; preds = %288
  %344 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !60
  %346 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %345, i64 0, i32 32
  %347 = load i32, ptr %346, align 4, !tbaa !121
  %348 = icmp ne i32 %347, 0
  %349 = zext i1 %348 to i32
  br label %350

350:                                              ; preds = %288, %343
  %351 = phi i32 [ %349, %343 ], [ 1, %288 ]
  %352 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 %351, ptr %352, align 8, !tbaa !120
  br label %353

353:                                              ; preds = %350, %339
  %354 = phi i16 [ %290, %350 ], [ %342, %339 ]
  %355 = icmp eq i16 %354, 9
  br i1 %355, label %356, label %387

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %358 = load i32, ptr %357, align 4, !tbaa !123
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %387, label %360

360:                                              ; preds = %356
  store i32 0, ptr %2, align 8, !tbaa !95
  %361 = load ptr, ptr %49, align 8, !tbaa !97
  %362 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %362, align 8, !tbaa !105
  %363 = load ptr, ptr %51, align 8, !tbaa !79
  %364 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %363, i64 0, i32 3
  %365 = load i32, ptr %364, align 4, !tbaa !80
  %366 = icmp eq i32 %365, 0
  %367 = load ptr, ptr %361, align 8, !tbaa !99
  br i1 %366, label %372, label %368

368:                                              ; preds = %360
  %369 = getelementptr inbounds %struct.bit_stream, ptr %367, i64 0, i32 5
  %370 = load i32, ptr %369, align 8, !tbaa !102
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %368, %360
  %373 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %373, align 4, !tbaa !115
  %374 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %367) #18
  br label %379

375:                                              ; preds = %368
  %376 = getelementptr inbounds %struct.datapartition, ptr %361, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !111
  %378 = call i32 %377(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %361) #18
  br label %379

379:                                              ; preds = %375, %372
  %380 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %381 = load i32, ptr %380, align 4, !tbaa !112
  %382 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %381, ptr %382, align 4, !tbaa !124
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %379
  store i16 13, ptr %289, align 8, !tbaa !65
  %385 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 218959117, ptr %385, align 4
  %386 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %386, align 8
  br label %389

387:                                              ; preds = %356, %353
  %388 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 0, ptr %388, align 4, !tbaa !124
  br label %389

389:                                              ; preds = %379, %384, %387
  %390 = load ptr, ptr %51, align 8, !tbaa !79
  %391 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %390, i64 0, i32 30
  %392 = load i32, ptr %391, align 4, !tbaa !125
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %402, label %394

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %396 = load i32, ptr %395, align 8, !tbaa !53
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %400 = load ptr, ptr %399, align 8, !tbaa !126
  %401 = getelementptr inbounds i8, ptr %400, i64 %251
  store i8 0, ptr %401, align 1, !tbaa !26
  br label %402

402:                                              ; preds = %398, %394, %389
  %403 = load i16, ptr %289, align 8, !tbaa !65
  %404 = icmp eq i16 %403, 8
  br i1 %404, label %418, label %405

405:                                              ; preds = %402
  call fastcc void @init_macroblock(ptr noundef nonnull %0) #17
  %406 = load i16, ptr %289, align 8, !tbaa !65
  switch i16 %406, label %418 [
    i16 0, label %407
    i16 14, label %435
  ]

407:                                              ; preds = %405
  %408 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  %409 = load i32, ptr %408, align 8, !tbaa !82
  %410 = icmp sgt i32 %409, -1
  br i1 %410, label %411, label %418

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %412, align 4, !tbaa !67
  call void @reset_coeffs(ptr noundef nonnull %3) #17
  %413 = load ptr, ptr %51, align 8, !tbaa !79
  %414 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %413, i64 0, i32 3
  %415 = load i32, ptr %414, align 4, !tbaa !80
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %417, label %449

417:                                              ; preds = %411
  store i32 -1, ptr %408, align 8, !tbaa !82
  br label %449

418:                                              ; preds = %405, %402, %407
  %419 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %420 = load i32, ptr %419, align 8, !tbaa !53
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %422, label %424

422:                                              ; preds = %418
  call fastcc void @read_ipred_modes(ptr noundef nonnull %0) #17
  %423 = load i32, ptr %419, align 8, !tbaa !53
  br label %424

424:                                              ; preds = %422, %418
  %425 = phi i32 [ %423, %422 ], [ %420, %418 ]
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %424
  %428 = load i16, ptr %289, align 8, !tbaa !65
  switch i16 %428, label %429 [
    i16 0, label %432
    i16 8, label %432
  ]

429:                                              ; preds = %427
  %430 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %431 = load ptr, ptr %430, align 8, !tbaa !84
  call void %431(ptr noundef nonnull %0) #18
  br label %432

432:                                              ; preds = %427, %427, %429, %424
  %433 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 111
  %434 = load ptr, ptr %433, align 8, !tbaa !92
  call void %434(ptr noundef nonnull %0) #18
  br label %449

435:                                              ; preds = %405
  %436 = load i32, ptr %8, align 8, !tbaa !107
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %443, label %438

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %440 = load i32, ptr %439, align 8, !tbaa !127
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %438
  call fastcc void @concealIPCMcoeffs(ptr noundef nonnull %0) #17
  br label %449

443:                                              ; preds = %438, %435
  %444 = load ptr, ptr %49, align 8, !tbaa !97
  %445 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10, i64 7
  %446 = load i8, ptr %445, align 1, !tbaa !26
  %447 = zext i8 %446 to i64
  %448 = getelementptr inbounds %struct.datapartition, ptr %444, i64 %447
  call fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef nonnull %3, ptr noundef %448) #17
  br label %449

449:                                              ; preds = %432, %443, %442, %411, %417
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @decode_one_component_b_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !128
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !65
  switch i16 %7, label %42 [
    i16 14, label %8
    i16 10, label %10
    i16 9, label %12
    i16 13, label %14
    i16 1, label %16
    i16 2, label %18
    i16 3, label %20
    i16 0, label %22
  ]

8:                                                ; preds = %4
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef nonnull %0) #18
  br label %44

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %44

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %44

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %44

16:                                               ; preds = %4
  %17 = tail call i32 @mb_pred_p_inter16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %44

18:                                               ; preds = %4
  %19 = tail call i32 @mb_pred_p_inter16x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %44

20:                                               ; preds = %4
  %21 = tail call i32 @mb_pred_p_inter8x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %44

22:                                               ; preds = %4
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.slice, ptr %23, i64 0, i32 26
  %25 = load i32, ptr %24, align 4, !tbaa !137
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.slice, ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %28, i64 0, i32 32
  %30 = load i32, ptr %29, align 4, !tbaa !121
  %31 = icmp eq i32 %30, 0
  br i1 %26, label %32, label %37

32:                                               ; preds = %22
  br i1 %31, label %35, label %33

33:                                               ; preds = %32
  %34 = tail call i32 @mb_pred_b_d8x8temporal(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %44

35:                                               ; preds = %32
  %36 = tail call i32 @mb_pred_b_d4x4temporal(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %44

37:                                               ; preds = %22
  br i1 %31, label %40, label %38

38:                                               ; preds = %37
  %39 = tail call i32 @mb_pred_b_d8x8spatial(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %44

40:                                               ; preds = %37
  %41 = tail call i32 @mb_pred_b_d4x4spatial(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %44

42:                                               ; preds = %4
  %43 = tail call i32 @mb_pred_b_inter8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %44

44:                                               ; preds = %35, %33, %40, %38, %10, %14, %18, %42, %20, %16, %12, %8
  ret i32 1
}

; Function Attrs: optsize
declare void @update_direct_types(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_lists_b_slice_mvc(ptr noundef) #6

; Function Attrs: optsize
declare void @init_lists_b_slice(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @interpret_mb_mode_I(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !65
  switch i16 %3, label %10 [
    i16 0, label %4
    i16 25, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %5, align 8, !tbaa !53
  store i16 9, ptr %2, align 8, !tbaa !65
  br label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %7, align 8, !tbaa !53
  store i16 14, ptr %2, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %8, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %9, align 8, !tbaa !94
  br label %22

10:                                               ; preds = %1
  %11 = sext i16 %3 to i32
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %12, align 8, !tbaa !53
  store i16 10, ptr %2, align 8, !tbaa !65
  %13 = add nsw i32 %11, -1
  %14 = ashr i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i16], ptr @interpret_mb_mode_I.ICBPTAB, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !59
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %18, ptr %19, align 4, !tbaa !67
  %20 = and i32 %13, 3
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %20, ptr %21, align 8, !tbaa !94
  br label %22

22:                                               ; preds = %6, %10, %4
  %23 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 185273099, %4 ]
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %25, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_one_macroblock_i_slice(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 37
  %14 = and i32 %7, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 124
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = sext i32 %7 to i64
  %20 = getelementptr %struct.macroblock, ptr %18, i64 %19
  %21 = getelementptr %struct.macroblock, ptr %20, i64 -1, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %1, %16
  %24 = phi i32 [ %22, %16 ], [ 0, %1 ]
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %24, ptr %25, align 8, !tbaa !109
  %26 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %27 = load i32, ptr %26, align 4, !tbaa !110
  tail call void @update_qp(ptr noundef nonnull %0, i32 noundef %27) #17
  store i32 2, ptr %2, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !80
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr %29, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.bit_stream, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !102
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %48

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %41, align 8, !tbaa !104
  %42 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %43 = load i32, ptr %42, align 8, !tbaa !40
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %15, %44
  br i1 %45, label %81, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %29, align 8, !tbaa !99
  br label %59

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %49, align 8, !tbaa !104
  %50 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %51 = load i32, ptr %50, align 8, !tbaa !40
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %15, %52
  br i1 %53, label %76, label %59

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %56 = load i32, ptr %55, align 8, !tbaa !40
  %57 = icmp eq i32 %56, 0
  %58 = or i1 %15, %57
  br i1 %58, label %76, label %64

59:                                               ; preds = %48, %46
  %60 = phi ptr [ %47, %46 ], [ %36, %48 ]
  %61 = phi ptr [ %42, %46 ], [ %50, %48 ]
  %62 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %62, align 4, !tbaa !115
  %63 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %60) #18
  br label %69

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readFieldModeInfo_CABAC, ptr %65, align 8, !tbaa !105
  %66 = getelementptr inbounds %struct.datapartition, ptr %29, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !111
  %68 = call i32 %67(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %29) #18
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi ptr [ %55, %64 ], [ %61, %59 ]
  %71 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !112
  store i32 %72, ptr %25, align 8, !tbaa !109
  %73 = load ptr, ptr %30, align 8, !tbaa !79
  %74 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %73, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !80
  br label %76

76:                                               ; preds = %48, %54, %69
  %77 = phi i32 [ %33, %54 ], [ %75, %69 ], [ %33, %48 ]
  %78 = phi ptr [ %55, %54 ], [ %70, %69 ], [ %50, %48 ]
  %79 = icmp eq i32 %77, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #18
  br label %81

81:                                               ; preds = %40, %80, %76
  %82 = phi ptr [ %78, %80 ], [ %78, %76 ], [ %42, %40 ]
  %83 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_typeInfo_CABAC_i_slice, ptr %83, align 8, !tbaa !105
  %84 = getelementptr inbounds %struct.datapartition, ptr %29, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !111
  %86 = call i32 %85(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %29) #18
  %87 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !112
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %89, ptr %90, align 8, !tbaa !65
  %91 = load ptr, ptr %29, align 8, !tbaa !99
  %92 = getelementptr inbounds %struct.bit_stream, ptr %91, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !102
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %96, align 2, !tbaa !114
  br label %97

97:                                               ; preds = %95, %81
  %98 = load i32, ptr %25, align 8, !tbaa !109
  %99 = trunc i32 %98 to i8
  %100 = load ptr, ptr %13, align 8, !tbaa !118
  %101 = sext i32 %7 to i64
  %102 = getelementptr inbounds i8, ptr %100, i64 %101
  store i8 %99, ptr %102, align 1, !tbaa !26
  %103 = load i32, ptr %82, align 8, !tbaa !40
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %97
  %106 = load i32, ptr %25, align 8, !tbaa !109
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %110 = load i32, ptr %109, align 4, !tbaa !45
  br i1 %15, label %111, label %114

111:                                              ; preds = %108
  %112 = add nsw i32 %110, -4
  %113 = ashr i32 %112, 1
  br label %119

114:                                              ; preds = %108
  %115 = ashr i32 %110, 1
  br label %119

116:                                              ; preds = %105, %97
  %117 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %118 = load i32, ptr %117, align 4, !tbaa !45
  br label %119

119:                                              ; preds = %111, %114, %116
  %120 = phi i32 [ %118, %116 ], [ %113, %111 ], [ %115, %114 ]
  %121 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  store i32 %120, ptr %121, align 8, !tbaa !46
  %122 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 126
  %123 = load ptr, ptr %122, align 8, !tbaa !119
  %124 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %125 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !42
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %123, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  %130 = load i16, ptr %124, align 4, !tbaa !43
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds i32, ptr %129, i64 %131
  store i32 0, ptr %132, align 4, !tbaa !25
  %133 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 117
  %134 = load ptr, ptr %133, align 8, !tbaa !83
  call void %134(ptr noundef nonnull %0) #18
  %135 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 1, ptr %135, align 8, !tbaa !120
  %136 = load i16, ptr %90, align 8, !tbaa !65
  %137 = icmp eq i16 %136, 9
  br i1 %137, label %138, label %167

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %140 = load i32, ptr %139, align 4, !tbaa !123
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %167, label %142

142:                                              ; preds = %138
  store i32 0, ptr %2, align 8, !tbaa !95
  %143 = load ptr, ptr %28, align 8, !tbaa !97
  store ptr @readMB_transform_size_flag_CABAC, ptr %83, align 8, !tbaa !105
  %144 = load ptr, ptr %30, align 8, !tbaa !79
  %145 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %144, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !80
  %147 = icmp eq i32 %146, 0
  %148 = load ptr, ptr %143, align 8, !tbaa !99
  br i1 %147, label %153, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.bit_stream, ptr %148, i64 0, i32 5
  %151 = load i32, ptr %150, align 8, !tbaa !102
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149, %142
  %154 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %154, align 4, !tbaa !115
  %155 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %148) #18
  br label %160

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.datapartition, ptr %143, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !111
  %159 = call i32 %158(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %143) #18
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, ptr %87, align 4, !tbaa !112
  %162 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %161, ptr %162, align 4, !tbaa !124
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  store i16 13, ptr %90, align 8, !tbaa !65
  %165 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 218959117, ptr %165, align 4
  %166 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %166, align 8
  br label %169

167:                                              ; preds = %138, %119
  %168 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 0, ptr %168, align 4, !tbaa !124
  br label %169

169:                                              ; preds = %160, %164, %167
  call fastcc void @init_macroblock(ptr noundef nonnull %0) #17
  %170 = load i16, ptr %90, align 8, !tbaa !65
  %171 = icmp eq i16 %170, 14
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  call fastcc void @read_ipred_modes(ptr noundef nonnull %0) #17
  %173 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 111
  %174 = load ptr, ptr %173, align 8, !tbaa !92
  call void %174(ptr noundef nonnull %0) #18
  br label %189

175:                                              ; preds = %169
  %176 = load i32, ptr %8, align 8, !tbaa !107
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %180 = load i32, ptr %179, align 8, !tbaa !127
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call fastcc void @concealIPCMcoeffs(ptr noundef nonnull %0) #17
  br label %189

183:                                              ; preds = %178, %175
  %184 = load ptr, ptr %28, align 8, !tbaa !97
  %185 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10, i64 7
  %186 = load i8, ptr %185, align 1, !tbaa !26
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds %struct.datapartition, ptr %184, i64 %187
  call fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef nonnull %3, ptr noundef %188) #17
  br label %189

189:                                              ; preds = %182, %183, %172
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @decode_one_component_i_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !128
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !65
  switch i16 %7, label %16 [
    i16 14, label %8
    i16 10, label %10
    i16 9, label %12
    i16 13, label %14
  ]

8:                                                ; preds = %4
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef nonnull %0) #18
  br label %16

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3) #18
  br label %16

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %16

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %16

16:                                               ; preds = %4, %10, %14, %12, %8
  ret i32 1
}

; Function Attrs: optsize
declare void @init_lists_i_slice_mvc(ptr noundef) #6

; Function Attrs: optsize
declare void @init_lists_i_slice(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @interpret_mb_mode_SI(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !65
  switch i16 %3, label %30 [
    i16 0, label %4
    i16 1, label %20
    i16 26, label %24
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %5, align 8, !tbaa !53
  store i16 12, ptr %2, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %6, align 4
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %7, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 126
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !42
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = load i16, ptr %11, align 4, !tbaa !43
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  store i32 1, ptr %19, align 4, !tbaa !25
  br label %43

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %21, align 8, !tbaa !53
  store i16 9, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %22, align 4
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %23, align 8
  br label %43

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %25, align 8, !tbaa !53
  store i16 14, ptr %2, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %26, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %29, align 8
  br label %43

30:                                               ; preds = %1
  %31 = sext i16 %3 to i32
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %32, align 8, !tbaa !53
  store i16 10, ptr %2, align 8, !tbaa !65
  %33 = add nsw i32 %31, -2
  %34 = ashr i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], ptr @__const.interpret_mb_mode_SI.ICBPTAB, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !25
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %37, ptr %38, align 4, !tbaa !67
  %39 = and i32 %33, 3
  %40 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %39, ptr %40, align 8, !tbaa !94
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %42, align 8
  br label %43

43:                                               ; preds = %20, %30, %24, %4
  ret void
}

; Function Attrs: optsize
declare void @intrapred_chroma_mbaff(ptr noundef) #6

; Function Attrs: optsize
declare void @intrapred_chroma(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_444(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 1
  %13 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = freeze i32 %18
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi ptr [ @FIELD_SCAN, %1 ], [ %21, %16 ]
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %25 = load i16, ptr %24, align 8, !tbaa !65
  switch i16 %25, label %27 [
    i16 10, label %132
    i16 14, label %132
    i16 9, label %26
    i16 12, label %26
    i16 13, label %26
  ]

26:                                               ; preds = %22, %22, %22
  br label %27

27:                                               ; preds = %22, %26
  %28 = phi i32 [ 6, %26 ], [ 11, %22 ]
  store i32 %28, ptr %2, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds i8, ptr %7, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !26
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.datapartition, ptr %30, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.bit_stream, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !102
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %27
  switch i16 %25, label %43 [
    i16 9, label %41
    i16 12, label %41
    i16 13, label %41
  ]

41:                                               ; preds = %40, %40, %40
  %42 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 120
  br label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 121
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %47, ptr %48, align 8, !tbaa !104
  br label %51

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %50, align 8, !tbaa !105
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.datapartition, ptr %30, i64 %34, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !111
  %54 = call i32 %53(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %35) #18
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !112
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %56, ptr %57, align 4, !tbaa !67
  %58 = load i16, ptr %24, align 8, !tbaa !65
  %59 = add i16 %58, -1
  %60 = icmp ult i16 %59, 3
  br i1 %60, label %77, label %61

61:                                               ; preds = %51
  %62 = icmp eq i16 %58, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 33
  %65 = load i32, ptr %64, align 4, !tbaa !69
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !90
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %69, i64 0, i32 32
  %71 = load i32, ptr %70, align 4, !tbaa !121
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67, %63, %61
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %75 = load i32, ptr %74, align 8, !tbaa !120
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %51, %73
  switch i16 %58, label %78 [
    i16 13, label %102
    i16 9, label %102
  ]

78:                                               ; preds = %67, %77
  %79 = and i32 %56, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !123
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %81
  store i32 0, ptr %2, align 8, !tbaa !95
  %86 = load ptr, ptr %29, align 8, !tbaa !97
  %87 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %87, align 8, !tbaa !105
  %88 = load ptr, ptr %86, align 8, !tbaa !99
  %89 = getelementptr inbounds %struct.bit_stream, ptr %88, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !102
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %93, align 4, !tbaa !115
  %94 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef nonnull %88) #18
  br label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.datapartition, ptr %86, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !111
  %98 = call i32 %97(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %86) #18
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, ptr %55, align 4, !tbaa !112
  %101 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %100, ptr %101, align 4, !tbaa !124
  br label %104

102:                                              ; preds = %78, %77, %77, %73
  %103 = icmp eq i32 %56, 0
  br i1 %103, label %208, label %104

104:                                              ; preds = %81, %99, %102
  %105 = load i32, ptr %10, align 8, !tbaa !53
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %107) #17
  %108 = load i32, ptr %4, align 8, !tbaa !107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %208, label %110

110:                                              ; preds = %104
  %111 = load i32, ptr %10, align 8, !tbaa !53
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 75
  %115 = load i32, ptr %114, align 4, !tbaa !139
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %118, align 1, !tbaa !140
  br label %119

119:                                              ; preds = %117, %113, %110
  br i1 %12, label %120, label %127

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %122 = load i32, ptr %121, align 8, !tbaa !127
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %125, align 2, !tbaa !114
  %126 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %126, align 1, !tbaa !140
  br label %127

127:                                              ; preds = %124, %120, %119
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %128 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %129 = load i8, ptr %128, align 1, !tbaa !140
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %208, label %131

131:                                              ; preds = %127
  store i32 0, ptr %57, align 4, !tbaa !67
  br label %208

132:                                              ; preds = %22, %22
  %133 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %134 = load i32, ptr %133, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 17) #17
  %135 = load i32, ptr %4, align 8, !tbaa !107
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %139 = load i32, ptr %138, align 8, !tbaa !127
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %142, align 2, !tbaa !114
  %143 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %143, align 1, !tbaa !140
  br label %144

144:                                              ; preds = %141, %137
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %145 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %146 = load i8, ptr %145, align 1, !tbaa !140
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  store i32 0, ptr %133, align 4, !tbaa !67
  br label %208

149:                                              ; preds = %132
  %150 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %151 = load i8, ptr %150, align 1, !tbaa !140
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %208

153:                                              ; preds = %144, %149
  %154 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %155 = load ptr, ptr %154, align 8, !tbaa !97
  %156 = getelementptr inbounds i8, ptr %7, i64 7
  %157 = load i8, ptr %156, align 1, !tbaa !26
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds %struct.datapartition, ptr %155, i64 %158
  %160 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  store i32 0, ptr %160, align 8, !tbaa !141
  store i32 7, ptr %2, align 8, !tbaa !95
  %161 = load ptr, ptr %159, align 8, !tbaa !99
  %162 = getelementptr inbounds %struct.bit_stream, ptr %161, i64 0, i32 5
  %163 = load i32, ptr %162, align 8, !tbaa !102
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %166, align 8, !tbaa !104
  br label %169

167:                                              ; preds = %153
  %168 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %168, align 8, !tbaa !105
  br label %169

169:                                              ; preds = %167, %165
  %170 = getelementptr inbounds %struct.datapartition, ptr %155, i64 %158, i32 2
  %171 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %172 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %173 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 80
  br label %174

174:                                              ; preds = %169, %181
  %175 = phi ptr [ %23, %169 ], [ %190, %181 ]
  %176 = phi i32 [ 0, %169 ], [ %199, %181 ]
  %177 = load ptr, ptr %170, align 8, !tbaa !111
  %178 = call i32 %177(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %159) #18
  %179 = load i32, ptr %171, align 4, !tbaa !112
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %174
  %182 = load i32, ptr %172, align 8, !tbaa !142
  %183 = shl nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %175, i64 %184
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  %187 = load i8, ptr %185, align 1, !tbaa !26
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 2
  %190 = getelementptr inbounds i8, ptr %185, i64 2
  %191 = load i8, ptr %186, align 1, !tbaa !26
  %192 = zext i8 %191 to i64
  %193 = shl nuw nsw i64 %192, 2
  %194 = load ptr, ptr %173, align 8, !tbaa !34
  %195 = load ptr, ptr %194, align 8, !tbaa !35
  %196 = getelementptr inbounds ptr, ptr %195, i64 %193
  %197 = load ptr, ptr %196, align 8, !tbaa !35
  %198 = getelementptr inbounds i32, ptr %197, i64 %189
  store i32 %179, ptr %198, align 4, !tbaa !25
  %199 = add nuw nsw i32 %176, 1
  %200 = icmp ult i32 %176, 16
  br i1 %200, label %174, label %201, !llvm.loop !143

201:                                              ; preds = %174, %181
  %202 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %203 = load i32, ptr %202, align 4, !tbaa !31
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 46
  %207 = load i32, ptr %206, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %207) #18
  br label %208

208:                                              ; preds = %148, %149, %205, %201, %102, %127, %131, %104
  %209 = phi i32 [ %134, %149 ], [ %134, %205 ], [ %134, %201 ], [ 0, %131 ], [ %56, %127 ], [ %56, %104 ], [ 0, %102 ], [ 0, %148 ]
  %210 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %211 = load i32, ptr %210, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %211) #17
  %212 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 132
  %213 = load ptr, ptr %212, align 8, !tbaa !145
  %214 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 46
  %215 = load i32, ptr %214, align 8, !tbaa !144
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !25
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %213, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !25
  %222 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 133
  %223 = load ptr, ptr %222, align 8, !tbaa !146
  %224 = getelementptr inbounds i32, ptr %223, i64 %219
  %225 = load i32, ptr %224, align 4, !tbaa !25
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 88, i64 %216, i64 %226
  %228 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 89, i64 %216, i64 %226
  %229 = select i1 %12, ptr %227, ptr %228
  %230 = icmp eq i32 %209, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %208
  %232 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %233 = load i32, ptr %232, align 4, !tbaa !124
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #17
  br label %237

236:                                              ; preds = %231
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %229, i32 noundef %221, i32 noundef %209) #17
  br label %237

237:                                              ; preds = %235, %236, %208
  %238 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %239 = getelementptr inbounds i8, ptr %7, i64 7
  %240 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 105
  %241 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  %242 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  %243 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  %244 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %245 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %246 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 80
  %247 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %248 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 68
  %249 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  br label %250

250:                                              ; preds = %237, %330
  %251 = phi i32 [ 10, %237 ], [ 16, %330 ]
  %252 = phi i1 [ true, %237 ], [ false, %330 ]
  %253 = phi i64 [ 0, %237 ], [ 1, %330 ]
  %254 = load i16, ptr %24, align 8, !tbaa !65
  switch i16 %254, label %306 [
    i16 10, label %255
    i16 14, label %255
  ]

255:                                              ; preds = %250, %250
  store i32 7, ptr %2, align 8, !tbaa !95
  %256 = load ptr, ptr %238, align 8, !tbaa !97
  %257 = load i8, ptr %239, align 1, !tbaa !26
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds %struct.datapartition, ptr %256, i64 %258
  %260 = load i32, ptr %240, align 8, !tbaa !91
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i32 %251, i32 0
  store i32 %262, ptr %241, align 8, !tbaa !141
  %263 = load ptr, ptr %259, align 8, !tbaa !99
  %264 = getelementptr inbounds %struct.bit_stream, ptr %263, i64 0, i32 5
  %265 = load i32, ptr %264, align 8, !tbaa !102
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %255
  store ptr @linfo_levrun_inter, ptr %242, align 8, !tbaa !104
  br label %269

268:                                              ; preds = %255
  store ptr @readRunLevel_CABAC, ptr %243, align 8, !tbaa !105
  br label %269

269:                                              ; preds = %268, %267
  %270 = getelementptr inbounds %struct.datapartition, ptr %256, i64 %258, i32 2
  br label %271

271:                                              ; preds = %269, %278
  %272 = phi i32 [ 0, %269 ], [ %298, %278 ]
  %273 = phi i32 [ -1, %269 ], [ %281, %278 ]
  %274 = load ptr, ptr %270, align 8, !tbaa !111
  %275 = call i32 %274(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %259) #18
  %276 = load i32, ptr %244, align 4, !tbaa !112
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %300, label %278

278:                                              ; preds = %271
  %279 = load i32, ptr %245, align 8, !tbaa !142
  %280 = add i32 %273, 1
  %281 = add i32 %280, %279
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x i8], ptr %23, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !26
  %285 = zext i8 %284 to i64
  %286 = getelementptr inbounds [2 x i8], ptr %23, i64 %282, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !26
  %288 = zext i8 %287 to i64
  %289 = load ptr, ptr %246, align 8, !tbaa !34
  %290 = getelementptr ptr, ptr %289, i64 %253
  %291 = getelementptr ptr, ptr %290, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !35
  %293 = shl nuw nsw i64 %288, 2
  %294 = getelementptr inbounds ptr, ptr %292, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !35
  %296 = shl nuw nsw i64 %285, 2
  %297 = getelementptr inbounds i32, ptr %295, i64 %296
  store i32 %276, ptr %297, align 4, !tbaa !25
  %298 = add nuw nsw i32 %272, 1
  %299 = icmp ult i32 %272, 16
  br i1 %299, label %271, label %300, !llvm.loop !147

300:                                              ; preds = %271, %278
  %301 = load i32, ptr %247, align 4, !tbaa !31
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = trunc i64 %253 to i32
  %305 = add nuw nsw i32 %304, 1
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %305) #18
  br label %306

306:                                              ; preds = %250, %300, %303
  %307 = load i32, ptr %210, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %307) #17
  %308 = load ptr, ptr %212, align 8, !tbaa !145
  %309 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %253
  %310 = load i32, ptr %309, align 4, !tbaa !25
  %311 = load i32, ptr %248, align 8, !tbaa !19
  %312 = add nsw i32 %311, %310
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, ptr %308, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !25
  %316 = load ptr, ptr %222, align 8, !tbaa !146
  %317 = getelementptr inbounds i32, ptr %316, i64 %313
  %318 = load i32, ptr %317, align 4, !tbaa !25
  %319 = add nuw nsw i64 %253, 1
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 88, i64 %319, i64 %320
  %322 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 89, i64 %319, i64 %320
  %323 = select i1 %12, ptr %321, ptr %322
  br i1 %230, label %330, label %324

324:                                              ; preds = %306
  %325 = load i32, ptr %249, align 4, !tbaa !124
  %326 = icmp eq i32 %325, 0
  %327 = trunc i64 %319 to i32
  br i1 %326, label %329, label %328

328:                                              ; preds = %324
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %327) #17
  br label %330

329:                                              ; preds = %324
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %327, ptr noundef nonnull %323, i32 noundef %315, i32 noundef %209) #17
  br label %330

330:                                              ; preds = %306, %329, %328
  br i1 %252, label %250, label %331, !llvm.loop !148

331:                                              ; preds = %330
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_422(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x [4 x i32]], align 16
  %6 = alloca [2 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !53
  %16 = icmp eq i32 %15, 1
  %17 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.storable_picture, ptr %18, i64 0, i32 48
  %20 = load i32, ptr %19, align 4, !tbaa !149
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !138
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %27 = load i32, ptr %26, align 8, !tbaa !109
  %28 = freeze i32 %27
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi i1 [ false, %1 ], [ %29, %25 ]
  %33 = phi ptr [ @FIELD_SCAN, %1 ], [ %30, %25 ]
  %34 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 132
  %35 = load ptr, ptr %34, align 8, !tbaa !145
  %36 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 133
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  br label %38

38:                                               ; preds = %31, %38
  %39 = phi i1 [ true, %31 ], [ false, %38 ]
  %40 = phi i64 [ 0, %31 ], [ 1, %38 ]
  %41 = add nuw nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %35, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !25
  %47 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %40
  store i32 %46, ptr %47, align 4, !tbaa !25
  %48 = getelementptr inbounds i32, ptr %37, i64 %44
  %49 = load i32, ptr %48, align 4, !tbaa !25
  %50 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %40
  store i32 %49, ptr %50, align 4, !tbaa !25
  br i1 %39, label %38, label %51, !llvm.loop !150

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %53 = load i16, ptr %52, align 8, !tbaa !65
  switch i16 %53, label %55 [
    i16 10, label %160
    i16 14, label %160
    i16 9, label %54
    i16 12, label %54
    i16 13, label %54
  ]

54:                                               ; preds = %51, %51, %51
  br label %55

55:                                               ; preds = %51, %54
  %56 = phi i32 [ 6, %54 ], [ 11, %51 ]
  store i32 %56, ptr %2, align 8, !tbaa !95
  %57 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %58 = load ptr, ptr %57, align 8, !tbaa !97
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds i8, ptr %11, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !26
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.datapartition, ptr %58, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !99
  %65 = getelementptr inbounds %struct.bit_stream, ptr %64, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !102
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %55
  switch i16 %53, label %71 [
    i16 9, label %69
    i16 12, label %69
    i16 13, label %69
  ]

69:                                               ; preds = %68, %68, %68
  %70 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 120
  br label %73

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 121
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi ptr [ %70, %69 ], [ %72, %71 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %75, ptr %76, align 8, !tbaa !104
  br label %79

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %78, align 8, !tbaa !105
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.datapartition, ptr %58, i64 %62, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !111
  %82 = call i32 %81(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %63) #18
  %83 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !112
  %85 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %84, ptr %85, align 4, !tbaa !67
  %86 = load i16, ptr %52, align 8, !tbaa !65
  %87 = add i16 %86, -1
  %88 = icmp ult i16 %87, 3
  br i1 %88, label %105, label %89

89:                                               ; preds = %79
  %90 = icmp eq i16 %86, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 33
  %93 = load i32, ptr %92, align 4, !tbaa !69
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !90
  %98 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %97, i64 0, i32 32
  %99 = load i32, ptr %98, align 4, !tbaa !121
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95, %91, %89
  %102 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %103 = load i32, ptr %102, align 8, !tbaa !120
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %79, %101
  switch i16 %86, label %106 [
    i16 13, label %130
    i16 9, label %130
  ]

106:                                              ; preds = %95, %105
  %107 = and i32 %84, 15
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 9
  %111 = load i32, ptr %110, align 4, !tbaa !123
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %109
  store i32 0, ptr %2, align 8, !tbaa !95
  %114 = load ptr, ptr %57, align 8, !tbaa !97
  %115 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %115, align 8, !tbaa !105
  %116 = load ptr, ptr %114, align 8, !tbaa !99
  %117 = getelementptr inbounds %struct.bit_stream, ptr %116, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !102
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %121, align 4, !tbaa !115
  %122 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef nonnull %116) #18
  br label %127

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.datapartition, ptr %114, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !111
  %126 = call i32 %125(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %114) #18
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, ptr %83, align 4, !tbaa !112
  %129 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %128, ptr %129, align 4, !tbaa !124
  br label %132

130:                                              ; preds = %106, %105, %105, %101
  %131 = icmp eq i32 %84, 0
  br i1 %131, label %236, label %132

132:                                              ; preds = %109, %127, %130
  %133 = load i32, ptr %14, align 8, !tbaa !53
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %135) #17
  %136 = load i32, ptr %8, align 8, !tbaa !107
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %236, label %138

138:                                              ; preds = %132
  %139 = load i32, ptr %14, align 8, !tbaa !53
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 75
  %143 = load i32, ptr %142, align 4, !tbaa !139
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %146, align 1, !tbaa !140
  br label %147

147:                                              ; preds = %145, %141, %138
  br i1 %16, label %148, label %155

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 74
  %150 = load i32, ptr %149, align 8, !tbaa !127
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %153, align 2, !tbaa !114
  %154 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %154, align 1, !tbaa !140
  br label %155

155:                                              ; preds = %152, %148, %147
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %156 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %157 = load i8, ptr %156, align 1, !tbaa !140
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %236, label %159

159:                                              ; preds = %155
  store i32 0, ptr %85, align 4, !tbaa !67
  br label %236

160:                                              ; preds = %51, %51
  %161 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %162 = load i32, ptr %161, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef 17) #17
  %163 = load i32, ptr %8, align 8, !tbaa !107
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 74
  %167 = load i32, ptr %166, align 8, !tbaa !127
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %170, align 2, !tbaa !114
  %171 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %171, align 1, !tbaa !140
  br label %172

172:                                              ; preds = %169, %165
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %173 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %174 = load i8, ptr %173, align 1, !tbaa !140
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  store i32 0, ptr %161, align 4, !tbaa !67
  br label %236

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %179 = load i8, ptr %178, align 1, !tbaa !140
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %236

181:                                              ; preds = %172, %177
  %182 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %183 = load ptr, ptr %182, align 8, !tbaa !97
  %184 = getelementptr inbounds i8, ptr %11, i64 7
  %185 = load i8, ptr %184, align 1, !tbaa !26
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds %struct.datapartition, ptr %183, i64 %186
  %188 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  store i32 0, ptr %188, align 8, !tbaa !141
  store i32 7, ptr %2, align 8, !tbaa !95
  %189 = load ptr, ptr %187, align 8, !tbaa !99
  %190 = getelementptr inbounds %struct.bit_stream, ptr %189, i64 0, i32 5
  %191 = load i32, ptr %190, align 8, !tbaa !102
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %194, align 8, !tbaa !104
  br label %197

195:                                              ; preds = %181
  %196 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %196, align 8, !tbaa !105
  br label %197

197:                                              ; preds = %195, %193
  %198 = getelementptr inbounds %struct.datapartition, ptr %183, i64 %186, i32 2
  %199 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %200 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %201 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  br label %202

202:                                              ; preds = %197, %209
  %203 = phi i32 [ 0, %197 ], [ %227, %209 ]
  %204 = phi ptr [ %33, %197 ], [ %218, %209 ]
  %205 = load ptr, ptr %198, align 8, !tbaa !111
  %206 = call i32 %205(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %187) #18
  %207 = load i32, ptr %199, align 4, !tbaa !112
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %202
  %210 = load i32, ptr %200, align 8, !tbaa !142
  %211 = shl nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %204, i64 %212
  %214 = getelementptr inbounds i8, ptr %213, i64 1
  %215 = load i8, ptr %213, align 1, !tbaa !26
  %216 = zext i8 %215 to i64
  %217 = shl nuw nsw i64 %216, 2
  %218 = getelementptr inbounds i8, ptr %213, i64 2
  %219 = load i8, ptr %214, align 1, !tbaa !26
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, 2
  %222 = load ptr, ptr %201, align 8, !tbaa !34
  %223 = load ptr, ptr %222, align 8, !tbaa !35
  %224 = getelementptr inbounds ptr, ptr %223, i64 %221
  %225 = load ptr, ptr %224, align 8, !tbaa !35
  %226 = getelementptr inbounds i32, ptr %225, i64 %217
  store i32 %207, ptr %226, align 4, !tbaa !25
  %227 = add nuw nsw i32 %203, 1
  %228 = icmp ult i32 %203, 16
  br i1 %228, label %202, label %229, !llvm.loop !151

229:                                              ; preds = %202, %209
  %230 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %231 = load i32, ptr %230, align 4, !tbaa !31
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 46
  %235 = load i32, ptr %234, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %235) #18
  br label %236

236:                                              ; preds = %176, %177, %233, %229, %130, %155, %159, %132
  %237 = phi i32 [ %162, %177 ], [ %162, %233 ], [ %162, %229 ], [ 0, %159 ], [ %84, %155 ], [ %84, %132 ], [ 0, %130 ], [ 0, %176 ]
  %238 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 29
  %239 = load i32, ptr %238, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %239) #17
  %240 = load ptr, ptr %34, align 8, !tbaa !145
  %241 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 46
  %242 = load i32, ptr %241, align 8, !tbaa !144
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !25
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %240, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !25
  %249 = load ptr, ptr %36, align 8, !tbaa !146
  %250 = getelementptr inbounds i32, ptr %249, i64 %246
  %251 = load i32, ptr %250, align 4, !tbaa !25
  br label %252

252:                                              ; preds = %236, %252
  %253 = phi i1 [ true, %236 ], [ false, %252 ]
  %254 = phi i64 [ 0, %236 ], [ 1, %252 ]
  %255 = add nuw nsw i64 %254, 1
  %256 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !25
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, ptr %240, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !25
  %261 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %254
  store i32 %260, ptr %261, align 4, !tbaa !25
  %262 = getelementptr inbounds i32, ptr %249, i64 %258
  %263 = load i32, ptr %262, align 4, !tbaa !25
  %264 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %254
  store i32 %263, ptr %264, align 4, !tbaa !25
  br i1 %253, label %252, label %265, !llvm.loop !152

265:                                              ; preds = %252
  %266 = sext i32 %251 to i64
  %267 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 88, i64 %243, i64 %266
  %268 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 89, i64 %243, i64 %266
  %269 = select i1 %16, ptr %267, ptr %268
  %270 = icmp eq i32 %237, 0
  br i1 %270, label %659, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %273 = load i32, ptr %272, align 4, !tbaa !124
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %271
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #17
  br label %277

276:                                              ; preds = %271
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %269, i32 noundef %248, i32 noundef %237) #17
  br label %277

277:                                              ; preds = %275, %276
  %278 = icmp sgt i32 %237, 15
  br i1 %278, label %279, label %659

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  %281 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 68
  %282 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  %283 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %284 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %285 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  %286 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  %287 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %288 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %289 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %290 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %291 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 1
  %292 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %293 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 1, i64 1
  %294 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %295 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %296 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 1, i64 2
  %297 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %298 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %299 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 1, i64 3
  %300 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %301 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 1
  %302 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 1, i64 1
  %303 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 1, i64 2
  %304 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 1, i64 3
  %305 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 78
  %306 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 77
  br label %307

307:                                              ; preds = %279, %474
  %308 = phi i1 [ true, %279 ], [ false, %474 ]
  %309 = phi i64 [ 0, %279 ], [ 2, %474 ]
  %310 = lshr exact i64 %309, 1
  %311 = load ptr, ptr %280, align 8, !tbaa !34
  %312 = add nuw nsw i64 %310, 1
  %313 = getelementptr inbounds ptr, ptr %311, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %315 = load ptr, ptr %34, align 8, !tbaa !145
  %316 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %310
  %317 = load i32, ptr %316, align 4, !tbaa !25
  %318 = add nsw i32 %317, 3
  %319 = load i32, ptr %281, align 8, !tbaa !19
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, ptr %315, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !25
  %324 = load ptr, ptr %36, align 8, !tbaa !146
  %325 = getelementptr inbounds i32, ptr %324, i64 %321
  %326 = load i32, ptr %325, align 4, !tbaa !25
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 89, i64 %312, i64 %327
  %329 = shl nuw nsw i64 %309, 2
  %330 = shl nuw nsw i64 16711680, %329
  %331 = trunc i64 %309 to i32
  br label %332

332:                                              ; preds = %307, %356
  %333 = phi i32 [ 0, %307 ], [ %370, %356 ]
  %334 = phi i32 [ -1, %307 ], [ %361, %356 ]
  store i32 8, ptr %282, align 8, !tbaa !141
  %335 = load i32, ptr %14, align 8, !tbaa !53
  %336 = icmp eq i32 %335, 1
  %337 = select i1 %336, i32 8, i32 13
  store i32 %337, ptr %2, align 8, !tbaa !95
  store i32 %331, ptr %283, align 4, !tbaa !153
  %338 = load ptr, ptr %284, align 8, !tbaa !97
  %339 = zext nneg i32 %337 to i64
  %340 = getelementptr inbounds i8, ptr %11, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !26
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds %struct.datapartition, ptr %338, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !99
  %345 = getelementptr inbounds %struct.bit_stream, ptr %344, i64 0, i32 5
  %346 = load i32, ptr %345, align 8, !tbaa !102
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %332
  store ptr @linfo_levrun_c2x2, ptr %285, align 8, !tbaa !104
  br label %350

349:                                              ; preds = %332
  store ptr @readRunLevel_CABAC, ptr %286, align 8, !tbaa !105
  br label %350

350:                                              ; preds = %349, %348
  %351 = getelementptr inbounds %struct.datapartition, ptr %338, i64 %342, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !111
  %353 = call i32 %352(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %343) #18
  %354 = load i32, ptr %287, align 4, !tbaa !112
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %372, label %356

356:                                              ; preds = %350
  %357 = load i64, ptr %288, align 8, !tbaa !32
  %358 = or i64 %357, %330
  store i64 %358, ptr %288, align 8, !tbaa !32
  %359 = load i32, ptr %289, align 8, !tbaa !142
  %360 = add i32 %334, 1
  %361 = add i32 %360, %359
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %362
  %364 = load i8, ptr %363, align 2, !tbaa !26
  %365 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %362, i64 1
  %366 = load i8, ptr %365, align 1, !tbaa !26
  %367 = zext i8 %364 to i64
  %368 = zext i8 %366 to i64
  %369 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 %367, i64 %368
  store i32 %354, ptr %369, align 4, !tbaa !25
  %370 = add nuw nsw i32 %333, 1
  %371 = icmp ult i32 %333, 8
  br i1 %371, label %332, label %372, !llvm.loop !154

372:                                              ; preds = %350, %356
  %373 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 88, i64 %312, i64 %327
  %374 = select i1 %16, ptr %373, ptr %328
  %375 = load i32, ptr %290, align 4, !tbaa !31
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %381, label %377

377:                                              ; preds = %372
  %378 = load ptr, ptr %280, align 8, !tbaa !34
  %379 = getelementptr inbounds ptr, ptr %378, i64 %312
  %380 = load ptr, ptr %379, align 8, !tbaa !35
  br label %462

381:                                              ; preds = %372
  %382 = load i32, ptr %5, align 16, !tbaa !25
  %383 = load i32, ptr %291, align 16, !tbaa !25
  %384 = add nsw i32 %383, %382
  store i32 %384, ptr %6, align 16, !tbaa !25
  %385 = load i32, ptr %292, align 4, !tbaa !25
  %386 = load i32, ptr %293, align 4, !tbaa !25
  %387 = add nsw i32 %386, %385
  store i32 %387, ptr %294, align 4, !tbaa !25
  %388 = load i32, ptr %295, align 8, !tbaa !25
  %389 = load i32, ptr %296, align 8, !tbaa !25
  %390 = add nsw i32 %389, %388
  store i32 %390, ptr %297, align 8, !tbaa !25
  %391 = load i32, ptr %298, align 4, !tbaa !25
  %392 = load i32, ptr %299, align 4, !tbaa !25
  %393 = add nsw i32 %392, %391
  store i32 %393, ptr %300, align 4, !tbaa !25
  %394 = sub nsw i32 %382, %383
  store i32 %394, ptr %301, align 16, !tbaa !25
  %395 = sub nsw i32 %385, %386
  store i32 %395, ptr %302, align 4, !tbaa !25
  %396 = sub nsw i32 %388, %389
  store i32 %396, ptr %303, align 8, !tbaa !25
  %397 = sub nsw i32 %391, %392
  store i32 %397, ptr %304, align 4, !tbaa !25
  %398 = load ptr, ptr %314, align 8, !tbaa !35
  %399 = getelementptr inbounds ptr, ptr %314, i64 4
  %400 = load ptr, ptr %399, align 8, !tbaa !35
  %401 = getelementptr inbounds ptr, ptr %314, i64 8
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  %403 = getelementptr inbounds ptr, ptr %314, i64 12
  %404 = load ptr, ptr %403, align 8, !tbaa !35
  br label %410

405:                                              ; preds = %410
  %406 = load i32, ptr %305, align 8, !tbaa !51
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %474

408:                                              ; preds = %405
  %409 = load i32, ptr %306, align 4, !tbaa !49
  br label %434

410:                                              ; preds = %381, %410
  %411 = phi i1 [ true, %381 ], [ false, %410 ]
  %412 = phi i64 [ 0, %381 ], [ 1, %410 ]
  %413 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 %412
  %414 = load i32, ptr %413, align 16, !tbaa !25
  %415 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 %412, i64 2
  %416 = load i32, ptr %415, align 8, !tbaa !25
  %417 = add nsw i32 %416, %414
  %418 = sub nsw i32 %414, %416
  %419 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 %412, i64 1
  %420 = load i32, ptr %419, align 4, !tbaa !25
  %421 = getelementptr inbounds [2 x [4 x i32]], ptr %6, i64 0, i64 %412, i64 3
  %422 = load i32, ptr %421, align 4, !tbaa !25
  %423 = sub nsw i32 %420, %422
  %424 = add nsw i32 %422, %420
  %425 = add nsw i32 %424, %417
  %426 = shl nuw nsw i64 %412, 2
  %427 = getelementptr inbounds i32, ptr %398, i64 %426
  store i32 %425, ptr %427, align 4, !tbaa !25
  %428 = add nsw i32 %423, %418
  %429 = getelementptr inbounds i32, ptr %400, i64 %426
  store i32 %428, ptr %429, align 4, !tbaa !25
  %430 = sub nsw i32 %418, %423
  %431 = getelementptr inbounds i32, ptr %402, i64 %426
  store i32 %430, ptr %431, align 4, !tbaa !25
  %432 = sub nsw i32 %417, %424
  %433 = getelementptr inbounds i32, ptr %404, i64 %426
  store i32 %432, ptr %433, align 4, !tbaa !25
  br i1 %411, label %410, label %405, !llvm.loop !155

434:                                              ; preds = %408, %456
  %435 = phi i32 [ %406, %408 ], [ %457, %456 ]
  %436 = phi i32 [ %409, %408 ], [ %458, %456 ]
  %437 = phi i64 [ 0, %408 ], [ %459, %456 ]
  %438 = icmp sgt i32 %436, 0
  br i1 %438, label %439, label %456

439:                                              ; preds = %434
  %440 = getelementptr inbounds ptr, ptr %314, i64 %437
  %441 = load ptr, ptr %440, align 8, !tbaa !35
  br label %442

442:                                              ; preds = %439, %442
  %443 = phi i64 [ 0, %439 ], [ %450, %442 ]
  %444 = getelementptr inbounds i32, ptr %441, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !25
  %446 = load i32, ptr %374, align 4, !tbaa !25
  %447 = mul nsw i32 %446, %445
  %448 = shl i32 %447, %323
  %449 = call fastcc i32 @rshift_rnd_sf(i32 noundef %448, i32 noundef 6) #17, !range !33
  store i32 %449, ptr %444, align 4, !tbaa !25
  %450 = add nuw nsw i64 %443, 4
  %451 = load i32, ptr %306, align 4, !tbaa !49
  %452 = sext i32 %451 to i64
  %453 = icmp slt i64 %450, %452
  br i1 %453, label %442, label %454, !llvm.loop !156

454:                                              ; preds = %442
  %455 = load i32, ptr %305, align 8, !tbaa !51
  br label %456

456:                                              ; preds = %454, %434
  %457 = phi i32 [ %455, %454 ], [ %435, %434 ]
  %458 = phi i32 [ %451, %454 ], [ %436, %434 ]
  %459 = add nuw nsw i64 %437, 4
  %460 = sext i32 %457 to i64
  %461 = icmp slt i64 %459, %460
  br i1 %461, label %434, label %474, !llvm.loop !157

462:                                              ; preds = %377, %462
  %463 = phi i64 [ 0, %377 ], [ %472, %462 ]
  %464 = shl nuw nsw i64 %463, 2
  %465 = getelementptr inbounds ptr, ptr %380, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !35
  %467 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 0, i64 %463
  %468 = load i32, ptr %467, align 4, !tbaa !25
  store i32 %468, ptr %466, align 4, !tbaa !25
  %469 = getelementptr inbounds [2 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %463
  %470 = load i32, ptr %469, align 4, !tbaa !25
  %471 = getelementptr inbounds i32, ptr %466, i64 4
  store i32 %470, ptr %471, align 4, !tbaa !25
  %472 = add nuw nsw i64 %463, 1
  %473 = icmp eq i64 %472, 4
  br i1 %473, label %474, label %462, !llvm.loop !158

474:                                              ; preds = %462, %456, %405
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br i1 %308, label %307, label %475, !llvm.loop !159

475:                                              ; preds = %474
  %476 = icmp slt i32 %237, 32
  br i1 %476, label %659, label %477

477:                                              ; preds = %475
  store i32 7, ptr %282, align 8, !tbaa !141
  %478 = load i32, ptr %14, align 8, !tbaa !53
  %479 = icmp eq i32 %478, 0
  %480 = select i1 %479, i32 15, i32 10
  store i32 %480, ptr %2, align 8, !tbaa !95
  %481 = load ptr, ptr %284, align 8, !tbaa !97
  %482 = zext nneg i32 %480 to i64
  %483 = getelementptr inbounds i8, ptr %11, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !26
  %485 = zext i8 %484 to i64
  %486 = getelementptr inbounds %struct.datapartition, ptr %481, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !99
  %488 = getelementptr inbounds %struct.bit_stream, ptr %487, i64 0, i32 5
  %489 = load i32, ptr %488, align 8, !tbaa !102
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %477
  store ptr @linfo_levrun_inter, ptr %285, align 8, !tbaa !104
  br label %493

492:                                              ; preds = %477
  store ptr @readRunLevel_CABAC, ptr %286, align 8, !tbaa !105
  br label %493

493:                                              ; preds = %492, %491
  %494 = load i32, ptr %290, align 4, !tbaa !31
  %495 = icmp eq i32 %494, 0
  %496 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 74
  %497 = load i32, ptr %496, align 8, !tbaa !160
  %498 = icmp sgt i32 %497, 0
  br i1 %495, label %507, label %499

499:                                              ; preds = %493
  br i1 %498, label %500, label %659

500:                                              ; preds = %499
  %501 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 75
  %502 = sext i32 %21 to i64
  %503 = select i1 %32, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %504 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %505 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %506 = getelementptr inbounds %struct.datapartition, ptr %481, i64 %485, i32 2
  br label %594

507:                                              ; preds = %493
  br i1 %498, label %508, label %659

508:                                              ; preds = %507
  %509 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 75
  %510 = sext i32 %21 to i64
  %511 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %512 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %513 = select i1 %32, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %514 = getelementptr inbounds %struct.datapartition, ptr %481, i64 %485, i32 2
  br label %515

515:                                              ; preds = %508, %589
  %516 = phi i64 [ 0, %508 ], [ %590, %589 ]
  %517 = load i32, ptr %509, align 4, !tbaa !161
  %518 = sext i32 %517 to i64
  %519 = icmp sge i64 %516, %518
  %520 = zext i1 %519 to i32
  store i32 %520, ptr %283, align 4, !tbaa !153
  %521 = select i1 %519, i64 2, i64 1
  %522 = zext i1 %519 to i64
  %523 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %522
  %524 = load i32, ptr %523, align 4, !tbaa !25
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 89, i64 %521, i64 %525
  %527 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 88, i64 %521, i64 %525
  %528 = select i1 %16, ptr %527, ptr %526
  %529 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %522
  br label %530

530:                                              ; preds = %515, %586
  %531 = phi i64 [ 0, %515 ], [ %587, %586 ]
  %532 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %510, i64 %516, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !26
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %510, i64 %516, i64 %531
  %536 = load i8, ptr %535, align 1, !tbaa !26
  %537 = zext i8 %536 to i64
  %538 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %510, i64 %516, i64 %531
  %539 = load i8, ptr %538, align 1, !tbaa !26
  %540 = zext i8 %539 to i32
  store i32 %540, ptr %511, align 8, !tbaa !162
  %541 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %510, i64 %516, i64 %531
  %542 = load i8, ptr %541, align 1, !tbaa !26
  %543 = zext i8 %542 to i32
  store i32 %543, ptr %512, align 4, !tbaa !163
  %544 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %516, i64 %531
  %545 = shl nuw nsw i64 %537, 2
  %546 = shl nuw nsw i64 %534, 2
  br label %547

547:                                              ; preds = %530, %554
  %548 = phi i32 [ 0, %530 ], [ %584, %554 ]
  %549 = phi ptr [ %513, %530 ], [ %567, %554 ]
  %550 = load ptr, ptr %514, align 8, !tbaa !111
  %551 = call i32 %550(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %486) #18
  %552 = load i32, ptr %287, align 4, !tbaa !112
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %586, label %554

554:                                              ; preds = %547
  %555 = load i8, ptr %544, align 1, !tbaa !26
  %556 = zext i8 %555 to i32
  %557 = call fastcc i64 @i64_power2(i32 noundef %556) #17
  %558 = load i64, ptr %288, align 8, !tbaa !32
  %559 = or i64 %558, %557
  store i64 %559, ptr %288, align 8, !tbaa !32
  %560 = load i32, ptr %289, align 8, !tbaa !142
  %561 = shl i32 %560, 1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8, ptr %549, i64 %562
  %564 = getelementptr inbounds i8, ptr %563, i64 1
  %565 = load i8, ptr %563, align 1, !tbaa !26
  %566 = zext i8 %565 to i64
  %567 = getelementptr inbounds i8, ptr %563, i64 2
  %568 = load i8, ptr %564, align 1, !tbaa !26
  %569 = zext i8 %568 to i64
  %570 = getelementptr inbounds [4 x i32], ptr %528, i64 %569, i64 %566
  %571 = load i32, ptr %570, align 4, !tbaa !25
  %572 = mul nsw i32 %571, %552
  %573 = load i32, ptr %529, align 4, !tbaa !25
  %574 = shl i32 %572, %573
  %575 = call fastcc i32 @rshift_rnd_sf(i32 noundef %574, i32 noundef 4) #17, !range !33
  %576 = load ptr, ptr %280, align 8, !tbaa !34
  %577 = getelementptr inbounds ptr, ptr %576, i64 %521
  %578 = load ptr, ptr %577, align 8, !tbaa !35
  %579 = getelementptr ptr, ptr %578, i64 %545
  %580 = getelementptr ptr, ptr %579, i64 %569
  %581 = load ptr, ptr %580, align 8, !tbaa !35
  %582 = getelementptr i32, ptr %581, i64 %546
  %583 = getelementptr i32, ptr %582, i64 %566
  store i32 %575, ptr %583, align 4, !tbaa !25
  %584 = add nuw nsw i32 %548, 1
  %585 = icmp ult i32 %548, 15
  br i1 %585, label %547, label %586, !llvm.loop !164

586:                                              ; preds = %547, %554
  %587 = add nuw nsw i64 %531, 1
  %588 = icmp eq i64 %587, 4
  br i1 %588, label %589, label %530, !llvm.loop !165

589:                                              ; preds = %586
  %590 = add nuw nsw i64 %516, 1
  %591 = load i32, ptr %496, align 8, !tbaa !160
  %592 = sext i32 %591 to i64
  %593 = icmp slt i64 %590, %592
  br i1 %593, label %515, label %659, !llvm.loop !166

594:                                              ; preds = %500, %654
  %595 = phi i64 [ 0, %500 ], [ %655, %654 ]
  %596 = load i32, ptr %501, align 4, !tbaa !161
  %597 = sext i32 %596 to i64
  %598 = icmp sge i64 %595, %597
  %599 = zext i1 %598 to i32
  store i32 %599, ptr %283, align 4, !tbaa !153
  %600 = select i1 %598, i64 2, i64 1
  br label %601

601:                                              ; preds = %594, %651
  %602 = phi i64 [ 0, %594 ], [ %652, %651 ]
  %603 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %502, i64 %595, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !26
  %605 = zext i8 %604 to i64
  %606 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %502, i64 %595, i64 %602
  %607 = load i8, ptr %606, align 1, !tbaa !26
  %608 = zext i8 %607 to i64
  %609 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %502, i64 %595, i64 %602
  %610 = load i8, ptr %609, align 1, !tbaa !26
  %611 = zext i8 %610 to i32
  store i32 %611, ptr %504, align 8, !tbaa !162
  %612 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %502, i64 %595, i64 %602
  %613 = load i8, ptr %612, align 1, !tbaa !26
  %614 = zext i8 %613 to i32
  store i32 %614, ptr %505, align 4, !tbaa !163
  %615 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %595, i64 %602
  %616 = shl nuw nsw i64 %608, 2
  %617 = shl nuw nsw i64 %605, 2
  br label %618

618:                                              ; preds = %601, %625
  %619 = phi i32 [ 0, %601 ], [ %649, %625 ]
  %620 = phi ptr [ %503, %601 ], [ %638, %625 ]
  %621 = load ptr, ptr %506, align 8, !tbaa !111
  %622 = call i32 %621(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %486) #18
  %623 = load i32, ptr %287, align 4, !tbaa !112
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %651, label %625

625:                                              ; preds = %618
  %626 = load i8, ptr %615, align 1, !tbaa !26
  %627 = zext i8 %626 to i32
  %628 = call fastcc i64 @i64_power2(i32 noundef %627) #17
  %629 = load i64, ptr %288, align 8, !tbaa !32
  %630 = or i64 %629, %628
  store i64 %630, ptr %288, align 8, !tbaa !32
  %631 = load i32, ptr %289, align 8, !tbaa !142
  %632 = shl i32 %631, 1
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i8, ptr %620, i64 %633
  %635 = getelementptr inbounds i8, ptr %634, i64 1
  %636 = load i8, ptr %634, align 1, !tbaa !26
  %637 = zext i8 %636 to i64
  %638 = getelementptr inbounds i8, ptr %634, i64 2
  %639 = load i8, ptr %635, align 1, !tbaa !26
  %640 = zext i8 %639 to i64
  %641 = load ptr, ptr %280, align 8, !tbaa !34
  %642 = getelementptr inbounds ptr, ptr %641, i64 %600
  %643 = load ptr, ptr %642, align 8, !tbaa !35
  %644 = getelementptr ptr, ptr %643, i64 %616
  %645 = getelementptr ptr, ptr %644, i64 %640
  %646 = load ptr, ptr %645, align 8, !tbaa !35
  %647 = getelementptr i32, ptr %646, i64 %617
  %648 = getelementptr i32, ptr %647, i64 %637
  store i32 %623, ptr %648, align 4, !tbaa !25
  %649 = add nuw nsw i32 %619, 1
  %650 = icmp ult i32 %619, 15
  br i1 %650, label %618, label %651, !llvm.loop !167

651:                                              ; preds = %618, %625
  %652 = add nuw nsw i64 %602, 1
  %653 = icmp eq i64 %652, 4
  br i1 %653, label %654, label %601, !llvm.loop !168

654:                                              ; preds = %651
  %655 = add nuw nsw i64 %595, 1
  %656 = load i32, ptr %496, align 8, !tbaa !160
  %657 = sext i32 %656 to i64
  %658 = icmp slt i64 %655, %657
  br i1 %658, label %594, label %659, !llvm.loop !169

659:                                              ; preds = %654, %589, %499, %507, %265, %277, %475
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_400(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 1
  %13 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = freeze i32 %18
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi ptr [ @FIELD_SCAN, %1 ], [ %21, %16 ]
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %25 = load i16, ptr %24, align 8, !tbaa !65
  switch i16 %25, label %27 [
    i16 10, label %132
    i16 14, label %132
    i16 9, label %26
    i16 12, label %26
    i16 13, label %26
  ]

26:                                               ; preds = %22, %22, %22
  br label %27

27:                                               ; preds = %22, %26
  %28 = phi i32 [ 6, %26 ], [ 11, %22 ]
  store i32 %28, ptr %2, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds i8, ptr %7, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !26
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.datapartition, ptr %30, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.bit_stream, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !102
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %27
  switch i16 %25, label %43 [
    i16 9, label %41
    i16 12, label %41
    i16 13, label %41
  ]

41:                                               ; preds = %40, %40, %40
  %42 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 120
  br label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 121
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %47, ptr %48, align 8, !tbaa !104
  br label %51

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %50, align 8, !tbaa !105
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.datapartition, ptr %30, i64 %34, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !111
  %54 = call i32 %53(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %35) #18
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !112
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %56, ptr %57, align 4, !tbaa !67
  %58 = load i16, ptr %24, align 8, !tbaa !65
  %59 = add i16 %58, -1
  %60 = icmp ult i16 %59, 3
  br i1 %60, label %77, label %61

61:                                               ; preds = %51
  %62 = icmp eq i16 %58, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 33
  %65 = load i32, ptr %64, align 4, !tbaa !69
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !90
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %69, i64 0, i32 32
  %71 = load i32, ptr %70, align 4, !tbaa !121
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67, %63, %61
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %75 = load i32, ptr %74, align 8, !tbaa !120
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %51, %73
  switch i16 %58, label %78 [
    i16 13, label %102
    i16 9, label %102
  ]

78:                                               ; preds = %67, %77
  %79 = and i32 %56, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !123
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %81
  store i32 0, ptr %2, align 8, !tbaa !95
  %86 = load ptr, ptr %29, align 8, !tbaa !97
  %87 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %87, align 8, !tbaa !105
  %88 = load ptr, ptr %86, align 8, !tbaa !99
  %89 = getelementptr inbounds %struct.bit_stream, ptr %88, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !102
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %93, align 4, !tbaa !115
  %94 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef nonnull %88) #18
  br label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.datapartition, ptr %86, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !111
  %98 = call i32 %97(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %86) #18
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, ptr %55, align 4, !tbaa !112
  %101 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %100, ptr %101, align 4, !tbaa !124
  br label %104

102:                                              ; preds = %78, %77, %77, %73
  %103 = icmp eq i32 %56, 0
  br i1 %103, label %208, label %104

104:                                              ; preds = %81, %99, %102
  %105 = load i32, ptr %10, align 8, !tbaa !53
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %107) #17
  %108 = load i32, ptr %4, align 8, !tbaa !107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %208, label %110

110:                                              ; preds = %104
  %111 = load i32, ptr %10, align 8, !tbaa !53
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 75
  %115 = load i32, ptr %114, align 4, !tbaa !139
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %118, align 1, !tbaa !140
  br label %119

119:                                              ; preds = %117, %113, %110
  br i1 %12, label %120, label %127

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %122 = load i32, ptr %121, align 8, !tbaa !127
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %125, align 2, !tbaa !114
  %126 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %126, align 1, !tbaa !140
  br label %127

127:                                              ; preds = %124, %120, %119
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %128 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %129 = load i8, ptr %128, align 1, !tbaa !140
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %208, label %131

131:                                              ; preds = %127
  store i32 0, ptr %57, align 4, !tbaa !67
  br label %208

132:                                              ; preds = %22, %22
  %133 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %134 = load i32, ptr %133, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 17) #17
  %135 = load i32, ptr %4, align 8, !tbaa !107
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %139 = load i32, ptr %138, align 8, !tbaa !127
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %142, align 2, !tbaa !114
  %143 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %143, align 1, !tbaa !140
  br label %144

144:                                              ; preds = %141, %137
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %145 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %146 = load i8, ptr %145, align 1, !tbaa !140
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  store i32 0, ptr %133, align 4, !tbaa !67
  br label %208

149:                                              ; preds = %132
  %150 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %151 = load i8, ptr %150, align 1, !tbaa !140
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %208

153:                                              ; preds = %144, %149
  %154 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %155 = load ptr, ptr %154, align 8, !tbaa !97
  %156 = getelementptr inbounds i8, ptr %7, i64 7
  %157 = load i8, ptr %156, align 1, !tbaa !26
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds %struct.datapartition, ptr %155, i64 %158
  %160 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  store i32 0, ptr %160, align 8, !tbaa !141
  store i32 7, ptr %2, align 8, !tbaa !95
  %161 = load ptr, ptr %159, align 8, !tbaa !99
  %162 = getelementptr inbounds %struct.bit_stream, ptr %161, i64 0, i32 5
  %163 = load i32, ptr %162, align 8, !tbaa !102
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %166, align 8, !tbaa !104
  br label %169

167:                                              ; preds = %153
  %168 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %168, align 8, !tbaa !105
  br label %169

169:                                              ; preds = %167, %165
  %170 = getelementptr inbounds %struct.datapartition, ptr %155, i64 %158, i32 2
  %171 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %172 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %173 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 80
  br label %174

174:                                              ; preds = %169, %181
  %175 = phi ptr [ %23, %169 ], [ %190, %181 ]
  %176 = phi i32 [ 0, %169 ], [ %199, %181 ]
  %177 = load ptr, ptr %170, align 8, !tbaa !111
  %178 = call i32 %177(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %159) #18
  %179 = load i32, ptr %171, align 4, !tbaa !112
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %174
  %182 = load i32, ptr %172, align 8, !tbaa !142
  %183 = shl nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %175, i64 %184
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  %187 = load i8, ptr %185, align 1, !tbaa !26
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 2
  %190 = getelementptr inbounds i8, ptr %185, i64 2
  %191 = load i8, ptr %186, align 1, !tbaa !26
  %192 = zext i8 %191 to i64
  %193 = shl nuw nsw i64 %192, 2
  %194 = load ptr, ptr %173, align 8, !tbaa !34
  %195 = load ptr, ptr %194, align 8, !tbaa !35
  %196 = getelementptr inbounds ptr, ptr %195, i64 %193
  %197 = load ptr, ptr %196, align 8, !tbaa !35
  %198 = getelementptr inbounds i32, ptr %197, i64 %189
  store i32 %179, ptr %198, align 4, !tbaa !25
  %199 = add nuw nsw i32 %176, 1
  %200 = icmp ult i32 %176, 16
  br i1 %200, label %174, label %201, !llvm.loop !170

201:                                              ; preds = %174, %181
  %202 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %203 = load i32, ptr %202, align 4, !tbaa !31
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 46
  %207 = load i32, ptr %206, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %207) #18
  br label %208

208:                                              ; preds = %148, %149, %205, %201, %102, %127, %131, %104
  %209 = phi i32 [ %134, %149 ], [ %134, %205 ], [ %134, %201 ], [ 0, %131 ], [ %56, %127 ], [ %56, %104 ], [ 0, %102 ], [ 0, %148 ]
  %210 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %211 = load i32, ptr %210, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %211) #17
  %212 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 132
  %213 = load ptr, ptr %212, align 8, !tbaa !145
  %214 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 46
  %215 = load i32, ptr %214, align 8, !tbaa !144
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !25
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %213, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !25
  %222 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 133
  %223 = load ptr, ptr %222, align 8, !tbaa !146
  %224 = getelementptr inbounds i32, ptr %223, i64 %219
  %225 = load i32, ptr %224, align 4, !tbaa !25
  %226 = icmp eq i32 %209, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %208
  %228 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %229 = load i32, ptr %228, align 4, !tbaa !124
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #17
  br label %237

232:                                              ; preds = %227
  %233 = sext i32 %225 to i64
  %234 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 88, i64 %216, i64 %233
  %235 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 89, i64 %216, i64 %233
  %236 = select i1 %12, ptr %234, ptr %235
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %236, i32 noundef %221, i32 noundef %209) #17
  br label %237

237:                                              ; preds = %231, %232, %208
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_420(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 42
  %8 = load i32, ptr %7, align 8, !tbaa !107
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 22
  %14 = load i32, ptr %13, align 8, !tbaa !171
  switch i32 %14, label %23 [
    i32 3, label %15
    i32 4, label %19
  ]

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = icmp eq i32 %17, 0
  br label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %21 = load i16, ptr %20, align 8, !tbaa !65
  %22 = icmp eq i16 %21, 12
  br label %23

23:                                               ; preds = %15, %1, %19
  %24 = phi i1 [ %22, %19 ], [ %18, %15 ], [ false, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %26 = load i32, ptr %25, align 8, !tbaa !53
  %27 = icmp eq i32 %26, 1
  %28 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.storable_picture, ptr %29, i64 0, i32 48
  %31 = load i32, ptr %30, align 4, !tbaa !149
  %32 = add nsw i32 %31, -1
  %33 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %34 = load i32, ptr %33, align 4, !tbaa !138
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %38 = load i32, ptr %37, align 8, !tbaa !109
  %39 = freeze i32 %38
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %42

42:                                               ; preds = %36, %23
  %43 = phi i1 [ false, %23 ], [ %40, %36 ]
  %44 = phi ptr [ @FIELD_SCAN, %23 ], [ %41, %36 ]
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %46 = load i16, ptr %45, align 8, !tbaa !65
  switch i16 %46, label %48 [
    i16 10, label %153
    i16 14, label %153
    i16 9, label %47
    i16 12, label %47
    i16 13, label %47
  ]

47:                                               ; preds = %42, %42, %42
  br label %48

48:                                               ; preds = %42, %47
  %49 = phi i32 [ 6, %47 ], [ 11, %42 ]
  store i32 %49, ptr %2, align 8, !tbaa !95
  %50 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 57
  %51 = load ptr, ptr %50, align 8, !tbaa !97
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds i8, ptr %10, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !26
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds %struct.datapartition, ptr %51, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !99
  %58 = getelementptr inbounds %struct.bit_stream, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !102
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %48
  switch i16 %46, label %64 [
    i16 9, label %62
    i16 12, label %62
    i16 13, label %62
  ]

62:                                               ; preds = %61, %61, %61
  %63 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 120
  br label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 121
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %63, %62 ], [ %65, %64 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %68, ptr %69, align 8, !tbaa !104
  br label %72

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %71, align 8, !tbaa !105
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct.datapartition, ptr %51, i64 %55, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !111
  %75 = call i32 %74(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %56) #18
  %76 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !112
  %78 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %77, ptr %78, align 4, !tbaa !67
  %79 = load i16, ptr %45, align 8, !tbaa !65
  %80 = add i16 %79, -1
  %81 = icmp ult i16 %80, 3
  br i1 %81, label %98, label %82

82:                                               ; preds = %72
  %83 = icmp eq i16 %79, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %86 = load i32, ptr %85, align 4, !tbaa !69
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !90
  %91 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %90, i64 0, i32 32
  %92 = load i32, ptr %91, align 4, !tbaa !121
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88, %84, %82
  %95 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %96 = load i32, ptr %95, align 8, !tbaa !120
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %123, label %98

98:                                               ; preds = %72, %94
  switch i16 %79, label %99 [
    i16 13, label %123
    i16 9, label %123
  ]

99:                                               ; preds = %88, %98
  %100 = and i32 %77, 15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 9
  %104 = load i32, ptr %103, align 4, !tbaa !123
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %102
  store i32 0, ptr %2, align 8, !tbaa !95
  %107 = load ptr, ptr %50, align 8, !tbaa !97
  %108 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %108, align 8, !tbaa !105
  %109 = load ptr, ptr %107, align 8, !tbaa !99
  %110 = getelementptr inbounds %struct.bit_stream, ptr %109, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !102
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %114, align 4, !tbaa !115
  %115 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef nonnull %109) #18
  br label %120

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.datapartition, ptr %107, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !111
  %119 = call i32 %118(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %107) #18
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, ptr %76, align 4, !tbaa !112
  %122 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %121, ptr %122, align 4, !tbaa !124
  br label %125

123:                                              ; preds = %99, %98, %98, %94
  %124 = icmp eq i32 %77, 0
  br i1 %124, label %229, label %125

125:                                              ; preds = %102, %120, %123
  %126 = load i32, ptr %25, align 8, !tbaa !53
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %128) #17
  %129 = load i32, ptr %7, align 8, !tbaa !107
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %229, label %131

131:                                              ; preds = %125
  %132 = load i32, ptr %25, align 8, !tbaa !53
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 75
  %136 = load i32, ptr %135, align 4, !tbaa !139
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %139, align 1, !tbaa !140
  br label %140

140:                                              ; preds = %138, %134, %131
  br i1 %27, label %141, label %148

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 74
  %143 = load i32, ptr %142, align 8, !tbaa !127
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %146, align 2, !tbaa !114
  %147 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %147, align 1, !tbaa !140
  br label %148

148:                                              ; preds = %145, %141, %140
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %149 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %150 = load i8, ptr %149, align 1, !tbaa !140
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %229, label %152

152:                                              ; preds = %148
  store i32 0, ptr %78, align 4, !tbaa !67
  br label %229

153:                                              ; preds = %42, %42
  %154 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %155 = load i32, ptr %154, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef 17) #17
  %156 = load i32, ptr %7, align 8, !tbaa !107
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 74
  %160 = load i32, ptr %159, align 8, !tbaa !127
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %163, align 2, !tbaa !114
  %164 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %164, align 1, !tbaa !140
  br label %165

165:                                              ; preds = %162, %158
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %166 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %167 = load i8, ptr %166, align 1, !tbaa !140
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  store i32 0, ptr %154, align 4, !tbaa !67
  br label %229

170:                                              ; preds = %153
  %171 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %172 = load i8, ptr %171, align 1, !tbaa !140
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %229

174:                                              ; preds = %165, %170
  %175 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 57
  %176 = load ptr, ptr %175, align 8, !tbaa !97
  %177 = getelementptr inbounds i8, ptr %10, i64 7
  %178 = load i8, ptr %177, align 1, !tbaa !26
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds %struct.datapartition, ptr %176, i64 %179
  %181 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  store i32 0, ptr %181, align 8, !tbaa !141
  store i32 7, ptr %2, align 8, !tbaa !95
  %182 = load ptr, ptr %180, align 8, !tbaa !99
  %183 = getelementptr inbounds %struct.bit_stream, ptr %182, i64 0, i32 5
  %184 = load i32, ptr %183, align 8, !tbaa !102
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %174
  %187 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %187, align 8, !tbaa !104
  br label %190

188:                                              ; preds = %174
  %189 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %189, align 8, !tbaa !105
  br label %190

190:                                              ; preds = %188, %186
  %191 = getelementptr inbounds %struct.datapartition, ptr %176, i64 %179, i32 2
  %192 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %193 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %194 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 80
  br label %195

195:                                              ; preds = %190, %202
  %196 = phi i32 [ 0, %190 ], [ %220, %202 ]
  %197 = phi ptr [ %44, %190 ], [ %211, %202 ]
  %198 = load ptr, ptr %191, align 8, !tbaa !111
  %199 = call i32 %198(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %180) #18
  %200 = load i32, ptr %192, align 4, !tbaa !112
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %222, label %202

202:                                              ; preds = %195
  %203 = load i32, ptr %193, align 8, !tbaa !142
  %204 = shl nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %197, i64 %205
  %207 = getelementptr inbounds i8, ptr %206, i64 1
  %208 = load i8, ptr %206, align 1, !tbaa !26
  %209 = zext i8 %208 to i64
  %210 = shl nuw nsw i64 %209, 2
  %211 = getelementptr inbounds i8, ptr %206, i64 2
  %212 = load i8, ptr %207, align 1, !tbaa !26
  %213 = zext i8 %212 to i64
  %214 = shl nuw nsw i64 %213, 2
  %215 = load ptr, ptr %194, align 8, !tbaa !34
  %216 = load ptr, ptr %215, align 8, !tbaa !35
  %217 = getelementptr inbounds ptr, ptr %216, i64 %214
  %218 = load ptr, ptr %217, align 8, !tbaa !35
  %219 = getelementptr inbounds i32, ptr %218, i64 %210
  store i32 %200, ptr %219, align 4, !tbaa !25
  %220 = add nuw nsw i32 %196, 1
  %221 = icmp ult i32 %196, 16
  br i1 %221, label %195, label %222, !llvm.loop !172

222:                                              ; preds = %195, %202
  %223 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %224 = load i32, ptr %223, align 4, !tbaa !31
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 46
  %228 = load i32, ptr %227, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %228) #18
  br label %229

229:                                              ; preds = %169, %222, %226, %123, %148, %152, %125, %170
  %230 = phi i32 [ %155, %170 ], [ 0, %152 ], [ %77, %148 ], [ %77, %125 ], [ 0, %123 ], [ %155, %226 ], [ %155, %222 ], [ 0, %169 ]
  %231 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 29
  %232 = load i32, ptr %231, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %232) #17
  %233 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 132
  %234 = load ptr, ptr %233, align 8, !tbaa !145
  %235 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 46
  %236 = load i32, ptr %235, align 8, !tbaa !144
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !25
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %234, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !25
  %243 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 133
  %244 = load ptr, ptr %243, align 8, !tbaa !146
  %245 = getelementptr inbounds i32, ptr %244, i64 %240
  %246 = load i32, ptr %245, align 4, !tbaa !25
  %247 = icmp eq i32 %230, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %229
  %249 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %250 = load i32, ptr %249, align 4, !tbaa !124
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #17
  br label %258

253:                                              ; preds = %248
  %254 = sext i32 %246 to i64
  %255 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 88, i64 %237, i64 %254
  %256 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 89, i64 %237, i64 %254
  %257 = select i1 %27, ptr %255, ptr %256
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %257, i32 noundef %242, i32 noundef %230) #17
  br label %258

258:                                              ; preds = %252, %253, %229
  %259 = load ptr, ptr %233, align 8, !tbaa !145
  %260 = load ptr, ptr %243, align 8, !tbaa !146
  br label %261

261:                                              ; preds = %258, %261
  %262 = phi i1 [ true, %258 ], [ false, %261 ]
  %263 = phi i64 [ 0, %258 ], [ 1, %261 ]
  %264 = add nuw nsw i64 %263, 1
  %265 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !25
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, ptr %259, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !25
  %270 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %263
  store i32 %269, ptr %270, align 4, !tbaa !25
  %271 = getelementptr inbounds i32, ptr %260, i64 %267
  %272 = load i32, ptr %271, align 4, !tbaa !25
  %273 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %263
  store i32 %272, ptr %273, align 4, !tbaa !25
  br i1 %262, label %261, label %274, !llvm.loop !173

274:                                              ; preds = %261
  %275 = icmp sgt i32 %230, 15
  br i1 %275, label %276, label %579

276:                                              ; preds = %274
  %277 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 82
  %278 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %279 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  %280 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 57
  %281 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 76
  %282 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  %283 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  %284 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %285 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %286 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %287 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %288 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 80
  %289 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %290 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %291 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %292 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 82, i64 1
  %293 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 82, i64 2
  %294 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 82, i64 3
  %295 = select i1 %27, i32 8, i32 13
  %296 = zext nneg i32 %295 to i64
  %297 = getelementptr inbounds i8, ptr %10, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !26
  %299 = zext i8 %298 to i64
  br label %300

300:                                              ; preds = %276, %394
  %301 = phi i1 [ true, %276 ], [ false, %394 ]
  %302 = phi i64 [ 0, %276 ], [ 2, %394 ]
  %303 = lshr exact i64 %302, 1
  %304 = add nuw nsw i64 %303, 1
  %305 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %303
  %306 = load i32, ptr %305, align 4, !tbaa !25
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 88, i64 %304, i64 %307
  %309 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 89, i64 %304, i64 %307
  %310 = select i1 %27, ptr %308, ptr %309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %277, i8 0, i64 16, i1 false)
  %311 = trunc i64 %302 to i32
  store i32 %311, ptr %278, align 4, !tbaa !153
  store i32 6, ptr %279, align 8, !tbaa !141
  store i32 %295, ptr %2, align 8, !tbaa !95
  %312 = load ptr, ptr %280, align 8, !tbaa !97
  %313 = getelementptr inbounds %struct.datapartition, ptr %312, i64 %299
  %314 = load ptr, ptr %313, align 8, !tbaa !99
  %315 = getelementptr inbounds %struct.bit_stream, ptr %314, i64 0, i32 5
  %316 = load i32, ptr %315, align 8, !tbaa !102
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %300
  store ptr @linfo_levrun_c2x2, ptr %282, align 8, !tbaa !104
  br label %320

319:                                              ; preds = %300
  store ptr @readRunLevel_CABAC, ptr %283, align 8, !tbaa !105
  br label %320

320:                                              ; preds = %319, %318
  %321 = load i32, ptr %281, align 8, !tbaa !174
  %322 = icmp sgt i32 %321, -1
  br i1 %322, label %323, label %347

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.datapartition, ptr %312, i64 %299, i32 2
  %325 = trunc i64 %302 to i32
  %326 = shl nuw nsw i32 %325, 1
  %327 = shl nuw nsw i32 983040, %326
  %328 = zext nneg i32 %327 to i64
  br label %329

329:                                              ; preds = %323, %336
  %330 = phi i32 [ -1, %323 ], [ %341, %336 ]
  %331 = phi i32 [ 0, %323 ], [ %344, %336 ]
  %332 = load ptr, ptr %324, align 8, !tbaa !111
  %333 = call i32 %332(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %313) #18
  %334 = load i32, ptr %284, align 4, !tbaa !112
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %347, label %336

336:                                              ; preds = %329
  %337 = load i64, ptr %285, align 8, !tbaa !32
  %338 = or i64 %337, %328
  store i64 %338, ptr %285, align 8, !tbaa !32
  %339 = load i32, ptr %286, align 8, !tbaa !142
  %340 = add i32 %330, 1
  %341 = add i32 %340, %339
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 82, i64 %342
  store i32 %334, ptr %343, align 4, !tbaa !25
  %344 = add nuw nsw i32 %331, 1
  %345 = load i32, ptr %281, align 8, !tbaa !174
  %346 = icmp slt i32 %331, %345
  br i1 %346, label %329, label %347, !llvm.loop !175

347:                                              ; preds = %329, %336, %320
  br i1 %24, label %351, label %348

348:                                              ; preds = %347
  %349 = load i32, ptr %287, align 4, !tbaa !31
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %365

351:                                              ; preds = %348, %347
  %352 = load i32, ptr %277, align 8, !tbaa !25
  %353 = load ptr, ptr %288, align 8, !tbaa !34
  %354 = getelementptr ptr, ptr %353, i64 %303
  %355 = getelementptr ptr, ptr %354, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !35
  %357 = load ptr, ptr %356, align 8, !tbaa !35
  store i32 %352, ptr %357, align 4, !tbaa !25
  %358 = load i32, ptr %292, align 4, !tbaa !25
  %359 = getelementptr inbounds i32, ptr %357, i64 4
  store i32 %358, ptr %359, align 4, !tbaa !25
  %360 = load i32, ptr %293, align 8, !tbaa !25
  %361 = getelementptr inbounds ptr, ptr %356, i64 4
  %362 = load ptr, ptr %361, align 8, !tbaa !35
  store i32 %360, ptr %362, align 4, !tbaa !25
  %363 = load i32, ptr %294, align 4, !tbaa !25
  %364 = getelementptr inbounds i32, ptr %362, i64 4
  store i32 %363, ptr %364, align 4, !tbaa !25
  br label %394

365:                                              ; preds = %348
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %366 = load i32, ptr %310, align 4, !tbaa !25
  call void @ihadamard2x2(ptr noundef nonnull %277, ptr noundef nonnull %5) #18
  %367 = load i32, ptr %5, align 16, !tbaa !25
  %368 = mul nsw i32 %367, %366
  %369 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %303
  %370 = load i32, ptr %369, align 4, !tbaa !25
  %371 = shl i32 %368, %370
  %372 = ashr i32 %371, 5
  %373 = load ptr, ptr %288, align 8, !tbaa !34
  %374 = getelementptr ptr, ptr %373, i64 %303
  %375 = getelementptr ptr, ptr %374, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !35
  %377 = load ptr, ptr %376, align 8, !tbaa !35
  store i32 %372, ptr %377, align 4, !tbaa !25
  %378 = load i32, ptr %289, align 4, !tbaa !25
  %379 = mul nsw i32 %378, %366
  %380 = shl i32 %379, %370
  %381 = ashr i32 %380, 5
  %382 = getelementptr inbounds i32, ptr %377, i64 4
  store i32 %381, ptr %382, align 4, !tbaa !25
  %383 = load i32, ptr %290, align 8, !tbaa !25
  %384 = mul nsw i32 %383, %366
  %385 = shl i32 %384, %370
  %386 = ashr i32 %385, 5
  %387 = getelementptr inbounds ptr, ptr %376, i64 4
  %388 = load ptr, ptr %387, align 8, !tbaa !35
  store i32 %386, ptr %388, align 4, !tbaa !25
  %389 = load i32, ptr %291, align 4, !tbaa !25
  %390 = mul nsw i32 %389, %366
  %391 = shl i32 %390, %370
  %392 = ashr i32 %391, 5
  %393 = getelementptr inbounds i32, ptr %388, i64 4
  store i32 %392, ptr %393, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %394

394:                                              ; preds = %351, %365
  br i1 %301, label %300, label %395, !llvm.loop !176

395:                                              ; preds = %394
  %396 = icmp sgt i32 %230, 31
  br i1 %396, label %397, label %579

397:                                              ; preds = %395
  store i32 7, ptr %279, align 8, !tbaa !141
  %398 = load i32, ptr %25, align 8, !tbaa !53
  %399 = icmp eq i32 %398, 0
  %400 = select i1 %399, i32 15, i32 10
  store i32 %400, ptr %2, align 8, !tbaa !95
  %401 = load ptr, ptr %280, align 8, !tbaa !97
  %402 = zext nneg i32 %400 to i64
  %403 = getelementptr inbounds i8, ptr %10, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !26
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds %struct.datapartition, ptr %401, i64 %405
  %407 = load ptr, ptr %406, align 8, !tbaa !99
  %408 = getelementptr inbounds %struct.bit_stream, ptr %407, i64 0, i32 5
  %409 = load i32, ptr %408, align 8, !tbaa !102
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %397
  store ptr @linfo_levrun_inter, ptr %282, align 8, !tbaa !104
  br label %413

412:                                              ; preds = %397
  store ptr @readRunLevel_CABAC, ptr %283, align 8, !tbaa !105
  br label %413

413:                                              ; preds = %412, %411
  %414 = load i32, ptr %287, align 4, !tbaa !31
  %415 = icmp eq i32 %414, 0
  %416 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 74
  %417 = load i32, ptr %416, align 8, !tbaa !160
  %418 = icmp sgt i32 %417, 0
  br i1 %415, label %427, label %419

419:                                              ; preds = %413
  br i1 %418, label %420, label %579

420:                                              ; preds = %419
  %421 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 75
  %422 = sext i32 %32 to i64
  %423 = select i1 %43, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %424 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %425 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %426 = getelementptr inbounds %struct.datapartition, ptr %401, i64 %405, i32 2
  br label %514

427:                                              ; preds = %413
  br i1 %418, label %428, label %579

428:                                              ; preds = %427
  %429 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 75
  %430 = sext i32 %32 to i64
  %431 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %432 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %433 = select i1 %43, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %434 = getelementptr inbounds %struct.datapartition, ptr %401, i64 %405, i32 2
  br label %435

435:                                              ; preds = %428, %509
  %436 = phi i64 [ 0, %428 ], [ %510, %509 ]
  %437 = load i32, ptr %429, align 4, !tbaa !161
  %438 = sext i32 %437 to i64
  %439 = icmp sge i64 %436, %438
  %440 = zext i1 %439 to i32
  store i32 %440, ptr %278, align 4, !tbaa !153
  %441 = select i1 %439, i64 2, i64 1
  %442 = zext i1 %439 to i64
  %443 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !25
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 89, i64 %441, i64 %445
  %447 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 88, i64 %441, i64 %445
  %448 = select i1 %27, ptr %447, ptr %446
  %449 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %442
  br label %450

450:                                              ; preds = %435, %506
  %451 = phi i64 [ 0, %435 ], [ %507, %506 ]
  %452 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %430, i64 %436, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !26
  %454 = zext i8 %453 to i64
  %455 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %430, i64 %436, i64 %451
  %456 = load i8, ptr %455, align 1, !tbaa !26
  %457 = zext i8 %456 to i64
  %458 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %430, i64 %436, i64 %451
  %459 = load i8, ptr %458, align 1, !tbaa !26
  %460 = zext i8 %459 to i32
  store i32 %460, ptr %431, align 8, !tbaa !162
  %461 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %430, i64 %436, i64 %451
  %462 = load i8, ptr %461, align 1, !tbaa !26
  %463 = zext i8 %462 to i32
  store i32 %463, ptr %432, align 4, !tbaa !163
  %464 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %436, i64 %451
  %465 = shl nuw nsw i64 %457, 2
  %466 = shl nuw nsw i64 %454, 2
  br label %467

467:                                              ; preds = %450, %474
  %468 = phi i32 [ 0, %450 ], [ %504, %474 ]
  %469 = phi ptr [ %433, %450 ], [ %487, %474 ]
  %470 = load ptr, ptr %434, align 8, !tbaa !111
  %471 = call i32 %470(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %406) #18
  %472 = load i32, ptr %284, align 4, !tbaa !112
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %506, label %474

474:                                              ; preds = %467
  %475 = load i8, ptr %464, align 1, !tbaa !26
  %476 = zext i8 %475 to i32
  %477 = call fastcc i64 @i64_power2(i32 noundef %476) #17
  %478 = load i64, ptr %285, align 8, !tbaa !32
  %479 = or i64 %478, %477
  store i64 %479, ptr %285, align 8, !tbaa !32
  %480 = load i32, ptr %286, align 8, !tbaa !142
  %481 = shl i32 %480, 1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, ptr %469, i64 %482
  %484 = getelementptr inbounds i8, ptr %483, i64 1
  %485 = load i8, ptr %483, align 1, !tbaa !26
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds i8, ptr %483, i64 2
  %488 = load i8, ptr %484, align 1, !tbaa !26
  %489 = zext i8 %488 to i64
  %490 = getelementptr inbounds [4 x i32], ptr %448, i64 %489, i64 %486
  %491 = load i32, ptr %490, align 4, !tbaa !25
  %492 = mul nsw i32 %491, %472
  %493 = load i32, ptr %449, align 4, !tbaa !25
  %494 = shl i32 %492, %493
  %495 = call fastcc i32 @rshift_rnd_sf(i32 noundef %494, i32 noundef 4) #17, !range !33
  %496 = load ptr, ptr %288, align 8, !tbaa !34
  %497 = getelementptr inbounds ptr, ptr %496, i64 %441
  %498 = load ptr, ptr %497, align 8, !tbaa !35
  %499 = getelementptr ptr, ptr %498, i64 %465
  %500 = getelementptr ptr, ptr %499, i64 %489
  %501 = load ptr, ptr %500, align 8, !tbaa !35
  %502 = getelementptr i32, ptr %501, i64 %466
  %503 = getelementptr i32, ptr %502, i64 %486
  store i32 %495, ptr %503, align 4, !tbaa !25
  %504 = add nuw nsw i32 %468, 1
  %505 = icmp ult i32 %468, 15
  br i1 %505, label %467, label %506, !llvm.loop !177

506:                                              ; preds = %467, %474
  %507 = add nuw nsw i64 %451, 1
  %508 = icmp eq i64 %507, 4
  br i1 %508, label %509, label %450, !llvm.loop !178

509:                                              ; preds = %506
  %510 = add nuw nsw i64 %436, 1
  %511 = load i32, ptr %416, align 8, !tbaa !160
  %512 = sext i32 %511 to i64
  %513 = icmp slt i64 %510, %512
  br i1 %513, label %435, label %579, !llvm.loop !179

514:                                              ; preds = %420, %574
  %515 = phi i64 [ 0, %420 ], [ %575, %574 ]
  %516 = load i32, ptr %421, align 4, !tbaa !161
  %517 = sext i32 %516 to i64
  %518 = icmp sge i64 %515, %517
  %519 = zext i1 %518 to i32
  store i32 %519, ptr %278, align 4, !tbaa !153
  %520 = select i1 %518, i64 2, i64 1
  br label %521

521:                                              ; preds = %514, %571
  %522 = phi i64 [ 0, %514 ], [ %572, %571 ]
  %523 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %422, i64 %515, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !26
  %525 = zext i8 %524 to i64
  %526 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %422, i64 %515, i64 %522
  %527 = load i8, ptr %526, align 1, !tbaa !26
  %528 = zext i8 %527 to i64
  %529 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %422, i64 %515, i64 %522
  %530 = load i8, ptr %529, align 1, !tbaa !26
  %531 = zext i8 %530 to i32
  store i32 %531, ptr %424, align 8, !tbaa !162
  %532 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %422, i64 %515, i64 %522
  %533 = load i8, ptr %532, align 1, !tbaa !26
  %534 = zext i8 %533 to i32
  store i32 %534, ptr %425, align 4, !tbaa !163
  %535 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %515, i64 %522
  %536 = shl nuw nsw i64 %528, 2
  %537 = shl nuw nsw i64 %525, 2
  br label %538

538:                                              ; preds = %521, %545
  %539 = phi i32 [ 0, %521 ], [ %569, %545 ]
  %540 = phi ptr [ %423, %521 ], [ %558, %545 ]
  %541 = load ptr, ptr %426, align 8, !tbaa !111
  %542 = call i32 %541(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %406) #18
  %543 = load i32, ptr %284, align 4, !tbaa !112
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %571, label %545

545:                                              ; preds = %538
  %546 = load i8, ptr %535, align 1, !tbaa !26
  %547 = zext i8 %546 to i32
  %548 = call fastcc i64 @i64_power2(i32 noundef %547) #17
  %549 = load i64, ptr %285, align 8, !tbaa !32
  %550 = or i64 %549, %548
  store i64 %550, ptr %285, align 8, !tbaa !32
  %551 = load i32, ptr %286, align 8, !tbaa !142
  %552 = shl i32 %551, 1
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, ptr %540, i64 %553
  %555 = getelementptr inbounds i8, ptr %554, i64 1
  %556 = load i8, ptr %554, align 1, !tbaa !26
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds i8, ptr %554, i64 2
  %559 = load i8, ptr %555, align 1, !tbaa !26
  %560 = zext i8 %559 to i64
  %561 = load ptr, ptr %288, align 8, !tbaa !34
  %562 = getelementptr inbounds ptr, ptr %561, i64 %520
  %563 = load ptr, ptr %562, align 8, !tbaa !35
  %564 = getelementptr ptr, ptr %563, i64 %536
  %565 = getelementptr ptr, ptr %564, i64 %560
  %566 = load ptr, ptr %565, align 8, !tbaa !35
  %567 = getelementptr i32, ptr %566, i64 %537
  %568 = getelementptr i32, ptr %567, i64 %557
  store i32 %543, ptr %568, align 4, !tbaa !25
  %569 = add nuw nsw i32 %539, 1
  %570 = icmp ult i32 %539, 15
  br i1 %570, label %538, label %571, !llvm.loop !180

571:                                              ; preds = %538, %545
  %572 = add nuw nsw i64 %522, 1
  %573 = icmp eq i64 %572, 4
  br i1 %573, label %574, label %521, !llvm.loop !181

574:                                              ; preds = %571
  %575 = add nuw nsw i64 %515, 1
  %576 = load i32, ptr %416, align 8, !tbaa !160
  %577 = sext i32 %576 to i64
  %578 = icmp slt i64 %575, %577
  br i1 %578, label %514, label %579, !llvm.loop !182

579:                                              ; preds = %574, %509, %419, %427, %274, %395
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_444(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 42
  %10 = load i32, ptr %9, align 8, !tbaa !107
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 33
  %19 = load i32, ptr %18, align 4, !tbaa !138
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %23 = load i32, ptr %22, align 8, !tbaa !109
  %24 = freeze i32 %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi ptr [ @FIELD_SCAN, %1 ], [ %26, %21 ]
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %30 = load i16, ptr %29, align 8, !tbaa !65
  switch i16 %30, label %32 [
    i16 10, label %120
    i16 14, label %120
    i16 9, label %31
    i16 12, label %31
    i16 13, label %31
  ]

31:                                               ; preds = %27, %27, %27
  br label %32

32:                                               ; preds = %27, %31
  %33 = phi i32 [ 6, %31 ], [ 11, %27 ]
  store i32 %33, ptr %2, align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 57
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds i8, ptr %12, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !26
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds %struct.datapartition, ptr %35, i64 %39
  switch i16 %30, label %43 [
    i16 9, label %41
    i16 12, label %41
    i16 13, label %41
  ]

41:                                               ; preds = %32, %32, %32
  %42 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 120
  br label %45

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 121
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %47, ptr %48, align 8, !tbaa !104
  %49 = getelementptr inbounds %struct.datapartition, ptr %35, i64 %39, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = call i32 %50(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %40) #18
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !112
  %54 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %53, ptr %54, align 4, !tbaa !67
  %55 = load i16, ptr %29, align 8, !tbaa !65
  %56 = add i16 %55, -1
  %57 = icmp ult i16 %56, 3
  br i1 %57, label %74, label %58

58:                                               ; preds = %45
  %59 = icmp eq i16 %55, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 33
  %62 = load i32, ptr %61, align 4, !tbaa !69
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  %67 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %66, i64 0, i32 32
  %68 = load i32, ptr %67, align 4, !tbaa !121
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %60, %58
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %72 = load i32, ptr %71, align 8, !tbaa !120
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %45, %70
  switch i16 %55, label %75 [
    i16 13, label %90
    i16 9, label %90
  ]

75:                                               ; preds = %64, %74
  %76 = and i32 %53, 15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 9
  %80 = load i32, ptr %79, align 4, !tbaa !123
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  store i32 0, ptr %2, align 8, !tbaa !95
  %83 = load ptr, ptr %34, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %84, align 8, !tbaa !105
  %85 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %85, align 4, !tbaa !115
  %86 = load ptr, ptr %83, align 8, !tbaa !99
  %87 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %86) #18
  %88 = load i32, ptr %52, align 4, !tbaa !112
  %89 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %88, ptr %89, align 4, !tbaa !124
  br label %92

90:                                               ; preds = %75, %74, %74, %70
  %91 = icmp eq i32 %53, 0
  br i1 %91, label %183, label %92

92:                                               ; preds = %78, %82, %90
  %93 = load i32, ptr %15, align 8, !tbaa !53
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef %95) #17
  %96 = load i32, ptr %9, align 8, !tbaa !107
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %183, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %15, align 8, !tbaa !53
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 75
  %103 = load i32, ptr %102, align 4, !tbaa !139
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %106, align 1, !tbaa !140
  br label %107

107:                                              ; preds = %105, %101, %98
  br i1 %17, label %108, label %115

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 74
  %110 = load i32, ptr %109, align 8, !tbaa !127
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %113, align 2, !tbaa !114
  %114 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %114, align 1, !tbaa !140
  br label %115

115:                                              ; preds = %112, %108, %107
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %116 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %117 = load i8, ptr %116, align 1, !tbaa !140
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %183, label %119

119:                                              ; preds = %115
  store i32 0, ptr %54, align 4, !tbaa !67
  br label %183

120:                                              ; preds = %27, %27
  %121 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %122 = load i32, ptr %121, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef 17) #17
  %123 = load i32, ptr %9, align 8, !tbaa !107
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 74
  %127 = load i32, ptr %126, align 8, !tbaa !127
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %130, align 2, !tbaa !114
  %131 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %131, align 1, !tbaa !140
  br label %132

132:                                              ; preds = %129, %125
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %133 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %134 = load i8, ptr %133, align 1, !tbaa !140
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  store i32 0, ptr %121, align 4, !tbaa !67
  br label %183

137:                                              ; preds = %120
  %138 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %139 = load i8, ptr %138, align 1, !tbaa !140
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %132, %137
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %142 = load i32, ptr %5, align 4, !tbaa !25
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 80
  %146 = zext nneg i32 %142 to i64
  br label %147

147:                                              ; preds = %144, %172
  %148 = phi i64 [ 0, %144 ], [ %174, %172 ]
  %149 = phi ptr [ %28, %144 ], [ %173, %172 ]
  %150 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %148
  %151 = load i32, ptr %150, align 4, !tbaa !25
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %172, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %148
  %155 = load i32, ptr %154, align 4, !tbaa !25
  %156 = shl nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %149, i64 %157
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  %160 = load i8, ptr %158, align 1, !tbaa !26
  %161 = zext i8 %160 to i64
  %162 = shl nuw nsw i64 %161, 2
  %163 = getelementptr inbounds i8, ptr %158, i64 2
  %164 = load i8, ptr %159, align 1, !tbaa !26
  %165 = zext i8 %164 to i64
  %166 = shl nuw nsw i64 %165, 2
  %167 = load ptr, ptr %145, align 8, !tbaa !34
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = getelementptr inbounds ptr, ptr %168, i64 %166
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = getelementptr inbounds i32, ptr %170, i64 %162
  store i32 %151, ptr %171, align 4, !tbaa !25
  br label %172

172:                                              ; preds = %147, %153
  %173 = phi ptr [ %163, %153 ], [ %149, %147 ]
  %174 = add nuw nsw i64 %148, 1
  %175 = icmp eq i64 %174, %146
  br i1 %175, label %176, label %147, !llvm.loop !183

176:                                              ; preds = %172, %141
  %177 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %178 = load i32, ptr %177, align 4, !tbaa !31
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 46
  %182 = load i32, ptr %181, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %182) #18
  br label %183

183:                                              ; preds = %136, %137, %180, %176, %90, %115, %119, %92
  %184 = phi i32 [ %122, %137 ], [ %122, %180 ], [ %122, %176 ], [ 0, %119 ], [ %53, %115 ], [ %53, %92 ], [ 0, %90 ], [ 0, %136 ]
  %185 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 29
  %186 = load i32, ptr %185, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %186) #17
  %187 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 132
  %188 = load ptr, ptr %187, align 8, !tbaa !145
  %189 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 46
  %190 = load i32, ptr %189, align 8, !tbaa !144
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !25
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %188, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !25
  %197 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 133
  %198 = load ptr, ptr %197, align 8, !tbaa !146
  %199 = getelementptr inbounds i32, ptr %198, i64 %194
  %200 = load i32, ptr %199, align 4, !tbaa !25
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 88, i64 %191, i64 %201
  %203 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 90, i64 %191, i64 %201
  %204 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 89, i64 %191, i64 %201
  %205 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 91, i64 %191, i64 %201
  %206 = select i1 %17, ptr %202, ptr %204
  %207 = select i1 %17, ptr %203, ptr %205
  %208 = icmp eq i32 %184, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %183
  %210 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %211 = load i32, ptr %210, align 4, !tbaa !124
  %212 = icmp eq i32 %211, 0
  %213 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 29
  %214 = load ptr, ptr %213, align 8, !tbaa !184
  %215 = sext i32 %7 to i64
  %216 = getelementptr inbounds ptr, ptr %214, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !35
  %218 = load ptr, ptr %217, align 8, !tbaa !35
  br i1 %212, label %219, label %220

219:                                              ; preds = %209
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %206, i32 noundef %196, i32 noundef %184, ptr noundef %218) #17
  br label %229

220:                                              ; preds = %209
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %207, i32 noundef %196, i32 noundef %184, ptr noundef %218) #17
  br label %229

221:                                              ; preds = %183
  %222 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 29
  %223 = load ptr, ptr %222, align 8, !tbaa !184
  %224 = sext i32 %7 to i64
  %225 = getelementptr inbounds ptr, ptr %223, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !35
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  %228 = load ptr, ptr %227, align 8, !tbaa !35
  call fastcc void @fast_memset(ptr noundef %228, i32 noundef 16) #17
  br label %229

229:                                              ; preds = %219, %220, %221
  %230 = phi i64 [ %215, %219 ], [ %215, %220 ], [ %224, %221 ]
  %231 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 80
  %232 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %233 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 68
  %234 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %235 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 29
  br label %236

236:                                              ; preds = %229, %314
  %237 = phi i32 [ 4, %229 ], [ 9, %314 ]
  %238 = phi i1 [ true, %229 ], [ false, %314 ]
  %239 = phi i64 [ 0, %229 ], [ 1, %314 ]
  %240 = load i16, ptr %29, align 8, !tbaa !65
  switch i16 %240, label %283 [
    i16 10, label %241
    i16 14, label %241
  ]

241:                                              ; preds = %236, %236
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %237, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %242 = load i32, ptr %5, align 4, !tbaa !25
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %277

244:                                              ; preds = %241
  %245 = zext nneg i32 %242 to i64
  br label %246

246:                                              ; preds = %244, %273
  %247 = phi i64 [ 0, %244 ], [ %275, %273 ]
  %248 = phi i32 [ -1, %244 ], [ %274, %273 ]
  %249 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %247
  %250 = load i32, ptr %249, align 4, !tbaa !25
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %273, label %252

252:                                              ; preds = %246
  %253 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %247
  %254 = load i32, ptr %253, align 4, !tbaa !25
  %255 = add i32 %248, 1
  %256 = add i32 %255, %254
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [2 x i8], ptr %28, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !26
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds [2 x i8], ptr %28, i64 %257, i64 1
  %262 = load i8, ptr %261, align 1, !tbaa !26
  %263 = zext i8 %262 to i64
  %264 = load ptr, ptr %231, align 8, !tbaa !34
  %265 = getelementptr ptr, ptr %264, i64 %239
  %266 = getelementptr ptr, ptr %265, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !35
  %268 = shl nuw nsw i64 %263, 2
  %269 = getelementptr inbounds ptr, ptr %267, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = shl nuw nsw i64 %260, 2
  %272 = getelementptr inbounds i32, ptr %270, i64 %271
  store i32 %250, ptr %272, align 4, !tbaa !25
  br label %273

273:                                              ; preds = %246, %252
  %274 = phi i32 [ %256, %252 ], [ %248, %246 ]
  %275 = add nuw nsw i64 %247, 1
  %276 = icmp eq i64 %275, %245
  br i1 %276, label %277, label %246, !llvm.loop !185

277:                                              ; preds = %273, %241
  %278 = load i32, ptr %232, align 4, !tbaa !31
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = trunc i64 %239 to i32
  %282 = add nuw nsw i32 %281, 1
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %282) #18
  br label %283

283:                                              ; preds = %236, %277, %280
  %284 = load i32, ptr %185, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %284) #17
  %285 = load ptr, ptr %187, align 8, !tbaa !145
  %286 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %239
  %287 = load i32, ptr %286, align 4, !tbaa !25
  %288 = load i32, ptr %233, align 8, !tbaa !19
  %289 = add nsw i32 %288, %287
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %285, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !25
  %293 = load ptr, ptr %197, align 8, !tbaa !146
  %294 = getelementptr inbounds i32, ptr %293, i64 %290
  %295 = load i32, ptr %294, align 4, !tbaa !25
  %296 = add nuw nsw i64 %239, 1
  %297 = sext i32 %295 to i64
  %298 = load i32, ptr %234, align 4, !tbaa !124
  %299 = icmp eq i32 %298, 0
  %300 = load ptr, ptr %235, align 8, !tbaa !184
  %301 = getelementptr inbounds ptr, ptr %300, i64 %230
  %302 = load ptr, ptr %301, align 8, !tbaa !35
  %303 = getelementptr inbounds ptr, ptr %302, i64 %296
  %304 = load ptr, ptr %303, align 8, !tbaa !35
  %305 = trunc i64 %296 to i32
  br i1 %299, label %306, label %310

306:                                              ; preds = %283
  %307 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 88, i64 %296, i64 %297
  %308 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 89, i64 %296, i64 %297
  %309 = select i1 %17, ptr %307, ptr %308
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef %305, ptr noundef nonnull %309, i32 noundef %292, i32 noundef %184, ptr noundef %304) #17
  br label %314

310:                                              ; preds = %283
  %311 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 90, i64 %296, i64 %297
  %312 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 91, i64 %296, i64 %297
  %313 = select i1 %17, ptr %311, ptr %312
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef %305, ptr noundef nonnull %313, i32 noundef %292, i32 noundef %184, ptr noundef %304) #17
  br label %314

314:                                              ; preds = %306, %310
  br i1 %238, label %236, label %315, !llvm.loop !186

315:                                              ; preds = %314
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_422(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x [4 x i32]], align 16
  %9 = alloca [2 x [4 x i32]], align 16
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 42
  %14 = load i32, ptr %13, align 8, !tbaa !107
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i32 %20, 1
  %22 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 125
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.storable_picture, ptr %23, i64 0, i32 48
  %25 = load i32, ptr %24, align 4, !tbaa !149
  %26 = add nsw i32 %25, -1
  %27 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 33
  %28 = load i32, ptr %27, align 4, !tbaa !138
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %32 = load i32, ptr %31, align 8, !tbaa !109
  %33 = freeze i32 %32
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %36

36:                                               ; preds = %30, %1
  %37 = phi ptr [ @FIELD_SCAN, %1 ], [ %35, %30 ]
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %39 = load i16, ptr %38, align 8, !tbaa !65
  switch i16 %39, label %41 [
    i16 10, label %129
    i16 14, label %129
    i16 9, label %40
    i16 12, label %40
    i16 13, label %40
  ]

40:                                               ; preds = %36, %36, %36
  br label %41

41:                                               ; preds = %36, %40
  %42 = phi i32 [ 6, %40 ], [ 11, %36 ]
  store i32 %42, ptr %2, align 8, !tbaa !95
  %43 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 57
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds i8, ptr %16, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !26
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.datapartition, ptr %44, i64 %48
  switch i16 %39, label %52 [
    i16 9, label %50
    i16 12, label %50
    i16 13, label %50
  ]

50:                                               ; preds = %41, %41, %41
  %51 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 120
  br label %54

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 121
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %56, ptr %57, align 8, !tbaa !104
  %58 = getelementptr inbounds %struct.datapartition, ptr %44, i64 %48, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !111
  %60 = call i32 %59(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %49) #18
  %61 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !112
  %63 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %62, ptr %63, align 4, !tbaa !67
  %64 = load i16, ptr %38, align 8, !tbaa !65
  %65 = add i16 %64, -1
  %66 = icmp ult i16 %65, 3
  br i1 %66, label %83, label %67

67:                                               ; preds = %54
  %68 = icmp eq i16 %64, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 33
  %71 = load i32, ptr %70, align 4, !tbaa !69
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !90
  %76 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %75, i64 0, i32 32
  %77 = load i32, ptr %76, align 4, !tbaa !121
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %69, %67
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %81 = load i32, ptr %80, align 8, !tbaa !120
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %54, %79
  switch i16 %64, label %84 [
    i16 13, label %99
    i16 9, label %99
  ]

84:                                               ; preds = %73, %83
  %85 = and i32 %62, 15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !123
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  store i32 0, ptr %2, align 8, !tbaa !95
  %92 = load ptr, ptr %43, align 8, !tbaa !97
  %93 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %93, align 8, !tbaa !105
  %94 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %94, align 4, !tbaa !115
  %95 = load ptr, ptr %92, align 8, !tbaa !99
  %96 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %95) #18
  %97 = load i32, ptr %61, align 4, !tbaa !112
  %98 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %97, ptr %98, align 4, !tbaa !124
  br label %101

99:                                               ; preds = %84, %83, %83, %79
  %100 = icmp eq i32 %62, 0
  br i1 %100, label %192, label %101

101:                                              ; preds = %87, %91, %99
  %102 = load i32, ptr %19, align 8, !tbaa !53
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef %104) #17
  %105 = load i32, ptr %13, align 8, !tbaa !107
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %192, label %107

107:                                              ; preds = %101
  %108 = load i32, ptr %19, align 8, !tbaa !53
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 75
  %112 = load i32, ptr %111, align 4, !tbaa !139
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %115, align 1, !tbaa !140
  br label %116

116:                                              ; preds = %114, %110, %107
  br i1 %21, label %117, label %124

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 74
  %119 = load i32, ptr %118, align 8, !tbaa !127
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %122, align 2, !tbaa !114
  %123 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %123, align 1, !tbaa !140
  br label %124

124:                                              ; preds = %121, %117, %116
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %125 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %126 = load i8, ptr %125, align 1, !tbaa !140
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %192, label %128

128:                                              ; preds = %124
  store i32 0, ptr %63, align 4, !tbaa !67
  br label %192

129:                                              ; preds = %36, %36
  %130 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %131 = load i32, ptr %130, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 17) #17
  %132 = load i32, ptr %13, align 8, !tbaa !107
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 74
  %136 = load i32, ptr %135, align 8, !tbaa !127
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %139, align 2, !tbaa !114
  %140 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %140, align 1, !tbaa !140
  br label %141

141:                                              ; preds = %138, %134
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %142 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %143 = load i8, ptr %142, align 1, !tbaa !140
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  store i32 0, ptr %130, align 4, !tbaa !67
  br label %192

146:                                              ; preds = %129
  %147 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %148 = load i8, ptr %147, align 1, !tbaa !140
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %192

150:                                              ; preds = %141, %146
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %151 = load i32, ptr %5, align 4, !tbaa !25
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %185

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 80
  %155 = zext nneg i32 %151 to i64
  br label %156

156:                                              ; preds = %153, %181
  %157 = phi i64 [ 0, %153 ], [ %183, %181 ]
  %158 = phi ptr [ %37, %153 ], [ %182, %181 ]
  %159 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %157
  %160 = load i32, ptr %159, align 4, !tbaa !25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %181, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %157
  %164 = load i32, ptr %163, align 4, !tbaa !25
  %165 = shl nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %158, i64 %166
  %168 = getelementptr inbounds i8, ptr %167, i64 1
  %169 = load i8, ptr %167, align 1, !tbaa !26
  %170 = zext i8 %169 to i64
  %171 = shl nuw nsw i64 %170, 2
  %172 = getelementptr inbounds i8, ptr %167, i64 2
  %173 = load i8, ptr %168, align 1, !tbaa !26
  %174 = zext i8 %173 to i64
  %175 = shl nuw nsw i64 %174, 2
  %176 = load ptr, ptr %154, align 8, !tbaa !34
  %177 = load ptr, ptr %176, align 8, !tbaa !35
  %178 = getelementptr inbounds ptr, ptr %177, i64 %175
  %179 = load ptr, ptr %178, align 8, !tbaa !35
  %180 = getelementptr inbounds i32, ptr %179, i64 %171
  store i32 %160, ptr %180, align 4, !tbaa !25
  br label %181

181:                                              ; preds = %156, %162
  %182 = phi ptr [ %172, %162 ], [ %158, %156 ]
  %183 = add nuw nsw i64 %157, 1
  %184 = icmp eq i64 %183, %155
  br i1 %184, label %185, label %156, !llvm.loop !187

185:                                              ; preds = %181, %150
  %186 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %187 = load i32, ptr %186, align 4, !tbaa !31
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 46
  %191 = load i32, ptr %190, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %191) #18
  br label %192

192:                                              ; preds = %145, %146, %189, %185, %99, %124, %128, %101
  %193 = phi i32 [ %131, %146 ], [ %131, %189 ], [ %131, %185 ], [ 0, %128 ], [ %62, %124 ], [ %62, %101 ], [ 0, %99 ], [ 0, %145 ]
  %194 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 29
  %195 = load i32, ptr %194, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %195) #17
  %196 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 132
  %197 = load ptr, ptr %196, align 8, !tbaa !145
  %198 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 46
  %199 = load i32, ptr %198, align 8, !tbaa !144
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !25
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %197, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !25
  %206 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 133
  %207 = load ptr, ptr %206, align 8, !tbaa !146
  %208 = getelementptr inbounds i32, ptr %207, i64 %203
  %209 = load i32, ptr %208, align 4, !tbaa !25
  br label %210

210:                                              ; preds = %192, %210
  %211 = phi i1 [ true, %192 ], [ false, %210 ]
  %212 = phi i64 [ 0, %192 ], [ 1, %210 ]
  %213 = add nuw nsw i64 %212, 1
  %214 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !25
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, ptr %197, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !25
  %219 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %212
  store i32 %218, ptr %219, align 4, !tbaa !25
  %220 = getelementptr inbounds i32, ptr %207, i64 %216
  %221 = load i32, ptr %220, align 4, !tbaa !25
  %222 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %212
  store i32 %221, ptr %222, align 4, !tbaa !25
  br i1 %211, label %210, label %223, !llvm.loop !188

223:                                              ; preds = %210
  %224 = sext i32 %209 to i64
  %225 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 88, i64 %200, i64 %224
  %226 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 90, i64 %200, i64 %224
  %227 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 89, i64 %200, i64 %224
  %228 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 91, i64 %200, i64 %224
  %229 = select i1 %21, ptr %225, ptr %227
  %230 = select i1 %21, ptr %226, ptr %228
  %231 = icmp eq i32 %193, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %234 = load i32, ptr %233, align 4, !tbaa !124
  %235 = icmp eq i32 %234, 0
  %236 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %237 = load ptr, ptr %236, align 8, !tbaa !184
  %238 = sext i32 %11 to i64
  %239 = getelementptr inbounds ptr, ptr %237, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !35
  %241 = load ptr, ptr %240, align 8, !tbaa !35
  br i1 %235, label %242, label %243

242:                                              ; preds = %232
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %229, i32 noundef %205, i32 noundef %193, ptr noundef %241) #17
  br label %252

243:                                              ; preds = %232
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %230, i32 noundef %205, i32 noundef %193, ptr noundef %241) #17
  br label %252

244:                                              ; preds = %223
  %245 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %246 = load ptr, ptr %245, align 8, !tbaa !184
  %247 = sext i32 %11 to i64
  %248 = getelementptr inbounds ptr, ptr %246, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !35
  %250 = load ptr, ptr %249, align 8, !tbaa !35
  %251 = load ptr, ptr %250, align 8, !tbaa !35
  call fastcc void @fast_memset(ptr noundef %251, i32 noundef 16) #17
  br label %433

252:                                              ; preds = %242, %243
  %253 = icmp sgt i32 %193, 15
  br i1 %253, label %254, label %433

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 80
  %256 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 68
  %257 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %258 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %259 = getelementptr inbounds [2 x [4 x i32]], ptr %8, i64 0, i64 1
  %260 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 1
  %261 = getelementptr inbounds [2 x [4 x i32]], ptr %8, i64 0, i64 1, i64 1
  %262 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  %263 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 2
  %264 = getelementptr inbounds [2 x [4 x i32]], ptr %8, i64 0, i64 1, i64 2
  %265 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  %266 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 3
  %267 = getelementptr inbounds [2 x [4 x i32]], ptr %8, i64 0, i64 1, i64 3
  %268 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 3
  %269 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1
  %270 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1, i64 1
  %271 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1, i64 2
  %272 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1, i64 3
  %273 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 78
  %274 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 77
  br label %275

275:                                              ; preds = %254, %430
  %276 = phi i1 [ true, %254 ], [ false, %430 ]
  %277 = phi i64 [ 0, %254 ], [ 2, %430 ]
  %278 = lshr exact i64 %277, 1
  %279 = load ptr, ptr %255, align 8, !tbaa !34
  %280 = add nuw nsw i64 %278, 1
  %281 = getelementptr inbounds ptr, ptr %279, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  %283 = load ptr, ptr %196, align 8, !tbaa !145
  %284 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %278
  %285 = load i32, ptr %284, align 4, !tbaa !25
  %286 = add nsw i32 %285, 3
  %287 = load i32, ptr %256, align 8, !tbaa !19
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, ptr %283, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !25
  %292 = load ptr, ptr %206, align 8, !tbaa !146
  %293 = getelementptr inbounds i32, ptr %292, i64 %289
  %294 = load i32, ptr %293, align 4, !tbaa !25
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 88, i64 %280, i64 %295
  %297 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 89, i64 %280, i64 %295
  %298 = select i1 %21, ptr %296, ptr %297
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %299 = load i32, ptr %5, align 4, !tbaa !25
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %330

301:                                              ; preds = %275
  %302 = shl nuw nsw i64 %277, 2
  %303 = shl nuw nsw i64 16711680, %302
  %304 = zext nneg i32 %299 to i64
  br label %305

305:                                              ; preds = %301, %326
  %306 = phi i64 [ 0, %301 ], [ %328, %326 ]
  %307 = phi i32 [ -1, %301 ], [ %327, %326 ]
  %308 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %306
  %309 = load i32, ptr %308, align 4, !tbaa !25
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %326, label %311

311:                                              ; preds = %305
  %312 = load i64, ptr %257, align 8, !tbaa !32
  %313 = or i64 %312, %303
  store i64 %313, ptr %257, align 8, !tbaa !32
  %314 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %306
  %315 = load i32, ptr %314, align 4, !tbaa !25
  %316 = add i32 %307, 1
  %317 = add i32 %316, %315
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %318
  %320 = load i8, ptr %319, align 2, !tbaa !26
  %321 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %318, i64 1
  %322 = load i8, ptr %321, align 1, !tbaa !26
  %323 = zext i8 %320 to i64
  %324 = zext i8 %322 to i64
  %325 = getelementptr inbounds [2 x [4 x i32]], ptr %8, i64 0, i64 %323, i64 %324
  store i32 %309, ptr %325, align 4, !tbaa !25
  br label %326

326:                                              ; preds = %305, %311
  %327 = phi i32 [ %317, %311 ], [ %307, %305 ]
  %328 = add nuw nsw i64 %306, 1
  %329 = icmp eq i64 %328, %304
  br i1 %329, label %330, label %305, !llvm.loop !189

330:                                              ; preds = %326, %275
  %331 = load i32, ptr %258, align 4, !tbaa !31
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %330
  %334 = load ptr, ptr %255, align 8, !tbaa !34
  %335 = getelementptr inbounds ptr, ptr %334, i64 %280
  %336 = load ptr, ptr %335, align 8, !tbaa !35
  br label %418

337:                                              ; preds = %330
  %338 = load i32, ptr %8, align 16, !tbaa !25
  %339 = load i32, ptr %259, align 16, !tbaa !25
  %340 = add nsw i32 %339, %338
  store i32 %340, ptr %9, align 16, !tbaa !25
  %341 = load i32, ptr %260, align 4, !tbaa !25
  %342 = load i32, ptr %261, align 4, !tbaa !25
  %343 = add nsw i32 %342, %341
  store i32 %343, ptr %262, align 4, !tbaa !25
  %344 = load i32, ptr %263, align 8, !tbaa !25
  %345 = load i32, ptr %264, align 8, !tbaa !25
  %346 = add nsw i32 %345, %344
  store i32 %346, ptr %265, align 8, !tbaa !25
  %347 = load i32, ptr %266, align 4, !tbaa !25
  %348 = load i32, ptr %267, align 4, !tbaa !25
  %349 = add nsw i32 %348, %347
  store i32 %349, ptr %268, align 4, !tbaa !25
  %350 = sub nsw i32 %338, %339
  store i32 %350, ptr %269, align 16, !tbaa !25
  %351 = sub nsw i32 %341, %342
  store i32 %351, ptr %270, align 4, !tbaa !25
  %352 = sub nsw i32 %344, %345
  store i32 %352, ptr %271, align 8, !tbaa !25
  %353 = sub nsw i32 %347, %348
  store i32 %353, ptr %272, align 4, !tbaa !25
  %354 = load ptr, ptr %282, align 8, !tbaa !35
  %355 = getelementptr inbounds ptr, ptr %282, i64 4
  %356 = load ptr, ptr %355, align 8, !tbaa !35
  %357 = getelementptr inbounds ptr, ptr %282, i64 8
  %358 = load ptr, ptr %357, align 8, !tbaa !35
  %359 = getelementptr inbounds ptr, ptr %282, i64 12
  %360 = load ptr, ptr %359, align 8, !tbaa !35
  br label %366

361:                                              ; preds = %366
  %362 = load i32, ptr %273, align 8, !tbaa !51
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %430

364:                                              ; preds = %361
  %365 = load i32, ptr %274, align 4, !tbaa !49
  br label %390

366:                                              ; preds = %337, %366
  %367 = phi i1 [ true, %337 ], [ false, %366 ]
  %368 = phi i64 [ 0, %337 ], [ 1, %366 ]
  %369 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 %368
  %370 = load i32, ptr %369, align 16, !tbaa !25
  %371 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 %368, i64 2
  %372 = load i32, ptr %371, align 8, !tbaa !25
  %373 = add nsw i32 %372, %370
  %374 = sub nsw i32 %370, %372
  %375 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 %368, i64 1
  %376 = load i32, ptr %375, align 4, !tbaa !25
  %377 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 %368, i64 3
  %378 = load i32, ptr %377, align 4, !tbaa !25
  %379 = sub nsw i32 %376, %378
  %380 = add nsw i32 %378, %376
  %381 = add nsw i32 %380, %373
  %382 = shl nuw nsw i64 %368, 2
  %383 = getelementptr inbounds i32, ptr %354, i64 %382
  store i32 %381, ptr %383, align 4, !tbaa !25
  %384 = add nsw i32 %379, %374
  %385 = getelementptr inbounds i32, ptr %356, i64 %382
  store i32 %384, ptr %385, align 4, !tbaa !25
  %386 = sub nsw i32 %374, %379
  %387 = getelementptr inbounds i32, ptr %358, i64 %382
  store i32 %386, ptr %387, align 4, !tbaa !25
  %388 = sub nsw i32 %373, %380
  %389 = getelementptr inbounds i32, ptr %360, i64 %382
  store i32 %388, ptr %389, align 4, !tbaa !25
  br i1 %367, label %366, label %361, !llvm.loop !190

390:                                              ; preds = %364, %412
  %391 = phi i32 [ %362, %364 ], [ %413, %412 ]
  %392 = phi i32 [ %365, %364 ], [ %414, %412 ]
  %393 = phi i64 [ 0, %364 ], [ %415, %412 ]
  %394 = icmp sgt i32 %392, 0
  br i1 %394, label %395, label %412

395:                                              ; preds = %390
  %396 = getelementptr inbounds ptr, ptr %282, i64 %393
  %397 = load ptr, ptr %396, align 8, !tbaa !35
  br label %398

398:                                              ; preds = %395, %398
  %399 = phi i64 [ 0, %395 ], [ %406, %398 ]
  %400 = getelementptr inbounds i32, ptr %397, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !25
  %402 = load i32, ptr %298, align 4, !tbaa !25
  %403 = mul nsw i32 %402, %401
  %404 = shl i32 %403, %291
  %405 = call fastcc i32 @rshift_rnd_sf(i32 noundef %404, i32 noundef 6) #17, !range !33
  store i32 %405, ptr %400, align 4, !tbaa !25
  %406 = add nuw nsw i64 %399, 4
  %407 = load i32, ptr %274, align 4, !tbaa !49
  %408 = sext i32 %407 to i64
  %409 = icmp slt i64 %406, %408
  br i1 %409, label %398, label %410, !llvm.loop !191

410:                                              ; preds = %398
  %411 = load i32, ptr %273, align 8, !tbaa !51
  br label %412

412:                                              ; preds = %410, %390
  %413 = phi i32 [ %411, %410 ], [ %391, %390 ]
  %414 = phi i32 [ %407, %410 ], [ %392, %390 ]
  %415 = add nuw nsw i64 %393, 4
  %416 = sext i32 %413 to i64
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %390, label %430, !llvm.loop !192

418:                                              ; preds = %333, %418
  %419 = phi i64 [ 0, %333 ], [ %428, %418 ]
  %420 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !25
  %422 = shl nuw nsw i64 %419, 2
  %423 = getelementptr inbounds ptr, ptr %336, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !35
  store i32 %421, ptr %424, align 4, !tbaa !25
  %425 = getelementptr inbounds [2 x [4 x i32]], ptr %8, i64 0, i64 1, i64 %419
  %426 = load i32, ptr %425, align 4, !tbaa !25
  %427 = getelementptr inbounds i32, ptr %424, i64 4
  store i32 %426, ptr %427, align 4, !tbaa !25
  %428 = add nuw nsw i64 %419, 1
  %429 = icmp eq i64 %428, 4
  br i1 %429, label %430, label %418, !llvm.loop !193

430:                                              ; preds = %418, %412, %361
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  br i1 %276, label %275, label %431, !llvm.loop !194

431:                                              ; preds = %430
  %432 = icmp slt i32 %193, 32
  br i1 %432, label %433, label %442

433:                                              ; preds = %252, %244, %431
  %434 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %435 = load ptr, ptr %434, align 8, !tbaa !184
  %436 = sext i32 %11 to i64
  %437 = getelementptr inbounds ptr, ptr %435, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !35
  %439 = getelementptr inbounds ptr, ptr %438, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !35
  %441 = load ptr, ptr %440, align 8, !tbaa !35
  call fastcc void @fast_memset(ptr noundef %441, i32 noundef 32) #17
  br label %614

442:                                              ; preds = %431
  %443 = load i32, ptr %258, align 4, !tbaa !31
  %444 = icmp eq i32 %443, 0
  %445 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 74
  %446 = load i32, ptr %445, align 8, !tbaa !160
  %447 = icmp sgt i32 %446, 0
  br i1 %444, label %453, label %448

448:                                              ; preds = %442
  br i1 %447, label %449, label %614

449:                                              ; preds = %448
  %450 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 75
  %451 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %452 = sext i32 %26 to i64
  br label %544

453:                                              ; preds = %442
  br i1 %447, label %454, label %614

454:                                              ; preds = %453
  %455 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 75
  %456 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %457 = sext i32 %26 to i64
  br label %458

458:                                              ; preds = %454, %539
  %459 = phi i64 [ 0, %454 ], [ %540, %539 ]
  %460 = load i32, ptr %455, align 4, !tbaa !161
  %461 = sext i32 %460 to i64
  %462 = icmp sge i64 %459, %461
  %463 = zext i1 %462 to i32
  store i32 %463, ptr %456, align 4, !tbaa !153
  %464 = select i1 %462, i64 2, i64 1
  %465 = zext i1 %462 to i64
  %466 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !25
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 89, i64 %464, i64 %468
  %470 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 88, i64 %464, i64 %468
  %471 = select i1 %21, ptr %470, ptr %469
  %472 = select i1 %462, i32 2, i32 0
  %473 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %465
  br label %474

474:                                              ; preds = %458, %536
  %475 = phi i64 [ 0, %458 ], [ %537, %536 ]
  %476 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %457, i64 %459, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !26
  %478 = zext i8 %477 to i32
  %479 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %457, i64 %459, i64 %475
  %480 = load i8, ptr %479, align 1, !tbaa !26
  %481 = zext i8 %480 to i32
  %482 = add nuw nsw i32 %472, %478
  %483 = add nuw nsw i32 %481, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %482, i32 noundef %483, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %484 = load i32, ptr %5, align 4, !tbaa !25
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %536

486:                                              ; preds = %474
  %487 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %459, i64 %475
  %488 = shl nuw nsw i32 %481, 2
  %489 = shl nuw nsw i32 %478, 2
  %490 = zext nneg i32 %484 to i64
  br label %491

491:                                              ; preds = %486, %532
  %492 = phi i64 [ 0, %486 ], [ %534, %532 ]
  %493 = phi i32 [ 0, %486 ], [ %533, %532 ]
  %494 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %492
  %495 = load i32, ptr %494, align 4, !tbaa !25
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %532, label %497

497:                                              ; preds = %491
  %498 = load i8, ptr %487, align 1, !tbaa !26
  %499 = zext i8 %498 to i32
  %500 = call fastcc i64 @i64_power2(i32 noundef %499) #17
  %501 = load i64, ptr %257, align 8, !tbaa !32
  %502 = or i64 %501, %500
  store i64 %502, ptr %257, align 8, !tbaa !32
  %503 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %492
  %504 = load i32, ptr %503, align 4, !tbaa !25
  %505 = add i32 %493, 1
  %506 = add i32 %505, %504
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [2 x i8], ptr %37, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !26
  %510 = zext i8 %509 to i32
  %511 = getelementptr inbounds [2 x i8], ptr %37, i64 %507, i64 1
  %512 = load i8, ptr %511, align 1, !tbaa !26
  %513 = zext i8 %512 to i32
  %514 = zext i8 %512 to i64
  %515 = zext i8 %509 to i64
  %516 = getelementptr inbounds [4 x i32], ptr %471, i64 %514, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !25
  %518 = mul nsw i32 %517, %495
  %519 = load i32, ptr %473, align 4, !tbaa !25
  %520 = shl i32 %518, %519
  %521 = call fastcc i32 @rshift_rnd_sf(i32 noundef %520, i32 noundef 4) #17, !range !33
  %522 = load ptr, ptr %255, align 8, !tbaa !34
  %523 = getelementptr inbounds ptr, ptr %522, i64 %464
  %524 = load ptr, ptr %523, align 8, !tbaa !35
  %525 = add nuw nsw i32 %488, %513
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds ptr, ptr %524, i64 %526
  %528 = load ptr, ptr %527, align 8, !tbaa !35
  %529 = add nuw nsw i32 %489, %510
  %530 = zext nneg i32 %529 to i64
  %531 = getelementptr inbounds i32, ptr %528, i64 %530
  store i32 %521, ptr %531, align 4, !tbaa !25
  br label %532

532:                                              ; preds = %491, %497
  %533 = phi i32 [ %506, %497 ], [ %493, %491 ]
  %534 = add nuw nsw i64 %492, 1
  %535 = icmp eq i64 %534, %490
  br i1 %535, label %536, label %491, !llvm.loop !195

536:                                              ; preds = %532, %474
  %537 = add nuw nsw i64 %475, 1
  %538 = icmp eq i64 %537, 4
  br i1 %538, label %539, label %474, !llvm.loop !196

539:                                              ; preds = %536
  %540 = add nuw nsw i64 %459, 1
  %541 = load i32, ptr %445, align 8, !tbaa !160
  %542 = sext i32 %541 to i64
  %543 = icmp slt i64 %540, %542
  br i1 %543, label %458, label %614, !llvm.loop !197

544:                                              ; preds = %449, %609
  %545 = phi i64 [ 0, %449 ], [ %610, %609 ]
  %546 = load i32, ptr %450, align 4, !tbaa !161
  %547 = sext i32 %546 to i64
  %548 = icmp sge i64 %545, %547
  %549 = zext i1 %548 to i32
  store i32 %549, ptr %451, align 4, !tbaa !153
  %550 = select i1 %548, i32 2, i32 0
  %551 = select i1 %548, i64 2, i64 1
  br label %552

552:                                              ; preds = %544, %606
  %553 = phi i64 [ 0, %544 ], [ %607, %606 ]
  %554 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %452, i64 %545, i64 %553
  %555 = load i8, ptr %554, align 1, !tbaa !26
  %556 = zext i8 %555 to i32
  %557 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %452, i64 %545, i64 %553
  %558 = load i8, ptr %557, align 1, !tbaa !26
  %559 = zext i8 %558 to i32
  %560 = add nuw nsw i32 %550, %556
  %561 = add nuw nsw i32 %559, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %560, i32 noundef %561, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %562 = load i32, ptr %5, align 4, !tbaa !25
  %563 = icmp sgt i32 %562, 0
  br i1 %563, label %564, label %606

564:                                              ; preds = %552
  %565 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %545, i64 %553
  %566 = shl nuw nsw i32 %559, 2
  %567 = shl nuw nsw i32 %556, 2
  %568 = zext nneg i32 %562 to i64
  br label %569

569:                                              ; preds = %564, %602
  %570 = phi i64 [ 0, %564 ], [ %604, %602 ]
  %571 = phi i32 [ 0, %564 ], [ %603, %602 ]
  %572 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %570
  %573 = load i32, ptr %572, align 4, !tbaa !25
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %602, label %575

575:                                              ; preds = %569
  %576 = load i8, ptr %565, align 1, !tbaa !26
  %577 = zext i8 %576 to i32
  %578 = call fastcc i64 @i64_power2(i32 noundef %577) #17
  %579 = load i64, ptr %257, align 8, !tbaa !32
  %580 = or i64 %579, %578
  store i64 %580, ptr %257, align 8, !tbaa !32
  %581 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %570
  %582 = load i32, ptr %581, align 4, !tbaa !25
  %583 = add i32 %571, 1
  %584 = add i32 %583, %582
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [2 x i8], ptr %37, i64 %585
  %587 = load i8, ptr %586, align 1, !tbaa !26
  %588 = zext i8 %587 to i32
  %589 = getelementptr inbounds [2 x i8], ptr %37, i64 %585, i64 1
  %590 = load i8, ptr %589, align 1, !tbaa !26
  %591 = zext i8 %590 to i32
  %592 = load ptr, ptr %255, align 8, !tbaa !34
  %593 = getelementptr inbounds ptr, ptr %592, i64 %551
  %594 = load ptr, ptr %593, align 8, !tbaa !35
  %595 = add nuw nsw i32 %566, %591
  %596 = zext nneg i32 %595 to i64
  %597 = getelementptr inbounds ptr, ptr %594, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !35
  %599 = add nuw nsw i32 %567, %588
  %600 = zext nneg i32 %599 to i64
  %601 = getelementptr inbounds i32, ptr %598, i64 %600
  store i32 %573, ptr %601, align 4, !tbaa !25
  br label %602

602:                                              ; preds = %569, %575
  %603 = phi i32 [ %584, %575 ], [ %571, %569 ]
  %604 = add nuw nsw i64 %570, 1
  %605 = icmp eq i64 %604, %568
  br i1 %605, label %606, label %569, !llvm.loop !198

606:                                              ; preds = %602, %552
  %607 = add nuw nsw i64 %553, 1
  %608 = icmp eq i64 %607, 4
  br i1 %608, label %609, label %552, !llvm.loop !199

609:                                              ; preds = %606
  %610 = add nuw nsw i64 %545, 1
  %611 = load i32, ptr %445, align 8, !tbaa !160
  %612 = sext i32 %611 to i64
  %613 = icmp slt i64 %610, %612
  br i1 %613, label %544, label %614, !llvm.loop !200

614:                                              ; preds = %609, %539, %448, %453, %433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_400(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 42
  %10 = load i32, ptr %9, align 8, !tbaa !107
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 33
  %19 = load i32, ptr %18, align 4, !tbaa !138
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %23 = load i32, ptr %22, align 8, !tbaa !109
  %24 = freeze i32 %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi ptr [ @FIELD_SCAN, %1 ], [ %26, %21 ]
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %30 = load i16, ptr %29, align 8, !tbaa !65
  switch i16 %30, label %32 [
    i16 10, label %120
    i16 14, label %120
    i16 9, label %31
    i16 12, label %31
    i16 13, label %31
  ]

31:                                               ; preds = %27, %27, %27
  br label %32

32:                                               ; preds = %27, %31
  %33 = phi i32 [ 6, %31 ], [ 11, %27 ]
  store i32 %33, ptr %2, align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 57
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds i8, ptr %12, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !26
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds %struct.datapartition, ptr %35, i64 %39
  switch i16 %30, label %43 [
    i16 9, label %41
    i16 12, label %41
    i16 13, label %41
  ]

41:                                               ; preds = %32, %32, %32
  %42 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 120
  br label %45

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 121
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %47, ptr %48, align 8, !tbaa !104
  %49 = getelementptr inbounds %struct.datapartition, ptr %35, i64 %39, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = call i32 %50(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %40) #18
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !112
  %54 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %53, ptr %54, align 4, !tbaa !67
  %55 = load i16, ptr %29, align 8, !tbaa !65
  %56 = add i16 %55, -1
  %57 = icmp ult i16 %56, 3
  br i1 %57, label %74, label %58

58:                                               ; preds = %45
  %59 = icmp eq i16 %55, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 33
  %62 = load i32, ptr %61, align 4, !tbaa !69
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  %67 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %66, i64 0, i32 32
  %68 = load i32, ptr %67, align 4, !tbaa !121
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %60, %58
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %72 = load i32, ptr %71, align 8, !tbaa !120
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %45, %70
  switch i16 %55, label %75 [
    i16 13, label %90
    i16 9, label %90
  ]

75:                                               ; preds = %64, %74
  %76 = and i32 %53, 15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 9
  %80 = load i32, ptr %79, align 4, !tbaa !123
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  store i32 0, ptr %2, align 8, !tbaa !95
  %83 = load ptr, ptr %34, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %84, align 8, !tbaa !105
  %85 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %85, align 4, !tbaa !115
  %86 = load ptr, ptr %83, align 8, !tbaa !99
  %87 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %86) #18
  %88 = load i32, ptr %52, align 4, !tbaa !112
  %89 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %88, ptr %89, align 4, !tbaa !124
  br label %92

90:                                               ; preds = %75, %74, %74, %70
  %91 = icmp eq i32 %53, 0
  br i1 %91, label %183, label %92

92:                                               ; preds = %78, %82, %90
  %93 = load i32, ptr %15, align 8, !tbaa !53
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef %95) #17
  %96 = load i32, ptr %9, align 8, !tbaa !107
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %183, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %15, align 8, !tbaa !53
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 75
  %103 = load i32, ptr %102, align 4, !tbaa !139
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %106, align 1, !tbaa !140
  br label %107

107:                                              ; preds = %105, %101, %98
  br i1 %17, label %108, label %115

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 74
  %110 = load i32, ptr %109, align 8, !tbaa !127
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %113, align 2, !tbaa !114
  %114 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %114, align 1, !tbaa !140
  br label %115

115:                                              ; preds = %112, %108, %107
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %116 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %117 = load i8, ptr %116, align 1, !tbaa !140
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %183, label %119

119:                                              ; preds = %115
  store i32 0, ptr %54, align 4, !tbaa !67
  br label %183

120:                                              ; preds = %27, %27
  %121 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %122 = load i32, ptr %121, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef 17) #17
  %123 = load i32, ptr %9, align 8, !tbaa !107
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 74
  %127 = load i32, ptr %126, align 8, !tbaa !127
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %130, align 2, !tbaa !114
  %131 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %131, align 1, !tbaa !140
  br label %132

132:                                              ; preds = %129, %125
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %133 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %134 = load i8, ptr %133, align 1, !tbaa !140
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  store i32 0, ptr %121, align 4, !tbaa !67
  br label %183

137:                                              ; preds = %120
  %138 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %139 = load i8, ptr %138, align 1, !tbaa !140
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %132, %137
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %142 = load i32, ptr %5, align 4, !tbaa !25
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 80
  %146 = zext nneg i32 %142 to i64
  br label %147

147:                                              ; preds = %144, %172
  %148 = phi i64 [ 0, %144 ], [ %174, %172 ]
  %149 = phi ptr [ %28, %144 ], [ %173, %172 ]
  %150 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %148
  %151 = load i32, ptr %150, align 4, !tbaa !25
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %172, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %148
  %155 = load i32, ptr %154, align 4, !tbaa !25
  %156 = shl nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %149, i64 %157
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  %160 = load i8, ptr %158, align 1, !tbaa !26
  %161 = zext i8 %160 to i64
  %162 = shl nuw nsw i64 %161, 2
  %163 = getelementptr inbounds i8, ptr %158, i64 2
  %164 = load i8, ptr %159, align 1, !tbaa !26
  %165 = zext i8 %164 to i64
  %166 = shl nuw nsw i64 %165, 2
  %167 = load ptr, ptr %145, align 8, !tbaa !34
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = getelementptr inbounds ptr, ptr %168, i64 %166
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = getelementptr inbounds i32, ptr %170, i64 %162
  store i32 %151, ptr %171, align 4, !tbaa !25
  br label %172

172:                                              ; preds = %147, %153
  %173 = phi ptr [ %163, %153 ], [ %149, %147 ]
  %174 = add nuw nsw i64 %148, 1
  %175 = icmp eq i64 %174, %146
  br i1 %175, label %176, label %147, !llvm.loop !201

176:                                              ; preds = %172, %141
  %177 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %178 = load i32, ptr %177, align 4, !tbaa !31
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 46
  %182 = load i32, ptr %181, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %182) #18
  br label %183

183:                                              ; preds = %136, %137, %180, %176, %90, %115, %119, %92
  %184 = phi i32 [ %122, %137 ], [ %122, %180 ], [ %122, %176 ], [ 0, %119 ], [ %53, %115 ], [ %53, %92 ], [ 0, %90 ], [ 0, %136 ]
  %185 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 29
  %186 = load i32, ptr %185, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %186) #17
  %187 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 132
  %188 = load ptr, ptr %187, align 8, !tbaa !145
  %189 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 46
  %190 = load i32, ptr %189, align 8, !tbaa !144
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !25
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %188, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !25
  %197 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 133
  %198 = load ptr, ptr %197, align 8, !tbaa !146
  %199 = getelementptr inbounds i32, ptr %198, i64 %194
  %200 = load i32, ptr %199, align 4, !tbaa !25
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 88, i64 %191, i64 %201
  %203 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 89, i64 %191, i64 %201
  %204 = select i1 %17, ptr %202, ptr %203
  %205 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 90, i64 %191, i64 %201
  %206 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 91, i64 %191, i64 %201
  %207 = select i1 %17, ptr %205, ptr %206
  %208 = icmp eq i32 %184, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %183
  %210 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %211 = load i32, ptr %210, align 4, !tbaa !124
  %212 = icmp eq i32 %211, 0
  %213 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 29
  %214 = load ptr, ptr %213, align 8, !tbaa !184
  %215 = sext i32 %7 to i64
  %216 = getelementptr inbounds ptr, ptr %214, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !35
  %218 = load ptr, ptr %217, align 8, !tbaa !35
  br i1 %212, label %219, label %220

219:                                              ; preds = %209
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %204, i32 noundef %196, i32 noundef %184, ptr noundef %218) #17
  br label %229

220:                                              ; preds = %209
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %207, i32 noundef %196, i32 noundef %184, ptr noundef %218) #17
  br label %229

221:                                              ; preds = %183
  %222 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 29
  %223 = load ptr, ptr %222, align 8, !tbaa !184
  %224 = sext i32 %7 to i64
  %225 = getelementptr inbounds ptr, ptr %223, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !35
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  %228 = load ptr, ptr %227, align 8, !tbaa !35
  call fastcc void @fast_memset(ptr noundef %228, i32 noundef 16) #17
  br label %229

229:                                              ; preds = %219, %220, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_420(ptr noundef %0) #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [4 x i32], align 16
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 42
  %13 = load i32, ptr %12, align 8, !tbaa !107
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 22
  %19 = load i32, ptr %18, align 8, !tbaa !171
  switch i32 %19, label %28 [
    i32 3, label %20
    i32 4, label %24
  ]

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %26 = load i16, ptr %25, align 8, !tbaa !65
  %27 = icmp eq i16 %26, 12
  br label %28

28:                                               ; preds = %20, %1, %24
  %29 = phi i1 [ %27, %24 ], [ %23, %20 ], [ false, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %31 = load i32, ptr %30, align 8, !tbaa !53
  %32 = icmp eq i32 %31, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %33 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 125
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 48
  %36 = load i32, ptr %35, align 4, !tbaa !149
  %37 = add nsw i32 %36, -1
  %38 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 33
  %39 = load i32, ptr %38, align 4, !tbaa !138
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %43 = load i32, ptr %42, align 8, !tbaa !109
  %44 = freeze i32 %43
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %47

47:                                               ; preds = %41, %28
  %48 = phi ptr [ @FIELD_SCAN, %28 ], [ %46, %41 ]
  %49 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %50 = load i16, ptr %49, align 8, !tbaa !65
  switch i16 %50, label %52 [
    i16 10, label %140
    i16 14, label %140
    i16 9, label %51
    i16 12, label %51
    i16 13, label %51
  ]

51:                                               ; preds = %47, %47, %47
  br label %52

52:                                               ; preds = %47, %51
  %53 = phi i32 [ 6, %51 ], [ 11, %47 ]
  store i32 %53, ptr %2, align 8, !tbaa !95
  %54 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 57
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds i8, ptr %15, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !26
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.datapartition, ptr %55, i64 %59
  switch i16 %50, label %63 [
    i16 9, label %61
    i16 12, label %61
    i16 13, label %61
  ]

61:                                               ; preds = %52, %52, %52
  %62 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 120
  br label %65

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 121
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %62, %61 ], [ %64, %63 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr %67, ptr %68, align 8, !tbaa !104
  %69 = getelementptr inbounds %struct.datapartition, ptr %55, i64 %59, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !111
  %71 = call i32 %70(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %60) #18
  %72 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !112
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %73, ptr %74, align 4, !tbaa !67
  %75 = load i16, ptr %49, align 8, !tbaa !65
  %76 = add i16 %75, -1
  %77 = icmp ult i16 %76, 3
  br i1 %77, label %94, label %78

78:                                               ; preds = %65
  %79 = icmp eq i16 %75, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 33
  %82 = load i32, ptr %81, align 4, !tbaa !69
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !90
  %87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %86, i64 0, i32 32
  %88 = load i32, ptr %87, align 4, !tbaa !121
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84, %80, %78
  %91 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %92 = load i32, ptr %91, align 8, !tbaa !120
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %65, %90
  switch i16 %75, label %95 [
    i16 13, label %110
    i16 9, label %110
  ]

95:                                               ; preds = %84, %94
  %96 = and i32 %73, 15
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 9
  %100 = load i32, ptr %99, align 4, !tbaa !123
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  store i32 0, ptr %2, align 8, !tbaa !95
  %103 = load ptr, ptr %54, align 8, !tbaa !97
  %104 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %104, align 8, !tbaa !105
  %105 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %105, align 4, !tbaa !115
  %106 = load ptr, ptr %103, align 8, !tbaa !99
  %107 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %106) #18
  %108 = load i32, ptr %72, align 4, !tbaa !112
  %109 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %108, ptr %109, align 4, !tbaa !124
  br label %112

110:                                              ; preds = %95, %94, %94, %90
  %111 = icmp eq i32 %73, 0
  br i1 %111, label %203, label %112

112:                                              ; preds = %98, %102, %110
  %113 = load i32, ptr %30, align 8, !tbaa !53
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %15, i32 noundef %115) #17
  %116 = load i32, ptr %12, align 8, !tbaa !107
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %203, label %118

118:                                              ; preds = %112
  %119 = load i32, ptr %30, align 8, !tbaa !53
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 75
  %123 = load i32, ptr %122, align 4, !tbaa !139
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %126, align 1, !tbaa !140
  br label %127

127:                                              ; preds = %125, %121, %118
  br i1 %32, label %128, label %135

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 74
  %130 = load i32, ptr %129, align 8, !tbaa !127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %133, align 2, !tbaa !114
  %134 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %134, align 1, !tbaa !140
  br label %135

135:                                              ; preds = %132, %128, %127
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %136 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %137 = load i8, ptr %136, align 1, !tbaa !140
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %203, label %139

139:                                              ; preds = %135
  store i32 0, ptr %74, align 4, !tbaa !67
  br label %203

140:                                              ; preds = %47, %47
  %141 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %142 = load i32, ptr %141, align 4, !tbaa !67
  call fastcc void @read_delta_quant(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %15, i32 noundef 17) #17
  %143 = load i32, ptr %12, align 8, !tbaa !107
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 74
  %147 = load i32, ptr %146, align 8, !tbaa !127
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %150, align 2, !tbaa !114
  %151 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %151, align 1, !tbaa !140
  br label %152

152:                                              ; preds = %149, %145
  call fastcc void @check_dp_neighbors(ptr noundef nonnull %0) #17
  %153 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %154 = load i8, ptr %153, align 1, !tbaa !140
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  store i32 0, ptr %141, align 4, !tbaa !67
  br label %203

157:                                              ; preds = %140
  %158 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !140
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %203

161:                                              ; preds = %152, %157
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %162 = load i32, ptr %5, align 4, !tbaa !25
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  %166 = zext nneg i32 %162 to i64
  br label %167

167:                                              ; preds = %164, %192
  %168 = phi i64 [ 0, %164 ], [ %194, %192 ]
  %169 = phi ptr [ %48, %164 ], [ %193, %192 ]
  %170 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %168
  %171 = load i32, ptr %170, align 4, !tbaa !25
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %168
  %175 = load i32, ptr %174, align 4, !tbaa !25
  %176 = shl nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %169, i64 %177
  %179 = getelementptr inbounds i8, ptr %178, i64 1
  %180 = load i8, ptr %178, align 1, !tbaa !26
  %181 = zext i8 %180 to i64
  %182 = shl nuw nsw i64 %181, 2
  %183 = getelementptr inbounds i8, ptr %178, i64 2
  %184 = load i8, ptr %179, align 1, !tbaa !26
  %185 = zext i8 %184 to i64
  %186 = shl nuw nsw i64 %185, 2
  %187 = load ptr, ptr %165, align 8, !tbaa !34
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = getelementptr inbounds ptr, ptr %188, i64 %186
  %190 = load ptr, ptr %189, align 8, !tbaa !35
  %191 = getelementptr inbounds i32, ptr %190, i64 %182
  store i32 %171, ptr %191, align 4, !tbaa !25
  br label %192

192:                                              ; preds = %167, %173
  %193 = phi ptr [ %183, %173 ], [ %169, %167 ]
  %194 = add nuw nsw i64 %168, 1
  %195 = icmp eq i64 %194, %166
  br i1 %195, label %196, label %167, !llvm.loop !202

196:                                              ; preds = %192, %161
  %197 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %198 = load i32, ptr %197, align 4, !tbaa !31
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 46
  %202 = load i32, ptr %201, align 8, !tbaa !144
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %202) #18
  br label %203

203:                                              ; preds = %156, %157, %200, %196, %110, %135, %139, %112
  %204 = phi i32 [ %142, %157 ], [ %142, %200 ], [ %142, %196 ], [ 0, %139 ], [ %73, %135 ], [ %73, %112 ], [ 0, %110 ], [ 0, %156 ]
  %205 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 29
  %206 = load i32, ptr %205, align 4, !tbaa !110
  call void @update_qp(ptr noundef nonnull %0, i32 noundef %206) #17
  %207 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 132
  %208 = load ptr, ptr %207, align 8, !tbaa !145
  %209 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 46
  %210 = load i32, ptr %209, align 8, !tbaa !144
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !25
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, ptr %208, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !25
  %217 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 133
  %218 = load ptr, ptr %217, align 8, !tbaa !146
  %219 = getelementptr inbounds i32, ptr %218, i64 %214
  %220 = load i32, ptr %219, align 4, !tbaa !25
  %221 = load i32, ptr %35, align 4, !tbaa !149
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %203, %223
  %224 = phi i1 [ false, %223 ], [ true, %203 ]
  %225 = phi i64 [ 1, %223 ], [ 0, %203 ]
  %226 = add nuw nsw i64 %225, 1
  %227 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !25
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %208, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !25
  %232 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %225
  store i32 %231, ptr %232, align 4, !tbaa !25
  %233 = getelementptr inbounds i32, ptr %218, i64 %229
  %234 = load i32, ptr %233, align 4, !tbaa !25
  %235 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %225
  store i32 %234, ptr %235, align 4, !tbaa !25
  br i1 %224, label %223, label %236, !llvm.loop !203

236:                                              ; preds = %223, %203
  %237 = sext i32 %220 to i64
  %238 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 88, i64 %211, i64 %237
  %239 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 90, i64 %211, i64 %237
  %240 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 89, i64 %211, i64 %237
  %241 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 91, i64 %211, i64 %237
  %242 = select i1 %32, ptr %238, ptr %240
  %243 = select i1 %32, ptr %239, ptr %241
  %244 = icmp eq i32 %204, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %247 = load i32, ptr %246, align 4, !tbaa !124
  %248 = icmp eq i32 %247, 0
  %249 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 29
  %250 = load ptr, ptr %249, align 8, !tbaa !184
  %251 = sext i32 %10 to i64
  %252 = getelementptr inbounds ptr, ptr %250, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !35
  %254 = load ptr, ptr %253, align 8, !tbaa !35
  br i1 %248, label %255, label %256

255:                                              ; preds = %245
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %242, i32 noundef %216, i32 noundef %204, ptr noundef %254) #17
  br label %265

256:                                              ; preds = %245
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %243, i32 noundef %216, i32 noundef %204, ptr noundef %254) #17
  br label %265

257:                                              ; preds = %236
  %258 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 29
  %259 = load ptr, ptr %258, align 8, !tbaa !184
  %260 = sext i32 %10 to i64
  %261 = getelementptr inbounds ptr, ptr %259, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !35
  %263 = load ptr, ptr %262, align 8, !tbaa !35
  %264 = load ptr, ptr %263, align 8, !tbaa !35
  call fastcc void @fast_memset(ptr noundef %264, i32 noundef 16) #17
  br label %265

265:                                              ; preds = %255, %256, %257
  %266 = load i32, ptr %35, align 4, !tbaa !149
  %267 = icmp eq i32 %266, 3
  br i1 %267, label %561, label %268

268:                                              ; preds = %265
  %269 = icmp sgt i32 %204, 15
  %270 = icmp eq i32 %266, 1
  %271 = and i1 %269, %270
  br i1 %271, label %272, label %373

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 82
  %274 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %275 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %276 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  %277 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 1
  %278 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 2
  %279 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 3
  %280 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 82, i64 1
  %281 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 82, i64 2
  %282 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 82, i64 3
  br label %283

283:                                              ; preds = %272, %369
  %284 = phi i1 [ true, %272 ], [ false, %369 ]
  %285 = phi i64 [ 0, %272 ], [ 2, %369 ]
  %286 = lshr exact i64 %285, 1
  %287 = add nuw nsw i64 %286, 1
  %288 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %286
  %289 = load i32, ptr %288, align 4, !tbaa !25
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 88, i64 %287, i64 %290
  %292 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 89, i64 %287, i64 %290
  %293 = select i1 %32, ptr %291, ptr %292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %273, i8 0, i64 16, i1 false)
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %294 = load i32, ptr %5, align 4, !tbaa !25
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %321

296:                                              ; preds = %283
  %297 = trunc i64 %285 to i32
  %298 = shl nuw nsw i32 %297, 1
  %299 = shl nuw nsw i32 983040, %298
  %300 = zext nneg i32 %299 to i64
  %301 = zext nneg i32 %294 to i64
  br label %302

302:                                              ; preds = %296, %317
  %303 = phi i64 [ 0, %296 ], [ %319, %317 ]
  %304 = phi i32 [ -1, %296 ], [ %318, %317 ]
  %305 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %303
  %306 = load i32, ptr %305, align 4, !tbaa !25
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %317, label %308

308:                                              ; preds = %302
  %309 = load i64, ptr %274, align 8, !tbaa !32
  %310 = or i64 %309, %300
  store i64 %310, ptr %274, align 8, !tbaa !32
  %311 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %303
  %312 = load i32, ptr %311, align 4, !tbaa !25
  %313 = add i32 %304, 1
  %314 = add i32 %313, %312
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 82, i64 %315
  store i32 %306, ptr %316, align 4, !tbaa !25
  br label %317

317:                                              ; preds = %302, %308
  %318 = phi i32 [ %314, %308 ], [ %304, %302 ]
  %319 = add nuw nsw i64 %303, 1
  %320 = icmp eq i64 %319, %301
  br i1 %320, label %321, label %302, !llvm.loop !204

321:                                              ; preds = %317, %283
  br i1 %29, label %325, label %322

322:                                              ; preds = %321
  %323 = load i32, ptr %275, align 4, !tbaa !31
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %338

325:                                              ; preds = %322, %321
  %326 = load i32, ptr %273, align 8, !tbaa !25
  %327 = load ptr, ptr %276, align 8, !tbaa !34
  %328 = getelementptr ptr, ptr %327, i64 %286
  %329 = getelementptr ptr, ptr %328, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !35
  %331 = load ptr, ptr %330, align 8, !tbaa !35
  store i32 %326, ptr %331, align 4, !tbaa !25
  %332 = load i32, ptr %280, align 4, !tbaa !25
  %333 = getelementptr inbounds i32, ptr %331, i64 4
  store i32 %332, ptr %333, align 4, !tbaa !25
  %334 = load i32, ptr %281, align 8, !tbaa !25
  %335 = getelementptr inbounds ptr, ptr %330, i64 4
  %336 = load ptr, ptr %335, align 8, !tbaa !35
  store i32 %334, ptr %336, align 4, !tbaa !25
  %337 = load i32, ptr %282, align 4, !tbaa !25
  br label %369

338:                                              ; preds = %322
  call void @ihadamard2x2(ptr noundef nonnull %273, ptr noundef nonnull %8) #18
  %339 = load i32, ptr %8, align 16, !tbaa !25
  %340 = load i32, ptr %293, align 4, !tbaa !25
  %341 = mul nsw i32 %340, %339
  %342 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %286
  %343 = load i32, ptr %342, align 4, !tbaa !25
  %344 = shl i32 %341, %343
  %345 = ashr i32 %344, 5
  %346 = load ptr, ptr %276, align 8, !tbaa !34
  %347 = getelementptr ptr, ptr %346, i64 %286
  %348 = getelementptr ptr, ptr %347, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !35
  %350 = load ptr, ptr %349, align 8, !tbaa !35
  store i32 %345, ptr %350, align 4, !tbaa !25
  %351 = load i32, ptr %277, align 4, !tbaa !25
  %352 = load i32, ptr %293, align 4, !tbaa !25
  %353 = mul nsw i32 %352, %351
  %354 = shl i32 %353, %343
  %355 = ashr i32 %354, 5
  %356 = getelementptr inbounds i32, ptr %350, i64 4
  store i32 %355, ptr %356, align 4, !tbaa !25
  %357 = load i32, ptr %278, align 8, !tbaa !25
  %358 = load i32, ptr %293, align 4, !tbaa !25
  %359 = mul nsw i32 %358, %357
  %360 = shl i32 %359, %343
  %361 = ashr i32 %360, 5
  %362 = getelementptr inbounds ptr, ptr %349, i64 4
  %363 = load ptr, ptr %362, align 8, !tbaa !35
  store i32 %361, ptr %363, align 4, !tbaa !25
  %364 = load i32, ptr %279, align 4, !tbaa !25
  %365 = load i32, ptr %293, align 4, !tbaa !25
  %366 = mul nsw i32 %365, %364
  %367 = shl i32 %366, %343
  %368 = ashr i32 %367, 5
  br label %369

369:                                              ; preds = %325, %338
  %370 = phi ptr [ %336, %325 ], [ %363, %338 ]
  %371 = phi i32 [ %337, %325 ], [ %368, %338 ]
  %372 = getelementptr inbounds i32, ptr %370, i64 4
  store i32 %371, ptr %372, align 4, !tbaa !25
  br i1 %284, label %283, label %373, !llvm.loop !205

373:                                              ; preds = %369, %268
  %374 = icmp slt i32 %204, 32
  br i1 %374, label %375, label %384

375:                                              ; preds = %373
  %376 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 29
  %377 = load ptr, ptr %376, align 8, !tbaa !184
  %378 = sext i32 %10 to i64
  %379 = getelementptr inbounds ptr, ptr %377, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !35
  %381 = getelementptr inbounds ptr, ptr %380, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !35
  %383 = load ptr, ptr %382, align 8, !tbaa !35
  call fastcc void @fast_memset(ptr noundef %383, i32 noundef 32) #17
  br label %561

384:                                              ; preds = %373
  %385 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %386 = load i32, ptr %385, align 4, !tbaa !31
  %387 = icmp eq i32 %386, 0
  %388 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 74
  %389 = load i32, ptr %388, align 8, !tbaa !160
  %390 = icmp sgt i32 %389, 0
  br i1 %387, label %398, label %391

391:                                              ; preds = %384
  br i1 %390, label %392, label %561

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 75
  %394 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %395 = sext i32 %37 to i64
  %396 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %397 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  br label %491

398:                                              ; preds = %384
  br i1 %390, label %399, label %561

399:                                              ; preds = %398
  %400 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 75
  %401 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %402 = sext i32 %37 to i64
  %403 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %404 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  br label %405

405:                                              ; preds = %399, %486
  %406 = phi i64 [ 0, %399 ], [ %487, %486 ]
  %407 = load i32, ptr %400, align 4, !tbaa !161
  %408 = sext i32 %407 to i64
  %409 = icmp sge i64 %406, %408
  %410 = zext i1 %409 to i32
  store i32 %410, ptr %401, align 4, !tbaa !153
  %411 = select i1 %409, i64 2, i64 1
  %412 = zext i1 %409 to i64
  %413 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !25
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 89, i64 %411, i64 %415
  %417 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 88, i64 %411, i64 %415
  %418 = select i1 %32, ptr %417, ptr %416
  %419 = select i1 %409, i32 2, i32 0
  %420 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %412
  br label %421

421:                                              ; preds = %405, %483
  %422 = phi i64 [ 0, %405 ], [ %484, %483 ]
  %423 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %402, i64 %406, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !26
  %425 = zext i8 %424 to i32
  %426 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %402, i64 %406, i64 %422
  %427 = load i8, ptr %426, align 1, !tbaa !26
  %428 = zext i8 %427 to i32
  %429 = add nuw nsw i32 %419, %425
  %430 = add nuw nsw i32 %428, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %429, i32 noundef %430, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %431 = load i32, ptr %5, align 4, !tbaa !25
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %433, label %483

433:                                              ; preds = %421
  %434 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %406, i64 %422
  %435 = shl nuw nsw i32 %428, 2
  %436 = shl nuw nsw i32 %425, 2
  %437 = zext nneg i32 %431 to i64
  br label %438

438:                                              ; preds = %433, %479
  %439 = phi i64 [ 0, %433 ], [ %481, %479 ]
  %440 = phi i32 [ 0, %433 ], [ %480, %479 ]
  %441 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %439
  %442 = load i32, ptr %441, align 4, !tbaa !25
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %479, label %444

444:                                              ; preds = %438
  %445 = load i8, ptr %434, align 1, !tbaa !26
  %446 = zext i8 %445 to i32
  %447 = call fastcc i64 @i64_power2(i32 noundef %446) #17
  %448 = load i64, ptr %403, align 8, !tbaa !32
  %449 = or i64 %448, %447
  store i64 %449, ptr %403, align 8, !tbaa !32
  %450 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %439
  %451 = load i32, ptr %450, align 4, !tbaa !25
  %452 = add i32 %440, 1
  %453 = add i32 %452, %451
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [2 x i8], ptr %48, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !26
  %457 = zext i8 %456 to i32
  %458 = getelementptr inbounds [2 x i8], ptr %48, i64 %454, i64 1
  %459 = load i8, ptr %458, align 1, !tbaa !26
  %460 = zext i8 %459 to i32
  %461 = zext i8 %459 to i64
  %462 = zext i8 %456 to i64
  %463 = getelementptr inbounds [4 x i32], ptr %418, i64 %461, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !25
  %465 = mul nsw i32 %464, %442
  %466 = load i32, ptr %420, align 4, !tbaa !25
  %467 = shl i32 %465, %466
  %468 = call fastcc i32 @rshift_rnd_sf(i32 noundef %467, i32 noundef 4) #17, !range !33
  %469 = load ptr, ptr %404, align 8, !tbaa !34
  %470 = getelementptr inbounds ptr, ptr %469, i64 %411
  %471 = load ptr, ptr %470, align 8, !tbaa !35
  %472 = add nuw nsw i32 %435, %460
  %473 = zext nneg i32 %472 to i64
  %474 = getelementptr inbounds ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !35
  %476 = add nuw nsw i32 %436, %457
  %477 = zext nneg i32 %476 to i64
  %478 = getelementptr inbounds i32, ptr %475, i64 %477
  store i32 %468, ptr %478, align 4, !tbaa !25
  br label %479

479:                                              ; preds = %438, %444
  %480 = phi i32 [ %453, %444 ], [ %440, %438 ]
  %481 = add nuw nsw i64 %439, 1
  %482 = icmp eq i64 %481, %437
  br i1 %482, label %483, label %438, !llvm.loop !206

483:                                              ; preds = %479, %421
  %484 = add nuw nsw i64 %422, 1
  %485 = icmp eq i64 %484, 4
  br i1 %485, label %486, label %421, !llvm.loop !207

486:                                              ; preds = %483
  %487 = add nuw nsw i64 %406, 1
  %488 = load i32, ptr %388, align 8, !tbaa !160
  %489 = sext i32 %488 to i64
  %490 = icmp slt i64 %487, %489
  br i1 %490, label %405, label %561, !llvm.loop !208

491:                                              ; preds = %392, %556
  %492 = phi i64 [ 0, %392 ], [ %557, %556 ]
  %493 = load i32, ptr %393, align 4, !tbaa !161
  %494 = sext i32 %493 to i64
  %495 = icmp sge i64 %492, %494
  %496 = zext i1 %495 to i32
  store i32 %496, ptr %394, align 4, !tbaa !153
  %497 = select i1 %495, i32 2, i32 0
  %498 = select i1 %495, i64 2, i64 1
  br label %499

499:                                              ; preds = %491, %553
  %500 = phi i64 [ 0, %491 ], [ %554, %553 ]
  %501 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %395, i64 %492, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !26
  %503 = zext i8 %502 to i32
  %504 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %395, i64 %492, i64 %500
  %505 = load i8, ptr %504, align 1, !tbaa !26
  %506 = zext i8 %505 to i32
  %507 = add nuw nsw i32 %497, %503
  %508 = add nuw nsw i32 %506, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %507, i32 noundef %508, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %509 = load i32, ptr %5, align 4, !tbaa !25
  %510 = icmp sgt i32 %509, 0
  br i1 %510, label %511, label %553

511:                                              ; preds = %499
  %512 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %492, i64 %500
  %513 = shl nuw nsw i32 %506, 2
  %514 = shl nuw nsw i32 %503, 2
  %515 = zext nneg i32 %509 to i64
  br label %516

516:                                              ; preds = %511, %549
  %517 = phi i64 [ 0, %511 ], [ %551, %549 ]
  %518 = phi i32 [ 0, %511 ], [ %550, %549 ]
  %519 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %517
  %520 = load i32, ptr %519, align 4, !tbaa !25
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %549, label %522

522:                                              ; preds = %516
  %523 = load i8, ptr %512, align 1, !tbaa !26
  %524 = zext i8 %523 to i32
  %525 = call fastcc i64 @i64_power2(i32 noundef %524) #17
  %526 = load i64, ptr %396, align 8, !tbaa !32
  %527 = or i64 %526, %525
  store i64 %527, ptr %396, align 8, !tbaa !32
  %528 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %517
  %529 = load i32, ptr %528, align 4, !tbaa !25
  %530 = add i32 %518, 1
  %531 = add i32 %530, %529
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [2 x i8], ptr %48, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !26
  %535 = zext i8 %534 to i32
  %536 = getelementptr inbounds [2 x i8], ptr %48, i64 %532, i64 1
  %537 = load i8, ptr %536, align 1, !tbaa !26
  %538 = zext i8 %537 to i32
  %539 = load ptr, ptr %397, align 8, !tbaa !34
  %540 = getelementptr inbounds ptr, ptr %539, i64 %498
  %541 = load ptr, ptr %540, align 8, !tbaa !35
  %542 = add nuw nsw i32 %513, %538
  %543 = zext nneg i32 %542 to i64
  %544 = getelementptr inbounds ptr, ptr %541, i64 %543
  %545 = load ptr, ptr %544, align 8, !tbaa !35
  %546 = add nuw nsw i32 %514, %535
  %547 = zext nneg i32 %546 to i64
  %548 = getelementptr inbounds i32, ptr %545, i64 %547
  store i32 %520, ptr %548, align 4, !tbaa !25
  br label %549

549:                                              ; preds = %516, %522
  %550 = phi i32 [ %531, %522 ], [ %518, %516 ]
  %551 = add nuw nsw i64 %517, 1
  %552 = icmp eq i64 %551, %515
  br i1 %552, label %553, label %516, !llvm.loop !209

553:                                              ; preds = %549, %499
  %554 = add nuw nsw i64 %500, 1
  %555 = icmp eq i64 %554, 4
  br i1 %555, label %556, label %499, !llvm.loop !210

556:                                              ; preds = %553
  %557 = add nuw nsw i64 %492, 1
  %558 = load i32, ptr %388, align 8, !tbaa !160
  %559 = sext i32 %558 to i64
  %560 = icmp slt i64 %557, %559
  br i1 %560, label %491, label %561, !llvm.loop !211

561:                                              ; preds = %556, %486, %391, %398, %375, %265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @prepareListforRefIdx(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #12 {
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 60
  store ptr @readRefPictureIdx_Null, ptr %6, align 8, !tbaa !212
  %7 = icmp sgt i32 %3, 1
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !80
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %2, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.bit_stream, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !102
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16, %8
  %22 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 8
  store ptr @linfo_ue, ptr %22, align 8, !tbaa !104
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = icmp eq i32 %3, 2
  %26 = select i1 %25, ptr @readRefPictureIdx_FLC, ptr @readRefPictureIdx_VLC
  br label %30

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  store ptr @readRefFrame_CABAC, ptr %28, align 8, !tbaa !105
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %24
  %31 = phi ptr [ %26, %24 ], [ @readRefPictureIdx_VLC, %27 ]
  store ptr %31, ptr %6, align 8, !tbaa !212
  br label %32

32:                                               ; preds = %30, %21, %27, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readMBRefPictureIdx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 {
  %8 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 13
  %9 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 12
  %10 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 60
  %11 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 5
  %12 = zext nneg i32 %4 to i64
  %13 = sext i32 %6 to i64
  %14 = sext i32 %5 to i64
  %15 = icmp sgt i32 %5, 0
  br label %16

16:                                               ; preds = %7, %73
  %17 = phi i64 [ 0, %7 ], [ %21, %73 ]
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 2
  store i32 %19, ptr %8, align 8, !tbaa !162
  %20 = and i32 %18, -2
  %21 = add i64 %17, %14
  br label %22

22:                                               ; preds = %16, %69
  %23 = phi i64 [ 0, %16 ], [ %70, %69 ]
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %24, 1
  %26 = add nsw i32 %25, %20
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 38, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !26
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, %4
  %32 = icmp eq i8 %29, 2
  %33 = or i1 %32, %31
  br i1 %33, label %34, label %69

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 37, i64 %27
  %36 = load i8, ptr %35, align 1, !tbaa !26
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %34
  %39 = shl i32 %24, 2
  store i32 %39, ptr %9, align 4, !tbaa !163
  %40 = load ptr, ptr %10, align 8, !tbaa !212
  %41 = load i8, ptr %35, align 1, !tbaa !26
  %42 = tail call signext i8 %40(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1, i8 noundef signext %41, i32 noundef %4) #18
  br i1 %15, label %43, label %69

43:                                               ; preds = %38
  %44 = add i32 %24, %6
  %45 = load i32, ptr %11, align 8, !tbaa !44
  br label %46

46:                                               ; preds = %43, %65
  %47 = phi i32 [ %45, %43 ], [ %66, %65 ]
  %48 = phi i64 [ %17, %43 ], [ %67, %65 ]
  %49 = add nsw i32 %47, %24
  %50 = add i32 %44, %47
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = getelementptr inbounds ptr, ptr %3, i64 %48
  %54 = sext i32 %47 to i64
  %55 = add nsw i64 %23, %54
  br label %56

56:                                               ; preds = %52, %56
  %57 = phi i64 [ %55, %52 ], [ %60, %56 ]
  %58 = load ptr, ptr %53, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.pic_motion_params, ptr %58, i64 %57, i32 2, i64 %12
  store i8 %42, ptr %59, align 1, !tbaa !26
  %60 = add nsw i64 %57, 1
  %61 = load i32, ptr %11, align 8, !tbaa !44
  %62 = add i32 %44, %61
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %56, label %65, !llvm.loop !213

65:                                               ; preds = %56, %46
  %66 = phi i32 [ %47, %46 ], [ %61, %56 ]
  %67 = add nsw i64 %48, 1
  %68 = icmp slt i64 %67, %21
  br i1 %68, label %46, label %69, !llvm.loop !214

69:                                               ; preds = %65, %38, %22, %34
  %70 = add i64 %23, %13
  %71 = trunc i64 %70 to i32
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %22, label %73, !llvm.loop !215

73:                                               ; preds = %69
  %74 = icmp slt i64 %21, 4
  br i1 %74, label %16, label %75, !llvm.loop !216

75:                                               ; preds = %73
  ret void
}

; Function Attrs: optsize
declare void @linfo_se(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @read_MVD_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readMBMotionVectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = alloca %struct.MotionVector, align 4
  %8 = alloca [4 x %struct.pix_pos], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %9 = load ptr, ptr %2, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 125
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 35
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  %14 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 6
  %15 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 5
  %16 = zext nneg i32 %3 to i64
  %17 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 13
  %18 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 12
  %19 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 58
  %20 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %23 = sext i32 %4 to i64
  %24 = sext i32 %5 to i64
  %25 = icmp sgt i32 %5, 0
  %26 = icmp sgt i32 %4, 0
  %27 = add i32 %3, 2
  br label %28

28:                                               ; preds = %6, %159
  %29 = phi <2 x i16> [ undef, %6 ], [ %156, %159 ]
  %30 = phi i64 [ 0, %6 ], [ %33, %159 ]
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, -2
  %33 = add i64 %30, %24
  %34 = getelementptr ptr, ptr %13, i64 %30
  br label %35

35:                                               ; preds = %28, %155
  %36 = phi <2 x i16> [ %29, %28 ], [ %156, %155 ]
  %37 = phi i64 [ 0, %28 ], [ %157, %155 ]
  %38 = trunc i64 %37 to i32
  %39 = ashr i32 %38, 1
  %40 = add nsw i32 %39, %32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !26
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, %3
  %46 = icmp eq i8 %43, 2
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %155

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 37, i64 %41
  %50 = load i8, ptr %49, align 1, !tbaa !26
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %155, label %52

52:                                               ; preds = %48
  %53 = sext i8 %50 to i64
  %54 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %53
  %55 = load i32, ptr %54, align 8, !tbaa !25
  %56 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %53, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %58 = shl i32 %55, 2
  %59 = shl i32 %57, 2
  br i1 %25, label %60, label %155

60:                                               ; preds = %52
  %61 = load i32, ptr %14, align 4, !tbaa !45
  %62 = sext i32 %61 to i64
  %63 = getelementptr ptr, ptr %34, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = load i32, ptr %15, align 8, !tbaa !44
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %37, %66
  %68 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %67, i32 2, i64 %16
  %69 = load i8, ptr %68, align 1, !tbaa !26
  %70 = add nsw i64 %37, %23
  %71 = sext i8 %69 to i16
  %72 = lshr i64 94, %53
  %73 = and i64 %72, 1
  %74 = icmp eq i64 %73, 0
  %75 = shl nsw i32 %55, 1
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 1
  %78 = sext i32 %55 to i64
  %79 = call i32 @llvm.smax.i32(i32 %57, i32 2)
  %80 = sext i32 %57 to i64
  %81 = icmp sgt i32 %55, 0
  %82 = icmp sgt i32 %55, 0
  %83 = zext nneg i32 %79 to i64
  br label %84

84:                                               ; preds = %60, %151
  %85 = phi <2 x i16> [ %36, %60 ], [ %152, %151 ]
  %86 = phi i64 [ %30, %60 ], [ %153, %151 ]
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 2
  store i32 %88, ptr %17, align 8, !tbaa !162
  %89 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %16, i64 %86
  br i1 %26, label %90, label %151

90:                                               ; preds = %84
  %91 = load i32, ptr %14, align 4, !tbaa !45
  %92 = add i32 %91, %87
  %93 = add nsw i32 %92, %57
  %94 = sext i32 %92 to i64
  %95 = sext i32 %93 to i64
  br label %98

96:                                               ; preds = %146, %137
  %97 = icmp slt i64 %120, %70
  br i1 %97, label %98, label %151, !llvm.loop !217

98:                                               ; preds = %90, %96
  %99 = phi i64 [ %37, %90 ], [ %120, %96 ]
  %100 = trunc i64 %99 to i32
  %101 = shl i32 %100, 2
  store i32 %101, ptr %18, align 4, !tbaa !163
  %102 = load i32, ptr %15, align 8, !tbaa !44
  call void @get_neighbors(ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %101, i32 noundef %88, i32 noundef %58) #17
  %103 = load ptr, ptr %19, align 8, !tbaa !218
  call void %103(ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %7, i16 noundef signext %71, ptr noundef %13, i32 noundef %3, i32 noundef %101, i32 noundef %88, i32 noundef %58, i32 noundef %59) #18
  store i32 %3, ptr %20, align 8, !tbaa !142
  %104 = load ptr, ptr %21, align 8, !tbaa !111
  %105 = call i32 %104(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1) #18
  %106 = load i32, ptr %22, align 4, !tbaa !112
  %107 = trunc i32 %106 to i16
  %108 = insertelement <2 x i16> poison, i16 %107, i64 0
  store i32 %27, ptr %20, align 8, !tbaa !142
  %109 = load ptr, ptr %21, align 8, !tbaa !111
  %110 = call i32 %109(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1) #18
  %111 = load i32, ptr %22, align 4, !tbaa !112
  %112 = trunc i32 %111 to i16
  %113 = insertelement <2 x i16> %108, i16 %112, i64 1
  %114 = add nsw i32 %102, %100
  %115 = load <2 x i16>, ptr %7, align 4, !tbaa !59
  %116 = add <2 x i16> %115, %113
  %117 = sext i32 %114 to i64
  %118 = add nsw i32 %114, %55
  br label %121

119:                                              ; preds = %134
  %120 = add i64 %99, %78
  br i1 %82, label %140, label %137

121:                                              ; preds = %98, %134
  %122 = phi i64 [ %94, %98 ], [ %135, %134 ]
  br i1 %81, label %123, label %134

123:                                              ; preds = %121
  %124 = getelementptr inbounds ptr, ptr %13, i64 %122
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = getelementptr inbounds %struct.pic_motion_params, ptr %125, i64 %117
  br label %127

127:                                              ; preds = %123, %127
  %128 = phi ptr [ %130, %127 ], [ %126, %123 ]
  %129 = phi i32 [ %132, %127 ], [ %114, %123 ]
  %130 = getelementptr inbounds %struct.pic_motion_params, ptr %128, i64 1
  %131 = getelementptr inbounds %struct.pic_motion_params, ptr %128, i64 0, i32 1, i64 %16
  store <2 x i16> %116, ptr %131, align 4
  %132 = add nsw i32 %129, 1
  %133 = icmp slt i32 %132, %118
  br i1 %133, label %127, label %134, !llvm.loop !219

134:                                              ; preds = %127, %121
  %135 = add nsw i64 %122, 1
  %136 = icmp slt i64 %135, %95
  br i1 %136, label %121, label %119, !llvm.loop !220

137:                                              ; preds = %140, %119
  br i1 %74, label %96, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %16, i64 %86, i64 %99
  br label %146

140:                                              ; preds = %119, %140
  %141 = phi i64 [ %144, %140 ], [ %99, %119 ]
  %142 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %16, i64 %86, i64 %141
  store i16 %107, ptr %142, align 2, !tbaa !59
  %143 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %16, i64 %86, i64 %141, i64 1
  store i16 %112, ptr %143, align 2, !tbaa !59
  %144 = add i64 %141, 1
  %145 = icmp slt i64 %144, %120
  br i1 %145, label %140, label %137, !llvm.loop !221

146:                                              ; preds = %138, %146
  %147 = phi i64 [ 1, %138 ], [ %149, %146 ]
  %148 = getelementptr inbounds [4 x [2 x i16]], ptr %89, i64 %147, i64 %99
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %148, ptr nonnull align 2 %139, i64 %77, i1 false)
  %149 = add nuw nsw i64 %147, 1
  %150 = icmp eq i64 %149, %83
  br i1 %150, label %96, label %146, !llvm.loop !222

151:                                              ; preds = %96, %84
  %152 = phi <2 x i16> [ %85, %84 ], [ %113, %96 ]
  %153 = add i64 %86, %80
  %154 = icmp slt i64 %153, %33
  br i1 %154, label %84, label %155, !llvm.loop !223

155:                                              ; preds = %151, %52, %35, %48
  %156 = phi <2 x i16> [ %36, %48 ], [ %36, %52 ], [ %36, %35 ], [ %152, %151 ]
  %157 = add i64 %37, %23
  %158 = icmp slt i64 %157, 4
  br i1 %158, label %35, label %159, !llvm.loop !224

159:                                              ; preds = %155
  %160 = icmp slt i64 %33, 4
  br i1 %160, label %28, label %161, !llvm.loop !225

161:                                              ; preds = %159
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef signext i8 @readRefPictureIdx_Null(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i8 signext %3, i32 %4) #2 {
  ret i8 0
}

; Function Attrs: optsize
declare void @linfo_ue(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i8 @readRefPictureIdx_FLC(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef signext %3, i32 %4) #4 {
  %6 = sext i8 %3 to i32
  %7 = tail call fastcc i32 @BType2CtxRef(i32 noundef %6) #17, !range !226
  %8 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %7, ptr %8, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 1, ptr %9, align 4, !tbaa !115
  %10 = load ptr, ptr %2, align 8, !tbaa !99
  %11 = tail call i32 @readSyntaxElement_FLC(ptr noundef %1, ptr noundef %10) #18
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !112
  %14 = sub nsw i32 1, %13
  store i32 %14, ptr %12, align 4, !tbaa !112
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i8 @readRefPictureIdx_VLC(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef signext %3, i32 noundef %4) #4 {
  %6 = sext i8 %3 to i32
  %7 = tail call fastcc i32 @BType2CtxRef(i32 noundef %6) #17, !range !226
  %8 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %7, ptr %8, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  store i32 %4, ptr %9, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %13 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !112
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: optsize
declare void @readRefFrame_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @BType2CtxRef(i32 noundef %0) unnamed_addr #2 {
  %2 = icmp sgt i32 %0, 3
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @readSyntaxElement_FLC(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_neighbors(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  %9 = add nsw i32 %2, -1
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %9, i32 noundef %3, ptr noundef nonnull %8, ptr noundef %1) #18
  %10 = add nsw i32 %3, -1
  %11 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %2, i32 noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %11) #18
  %12 = add nsw i32 %4, %2
  %13 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %12, i32 noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %13) #18
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = icmp slt i32 %2, 8
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = icmp eq i32 %3, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = icmp eq i32 %4, 16
  br i1 %20, label %28, label %25

21:                                               ; preds = %17
  %22 = icmp eq i32 %12, 8
  br i1 %22, label %28, label %25

23:                                               ; preds = %15
  %24 = icmp eq i32 %12, 16
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %19, %23, %5
  %26 = load i32, ptr %13, align 4, !tbaa !227
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %31

28:                                               ; preds = %23, %21, %19
  store i32 0, ptr %13, align 4, !tbaa !227
  br label %29

29:                                               ; preds = %28, %25
  %30 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 3
  tail call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %30) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !229
  br label %31

31:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @field_flag_inference(ptr nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %5 = load i32, ptr %4, align 4, !tbaa !230
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %11 = load i32, ptr %10, align 8, !tbaa !231
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %7 ]
  %17 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = load i32, ptr %16, align 4, !tbaa !25
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %20, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !109
  br label %23

23:                                               ; preds = %15, %9
  %24 = phi i32 [ 0, %9 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %24, ptr %25, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighborsCABAC(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @read_skip_flag_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @readFieldModeInfo_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @readMB_typeInfo_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare i32 @mb_is_available(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @readB8_typeInfo_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SetB8Mode(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 33
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i32 %6, 1
  %8 = sext i32 %1 to i64
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %9
  br i1 %7, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2b8, i64 0, i64 %8
  %13 = load i8, ptr %12, align 1, !tbaa !26
  store i8 %13, ptr %10, align 1, !tbaa !26
  %14 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2pd, i64 0, i64 %8
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2b8, i64 0, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !26
  store i8 %17, ptr %10, align 1, !tbaa !26
  %18 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2pd, i64 0, i64 %8
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %18, %15 ], [ %14, %11 ]
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %9
  %22 = load i8, ptr %20, align 1, !tbaa !26
  store i8 %22, ptr %21, align 1, !tbaa !26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_macroblock(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 35
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %10, %1 ], [ %25, %12 ]
  %14 = phi i32 [ 0, %1 ], [ %29, %12 ]
  %15 = load i32, ptr %11, align 8, !tbaa !44
  %16 = load ptr, ptr %13, align 8, !tbaa !35
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.pic_motion_params, ptr %16, i64 %17
  tail call fastcc void @reset_mv_info(ptr noundef %18) #17
  %19 = load ptr, ptr %13, align 8, !tbaa !35
  %20 = getelementptr %struct.pic_motion_params, ptr %19, i64 %17
  %21 = getelementptr %struct.pic_motion_params, ptr %20, i64 1
  tail call fastcc void @reset_mv_info(ptr noundef %21) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !35
  %23 = getelementptr %struct.pic_motion_params, ptr %22, i64 %17
  %24 = getelementptr %struct.pic_motion_params, ptr %23, i64 2
  tail call fastcc void @reset_mv_info(ptr noundef %24) #17
  %25 = getelementptr inbounds ptr, ptr %13, i64 1
  %26 = load ptr, ptr %13, align 8, !tbaa !35
  %27 = getelementptr %struct.pic_motion_params, ptr %26, i64 %17
  %28 = getelementptr %struct.pic_motion_params, ptr %27, i64 3
  tail call fastcc void @reset_mv_info(ptr noundef %28) #17
  %29 = add nuw nsw i32 %14, 1
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %12, !llvm.loop !232

31:                                               ; preds = %12
  ret void
}

; Function Attrs: optsize
declare void @readMB_transform_size_flag_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @skip_macroblock(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.MotionVector, align 4
  %3 = alloca [4 x %struct.pix_pos], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %10 = load i16, ptr %9, align 2, !tbaa !74
  %11 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  call void @get_neighbors(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 16) #17
  %13 = load i32, ptr %3, align 16, !tbaa !227
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %19 = load i16, ptr %18, align 2, !tbaa !233
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !234
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds %struct.pic_motion_params, ptr %22, i64 %25, i32 1
  %27 = getelementptr inbounds %struct.MotionVector, ptr %26, i64 0, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !235
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.pic_motion_params, ptr %22, i64 %25, i32 2
  %31 = load i8, ptr %30, align 8, !tbaa !26
  %32 = sext i8 %31 to i32
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %34 = load i32, ptr %33, align 8, !tbaa !109
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !236
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.macroblock, ptr %37, i64 %40, i32 45
  %42 = load i32, ptr %41, align 8, !tbaa !109
  %43 = icmp eq i32 %42, 0
  br i1 %35, label %49, label %44

44:                                               ; preds = %15
  br i1 %43, label %45, label %53

45:                                               ; preds = %44
  %46 = sdiv i16 %28, 2
  %47 = sext i16 %46 to i32
  %48 = shl nsw i32 %32, 1
  br label %53

49:                                               ; preds = %15
  br i1 %43, label %53, label %50

50:                                               ; preds = %49
  %51 = shl nsw i32 %29, 1
  %52 = ashr i32 %32, 1
  br label %53

53:                                               ; preds = %44, %45, %49, %50, %1
  %54 = phi i32 [ %52, %50 ], [ %32, %49 ], [ 0, %1 ], [ %48, %45 ], [ %32, %44 ]
  %55 = phi i32 [ %51, %50 ], [ %29, %49 ], [ 0, %1 ], [ %47, %45 ], [ %29, %44 ]
  %56 = phi ptr [ %26, %50 ], [ %26, %49 ], [ null, %1 ], [ %26, %45 ], [ %26, %44 ]
  %57 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1
  %58 = load i32, ptr %57, align 16, !tbaa !227
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %98, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 5
  %64 = load i16, ptr %63, align 2, !tbaa !233
  %65 = sext i16 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  %68 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 4
  %69 = load i16, ptr %68, align 4, !tbaa !234
  %70 = sext i16 %69 to i64
  %71 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %70, i32 1
  %72 = getelementptr inbounds %struct.MotionVector, ptr %71, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !235
  %74 = sext i16 %73 to i32
  %75 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %70, i32 2
  %76 = load i8, ptr %75, align 8, !tbaa !26
  %77 = sext i8 %76 to i32
  %78 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %79 = load i32, ptr %78, align 8, !tbaa !109
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %82 = load ptr, ptr %81, align 8, !tbaa !108
  %83 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !236
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.macroblock, ptr %82, i64 %85, i32 45
  %87 = load i32, ptr %86, align 8, !tbaa !109
  %88 = icmp eq i32 %87, 0
  br i1 %80, label %94, label %89

89:                                               ; preds = %60
  br i1 %88, label %90, label %98

90:                                               ; preds = %89
  %91 = sdiv i16 %73, 2
  %92 = sext i16 %91 to i32
  %93 = shl nsw i32 %77, 1
  br label %98

94:                                               ; preds = %60
  br i1 %88, label %98, label %95

95:                                               ; preds = %94
  %96 = shl nsw i32 %74, 1
  %97 = ashr i32 %77, 1
  br label %98

98:                                               ; preds = %89, %90, %94, %95, %53
  %99 = phi i32 [ %97, %95 ], [ %77, %94 ], [ 0, %53 ], [ %93, %90 ], [ %77, %89 ]
  %100 = phi i32 [ %96, %95 ], [ %74, %94 ], [ 0, %53 ], [ %92, %90 ], [ %74, %89 ]
  %101 = phi ptr [ %71, %95 ], [ %71, %94 ], [ null, %53 ], [ %71, %90 ], [ %71, %89 ]
  br i1 %14, label %109, label %102

102:                                              ; preds = %98
  %103 = icmp eq i32 %54, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = load i16, ptr %56, align 2, !tbaa !237
  %106 = icmp eq i16 %105, 0
  %107 = icmp eq i32 %55, 0
  %108 = select i1 %106, i1 %107, i1 false
  br label %109

109:                                              ; preds = %104, %102, %98
  %110 = phi i1 [ true, %98 ], [ false, %102 ], [ %108, %104 ]
  br i1 %59, label %122, label %111

111:                                              ; preds = %109
  %112 = icmp eq i32 %99, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %111
  %114 = load i16, ptr %101, align 2, !tbaa !237
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = icmp eq i32 %100, 0
  %118 = select i1 %117, i1 true, i1 %110
  %119 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %119, align 4, !tbaa !67
  call void @reset_coeffs(ptr noundef nonnull %8) #17
  br i1 %118, label %124, label %154

120:                                              ; preds = %111, %113
  %121 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %121, align 4, !tbaa !67
  call void @reset_coeffs(ptr noundef nonnull %8) #17
  br i1 %110, label %124, label %154

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %123, align 4, !tbaa !67
  call void @reset_coeffs(ptr noundef nonnull %8) #17
  br label %124

124:                                              ; preds = %116, %122, %120
  %125 = sext i16 %10 to i64
  %126 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = load ptr, ptr %127, align 8, !tbaa !35
  %129 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %130 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %131 = sext i32 %5 to i64
  %132 = add nsw i32 %5, 3
  %133 = sext i32 %132 to i64
  br label %134

134:                                              ; preds = %151, %124
  %135 = phi i64 [ %131, %124 ], [ %152, %151 ]
  %136 = load i32, ptr %129, align 8, !tbaa !44
  %137 = sext i32 %136 to i64
  br label %138

138:                                              ; preds = %134, %138
  %139 = phi i64 [ %137, %134 ], [ %146, %138 ]
  %140 = load ptr, ptr %130, align 8, !tbaa !98
  %141 = getelementptr inbounds ptr, ptr %140, i64 %135
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  %143 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %139
  store ptr %128, ptr %143, align 8, !tbaa !35
  %144 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %139, i32 1
  store i32 0, ptr %144, align 8
  %145 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %139, i32 2
  store i8 0, ptr %145, align 8, !tbaa !26
  %146 = add nsw i64 %139, 1
  %147 = load i32, ptr %129, align 8, !tbaa !44
  %148 = add nsw i32 %147, 3
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %139, %149
  br i1 %150, label %138, label %151, !llvm.loop !238

151:                                              ; preds = %138
  %152 = add nsw i64 %135, 1
  %153 = icmp slt i64 %135, %133
  br i1 %153, label %134, label %188, !llvm.loop !239

154:                                              ; preds = %116, %120
  %155 = sext i16 %10 to i64
  %156 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !35
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %160 = load ptr, ptr %159, align 8, !tbaa !218
  %161 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %162 = load ptr, ptr %161, align 8, !tbaa !98
  call void %160(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2, i16 noundef signext 0, ptr noundef %162, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #18
  %163 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %164 = sext i32 %5 to i64
  %165 = add nsw i32 %5, 3
  %166 = sext i32 %165 to i64
  br label %167

167:                                              ; preds = %185, %154
  %168 = phi i64 [ %164, %154 ], [ %186, %185 ]
  %169 = load i32, ptr %163, align 8, !tbaa !44
  %170 = sext i32 %169 to i64
  br label %171

171:                                              ; preds = %167, %171
  %172 = phi i64 [ %170, %167 ], [ %180, %171 ]
  %173 = load ptr, ptr %161, align 8, !tbaa !98
  %174 = getelementptr inbounds ptr, ptr %173, i64 %168
  %175 = load ptr, ptr %174, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct.pic_motion_params, ptr %175, i64 %172
  store ptr %158, ptr %176, align 8, !tbaa !35
  %177 = getelementptr inbounds %struct.pic_motion_params, ptr %175, i64 %172, i32 1
  %178 = load i32, ptr %2, align 4
  store i32 %178, ptr %177, align 8
  %179 = getelementptr inbounds %struct.pic_motion_params, ptr %175, i64 %172, i32 2
  store i8 0, ptr %179, align 8, !tbaa !26
  %180 = add nsw i64 %172, 1
  %181 = load i32, ptr %163, align 8, !tbaa !44
  %182 = add nsw i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %172, %183
  br i1 %184, label %171, label %185, !llvm.loop !240

185:                                              ; preds = %171
  %186 = add nsw i64 %168, 1
  %187 = icmp slt i64 %168, %166
  br i1 %187, label %167, label %188, !llvm.loop !241

188:                                              ; preds = %185, %151
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_ipred_modes(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp ne i32 %11, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  store i32 4, ptr %2, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 57
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr %14, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !102
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readIntraPredMode_CABAC, ptr %26, align 8, !tbaa !105
  br label %27

27:                                               ; preds = %25, %20, %1
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %30 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  %31 = getelementptr inbounds %struct.datapartition, ptr %14, i64 0, i32 2
  %32 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  %33 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %34 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %37 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 33
  %38 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 126
  %39 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 127
  %40 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %41 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %42 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %43 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %44 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  br label %45

45:                                               ; preds = %245, %27
  %46 = phi i64 [ %246, %245 ], [ 0, %27 ]
  %47 = phi i1 [ false, %245 ], [ %12, %27 ]
  br label %48

48:                                               ; preds = %45, %242
  %49 = phi i64 [ %243, %242 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !26
  switch i8 %51, label %242 [
    i8 11, label %52
    i8 13, label %52
  ]

52:                                               ; preds = %48, %48
  %53 = icmp eq i8 %51, 13
  %54 = select i1 %53, i32 2, i32 1
  %55 = trunc i64 %49 to i32
  %56 = and i32 %55, 2
  %57 = trunc i64 %49 to i32
  %58 = shl i32 %57, 1
  %59 = and i32 %58, 2
  %60 = trunc i64 %49 to i32
  %61 = shl i32 %60, 2
  br label %62

62:                                               ; preds = %52, %239
  %63 = phi i32 [ 0, %52 ], [ %240, %239 ]
  %64 = add nuw nsw i32 %63, %56
  %65 = load i32, ptr %28, align 4, !tbaa !45
  %66 = add nsw i32 %65, %64
  %67 = shl nuw nsw i32 %63, 1
  %68 = add nuw nsw i32 %67, %61
  %69 = shl nuw nsw i32 %64, 2
  %70 = add nsw i32 %69, -1
  %71 = sext i32 %66 to i64
  br label %72

72:                                               ; preds = %62, %236
  %73 = phi i32 [ 0, %62 ], [ %237, %236 ]
  %74 = or disjoint i32 %73, %59
  %75 = load i32, ptr %29, align 8, !tbaa !44
  %76 = add nsw i32 %75, %74
  %77 = load ptr, ptr %15, align 8, !tbaa !79
  %78 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %77, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !80
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %14, align 8, !tbaa !99
  br i1 %80, label %86, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.bit_stream, ptr %81, i64 0, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !102
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82, %72
  %87 = call i32 @readSyntaxElement_Intra4x4PredictionMode(ptr noundef nonnull %2, ptr noundef %81) #18
  br label %92

88:                                               ; preds = %82
  %89 = add nuw nsw i32 %73, %68
  store i32 %89, ptr %30, align 8, !tbaa !141
  %90 = load ptr, ptr %31, align 8, !tbaa !111
  %91 = call i32 %90(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %14) #18
  br label %92

92:                                               ; preds = %88, %86
  %93 = shl nuw nsw i32 %74, 2
  %94 = add nsw i32 %93, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %94, i32 noundef %69, ptr noundef nonnull %32, ptr noundef nonnull %3) #18
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %93, i32 noundef %70, ptr noundef nonnull %32, ptr noundef nonnull %4) #18
  %95 = load ptr, ptr %15, align 8, !tbaa !79
  %96 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %95, i64 0, i32 30
  %97 = load i32, ptr %96, align 4, !tbaa !125
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr %3, align 4, !tbaa !227
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %33, align 8, !tbaa !126
  %104 = load i32, ptr %34, align 4, !tbaa !236
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %103, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !26
  %108 = sext i8 %107 to i32
  br label %109

109:                                              ; preds = %99, %102
  %110 = phi i32 [ %108, %102 ], [ 0, %99 ]
  store i32 %110, ptr %3, align 4, !tbaa !227
  %111 = load i32, ptr %4, align 4, !tbaa !227
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %33, align 8, !tbaa !126
  %115 = load i32, ptr %35, align 4, !tbaa !236
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !26
  %119 = sext i8 %118 to i32
  br label %120

120:                                              ; preds = %109, %113
  %121 = phi i32 [ %119, %113 ], [ 0, %109 ]
  store i32 %121, ptr %4, align 4, !tbaa !227
  br label %122

122:                                              ; preds = %120, %92
  %123 = load i16, ptr %36, align 8, !tbaa !65
  %124 = icmp eq i16 %123, 9
  br i1 %124, label %125, label %168

125:                                              ; preds = %122
  %126 = load i32, ptr %37, align 4, !tbaa !69
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %128, label %168

128:                                              ; preds = %125
  %129 = load i32, ptr %3, align 4, !tbaa !227
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %38, align 8, !tbaa !119
  %133 = load ptr, ptr @PicPos, align 8, !tbaa !35
  %134 = load i32, ptr %34, align 4, !tbaa !236
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.BlockPos, ptr %133, i64 %135
  %137 = getelementptr inbounds %struct.BlockPos, ptr %133, i64 %135, i32 1
  %138 = load i16, ptr %137, align 2, !tbaa !235
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %132, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !35
  %142 = load i16, ptr %136, align 2, !tbaa !237
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds i32, ptr %141, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !25
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  br label %148

148:                                              ; preds = %131, %128
  %149 = phi i32 [ 0, %128 ], [ %147, %131 ]
  %150 = load i32, ptr %4, align 4, !tbaa !227
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %38, align 8, !tbaa !119
  %154 = load ptr, ptr @PicPos, align 8, !tbaa !35
  %155 = load i32, ptr %35, align 4, !tbaa !236
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.BlockPos, ptr %154, i64 %156
  %158 = getelementptr inbounds %struct.BlockPos, ptr %154, i64 %156, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !235
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %153, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !35
  %163 = load i16, ptr %157, align 2, !tbaa !237
  %164 = sext i16 %163 to i64
  %165 = getelementptr inbounds i32, ptr %162, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !25
  %167 = icmp eq i32 %166, 0
  br label %168

168:                                              ; preds = %152, %148, %125, %122
  %169 = phi i32 [ %149, %148 ], [ 0, %125 ], [ 0, %122 ], [ %149, %152 ]
  %170 = phi i1 [ true, %148 ], [ true, %125 ], [ true, %122 ], [ %167, %152 ]
  %171 = load i32, ptr %4, align 4, !tbaa !227
  %172 = icmp ne i32 %171, 0
  %173 = and i1 %170, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %168
  %175 = load ptr, ptr %39, align 8, !tbaa !242
  %176 = load i16, ptr %40, align 2, !tbaa !233
  %177 = sext i16 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !35
  %180 = load i16, ptr %41, align 4, !tbaa !234
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds i8, ptr %179, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !26
  %184 = zext i8 %183 to i32
  br label %185

185:                                              ; preds = %168, %174
  %186 = phi i32 [ %184, %174 ], [ -1, %168 ]
  %187 = load i32, ptr %3, align 4, !tbaa !227
  %188 = icmp ne i32 %187, 0
  %189 = icmp eq i32 %169, 0
  %190 = and i1 %189, %188
  br i1 %190, label %191, label %202

191:                                              ; preds = %185
  %192 = load ptr, ptr %39, align 8, !tbaa !242
  %193 = load i16, ptr %42, align 2, !tbaa !233
  %194 = sext i16 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %192, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !35
  %197 = load i16, ptr %43, align 4, !tbaa !234
  %198 = sext i16 %197 to i64
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !26
  %201 = zext i8 %200 to i32
  br label %202

202:                                              ; preds = %185, %191
  %203 = phi i32 [ %201, %191 ], [ -1, %185 ]
  %204 = icmp slt i32 %186, 0
  %205 = icmp slt i32 %203, 0
  %206 = select i1 %204, i1 true, i1 %205
  %207 = call i32 @llvm.smin.i32(i32 %186, i32 %203)
  %208 = select i1 %206, i32 2, i32 %207
  %209 = load i32, ptr %44, align 4, !tbaa !112
  %210 = icmp eq i32 %209, -1
  %211 = icmp sge i32 %209, %208
  %212 = zext i1 %211 to i32
  %213 = add nuw nsw i32 %209, %212
  %214 = select i1 %210, i32 %208, i32 %213
  %215 = trunc i32 %214 to i8
  %216 = sext i32 %76 to i64
  br i1 %53, label %217, label %231

217:                                              ; preds = %202, %217
  %218 = phi i64 [ %229, %217 ], [ 0, %202 ]
  %219 = load ptr, ptr %39, align 8, !tbaa !242
  %220 = add nsw i64 %218, %71
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !35
  %223 = getelementptr inbounds i8, ptr %222, i64 %216
  store i8 %215, ptr %223, align 1, !tbaa !26
  %224 = load ptr, ptr %39, align 8, !tbaa !242
  %225 = getelementptr inbounds ptr, ptr %224, i64 %220
  %226 = load ptr, ptr %225, align 8, !tbaa !35
  %227 = getelementptr i8, ptr %226, i64 %216
  %228 = getelementptr i8, ptr %227, i64 1
  store i8 %215, ptr %228, align 1, !tbaa !26
  %229 = add nuw nsw i64 %218, 1
  %230 = icmp eq i64 %229, 2
  br i1 %230, label %236, label %217, !llvm.loop !243

231:                                              ; preds = %202
  %232 = load ptr, ptr %39, align 8, !tbaa !242
  %233 = getelementptr ptr, ptr %232, i64 %71
  %234 = load ptr, ptr %233, align 8, !tbaa !35
  %235 = getelementptr inbounds i8, ptr %234, i64 %216
  store i8 %215, ptr %235, align 1, !tbaa !26
  br label %236

236:                                              ; preds = %217, %231
  %237 = add nuw nsw i32 %73, %54
  %238 = icmp ult i32 %237, 2
  br i1 %238, label %72, label %239, !llvm.loop !244

239:                                              ; preds = %236
  %240 = add nuw nsw i32 %54, %63
  %241 = icmp ult i32 %240, 2
  br i1 %241, label %62, label %245, !llvm.loop !245

242:                                              ; preds = %48
  %243 = add nuw nsw i64 %49, 1
  %244 = icmp eq i64 %243, 4
  br i1 %244, label %248, label %48, !llvm.loop !246

245:                                              ; preds = %239
  %246 = add nuw nsw i64 %49, 1
  %247 = icmp eq i64 %246, 4
  br i1 %247, label %249, label %45, !llvm.loop !246

248:                                              ; preds = %242
  br i1 %47, label %277, label %249

249:                                              ; preds = %245, %248
  %250 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %251 = load i32, ptr %250, align 4, !tbaa !149
  switch i32 %251, label %252 [
    i32 0, label %277
    i32 3, label %277
  ]

252:                                              ; preds = %249
  store i32 4, ptr %2, align 8, !tbaa !95
  %253 = load ptr, ptr %13, align 8, !tbaa !97
  %254 = load ptr, ptr %15, align 8, !tbaa !79
  %255 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %254, i64 0, i32 3
  %256 = load i32, ptr %255, align 4, !tbaa !80
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %252
  %259 = load ptr, ptr %253, align 8, !tbaa !99
  %260 = getelementptr inbounds %struct.bit_stream, ptr %259, i64 0, i32 5
  %261 = load i32, ptr %260, align 8, !tbaa !102
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %258, %252
  %264 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %264, align 8, !tbaa !104
  br label %267

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readCIPredMode_CABAC, ptr %266, align 8, !tbaa !105
  br label %267

267:                                              ; preds = %265, %263
  %268 = getelementptr inbounds %struct.datapartition, ptr %253, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !111
  %270 = call i32 %269(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %253) #18
  %271 = load i32, ptr %44, align 4, !tbaa !112
  %272 = trunc i32 %271 to i8
  %273 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  store i8 %272, ptr %273, align 1, !tbaa !68
  %274 = and i32 %271, 252
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %267
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 600) #18
  br label %277

277:                                              ; preds = %267, %249, %249, %276, %248
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealIPCMcoeffs(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 69
  %8 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 80
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %1, %23
  %12 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = load i32, ptr %7, align 4, !tbaa !25
  %16 = insertelement <4 x i32> poison, i32 %15, i64 0
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %11
  %19 = phi i64 [ 0, %11 ], [ %21, %18 ]
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  store <4 x i32> %17, ptr %20, align 4, !tbaa !25
  %21 = add nuw i64 %19, 4
  %22 = icmp eq i64 %21, 16
  br i1 %22, label %23, label %18, !llvm.loop !247

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %12, 1
  %25 = icmp eq i64 %24, 16
  br i1 %25, label %26, label %11, !llvm.loop !248

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %28 = load i32, ptr %27, align 4, !tbaa !149
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %32 = load i32, ptr %31, align 8, !tbaa !91
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %36 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %37 = load i32, ptr %35, align 8, !tbaa !51
  br label %38

38:                                               ; preds = %34, %73
  %39 = phi i32 [ %37, %34 ], [ %74, %73 ]
  %40 = phi i32 [ %37, %34 ], [ %75, %73 ]
  %41 = phi i1 [ true, %34 ], [ false, %73 ]
  %42 = phi i64 [ 0, %34 ], [ 1, %73 ]
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 69, i64 %42
  %46 = load i32, ptr %36, align 4, !tbaa !49
  %47 = getelementptr inbounds ptr, ptr %9, i64 %42
  br label %48

48:                                               ; preds = %44, %67
  %49 = phi i32 [ %39, %44 ], [ %68, %67 ]
  %50 = phi i32 [ %46, %44 ], [ %69, %67 ]
  %51 = phi i64 [ 0, %44 ], [ %70, %67 ]
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load ptr, ptr %47, align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = load i32, ptr %45, align 4, !tbaa !25
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ 0, %53 ], [ %61, %58 ]
  %60 = getelementptr inbounds i32, ptr %56, i64 %59
  store i32 %57, ptr %60, align 4, !tbaa !25
  %61 = add nuw nsw i64 %59, 1
  %62 = load i32, ptr %36, align 4, !tbaa !49
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %58, label %65, !llvm.loop !249

65:                                               ; preds = %58
  %66 = load i32, ptr %35, align 8, !tbaa !51
  br label %67

67:                                               ; preds = %65, %48
  %68 = phi i32 [ %66, %65 ], [ %49, %48 ]
  %69 = phi i32 [ %62, %65 ], [ %50, %48 ]
  %70 = add nuw nsw i64 %51, 1
  %71 = sext i32 %68 to i64
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %48, label %73, !llvm.loop !250

73:                                               ; preds = %67, %38
  %74 = phi i32 [ %39, %38 ], [ %68, %67 ]
  %75 = phi i32 [ %40, %38 ], [ %68, %67 ]
  br i1 %41, label %38, label %76, !llvm.loop !251

76:                                               ; preds = %73, %30, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.syntaxelement, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #19
  %7 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @readIPCM_CABAC(ptr noundef nonnull %0, ptr noundef %1) #18
  tail call fastcc void @init_decoding_engine_IPCM(ptr noundef nonnull %0) #17
  br label %126

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.bit_stream, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !116
  %17 = and i32 %16, 7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = sub nuw nsw i32 8, %17
  %21 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  store i32 %20, ptr %21, align 4, !tbaa !115
  %22 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef nonnull %14) #18
  br label %23

23:                                               ; preds = %19, %13
  %24 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 64
  %25 = load i16, ptr %24, align 8, !tbaa !252
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  store i32 %26, ptr %27, align 4, !tbaa !115
  %28 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %30

30:                                               ; preds = %23, %44
  %31 = phi i64 [ 0, %23 ], [ %45, %44 ]
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %42, %32 ]
  %34 = load ptr, ptr %1, align 8, !tbaa !99
  %35 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %34) #18
  %36 = load i32, ptr %28, align 4, !tbaa !112
  %37 = load ptr, ptr %29, align 8, !tbaa !34
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds i32, ptr %40, i64 %33
  store i32 %36, ptr %41, align 4, !tbaa !25
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %32, !llvm.loop !253

44:                                               ; preds = %32
  %45 = add nuw nsw i64 %31, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %30, !llvm.loop !254

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 65
  %49 = load i16, ptr %48, align 2, !tbaa !255
  %50 = sext i16 %49 to i32
  store i32 %50, ptr %27, align 4, !tbaa !115
  %51 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %52 = load i32, ptr %51, align 4, !tbaa !149
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %126, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %56 = load i32, ptr %55, align 8, !tbaa !91
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %126

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %60 = load i32, ptr %59, align 8, !tbaa !51
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %126

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %64 = load i32, ptr %63, align 4, !tbaa !49
  br label %65

65:                                               ; preds = %62, %92
  %66 = phi i32 [ %60, %62 ], [ %93, %92 ]
  %67 = phi i32 [ %64, %62 ], [ %94, %92 ]
  %68 = phi i64 [ 0, %62 ], [ %95, %92 ]
  %69 = icmp sgt i32 %67, 0
  br i1 %69, label %75, label %92

70:                                               ; preds = %92
  %71 = icmp sgt i32 %93, 0
  br i1 %71, label %72, label %126

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %74 = load i32, ptr %73, align 4, !tbaa !49
  br label %98

75:                                               ; preds = %65, %75
  %76 = phi i64 [ %86, %75 ], [ 0, %65 ]
  %77 = load ptr, ptr %1, align 8, !tbaa !99
  %78 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %77) #18
  %79 = load i32, ptr %28, align 4, !tbaa !112
  %80 = load ptr, ptr %29, align 8, !tbaa !34
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = getelementptr inbounds ptr, ptr %82, i64 %68
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  %85 = getelementptr inbounds i32, ptr %84, i64 %76
  store i32 %79, ptr %85, align 4, !tbaa !25
  %86 = add nuw nsw i64 %76, 1
  %87 = load i32, ptr %63, align 4, !tbaa !49
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %75, label %90, !llvm.loop !256

90:                                               ; preds = %75
  %91 = load i32, ptr %59, align 8, !tbaa !51
  br label %92

92:                                               ; preds = %90, %65
  %93 = phi i32 [ %91, %90 ], [ %66, %65 ]
  %94 = phi i32 [ %87, %90 ], [ %67, %65 ]
  %95 = add nuw nsw i64 %68, 1
  %96 = sext i32 %93 to i64
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %65, label %70, !llvm.loop !257

98:                                               ; preds = %72, %120
  %99 = phi i32 [ %93, %72 ], [ %121, %120 ]
  %100 = phi i32 [ %74, %72 ], [ %122, %120 ]
  %101 = phi i64 [ 0, %72 ], [ %123, %120 ]
  %102 = icmp sgt i32 %100, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98, %103
  %104 = phi i64 [ %114, %103 ], [ 0, %98 ]
  %105 = load ptr, ptr %1, align 8, !tbaa !99
  %106 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %105) #18
  %107 = load i32, ptr %28, align 4, !tbaa !112
  %108 = load ptr, ptr %29, align 8, !tbaa !34
  %109 = getelementptr inbounds ptr, ptr %108, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = getelementptr inbounds ptr, ptr %110, i64 %101
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = getelementptr inbounds i32, ptr %112, i64 %104
  store i32 %107, ptr %113, align 4, !tbaa !25
  %114 = add nuw nsw i64 %104, 1
  %115 = load i32, ptr %73, align 4, !tbaa !49
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %103, label %118, !llvm.loop !258

118:                                              ; preds = %103
  %119 = load i32, ptr %59, align 8, !tbaa !51
  br label %120

120:                                              ; preds = %118, %98
  %121 = phi i32 [ %119, %118 ], [ %99, %98 ]
  %122 = phi i32 [ %115, %118 ], [ %100, %98 ]
  %123 = add nuw nsw i64 %101, 1
  %124 = sext i32 %121 to i64
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %98, label %126, !llvm.loop !259

126:                                              ; preds = %120, %58, %70, %47, %54, %12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @reset_mv_info(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.pic_motion_params, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 -1, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.pic_motion_params, ptr %0, i64 0, i32 2, i64 1
  store i8 -1, ptr %3, align 1, !tbaa !26
  ret void
}

; Function Attrs: optsize
declare void @readIntraPredMode_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare i32 @readSyntaxElement_Intra4x4PredictionMode(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @get4x4Neighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @readCIPredMode_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @readIPCM_CABAC(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_decoding_engine_IPCM(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %3 = load i32, ptr %2, align 8, !tbaa !107
  switch i32 %3, label %5 [
    i32 0, label %7
    i32 1, label %4
  ]

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  tail call void @exit(i32 noundef 1) #20
  unreachable

7:                                                ; preds = %1, %4
  %8 = phi i64 [ 3, %4 ], [ 1, %1 ]
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %19, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.datapartition, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = load i32, ptr %14, align 8, !tbaa !260
  %16 = getelementptr inbounds %struct.datapartition, ptr %12, i64 %11, i32 1
  %17 = getelementptr inbounds %struct.bit_stream, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !261
  tail call void @arideco_start_decoding(ptr noundef nonnull %16, ptr noundef %18, i32 noundef %15, ptr noundef nonnull %14) #18
  %19 = add nuw nsw i64 %11, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %10, !llvm.loop !262

21:                                               ; preds = %10
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @arideco_start_decoding(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_ipcm(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_intra16x16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_intra4x4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_intra8x8(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_skip(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_p_inter16x16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_p_inter16x8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_p_inter8x16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_p_inter8x8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_sp_skip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @read_skip_flag_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @readMB_typeInfo_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @readB8_typeInfo_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_coeffs(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %12 = load i32, ptr %11, align 4, !tbaa !37
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  tail call fastcc void @fast_memset(ptr noundef %17, i32 noundef 48) #17
  br label %18

18:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare i32 @mb_pred_b_d8x8temporal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_b_d4x4temporal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_b_d8x8spatial(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_b_d4x4spatial(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mb_pred_b_inter8x8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @readMB_typeInfo_CABAC_i_slice(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @read_CBP_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_delta_quant(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  store i32 %3, ptr %0, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 57
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !26
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %13
  %15 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %14, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !102
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %4
  %26 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 8
  store ptr @linfo_se, ptr %26, align 8, !tbaa !104
  br label %29

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 9
  store ptr @read_dQuant_CABAC, ptr %28, align 8, !tbaa !105
  br label %29

29:                                               ; preds = %27, %25
  %30 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %13, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = tail call i32 %31(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %14) #18
  %33 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !112
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 24
  store i16 %35, ptr %36, align 8, !tbaa !66
  %37 = shl i32 %34, 16
  %38 = ashr exact i32 %37, 16
  %39 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 67
  %40 = load i32, ptr %39, align 4, !tbaa !29
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 -26, %41
  %43 = icmp slt i32 %38, %42
  %44 = add nsw i32 %41, 25
  %45 = icmp sgt i32 %38, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 500) #18
  %48 = load i16, ptr %36, align 8, !tbaa !66
  %49 = load i32, ptr %39, align 4, !tbaa !29
  br label %50

50:                                               ; preds = %29, %47
  %51 = phi i32 [ %40, %29 ], [ %49, %47 ]
  %52 = phi i16 [ %35, %29 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 29
  %54 = load i32, ptr %53, align 4, !tbaa !110
  %55 = sext i16 %52 to i32
  %56 = shl nsw i32 %51, 1
  %57 = add i32 %54, 52
  %58 = add i32 %57, %55
  %59 = add nsw i32 %58, %56
  %60 = add nsw i32 %51, 52
  %61 = srem i32 %59, %60
  %62 = sub nsw i32 %61, %51
  store i32 %62, ptr %53, align 4, !tbaa !110
  tail call void @update_qp(ptr noundef nonnull %1, i32 noundef %62) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_dp_neighbors(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 160
  %7 = load ptr, ptr %6, align 8, !tbaa !263
  %8 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 81, i64 1
  call void %7(ptr noundef %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %3) #18
  %9 = load ptr, ptr %6, align 8, !tbaa !263
  call void %9(ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %8, ptr noundef nonnull %2) #18
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %15, i64 0, i32 30
  %17 = load i32, ptr %16, align 4, !tbaa !125
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %13, %1
  %20 = load i32, ptr %3, align 4, !tbaa !227
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !236
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %27, i32 23
  %29 = load i8, ptr %28, align 1, !tbaa !140
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %31 = load i8, ptr %30, align 1, !tbaa !140
  %32 = or i8 %31, %29
  store i8 %32, ptr %30, align 1, !tbaa !140
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, ptr %2, align 4, !tbaa !227
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !236
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.macroblock, ptr %38, i64 %41, i32 23
  %43 = load i8, ptr %42, align 1, !tbaa !140
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %45 = load i8, ptr %44, align 1, !tbaa !140
  %46 = or i8 %45, %43
  store i8 %46, ptr %44, align 1, !tbaa !140
  br label %47

47:                                               ; preds = %33, %36, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @linfo_levrun_inter(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @readRunLevel_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @itrans_2(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #17
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #17
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 2) #17
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 3) #17
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #17
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #17
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 2) #17
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 3) #17
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %9 = load i16, ptr %8, align 8, !tbaa !65
  %10 = and i16 %9, -5
  %11 = icmp eq i16 %10, 10
  %12 = zext i1 %11 to i32
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %13
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 105
  %20 = load i32, ptr %19, align 8, !tbaa !91
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %6
  %23 = select i1 %11, i32 1, i32 5
  %24 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %23, ptr %24, align 8, !tbaa !141
  br label %32

25:                                               ; preds = %16
  %26 = icmp eq i32 %2, 1
  %27 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  br i1 %26, label %28, label %30

28:                                               ; preds = %25
  %29 = select i1 %11, i32 11, i32 15
  store i32 %29, ptr %27, align 8, !tbaa !141
  br label %32

30:                                               ; preds = %25
  %31 = select i1 %11, i32 17, i32 21
  store i32 %31, ptr %27, align 8, !tbaa !141
  br label %32

32:                                               ; preds = %28, %30, %22
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %34 = load i32, ptr %33, align 4, !tbaa !31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %168

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  br label %38

38:                                               ; preds = %36, %167
  %39 = phi i1 [ true, %36 ], [ false, %167 ]
  %40 = phi i64 [ 0, %36 ], [ 8, %167 ]
  %41 = load ptr, ptr %37, align 8, !tbaa !34
  %42 = getelementptr inbounds ptr, ptr %41, i64 %13
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 %40
  %45 = lshr exact i64 %40, 2
  %46 = trunc i64 %40 to i32
  br label %47

47:                                               ; preds = %38, %166
  %48 = phi i1 [ true, %38 ], [ false, %166 ]
  %49 = phi i64 [ 0, %38 ], [ 8, %166 ]
  %50 = lshr exact i64 %49, 3
  %51 = or disjoint i64 %50, %45
  %52 = trunc i64 %51 to i32
  %53 = shl nuw nsw i32 1, %52
  %54 = and i32 %53, %5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %166, label %56

56:                                               ; preds = %47
  %57 = trunc i64 %49 to i32
  tail call fastcc void @readCompCoeff4x4SMB_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %46, i32 noundef %57, i32 noundef %12, ptr noundef nonnull %14) #17
  switch i16 %9, label %59 [
    i16 14, label %58
    i16 10, label %58
  ]

58:                                               ; preds = %56, %56
  br label %111

59:                                               ; preds = %56, %108
  %60 = phi i64 [ %109, %108 ], [ 0, %56 ]
  %61 = getelementptr inbounds ptr, ptr %44, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds i32, ptr %62, i64 %49
  %64 = and i64 %60, 3
  %65 = getelementptr inbounds [4 x i32], ptr %3, i64 %64
  %66 = getelementptr inbounds [4 x i32], ptr %3, i64 %64, i64 1
  %67 = getelementptr inbounds [4 x i32], ptr %3, i64 %64, i64 2
  %68 = getelementptr inbounds [4 x i32], ptr %3, i64 %64, i64 3
  br label %69

69:                                               ; preds = %59, %106
  %70 = phi ptr [ %63, %59 ], [ %107, %106 ]
  %71 = phi i1 [ true, %59 ], [ false, %106 ]
  %72 = load i32, ptr %70, align 4, !tbaa !25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %65, align 4, !tbaa !25
  %76 = mul nsw i32 %75, %72
  %77 = shl i32 %76, %4
  %78 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %77, i32 noundef 4) #17, !range !33
  store i32 %78, ptr %70, align 4, !tbaa !25
  br label %79

79:                                               ; preds = %74, %69
  %80 = getelementptr inbounds i32, ptr %70, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !25
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %66, align 4, !tbaa !25
  %85 = mul nsw i32 %84, %81
  %86 = shl i32 %85, %4
  %87 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %86, i32 noundef 4) #17, !range !33
  store i32 %87, ptr %80, align 4, !tbaa !25
  br label %88

88:                                               ; preds = %83, %79
  %89 = getelementptr inbounds i32, ptr %70, i64 2
  %90 = load i32, ptr %89, align 4, !tbaa !25
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr %67, align 4, !tbaa !25
  %94 = mul nsw i32 %93, %90
  %95 = shl i32 %94, %4
  %96 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %95, i32 noundef 4) #17, !range !33
  store i32 %96, ptr %89, align 4, !tbaa !25
  br label %97

97:                                               ; preds = %92, %88
  %98 = getelementptr inbounds i32, ptr %70, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !25
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %68, align 4, !tbaa !25
  %103 = mul nsw i32 %102, %99
  %104 = shl i32 %103, %4
  %105 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %104, i32 noundef 4) #17, !range !33
  store i32 %105, ptr %98, align 4, !tbaa !25
  br label %106

106:                                              ; preds = %101, %97
  %107 = getelementptr inbounds i32, ptr %70, i64 4
  br i1 %71, label %69, label %108, !llvm.loop !264

108:                                              ; preds = %106
  %109 = add nuw nsw i64 %60, 1
  %110 = icmp eq i64 %109, 8
  br i1 %110, label %166, label %59, !llvm.loop !265

111:                                              ; preds = %58, %163
  %112 = phi i64 [ %164, %163 ], [ 0, %58 ]
  %113 = getelementptr inbounds ptr, ptr %44, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = getelementptr inbounds i32, ptr %114, i64 %49
  %116 = and i64 %112, 3
  %117 = icmp eq i64 %116, 0
  %118 = and i64 %112, 3
  %119 = getelementptr inbounds [4 x i32], ptr %3, i64 %118
  %120 = getelementptr inbounds [4 x i32], ptr %3, i64 %118, i64 1
  %121 = getelementptr inbounds [4 x i32], ptr %3, i64 %118, i64 2
  %122 = getelementptr inbounds [4 x i32], ptr %3, i64 %118, i64 3
  br label %123

123:                                              ; preds = %111, %161
  %124 = phi ptr [ %115, %111 ], [ %162, %161 ]
  %125 = phi i1 [ true, %111 ], [ false, %161 ]
  br i1 %117, label %134, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %124, align 4, !tbaa !25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %119, align 4, !tbaa !25
  %131 = mul nsw i32 %130, %127
  %132 = shl i32 %131, %4
  %133 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %132, i32 noundef 4) #17, !range !33
  store i32 %133, ptr %124, align 4, !tbaa !25
  br label %134

134:                                              ; preds = %129, %126, %123
  %135 = getelementptr inbounds i32, ptr %124, i64 1
  %136 = load i32, ptr %135, align 4, !tbaa !25
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %120, align 4, !tbaa !25
  %140 = mul nsw i32 %139, %136
  %141 = shl i32 %140, %4
  %142 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %141, i32 noundef 4) #17, !range !33
  store i32 %142, ptr %135, align 4, !tbaa !25
  br label %143

143:                                              ; preds = %138, %134
  %144 = getelementptr inbounds i32, ptr %124, i64 2
  %145 = load i32, ptr %144, align 4, !tbaa !25
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr %121, align 4, !tbaa !25
  %149 = mul nsw i32 %148, %145
  %150 = shl i32 %149, %4
  %151 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %150, i32 noundef 4) #17, !range !33
  store i32 %151, ptr %144, align 4, !tbaa !25
  br label %152

152:                                              ; preds = %147, %143
  %153 = getelementptr inbounds i32, ptr %124, i64 3
  %154 = load i32, ptr %153, align 4, !tbaa !25
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr %122, align 4, !tbaa !25
  %158 = mul nsw i32 %157, %154
  %159 = shl i32 %158, %4
  %160 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %159, i32 noundef 4) #17, !range !33
  store i32 %160, ptr %153, align 4, !tbaa !25
  br label %161

161:                                              ; preds = %156, %152
  %162 = getelementptr inbounds i32, ptr %124, i64 4
  br i1 %125, label %123, label %163, !llvm.loop !266

163:                                              ; preds = %161
  %164 = add nuw nsw i64 %112, 1
  %165 = icmp eq i64 %164, 8
  br i1 %165, label %166, label %111, !llvm.loop !267

166:                                              ; preds = %163, %108, %47
  br i1 %48, label %47, label %167, !llvm.loop !268

167:                                              ; preds = %166
  br i1 %39, label %38, label %183, !llvm.loop !269

168:                                              ; preds = %32, %182
  %169 = phi i1 [ false, %182 ], [ true, %32 ]
  %170 = phi i32 [ 8, %182 ], [ 0, %32 ]
  %171 = lshr exact i32 %170, 2
  br label %172

172:                                              ; preds = %168, %181
  %173 = phi i1 [ true, %168 ], [ false, %181 ]
  %174 = phi i32 [ 0, %168 ], [ 8, %181 ]
  %175 = lshr exact i32 %174, 3
  %176 = or disjoint i32 %175, %171
  %177 = shl nuw nsw i32 1, %176
  %178 = and i32 %177, %5
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %172
  tail call fastcc void @readCompCoeff4x4SMB_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %170, i32 noundef %174, i32 noundef %12, ptr noundef nonnull %14) #17
  br label %181

181:                                              ; preds = %172, %180
  br i1 %173, label %172, label %182, !llvm.loop !270

182:                                              ; preds = %181
  br i1 %169, label %168, label %183, !llvm.loop !271

183:                                              ; preds = %182, %167
  ret void
}

; Function Attrs: optsize
declare void @read_dQuant_CABAC(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff8x8_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = shl nuw nsw i32 1, %3
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %163, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 105
  %14 = load i32, ptr %13, align 8, !tbaa !91
  %15 = icmp ne i32 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !14
  br i1 %15, label %17, label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 46
  %19 = load i32, ptr %18, align 8, !tbaa !144
  br label %20

20:                                               ; preds = %10, %17
  %21 = phi i32 [ %19, %17 ], [ %2, %10 ]
  %22 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 42
  %23 = load i32, ptr %22, align 8, !tbaa !107
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %24
  %26 = shl i32 %3, 2
  %27 = and i32 %3, 1
  %28 = shl nuw nsw i32 %27, 1
  %29 = sub nsw i32 %26, %28
  %30 = zext nneg i32 %29 to i64
  %31 = shl i64 51, %30
  %32 = zext nneg i32 %2 to i64
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %32
  %34 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %35 = load i32, ptr %34, align 4, !tbaa !138
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %39 = load i32, ptr %38, align 8, !tbaa !109
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8
  br label %42

42:                                               ; preds = %37, %20
  %43 = phi ptr [ @FIELD_SCAN8x8, %20 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 132
  %45 = load ptr, ptr %44, align 8, !tbaa !145
  %46 = sext i32 %21 to i64
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !25
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %45, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 133
  %53 = load ptr, ptr %52, align 8, !tbaa !146
  %54 = getelementptr inbounds i32, ptr %53, i64 %49
  %55 = load i32, ptr %54, align 4, !tbaa !25
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %57 = load i32, ptr %56, align 8, !tbaa !53
  %58 = icmp eq i32 %57, 1
  %59 = sext i32 %55 to i64
  %60 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 90, i64 %46, i64 %59
  %61 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 91, i64 %46, i64 %59
  %62 = select i1 %58, ptr %60, ptr %61
  %63 = shl nuw nsw i32 %27, 3
  %64 = and i32 %26, -8
  %65 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 79
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  %67 = getelementptr inbounds ptr, ptr %66, i64 %32
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = zext nneg i32 %64 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  store i32 %63, ptr %71, align 4, !tbaa !163
  %72 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  store i32 %64, ptr %72, align 8, !tbaa !162
  %73 = icmp eq i32 %2, 0
  %74 = or i1 %73, %15
  br i1 %74, label %75, label %77

75:                                               ; preds = %42
  %76 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 2, ptr %76, align 8, !tbaa !141
  br label %82

77:                                               ; preds = %42
  %78 = icmp eq i32 %2, 1
  %79 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  br i1 %78, label %80, label %81

80:                                               ; preds = %77
  store i32 12, ptr %79, align 8, !tbaa !141
  br label %82

81:                                               ; preds = %77
  store i32 18, ptr %79, align 8, !tbaa !141
  br label %82

82:                                               ; preds = %80, %81, %75
  %83 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %83, align 8, !tbaa !105
  %84 = select i1 %58, i32 7, i32 12
  store i32 %84, ptr %1, align 8, !tbaa !95
  %85 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 57
  %86 = load ptr, ptr %85, align 8, !tbaa !97
  %87 = zext nneg i32 %84 to i64
  %88 = getelementptr inbounds i8, ptr %25, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !26
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %90
  %92 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %90, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !111
  %94 = tail call i32 %93(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %91) #18
  %95 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !112
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %163, label %98

98:                                               ; preds = %82
  %99 = load i64, ptr %33, align 8, !tbaa !32
  %100 = or i64 %99, %31
  store i64 %100, ptr %33, align 8, !tbaa !32
  %101 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !142
  %103 = shl nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %43, i64 %104
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = load i8, ptr %105, align 1, !tbaa !26
  %108 = zext i8 %107 to i32
  %109 = load i8, ptr %106, align 1, !tbaa !26
  %110 = zext i8 %109 to i64
  %111 = zext i8 %107 to i64
  %112 = getelementptr inbounds [8 x i32], ptr %62, i64 %110, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !25
  %114 = mul nsw i32 %113, %96
  %115 = shl i32 %114, %51
  %116 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %115, i32 noundef 6) #17, !range !33
  %117 = getelementptr inbounds ptr, ptr %70, i64 %110
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = add nuw nsw i32 %63, %108
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %118, i64 %120
  store i32 %116, ptr %121, align 4, !tbaa !25
  %122 = load i32, ptr %56, align 8, !tbaa !53
  %123 = icmp eq i32 %122, 1
  %124 = select i1 %123, i32 9, i32 14
  store i32 %124, ptr %1, align 8, !tbaa !95
  %125 = load ptr, ptr %85, align 8, !tbaa !97
  %126 = zext nneg i32 %124 to i64
  %127 = getelementptr inbounds i8, ptr %25, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !26
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds %struct.datapartition, ptr %125, i64 %129
  %131 = getelementptr inbounds %struct.datapartition, ptr %125, i64 %129, i32 2
  br label %132

132:                                              ; preds = %98, %139
  %133 = phi i32 [ 1, %98 ], [ %161, %139 ]
  %134 = phi ptr [ %105, %98 ], [ %144, %139 ]
  %135 = load ptr, ptr %131, align 8, !tbaa !111
  %136 = tail call i32 %135(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %130) #18
  %137 = load i32, ptr %95, align 4, !tbaa !112
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds i8, ptr %134, i64 2
  %141 = load i32, ptr %101, align 8, !tbaa !142
  %142 = shl nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %140, i64 %143
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  %146 = load i8, ptr %144, align 1, !tbaa !26
  %147 = zext i8 %146 to i32
  %148 = load i8, ptr %145, align 1, !tbaa !26
  %149 = zext i8 %148 to i64
  %150 = zext i8 %146 to i64
  %151 = getelementptr inbounds [8 x i32], ptr %62, i64 %149, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !25
  %153 = mul nsw i32 %152, %137
  %154 = shl i32 %153, %51
  %155 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %154, i32 noundef 6) #17, !range !33
  %156 = getelementptr inbounds ptr, ptr %70, i64 %149
  %157 = load ptr, ptr %156, align 8, !tbaa !35
  %158 = add nuw nsw i32 %63, %147
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %157, i64 %159
  store i32 %155, ptr %160, align 4, !tbaa !25
  %161 = add nuw nsw i32 %133, 1
  %162 = icmp ult i32 %133, 64
  br i1 %162, label %132, label %163, !llvm.loop !272

163:                                              ; preds = %132, %139, %82, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = shl nuw nsw i32 1, %3
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %104, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 42
  %15 = load i32, ptr %14, align 8, !tbaa !107
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %16
  %18 = shl i32 %3, 2
  %19 = and i32 %3, 1
  %20 = shl nuw nsw i32 %19, 1
  %21 = sub nsw i32 %18, %20
  %22 = zext nneg i32 %21 to i64
  %23 = shl i64 51, %22
  %24 = zext nneg i32 %2 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %24
  %26 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %27 = load i32, ptr %26, align 4, !tbaa !138
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %31 = load i32, ptr %30, align 8, !tbaa !109
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8
  br label %34

34:                                               ; preds = %29, %10
  %35 = phi ptr [ @FIELD_SCAN8x8, %10 ], [ %33, %29 ]
  %36 = shl nuw nsw i32 %19, 3
  %37 = and i32 %18, -8
  %38 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 79
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = getelementptr inbounds ptr, ptr %39, i64 %24
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = zext nneg i32 %37 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  store i32 %36, ptr %44, align 4, !tbaa !163
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  store i32 %37, ptr %45, align 8, !tbaa !162
  %46 = icmp eq i32 %2, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 105
  %49 = load i32, ptr %48, align 8, !tbaa !91
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %34
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 2, ptr %52, align 8, !tbaa !141
  br label %58

53:                                               ; preds = %47
  %54 = icmp eq i32 %2, 1
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  br i1 %54, label %56, label %57

56:                                               ; preds = %53
  store i32 12, ptr %55, align 8, !tbaa !141
  br label %58

57:                                               ; preds = %53
  store i32 18, ptr %55, align 8, !tbaa !141
  br label %58

58:                                               ; preds = %56, %57, %51
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %61 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 57
  %62 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %63 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  br label %64

64:                                               ; preds = %58, %84
  %65 = phi ptr [ %35, %58 ], [ %92, %84 ]
  %66 = phi i32 [ 0, %58 ], [ %102, %84 ]
  %67 = load i32, ptr %60, align 8, !tbaa !53
  %68 = icmp eq i32 %67, 1
  %69 = icmp eq i32 %66, 0
  %70 = select i1 %69, i32 7, i32 9
  %71 = select i1 %69, i32 12, i32 14
  %72 = select i1 %68, i32 %70, i32 %71
  store i32 %72, ptr %1, align 8, !tbaa !95
  %73 = load ptr, ptr %61, align 8, !tbaa !97
  %74 = zext nneg i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %17, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !26
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds %struct.datapartition, ptr %73, i64 %77
  store ptr @readRunLevel_CABAC, ptr %59, align 8, !tbaa !105
  %79 = getelementptr inbounds %struct.datapartition, ptr %73, i64 %77, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !111
  %81 = tail call i32 %80(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %78) #18
  %82 = load i32, ptr %62, align 4, !tbaa !112
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %64
  %85 = load i32, ptr %63, align 8, !tbaa !142
  %86 = shl nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %65, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  %90 = load i8, ptr %88, align 1, !tbaa !26
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds i8, ptr %88, i64 2
  %93 = load i8, ptr %89, align 1, !tbaa !26
  %94 = load i64, ptr %25, align 8, !tbaa !32
  %95 = or i64 %94, %23
  store i64 %95, ptr %25, align 8, !tbaa !32
  %96 = zext i8 %93 to i64
  %97 = getelementptr inbounds ptr, ptr %43, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = add nuw nsw i32 %36, %91
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %98, i64 %100
  store i32 %82, ptr %101, align 4, !tbaa !25
  %102 = add nuw nsw i32 %66, 1
  %103 = icmp ult i32 %66, 64
  br i1 %103, label %64, label %104, !llvm.loop !273

104:                                              ; preds = %64, %84, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff4x4SMB_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #4 {
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !107
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !138
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %20 = load i32, ptr %19, align 8, !tbaa !109
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi ptr [ @FIELD_SCAN, %7 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = zext nneg i32 %2 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %32 = zext nneg i32 %5 to i64
  %33 = getelementptr inbounds [2 x i8], ptr %24, i64 %32
  %34 = icmp eq i32 %5, 0
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %36 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %37 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 8
  %38 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  %39 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %40 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %41 = add nsw i32 %4, 4
  %42 = add nsw i32 %3, 4
  br label %43

43:                                               ; preds = %23, %141
  %44 = phi i32 [ %3, %23 ], [ %142, %141 ]
  store i32 %44, ptr %30, align 8, !tbaa !162
  br label %45

45:                                               ; preds = %43, %138
  %46 = phi i32 [ %4, %43 ], [ %139, %138 ]
  store i32 %46, ptr %31, align 4, !tbaa !163
  br i1 %34, label %47, label %92

47:                                               ; preds = %45
  %48 = load i32, ptr %35, align 8, !tbaa !53
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 12, i32 7
  store i32 %50, ptr %1, align 8, !tbaa !95
  %51 = load ptr, ptr %36, align 8, !tbaa !97
  %52 = zext nneg i32 %50 to i64
  %53 = getelementptr inbounds i8, ptr %14, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !26
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds %struct.datapartition, ptr %51, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !99
  %58 = getelementptr inbounds %struct.bit_stream, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !102
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  store ptr @linfo_levrun_inter, ptr %37, align 8, !tbaa !104
  br label %63

62:                                               ; preds = %47
  store ptr @readRunLevel_CABAC, ptr %38, align 8, !tbaa !105
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds %struct.datapartition, ptr %51, i64 %55, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !111
  %66 = tail call i32 %65(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %56) #18
  %67 = load i32, ptr %39, align 4, !tbaa !112
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %138, label %69

69:                                               ; preds = %63
  %70 = load i32, ptr %40, align 8, !tbaa !142
  %71 = shl nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %33, i64 %72
  %74 = getelementptr inbounds i8, ptr %73, i64 1
  %75 = load i8, ptr %73, align 1, !tbaa !26
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds i8, ptr %73, i64 2
  %78 = load i8, ptr %74, align 1, !tbaa !26
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %46, 2
  %81 = add nsw i32 %80, %44
  %82 = tail call fastcc i64 @i64_power2(i32 noundef %81) #17
  %83 = load i64, ptr %6, align 8, !tbaa !32
  %84 = or i64 %83, %82
  store i64 %84, ptr %6, align 8, !tbaa !32
  %85 = add nsw i32 %44, %79
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %29, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !35
  %89 = add nsw i32 %46, %76
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %88, i64 %90
  store i32 %67, ptr %91, align 4, !tbaa !25
  br label %92

92:                                               ; preds = %69, %45
  %93 = phi ptr [ %33, %45 ], [ %77, %69 ]
  %94 = load i32, ptr %35, align 8, !tbaa !53
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 14, i32 9
  store i32 %96, ptr %1, align 8, !tbaa !95
  %97 = load ptr, ptr %36, align 8, !tbaa !97
  %98 = zext nneg i32 %96 to i64
  %99 = getelementptr inbounds i8, ptr %14, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !26
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.datapartition, ptr %97, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !99
  %104 = getelementptr inbounds %struct.bit_stream, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %92
  store ptr @linfo_levrun_inter, ptr %37, align 8, !tbaa !104
  br label %109

108:                                              ; preds = %92
  store ptr @readRunLevel_CABAC, ptr %38, align 8, !tbaa !105
  br label %109

109:                                              ; preds = %108, %107
  %110 = getelementptr inbounds %struct.datapartition, ptr %97, i64 %101, i32 2
  br label %111

111:                                              ; preds = %109, %118
  %112 = phi ptr [ %93, %109 ], [ %126, %118 ]
  %113 = phi i32 [ 1, %109 ], [ %136, %118 ]
  %114 = load ptr, ptr %110, align 8, !tbaa !111
  %115 = tail call i32 %114(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %102) #18
  %116 = load i32, ptr %39, align 4, !tbaa !112
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %111
  %119 = load i32, ptr %40, align 8, !tbaa !142
  %120 = shl nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %112, i64 %121
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  %124 = load i8, ptr %122, align 1, !tbaa !26
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds i8, ptr %122, i64 2
  %127 = load i8, ptr %123, align 1, !tbaa !26
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %44, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %29, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  %133 = add nsw i32 %46, %125
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %132, i64 %134
  store i32 %116, ptr %135, align 4, !tbaa !25
  %136 = add nuw nsw i32 %113, 1
  %137 = icmp ult i32 %113, 16
  br i1 %137, label %111, label %138, !llvm.loop !274

138:                                              ; preds = %111, %118, %63
  %139 = add nsw i32 %46, 4
  %140 = icmp slt i32 %46, %41
  br i1 %140, label %45, label %141, !llvm.loop !275

141:                                              ; preds = %138
  %142 = add nsw i32 %44, 4
  %143 = icmp slt i32 %44, %42
  br i1 %143, label %43, label %144, !llvm.loop !276

144:                                              ; preds = %141
  ret void
}

; Function Attrs: optsize
declare void @linfo_levrun_c2x2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare void @ihadamard2x2(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCoeff4x4_CAVLC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #4 {
  %8 = alloca %struct.syntaxelement, align 8
  %9 = alloca [15 x i8], align 1
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #19
  %15 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 42
  %16 = load i32, ptr %15, align 8, !tbaa !107
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %17
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %9) #19
  switch i32 %1, label %38 [
    i32 0, label %19
    i32 1, label %39
    i32 2, label %24
    i32 3, label %25
    i32 4, label %91
    i32 5, label %30
    i32 8, label %31
    i32 9, label %36
    i32 10, label %37
    i32 6, label %176
    i32 7, label %64
  ]

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = icmp eq i32 %21, 1
  %23 = select i1 %22, i32 9, i32 14
  br label %39

24:                                               ; preds = %7
  br label %39

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, i32 9, i32 14
  br label %91

30:                                               ; preds = %7
  br label %91

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !53
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 9, i32 14
  br label %91

36:                                               ; preds = %7
  br label %91

37:                                               ; preds = %7
  br label %91

38:                                               ; preds = %7
  unreachable

39:                                               ; preds = %7, %19, %24
  %40 = phi i32 [ 9, %24 ], [ %23, %19 ], [ 7, %7 ]
  %41 = phi i32 [ 15, %24 ], [ 16, %19 ], [ 16, %7 ]
  %42 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %43 = load ptr, ptr %42, align 8, !tbaa !184
  %44 = sext i32 %14 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = sext i32 %3 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = sext i32 %2 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  store i8 0, ptr %52, align 1, !tbaa !26
  store i32 %40, ptr %8, align 8, !tbaa !95
  %53 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = zext nneg i32 %40 to i64
  %56 = getelementptr inbounds i8, ptr %18, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !26
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.datapartition, ptr %54, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !99
  %61 = shl i32 %2, 2
  %62 = shl i32 %3, 2
  %63 = tail call i32 @predict_nnz(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %61, i32 noundef %62) #17, !range !277
  br label %123

64:                                               ; preds = %7
  %65 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %66 = load i32, ptr %65, align 8, !tbaa !53
  %67 = icmp eq i32 %66, 1
  %68 = select i1 %67, i32 10, i32 15
  %69 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %70 = load ptr, ptr %69, align 8, !tbaa !184
  %71 = sext i32 %14 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = sext i32 %3 to i64
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  %78 = sext i32 %2 to i64
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  store i8 0, ptr %79, align 1, !tbaa !26
  store i32 %68, ptr %8, align 8, !tbaa !95
  %80 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %81 = load ptr, ptr %80, align 8, !tbaa !97
  %82 = zext nneg i32 %68 to i64
  %83 = getelementptr inbounds i8, ptr %18, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !26
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds %struct.datapartition, ptr %81, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !99
  %88 = shl i32 %3, 2
  %89 = add i32 %88, -16
  %90 = tail call i32 @predict_nnz_chroma(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %89) #17, !range !277
  br label %123

91:                                               ; preds = %7, %37, %36, %31, %30, %25
  %92 = phi i64 [ 2, %37 ], [ 2, %36 ], [ 2, %31 ], [ 1, %30 ], [ 1, %25 ], [ 1, %7 ]
  %93 = phi i32 [ 9, %37 ], [ 7, %36 ], [ %35, %31 ], [ 9, %30 ], [ %29, %25 ], [ 7, %7 ]
  %94 = phi i32 [ 15, %37 ], [ 16, %36 ], [ 16, %31 ], [ 15, %30 ], [ 16, %25 ], [ 16, %7 ]
  %95 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %96 = load ptr, ptr %95, align 8, !tbaa !184
  %97 = sext i32 %14 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = getelementptr inbounds ptr, ptr %99, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = sext i32 %3 to i64
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = sext i32 %2 to i64
  %106 = getelementptr inbounds i8, ptr %104, i64 %105
  store i8 0, ptr %106, align 1, !tbaa !26
  store i32 %93, ptr %8, align 8, !tbaa !95
  %107 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %108 = load ptr, ptr %107, align 8, !tbaa !97
  %109 = zext nneg i32 %93 to i64
  %110 = getelementptr inbounds i8, ptr %18, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !26
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds %struct.datapartition, ptr %108, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !99
  %115 = add nsw i32 %1, -3
  %116 = icmp ult i32 %115, 3
  %117 = shl i32 %2, 2
  %118 = shl i32 %3, 2
  br i1 %116, label %119, label %121

119:                                              ; preds = %91
  %120 = tail call i32 @predict_nnz(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %117, i32 noundef %118) #17, !range !277
  br label %123

121:                                              ; preds = %91
  %122 = tail call i32 @predict_nnz(ptr noundef nonnull %0, i32 noundef 8, i32 noundef %117, i32 noundef %118) #17, !range !277
  br label %123

123:                                              ; preds = %39, %64, %119, %121
  %124 = phi ptr [ %114, %119 ], [ %114, %121 ], [ %60, %39 ], [ %87, %64 ]
  %125 = phi i32 [ %94, %119 ], [ %94, %121 ], [ %41, %39 ], [ 15, %64 ]
  %126 = phi i32 [ %120, %119 ], [ %122, %121 ], [ %63, %39 ], [ %90, %64 ]
  %127 = icmp ult i32 %126, 2
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = icmp ult i32 %126, 4
  br i1 %129, label %133, label %130

130:                                              ; preds = %128
  %131 = icmp ult i32 %126, 8
  %132 = select i1 %131, i32 2, i32 3
  br label %133

133:                                              ; preds = %130, %128, %123
  %134 = phi i32 [ 0, %123 ], [ 1, %128 ], [ %132, %130 ]
  %135 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  store i32 %134, ptr %135, align 4, !tbaa !112
  %136 = call i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr noundef nonnull %8, ptr noundef %124, ptr noundef nonnull %9) #18
  %137 = load <2 x i32>, ptr %135, align 4, !tbaa !25
  switch i32 %1, label %152 [
    i32 7, label %138
    i32 2, label %138
    i32 1, label %138
    i32 0, label %138
  ]

138:                                              ; preds = %133, %133, %133, %133
  %139 = bitcast <2 x i32> %137 to <8 x i8>
  %140 = extractelement <8 x i8> %139, i64 0
  %141 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %142 = load ptr, ptr %141, align 8, !tbaa !184
  %143 = sext i32 %14 to i64
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = load ptr, ptr %145, align 8, !tbaa !35
  %147 = sext i32 %3 to i64
  %148 = getelementptr inbounds ptr, ptr %146, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = sext i32 %2 to i64
  %151 = getelementptr inbounds i8, ptr %149, i64 %150
  store i8 %140, ptr %151, align 1, !tbaa !26
  br label %205

152:                                              ; preds = %133
  %153 = add nsw i32 %1, -3
  %154 = icmp ult i32 %153, 3
  %155 = bitcast <2 x i32> %137 to <8 x i8>
  %156 = extractelement <8 x i8> %155, i64 0
  %157 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %158 = load ptr, ptr %157, align 8, !tbaa !184
  %159 = sext i32 %14 to i64
  %160 = getelementptr inbounds ptr, ptr %158, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  %162 = sext i32 %3 to i64
  %163 = sext i32 %2 to i64
  br i1 %154, label %164, label %170

164:                                              ; preds = %152
  %165 = getelementptr inbounds ptr, ptr %161, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !35
  %167 = getelementptr inbounds ptr, ptr %166, i64 %162
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = getelementptr inbounds i8, ptr %168, i64 %163
  store i8 %156, ptr %169, align 1, !tbaa !26
  br label %205

170:                                              ; preds = %152
  %171 = getelementptr inbounds ptr, ptr %161, i64 2
  %172 = load ptr, ptr %171, align 8, !tbaa !35
  %173 = getelementptr inbounds ptr, ptr %172, i64 %162
  %174 = load ptr, ptr %173, align 8, !tbaa !35
  %175 = getelementptr inbounds i8, ptr %174, i64 %163
  store i8 %156, ptr %175, align 1, !tbaa !26
  br label %205

176:                                              ; preds = %7
  %177 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 76
  %178 = load i32, ptr %177, align 8, !tbaa !174
  %179 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %180 = load i32, ptr %179, align 8, !tbaa !53
  %181 = icmp eq i32 %180, 1
  %182 = select i1 %181, i32 8, i32 13
  %183 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %184 = load ptr, ptr %183, align 8, !tbaa !184
  %185 = sext i32 %14 to i64
  %186 = getelementptr inbounds ptr, ptr %184, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !35
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = sext i32 %3 to i64
  %190 = getelementptr inbounds ptr, ptr %188, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  %192 = sext i32 %2 to i64
  %193 = getelementptr inbounds i8, ptr %191, i64 %192
  store i8 0, ptr %193, align 1, !tbaa !26
  store i32 %182, ptr %8, align 8, !tbaa !95
  %194 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %195 = load ptr, ptr %194, align 8, !tbaa !97
  %196 = zext nneg i32 %182 to i64
  %197 = getelementptr inbounds i8, ptr %18, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !26
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds %struct.datapartition, ptr %195, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !99
  %202 = call i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef %12, ptr noundef nonnull %8, ptr noundef %201) #18
  %203 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  %204 = load <2 x i32>, ptr %203, align 4, !tbaa !25
  br label %205

205:                                              ; preds = %138, %170, %164, %176
  %206 = phi ptr [ %201, %176 ], [ %124, %138 ], [ %124, %164 ], [ %124, %170 ]
  %207 = phi i32 [ %178, %176 ], [ %125, %138 ], [ %125, %164 ], [ %125, %170 ]
  %208 = phi i1 [ false, %176 ], [ true, %138 ], [ true, %164 ], [ true, %170 ]
  %209 = phi <2 x i32> [ %204, %176 ], [ %137, %138 ], [ %137, %164 ], [ %137, %170 ]
  %210 = sext i32 %207 to i64
  %211 = shl nsw i64 %210, 2
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %211, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 %211, i1 false)
  %212 = extractelement <2 x i32> %209, i64 0
  store i32 %212, ptr %6, align 4, !tbaa !25
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %373, label %214

214:                                              ; preds = %205
  %215 = extractelement <2 x i32> %209, i64 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = add nsw i32 %212, -1
  %219 = sub nuw nsw i32 %218, %215
  br label %292

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 3
  store i32 %215, ptr %221, align 4, !tbaa !115
  %222 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %8, ptr noundef %206) #18
  %223 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 4
  %224 = load i32, ptr %223, align 8, !tbaa !278
  %225 = add i32 %212, -1
  %226 = sub nsw i32 %225, %215
  %227 = icmp sgt i32 %215, 0
  br i1 %227, label %228, label %292

228:                                              ; preds = %220
  %229 = sext i32 %225 to i64
  %230 = sext i32 %226 to i64
  %231 = add nsw i64 %229, -1
  %232 = call i64 @llvm.smin.i64(i64 %230, i64 %231)
  %233 = sub i64 %229, %232
  %234 = add i64 %233, 3
  %235 = and i64 %234, -4
  %236 = add i64 %233, -1
  %237 = insertelement <4 x i64> poison, i64 %236, i64 0
  %238 = shufflevector <4 x i64> %237, <4 x i64> poison, <4 x i32> zeroinitializer
  %239 = shufflevector <2 x i32> %209, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %240 = add nsw <4 x i32> %239, <i32 0, i32 -1, i32 -2, i32 -3>
  %241 = getelementptr i32, ptr %4, i64 -1
  %242 = getelementptr i32, ptr %4, i64 -2
  %243 = getelementptr i32, ptr %4, i64 -3
  br label %244

244:                                              ; preds = %288, %228
  %245 = phi i64 [ 0, %228 ], [ %289, %288 ]
  %246 = phi <4 x i32> [ %240, %228 ], [ %290, %288 ]
  %247 = sub i64 %229, %245
  %248 = insertelement <4 x i64> poison, i64 %245, i64 0
  %249 = shufflevector <4 x i64> %248, <4 x i64> poison, <4 x i32> zeroinitializer
  %250 = or disjoint <4 x i64> %249, <i64 0, i64 1, i64 2, i64 3>
  %251 = icmp ule <4 x i64> %250, %238
  %252 = add nsw <4 x i32> %246, <i32 -1, i32 -1, i32 -1, i32 -1>
  %253 = extractelement <4 x i1> %251, i64 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %244
  %255 = extractelement <4 x i32> %252, i64 0
  %256 = shl nuw i32 1, %255
  %257 = and i32 %256, %224
  %258 = icmp eq i32 %257, 0
  %259 = getelementptr inbounds i32, ptr %4, i64 %247
  %260 = select i1 %258, i32 1, i32 -1
  store i32 %260, ptr %259, align 4, !tbaa !25
  br label %261

261:                                              ; preds = %254, %244
  %262 = extractelement <4 x i1> %251, i64 1
  br i1 %262, label %263, label %270

263:                                              ; preds = %261
  %264 = extractelement <4 x i32> %252, i64 1
  %265 = shl nuw i32 1, %264
  %266 = and i32 %265, %224
  %267 = icmp eq i32 %266, 0
  %268 = getelementptr i32, ptr %241, i64 %247
  %269 = select i1 %267, i32 1, i32 -1
  store i32 %269, ptr %268, align 4, !tbaa !25
  br label %270

270:                                              ; preds = %263, %261
  %271 = extractelement <4 x i1> %251, i64 2
  br i1 %271, label %272, label %279

272:                                              ; preds = %270
  %273 = extractelement <4 x i32> %252, i64 2
  %274 = shl nuw i32 1, %273
  %275 = and i32 %274, %224
  %276 = icmp eq i32 %275, 0
  %277 = getelementptr i32, ptr %242, i64 %247
  %278 = select i1 %276, i32 1, i32 -1
  store i32 %278, ptr %277, align 4, !tbaa !25
  br label %279

279:                                              ; preds = %272, %270
  %280 = extractelement <4 x i1> %251, i64 3
  br i1 %280, label %281, label %288

281:                                              ; preds = %279
  %282 = extractelement <4 x i32> %252, i64 3
  %283 = shl nuw i32 1, %282
  %284 = and i32 %283, %224
  %285 = icmp eq i32 %284, 0
  %286 = getelementptr i32, ptr %243, i64 %247
  %287 = select i1 %285, i32 1, i32 -1
  store i32 %287, ptr %286, align 4, !tbaa !25
  br label %288

288:                                              ; preds = %281, %279
  %289 = add i64 %245, 4
  %290 = add <4 x i32> %246, <i32 -4, i32 -4, i32 -4, i32 -4>
  %291 = icmp eq i64 %289, %235
  br i1 %291, label %292, label %244, !llvm.loop !279

292:                                              ; preds = %288, %217, %220
  %293 = phi i32 [ %219, %217 ], [ %226, %220 ], [ %226, %288 ]
  %294 = phi i32 [ %218, %217 ], [ %225, %220 ], [ %225, %288 ]
  %295 = icmp sgt i32 %293, -1
  br i1 %295, label %296, label %338

296:                                              ; preds = %292
  %297 = icmp sgt i32 %212, 10
  %298 = icmp slt i32 %215, 3
  %299 = and i1 %297, %298
  %300 = zext i1 %299 to i32
  %301 = icmp sgt i32 %212, 3
  %302 = icmp eq i32 %215, 3
  %303 = and i1 %301, %302
  %304 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 4
  %305 = zext nneg i32 %293 to i64
  br label %306

306:                                              ; preds = %296, %321
  %307 = phi i64 [ %305, %296 ], [ %337, %321 ]
  %308 = phi i1 [ %303, %296 ], [ true, %321 ]
  %309 = phi i32 [ %300, %296 ], [ %334, %321 ]
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = call i32 @readSyntaxElement_Level_VLC0(ptr noundef nonnull %8, ptr noundef %206) #18
  br label %315

313:                                              ; preds = %306
  %314 = call i32 @readSyntaxElement_Level_VLCN(ptr noundef nonnull %8, i32 noundef %309, ptr noundef %206) #18
  br label %315

315:                                              ; preds = %313, %311
  %316 = load i32, ptr %304, align 8, !tbaa !278
  br i1 %308, label %321, label %317

317:                                              ; preds = %315
  %318 = icmp slt i32 %316, 1
  %319 = select i1 %318, i32 -1, i32 1
  %320 = add nsw i32 %319, %316
  store i32 %320, ptr %304, align 8, !tbaa !278
  br label %321

321:                                              ; preds = %317, %315
  %322 = phi i32 [ %320, %317 ], [ %316, %315 ]
  %323 = getelementptr inbounds i32, ptr %4, i64 %307
  store i32 %322, ptr %323, align 4, !tbaa !25
  %324 = call fastcc i32 @iabs(i32 noundef %322) #17
  %325 = sext i32 %309 to i64
  %326 = getelementptr inbounds [7 x i32], ptr @readCoeff4x4_CAVLC.incVlc, i64 0, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !25
  %328 = icmp sgt i32 %324, %327
  %329 = zext i1 %328 to i32
  %330 = add nsw i32 %309, %329
  %331 = icmp eq i64 %307, %305
  %332 = icmp sgt i32 %324, 3
  %333 = and i1 %331, %332
  %334 = select i1 %333, i32 2, i32 %330
  %335 = trunc i64 %307 to i32
  %336 = icmp sgt i32 %335, 0
  %337 = add nsw i64 %307, -1
  br i1 %336, label %306, label %338, !llvm.loop !280

338:                                              ; preds = %321, %292
  %339 = icmp slt i32 %212, %207
  br i1 %339, label %340, label %368

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  store i32 %294, ptr %341, align 4, !tbaa !112
  br i1 %208, label %344, label %342

342:                                              ; preds = %340
  %343 = call i32 @readSyntaxElement_TotalZerosChromaDC(ptr noundef %12, ptr noundef nonnull %8, ptr noundef %206) #18
  br label %346

344:                                              ; preds = %340
  %345 = call i32 @readSyntaxElement_TotalZeros(ptr noundef nonnull %8, ptr noundef %206) #18
  br label %346

346:                                              ; preds = %342, %344
  %347 = load i32, ptr %341, align 4, !tbaa !112
  %348 = icmp sgt i32 %347, 0
  %349 = icmp sgt i32 %212, 1
  %350 = and i1 %349, %348
  br i1 %350, label %351, label %368

351:                                              ; preds = %346
  %352 = zext nneg i32 %212 to i64
  %353 = add nsw i64 %352, -1
  br label %354

354:                                              ; preds = %351, %354
  %355 = phi i64 [ %353, %351 ], [ %363, %354 ]
  %356 = phi i32 [ %347, %351 ], [ %362, %354 ]
  %357 = add nsw i32 %356, -1
  %358 = call fastcc i32 @imin(i32 noundef %357, i32 noundef 6) #17
  store i32 %358, ptr %341, align 4, !tbaa !112
  %359 = call i32 @readSyntaxElement_Run(ptr noundef nonnull %8, ptr noundef %206) #18
  %360 = load i32, ptr %341, align 4, !tbaa !112
  %361 = getelementptr inbounds i32, ptr %5, i64 %355
  store i32 %360, ptr %361, align 4, !tbaa !25
  %362 = sub nsw i32 %356, %360
  %363 = add nsw i64 %355, -1
  %364 = icmp ne i32 %362, 0
  %365 = trunc i64 %363 to i32
  %366 = icmp ne i32 %365, 0
  %367 = select i1 %364, i1 %366, i1 false
  br i1 %367, label %354, label %368, !llvm.loop !281

368:                                              ; preds = %354, %338, %346
  %369 = phi i32 [ %294, %346 ], [ %294, %338 ], [ %365, %354 ]
  %370 = phi i32 [ %347, %346 ], [ 0, %338 ], [ %362, %354 ]
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i32, ptr %5, i64 %371
  store i32 %370, ptr %372, align 4, !tbaa !25
  br label %373

373:                                              ; preds = %368, %205
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #4 {
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi ptr [ @FIELD_SCAN, %6 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !65
  %25 = and i16 %24, -5
  %26 = icmp eq i16 %25, 10
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %27
  switch i16 %24, label %34 [
    i16 10, label %29
    i16 14, label %29
  ]

29:                                               ; preds = %21, %21
  %30 = icmp eq i32 %1, 1
  %31 = select i1 %30, i32 5, i32 10
  %32 = icmp eq i32 %1, 0
  %33 = select i1 %32, i32 2, i32 %31
  br label %39

34:                                               ; preds = %21
  %35 = icmp eq i32 %1, 1
  %36 = select i1 %35, i32 3, i32 8
  %37 = icmp eq i32 %1, 0
  %38 = select i1 %37, i32 0, i32 %36
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %33, %29 ], [ %38, %34 ]
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %42 = load i32, ptr %41, align 4, !tbaa !31
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  br i1 %43, label %48, label %45

45:                                               ; preds = %39
  %46 = xor i1 %26, true
  %47 = sext i1 %46 to i32
  br label %141

48:                                               ; preds = %39
  %49 = zext i1 %26 to i64
  %50 = getelementptr inbounds [2 x i8], ptr %22, i64 %49
  br label %51

51:                                               ; preds = %48, %140
  %52 = phi i1 [ true, %48 ], [ false, %140 ]
  %53 = phi i64 [ 0, %48 ], [ 2, %140 ]
  %54 = shl nuw nsw i64 %53, 2
  %55 = add nuw nsw i64 %54, 8
  %56 = getelementptr inbounds ptr, ptr %5, i64 %53
  %57 = or disjoint i64 %53, 1
  %58 = getelementptr inbounds ptr, ptr %5, i64 %57
  %59 = trunc i64 %54 to i32
  br label %60

60:                                               ; preds = %51, %139
  %61 = phi i1 [ true, %51 ], [ false, %139 ]
  %62 = phi i64 [ 0, %51 ], [ 2, %139 ]
  %63 = lshr exact i64 %62, 1
  %64 = or disjoint i64 %63, %53
  %65 = trunc i64 %64 to i32
  %66 = shl nuw nsw i32 1, %65
  %67 = and i32 %66, %4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %134, label %69

69:                                               ; preds = %60
  %70 = shl nuw nsw i64 %62, 2
  %71 = add nuw nsw i64 %70, 8
  %72 = trunc i64 %70 to i32
  br label %73

73:                                               ; preds = %69, %130
  %74 = phi i32 [ %59, %69 ], [ %131, %130 ]
  %75 = lshr exact i32 %74, 2
  br label %76

76:                                               ; preds = %73, %126
  %77 = phi i32 [ %72, %73 ], [ %127, %126 ]
  %78 = lshr exact i32 %77, 2
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %78, i32 noundef %75, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %79 = load i32, ptr %9, align 4, !tbaa !25
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = add nuw nsw i32 %78, %74
  %83 = zext nneg i32 %79 to i64
  br label %84

84:                                               ; preds = %81, %122
  %85 = phi i64 [ 0, %81 ], [ %124, %122 ]
  %86 = phi ptr [ %50, %81 ], [ %123, %122 ]
  %87 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %85
  %92 = load i32, ptr %91, align 4, !tbaa !25
  %93 = shl i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %86, i64 %94
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  %97 = load i8, ptr %95, align 1, !tbaa !26
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds i8, ptr %95, i64 2
  %100 = load i8, ptr %96, align 1, !tbaa !26
  %101 = zext i8 %100 to i32
  %102 = tail call fastcc i64 @i64_power2(i32 noundef %82) #17
  %103 = load i64, ptr %28, align 8, !tbaa !32
  %104 = or i64 %103, %102
  store i64 %104, ptr %28, align 8, !tbaa !32
  %105 = zext i8 %100 to i64
  %106 = zext i8 %97 to i64
  %107 = getelementptr inbounds [4 x i32], ptr %2, i64 %105, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !25
  %109 = mul nsw i32 %108, %88
  %110 = shl i32 %109, %3
  %111 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %110, i32 noundef 4) #17, !range !33
  %112 = load ptr, ptr %44, align 8, !tbaa !34
  %113 = getelementptr inbounds ptr, ptr %112, i64 %27
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = add nuw nsw i32 %74, %101
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = add nuw nsw i32 %77, %98
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %118, i64 %120
  store i32 %111, ptr %121, align 4, !tbaa !25
  br label %122

122:                                              ; preds = %84, %90
  %123 = phi ptr [ %99, %90 ], [ %86, %84 ]
  %124 = add nuw nsw i64 %85, 1
  %125 = icmp eq i64 %124, %83
  br i1 %125, label %126, label %84, !llvm.loop !282

126:                                              ; preds = %122, %76
  %127 = add nuw nsw i32 %77, 4
  %128 = zext nneg i32 %127 to i64
  %129 = icmp ugt i64 %71, %128
  br i1 %129, label %76, label %130, !llvm.loop !283

130:                                              ; preds = %126
  %131 = add nuw nsw i32 %74, 4
  %132 = zext nneg i32 %131 to i64
  %133 = icmp ugt i64 %55, %132
  br i1 %133, label %73, label %139, !llvm.loop !284

134:                                              ; preds = %60
  %135 = load ptr, ptr %56, align 8, !tbaa !35
  %136 = getelementptr inbounds i8, ptr %135, i64 %62
  store i16 0, ptr %136, align 1
  %137 = load ptr, ptr %58, align 8, !tbaa !35
  %138 = getelementptr inbounds i8, ptr %137, i64 %62
  store i16 0, ptr %138, align 1
  br label %139

139:                                              ; preds = %130, %134
  br i1 %61, label %60, label %140, !llvm.loop !285

140:                                              ; preds = %139
  br i1 %52, label %51, label %222, !llvm.loop !286

141:                                              ; preds = %45, %220
  %142 = phi i1 [ true, %45 ], [ false, %220 ]
  %143 = phi i64 [ 0, %45 ], [ 2, %220 ]
  %144 = phi i32 [ 2, %45 ], [ %221, %220 ]
  %145 = getelementptr inbounds ptr, ptr %5, i64 %143
  %146 = or disjoint i64 %143, 1
  %147 = getelementptr inbounds ptr, ptr %5, i64 %146
  %148 = trunc i64 %143 to i32
  br label %149

149:                                              ; preds = %141, %218
  %150 = phi i1 [ true, %141 ], [ false, %218 ]
  %151 = phi i64 [ 0, %141 ], [ 2, %218 ]
  %152 = phi i32 [ 2, %141 ], [ %219, %218 ]
  %153 = lshr exact i64 %151, 1
  %154 = or disjoint i64 %153, %143
  %155 = trunc i64 %154 to i32
  %156 = shl nuw nsw i32 1, %155
  %157 = and i32 %156, %4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %213, label %159

159:                                              ; preds = %149
  %160 = trunc i64 %151 to i32
  br label %161

161:                                              ; preds = %159, %210
  %162 = phi i32 [ %148, %159 ], [ %211, %210 ]
  %163 = shl i32 %162, 2
  br label %164

164:                                              ; preds = %161, %207
  %165 = phi i32 [ %160, %161 ], [ %208, %207 ]
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %165, i32 noundef %162, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %166 = load i32, ptr %9, align 4, !tbaa !25
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %207

168:                                              ; preds = %164
  %169 = add nuw nsw i32 %165, %163
  %170 = shl i32 %165, 2
  %171 = zext nneg i32 %166 to i64
  br label %172

172:                                              ; preds = %168, %203
  %173 = phi i64 [ 0, %168 ], [ %205, %203 ]
  %174 = phi i32 [ %47, %168 ], [ %204, %203 ]
  %175 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %173
  %176 = load i32, ptr %175, align 4, !tbaa !25
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %203, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %173
  %180 = load i32, ptr %179, align 4, !tbaa !25
  %181 = add i32 %174, 1
  %182 = add i32 %181, %180
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x i8], ptr %22, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !26
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds [2 x i8], ptr %22, i64 %183, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !26
  %189 = zext i8 %188 to i32
  %190 = tail call fastcc i64 @i64_power2(i32 noundef %169) #17
  %191 = load i64, ptr %28, align 8, !tbaa !32
  %192 = or i64 %191, %190
  store i64 %192, ptr %28, align 8, !tbaa !32
  %193 = load ptr, ptr %44, align 8, !tbaa !34
  %194 = getelementptr inbounds ptr, ptr %193, i64 %27
  %195 = load ptr, ptr %194, align 8, !tbaa !35
  %196 = add nuw nsw i32 %163, %189
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %195, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !35
  %200 = add nuw nsw i32 %170, %186
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %199, i64 %201
  store i32 %176, ptr %202, align 4, !tbaa !25
  br label %203

203:                                              ; preds = %172, %178
  %204 = phi i32 [ %182, %178 ], [ %174, %172 ]
  %205 = add nuw nsw i64 %173, 1
  %206 = icmp eq i64 %205, %171
  br i1 %206, label %207, label %172, !llvm.loop !287

207:                                              ; preds = %203, %164
  %208 = add nuw nsw i32 %165, 1
  %209 = icmp eq i32 %208, %152
  br i1 %209, label %210, label %164, !llvm.loop !288

210:                                              ; preds = %207
  %211 = add nuw nsw i32 %162, 1
  %212 = icmp eq i32 %211, %144
  br i1 %212, label %218, label %161, !llvm.loop !289

213:                                              ; preds = %149
  %214 = load ptr, ptr %145, align 8, !tbaa !35
  %215 = getelementptr inbounds i8, ptr %214, i64 %151
  store i16 0, ptr %215, align 1
  %216 = load ptr, ptr %147, align 8, !tbaa !35
  %217 = getelementptr inbounds i8, ptr %216, i64 %151
  store i16 0, ptr %217, align 1
  br label %218

218:                                              ; preds = %210, %213
  %219 = add nuw nsw i32 %152, 2
  br i1 %150, label %149, label %220, !llvm.loop !290

220:                                              ; preds = %218
  %221 = add nuw nsw i32 %144, 2
  br i1 %142, label %141, label %222, !llvm.loop !291

222:                                              ; preds = %220, %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #4 {
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi ptr [ @FIELD_SCAN8x8, %6 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !65
  %25 = and i16 %24, -5
  %26 = icmp ne i16 %25, 10
  %27 = sext i1 %26 to i32
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %28
  switch i16 %24, label %35 [
    i16 10, label %30
    i16 14, label %30
  ]

30:                                               ; preds = %21, %21
  %31 = icmp eq i32 %1, 1
  %32 = select i1 %31, i32 5, i32 10
  %33 = icmp eq i32 %1, 0
  %34 = select i1 %33, i32 2, i32 %32
  br label %40

35:                                               ; preds = %21
  %36 = icmp eq i32 %1, 1
  %37 = select i1 %36, i32 3, i32 8
  %38 = icmp eq i32 %1, 0
  %39 = select i1 %38, i32 0, i32 %37
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ %34, %30 ], [ %39, %35 ]
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %43 = load i32, ptr %42, align 4, !tbaa !31
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 79
  br i1 %44, label %46, label %140

46:                                               ; preds = %40, %138
  %47 = phi i1 [ false, %138 ], [ true, %40 ]
  %48 = phi i64 [ 2, %138 ], [ 0, %40 ]
  %49 = phi i32 [ %139, %138 ], [ 2, %40 ]
  %50 = shl nuw nsw i64 %48, 2
  %51 = getelementptr inbounds ptr, ptr %5, i64 %48
  %52 = or disjoint i64 %48, 1
  %53 = getelementptr inbounds ptr, ptr %5, i64 %52
  %54 = trunc i64 %48 to i32
  br label %55

55:                                               ; preds = %46, %136
  %56 = phi i1 [ true, %46 ], [ false, %136 ]
  %57 = phi i64 [ 0, %46 ], [ 2, %136 ]
  %58 = phi i32 [ 2, %46 ], [ %137, %136 ]
  %59 = lshr exact i64 %57, 1
  %60 = or disjoint i64 %59, %48
  %61 = trunc i64 %60 to i32
  %62 = shl nuw nsw i32 1, %61
  %63 = and i32 %62, %4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %131, label %65

65:                                               ; preds = %55
  %66 = or disjoint i64 %57, %50
  %67 = trunc i64 %66 to i32
  %68 = shl nuw nsw i32 51, %67
  %69 = zext nneg i32 %68 to i64
  %70 = trunc i64 %57 to i32
  %71 = shl nuw nsw i64 %57, 2
  br label %72

72:                                               ; preds = %65, %128
  %73 = phi i32 [ %54, %65 ], [ %129, %128 ]
  %74 = sub nuw nsw i32 %73, %54
  %75 = shl nsw i32 %74, 1
  %76 = sub nsw i32 %75, %70
  br label %77

77:                                               ; preds = %72, %125
  %78 = phi i32 [ %70, %72 ], [ %126, %125 ]
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %41, i32 noundef %78, i32 noundef %73, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %79 = load i32, ptr %9, align 4, !tbaa !25
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %77
  %82 = add nsw i32 %76, %78
  %83 = zext nneg i32 %79 to i64
  br label %84

84:                                               ; preds = %81, %121
  %85 = phi i64 [ 0, %81 ], [ %123, %121 ]
  %86 = phi i32 [ %27, %81 ], [ %122, %121 ]
  %87 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !25
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %85
  %92 = load i32, ptr %91, align 4, !tbaa !25
  %93 = add i32 %86, 1
  %94 = add i32 %93, %92
  %95 = load i64, ptr %29, align 8, !tbaa !32
  %96 = or i64 %95, %69
  store i64 %96, ptr %29, align 8, !tbaa !32
  %97 = shl i32 %94, 2
  %98 = add i32 %82, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i8], ptr %22, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !26
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [2 x i8], ptr %22, i64 %99, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !26
  %105 = zext i8 %104 to i64
  %106 = zext i8 %104 to i64
  %107 = zext i8 %101 to i64
  %108 = getelementptr inbounds [8 x i32], ptr %2, i64 %106, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !25
  %110 = mul nsw i32 %109, %88
  %111 = shl i32 %110, %3
  %112 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %111, i32 noundef 6) #17, !range !33
  %113 = load ptr, ptr %45, align 8, !tbaa !71
  %114 = getelementptr inbounds ptr, ptr %113, i64 %28
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = getelementptr ptr, ptr %115, i64 %50
  %117 = getelementptr ptr, ptr %116, i64 %105
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = getelementptr i32, ptr %118, i64 %71
  %120 = getelementptr i32, ptr %119, i64 %102
  store i32 %112, ptr %120, align 4, !tbaa !25
  br label %121

121:                                              ; preds = %84, %90
  %122 = phi i32 [ %94, %90 ], [ %86, %84 ]
  %123 = add nuw nsw i64 %85, 1
  %124 = icmp eq i64 %123, %83
  br i1 %124, label %125, label %84, !llvm.loop !292

125:                                              ; preds = %121, %77
  %126 = add nuw nsw i32 %78, 1
  %127 = icmp eq i32 %126, %58
  br i1 %127, label %128, label %77, !llvm.loop !293

128:                                              ; preds = %125
  %129 = add nuw nsw i32 %73, 1
  %130 = icmp eq i32 %129, %49
  br i1 %130, label %136, label %72, !llvm.loop !294

131:                                              ; preds = %55
  %132 = load ptr, ptr %51, align 8, !tbaa !35
  %133 = getelementptr inbounds i8, ptr %132, i64 %57
  store i16 0, ptr %133, align 1
  %134 = load ptr, ptr %53, align 8, !tbaa !35
  %135 = getelementptr inbounds i8, ptr %134, i64 %57
  store i16 0, ptr %135, align 1
  br label %136

136:                                              ; preds = %128, %131
  %137 = add nuw nsw i32 %58, 2
  br i1 %56, label %55, label %138, !llvm.loop !295

138:                                              ; preds = %136
  %139 = add nuw nsw i32 %49, 2
  br i1 %47, label %46, label %227, !llvm.loop !296

140:                                              ; preds = %40, %225
  %141 = phi i1 [ false, %225 ], [ true, %40 ]
  %142 = phi i64 [ 2, %225 ], [ 0, %40 ]
  %143 = phi i32 [ %226, %225 ], [ 2, %40 ]
  %144 = shl nuw nsw i64 %142, 2
  %145 = getelementptr inbounds ptr, ptr %5, i64 %142
  %146 = or disjoint i64 %142, 1
  %147 = getelementptr inbounds ptr, ptr %5, i64 %146
  %148 = trunc i64 %142 to i32
  br label %149

149:                                              ; preds = %140, %223
  %150 = phi i1 [ true, %140 ], [ false, %223 ]
  %151 = phi i64 [ 0, %140 ], [ 2, %223 ]
  %152 = phi i32 [ 2, %140 ], [ %224, %223 ]
  %153 = lshr exact i64 %151, 1
  %154 = or disjoint i64 %153, %142
  %155 = trunc i64 %154 to i32
  %156 = shl nuw nsw i32 1, %155
  %157 = and i32 %156, %4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %218, label %159

159:                                              ; preds = %149
  %160 = or disjoint i64 %151, %144
  %161 = trunc i64 %160 to i32
  %162 = shl nuw nsw i32 51, %161
  %163 = zext nneg i32 %162 to i64
  %164 = trunc i64 %151 to i32
  %165 = shl nuw nsw i64 %151, 2
  br label %166

166:                                              ; preds = %159, %215
  %167 = phi i32 [ %148, %159 ], [ %216, %215 ]
  %168 = sub nuw nsw i32 %167, %148
  %169 = shl nsw i32 %168, 1
  %170 = sub nsw i32 %169, %164
  br label %171

171:                                              ; preds = %166, %212
  %172 = phi i32 [ %164, %166 ], [ %213, %212 ]
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %41, i32 noundef %172, i32 noundef %167, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %173 = load i32, ptr %9, align 4, !tbaa !25
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %212

175:                                              ; preds = %171
  %176 = add nsw i32 %170, %172
  %177 = zext nneg i32 %173 to i64
  br label %178

178:                                              ; preds = %175, %208
  %179 = phi i64 [ 0, %175 ], [ %210, %208 ]
  %180 = phi i32 [ %27, %175 ], [ %209, %208 ]
  %181 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %179
  %182 = load i32, ptr %181, align 4, !tbaa !25
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %208, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %179
  %186 = load i32, ptr %185, align 4, !tbaa !25
  %187 = add i32 %180, 1
  %188 = add i32 %187, %186
  %189 = load i64, ptr %29, align 8, !tbaa !32
  %190 = or i64 %189, %163
  store i64 %190, ptr %29, align 8, !tbaa !32
  %191 = shl nsw i32 %188, 2
  %192 = add nsw i32 %176, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [2 x i8], ptr %22, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !26
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [2 x i8], ptr %22, i64 %193, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !26
  %199 = zext i8 %198 to i64
  %200 = load ptr, ptr %45, align 8, !tbaa !71
  %201 = getelementptr inbounds ptr, ptr %200, i64 %28
  %202 = load ptr, ptr %201, align 8, !tbaa !35
  %203 = getelementptr ptr, ptr %202, i64 %144
  %204 = getelementptr ptr, ptr %203, i64 %199
  %205 = load ptr, ptr %204, align 8, !tbaa !35
  %206 = getelementptr i32, ptr %205, i64 %165
  %207 = getelementptr i32, ptr %206, i64 %196
  store i32 %182, ptr %207, align 4, !tbaa !25
  br label %208

208:                                              ; preds = %178, %184
  %209 = phi i32 [ %188, %184 ], [ %180, %178 ]
  %210 = add nuw nsw i64 %179, 1
  %211 = icmp eq i64 %210, %177
  br i1 %211, label %212, label %178, !llvm.loop !297

212:                                              ; preds = %208, %171
  %213 = add nuw nsw i32 %172, 1
  %214 = icmp eq i32 %213, %152
  br i1 %214, label %215, label %171, !llvm.loop !298

215:                                              ; preds = %212
  %216 = add nuw nsw i32 %167, 1
  %217 = icmp eq i32 %216, %143
  br i1 %217, label %223, label %166, !llvm.loop !299

218:                                              ; preds = %149
  %219 = load ptr, ptr %145, align 8, !tbaa !35
  %220 = getelementptr inbounds i8, ptr %219, i64 %151
  store i16 0, ptr %220, align 1
  %221 = load ptr, ptr %147, align 8, !tbaa !35
  %222 = getelementptr inbounds i8, ptr %221, i64 %151
  store i16 0, ptr %222, align 1
  br label %223

223:                                              ; preds = %215, %218
  %224 = add nuw nsw i32 %152, 2
  br i1 %150, label %149, label %225, !llvm.loop !300

225:                                              ; preds = %223
  %226 = add nuw nsw i32 %143, 2
  br i1 %141, label %140, label %227, !llvm.loop !301

227:                                              ; preds = %225, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @predict_nnz(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %9 = add nsw i32 %2, -1
  %10 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 1
  %14 = load i32, ptr %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %19, i64 0, i32 30
  %21 = load i32, ptr %20, align 4, !tbaa !125
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 42
  %25 = load i32, ptr %24, align 8, !tbaa !107
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !236
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !26
  %35 = sext i8 %34 to i32
  %36 = and i32 %14, %35
  store i32 %36, ptr %5, align 4, !tbaa !227
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %27, %4
  %40 = phi i32 [ %36, %27 ], [ %14, %4 ]
  %41 = phi i32 [ %38, %27 ], [ 0, %4 ]
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %108, label %43

43:                                               ; preds = %23, %17, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %17 ], [ 0, %23 ]
  switch i32 %1, label %107 [
    i32 0, label %45
    i32 3, label %65
    i32 8, label %86
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !184
  %48 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !236
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %55 = load i16, ptr %54, align 2, !tbaa !302
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %60 = load i16, ptr %59, align 4, !tbaa !303
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !26
  %64 = add nuw nsw i32 %44, 1
  br label %108

65:                                               ; preds = %43
  %66 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %67 = load ptr, ptr %66, align 8, !tbaa !184
  %68 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !236
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !302
  %77 = sext i16 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  %80 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %81 = load i16, ptr %80, align 4, !tbaa !303
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !26
  %85 = add nuw nsw i32 %44, 1
  br label %108

86:                                               ; preds = %43
  %87 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %88 = load ptr, ptr %87, align 8, !tbaa !184
  %89 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !236
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %88, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  %94 = getelementptr inbounds ptr, ptr %93, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !302
  %98 = sext i16 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %102 = load i16, ptr %101, align 4, !tbaa !303
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds i8, ptr %100, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !26
  %106 = add nuw nsw i32 %44, 1
  br label %108

107:                                              ; preds = %43
  call void @error(ptr noundef nonnull @.str.6, i32 noundef 600) #18
  br label %108

108:                                              ; preds = %45, %65, %86, %107, %39
  %109 = phi i8 [ 0, %107 ], [ %105, %86 ], [ %84, %65 ], [ %63, %45 ], [ 0, %39 ]
  %110 = phi i32 [ %44, %107 ], [ %106, %86 ], [ %85, %65 ], [ %64, %45 ], [ %41, %39 ]
  %111 = zext i8 %109 to i32
  %112 = add nsw i32 %3, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %112, ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %113 = load i32, ptr %11, align 8, !tbaa !53
  %114 = icmp eq i32 %113, 1
  %115 = load i32, ptr %5, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %141

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !79
  %121 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %120, i64 0, i32 30
  %122 = load i32, ptr %121, align 4, !tbaa !125
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 42
  %126 = load i32, ptr %125, align 8, !tbaa !107
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %130 = load ptr, ptr %129, align 8, !tbaa !126
  %131 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !236
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !26
  %136 = sext i8 %135 to i32
  %137 = and i32 %115, %136
  store i32 %137, ptr %5, align 4, !tbaa !227
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = add nuw nsw i32 %110, %139
  br label %141

141:                                              ; preds = %128, %108
  %142 = phi i32 [ %137, %128 ], [ %115, %108 ]
  %143 = phi i32 [ %140, %128 ], [ %110, %108 ]
  %144 = icmp eq i32 %142, 0
  br i1 %144, label %216, label %145

145:                                              ; preds = %124, %118, %141
  %146 = phi i32 [ %143, %141 ], [ %110, %118 ], [ %110, %124 ]
  switch i32 %1, label %215 [
    i32 0, label %147
    i32 3, label %169
    i32 8, label %192
  ]

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %149 = load ptr, ptr %148, align 8, !tbaa !184
  %150 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !236
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %149, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !35
  %155 = load ptr, ptr %154, align 8, !tbaa !35
  %156 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %157 = load i16, ptr %156, align 2, !tbaa !302
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %155, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !35
  %161 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %162 = load i16, ptr %161, align 4, !tbaa !303
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds i8, ptr %160, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !26
  %166 = zext i8 %165 to i32
  %167 = add nuw nsw i32 %166, %111
  %168 = add nuw nsw i32 %146, 1
  br label %216

169:                                              ; preds = %145
  %170 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %171 = load ptr, ptr %170, align 8, !tbaa !184
  %172 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !236
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds ptr, ptr %171, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !35
  %177 = getelementptr inbounds ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !35
  %179 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %180 = load i16, ptr %179, align 2, !tbaa !302
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds ptr, ptr %178, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  %184 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %185 = load i16, ptr %184, align 4, !tbaa !303
  %186 = sext i16 %185 to i64
  %187 = getelementptr inbounds i8, ptr %183, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !26
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %189, %111
  %191 = add nuw nsw i32 %146, 1
  br label %216

192:                                              ; preds = %145
  %193 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %194 = load ptr, ptr %193, align 8, !tbaa !184
  %195 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !236
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %194, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !35
  %200 = getelementptr inbounds ptr, ptr %199, i64 2
  %201 = load ptr, ptr %200, align 8, !tbaa !35
  %202 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %203 = load i16, ptr %202, align 2, !tbaa !302
  %204 = sext i16 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %201, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !35
  %207 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %208 = load i16, ptr %207, align 4, !tbaa !303
  %209 = sext i16 %208 to i64
  %210 = getelementptr inbounds i8, ptr %206, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !26
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %212, %111
  %214 = add nuw nsw i32 %146, 1
  br label %216

215:                                              ; preds = %145
  call void @error(ptr noundef nonnull @.str.6, i32 noundef 600) #18
  br label %216

216:                                              ; preds = %147, %169, %192, %215, %141
  %217 = phi i32 [ %111, %215 ], [ %213, %192 ], [ %190, %169 ], [ %167, %147 ], [ %111, %141 ]
  %218 = phi i32 [ %146, %215 ], [ %214, %192 ], [ %191, %169 ], [ %168, %147 ], [ %143, %141 ]
  %219 = icmp eq i32 %218, 2
  %220 = add nuw nsw i32 %217, 1
  %221 = lshr i32 %220, 1
  %222 = select i1 %219, i32 %221, i32 %217
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret i32 %222
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @predict_nnz_chroma(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %11 = load i32, ptr %10, align 4, !tbaa !149
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %146, label %13

13:                                               ; preds = %3
  %14 = shl i32 %1, 2
  %15 = and i32 %14, 4
  %16 = add nsw i32 %15, -1
  %17 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %16, i32 noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %4) #18
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !53
  %20 = icmp eq i32 %19, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %46

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %26, i64 0, i32 30
  %28 = load i32, ptr %27, align 4, !tbaa !125
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %32 = load i32, ptr %31, align 8, !tbaa !107
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !236
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !26
  %42 = sext i8 %41 to i32
  %43 = and i32 %21, %42
  store i32 %43, ptr %4, align 4, !tbaa !227
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %34, %13
  %47 = phi i32 [ %43, %34 ], [ %21, %13 ]
  %48 = phi i32 [ %45, %34 ], [ 0, %13 ]
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %30, %24, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %24 ], [ 0, %30 ]
  %52 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 29
  %53 = load ptr, ptr %52, align 8, !tbaa !184
  %54 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !236
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !302
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %60, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = and i32 %1, -2
  %67 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %68 = load i16, ptr %67, align 4, !tbaa !303
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %65, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !26
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %51, 1
  br label %76

76:                                               ; preds = %50, %46
  %77 = phi i32 [ %74, %50 ], [ 0, %46 ]
  %78 = phi i32 [ %75, %50 ], [ %48, %46 ]
  %79 = add nsw i32 %2, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %79, ptr noundef nonnull %17, ptr noundef nonnull %4) #18
  %80 = load i32, ptr %18, align 8, !tbaa !53
  %81 = icmp eq i32 %80, 1
  %82 = load i32, ptr %4, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %108

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %87, i64 0, i32 30
  %89 = load i32, ptr %88, align 4, !tbaa !125
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %93 = load i32, ptr %92, align 8, !tbaa !107
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %97 = load ptr, ptr %96, align 8, !tbaa !126
  %98 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !236
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !26
  %103 = sext i8 %102 to i32
  %104 = and i32 %82, %103
  store i32 %104, ptr %4, align 4, !tbaa !227
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = add nuw nsw i32 %78, %106
  br label %108

108:                                              ; preds = %95, %76
  %109 = phi i32 [ %104, %95 ], [ %82, %76 ]
  %110 = phi i32 [ %107, %95 ], [ %78, %76 ]
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %139, label %112

112:                                              ; preds = %91, %85, %108
  %113 = phi i32 [ %110, %108 ], [ %78, %85 ], [ %78, %91 ]
  %114 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 29
  %115 = load ptr, ptr %114, align 8, !tbaa !184
  %116 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !236
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %115, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !35
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !302
  %125 = sext i16 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %122, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = and i32 %1, -2
  %129 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %130 = load i16, ptr %129, align 4, !tbaa !303
  %131 = sext i16 %130 to i32
  %132 = add nsw i32 %128, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %127, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !26
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i32 %77, %136
  %138 = add nuw nsw i32 %113, 1
  br label %139

139:                                              ; preds = %112, %108
  %140 = phi i32 [ %137, %112 ], [ %77, %108 ]
  %141 = phi i32 [ %138, %112 ], [ %110, %108 ]
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = add nuw nsw i32 %140, 1
  %145 = lshr i32 %144, 1
  br label %146

146:                                              ; preds = %139, %143, %3
  %147 = phi i32 [ %145, %143 ], [ %140, %139 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i32 %147
}

; Function Attrs: optsize
declare i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @readSyntaxElement_Level_VLC0(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @readSyntaxElement_Level_VLCN(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @readSyntaxElement_TotalZerosChromaDC(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @readSyntaxElement_TotalZeros(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @readSyntaxElement_Run(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @decode_one_macroblock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !304
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  tail call fastcc void @init_cur_imgy(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #17
  %14 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 112
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %17 = load ptr, ptr %16, align 8, !tbaa !305
  %18 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %17, ptr noundef %1) #18
  tail call fastcc void @init_cur_imgy(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #17
  %19 = load ptr, ptr %14, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %21 = load ptr, ptr %20, align 8, !tbaa !306
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call i32 %19(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %22, ptr noundef %1) #18
  tail call fastcc void @init_cur_imgy(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 2) #17
  br label %35

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 112
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %28 = load ptr, ptr %27, align 8, !tbaa !305
  %29 = tail call i32 %26(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %28, ptr noundef %1) #18
  %30 = load ptr, ptr %25, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %32 = load ptr, ptr %31, align 8, !tbaa !306
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = tail call i32 %30(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %33, ptr noundef %1) #18
  br label %35

35:                                               ; preds = %24, %13
  %36 = phi ptr [ %25, %24 ], [ %14, %13 ]
  %37 = phi ptr [ %31, %24 ], [ %20, %13 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !86
  %39 = load ptr, ptr %37, align 8, !tbaa !306
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = tail call i32 %38(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %41, ptr noundef %1) #18
  %43 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 76
  store i32 0, ptr %43, align 8, !tbaa !70
  br label %50

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 112
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  %47 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %48 = load ptr, ptr %47, align 8, !tbaa !305
  %49 = tail call i32 %46(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %48, ptr noundef %1) #18
  br label %50

50:                                               ; preds = %44, %35
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_cur_imgy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 105
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %83

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 138
  %9 = load ptr, ptr %8, align 8, !tbaa !307
  %10 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !308
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 104
  %13 = load i32, ptr %12, align 4, !tbaa !309
  %14 = icmp slt i32 %11, %13
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = sext i32 %2 to i64
  br label %49

18:                                               ; preds = %7, %46
  %19 = phi i64 [ %47, %46 ], [ 0, %7 ]
  %20 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !26
  %22 = icmp sgt i8 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 %19
  br label %25

25:                                               ; preds = %23, %41
  %26 = phi i8 [ %21, %23 ], [ %42, %41 ]
  %27 = phi i64 [ 0, %23 ], [ %43, %41 ]
  %28 = load ptr, ptr %24, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = icmp eq ptr %30, %9
  %34 = select i1 %14, i1 %33, i1 false
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 72
  store i32 %35, ptr %36, align 8, !tbaa !310
  %37 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 32
  %38 = load ptr, ptr %37, align 8, !tbaa !305
  %39 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 71
  store ptr %38, ptr %39, align 8, !tbaa !311
  %40 = load i8, ptr %20, align 1, !tbaa !26
  br label %41

41:                                               ; preds = %32, %25
  %42 = phi i8 [ %40, %32 ], [ %26, %25 ]
  %43 = add nuw nsw i64 %27, 1
  %44 = sext i8 %42 to i64
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %25, label %46, !llvm.loop !312

46:                                               ; preds = %41, %18
  %47 = add nuw nsw i64 %19, 1
  %48 = icmp eq i64 %47, 6
  br i1 %48, label %83, label %18, !llvm.loop !313

49:                                               ; preds = %16, %80
  %50 = phi i64 [ 0, %16 ], [ %81, %80 ]
  %51 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 55, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !26
  %53 = icmp sgt i8 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 56, i64 %50
  br label %56

56:                                               ; preds = %54, %75
  %57 = phi i8 [ %52, %54 ], [ %76, %75 ]
  %58 = phi i64 [ 0, %54 ], [ %77, %75 ]
  %59 = load ptr, ptr %55, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %56
  %64 = icmp eq ptr %61, %9
  %65 = select i1 %14, i1 %64, i1 false
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.storable_picture, ptr %61, i64 0, i32 72
  store i32 %66, ptr %67, align 8, !tbaa !310
  %68 = getelementptr inbounds %struct.storable_picture, ptr %61, i64 0, i32 33
  %69 = load ptr, ptr %68, align 8, !tbaa !306
  %70 = getelementptr ptr, ptr %69, i64 %17
  %71 = getelementptr ptr, ptr %70, i64 -1
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.storable_picture, ptr %61, i64 0, i32 71
  store ptr %72, ptr %73, align 8, !tbaa !311
  %74 = load i8, ptr %51, align 1, !tbaa !26
  br label %75

75:                                               ; preds = %63, %56
  %76 = phi i8 [ %74, %63 ], [ %57, %56 ]
  %77 = add nuw nsw i64 %58, 1
  %78 = sext i8 %76 to i64
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %56, label %80, !llvm.loop !314

80:                                               ; preds = %75, %49
  %81 = add nuw nsw i64 %50, 1
  %82 = icmp eq i64 %81, 6
  br i1 %82, label %83, label %49, !llvm.loop !315

83:                                               ; preds = %80, %46, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @change_plane_JV(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #11 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  store ptr %6, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 %4
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  store ptr %9, ptr %10, align 8, !tbaa !316
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 31, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  store ptr %12, ptr %13, align 8, !tbaa !317
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %4
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  store ptr %15, ptr %16, align 8, !tbaa !318
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %4
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  store ptr %18, ptr %19, align 8, !tbaa !319
  %20 = icmp eq ptr %2, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  store ptr %22, ptr %23, align 8, !tbaa !38
  %24 = load ptr, ptr %8, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  store ptr %24, ptr %25, align 8, !tbaa !15
  %26 = load ptr, ptr %11, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 126
  store ptr %26, ptr %27, align 8, !tbaa !119
  %28 = load ptr, ptr %14, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 127
  store ptr %28, ptr %29, align 8, !tbaa !242
  %30 = load ptr, ptr %17, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 128
  store ptr %30, ptr %31, align 8, !tbaa !126
  br label %32

32:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_frame_picture_JV(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  store ptr %3, ptr %4, align 8, !tbaa !316
  %5 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !320
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 43
  %10 = load i32, ptr %9, align 8, !tbaa !321
  switch i32 %10, label %11 [
    i32 2, label %44
    i32 4, label %44
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 16
  %13 = load <2 x i32>, ptr %12, align 8, !tbaa !25
  %14 = sdiv <2 x i32> %13, <i32 4, i32 4>
  %15 = extractelement <2 x i32> %14, i64 1
  %16 = shl i32 %15, 5
  %17 = extractelement <2 x i32> %14, i64 0
  %18 = mul i32 %16, %17
  %19 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 36
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = sext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %24, i64 %25, i1 false)
  %26 = load ptr, ptr %4, align 8, !tbaa !316
  %27 = getelementptr inbounds %struct.storable_picture, ptr %26, i64 0, i32 36, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.storable_picture, ptr %31, i64 0, i32 35
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %34, i64 %25, i1 false)
  %35 = load ptr, ptr %4, align 8, !tbaa !316
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 36, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 35
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %38, ptr align 8 %43, i64 %25, i1 false)
  br label %44

44:                                               ; preds = %8, %8, %11, %1
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %46 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  br label %47

47:                                               ; preds = %44, %75
  %48 = phi i64 [ 0, %44 ], [ %51, %75 ]
  %49 = load i32, ptr %45, align 8, !tbaa !322
  %50 = icmp sgt i32 %49, 0
  %51 = add nuw nsw i64 %48, 1
  br i1 %50, label %52, label %75

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 %51
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ 0, %52 ], [ %71, %54 ]
  %56 = load i32, ptr %46, align 4, !tbaa !41
  %57 = shl i32 %56, 1
  %58 = load ptr, ptr %4, align 8, !tbaa !316
  %59 = getelementptr inbounds %struct.storable_picture, ptr %58, i64 0, i32 33
  %60 = load ptr, ptr %59, align 8, !tbaa !306
  %61 = getelementptr inbounds ptr, ptr %60, i64 %48
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds ptr, ptr %62, i64 %55
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = load ptr, ptr %53, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.storable_picture, ptr %65, i64 0, i32 32
  %67 = load ptr, ptr %66, align 8, !tbaa !305
  %68 = getelementptr inbounds ptr, ptr %67, i64 %55
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = sext i32 %57 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %64, ptr align 2 %69, i64 %70, i1 false)
  %71 = add nuw nsw i64 %55, 1
  %72 = load i32, ptr %45, align 8, !tbaa !322
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %54, label %75, !llvm.loop !323

75:                                               ; preds = %54, %47
  %76 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 %51
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  tail call void @free_storable_picture(ptr noundef %77) #18
  %78 = icmp eq i64 %48, 0
  br i1 %78, label %47, label %79, !llvm.loop !324

79:                                               ; preds = %75
  ret void
}

; Function Attrs: optsize
declare void @free_storable_picture(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !13, i64 108, !9, i64 110, !9, i64 111, !13, i64 112, !13, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !13, i64 376, !13, i64 378, !13, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 2}
!13 = !{!"short", !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!16, !8, i64 13520}
!16 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !13, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !17, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !13, i64 13304, !13, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!17 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!18 = !{!7, !11, i64 68}
!19 = !{!20, !11, i64 849056}
!20 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !13, i64 849040, !13, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !21, i64 849304, !21, i64 849624, !21, i64 849944, !21, i64 850264, !21, i64 850584, !21, i64 850904, !21, i64 851224, !21, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !24, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!21 = !{!"image_data", !22, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!22 = !{!"frame_format", !11, i64 0, !11, i64 4, !23, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!23 = !{!"double", !9, i64 0}
!24 = !{!"long", !9, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!20, !11, i64 849052}
!30 = !{!20, !11, i64 849092}
!31 = !{!7, !11, i64 92}
!32 = !{!24, !24, i64 0}
!33 = !{i32 -134217728, i32 134217728}
!34 = !{!16, !8, i64 1272}
!35 = !{!8, !8, i64 0}
!36 = !{!16, !8, i64 0}
!37 = !{!16, !11, i64 108}
!38 = !{!16, !8, i64 13512}
!39 = !{!7, !11, i64 24}
!40 = !{!16, !11, i64 128}
!41 = !{!20, !11, i64 848780}
!42 = !{!7, !13, i64 30}
!43 = !{!7, !13, i64 28}
!44 = !{!7, !11, i64 32}
!45 = !{!7, !11, i64 36}
!46 = !{!7, !11, i64 40}
!47 = !{!7, !11, i64 44}
!48 = !{!7, !11, i64 48}
!49 = !{!20, !11, i64 849108}
!50 = !{!7, !11, i64 52}
!51 = !{!20, !11, i64 849112}
!52 = !{!7, !11, i64 56}
!53 = !{!7, !11, i64 96}
!54 = !{!16, !13, i64 116}
!55 = !{!7, !13, i64 108}
!56 = !{!57, !8, i64 216}
!57 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !13, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !58, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!58 = !{!"pic_motion_params_old", !8, i64 0}
!59 = !{!13, !13, i64 0}
!60 = !{!16, !8, i64 24}
!61 = !{!62, !11, i64 36}
!62 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !9, i64 44, !9, i64 92, !9, i64 476, !9, i64 2012, !9, i64 2036, !11, i64 2060, !11, i64 2064, !11, i64 2068, !11, i64 2072, !11, i64 2076, !11, i64 2080, !11, i64 2084, !11, i64 2088, !11, i64 2092, !9, i64 2096, !11, i64 3120, !11, i64 3124, !11, i64 3128, !11, i64 3132, !11, i64 3136, !11, i64 3140, !11, i64 3144, !11, i64 3148, !11, i64 3152, !11, i64 3156, !11, i64 3160, !11, i64 3164, !11, i64 3168, !63, i64 3172, !11, i64 4120, !11, i64 4124}
!63 = !{!"", !11, i64 0, !11, i64 4, !13, i64 8, !13, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !64, i64 80, !11, i64 492, !64, i64 496, !11, i64 908, !11, i64 912, !11, i64 916, !11, i64 920, !11, i64 924, !11, i64 928, !11, i64 932, !11, i64 936, !11, i64 940, !11, i64 944}
!64 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !9, i64 12, !9, i64 140, !9, i64 268, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408}
!65 = !{!7, !13, i64 152}
!66 = !{!7, !13, i64 112}
!67 = !{!7, !11, i64 284}
!68 = !{!7, !9, i64 373}
!69 = !{!16, !11, i64 164}
!70 = !{!16, !11, i64 1240}
!71 = !{!16, !8, i64 1264}
!72 = !{!16, !13, i64 1224}
!73 = !{!7, !13, i64 380}
!74 = !{!7, !13, i64 114}
!75 = !{!7, !9, i64 472}
!76 = !{!16, !11, i64 112}
!77 = !{!20, !11, i64 849012}
!78 = !{!16, !8, i64 13432}
!79 = !{!20, !8, i64 8}
!80 = !{!81, !11, i64 12}
!81 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 72, !9, i64 456, !9, i64 1992, !9, i64 2016, !11, i64 2040, !11, i64 2044, !11, i64 2048, !9, i64 2052, !9, i64 2084, !9, i64 2116, !11, i64 2148, !11, i64 2152, !11, i64 2156, !8, i64 2160, !11, i64 2168, !11, i64 2172, !11, i64 2176, !11, i64 2180, !11, i64 2184, !11, i64 2188, !11, i64 2192, !11, i64 2196, !11, i64 2200, !11, i64 2204, !11, i64 2208}
!82 = !{!16, !11, i64 120}
!83 = !{!16, !8, i64 13456}
!84 = !{!16, !8, i64 13440}
!85 = !{!16, !8, i64 13448}
!86 = !{!16, !8, i64 13416}
!87 = !{!16, !8, i64 13496}
!88 = !{!16, !11, i64 1176}
!89 = !{!16, !8, i64 13464}
!90 = !{!20, !8, i64 16}
!91 = !{!20, !11, i64 849280}
!92 = !{!16, !8, i64 13408}
!93 = !{!16, !11, i64 124}
!94 = !{!7, !11, i64 360}
!95 = !{!96, !11, i64 0}
!96 = !{!"syntaxelement", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !8, i64 32, !8, i64 40}
!97 = !{!16, !8, i64 312}
!98 = !{!57, !8, i64 152}
!99 = !{!100, !8, i64 0}
!100 = !{!"datapartition", !8, i64 0, !101, i64 8, !8, i64 40}
!101 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !8, i64 16, !8, i64 24}
!102 = !{!103, !11, i64 24}
!103 = !{!"bit_stream", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !11, i64 24}
!104 = !{!96, !8, i64 32}
!105 = !{!96, !8, i64 40}
!106 = distinct !{!106, !28}
!107 = !{!16, !11, i64 200}
!108 = !{!20, !8, i64 848888}
!109 = !{!7, !11, i64 384}
!110 = !{!16, !11, i64 148}
!111 = !{!100, !8, i64 40}
!112 = !{!96, !11, i64 4}
!113 = !{!7, !9, i64 374}
!114 = !{!7, !9, i64 110}
!115 = !{!96, !11, i64 12}
!116 = !{!103, !11, i64 8}
!117 = !{!20, !11, i64 848996}
!118 = !{!58, !8, i64 0}
!119 = !{!16, !8, i64 13528}
!120 = !{!7, !11, i64 424}
!121 = !{!62, !11, i64 3144}
!122 = distinct !{!122, !28}
!123 = !{!16, !11, i64 60}
!124 = !{!7, !11, i64 420}
!125 = !{!81, !11, i64 2204}
!126 = !{!16, !8, i64 13544}
!127 = !{!16, !11, i64 1232}
!128 = !{!7, !9, i64 372}
!129 = distinct !{!129, !28, !130, !131}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = distinct !{!132, !28}
!133 = distinct !{!133, !28}
!134 = distinct !{!134, !28}
!135 = !{!16, !8, i64 16}
!136 = distinct !{!136, !28}
!137 = !{!16, !11, i64 132}
!138 = !{!20, !11, i64 848876}
!139 = !{!16, !11, i64 1236}
!140 = !{!7, !9, i64 111}
!141 = !{!96, !11, i64 24}
!142 = !{!96, !11, i64 8}
!143 = distinct !{!143, !28}
!144 = !{!16, !11, i64 216}
!145 = !{!20, !8, i64 856032}
!146 = !{!20, !8, i64 856040}
!147 = distinct !{!147, !28}
!148 = distinct !{!148, !28}
!149 = !{!57, !11, i64 268}
!150 = distinct !{!150, !28}
!151 = distinct !{!151, !28}
!152 = distinct !{!152, !28}
!153 = !{!7, !11, i64 100}
!154 = distinct !{!154, !28}
!155 = distinct !{!155, !28}
!156 = distinct !{!156, !28}
!157 = distinct !{!157, !28}
!158 = distinct !{!158, !28}
!159 = distinct !{!159, !28}
!160 = !{!20, !11, i64 849096}
!161 = !{!20, !11, i64 849100}
!162 = !{!7, !11, i64 64}
!163 = !{!7, !11, i64 60}
!164 = distinct !{!164, !28}
!165 = distinct !{!165, !28}
!166 = distinct !{!166, !28}
!167 = distinct !{!167, !28}
!168 = distinct !{!168, !28}
!169 = distinct !{!169, !28}
!170 = distinct !{!170, !28}
!171 = !{!20, !11, i64 848776}
!172 = distinct !{!172, !28}
!173 = distinct !{!173, !28}
!174 = !{!20, !11, i64 849104}
!175 = distinct !{!175, !28}
!176 = distinct !{!176, !28}
!177 = distinct !{!177, !28}
!178 = distinct !{!178, !28}
!179 = distinct !{!179, !28}
!180 = distinct !{!180, !28}
!181 = distinct !{!181, !28}
!182 = distinct !{!182, !28}
!183 = distinct !{!183, !28}
!184 = !{!20, !8, i64 848832}
!185 = distinct !{!185, !28}
!186 = distinct !{!186, !28}
!187 = distinct !{!187, !28}
!188 = distinct !{!188, !28}
!189 = distinct !{!189, !28}
!190 = distinct !{!190, !28}
!191 = distinct !{!191, !28}
!192 = distinct !{!192, !28}
!193 = distinct !{!193, !28}
!194 = distinct !{!194, !28}
!195 = distinct !{!195, !28}
!196 = distinct !{!196, !28}
!197 = distinct !{!197, !28}
!198 = distinct !{!198, !28}
!199 = distinct !{!199, !28}
!200 = distinct !{!200, !28}
!201 = distinct !{!201, !28}
!202 = distinct !{!202, !28}
!203 = distinct !{!203, !28}
!204 = distinct !{!204, !28}
!205 = distinct !{!205, !28}
!206 = distinct !{!206, !28}
!207 = distinct !{!207, !28}
!208 = distinct !{!208, !28}
!209 = distinct !{!209, !28}
!210 = distinct !{!210, !28}
!211 = distinct !{!211, !28}
!212 = !{!7, !8, i64 464}
!213 = distinct !{!213, !28}
!214 = distinct !{!214, !28}
!215 = distinct !{!215, !28}
!216 = distinct !{!216, !28}
!217 = distinct !{!217, !28}
!218 = !{!7, !8, i64 448}
!219 = distinct !{!219, !28}
!220 = distinct !{!220, !28}
!221 = distinct !{!221, !28}
!222 = distinct !{!222, !28}
!223 = distinct !{!223, !28}
!224 = distinct !{!224, !28}
!225 = distinct !{!225, !28}
!226 = !{i32 0, i32 2}
!227 = !{!228, !11, i64 0}
!228 = !{!"pix_pos", !11, i64 0, !11, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!229 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 2, !59, i64 10, i64 2, !59, i64 12, i64 2, !59, i64 14, i64 2, !59}
!230 = !{!7, !11, i64 404}
!231 = !{!7, !11, i64 408}
!232 = distinct !{!232, !28}
!233 = !{!228, !13, i64 14}
!234 = !{!228, !13, i64 12}
!235 = !{!12, !13, i64 2}
!236 = !{!228, !11, i64 4}
!237 = !{!12, !13, i64 0}
!238 = distinct !{!238, !28}
!239 = distinct !{!239, !28}
!240 = distinct !{!240, !28}
!241 = distinct !{!241, !28}
!242 = !{!16, !8, i64 13536}
!243 = distinct !{!243, !28}
!244 = distinct !{!244, !28}
!245 = distinct !{!245, !28}
!246 = distinct !{!246, !28}
!247 = distinct !{!247, !28, !130, !131}
!248 = distinct !{!248, !28}
!249 = distinct !{!249, !28}
!250 = distinct !{!250, !28}
!251 = distinct !{!251, !28}
!252 = !{!20, !13, i64 849040}
!253 = distinct !{!253, !28}
!254 = distinct !{!254, !28}
!255 = !{!20, !13, i64 849042}
!256 = distinct !{!256, !28}
!257 = distinct !{!257, !28}
!258 = distinct !{!258, !28}
!259 = distinct !{!259, !28}
!260 = !{!103, !11, i64 0}
!261 = !{!103, !8, i64 16}
!262 = distinct !{!262, !28}
!263 = !{!20, !8, i64 856744}
!264 = distinct !{!264, !28}
!265 = distinct !{!265, !28}
!266 = distinct !{!266, !28}
!267 = distinct !{!267, !28}
!268 = distinct !{!268, !28}
!269 = distinct !{!269, !28}
!270 = distinct !{!270, !28}
!271 = distinct !{!271, !28}
!272 = distinct !{!272, !28}
!273 = distinct !{!273, !28}
!274 = distinct !{!274, !28}
!275 = distinct !{!275, !28}
!276 = distinct !{!276, !28}
!277 = !{i32 0, i32 511}
!278 = !{!96, !11, i64 16}
!279 = distinct !{!279, !28, !130, !131}
!280 = distinct !{!280, !28}
!281 = distinct !{!281, !28}
!282 = distinct !{!282, !28}
!283 = distinct !{!283, !28}
!284 = distinct !{!284, !28}
!285 = distinct !{!285, !28}
!286 = distinct !{!286, !28}
!287 = distinct !{!287, !28}
!288 = distinct !{!288, !28}
!289 = distinct !{!289, !28}
!290 = distinct !{!290, !28}
!291 = distinct !{!291, !28}
!292 = distinct !{!292, !28}
!293 = distinct !{!293, !28}
!294 = distinct !{!294, !28}
!295 = distinct !{!295, !28}
!296 = distinct !{!296, !28}
!297 = distinct !{!297, !28}
!298 = distinct !{!298, !28}
!299 = distinct !{!299, !28}
!300 = distinct !{!300, !28}
!301 = distinct !{!301, !28}
!302 = !{!228, !13, i64 10}
!303 = !{!228, !13, i64 8}
!304 = !{!16, !11, i64 64}
!305 = !{!57, !8, i64 128}
!306 = !{!57, !8, i64 136}
!307 = !{!20, !8, i64 856488}
!308 = !{!16, !11, i64 76}
!309 = !{!20, !11, i64 849276}
!310 = !{!57, !11, i64 384}
!311 = !{!57, !8, i64 376}
!312 = distinct !{!312, !28}
!313 = distinct !{!313, !28}
!314 = distinct !{!314, !28}
!315 = distinct !{!315, !28}
!316 = !{!20, !8, i64 856456}
!317 = !{!20, !8, i64 848840}
!318 = !{!20, !8, i64 848800}
!319 = !{!20, !8, i64 848744}
!320 = !{!57, !11, i64 44}
!321 = !{!57, !11, i64 248}
!322 = !{!20, !11, i64 848784}
!323 = distinct !{!323, !28}
!324 = distinct !{!324, !28}

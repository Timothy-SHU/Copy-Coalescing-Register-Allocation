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
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@QP_SCALE_CR = internal unnamed_addr constant [52 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''", align 16
@PicPos = external local_unnamed_addr global ptr, align 8
@SetB8Mode.p_v2b8 = internal unnamed_addr constant [5 x i8] c"\04\05\06\07\0B", align 1
@SetB8Mode.p_v2pd = internal unnamed_addr constant [5 x i8] c"\00\00\00\00\FF", align 1
@SetB8Mode.b_v2b8 = internal unnamed_addr constant [14 x i8] c"\00\04\04\04\05\06\05\06\05\06\07\07\07\0B", align 1
@SetB8Mode.b_v2pd = internal unnamed_addr constant [14 x i8] c"\02\00\01\02\00\00\01\01\02\02\00\01\02\FF", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"writeCoeff4x4_CAVLC: Invalid block type\00", align 1
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@interpret_mb_mode_B.offset2pdir16x16 = internal unnamed_addr constant <{ i16, i16, i16, i16, [8 x i16] }> <{ i16 0, i16 0, i16 1, i16 2, [8 x i16] zeroinitializer }>, align 16
@interpret_mb_mode_B.offset2pdir16x8 = internal unnamed_addr constant [22 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 2], [2 x i16] zeroinitializer], align 16
@interpret_mb_mode_B.offset2pdir8x16 = internal unnamed_addr constant [22 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 1, i16 2], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 0], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 1], [2 x i16] zeroinitializer, [2 x i16] [i16 2, i16 2]], align 16
@interpret_mb_mode_I.ICBPTAB = internal unnamed_addr constant [6 x i16] [i16 0, i16 16, i16 32, i16 15, i16 31, i16 47], align 2
@__const.interpret_mb_mode_SI.ICBPTAB = private unnamed_addr constant [6 x i32] [i32 0, i32 16, i32 32, i32 15, i32 31, i32 47], align 16
@assignSE2partition = internal constant [2 x [20 x i8]] [[20 x i8] zeroinitializer, [20 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\00\02\02\02\02\00\00\00\00"], align 16
@.str.3 = private unnamed_addr constant [33 x i8] c"illegal chroma intra pred mode!\0A\00", align 1
@BLOCK_STEP = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1]], align 16
@SNGL_SCAN = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\03\03"], align 16
@FIELD_SCAN = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03", [2 x i8] c"\02\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\02\03", [2 x i8] c"\03\00", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\03\03"], align 16
@cofuv_blk_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\01\00\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03", [4 x i8] c"\00\01\00\01", [4 x i8] c"\02\03\02\03"]], align 16
@cofuv_blk_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] c"\02\02\03\03", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\01\01", [4 x i8] c"\02\02\03\03", [4 x i8] c"\02\02\03\03"]], align 16
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@cbp_blk_chroma = internal unnamed_addr constant [8 x [4 x i8]] [[4 x i8] c"\10\11\12\13", [4 x i8] c"\14\15\16\17", [4 x i8] c"\18\19\1A\1B", [4 x i8] c"\1C\1D\1E\1F", [4 x i8] c" !\22#", [4 x i8] c"$%&'", [4 x i8] c"()*+", [4 x i8] c",-./"], align 16
@.str.5 = private unnamed_addr constant [28 x i8] c"mb_qp_delta is out of range\00", align 1
@SNGL_SCAN8x8 = internal unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 16
@FIELD_SCAN8x8 = internal unnamed_addr constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 16
@SCAN_YUV422 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03"], align 16
@readCoeff4x4_CAVLC.incVlc = internal unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 6, i32 12, i32 24, i32 48, i32 32768], align 16
@str = private unnamed_addr constant [23 x i8] c"Unsupported slice type\00", align 1
@str.7 = private unnamed_addr constant [32 x i8] c"Unsupported entropy coding mode\00", align 1
@str.8 = private unnamed_addr constant [32 x i8] c"Partition Mode is not supported\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_chroma_qp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 68
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 4, !tbaa !46
  br label %10

10:                                               ; preds = %1, %26
  %11 = phi i64 [ 0, %1 ], [ %30, %26 ]
  %12 = load i32, ptr %7, align 8, !tbaa !47
  %13 = sub nsw i32 0, %12
  %14 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 56, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = add nsw i32 %15, %9
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 %13)
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 51)
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %11
  store i32 %18, ptr %19, align 4, !tbaa !53
  %20 = icmp slt i32 %17, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = zext nneg i32 %18 to i64
  %23 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !54
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %10, %21
  %27 = phi i32 [ %25, %21 ], [ %18, %10 ]
  store i32 %27, ptr %19, align 4, !tbaa !53
  %28 = load i32, ptr %7, align 8, !tbaa !47
  %29 = add nsw i32 %28, %27
  %30 = add nuw nsw i64 %11, 1
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %30
  store i32 %29, ptr %31, align 4, !tbaa !53
  %32 = icmp eq i64 %11, 0
  br i1 %32, label %10, label %33, !llvm.loop !55

33:                                               ; preds = %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_qp(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %1, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 67
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %8, ptr %9, align 8, !tbaa !53
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 68
  br label %14

14:                                               ; preds = %2, %30
  %15 = phi i64 [ 0, %2 ], [ %34, %30 ]
  %16 = load i32, ptr %13, align 8, !tbaa !47
  %17 = sub nsw i32 0, %16
  %18 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 56, i64 %15
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = add nsw i32 %19, %1
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 %17)
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 51)
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %15
  store i32 %22, ptr %23, align 4, !tbaa !53
  %24 = icmp slt i32 %21, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !54
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %25, %14
  %31 = phi i32 [ %29, %25 ], [ %22, %14 ]
  store i32 %31, ptr %23, align 4, !tbaa !53
  %32 = load i32, ptr %13, align 8, !tbaa !47
  %33 = add nsw i32 %32, %31
  %34 = add nuw nsw i64 %15, 1
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %34
  store i32 %33, ptr %35, align 4, !tbaa !53
  %36 = icmp eq i64 %15, 0
  br i1 %36, label %14, label %37, !llvm.loop !55

37:                                               ; preds = %30
  %38 = load i32, ptr %9, align 8, !tbaa !53
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 73
  %42 = load i32, ptr %41, align 4, !tbaa !59
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i32 [ 0, %37 ], [ %44, %40 ]
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %46, ptr %47, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @invScaleCoeff(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10) local_unnamed_addr #2 {
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %11
  %14 = add nsw i32 %2, 1
  %15 = add nsw i32 %14, %8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x i8], ptr %9, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !54
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [2 x i8], ptr %9, i64 %16, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !54
  %22 = zext i8 %21 to i32
  %23 = shl i32 %5, 2
  %24 = add nsw i32 %23, %4
  %25 = icmp sgt i32 %24, 63
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !61
  br label %30

30:                                               ; preds = %13, %26
  %31 = phi i64 [ %29, %26 ], [ 0, %13 ]
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %33 = load i64, ptr %32, align 8, !tbaa !61
  %34 = or i64 %33, %31
  store i64 %34, ptr %32, align 8, !tbaa !61
  %35 = zext i8 %21 to i64
  %36 = zext i8 %18 to i64
  %37 = getelementptr inbounds [4 x i32], ptr %10, i64 %35, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = mul nsw i32 %38, %1
  %40 = shl i32 %39, %3
  %41 = add nsw i32 %40, 8
  %42 = ashr i32 %41, 4
  %43 = load ptr, ptr %0, align 8, !tbaa !42
  %44 = getelementptr inbounds %struct.slice, ptr %43, i64 0, i32 80
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  %47 = add nsw i32 %23, %22
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = shl i32 %4, 2
  %52 = add nsw i32 %51, %19
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %50, i64 %53
  store i32 %42, ptr %54, align 4, !tbaa !53
  br label %55

55:                                               ; preds = %30, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @start_macroblock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %10
  store ptr %11, ptr %1, align 8, !tbaa !63
  store ptr %0, ptr %11, align 8, !tbaa !42
  %12 = load ptr, ptr %1, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.macroblock, ptr %12, i64 0, i32 1
  store ptr %3, ptr %13, align 8, !tbaa !34
  %14 = load ptr, ptr %1, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 3
  store i32 %7, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = sdiv i32 %21, 8
  %23 = srem i32 %7, %22
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 4
  store i16 %24, ptr %25, align 4, !tbaa !70
  %26 = sdiv i32 %7, %22
  %27 = trunc i32 %26 to i16
  %28 = shl i16 %27, 1
  %29 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 4, i32 1
  %30 = and i16 %24, 1
  %31 = or disjoint i16 %28, %30
  store i16 %31, ptr %29, align 2, !tbaa !71
  %32 = ashr i16 %24, 1
  store i16 %32, ptr %25, align 4, !tbaa !70
  br label %38

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.macroblock, ptr %14, i64 0, i32 4
  %35 = load ptr, ptr @PicPos, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct.BlockPos, ptr %35, i64 %10
  %37 = load i32, ptr %36, align 2
  store i32 %37, ptr %34, align 4
  br label %38

38:                                               ; preds = %33, %19
  %39 = load ptr, ptr %1, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 4
  %41 = load i16, ptr %40, align 4, !tbaa !70
  %42 = sext i16 %41 to i32
  %43 = shl nsw i32 %42, 2
  %44 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 5
  store i32 %43, ptr %44, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 4, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !71
  %47 = sext i16 %46 to i32
  %48 = shl nsw i32 %47, 2
  %49 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 6
  store i32 %48, ptr %49, align 4, !tbaa !73
  %50 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 7
  store i32 %48, ptr %50, align 8, !tbaa !74
  %51 = shl nsw i32 %42, 4
  %52 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 8
  store i32 %51, ptr %52, align 4, !tbaa !75
  %53 = shl nsw i32 %47, 4
  %54 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 9
  store i32 %53, ptr %54, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 77
  %56 = load i32, ptr %55, align 4, !tbaa !77
  %57 = mul nsw i32 %56, %42
  %58 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 10
  store i32 %57, ptr %58, align 4, !tbaa !78
  %59 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 78
  %60 = load i32, ptr %59, align 8, !tbaa !79
  %61 = mul nsw i32 %60, %47
  %62 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 11
  store i32 %61, ptr %62, align 8, !tbaa !80
  %63 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 18
  store i32 0, ptr %63, align 8, !tbaa !81
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 22
  %65 = load i16, ptr %64, align 4, !tbaa !82
  %66 = getelementptr inbounds %struct.macroblock, ptr %39, i64 0, i32 21
  store i16 %65, ptr %66, align 4, !tbaa !83
  %67 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 39
  %68 = load ptr, ptr %67, align 8, !tbaa !84
  %69 = sext i16 %46 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = sext i16 %41 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72
  store i16 %65, ptr %73, align 2, !tbaa !87
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef %39) #15
  %74 = load ptr, ptr %1, align 8, !tbaa !63
  %75 = load i32, ptr %16, align 8, !tbaa !68
  tail call void @init_motion_vector_prediction(ptr noundef %74, i32 noundef %75) #15
  %76 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 4, !tbaa !89
  tail call void @set_read_and_store_CBP(ptr noundef nonnull %1, i32 noundef %79) #15
  %80 = load ptr, ptr %1, align 8, !tbaa !63
  %81 = getelementptr inbounds %struct.macroblock, ptr %80, i64 0, i32 30
  store i16 0, ptr %81, align 8, !tbaa !93
  %82 = getelementptr inbounds %struct.macroblock, ptr %80, i64 0, i32 24
  store i16 0, ptr %82, align 8, !tbaa !94
  %83 = getelementptr inbounds %struct.macroblock, ptr %80, i64 0, i32 32
  store i32 0, ptr %83, align 4, !tbaa !95
  %84 = getelementptr inbounds %struct.macroblock, ptr %80, i64 0, i32 40
  store i8 0, ptr %84, align 1, !tbaa !96
  %85 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %86 = load i32, ptr %85, align 4, !tbaa !97
  switch i32 %86, label %87 [
    i32 2, label %91
    i32 1, label %89
  ]

87:                                               ; preds = %38
  %88 = getelementptr inbounds %struct.macroblock, ptr %80, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %88, i8 0, i64 64, i1 false)
  br label %91

89:                                               ; preds = %38
  %90 = getelementptr inbounds %struct.macroblock, ptr %80, i64 0, i32 31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %90, i8 0, i64 128, i1 false)
  br label %91

91:                                               ; preds = %38, %87, %89
  %92 = load ptr, ptr %1, align 8, !tbaa !63
  %93 = getelementptr i8, ptr %92, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %93, i8 0, i64 72, i1 false)
  %94 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 76
  %95 = load i32, ptr %94, align 8, !tbaa !98
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %132

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 79
  %99 = load ptr, ptr %98, align 8, !tbaa !99
  %100 = load ptr, ptr %99, align 8, !tbaa !63
  %101 = load ptr, ptr %100, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %101, i8 0, i64 1024, i1 false)
  %102 = load ptr, ptr %98, align 8, !tbaa !99
  %103 = getelementptr inbounds ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = load ptr, ptr %104, align 8, !tbaa !63
  %106 = load i32, ptr %55, align 4, !tbaa !77
  %107 = load i32, ptr %59, align 8, !tbaa !79
  %108 = shl i32 %106, 2
  %109 = mul i32 %108, %107
  %110 = sext i32 %109 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %105, i8 0, i64 %110, i1 false)
  %111 = load ptr, ptr %98, align 8, !tbaa !99
  %112 = getelementptr inbounds ptr, ptr %111, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !63
  %114 = load ptr, ptr %113, align 8, !tbaa !63
  %115 = load i32, ptr %55, align 4, !tbaa !77
  %116 = load i32, ptr %59, align 8, !tbaa !79
  %117 = shl i32 %115, 2
  %118 = mul i32 %117, %116
  %119 = sext i32 %118 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %114, i8 0, i64 %119, i1 false)
  %120 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  %121 = load ptr, ptr %120, align 8, !tbaa !62
  %122 = load ptr, ptr %121, align 8, !tbaa !63
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %123, i8 0, i64 1024, i1 false)
  %124 = load ptr, ptr %120, align 8, !tbaa !62
  %125 = getelementptr inbounds ptr, ptr %124, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !63
  %127 = load ptr, ptr %126, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %127, i8 0, i64 1024, i1 false)
  %128 = load ptr, ptr %120, align 8, !tbaa !62
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !63
  %131 = load ptr, ptr %130, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %131, i8 0, i64 1024, i1 false)
  store i32 1, ptr %94, align 8, !tbaa !98
  br label %132

132:                                              ; preds = %97, %91
  %133 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 70
  %134 = load i16, ptr %133, align 4, !tbaa !100
  %135 = load ptr, ptr %1, align 8, !tbaa !63
  %136 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 42
  store i16 %134, ptr %136, align 8, !tbaa !101
  %137 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 71
  %138 = load i16, ptr %137, align 2, !tbaa !102
  %139 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 43
  store i16 %138, ptr %139, align 2, !tbaa !103
  %140 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 72
  %141 = load i16, ptr %140, align 8, !tbaa !104
  %142 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 44
  store i16 %141, ptr %142, align 4, !tbaa !105
  %143 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 25
  store i16 0, ptr %143, align 2, !tbaa !106
  %144 = getelementptr inbounds %struct.macroblock, ptr %135, i64 0, i32 61
  store i8 0, ptr %144, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #5

declare void @init_motion_vector_prediction(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @set_read_and_store_CBP(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @exit_macroblock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !108
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 57
  %10 = load i32, ptr %9, align 4, !tbaa !109
  %11 = add i32 %10, -1
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @FmoGetNextMBNr(ptr noundef %3, i32 noundef %8) #15
  store i32 %14, ptr %7, align 4, !tbaa !65
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 114
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = tail call i32 %18(ptr noundef nonnull %0, i32 noundef %1) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !97
  switch i32 %23, label %24 [
    i32 2, label %35
    i32 4, label %35
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !111
  %27 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !112
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 23
  %32 = load i32, ptr %31, align 8, !tbaa !114
  %33 = icmp slt i32 %32, 1
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %30, %24, %21, %21, %16, %13, %2
  %36 = phi i32 [ 1, %2 ], [ 1, %13 ], [ 0, %16 ], [ 1, %21 ], [ 1, %21 ], [ 1, %24 ], [ %34, %30 ]
  ret i32 %36
}

declare i32 @FmoGetNextMBNr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @setup_slice_methods(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %3 = load i32, ptr %2, align 4, !tbaa !97
  switch i32 %3, label %58 [
    i32 0, label %4
    i32 3, label %15
    i32 1, label %26
    i32 2, label %36
    i32 4, label %47
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_P, ptr %5, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr @read_motion_info_from_NAL_p_slice, ptr %6, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_p_slice, ptr %7, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_p_slice, ptr %8, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %9, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %11 = load i32, ptr %10, align 8, !tbaa !120
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @init_lists_p_slice, ptr @init_lists_p_slice_mvc
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %13, ptr %14, align 8, !tbaa !121
  br label %60

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_P, ptr %16, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr @read_motion_info_from_NAL_p_slice, ptr %17, align 8, !tbaa !116
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_p_slice, ptr %18, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_sp_slice, ptr %19, align 8, !tbaa !118
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %20, align 8, !tbaa !119
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %22 = load i32, ptr %21, align 8, !tbaa !120
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @init_lists_p_slice, ptr @init_lists_p_slice_mvc
  %25 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %24, ptr %25, align 8, !tbaa !121
  br label %60

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_B, ptr %27, align 8, !tbaa !115
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr @read_motion_info_from_NAL_b_slice, ptr %28, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_b_slice, ptr %29, align 8, !tbaa !117
  %30 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_b_slice, ptr %30, align 8, !tbaa !118
  tail call void @update_direct_types(ptr noundef %0) #15
  %31 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %32 = load i32, ptr %31, align 8, !tbaa !120
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @init_lists_b_slice, ptr @init_lists_b_slice_mvc
  %35 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %34, ptr %35, align 8, !tbaa !121
  br label %60

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_I, ptr %37, align 8, !tbaa !115
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr null, ptr %38, align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_i_slice, ptr %39, align 8, !tbaa !117
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_i_slice, ptr %40, align 8, !tbaa !118
  %41 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %41, align 8, !tbaa !119
  %42 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %43 = load i32, ptr %42, align 8, !tbaa !120
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @init_lists_i_slice, ptr @init_lists_i_slice_mvc
  %46 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %45, ptr %46, align 8, !tbaa !121
  br label %60

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 117
  store ptr @interpret_mb_mode_SI, ptr %48, align 8, !tbaa !115
  %49 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 115
  store ptr null, ptr %49, align 8, !tbaa !116
  %50 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 116
  store ptr @read_one_macroblock_i_slice, ptr %50, align 8, !tbaa !117
  %51 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 112
  store ptr @decode_one_component_i_slice, ptr %51, align 8, !tbaa !118
  %52 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 122
  store ptr null, ptr %52, align 8, !tbaa !119
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %54 = load i32, ptr %53, align 8, !tbaa !120
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @init_lists_i_slice, ptr @init_lists_i_slice_mvc
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 118
  store ptr %56, ptr %57, align 8, !tbaa !121
  br label %60

58:                                               ; preds = %1
  %59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %60

60:                                               ; preds = %58, %47, %36, %26, %15, %4
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %62 = load i32, ptr %61, align 8, !tbaa !68
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 119
  %65 = select i1 %63, ptr @intrapred_chroma, ptr @intrapred_chroma_mbaff
  store ptr %65, ptr %64, align 8, !tbaa !122
  %66 = load ptr, ptr %0, align 8, !tbaa !64
  %67 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !111
  %69 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %68, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !112
  switch i32 %70, label %107 [
    i32 1, label %71
    i32 0, label %89
  ]

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !123
  %74 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %73, i64 0, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !89
  switch i32 %75, label %87 [
    i32 3, label %76
    i32 2, label %83
    i32 0, label %85
  ]

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 105
  %78 = load i32, ptr %77, align 8, !tbaa !124
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_444, ptr %81, align 8, !tbaa !125
  br label %109

82:                                               ; preds = %76
  switch i32 %75, label %87 [
    i32 2, label %83
    i32 0, label %85
  ]

83:                                               ; preds = %71, %82
  %84 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_422, ptr %84, align 8, !tbaa !125
  br label %109

85:                                               ; preds = %71, %82
  %86 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_400, ptr %86, align 8, !tbaa !125
  br label %109

87:                                               ; preds = %71, %82
  %88 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CABAC_420, ptr %88, align 8, !tbaa !125
  br label %109

89:                                               ; preds = %60
  %90 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !123
  %92 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %91, i64 0, i32 9
  %93 = load i32, ptr %92, align 4, !tbaa !89
  switch i32 %93, label %105 [
    i32 3, label %94
    i32 2, label %101
    i32 0, label %103
  ]

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.video_par, ptr %66, i64 0, i32 105
  %96 = load i32, ptr %95, align 8, !tbaa !124
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_444, ptr %99, align 8, !tbaa !125
  br label %109

100:                                              ; preds = %94
  switch i32 %93, label %105 [
    i32 2, label %101
    i32 0, label %103
  ]

101:                                              ; preds = %89, %100
  %102 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_422, ptr %102, align 8, !tbaa !125
  br label %109

103:                                              ; preds = %89, %100
  %104 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_400, ptr %104, align 8, !tbaa !125
  br label %109

105:                                              ; preds = %89, %100
  %106 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 111
  store ptr @read_CBP_and_coeffs_from_NAL_CAVLC_420, ptr %106, align 8, !tbaa !125
  br label %109

107:                                              ; preds = %60
  %108 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %109

109:                                              ; preds = %98, %103, %105, %101, %80, %85, %87, %83, %107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @interpret_mb_mode_P(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !93
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
  store i16 8, ptr %2, align 8, !tbaa !93
  %14 = zext i1 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 24
  store i32 %14, ptr %16, align 4, !tbaa !126
  br label %40

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %18, align 8, !tbaa !81
  switch i16 %3, label %27 [
    i16 6, label %19
    i16 31, label %22
  ]

19:                                               ; preds = %17
  store i16 9, ptr %2, align 8, !tbaa !93
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %20, align 4
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %21, align 8
  br label %40

22:                                               ; preds = %17
  store i16 14, ptr %2, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %23, align 4, !tbaa !95
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %24, align 8, !tbaa !127
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %26, align 8
  br label %40

27:                                               ; preds = %17
  store i16 10, ptr %2, align 8, !tbaa !93
  %28 = add nsw i16 %3, -7
  %29 = sext i16 %28 to i32
  %30 = lshr i32 %29, 2
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [6 x i16], ptr @interpret_mb_mode_I.ICBPTAB, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !87
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %34, ptr %35, align 4, !tbaa !95
  %36 = and i32 %29, 3
  %37 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %36, ptr %37, align 8, !tbaa !127
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %39, align 8
  br label %40

40:                                               ; preds = %12, %22, %27, %19, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_motion_info_from_NAL_p_slice(ptr noundef %0) #3 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 42
  %7 = load i32, ptr %6, align 8, !tbaa !128
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %11 = load i16, ptr %10, align 8, !tbaa !93
  %12 = icmp eq i16 %11, 8
  %13 = select i1 %12, i16 4, i16 %11
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %14, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %22 = load i16, ptr %21, align 2, !tbaa !106
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  store i32 3, ptr %2, align 8, !tbaa !129
  %26 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 57
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = getelementptr inbounds i8, ptr %9, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !54
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.datapartition, ptr %27, i64 %30
  %32 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %33 = load i32, ptr %32, align 8, !tbaa !53
  br i1 %12, label %34, label %38

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 24
  %36 = load i32, ptr %35, align 4, !tbaa !126
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %1
  %39 = phi i1 [ false, %1 ], [ %37, %34 ]
  %40 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 60
  store ptr @readRefPictureIdx_Null, ptr %40, align 8, !tbaa !132
  %41 = icmp sgt i32 %33, 1
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !111
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !112
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %31, align 8, !tbaa !133
  %50 = getelementptr inbounds %struct.bit_stream, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !136
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48, %42
  %54 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %54, align 8, !tbaa !138
  br i1 %39, label %62, label %55

55:                                               ; preds = %53
  %56 = icmp eq i32 %33, 2
  %57 = select i1 %56, ptr @readRefPictureIdx_FLC, ptr @readRefPictureIdx_VLC
  br label %60

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRefFrame_CABAC, ptr %59, align 8, !tbaa !139
  br i1 %39, label %62, label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %57, %55 ], [ @readRefPictureIdx_VLC, %58 ]
  store ptr %61, ptr %40, align 8, !tbaa !132
  br label %62

62:                                               ; preds = %60, %38, %53, %58
  %63 = getelementptr inbounds %struct.storable_picture, ptr %20, i64 0, i32 35
  %64 = load ptr, ptr %63, align 8, !tbaa !140
  %65 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !73
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %70 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %72 = sext i32 %16 to i64
  %73 = sext i32 %18 to i64
  %74 = icmp eq i16 %13, 0
  br label %75

75:                                               ; preds = %128, %62
  %76 = phi i64 [ 0, %62 ], [ %80, %128 ]
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 2
  store i32 %78, ptr %69, align 8, !tbaa !141
  %79 = and i32 %77, -2
  %80 = add i64 %76, %73
  br label %81

81:                                               ; preds = %124, %75
  %82 = phi i64 [ 0, %75 ], [ %125, %124 ]
  %83 = trunc i64 %82 to i32
  %84 = ashr i32 %83, 1
  %85 = add nsw i32 %84, %79
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !54
  %89 = and i8 %88, -3
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %86
  %93 = load i8, ptr %92, align 1, !tbaa !54
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %124, label %95

95:                                               ; preds = %91
  %96 = shl i32 %83, 2
  store i32 %96, ptr %70, align 4, !tbaa !142
  %97 = load ptr, ptr %40, align 8, !tbaa !132
  %98 = load i8, ptr %92, align 1, !tbaa !54
  %99 = call signext i8 %97(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %31, i8 noundef signext %98, i32 noundef 0) #15
  br i1 %74, label %124, label %100

100:                                              ; preds = %95
  %101 = add i32 %16, %83
  br label %102

102:                                              ; preds = %121, %100
  %103 = phi i64 [ %76, %100 ], [ %122, %121 ]
  %104 = load i32, ptr %71, align 8, !tbaa !72
  %105 = add nsw i32 %104, %83
  %106 = add i32 %104, %101
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = getelementptr inbounds ptr, ptr %68, i64 %103
  %110 = sext i32 %104 to i64
  %111 = add nsw i64 %82, %110
  br label %112

112:                                              ; preds = %112, %108
  %113 = phi i64 [ %111, %108 ], [ %116, %112 ]
  %114 = load ptr, ptr %109, align 8, !tbaa !63
  %115 = getelementptr inbounds %struct.pic_motion_params, ptr %114, i64 %113, i32 2, i64 0
  store i8 %99, ptr %115, align 1, !tbaa !54
  %116 = add nsw i64 %113, 1
  %117 = load i32, ptr %71, align 8, !tbaa !72
  %118 = add i32 %117, %101
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %112, label %121, !llvm.loop !143

121:                                              ; preds = %112, %102
  %122 = add nsw i64 %103, 1
  %123 = icmp slt i64 %122, %80
  br i1 %123, label %102, label %124, !llvm.loop !144

124:                                              ; preds = %121, %95, %91, %81
  %125 = add i64 %82, %72
  %126 = trunc i64 %125 to i32
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %81, label %128, !llvm.loop !145

128:                                              ; preds = %124
  %129 = icmp slt i64 %80, 4
  br i1 %129, label %75, label %130, !llvm.loop !146

130:                                              ; preds = %128
  store i32 5, ptr %2, align 8, !tbaa !129
  %131 = load ptr, ptr %26, align 8, !tbaa !131
  %132 = getelementptr inbounds i8, ptr %9, i64 5
  %133 = load i8, ptr %132, align 1, !tbaa !54
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds %struct.datapartition, ptr %131, i64 %134
  %136 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !111
  %138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %137, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !112
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %130
  %142 = load ptr, ptr %135, align 8, !tbaa !133
  %143 = getelementptr inbounds %struct.bit_stream, ptr %142, i64 0, i32 5
  %144 = load i32, ptr %143, align 8, !tbaa !136
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141, %130
  %147 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_se, ptr %147, align 8, !tbaa !138
  br label %150

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_MVD_CABAC, ptr %149, align 8, !tbaa !139
  br label %150

150:                                              ; preds = %148, %146
  call fastcc void @readMBMotionVectors(ptr noundef nonnull %2, ptr noundef %135, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %16, i32 noundef %18)
  %151 = load i32, ptr %65, align 4, !tbaa !73
  %152 = load i32, ptr %71, align 8, !tbaa !72
  %153 = sext i32 %152 to i64
  %154 = sext i32 %151 to i64
  %155 = add nsw i32 %151, 3
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %150, %157
  %158 = phi i64 [ %154, %150 ], [ %186, %157 ]
  %159 = load ptr, ptr %63, align 8, !tbaa !140
  %160 = getelementptr inbounds ptr, ptr %159, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !63
  %162 = getelementptr inbounds %struct.pic_motion_params, ptr %161, i64 %153
  %163 = getelementptr inbounds %struct.pic_motion_params, ptr %161, i64 %153, i32 2
  %164 = load i8, ptr %163, align 8, !tbaa !54
  %165 = sext i8 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %25, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !63
  store ptr %167, ptr %162, align 8, !tbaa !63
  %168 = getelementptr inbounds %struct.pic_motion_params, ptr %162, i64 1
  %169 = getelementptr inbounds %struct.pic_motion_params, ptr %162, i64 1, i32 2
  %170 = load i8, ptr %169, align 8, !tbaa !54
  %171 = sext i8 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %25, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !63
  store ptr %173, ptr %168, align 8, !tbaa !63
  %174 = getelementptr inbounds %struct.pic_motion_params, ptr %162, i64 2
  %175 = getelementptr inbounds %struct.pic_motion_params, ptr %162, i64 2, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !54
  %177 = sext i8 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %25, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !63
  store ptr %179, ptr %174, align 8, !tbaa !63
  %180 = getelementptr inbounds %struct.pic_motion_params, ptr %162, i64 3
  %181 = getelementptr inbounds %struct.pic_motion_params, ptr %162, i64 3, i32 2
  %182 = load i8, ptr %181, align 8, !tbaa !54
  %183 = sext i8 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %25, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !63
  store ptr %185, ptr %180, align 8, !tbaa !63
  %186 = add nsw i64 %158, 1
  %187 = icmp slt i64 %158, %156
  br i1 %187, label %157, label %188, !llvm.loop !147

188:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_one_macroblock_p_slice(ptr noundef %0) #3 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 37
  %15 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %7, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = sext i32 %7 to i64
  %25 = getelementptr %struct.macroblock, ptr %23, i64 %24
  %26 = getelementptr %struct.macroblock, ptr %25, i64 -1
  %27 = getelementptr %struct.macroblock, ptr %25, i64 -1, i32 30
  %28 = load i16, ptr %27, align 8, !tbaa !93
  %29 = icmp eq i16 %28, 0
  br label %30

30:                                               ; preds = %21, %1
  %31 = phi ptr [ %26, %21 ], [ null, %1 ]
  %32 = phi i1 [ %29, %21 ], [ false, %1 ]
  br i1 %19, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %35 = load ptr, ptr %34, align 8, !tbaa !148
  %36 = sext i32 %7 to i64
  %37 = getelementptr %struct.macroblock, ptr %35, i64 %36
  %38 = getelementptr %struct.macroblock, ptr %37, i64 -1, i32 45
  %39 = load i32, ptr %38, align 8, !tbaa !149
  br label %40

40:                                               ; preds = %30, %33
  %41 = phi i32 [ %39, %33 ], [ 0, %30 ]
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %41, ptr %42, align 8, !tbaa !149
  %43 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %44 = load i32, ptr %43, align 4, !tbaa !150
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %44, ptr %45, align 4, !tbaa !46
  %46 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 67
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = add nsw i32 %47, %44
  %49 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %48, ptr %49, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 68
  br label %51

51:                                               ; preds = %67, %40
  %52 = phi i64 [ 0, %40 ], [ %71, %67 ]
  %53 = load i32, ptr %50, align 8, !tbaa !47
  %54 = sub nsw i32 0, %53
  %55 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 56, i64 %52
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = add nsw i32 %56, %44
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 %54)
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 51)
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %52
  store i32 %59, ptr %60, align 4, !tbaa !53
  %61 = icmp slt i32 %58, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = zext nneg i32 %59 to i64
  %64 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !54
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %62, %51
  %68 = phi i32 [ %66, %62 ], [ %59, %51 ]
  store i32 %68, ptr %60, align 4, !tbaa !53
  %69 = load i32, ptr %50, align 8, !tbaa !47
  %70 = add nsw i32 %69, %68
  %71 = add nuw nsw i64 %52, 1
  %72 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %71
  store i32 %70, ptr %72, align 4, !tbaa !53
  %73 = icmp eq i64 %52, 0
  br i1 %73, label %51, label %74, !llvm.loop !55

74:                                               ; preds = %67
  %75 = load i32, ptr %49, align 8, !tbaa !53
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 73
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %74, %77
  %83 = phi i32 [ 0, %74 ], [ %81, %77 ]
  %84 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %83, ptr %84, align 4, !tbaa !60
  store i32 2, ptr %2, align 8, !tbaa !129
  %85 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %86 = load ptr, ptr %85, align 8, !tbaa !131
  %87 = getelementptr inbounds i8, ptr %11, i64 2
  %88 = load i8, ptr %87, align 2, !tbaa !54
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89
  %91 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !111
  %93 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !112
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %82
  %97 = load ptr, ptr %90, align 8, !tbaa !133
  %98 = getelementptr inbounds %struct.bit_stream, ptr %97, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !136
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96, %82
  %102 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %102, align 8, !tbaa !138
  br label %103

103:                                              ; preds = %101, %96
  %104 = icmp eq i32 %94, 1
  br i1 %104, label %105, label %194

105:                                              ; preds = %103
  %106 = load i32, ptr %15, align 8, !tbaa !68
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %19, i1 true, i1 %32
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %112 = load i32, ptr %111, align 4, !tbaa !151
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  br label %122

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %118 = load i32, ptr %117, align 8, !tbaa !152
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  br label %122

122:                                              ; preds = %114, %120
  %123 = phi ptr [ %121, %120 ], [ %115, %114 ]
  %124 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %125 = load ptr, ptr %124, align 8, !tbaa !148
  %126 = load i32, ptr %123, align 4, !tbaa !53
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.macroblock, ptr %125, i64 %127, i32 45
  %129 = load i32, ptr %128, align 8, !tbaa !149
  br label %130

130:                                              ; preds = %122, %116
  %131 = phi i32 [ 0, %116 ], [ %129, %122 ]
  store i32 %131, ptr %42, align 8, !tbaa !149
  br label %132

132:                                              ; preds = %130, %105
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #15
  %133 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_skip_flag_CABAC_p_slice, ptr %133, align 8, !tbaa !139
  %134 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !153
  %136 = call i32 %135(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %90) #15
  %137 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !154
  %139 = trunc i32 %138 to i16
  %140 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %139, ptr %140, align 8, !tbaa !93
  %141 = icmp eq i32 %138, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 %142, ptr %143, align 2, !tbaa !155
  %144 = load ptr, ptr %90, align 8, !tbaa !133
  %145 = getelementptr inbounds %struct.bit_stream, ptr %144, i64 0, i32 5
  %146 = load i32, ptr %145, align 8, !tbaa !136
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %132
  %149 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %149, align 2, !tbaa !156
  br label %150

150:                                              ; preds = %148, %132
  %151 = load i32, ptr %15, align 8, !tbaa !68
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %180, label %153

153:                                              ; preds = %150
  br i1 %19, label %154, label %157

154:                                              ; preds = %153
  %155 = zext i1 %141 to i32
  %156 = xor i1 %141, true
  br label %163

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.macroblock, ptr %31, i64 0, i32 41
  %159 = load i8, ptr %158, align 2, !tbaa !155
  %160 = icmp ne i8 %159, 0
  %161 = xor i1 %141, true
  %162 = select i1 %160, i1 %161, i1 false
  br label %163

163:                                              ; preds = %157, %154
  %164 = phi i32 [ %155, %154 ], [ 0, %157 ]
  %165 = phi i1 [ %156, %154 ], [ %162, %157 ]
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  store ptr @readFieldModeInfo_CABAC, ptr %133, align 8, !tbaa !139
  %167 = load ptr, ptr %134, align 8, !tbaa !153
  %168 = call i32 %167(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %90) #15
  %169 = load i32, ptr %137, align 4, !tbaa !154
  store i32 %169, ptr %42, align 8, !tbaa !149
  br label %170

170:                                              ; preds = %163, %166
  %171 = icmp eq i32 %164, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %170
  %173 = call i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %90) #15
  br label %174

174:                                              ; preds = %172, %170
  %175 = load i32, ptr %42, align 8, !tbaa !149
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %19, i16 2, i16 4
  %178 = select i1 %176, i16 0, i16 %177
  %179 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %178, ptr %179, align 2, !tbaa !106
  call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #15
  br label %180

180:                                              ; preds = %174, %150
  %181 = load i16, ptr %140, align 8, !tbaa !93
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %305, label %183

183:                                              ; preds = %180
  store ptr @readMB_typeInfo_CABAC_p_slice, ptr %133, align 8, !tbaa !139
  %184 = load ptr, ptr %134, align 8, !tbaa !153
  %185 = call i32 %184(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %90) #15
  %186 = load i32, ptr %137, align 4, !tbaa !154
  %187 = trunc i32 %186 to i16
  store i16 %187, ptr %140, align 8, !tbaa !93
  %188 = load ptr, ptr %90, align 8, !tbaa !133
  %189 = getelementptr inbounds %struct.bit_stream, ptr %188, i64 0, i32 5
  %190 = load i32, ptr %189, align 8, !tbaa !136
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %305

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %193, align 2, !tbaa !156
  br label %305

194:                                              ; preds = %103
  %195 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  %196 = load i32, ptr %195, align 8, !tbaa !114
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !153
  %201 = call i32 %200(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %90) #15
  %202 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %203 = load i32, ptr %202, align 4, !tbaa !154
  store i32 %203, ptr %195, align 8, !tbaa !114
  br label %204

204:                                              ; preds = %198, %194
  %205 = load i32, ptr %195, align 8, !tbaa !114
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %243

207:                                              ; preds = %204
  %208 = load i32, ptr %15, align 8, !tbaa !68
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %19, i1 true, i1 %32
  %211 = select i1 %209, i1 %210, i1 false
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %213, align 4, !tbaa !157
  %214 = load ptr, ptr %90, align 8, !tbaa !133
  %215 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %214) #15
  %216 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !154
  store i32 %217, ptr %42, align 8, !tbaa !149
  br label %218

218:                                              ; preds = %212, %207
  %219 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !153
  %221 = call i32 %220(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %90) #15
  %222 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 33
  %223 = load i32, ptr %222, align 4, !tbaa !97
  switch i32 %223, label %228 [
    i32 0, label %224
    i32 3, label %224
  ]

224:                                              ; preds = %218, %218
  %225 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !154
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %225, align 4, !tbaa !154
  br label %228

228:                                              ; preds = %218, %224
  %229 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !154
  %231 = trunc i32 %230 to i16
  %232 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %231, ptr %232, align 8, !tbaa !93
  %233 = load ptr, ptr %90, align 8, !tbaa !133
  %234 = getelementptr inbounds %struct.bit_stream, ptr %233, i64 0, i32 5
  %235 = load i32, ptr %234, align 8, !tbaa !136
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %238, align 2, !tbaa !156
  br label %239

239:                                              ; preds = %237, %228
  %240 = load i32, ptr %195, align 8, !tbaa !114
  %241 = add nsw i32 %240, -1
  store i32 %241, ptr %195, align 8, !tbaa !114
  %242 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 0, ptr %242, align 2, !tbaa !155
  br label %299

243:                                              ; preds = %204
  %244 = add nsw i32 %205, -1
  store i32 %244, ptr %195, align 8, !tbaa !114
  %245 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 0, ptr %245, align 8, !tbaa !93
  %246 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %246, align 2, !tbaa !156
  %247 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 1, ptr %247, align 2, !tbaa !155
  %248 = load i32, ptr %15, align 8, !tbaa !68
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %299, label %250

250:                                              ; preds = %243
  %251 = or i32 %244, %18
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %254, align 4, !tbaa !157
  %255 = load ptr, ptr %90, align 8, !tbaa !133
  %256 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %255) #15
  %257 = load ptr, ptr %90, align 8, !tbaa !133
  %258 = getelementptr inbounds %struct.bit_stream, ptr %257, i64 0, i32 2
  %259 = load i32, ptr %258, align 8, !tbaa !158
  %260 = add nsw i32 %259, -1
  store i32 %260, ptr %258, align 8, !tbaa !158
  %261 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %262 = load i32, ptr %261, align 4, !tbaa !154
  store i32 %262, ptr %42, align 8, !tbaa !149
  br label %299

263:                                              ; preds = %250
  %264 = icmp sgt i32 %205, 1
  %265 = and i1 %19, %264
  br i1 %265, label %266, label %299

266:                                              ; preds = %263
  %267 = add nsw i32 %7, -2
  %268 = call i32 @mb_is_available(i32 noundef %267, ptr noundef nonnull %0) #15
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %272 = load i32, ptr %271, align 4, !tbaa !159
  %273 = shl i32 %272, 1
  %274 = urem i32 %7, %273
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %278 = load ptr, ptr %277, align 8, !tbaa !148
  %279 = sext i32 %267 to i64
  %280 = getelementptr inbounds %struct.macroblock, ptr %278, i64 %279, i32 45
  %281 = load i32, ptr %280, align 8, !tbaa !149
  store i32 %281, ptr %42, align 8, !tbaa !149
  br label %299

282:                                              ; preds = %270, %266
  %283 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %284 = load i32, ptr %283, align 4, !tbaa !159
  %285 = shl i32 %284, 1
  %286 = sub i32 %7, %285
  %287 = call i32 @mb_is_available(i32 noundef %286, ptr noundef nonnull %0) #15
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %291 = load ptr, ptr %290, align 8, !tbaa !148
  %292 = load i32, ptr %283, align 4, !tbaa !159
  %293 = shl i32 %292, 1
  %294 = sub i32 %7, %293
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.macroblock, ptr %291, i64 %295, i32 45
  %297 = load i32, ptr %296, align 8, !tbaa !149
  store i32 %297, ptr %42, align 8, !tbaa !149
  br label %299

298:                                              ; preds = %282
  store i32 0, ptr %42, align 8, !tbaa !149
  br label %299

299:                                              ; preds = %263, %243, %289, %298, %276, %253, %239
  %300 = load i32, ptr %42, align 8, !tbaa !149
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %19, i16 2, i16 4
  %303 = select i1 %301, i16 0, i16 %302
  %304 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %303, ptr %304, align 2, !tbaa !106
  br label %305

305:                                              ; preds = %180, %192, %183, %299
  %306 = load i32, ptr %42, align 8, !tbaa !149
  %307 = trunc i32 %306 to i8
  %308 = load ptr, ptr %14, align 8, !tbaa !160
  %309 = sext i32 %7 to i64
  %310 = getelementptr inbounds i8, ptr %308, i64 %309
  store i8 %307, ptr %310, align 1, !tbaa !54
  %311 = load i32, ptr %42, align 8, !tbaa !149
  %312 = icmp eq i32 %311, 0
  %313 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %314 = load i32, ptr %313, align 4, !tbaa !73
  br i1 %312, label %321, label %315

315:                                              ; preds = %305
  br i1 %19, label %319, label %316

316:                                              ; preds = %315
  %317 = add nsw i32 %314, -4
  %318 = ashr i32 %317, 1
  br label %321

319:                                              ; preds = %315
  %320 = ashr i32 %314, 1
  br label %321

321:                                              ; preds = %305, %316, %319
  %322 = phi i32 [ %318, %316 ], [ %320, %319 ], [ %314, %305 ]
  %323 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  store i32 %322, ptr %323, align 8, !tbaa !74
  %324 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 126
  %325 = load ptr, ptr %324, align 8, !tbaa !161
  %326 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %327 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %328 = load i16, ptr %327, align 2, !tbaa !71
  %329 = sext i16 %328 to i64
  %330 = getelementptr inbounds ptr, ptr %325, i64 %329
  %331 = load ptr, ptr %330, align 8, !tbaa !63
  %332 = load i16, ptr %326, align 4, !tbaa !70
  %333 = sext i16 %332 to i64
  %334 = getelementptr inbounds i32, ptr %331, i64 %333
  store i32 0, ptr %334, align 4, !tbaa !53
  %335 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 117
  %336 = load ptr, ptr %335, align 8, !tbaa !115
  call void %336(ptr noundef nonnull %0) #15
  %337 = load i32, ptr %15, align 8, !tbaa !68
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %349, label %339

339:                                              ; preds = %321
  %340 = load i32, ptr %42, align 8, !tbaa !149
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27
  %344 = load i32, ptr %343, align 8, !tbaa !53
  %345 = shl i32 %344, 1
  store i32 %345, ptr %343, align 8, !tbaa !53
  %346 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27, i64 1
  %347 = load i32, ptr %346, align 4, !tbaa !53
  %348 = shl i32 %347, 1
  store i32 %348, ptr %346, align 4, !tbaa !53
  br label %349

349:                                              ; preds = %339, %342, %321
  %350 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 1, ptr %350, align 8, !tbaa !162
  %351 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %352 = load i16, ptr %351, align 8, !tbaa !93
  %353 = icmp eq i16 %352, 8
  br i1 %353, label %354, label %455

354:                                              ; preds = %349
  store i32 2, ptr %2, align 8, !tbaa !129
  %355 = load ptr, ptr %85, align 8, !tbaa !131
  %356 = getelementptr inbounds %struct.datapartition, ptr %355, i64 %89
  %357 = load ptr, ptr %91, align 8, !tbaa !111
  %358 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %357, i64 0, i32 3
  %359 = load i32, ptr %358, align 4, !tbaa !112
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %354
  %362 = load ptr, ptr %356, align 8, !tbaa !133
  %363 = getelementptr inbounds %struct.bit_stream, ptr %362, i64 0, i32 5
  %364 = load i32, ptr %363, align 8, !tbaa !136
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %368, label %366

366:                                              ; preds = %361, %354
  %367 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %367, align 8, !tbaa !138
  br label %370

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readB8_typeInfo_CABAC_p_slice, ptr %369, align 8, !tbaa !139
  br label %370

370:                                              ; preds = %368, %366
  %371 = getelementptr inbounds %struct.datapartition, ptr %355, i64 %89, i32 2
  %372 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %373 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 2
  br label %374

374:                                              ; preds = %370, %407
  %375 = phi i64 [ 0, %370 ], [ %412, %407 ]
  %376 = load ptr, ptr %371, align 8, !tbaa !153
  %377 = call i32 %376(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %356) #15
  %378 = load i32, ptr %372, align 4, !tbaa !154
  %379 = load ptr, ptr %0, align 8, !tbaa !42
  %380 = getelementptr inbounds %struct.slice, ptr %379, i64 0, i32 33
  %381 = load i32, ptr %380, align 4, !tbaa !97
  %382 = icmp eq i32 %381, 1
  %383 = sext i32 %378 to i64
  %384 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %375
  %385 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %375
  br i1 %382, label %386, label %390

386:                                              ; preds = %374
  %387 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2b8, i64 0, i64 %383
  %388 = load i8, ptr %387, align 1, !tbaa !54
  store i8 %388, ptr %384, align 1, !tbaa !54
  %389 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2pd, i64 0, i64 %383
  br label %394

390:                                              ; preds = %374
  %391 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2b8, i64 0, i64 %383
  %392 = load i8, ptr %391, align 1, !tbaa !54
  store i8 %392, ptr %384, align 1, !tbaa !54
  %393 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2pd, i64 0, i64 %383
  br label %394

394:                                              ; preds = %386, %390
  %395 = phi ptr [ %389, %386 ], [ %393, %390 ]
  %396 = load i8, ptr %395, align 1, !tbaa !54
  store i8 %396, ptr %385, align 1, !tbaa !54
  %397 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %375
  %398 = load i8, ptr %397, align 1, !tbaa !54
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %394
  %401 = load ptr, ptr %373, align 8, !tbaa !123
  %402 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %401, i64 0, i32 32
  %403 = load i32, ptr %402, align 4, !tbaa !163
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %400, %394
  %406 = icmp eq i8 %398, 4
  br label %407

407:                                              ; preds = %405, %400
  %408 = phi i1 [ true, %400 ], [ %406, %405 ]
  %409 = load i32, ptr %350, align 8, !tbaa !162
  %410 = and i32 %409, 1
  %411 = select i1 %408, i32 %410, i32 0
  store i32 %411, ptr %350, align 8, !tbaa !162
  %412 = add nuw nsw i64 %375, 1
  %413 = icmp eq i64 %412, 4
  br i1 %413, label %414, label %374, !llvm.loop !164

414:                                              ; preds = %407
  %415 = load ptr, ptr %0, align 8, !tbaa !42
  %416 = getelementptr inbounds %struct.slice, ptr %415, i64 0, i32 125
  %417 = load ptr, ptr %416, align 8, !tbaa !43
  %418 = getelementptr inbounds %struct.storable_picture, ptr %417, i64 0, i32 35
  %419 = load ptr, ptr %418, align 8, !tbaa !140
  %420 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %421 = load i32, ptr %420, align 4, !tbaa !73
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds ptr, ptr %419, i64 %422
  %424 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  br label %425

425:                                              ; preds = %425, %414
  %426 = phi ptr [ %423, %414 ], [ %444, %425 ]
  %427 = phi i32 [ 0, %414 ], [ %450, %425 ]
  %428 = load i32, ptr %424, align 8, !tbaa !72
  %429 = load ptr, ptr %426, align 8, !tbaa !63
  %430 = sext i32 %428 to i64
  %431 = getelementptr inbounds %struct.pic_motion_params, ptr %429, i64 %430
  %432 = getelementptr inbounds %struct.pic_motion_params, ptr %429, i64 %430, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %431, i8 0, i64 24, i1 false)
  store i8 -1, ptr %432, align 8, !tbaa !54
  %433 = getelementptr inbounds %struct.pic_motion_params, ptr %429, i64 %430, i32 2, i64 1
  store i8 -1, ptr %433, align 1, !tbaa !54
  %434 = load ptr, ptr %426, align 8, !tbaa !63
  %435 = getelementptr %struct.pic_motion_params, ptr %434, i64 %430
  %436 = getelementptr %struct.pic_motion_params, ptr %435, i64 1
  %437 = getelementptr %struct.pic_motion_params, ptr %435, i64 1, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %436, i8 0, i64 24, i1 false)
  store i8 -1, ptr %437, align 8, !tbaa !54
  %438 = getelementptr %struct.pic_motion_params, ptr %435, i64 1, i32 2, i64 1
  store i8 -1, ptr %438, align 1, !tbaa !54
  %439 = load ptr, ptr %426, align 8, !tbaa !63
  %440 = getelementptr %struct.pic_motion_params, ptr %439, i64 %430
  %441 = getelementptr %struct.pic_motion_params, ptr %440, i64 2
  %442 = getelementptr %struct.pic_motion_params, ptr %440, i64 2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %441, i8 0, i64 24, i1 false)
  store i8 -1, ptr %442, align 8, !tbaa !54
  %443 = getelementptr %struct.pic_motion_params, ptr %440, i64 2, i32 2, i64 1
  store i8 -1, ptr %443, align 1, !tbaa !54
  %444 = getelementptr inbounds ptr, ptr %426, i64 1
  %445 = load ptr, ptr %426, align 8, !tbaa !63
  %446 = getelementptr %struct.pic_motion_params, ptr %445, i64 %430
  %447 = getelementptr %struct.pic_motion_params, ptr %446, i64 3
  %448 = getelementptr %struct.pic_motion_params, ptr %446, i64 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %447, i8 0, i64 24, i1 false)
  store i8 -1, ptr %448, align 8, !tbaa !54
  %449 = getelementptr %struct.pic_motion_params, ptr %446, i64 3, i32 2, i64 1
  store i8 -1, ptr %449, align 1, !tbaa !54
  %450 = add nuw nsw i32 %427, 1
  %451 = icmp eq i32 %450, 4
  br i1 %451, label %452, label %425, !llvm.loop !165

452:                                              ; preds = %425
  %453 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %454 = load ptr, ptr %453, align 8, !tbaa !116
  call void %454(ptr noundef nonnull %0) #15
  br label %455

455:                                              ; preds = %452, %349
  %456 = load i16, ptr %351, align 8, !tbaa !93
  %457 = icmp eq i16 %456, 9
  br i1 %457, label %458, label %493

458:                                              ; preds = %455
  %459 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %460 = load i32, ptr %459, align 4, !tbaa !166
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %493, label %462

462:                                              ; preds = %458
  store i32 0, ptr %2, align 8, !tbaa !129
  %463 = load ptr, ptr %85, align 8, !tbaa !131
  %464 = load i8, ptr %11, align 4, !tbaa !54
  %465 = zext i8 %464 to i64
  %466 = getelementptr inbounds %struct.datapartition, ptr %463, i64 %465
  %467 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %467, align 8, !tbaa !139
  %468 = load ptr, ptr %91, align 8, !tbaa !111
  %469 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %468, i64 0, i32 3
  %470 = load i32, ptr %469, align 4, !tbaa !112
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %477, label %472

472:                                              ; preds = %462
  %473 = load ptr, ptr %466, align 8, !tbaa !133
  %474 = getelementptr inbounds %struct.bit_stream, ptr %473, i64 0, i32 5
  %475 = load i32, ptr %474, align 8, !tbaa !136
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %472, %462
  %478 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %478, align 4, !tbaa !157
  %479 = load ptr, ptr %466, align 8, !tbaa !133
  %480 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %479) #15
  br label %485

481:                                              ; preds = %472
  %482 = getelementptr inbounds %struct.datapartition, ptr %463, i64 %465, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !153
  %484 = call i32 %483(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %466) #15
  br label %485

485:                                              ; preds = %481, %477
  %486 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %487 = load i32, ptr %486, align 4, !tbaa !154
  %488 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %487, ptr %488, align 4, !tbaa !167
  %489 = icmp eq i32 %487, 0
  br i1 %489, label %495, label %490

490:                                              ; preds = %485
  store i16 13, ptr %351, align 8, !tbaa !93
  %491 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 218959117, ptr %491, align 4
  %492 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %492, align 8
  br label %495

493:                                              ; preds = %458, %455
  %494 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 0, ptr %494, align 4, !tbaa !167
  br label %495

495:                                              ; preds = %485, %490, %493
  %496 = load ptr, ptr %91, align 8, !tbaa !111
  %497 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %496, i64 0, i32 30
  %498 = load i32, ptr %497, align 4, !tbaa !168
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %508, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %502 = load i32, ptr %501, align 8, !tbaa !81
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %506 = load ptr, ptr %505, align 8, !tbaa !169
  %507 = getelementptr inbounds i8, ptr %506, i64 %309
  store i8 0, ptr %507, align 1, !tbaa !54
  br label %508

508:                                              ; preds = %500, %504, %495
  %509 = load i16, ptr %351, align 8, !tbaa !93
  %510 = icmp eq i16 %509, 8
  br i1 %510, label %549, label %511

511:                                              ; preds = %508
  %512 = load ptr, ptr %0, align 8, !tbaa !42
  %513 = getelementptr inbounds %struct.slice, ptr %512, i64 0, i32 125
  %514 = load ptr, ptr %513, align 8, !tbaa !43
  %515 = getelementptr inbounds %struct.storable_picture, ptr %514, i64 0, i32 35
  %516 = load ptr, ptr %515, align 8, !tbaa !140
  %517 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %518 = load i32, ptr %517, align 4, !tbaa !73
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds ptr, ptr %516, i64 %519
  %521 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  br label %522

522:                                              ; preds = %522, %511
  %523 = phi ptr [ %520, %511 ], [ %541, %522 ]
  %524 = phi i32 [ 0, %511 ], [ %547, %522 ]
  %525 = load i32, ptr %521, align 8, !tbaa !72
  %526 = load ptr, ptr %523, align 8, !tbaa !63
  %527 = sext i32 %525 to i64
  %528 = getelementptr inbounds %struct.pic_motion_params, ptr %526, i64 %527
  %529 = getelementptr inbounds %struct.pic_motion_params, ptr %526, i64 %527, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %528, i8 0, i64 24, i1 false)
  store i8 -1, ptr %529, align 8, !tbaa !54
  %530 = getelementptr inbounds %struct.pic_motion_params, ptr %526, i64 %527, i32 2, i64 1
  store i8 -1, ptr %530, align 1, !tbaa !54
  %531 = load ptr, ptr %523, align 8, !tbaa !63
  %532 = getelementptr %struct.pic_motion_params, ptr %531, i64 %527
  %533 = getelementptr %struct.pic_motion_params, ptr %532, i64 1
  %534 = getelementptr %struct.pic_motion_params, ptr %532, i64 1, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %533, i8 0, i64 24, i1 false)
  store i8 -1, ptr %534, align 8, !tbaa !54
  %535 = getelementptr %struct.pic_motion_params, ptr %532, i64 1, i32 2, i64 1
  store i8 -1, ptr %535, align 1, !tbaa !54
  %536 = load ptr, ptr %523, align 8, !tbaa !63
  %537 = getelementptr %struct.pic_motion_params, ptr %536, i64 %527
  %538 = getelementptr %struct.pic_motion_params, ptr %537, i64 2
  %539 = getelementptr %struct.pic_motion_params, ptr %537, i64 2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %538, i8 0, i64 24, i1 false)
  store i8 -1, ptr %539, align 8, !tbaa !54
  %540 = getelementptr %struct.pic_motion_params, ptr %537, i64 2, i32 2, i64 1
  store i8 -1, ptr %540, align 1, !tbaa !54
  %541 = getelementptr inbounds ptr, ptr %523, i64 1
  %542 = load ptr, ptr %523, align 8, !tbaa !63
  %543 = getelementptr %struct.pic_motion_params, ptr %542, i64 %527
  %544 = getelementptr %struct.pic_motion_params, ptr %543, i64 3
  %545 = getelementptr %struct.pic_motion_params, ptr %543, i64 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %544, i8 0, i64 24, i1 false)
  store i8 -1, ptr %545, align 8, !tbaa !54
  %546 = getelementptr %struct.pic_motion_params, ptr %543, i64 3, i32 2, i64 1
  store i8 -1, ptr %546, align 1, !tbaa !54
  %547 = add nuw nsw i32 %524, 1
  %548 = icmp eq i32 %547, 4
  br i1 %548, label %549, label %522, !llvm.loop !165

549:                                              ; preds = %522, %508
  %550 = load i16, ptr %351, align 8, !tbaa !93
  switch i16 %550, label %552 [
    i16 0, label %551
    i16 14, label %568
  ]

551:                                              ; preds = %549
  call void @skip_macroblock(ptr noundef nonnull %0)
  br label %645

552:                                              ; preds = %549
  %553 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %554 = load i32, ptr %553, align 8, !tbaa !81
  %555 = icmp eq i32 %554, 1
  br i1 %555, label %556, label %557

556:                                              ; preds = %552
  call fastcc void @read_ipred_modes(ptr noundef nonnull %0)
  br label %557

557:                                              ; preds = %556, %552
  %558 = load i32, ptr %553, align 8, !tbaa !81
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %565

560:                                              ; preds = %557
  %561 = load i16, ptr %351, align 8, !tbaa !93
  switch i16 %561, label %562 [
    i16 0, label %565
    i16 8, label %565
  ]

562:                                              ; preds = %560
  %563 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %564 = load ptr, ptr %563, align 8, !tbaa !116
  call void %564(ptr noundef nonnull %0) #15
  br label %565

565:                                              ; preds = %560, %560, %562, %557
  %566 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 111
  %567 = load ptr, ptr %566, align 8, !tbaa !125
  call void %567(ptr noundef nonnull %0) #15
  br label %645

568:                                              ; preds = %549
  %569 = load i32, ptr %8, align 8, !tbaa !128
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %639, label %571

571:                                              ; preds = %568
  %572 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %573 = load i32, ptr %572, align 8, !tbaa !170
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %639, label %575

575:                                              ; preds = %571
  %576 = load ptr, ptr %0, align 8, !tbaa !42
  %577 = load ptr, ptr %4, align 8, !tbaa !34
  %578 = getelementptr inbounds %struct.slice, ptr %576, i64 0, i32 125
  %579 = load ptr, ptr %578, align 8, !tbaa !43
  %580 = getelementptr inbounds %struct.video_par, ptr %577, i64 0, i32 69
  %581 = getelementptr inbounds %struct.slice, ptr %576, i64 0, i32 80
  %582 = load ptr, ptr %581, align 8, !tbaa !62
  %583 = load ptr, ptr %582, align 8, !tbaa !63
  br label %584

584:                                              ; preds = %594, %575
  %585 = phi i64 [ 0, %575 ], [ %595, %594 ]
  %586 = getelementptr inbounds ptr, ptr %583, i64 %585
  %587 = load ptr, ptr %586, align 8, !tbaa !63
  br label %588

588:                                              ; preds = %588, %584
  %589 = phi i64 [ 0, %584 ], [ %592, %588 ]
  %590 = load i32, ptr %580, align 4, !tbaa !53
  %591 = getelementptr inbounds i32, ptr %587, i64 %589
  store i32 %590, ptr %591, align 4, !tbaa !53
  %592 = add nuw nsw i64 %589, 1
  %593 = icmp eq i64 %592, 16
  br i1 %593, label %594, label %588, !llvm.loop !171

594:                                              ; preds = %588
  %595 = add nuw nsw i64 %585, 1
  %596 = icmp eq i64 %595, 16
  br i1 %596, label %597, label %584, !llvm.loop !172

597:                                              ; preds = %594
  %598 = getelementptr inbounds %struct.storable_picture, ptr %579, i64 0, i32 48
  %599 = load i32, ptr %598, align 4, !tbaa !173
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %645, label %601

601:                                              ; preds = %597
  %602 = getelementptr inbounds %struct.video_par, ptr %577, i64 0, i32 105
  %603 = load i32, ptr %602, align 8, !tbaa !124
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %645

605:                                              ; preds = %601
  %606 = getelementptr inbounds %struct.video_par, ptr %577, i64 0, i32 78
  %607 = getelementptr inbounds %struct.video_par, ptr %577, i64 0, i32 77
  br label %608

608:                                              ; preds = %636, %605
  %609 = phi i64 [ 0, %605 ], [ %637, %636 ]
  %610 = load i32, ptr %606, align 8, !tbaa !79
  %611 = icmp sgt i32 %610, 0
  br i1 %611, label %612, label %636

612:                                              ; preds = %608
  %613 = getelementptr inbounds %struct.video_par, ptr %577, i64 0, i32 69, i64 %609
  %614 = getelementptr inbounds ptr, ptr %582, i64 %609
  br label %615

615:                                              ; preds = %631, %612
  %616 = phi i64 [ 0, %612 ], [ %632, %631 ]
  %617 = load i32, ptr %607, align 4, !tbaa !77
  %618 = icmp sgt i32 %617, 0
  br i1 %618, label %619, label %631

619:                                              ; preds = %615
  %620 = load ptr, ptr %614, align 8, !tbaa !63
  %621 = getelementptr inbounds ptr, ptr %620, i64 %616
  %622 = load ptr, ptr %621, align 8, !tbaa !63
  br label %623

623:                                              ; preds = %623, %619
  %624 = phi i64 [ 0, %619 ], [ %627, %623 ]
  %625 = load i32, ptr %613, align 4, !tbaa !53
  %626 = getelementptr inbounds i32, ptr %622, i64 %624
  store i32 %625, ptr %626, align 4, !tbaa !53
  %627 = add nuw nsw i64 %624, 1
  %628 = load i32, ptr %607, align 4, !tbaa !77
  %629 = sext i32 %628 to i64
  %630 = icmp slt i64 %627, %629
  br i1 %630, label %623, label %631, !llvm.loop !174

631:                                              ; preds = %623, %615
  %632 = add nuw nsw i64 %616, 1
  %633 = load i32, ptr %606, align 8, !tbaa !79
  %634 = sext i32 %633 to i64
  %635 = icmp slt i64 %632, %634
  br i1 %635, label %615, label %636, !llvm.loop !175

636:                                              ; preds = %631, %608
  %637 = add nuw nsw i64 %609, 1
  %638 = icmp eq i64 %609, 0
  br i1 %638, label %608, label %645, !llvm.loop !176

639:                                              ; preds = %571, %568
  %640 = load ptr, ptr %85, align 8, !tbaa !131
  %641 = getelementptr inbounds i8, ptr %11, i64 7
  %642 = load i8, ptr %641, align 1, !tbaa !54
  %643 = zext i8 %642 to i64
  %644 = getelementptr inbounds %struct.datapartition, ptr %640, i64 %643
  call fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef %3, ptr noundef %644)
  br label %645

645:                                              ; preds = %636, %601, %597, %565, %639, %551
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_one_component_p_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !177
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !93
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
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef %0) #15
  br label %26

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %26

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %26

16:                                               ; preds = %4
  %17 = tail call i32 @mb_pred_skip(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %26

18:                                               ; preds = %4
  %19 = tail call i32 @mb_pred_p_inter16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

20:                                               ; preds = %4
  %21 = tail call i32 @mb_pred_p_inter16x8(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

22:                                               ; preds = %4
  %23 = tail call i32 @mb_pred_p_inter8x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

24:                                               ; preds = %4
  %25 = tail call i32 @mb_pred_p_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

26:                                               ; preds = %10, %14, %18, %22, %24, %20, %16, %12, %8
  ret i32 1
}

declare void @init_lists_p_slice_mvc(ptr noundef) #5

declare void @init_lists_p_slice(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_one_component_sp_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !177
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !93
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
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef %0) #15
  br label %26

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %26

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %26

16:                                               ; preds = %4
  %17 = tail call i32 @mb_pred_sp_skip(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

18:                                               ; preds = %4
  %19 = tail call i32 @mb_pred_p_inter16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

20:                                               ; preds = %4
  %21 = tail call i32 @mb_pred_p_inter16x8(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

22:                                               ; preds = %4
  %23 = tail call i32 @mb_pred_p_inter8x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

24:                                               ; preds = %4
  %25 = tail call i32 @mb_pred_p_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %26

26:                                               ; preds = %10, %14, %18, %22, %24, %20, %16, %12, %8
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @interpret_mb_mode_B(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !93
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
  br label %73

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %9, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %10, align 4
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %11, align 8
  br label %73

12:                                               ; preds = %1
  %13 = add i16 %3, -24
  %14 = icmp ult i16 %13, 24
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %16, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %18, align 8
  %19 = add nsw i32 %4, -24
  %20 = lshr i32 %19, 2
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [6 x i16], ptr @interpret_mb_mode_I.ICBPTAB, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !87
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %24, ptr %25, align 4, !tbaa !95
  %26 = and i32 %4, 3
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %26, ptr %27, align 8, !tbaa !127
  br label %73

28:                                               ; preds = %12
  %29 = icmp eq i16 %3, 22
  br i1 %29, label %73, label %30

30:                                               ; preds = %28
  %31 = icmp slt i16 %3, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 16843009, ptr %33, align 4
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %35 = sext i16 %3 to i64
  %36 = getelementptr inbounds [12 x i16], ptr @interpret_mb_mode_B.offset2pdir16x16, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !87
  %38 = trunc i16 %37 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %34, i8 %38, i64 4, i1 false)
  br label %73

39:                                               ; preds = %30
  %40 = icmp eq i16 %3, 48
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  br i1 %40, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %43, align 8, !tbaa !81
  store i32 0, ptr %41, align 4
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %44, align 8
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %45, align 4, !tbaa !95
  %46 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %46, align 8, !tbaa !127
  br label %73

47:                                               ; preds = %39
  %48 = and i32 %4, 1
  %49 = icmp eq i32 %48, 0
  %50 = zext nneg i16 %3 to i64
  br i1 %49, label %51, label %63

51:                                               ; preds = %47
  store i32 33686018, ptr %41, align 4
  br label %52

52:                                               ; preds = %51, %52
  %53 = phi i64 [ 0, %51 ], [ %61, %52 ]
  %54 = trunc i64 %53 to i16
  %55 = ashr i16 %54, 1
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds [22 x [2 x i16]], ptr @interpret_mb_mode_B.offset2pdir16x8, i64 0, i64 %50, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !87
  %59 = trunc i16 %58 to i8
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %53
  store i8 %59, ptr %60, align 1, !tbaa !54
  %61 = add nuw nsw i64 %53, 1
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %73, label %52, !llvm.loop !178

63:                                               ; preds = %47
  store i32 50529027, ptr %41, align 4
  br label %64

64:                                               ; preds = %63, %64
  %65 = phi i64 [ 0, %63 ], [ %71, %64 ]
  %66 = and i64 %65, 1
  %67 = getelementptr inbounds [22 x [2 x i16]], ptr @interpret_mb_mode_B.offset2pdir8x16, i64 0, i64 %50, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !87
  %69 = trunc i16 %68 to i8
  %70 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %65
  store i8 %69, ptr %70, align 1, !tbaa !54
  %71 = add nuw nsw i64 %65, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %64, !llvm.loop !179

73:                                               ; preds = %64, %52, %28, %8, %42, %32, %15, %5
  %74 = phi i16 [ 0, %5 ], [ 9, %8 ], [ 10, %15 ], [ 1, %32 ], [ 14, %42 ], [ 8, %28 ], [ 2, %52 ], [ 3, %64 ]
  store i16 %74, ptr %2, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_motion_info_from_NAL_b_slice(ptr noundef %0) #3 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %13 = load i16, ptr %12, align 8, !tbaa !93
  %14 = icmp eq i16 %13, 8
  %15 = select i1 %14, i16 4, i16 %13
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %16
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %16, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %22 = load i16, ptr %21, align 2, !tbaa !106
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = add nsw i64 %23, 1
  %27 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  br i1 %14, label %29, label %32

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 122
  %31 = load ptr, ptr %30, align 8, !tbaa !119
  tail call void %31(ptr noundef nonnull %0) #15
  br label %32

32:                                               ; preds = %29, %1
  store i32 3, ptr %2, align 8, !tbaa !129
  %33 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %34 = load ptr, ptr %33, align 8, !tbaa !131
  %35 = getelementptr inbounds i8, ptr %11, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !54
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.datapartition, ptr %34, i64 %37
  %39 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27
  %40 = load i32, ptr %39, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 60
  store ptr @readRefPictureIdx_Null, ptr %41, align 8, !tbaa !132
  %42 = icmp sgt i32 %40, 1
  br i1 %42, label %43, label %63

43:                                               ; preds = %32
  %44 = load ptr, ptr %4, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.video_par, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !111
  %47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !112
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %38, align 8, !tbaa !133
  %52 = getelementptr inbounds %struct.bit_stream, ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !136
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50, %43
  %56 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %56, align 8, !tbaa !138
  %57 = icmp eq i32 %40, 2
  %58 = select i1 %57, ptr @readRefPictureIdx_FLC, ptr @readRefPictureIdx_VLC
  br label %61

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRefFrame_CABAC, ptr %60, align 8, !tbaa !139
  br label %61

61:                                               ; preds = %55, %59
  %62 = phi ptr [ @readRefPictureIdx_VLC, %59 ], [ %58, %55 ]
  store ptr %62, ptr %41, align 8, !tbaa !132
  br label %63

63:                                               ; preds = %61, %32
  %64 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 35
  %65 = load ptr, ptr %64, align 8, !tbaa !140
  %66 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !73
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68
  %70 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %72 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %73 = sext i32 %18 to i64
  %74 = sext i32 %20 to i64
  %75 = icmp eq i16 %15, 0
  br label %76

76:                                               ; preds = %129, %63
  %77 = phi i64 [ 0, %63 ], [ %81, %129 ]
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 2
  store i32 %79, ptr %70, align 8, !tbaa !141
  %80 = and i32 %78, -2
  %81 = add i64 %77, %74
  br label %82

82:                                               ; preds = %125, %76
  %83 = phi i64 [ 0, %76 ], [ %126, %125 ]
  %84 = trunc i64 %83 to i32
  %85 = ashr i32 %84, 1
  %86 = add nsw i32 %85, %80
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !54
  %90 = and i8 %89, -3
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %87
  %94 = load i8, ptr %93, align 1, !tbaa !54
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %92
  %97 = shl i32 %84, 2
  store i32 %97, ptr %71, align 4, !tbaa !142
  %98 = load ptr, ptr %41, align 8, !tbaa !132
  %99 = load i8, ptr %93, align 1, !tbaa !54
  %100 = call signext i8 %98(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %38, i8 noundef signext %99, i32 noundef 0) #15
  br i1 %75, label %125, label %101

101:                                              ; preds = %96
  %102 = add i32 %18, %84
  br label %103

103:                                              ; preds = %122, %101
  %104 = phi i64 [ %77, %101 ], [ %123, %122 ]
  %105 = load i32, ptr %72, align 8, !tbaa !72
  %106 = add nsw i32 %105, %84
  %107 = add i32 %105, %102
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = getelementptr inbounds ptr, ptr %69, i64 %104
  %111 = sext i32 %105 to i64
  %112 = add nsw i64 %83, %111
  br label %113

113:                                              ; preds = %113, %109
  %114 = phi i64 [ %112, %109 ], [ %117, %113 ]
  %115 = load ptr, ptr %110, align 8, !tbaa !63
  %116 = getelementptr inbounds %struct.pic_motion_params, ptr %115, i64 %114, i32 2, i64 0
  store i8 %100, ptr %116, align 1, !tbaa !54
  %117 = add nsw i64 %114, 1
  %118 = load i32, ptr %72, align 8, !tbaa !72
  %119 = add i32 %118, %102
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %113, label %122, !llvm.loop !143

122:                                              ; preds = %113, %103
  %123 = add nsw i64 %104, 1
  %124 = icmp slt i64 %123, %81
  br i1 %124, label %103, label %125, !llvm.loop !144

125:                                              ; preds = %122, %96, %92, %82
  %126 = add i64 %83, %73
  %127 = trunc i64 %126 to i32
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %82, label %129, !llvm.loop !145

129:                                              ; preds = %125
  %130 = icmp slt i64 %81, 4
  br i1 %130, label %76, label %131, !llvm.loop !146

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27, i64 1
  %133 = load i32, ptr %132, align 4, !tbaa !53
  store ptr @readRefPictureIdx_Null, ptr %41, align 8, !tbaa !132
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load ptr, ptr %4, align 8, !tbaa !34
  %137 = getelementptr inbounds %struct.video_par, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !111
  %139 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !112
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr %38, align 8, !tbaa !133
  %144 = getelementptr inbounds %struct.bit_stream, ptr %143, i64 0, i32 5
  %145 = load i32, ptr %144, align 8, !tbaa !136
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %142, %135
  %148 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %148, align 8, !tbaa !138
  %149 = icmp eq i32 %133, 2
  %150 = select i1 %149, ptr @readRefPictureIdx_FLC, ptr @readRefPictureIdx_VLC
  br label %153

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readRefFrame_CABAC, ptr %152, align 8, !tbaa !139
  br label %153

153:                                              ; preds = %147, %151
  %154 = phi ptr [ @readRefPictureIdx_VLC, %151 ], [ %150, %147 ]
  store ptr %154, ptr %41, align 8, !tbaa !132
  br label %155

155:                                              ; preds = %153, %131
  %156 = load ptr, ptr %64, align 8, !tbaa !140
  %157 = load i32, ptr %66, align 4, !tbaa !73
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  br label %160

160:                                              ; preds = %213, %155
  %161 = phi i64 [ 0, %155 ], [ %165, %213 ]
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 2
  store i32 %163, ptr %70, align 8, !tbaa !141
  %164 = and i32 %162, -2
  %165 = add i64 %161, %74
  br label %166

166:                                              ; preds = %209, %160
  %167 = phi i64 [ 0, %160 ], [ %210, %209 ]
  %168 = trunc i64 %167 to i32
  %169 = ashr i32 %168, 1
  %170 = add nsw i32 %169, %164
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !54
  %174 = add i8 %173, -1
  %175 = icmp ult i8 %174, 2
  br i1 %175, label %176, label %209

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %171
  %178 = load i8, ptr %177, align 1, !tbaa !54
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %209, label %180

180:                                              ; preds = %176
  %181 = shl i32 %168, 2
  store i32 %181, ptr %71, align 4, !tbaa !142
  %182 = load ptr, ptr %41, align 8, !tbaa !132
  %183 = load i8, ptr %177, align 1, !tbaa !54
  %184 = call signext i8 %182(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %38, i8 noundef signext %183, i32 noundef 1) #15
  br i1 %75, label %209, label %185

185:                                              ; preds = %180
  %186 = add i32 %18, %168
  br label %187

187:                                              ; preds = %206, %185
  %188 = phi i64 [ %161, %185 ], [ %207, %206 ]
  %189 = load i32, ptr %72, align 8, !tbaa !72
  %190 = add nsw i32 %189, %168
  %191 = add i32 %189, %186
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  %194 = getelementptr inbounds ptr, ptr %159, i64 %188
  %195 = sext i32 %189 to i64
  %196 = add nsw i64 %167, %195
  br label %197

197:                                              ; preds = %197, %193
  %198 = phi i64 [ %196, %193 ], [ %201, %197 ]
  %199 = load ptr, ptr %194, align 8, !tbaa !63
  %200 = getelementptr inbounds %struct.pic_motion_params, ptr %199, i64 %198, i32 2, i64 1
  store i8 %184, ptr %200, align 1, !tbaa !54
  %201 = add nsw i64 %198, 1
  %202 = load i32, ptr %72, align 8, !tbaa !72
  %203 = add i32 %202, %186
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %197, label %206, !llvm.loop !143

206:                                              ; preds = %197, %187
  %207 = add nsw i64 %188, 1
  %208 = icmp slt i64 %207, %165
  br i1 %208, label %187, label %209, !llvm.loop !144

209:                                              ; preds = %206, %180, %176, %166
  %210 = add i64 %167, %73
  %211 = trunc i64 %210 to i32
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %166, label %213, !llvm.loop !145

213:                                              ; preds = %209
  %214 = icmp slt i64 %165, 4
  br i1 %214, label %160, label %215, !llvm.loop !146

215:                                              ; preds = %213
  store i32 5, ptr %2, align 8, !tbaa !129
  %216 = load ptr, ptr %33, align 8, !tbaa !131
  %217 = getelementptr inbounds i8, ptr %11, i64 5
  %218 = load i8, ptr %217, align 1, !tbaa !54
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds %struct.datapartition, ptr %216, i64 %219
  %221 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !111
  %223 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %222, i64 0, i32 3
  %224 = load i32, ptr %223, align 4, !tbaa !112
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %215
  %227 = load ptr, ptr %220, align 8, !tbaa !133
  %228 = getelementptr inbounds %struct.bit_stream, ptr %227, i64 0, i32 5
  %229 = load i32, ptr %228, align 8, !tbaa !136
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226, %215
  %232 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_se, ptr %232, align 8, !tbaa !138
  br label %235

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_MVD_CABAC, ptr %234, align 8, !tbaa !139
  br label %235

235:                                              ; preds = %233, %231
  call fastcc void @readMBMotionVectors(ptr noundef nonnull %2, ptr noundef %220, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %18, i32 noundef %20)
  call fastcc void @readMBMotionVectors(ptr noundef nonnull %2, ptr noundef %220, ptr noundef nonnull %0, i32 noundef 1, i32 noundef %18, i32 noundef %20)
  %236 = load i32, ptr %66, align 4, !tbaa !73
  %237 = load i32, ptr %72, align 8, !tbaa !72
  %238 = sext i32 %237 to i64
  %239 = sext i32 %236 to i64
  %240 = add nsw i32 %237, 3
  %241 = sext i32 %240 to i64
  %242 = add nsw i32 %236, 3
  %243 = sext i32 %242 to i64
  br label %244

244:                                              ; preds = %235, %273
  %245 = phi i64 [ %239, %235 ], [ %274, %273 ]
  br label %246

246:                                              ; preds = %244, %268
  %247 = phi i64 [ %238, %244 ], [ %271, %268 ]
  %248 = load ptr, ptr %64, align 8, !tbaa !140
  %249 = getelementptr inbounds ptr, ptr %248, i64 %245
  %250 = load ptr, ptr %249, align 8, !tbaa !63
  %251 = getelementptr inbounds %struct.pic_motion_params, ptr %250, i64 %247
  %252 = getelementptr inbounds %struct.pic_motion_params, ptr %250, i64 %247, i32 2
  %253 = load i8, ptr %252, align 8, !tbaa !54
  %254 = icmp sgt i8 %253, -1
  br i1 %254, label %255, label %259

255:                                              ; preds = %246
  %256 = zext nneg i8 %253 to i64
  %257 = getelementptr inbounds ptr, ptr %25, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !63
  br label %259

259:                                              ; preds = %246, %255
  %260 = phi ptr [ %258, %255 ], [ null, %246 ]
  store ptr %260, ptr %251, align 8, !tbaa !63
  %261 = getelementptr inbounds %struct.pic_motion_params, ptr %250, i64 %247, i32 2, i64 1
  %262 = load i8, ptr %261, align 1, !tbaa !54
  %263 = icmp sgt i8 %262, -1
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = zext nneg i8 %262 to i64
  %266 = getelementptr inbounds ptr, ptr %28, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !63
  br label %268

268:                                              ; preds = %259, %264
  %269 = phi ptr [ %267, %264 ], [ null, %259 ]
  %270 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 1
  store ptr %269, ptr %270, align 8, !tbaa !63
  %271 = add nsw i64 %247, 1
  %272 = icmp slt i64 %247, %241
  br i1 %272, label %246, label %273, !llvm.loop !180

273:                                              ; preds = %268
  %274 = add nsw i64 %245, 1
  %275 = icmp slt i64 %245, %243
  br i1 %275, label %244, label %276, !llvm.loop !181

276:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_one_macroblock_b_slice(ptr noundef %0) #3 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 37
  %15 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %7, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = sext i32 %7 to i64
  %25 = getelementptr %struct.macroblock, ptr %23, i64 %24
  %26 = getelementptr %struct.macroblock, ptr %25, i64 -1
  %27 = getelementptr %struct.macroblock, ptr %25, i64 -1, i32 41
  %28 = load i8, ptr %27, align 2, !tbaa !155
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %21, %1
  %31 = phi ptr [ %26, %21 ], [ null, %1 ]
  %32 = phi i32 [ %29, %21 ], [ 0, %1 ]
  br i1 %19, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %35 = load ptr, ptr %34, align 8, !tbaa !148
  %36 = sext i32 %7 to i64
  %37 = getelementptr %struct.macroblock, ptr %35, i64 %36
  %38 = getelementptr %struct.macroblock, ptr %37, i64 -1, i32 45
  %39 = load i32, ptr %38, align 8, !tbaa !149
  br label %40

40:                                               ; preds = %30, %33
  %41 = phi i32 [ %39, %33 ], [ 0, %30 ]
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %41, ptr %42, align 8, !tbaa !149
  %43 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %44 = load i32, ptr %43, align 4, !tbaa !150
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %44, ptr %45, align 4, !tbaa !46
  %46 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 67
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = add nsw i32 %47, %44
  %49 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %48, ptr %49, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 68
  br label %51

51:                                               ; preds = %67, %40
  %52 = phi i64 [ 0, %40 ], [ %71, %67 ]
  %53 = load i32, ptr %50, align 8, !tbaa !47
  %54 = sub nsw i32 0, %53
  %55 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 56, i64 %52
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = add nsw i32 %56, %44
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 %54)
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 51)
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %52
  store i32 %59, ptr %60, align 4, !tbaa !53
  %61 = icmp slt i32 %58, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = zext nneg i32 %59 to i64
  %64 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !54
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %62, %51
  %68 = phi i32 [ %66, %62 ], [ %59, %51 ]
  store i32 %68, ptr %60, align 4, !tbaa !53
  %69 = load i32, ptr %50, align 8, !tbaa !47
  %70 = add nsw i32 %69, %68
  %71 = add nuw nsw i64 %52, 1
  %72 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %71
  store i32 %70, ptr %72, align 4, !tbaa !53
  %73 = icmp eq i64 %52, 0
  br i1 %73, label %51, label %74, !llvm.loop !55

74:                                               ; preds = %67
  %75 = load i32, ptr %49, align 8, !tbaa !53
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 73
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %74, %77
  %83 = phi i32 [ 0, %74 ], [ %81, %77 ]
  %84 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %83, ptr %84, align 4, !tbaa !60
  store i32 2, ptr %2, align 8, !tbaa !129
  %85 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %86 = load ptr, ptr %85, align 8, !tbaa !131
  %87 = getelementptr inbounds i8, ptr %11, i64 2
  %88 = load i8, ptr %87, align 2, !tbaa !54
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89
  %91 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !111
  %93 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !112
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %82
  %97 = load ptr, ptr %90, align 8, !tbaa !133
  %98 = getelementptr inbounds %struct.bit_stream, ptr %97, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !136
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96, %82
  %102 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %102, align 8, !tbaa !138
  br label %103

103:                                              ; preds = %101, %96
  %104 = icmp eq i32 %94, 1
  br i1 %104, label %105, label %203

105:                                              ; preds = %103
  %106 = load i32, ptr %15, align 8, !tbaa !68
  %107 = icmp ne i32 %106, 0
  %108 = icmp ne i32 %32, 0
  %109 = select i1 %19, i1 true, i1 %108
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %113 = load i32, ptr %112, align 4, !tbaa !151
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  br label %123

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %119 = load i32, ptr %118, align 8, !tbaa !152
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  br label %123

123:                                              ; preds = %115, %121
  %124 = phi ptr [ %122, %121 ], [ %116, %115 ]
  %125 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %126 = load ptr, ptr %125, align 8, !tbaa !148
  %127 = load i32, ptr %124, align 4, !tbaa !53
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.macroblock, ptr %126, i64 %128, i32 45
  %130 = load i32, ptr %129, align 8, !tbaa !149
  br label %131

131:                                              ; preds = %123, %117
  %132 = phi i32 [ 0, %117 ], [ %130, %123 ]
  store i32 %132, ptr %42, align 8, !tbaa !149
  br label %133

133:                                              ; preds = %131, %105
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #15
  %134 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @read_skip_flag_CABAC_b_slice, ptr %134, align 8, !tbaa !139
  %135 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !153
  %137 = call i32 %136(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %90) #15
  %138 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !154
  %140 = trunc i32 %139 to i16
  %141 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %140, ptr %141, align 8, !tbaa !93
  %142 = icmp eq i32 %139, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 %143, ptr %144, align 2, !tbaa !155
  %145 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 2
  %146 = load i32, ptr %145, align 8
  %147 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %146, ptr %147, align 4, !tbaa !95
  %148 = load ptr, ptr %90, align 8, !tbaa !133
  %149 = getelementptr inbounds %struct.bit_stream, ptr %148, i64 0, i32 5
  %150 = load i32, ptr %149, align 8, !tbaa !136
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %133
  %153 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %153, align 2, !tbaa !156
  br label %154

154:                                              ; preds = %152, %133
  %155 = icmp eq i32 %146, 0
  %156 = select i1 %142, i1 %155, i1 false
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  store i32 0, ptr %158, align 8, !tbaa !114
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, ptr %15, align 8, !tbaa !68
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %189, label %162

162:                                              ; preds = %159
  br i1 %19, label %163, label %166

163:                                              ; preds = %162
  %164 = zext i1 %142 to i32
  %165 = xor i1 %142, true
  br label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.macroblock, ptr %31, i64 0, i32 41
  %168 = load i8, ptr %167, align 2, !tbaa !155
  %169 = icmp ne i8 %168, 0
  %170 = xor i1 %142, true
  %171 = select i1 %169, i1 %170, i1 false
  br label %172

172:                                              ; preds = %166, %163
  %173 = phi i32 [ %164, %163 ], [ 0, %166 ]
  %174 = phi i1 [ %165, %163 ], [ %171, %166 ]
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  store ptr @readFieldModeInfo_CABAC, ptr %134, align 8, !tbaa !139
  %176 = load ptr, ptr %135, align 8, !tbaa !153
  %177 = call i32 %176(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %90) #15
  %178 = load i32, ptr %138, align 4, !tbaa !154
  store i32 %178, ptr %42, align 8, !tbaa !149
  br label %179

179:                                              ; preds = %172, %175
  %180 = icmp eq i32 %173, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %179
  %182 = call i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %90) #15
  br label %183

183:                                              ; preds = %181, %179
  %184 = load i32, ptr %42, align 8, !tbaa !149
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %19, i16 2, i16 4
  %187 = select i1 %185, i16 0, i16 %186
  %188 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %187, ptr %188, align 2, !tbaa !106
  call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #15
  br label %189

189:                                              ; preds = %183, %159
  %190 = load i16, ptr %141, align 8, !tbaa !93
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %315, label %192

192:                                              ; preds = %189
  store ptr @readMB_typeInfo_CABAC_b_slice, ptr %134, align 8, !tbaa !139
  %193 = load ptr, ptr %135, align 8, !tbaa !153
  %194 = call i32 %193(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %90) #15
  %195 = load i32, ptr %138, align 4, !tbaa !154
  %196 = trunc i32 %195 to i16
  store i16 %196, ptr %141, align 8, !tbaa !93
  %197 = load ptr, ptr %90, align 8, !tbaa !133
  %198 = getelementptr inbounds %struct.bit_stream, ptr %197, i64 0, i32 5
  %199 = load i32, ptr %198, align 8, !tbaa !136
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %315

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %202, align 2, !tbaa !156
  br label %315

203:                                              ; preds = %103
  %204 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  %205 = load i32, ptr %204, align 8, !tbaa !114
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !153
  %210 = call i32 %209(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %90) #15
  %211 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !154
  store i32 %212, ptr %204, align 8, !tbaa !114
  br label %213

213:                                              ; preds = %207, %203
  %214 = load i32, ptr %204, align 8, !tbaa !114
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %253

216:                                              ; preds = %213
  %217 = load i32, ptr %15, align 8, !tbaa !68
  %218 = icmp ne i32 %217, 0
  %219 = icmp ne i32 %32, 0
  %220 = select i1 %19, i1 true, i1 %219
  %221 = select i1 %218, i1 %220, i1 false
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %223, align 4, !tbaa !157
  %224 = load ptr, ptr %90, align 8, !tbaa !133
  %225 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %224) #15
  %226 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !154
  store i32 %227, ptr %42, align 8, !tbaa !149
  br label %228

228:                                              ; preds = %222, %216
  %229 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %89, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !153
  %231 = call i32 %230(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %90) #15
  %232 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 33
  %233 = load i32, ptr %232, align 4, !tbaa !97
  switch i32 %233, label %238 [
    i32 0, label %234
    i32 3, label %234
  ]

234:                                              ; preds = %228, %228
  %235 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !154
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %235, align 4, !tbaa !154
  br label %238

238:                                              ; preds = %228, %234
  %239 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %240 = load i32, ptr %239, align 4, !tbaa !154
  %241 = trunc i32 %240 to i16
  %242 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %241, ptr %242, align 8, !tbaa !93
  %243 = load ptr, ptr %90, align 8, !tbaa !133
  %244 = getelementptr inbounds %struct.bit_stream, ptr %243, i64 0, i32 5
  %245 = load i32, ptr %244, align 8, !tbaa !136
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %248, align 2, !tbaa !156
  br label %249

249:                                              ; preds = %247, %238
  %250 = load i32, ptr %204, align 8, !tbaa !114
  %251 = add nsw i32 %250, -1
  store i32 %251, ptr %204, align 8, !tbaa !114
  %252 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 0, ptr %252, align 2, !tbaa !155
  br label %309

253:                                              ; preds = %213
  %254 = add nsw i32 %214, -1
  store i32 %254, ptr %204, align 8, !tbaa !114
  %255 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 0, ptr %255, align 8, !tbaa !93
  %256 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %256, align 2, !tbaa !156
  %257 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 1, ptr %257, align 2, !tbaa !155
  %258 = load i32, ptr %15, align 8, !tbaa !68
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %309, label %260

260:                                              ; preds = %253
  %261 = or i32 %254, %18
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %264, align 4, !tbaa !157
  %265 = load ptr, ptr %90, align 8, !tbaa !133
  %266 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %265) #15
  %267 = load ptr, ptr %90, align 8, !tbaa !133
  %268 = getelementptr inbounds %struct.bit_stream, ptr %267, i64 0, i32 2
  %269 = load i32, ptr %268, align 8, !tbaa !158
  %270 = add nsw i32 %269, -1
  store i32 %270, ptr %268, align 8, !tbaa !158
  %271 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %272 = load i32, ptr %271, align 4, !tbaa !154
  store i32 %272, ptr %42, align 8, !tbaa !149
  br label %309

273:                                              ; preds = %260
  %274 = icmp sgt i32 %214, 1
  %275 = and i1 %19, %274
  br i1 %275, label %276, label %309

276:                                              ; preds = %273
  %277 = add nsw i32 %7, -2
  %278 = call i32 @mb_is_available(i32 noundef %277, ptr noundef nonnull %0) #15
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %292, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %282 = load i32, ptr %281, align 4, !tbaa !159
  %283 = shl i32 %282, 1
  %284 = urem i32 %7, %283
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %288 = load ptr, ptr %287, align 8, !tbaa !148
  %289 = sext i32 %277 to i64
  %290 = getelementptr inbounds %struct.macroblock, ptr %288, i64 %289, i32 45
  %291 = load i32, ptr %290, align 8, !tbaa !149
  store i32 %291, ptr %42, align 8, !tbaa !149
  br label %309

292:                                              ; preds = %280, %276
  %293 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 53
  %294 = load i32, ptr %293, align 4, !tbaa !159
  %295 = shl i32 %294, 1
  %296 = sub i32 %7, %295
  %297 = call i32 @mb_is_available(i32 noundef %296, ptr noundef nonnull %0) #15
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %308, label %299

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 35
  %301 = load ptr, ptr %300, align 8, !tbaa !148
  %302 = load i32, ptr %293, align 4, !tbaa !159
  %303 = shl i32 %302, 1
  %304 = sub i32 %7, %303
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.macroblock, ptr %301, i64 %305, i32 45
  %307 = load i32, ptr %306, align 8, !tbaa !149
  store i32 %307, ptr %42, align 8, !tbaa !149
  br label %309

308:                                              ; preds = %292
  store i32 0, ptr %42, align 8, !tbaa !149
  br label %309

309:                                              ; preds = %273, %253, %299, %308, %286, %263, %249
  %310 = load i32, ptr %42, align 8, !tbaa !149
  %311 = icmp eq i32 %310, 0
  %312 = select i1 %19, i16 2, i16 4
  %313 = select i1 %311, i16 0, i16 %312
  %314 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  store i16 %313, ptr %314, align 2, !tbaa !106
  br label %315

315:                                              ; preds = %189, %201, %192, %309
  %316 = load i32, ptr %42, align 8, !tbaa !149
  %317 = trunc i32 %316 to i8
  %318 = load ptr, ptr %14, align 8, !tbaa !160
  %319 = sext i32 %7 to i64
  %320 = getelementptr inbounds i8, ptr %318, i64 %319
  store i8 %317, ptr %320, align 1, !tbaa !54
  %321 = load i32, ptr %42, align 8, !tbaa !149
  %322 = icmp eq i32 %321, 0
  %323 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %324 = load i32, ptr %323, align 4, !tbaa !73
  br i1 %322, label %331, label %325

325:                                              ; preds = %315
  br i1 %19, label %329, label %326

326:                                              ; preds = %325
  %327 = add nsw i32 %324, -4
  %328 = ashr i32 %327, 1
  br label %331

329:                                              ; preds = %325
  %330 = ashr i32 %324, 1
  br label %331

331:                                              ; preds = %315, %326, %329
  %332 = phi i32 [ %328, %326 ], [ %330, %329 ], [ %324, %315 ]
  %333 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  store i32 %332, ptr %333, align 8, !tbaa !74
  %334 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 126
  %335 = load ptr, ptr %334, align 8, !tbaa !161
  %336 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %337 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %338 = load i16, ptr %337, align 2, !tbaa !71
  %339 = sext i16 %338 to i64
  %340 = getelementptr inbounds ptr, ptr %335, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !63
  %342 = load i16, ptr %336, align 4, !tbaa !70
  %343 = sext i16 %342 to i64
  %344 = getelementptr inbounds i32, ptr %341, i64 %343
  store i32 0, ptr %344, align 4, !tbaa !53
  %345 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 117
  %346 = load ptr, ptr %345, align 8, !tbaa !115
  call void %346(ptr noundef nonnull %0) #15
  %347 = load i32, ptr %15, align 8, !tbaa !68
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %331
  %350 = load i32, ptr %42, align 8, !tbaa !149
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27
  %354 = load i32, ptr %353, align 8, !tbaa !53
  %355 = shl i32 %354, 1
  store i32 %355, ptr %353, align 8, !tbaa !53
  %356 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 27, i64 1
  %357 = load i32, ptr %356, align 4, !tbaa !53
  %358 = shl i32 %357, 1
  store i32 %358, ptr %356, align 4, !tbaa !53
  br label %359

359:                                              ; preds = %349, %352, %331
  %360 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %361 = load i16, ptr %360, align 8, !tbaa !93
  switch i16 %361, label %471 [
    i16 8, label %362
    i16 0, label %465
  ]

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 1, ptr %363, align 8, !tbaa !162
  store i32 2, ptr %2, align 8, !tbaa !129
  %364 = load ptr, ptr %85, align 8, !tbaa !131
  %365 = getelementptr inbounds %struct.datapartition, ptr %364, i64 %89
  %366 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !182
  %368 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %367, i64 0, i32 3
  %369 = load i32, ptr %368, align 4, !tbaa !112
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %362
  %372 = load ptr, ptr %365, align 8, !tbaa !133
  %373 = getelementptr inbounds %struct.bit_stream, ptr %372, i64 0, i32 5
  %374 = load i32, ptr %373, align 8, !tbaa !136
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %371, %362
  %377 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %377, align 8, !tbaa !138
  br label %380

378:                                              ; preds = %371
  %379 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readB8_typeInfo_CABAC_b_slice, ptr %379, align 8, !tbaa !139
  br label %380

380:                                              ; preds = %378, %376
  %381 = getelementptr inbounds %struct.datapartition, ptr %364, i64 %89, i32 2
  %382 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %383 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 3
  br label %384

384:                                              ; preds = %380, %417
  %385 = phi i64 [ 0, %380 ], [ %422, %417 ]
  %386 = load ptr, ptr %381, align 8, !tbaa !153
  %387 = call i32 %386(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %365) #15
  %388 = load i32, ptr %382, align 4, !tbaa !154
  %389 = load ptr, ptr %0, align 8, !tbaa !42
  %390 = getelementptr inbounds %struct.slice, ptr %389, i64 0, i32 33
  %391 = load i32, ptr %390, align 4, !tbaa !97
  %392 = icmp eq i32 %391, 1
  %393 = sext i32 %388 to i64
  %394 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %385
  %395 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %385
  br i1 %392, label %396, label %400

396:                                              ; preds = %384
  %397 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2b8, i64 0, i64 %393
  %398 = load i8, ptr %397, align 1, !tbaa !54
  store i8 %398, ptr %394, align 1, !tbaa !54
  %399 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2pd, i64 0, i64 %393
  br label %404

400:                                              ; preds = %384
  %401 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2b8, i64 0, i64 %393
  %402 = load i8, ptr %401, align 1, !tbaa !54
  store i8 %402, ptr %394, align 1, !tbaa !54
  %403 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2pd, i64 0, i64 %393
  br label %404

404:                                              ; preds = %396, %400
  %405 = phi ptr [ %399, %396 ], [ %403, %400 ]
  %406 = load i8, ptr %405, align 1, !tbaa !54
  store i8 %406, ptr %395, align 1, !tbaa !54
  %407 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %385
  %408 = load i8, ptr %407, align 1, !tbaa !54
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = load ptr, ptr %383, align 8, !tbaa !88
  %412 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %411, i64 0, i32 32
  %413 = load i32, ptr %412, align 4, !tbaa !163
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %410, %404
  %416 = icmp eq i8 %408, 4
  br label %417

417:                                              ; preds = %415, %410
  %418 = phi i1 [ true, %410 ], [ %416, %415 ]
  %419 = load i32, ptr %363, align 8, !tbaa !162
  %420 = and i32 %419, 1
  %421 = select i1 %418, i32 %420, i32 0
  store i32 %421, ptr %363, align 8, !tbaa !162
  %422 = add nuw nsw i64 %385, 1
  %423 = icmp eq i64 %422, 4
  br i1 %423, label %424, label %384, !llvm.loop !183

424:                                              ; preds = %417
  %425 = load ptr, ptr %0, align 8, !tbaa !42
  %426 = getelementptr inbounds %struct.slice, ptr %425, i64 0, i32 125
  %427 = load ptr, ptr %426, align 8, !tbaa !43
  %428 = getelementptr inbounds %struct.storable_picture, ptr %427, i64 0, i32 35
  %429 = load ptr, ptr %428, align 8, !tbaa !140
  %430 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %431 = load i32, ptr %430, align 4, !tbaa !73
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds ptr, ptr %429, i64 %432
  %434 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  br label %435

435:                                              ; preds = %435, %424
  %436 = phi ptr [ %433, %424 ], [ %454, %435 ]
  %437 = phi i32 [ 0, %424 ], [ %460, %435 ]
  %438 = load i32, ptr %434, align 8, !tbaa !72
  %439 = load ptr, ptr %436, align 8, !tbaa !63
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds %struct.pic_motion_params, ptr %439, i64 %440
  %442 = getelementptr inbounds %struct.pic_motion_params, ptr %439, i64 %440, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %441, i8 0, i64 24, i1 false)
  store i8 -1, ptr %442, align 8, !tbaa !54
  %443 = getelementptr inbounds %struct.pic_motion_params, ptr %439, i64 %440, i32 2, i64 1
  store i8 -1, ptr %443, align 1, !tbaa !54
  %444 = load ptr, ptr %436, align 8, !tbaa !63
  %445 = getelementptr %struct.pic_motion_params, ptr %444, i64 %440
  %446 = getelementptr %struct.pic_motion_params, ptr %445, i64 1
  %447 = getelementptr %struct.pic_motion_params, ptr %445, i64 1, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %446, i8 0, i64 24, i1 false)
  store i8 -1, ptr %447, align 8, !tbaa !54
  %448 = getelementptr %struct.pic_motion_params, ptr %445, i64 1, i32 2, i64 1
  store i8 -1, ptr %448, align 1, !tbaa !54
  %449 = load ptr, ptr %436, align 8, !tbaa !63
  %450 = getelementptr %struct.pic_motion_params, ptr %449, i64 %440
  %451 = getelementptr %struct.pic_motion_params, ptr %450, i64 2
  %452 = getelementptr %struct.pic_motion_params, ptr %450, i64 2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %451, i8 0, i64 24, i1 false)
  store i8 -1, ptr %452, align 8, !tbaa !54
  %453 = getelementptr %struct.pic_motion_params, ptr %450, i64 2, i32 2, i64 1
  store i8 -1, ptr %453, align 1, !tbaa !54
  %454 = getelementptr inbounds ptr, ptr %436, i64 1
  %455 = load ptr, ptr %436, align 8, !tbaa !63
  %456 = getelementptr %struct.pic_motion_params, ptr %455, i64 %440
  %457 = getelementptr %struct.pic_motion_params, ptr %456, i64 3
  %458 = getelementptr %struct.pic_motion_params, ptr %456, i64 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %457, i8 0, i64 24, i1 false)
  store i8 -1, ptr %458, align 8, !tbaa !54
  %459 = getelementptr %struct.pic_motion_params, ptr %456, i64 3, i32 2, i64 1
  store i8 -1, ptr %459, align 1, !tbaa !54
  %460 = add nuw nsw i32 %437, 1
  %461 = icmp eq i32 %460, 4
  br i1 %461, label %462, label %435, !llvm.loop !165

462:                                              ; preds = %435
  %463 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %464 = load ptr, ptr %463, align 8, !tbaa !116
  call void %464(ptr noundef nonnull %0) #15
  br label %476

465:                                              ; preds = %359
  %466 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !88
  %468 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %467, i64 0, i32 32
  %469 = load i32, ptr %468, align 4, !tbaa !163
  %470 = icmp eq i32 %469, 0
  br label %471

471:                                              ; preds = %359, %465
  %472 = phi i1 [ %470, %465 ], [ false, %359 ]
  %473 = xor i1 %472, true
  %474 = zext i1 %473 to i32
  %475 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 %474, ptr %475, align 8, !tbaa !162
  br label %476

476:                                              ; preds = %471, %462
  %477 = load i16, ptr %360, align 8, !tbaa !93
  %478 = icmp eq i16 %477, 9
  br i1 %478, label %479, label %514

479:                                              ; preds = %476
  %480 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %481 = load i32, ptr %480, align 4, !tbaa !166
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %514, label %483

483:                                              ; preds = %479
  store i32 0, ptr %2, align 8, !tbaa !129
  %484 = load ptr, ptr %85, align 8, !tbaa !131
  %485 = load i8, ptr %11, align 4, !tbaa !54
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds %struct.datapartition, ptr %484, i64 %486
  %488 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %488, align 8, !tbaa !139
  %489 = load ptr, ptr %91, align 8, !tbaa !111
  %490 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %489, i64 0, i32 3
  %491 = load i32, ptr %490, align 4, !tbaa !112
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %483
  %494 = load ptr, ptr %487, align 8, !tbaa !133
  %495 = getelementptr inbounds %struct.bit_stream, ptr %494, i64 0, i32 5
  %496 = load i32, ptr %495, align 8, !tbaa !136
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %502, label %498

498:                                              ; preds = %493, %483
  %499 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %499, align 4, !tbaa !157
  %500 = load ptr, ptr %487, align 8, !tbaa !133
  %501 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %500) #15
  br label %506

502:                                              ; preds = %493
  %503 = getelementptr inbounds %struct.datapartition, ptr %484, i64 %486, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !153
  %505 = call i32 %504(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %487) #15
  br label %506

506:                                              ; preds = %502, %498
  %507 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %508 = load i32, ptr %507, align 4, !tbaa !154
  %509 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %508, ptr %509, align 4, !tbaa !167
  %510 = icmp eq i32 %508, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %506
  store i16 13, ptr %360, align 8, !tbaa !93
  %512 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 218959117, ptr %512, align 4
  %513 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %513, align 8
  br label %516

514:                                              ; preds = %479, %476
  %515 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 0, ptr %515, align 4, !tbaa !167
  br label %516

516:                                              ; preds = %506, %511, %514
  %517 = load ptr, ptr %91, align 8, !tbaa !111
  %518 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %517, i64 0, i32 30
  %519 = load i32, ptr %518, align 4, !tbaa !168
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %529, label %521

521:                                              ; preds = %516
  %522 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %523 = load i32, ptr %522, align 8, !tbaa !81
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %529

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %527 = load ptr, ptr %526, align 8, !tbaa !169
  %528 = getelementptr inbounds i8, ptr %527, i64 %319
  store i8 0, ptr %528, align 1, !tbaa !54
  br label %529

529:                                              ; preds = %525, %521, %516
  %530 = load i16, ptr %360, align 8, !tbaa !93
  %531 = icmp eq i16 %530, 8
  br i1 %531, label %570, label %532

532:                                              ; preds = %529
  %533 = load ptr, ptr %0, align 8, !tbaa !42
  %534 = getelementptr inbounds %struct.slice, ptr %533, i64 0, i32 125
  %535 = load ptr, ptr %534, align 8, !tbaa !43
  %536 = getelementptr inbounds %struct.storable_picture, ptr %535, i64 0, i32 35
  %537 = load ptr, ptr %536, align 8, !tbaa !140
  %538 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %539 = load i32, ptr %538, align 4, !tbaa !73
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds ptr, ptr %537, i64 %540
  %542 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  br label %543

543:                                              ; preds = %543, %532
  %544 = phi ptr [ %541, %532 ], [ %562, %543 ]
  %545 = phi i32 [ 0, %532 ], [ %568, %543 ]
  %546 = load i32, ptr %542, align 8, !tbaa !72
  %547 = load ptr, ptr %544, align 8, !tbaa !63
  %548 = sext i32 %546 to i64
  %549 = getelementptr inbounds %struct.pic_motion_params, ptr %547, i64 %548
  %550 = getelementptr inbounds %struct.pic_motion_params, ptr %547, i64 %548, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %549, i8 0, i64 24, i1 false)
  store i8 -1, ptr %550, align 8, !tbaa !54
  %551 = getelementptr inbounds %struct.pic_motion_params, ptr %547, i64 %548, i32 2, i64 1
  store i8 -1, ptr %551, align 1, !tbaa !54
  %552 = load ptr, ptr %544, align 8, !tbaa !63
  %553 = getelementptr %struct.pic_motion_params, ptr %552, i64 %548
  %554 = getelementptr %struct.pic_motion_params, ptr %553, i64 1
  %555 = getelementptr %struct.pic_motion_params, ptr %553, i64 1, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %554, i8 0, i64 24, i1 false)
  store i8 -1, ptr %555, align 8, !tbaa !54
  %556 = getelementptr %struct.pic_motion_params, ptr %553, i64 1, i32 2, i64 1
  store i8 -1, ptr %556, align 1, !tbaa !54
  %557 = load ptr, ptr %544, align 8, !tbaa !63
  %558 = getelementptr %struct.pic_motion_params, ptr %557, i64 %548
  %559 = getelementptr %struct.pic_motion_params, ptr %558, i64 2
  %560 = getelementptr %struct.pic_motion_params, ptr %558, i64 2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %559, i8 0, i64 24, i1 false)
  store i8 -1, ptr %560, align 8, !tbaa !54
  %561 = getelementptr %struct.pic_motion_params, ptr %558, i64 2, i32 2, i64 1
  store i8 -1, ptr %561, align 1, !tbaa !54
  %562 = getelementptr inbounds ptr, ptr %544, i64 1
  %563 = load ptr, ptr %544, align 8, !tbaa !63
  %564 = getelementptr %struct.pic_motion_params, ptr %563, i64 %548
  %565 = getelementptr %struct.pic_motion_params, ptr %564, i64 3
  %566 = getelementptr %struct.pic_motion_params, ptr %564, i64 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %565, i8 0, i64 24, i1 false)
  store i8 -1, ptr %566, align 8, !tbaa !54
  %567 = getelementptr %struct.pic_motion_params, ptr %564, i64 3, i32 2, i64 1
  store i8 -1, ptr %567, align 1, !tbaa !54
  %568 = add nuw nsw i32 %545, 1
  %569 = icmp eq i32 %568, 4
  br i1 %569, label %570, label %543, !llvm.loop !165

570:                                              ; preds = %543, %529
  %571 = load i16, ptr %360, align 8, !tbaa !93
  switch i16 %571, label %602 [
    i16 0, label %572
    i16 14, label %618
  ]

572:                                              ; preds = %570
  %573 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 23
  %574 = load i32, ptr %573, align 8, !tbaa !114
  %575 = icmp sgt i32 %574, -1
  br i1 %575, label %576, label %600

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %577, align 4, !tbaa !95
  %578 = load ptr, ptr %3, align 8, !tbaa !64
  %579 = getelementptr inbounds %struct.video_par, ptr %578, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !111
  %581 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %580, i64 0, i32 3
  %582 = load i32, ptr %581, align 4, !tbaa !112
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %594

584:                                              ; preds = %576
  %585 = getelementptr inbounds %struct.video_par, ptr %578, i64 0, i32 29
  %586 = load ptr, ptr %585, align 8, !tbaa !184
  %587 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 20
  %588 = load i32, ptr %587, align 4, !tbaa !65
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds ptr, ptr %586, i64 %589
  %591 = load ptr, ptr %590, align 8, !tbaa !63
  %592 = load ptr, ptr %591, align 8, !tbaa !63
  %593 = load ptr, ptr %592, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %593, i8 0, i64 48, i1 false)
  br label %594

594:                                              ; preds = %576, %584
  %595 = load ptr, ptr %91, align 8, !tbaa !111
  %596 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %595, i64 0, i32 3
  %597 = load i32, ptr %596, align 4, !tbaa !112
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %599, label %695

599:                                              ; preds = %594
  store i32 -1, ptr %573, align 8, !tbaa !114
  br label %695

600:                                              ; preds = %572
  %601 = icmp eq i16 %571, 14
  br i1 %601, label %618, label %602

602:                                              ; preds = %570, %600
  %603 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %604 = load i32, ptr %603, align 8, !tbaa !81
  %605 = icmp eq i32 %604, 1
  br i1 %605, label %606, label %607

606:                                              ; preds = %602
  call fastcc void @read_ipred_modes(ptr noundef nonnull %0)
  br label %607

607:                                              ; preds = %606, %602
  %608 = load i32, ptr %603, align 8, !tbaa !81
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %607
  %611 = load i16, ptr %360, align 8, !tbaa !93
  switch i16 %611, label %612 [
    i16 0, label %615
    i16 8, label %615
  ]

612:                                              ; preds = %610
  %613 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 115
  %614 = load ptr, ptr %613, align 8, !tbaa !116
  call void %614(ptr noundef nonnull %0) #15
  br label %615

615:                                              ; preds = %610, %610, %612, %607
  %616 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 111
  %617 = load ptr, ptr %616, align 8, !tbaa !125
  call void %617(ptr noundef nonnull %0) #15
  br label %695

618:                                              ; preds = %570, %600
  %619 = load i32, ptr %8, align 8, !tbaa !128
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %689, label %621

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %623 = load i32, ptr %622, align 8, !tbaa !170
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %689, label %625

625:                                              ; preds = %621
  %626 = load ptr, ptr %0, align 8, !tbaa !42
  %627 = load ptr, ptr %4, align 8, !tbaa !34
  %628 = getelementptr inbounds %struct.slice, ptr %626, i64 0, i32 125
  %629 = load ptr, ptr %628, align 8, !tbaa !43
  %630 = getelementptr inbounds %struct.video_par, ptr %627, i64 0, i32 69
  %631 = getelementptr inbounds %struct.slice, ptr %626, i64 0, i32 80
  %632 = load ptr, ptr %631, align 8, !tbaa !62
  %633 = load ptr, ptr %632, align 8, !tbaa !63
  br label %634

634:                                              ; preds = %644, %625
  %635 = phi i64 [ 0, %625 ], [ %645, %644 ]
  %636 = getelementptr inbounds ptr, ptr %633, i64 %635
  %637 = load ptr, ptr %636, align 8, !tbaa !63
  br label %638

638:                                              ; preds = %638, %634
  %639 = phi i64 [ 0, %634 ], [ %642, %638 ]
  %640 = load i32, ptr %630, align 4, !tbaa !53
  %641 = getelementptr inbounds i32, ptr %637, i64 %639
  store i32 %640, ptr %641, align 4, !tbaa !53
  %642 = add nuw nsw i64 %639, 1
  %643 = icmp eq i64 %642, 16
  br i1 %643, label %644, label %638, !llvm.loop !171

644:                                              ; preds = %638
  %645 = add nuw nsw i64 %635, 1
  %646 = icmp eq i64 %645, 16
  br i1 %646, label %647, label %634, !llvm.loop !172

647:                                              ; preds = %644
  %648 = getelementptr inbounds %struct.storable_picture, ptr %629, i64 0, i32 48
  %649 = load i32, ptr %648, align 4, !tbaa !173
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %695, label %651

651:                                              ; preds = %647
  %652 = getelementptr inbounds %struct.video_par, ptr %627, i64 0, i32 105
  %653 = load i32, ptr %652, align 8, !tbaa !124
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %655, label %695

655:                                              ; preds = %651
  %656 = getelementptr inbounds %struct.video_par, ptr %627, i64 0, i32 78
  %657 = getelementptr inbounds %struct.video_par, ptr %627, i64 0, i32 77
  br label %658

658:                                              ; preds = %686, %655
  %659 = phi i64 [ 0, %655 ], [ %687, %686 ]
  %660 = load i32, ptr %656, align 8, !tbaa !79
  %661 = icmp sgt i32 %660, 0
  br i1 %661, label %662, label %686

662:                                              ; preds = %658
  %663 = getelementptr inbounds %struct.video_par, ptr %627, i64 0, i32 69, i64 %659
  %664 = getelementptr inbounds ptr, ptr %632, i64 %659
  br label %665

665:                                              ; preds = %681, %662
  %666 = phi i64 [ 0, %662 ], [ %682, %681 ]
  %667 = load i32, ptr %657, align 4, !tbaa !77
  %668 = icmp sgt i32 %667, 0
  br i1 %668, label %669, label %681

669:                                              ; preds = %665
  %670 = load ptr, ptr %664, align 8, !tbaa !63
  %671 = getelementptr inbounds ptr, ptr %670, i64 %666
  %672 = load ptr, ptr %671, align 8, !tbaa !63
  br label %673

673:                                              ; preds = %673, %669
  %674 = phi i64 [ 0, %669 ], [ %677, %673 ]
  %675 = load i32, ptr %663, align 4, !tbaa !53
  %676 = getelementptr inbounds i32, ptr %672, i64 %674
  store i32 %675, ptr %676, align 4, !tbaa !53
  %677 = add nuw nsw i64 %674, 1
  %678 = load i32, ptr %657, align 4, !tbaa !77
  %679 = sext i32 %678 to i64
  %680 = icmp slt i64 %677, %679
  br i1 %680, label %673, label %681, !llvm.loop !174

681:                                              ; preds = %673, %665
  %682 = add nuw nsw i64 %666, 1
  %683 = load i32, ptr %656, align 8, !tbaa !79
  %684 = sext i32 %683 to i64
  %685 = icmp slt i64 %682, %684
  br i1 %685, label %665, label %686, !llvm.loop !175

686:                                              ; preds = %681, %658
  %687 = add nuw nsw i64 %659, 1
  %688 = icmp eq i64 %659, 0
  br i1 %688, label %658, label %695, !llvm.loop !176

689:                                              ; preds = %621, %618
  %690 = load ptr, ptr %85, align 8, !tbaa !131
  %691 = getelementptr inbounds i8, ptr %11, i64 7
  %692 = load i8, ptr %691, align 1, !tbaa !54
  %693 = zext i8 %692 to i64
  %694 = getelementptr inbounds %struct.datapartition, ptr %690, i64 %693
  call fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef %3, ptr noundef %694)
  br label %695

695:                                              ; preds = %686, %651, %647, %615, %689, %594, %599
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_one_component_b_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !177
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !93
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
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef %0) #15
  br label %44

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %44

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %44

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %44

16:                                               ; preds = %4
  %17 = tail call i32 @mb_pred_p_inter16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %44

18:                                               ; preds = %4
  %19 = tail call i32 @mb_pred_p_inter16x8(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %44

20:                                               ; preds = %4
  %21 = tail call i32 @mb_pred_p_inter8x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %44

22:                                               ; preds = %4
  %23 = load ptr, ptr %0, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.slice, ptr %23, i64 0, i32 26
  %25 = load i32, ptr %24, align 4, !tbaa !185
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.slice, ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %28, i64 0, i32 32
  %30 = load i32, ptr %29, align 4, !tbaa !163
  %31 = icmp eq i32 %30, 0
  br i1 %26, label %32, label %37

32:                                               ; preds = %22
  br i1 %31, label %35, label %33

33:                                               ; preds = %32
  %34 = tail call i32 @mb_pred_b_d8x8temporal(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %44

35:                                               ; preds = %32
  %36 = tail call i32 @mb_pred_b_d4x4temporal(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %44

37:                                               ; preds = %22
  br i1 %31, label %40, label %38

38:                                               ; preds = %37
  %39 = tail call i32 @mb_pred_b_d8x8spatial(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %44

40:                                               ; preds = %37
  %41 = tail call i32 @mb_pred_b_d4x4spatial(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %44

42:                                               ; preds = %4
  %43 = tail call i32 @mb_pred_b_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %44

44:                                               ; preds = %35, %33, %40, %38, %10, %14, %18, %42, %20, %16, %12, %8
  ret i32 1
}

declare void @update_direct_types(ptr noundef) local_unnamed_addr #5

declare void @init_lists_b_slice_mvc(ptr noundef) #5

declare void @init_lists_b_slice(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @interpret_mb_mode_I(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !93
  switch i16 %3, label %10 [
    i16 0, label %4
    i16 25, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %5, align 8, !tbaa !81
  store i16 9, ptr %2, align 8, !tbaa !93
  br label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %7, align 8, !tbaa !81
  store i16 14, ptr %2, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %9, align 8, !tbaa !127
  br label %22

10:                                               ; preds = %1
  %11 = sext i16 %3 to i32
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %12, align 8, !tbaa !81
  store i16 10, ptr %2, align 8, !tbaa !93
  %13 = add nsw i32 %11, -1
  %14 = ashr i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i16], ptr @interpret_mb_mode_I.ICBPTAB, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !87
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %18, ptr %19, align 4, !tbaa !95
  %20 = and i32 %13, 3
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %20, ptr %21, align 8, !tbaa !127
  br label %22

22:                                               ; preds = %6, %10, %4
  %23 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 185273099, %4 ]
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_one_macroblock_i_slice(ptr noundef %0) #3 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 37
  %15 = and i32 %7, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 124
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = sext i32 %7 to i64
  %21 = getelementptr %struct.macroblock, ptr %19, i64 %20
  %22 = getelementptr %struct.macroblock, ptr %21, i64 -1, i32 45
  %23 = load i32, ptr %22, align 8, !tbaa !149
  br label %24

24:                                               ; preds = %1, %17
  %25 = phi i32 [ %23, %17 ], [ 0, %1 ]
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %25, ptr %26, align 8, !tbaa !149
  %27 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 29
  %28 = load i32, ptr %27, align 4, !tbaa !150
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %28, ptr %29, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 67
  %31 = load i32, ptr %30, align 4, !tbaa !58
  %32 = add nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %32, ptr %33, align 8, !tbaa !53
  %34 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 68
  br label %35

35:                                               ; preds = %51, %24
  %36 = phi i64 [ 0, %24 ], [ %55, %51 ]
  %37 = load i32, ptr %34, align 8, !tbaa !47
  %38 = sub nsw i32 0, %37
  %39 = getelementptr inbounds %struct.storable_picture, ptr %13, i64 0, i32 56, i64 %36
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = add nsw i32 %40, %28
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 %38)
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 51)
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %36
  store i32 %43, ptr %44, align 4, !tbaa !53
  %45 = icmp slt i32 %42, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = zext nneg i32 %43 to i64
  %48 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !54
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %46, %35
  %52 = phi i32 [ %50, %46 ], [ %43, %35 ]
  store i32 %52, ptr %44, align 4, !tbaa !53
  %53 = load i32, ptr %34, align 8, !tbaa !47
  %54 = add nsw i32 %53, %52
  %55 = add nuw nsw i64 %36, 1
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %55
  store i32 %54, ptr %56, align 4, !tbaa !53
  %57 = icmp eq i64 %36, 0
  br i1 %57, label %35, label %58, !llvm.loop !55

58:                                               ; preds = %51
  %59 = load i32, ptr %33, align 8, !tbaa !53
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 73
  %63 = load i32, ptr %62, align 4, !tbaa !59
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %58, %61
  %67 = phi i32 [ 0, %58 ], [ %65, %61 ]
  %68 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %67, ptr %68, align 4, !tbaa !60
  store i32 2, ptr %2, align 8, !tbaa !129
  %69 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 57
  %70 = load ptr, ptr %69, align 8, !tbaa !131
  %71 = getelementptr inbounds i8, ptr %11, i64 2
  %72 = load i8, ptr %71, align 2, !tbaa !54
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds %struct.datapartition, ptr %70, i64 %73
  %75 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !111
  %77 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !112
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %66
  %81 = load ptr, ptr %74, align 8, !tbaa !133
  %82 = getelementptr inbounds %struct.bit_stream, ptr %81, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !136
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80, %66
  %86 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %86, align 8, !tbaa !138
  br label %87

87:                                               ; preds = %85, %80
  %88 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 25
  %89 = load i32, ptr %88, align 8, !tbaa !68
  %90 = icmp eq i32 %89, 0
  %91 = or i1 %16, %90
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  br i1 %79, label %98, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %74, align 8, !tbaa !133
  %95 = getelementptr inbounds %struct.bit_stream, ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !136
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93, %92
  %99 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %99, align 4, !tbaa !157
  %100 = load ptr, ptr %74, align 8, !tbaa !133
  %101 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %100) #15
  br label %107

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readFieldModeInfo_CABAC, ptr %103, align 8, !tbaa !139
  %104 = getelementptr inbounds %struct.datapartition, ptr %70, i64 %73, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !153
  %106 = call i32 %105(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %74) #15
  br label %107

107:                                              ; preds = %102, %98
  %108 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !154
  store i32 %109, ptr %26, align 8, !tbaa !149
  br label %110

110:                                              ; preds = %87, %107
  %111 = load ptr, ptr %75, align 8, !tbaa !111
  %112 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %111, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !112
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %0) #15
  br label %116

116:                                              ; preds = %115, %110
  %117 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readMB_typeInfo_CABAC_i_slice, ptr %117, align 8, !tbaa !139
  %118 = getelementptr inbounds %struct.datapartition, ptr %70, i64 %73, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !153
  %120 = call i32 %119(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %74) #15
  %121 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !154
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  store i16 %123, ptr %124, align 8, !tbaa !93
  %125 = load ptr, ptr %74, align 8, !tbaa !133
  %126 = getelementptr inbounds %struct.bit_stream, ptr %125, i64 0, i32 5
  %127 = load i32, ptr %126, align 8, !tbaa !136
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 0, ptr %130, align 2, !tbaa !156
  br label %131

131:                                              ; preds = %129, %116
  %132 = load i32, ptr %26, align 8, !tbaa !149
  %133 = trunc i32 %132 to i8
  %134 = load ptr, ptr %14, align 8, !tbaa !160
  %135 = sext i32 %7 to i64
  %136 = getelementptr inbounds i8, ptr %134, i64 %135
  store i8 %133, ptr %136, align 1, !tbaa !54
  %137 = load i32, ptr %88, align 8, !tbaa !68
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %131
  %140 = load i32, ptr %26, align 8, !tbaa !149
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %144 = load i32, ptr %143, align 4, !tbaa !73
  br i1 %16, label %145, label %148

145:                                              ; preds = %142
  %146 = add nsw i32 %144, -4
  %147 = ashr i32 %146, 1
  br label %153

148:                                              ; preds = %142
  %149 = ashr i32 %144, 1
  br label %153

150:                                              ; preds = %139, %131
  %151 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %152 = load i32, ptr %151, align 4, !tbaa !73
  br label %153

153:                                              ; preds = %145, %148, %150
  %154 = phi i32 [ %152, %150 ], [ %147, %145 ], [ %149, %148 ]
  %155 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  store i32 %154, ptr %155, align 8, !tbaa !74
  %156 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 126
  %157 = load ptr, ptr %156, align 8, !tbaa !161
  %158 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %159 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %160 = load i16, ptr %159, align 2, !tbaa !71
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %157, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !63
  %164 = load i16, ptr %158, align 4, !tbaa !70
  %165 = sext i16 %164 to i64
  %166 = getelementptr inbounds i32, ptr %163, i64 %165
  store i32 0, ptr %166, align 4, !tbaa !53
  %167 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 117
  %168 = load ptr, ptr %167, align 8, !tbaa !115
  call void %168(ptr noundef nonnull %0) #15
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  store i32 1, ptr %169, align 8, !tbaa !162
  %170 = load i16, ptr %124, align 8, !tbaa !93
  %171 = icmp eq i16 %170, 9
  br i1 %171, label %172, label %205

172:                                              ; preds = %153
  %173 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 9
  %174 = load i32, ptr %173, align 4, !tbaa !166
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %205, label %176

176:                                              ; preds = %172
  store i32 0, ptr %2, align 8, !tbaa !129
  %177 = load ptr, ptr %69, align 8, !tbaa !131
  %178 = load i8, ptr %11, align 4, !tbaa !54
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds %struct.datapartition, ptr %177, i64 %179
  store ptr @readMB_transform_size_flag_CABAC, ptr %117, align 8, !tbaa !139
  %181 = load ptr, ptr %75, align 8, !tbaa !111
  %182 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %181, i64 0, i32 3
  %183 = load i32, ptr %182, align 4, !tbaa !112
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %176
  %186 = load ptr, ptr %180, align 8, !tbaa !133
  %187 = getelementptr inbounds %struct.bit_stream, ptr %186, i64 0, i32 5
  %188 = load i32, ptr %187, align 8, !tbaa !136
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185, %176
  %191 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 3
  store i32 1, ptr %191, align 4, !tbaa !157
  %192 = load ptr, ptr %180, align 8, !tbaa !133
  %193 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %2, ptr noundef %192) #15
  br label %198

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.datapartition, ptr %177, i64 %179, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !153
  %197 = call i32 %196(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %180) #15
  br label %198

198:                                              ; preds = %194, %190
  %199 = load i32, ptr %121, align 4, !tbaa !154
  %200 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %199, ptr %200, align 4, !tbaa !167
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  store i16 13, ptr %124, align 8, !tbaa !93
  %203 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 218959117, ptr %203, align 4
  %204 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %204, align 8
  br label %207

205:                                              ; preds = %172, %153
  %206 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 0, ptr %206, align 4, !tbaa !167
  br label %207

207:                                              ; preds = %198, %202, %205
  %208 = load ptr, ptr %0, align 8, !tbaa !42
  %209 = getelementptr inbounds %struct.slice, ptr %208, i64 0, i32 125
  %210 = load ptr, ptr %209, align 8, !tbaa !43
  %211 = getelementptr inbounds %struct.storable_picture, ptr %210, i64 0, i32 35
  %212 = load ptr, ptr %211, align 8, !tbaa !140
  %213 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %214 = load i32, ptr %213, align 4, !tbaa !73
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds ptr, ptr %212, i64 %215
  %217 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  br label %218

218:                                              ; preds = %218, %207
  %219 = phi ptr [ %216, %207 ], [ %237, %218 ]
  %220 = phi i32 [ 0, %207 ], [ %243, %218 ]
  %221 = load i32, ptr %217, align 8, !tbaa !72
  %222 = load ptr, ptr %219, align 8, !tbaa !63
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %223
  %225 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %223, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  store i8 -1, ptr %225, align 8, !tbaa !54
  %226 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %223, i32 2, i64 1
  store i8 -1, ptr %226, align 1, !tbaa !54
  %227 = load ptr, ptr %219, align 8, !tbaa !63
  %228 = getelementptr %struct.pic_motion_params, ptr %227, i64 %223
  %229 = getelementptr %struct.pic_motion_params, ptr %228, i64 1
  %230 = getelementptr %struct.pic_motion_params, ptr %228, i64 1, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false)
  store i8 -1, ptr %230, align 8, !tbaa !54
  %231 = getelementptr %struct.pic_motion_params, ptr %228, i64 1, i32 2, i64 1
  store i8 -1, ptr %231, align 1, !tbaa !54
  %232 = load ptr, ptr %219, align 8, !tbaa !63
  %233 = getelementptr %struct.pic_motion_params, ptr %232, i64 %223
  %234 = getelementptr %struct.pic_motion_params, ptr %233, i64 2
  %235 = getelementptr %struct.pic_motion_params, ptr %233, i64 2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %234, i8 0, i64 24, i1 false)
  store i8 -1, ptr %235, align 8, !tbaa !54
  %236 = getelementptr %struct.pic_motion_params, ptr %233, i64 2, i32 2, i64 1
  store i8 -1, ptr %236, align 1, !tbaa !54
  %237 = getelementptr inbounds ptr, ptr %219, i64 1
  %238 = load ptr, ptr %219, align 8, !tbaa !63
  %239 = getelementptr %struct.pic_motion_params, ptr %238, i64 %223
  %240 = getelementptr %struct.pic_motion_params, ptr %239, i64 3
  %241 = getelementptr %struct.pic_motion_params, ptr %239, i64 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %240, i8 0, i64 24, i1 false)
  store i8 -1, ptr %241, align 8, !tbaa !54
  %242 = getelementptr %struct.pic_motion_params, ptr %239, i64 3, i32 2, i64 1
  store i8 -1, ptr %242, align 1, !tbaa !54
  %243 = add nuw nsw i32 %220, 1
  %244 = icmp eq i32 %243, 4
  br i1 %244, label %245, label %218, !llvm.loop !165

245:                                              ; preds = %218
  %246 = load i16, ptr %124, align 8, !tbaa !93
  %247 = icmp eq i16 %246, 14
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  call fastcc void @read_ipred_modes(ptr noundef nonnull %0)
  %249 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 111
  %250 = load ptr, ptr %249, align 8, !tbaa !125
  call void %250(ptr noundef nonnull %0) #15
  br label %328

251:                                              ; preds = %245
  %252 = load i32, ptr %8, align 8, !tbaa !128
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %322, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 74
  %256 = load i32, ptr %255, align 8, !tbaa !170
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %322, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %0, align 8, !tbaa !42
  %260 = load ptr, ptr %4, align 8, !tbaa !34
  %261 = getelementptr inbounds %struct.slice, ptr %259, i64 0, i32 125
  %262 = load ptr, ptr %261, align 8, !tbaa !43
  %263 = getelementptr inbounds %struct.video_par, ptr %260, i64 0, i32 69
  %264 = getelementptr inbounds %struct.slice, ptr %259, i64 0, i32 80
  %265 = load ptr, ptr %264, align 8, !tbaa !62
  %266 = load ptr, ptr %265, align 8, !tbaa !63
  br label %267

267:                                              ; preds = %277, %258
  %268 = phi i64 [ 0, %258 ], [ %278, %277 ]
  %269 = getelementptr inbounds ptr, ptr %266, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !63
  br label %271

271:                                              ; preds = %271, %267
  %272 = phi i64 [ 0, %267 ], [ %275, %271 ]
  %273 = load i32, ptr %263, align 4, !tbaa !53
  %274 = getelementptr inbounds i32, ptr %270, i64 %272
  store i32 %273, ptr %274, align 4, !tbaa !53
  %275 = add nuw nsw i64 %272, 1
  %276 = icmp eq i64 %275, 16
  br i1 %276, label %277, label %271, !llvm.loop !171

277:                                              ; preds = %271
  %278 = add nuw nsw i64 %268, 1
  %279 = icmp eq i64 %278, 16
  br i1 %279, label %280, label %267, !llvm.loop !172

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.storable_picture, ptr %262, i64 0, i32 48
  %282 = load i32, ptr %281, align 4, !tbaa !173
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %328, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.video_par, ptr %260, i64 0, i32 105
  %286 = load i32, ptr %285, align 8, !tbaa !124
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %328

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.video_par, ptr %260, i64 0, i32 78
  %290 = getelementptr inbounds %struct.video_par, ptr %260, i64 0, i32 77
  br label %291

291:                                              ; preds = %319, %288
  %292 = phi i64 [ 0, %288 ], [ %320, %319 ]
  %293 = load i32, ptr %289, align 8, !tbaa !79
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %319

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.video_par, ptr %260, i64 0, i32 69, i64 %292
  %297 = getelementptr inbounds ptr, ptr %265, i64 %292
  br label %298

298:                                              ; preds = %314, %295
  %299 = phi i64 [ 0, %295 ], [ %315, %314 ]
  %300 = load i32, ptr %290, align 4, !tbaa !77
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %298
  %303 = load ptr, ptr %297, align 8, !tbaa !63
  %304 = getelementptr inbounds ptr, ptr %303, i64 %299
  %305 = load ptr, ptr %304, align 8, !tbaa !63
  br label %306

306:                                              ; preds = %306, %302
  %307 = phi i64 [ 0, %302 ], [ %310, %306 ]
  %308 = load i32, ptr %296, align 4, !tbaa !53
  %309 = getelementptr inbounds i32, ptr %305, i64 %307
  store i32 %308, ptr %309, align 4, !tbaa !53
  %310 = add nuw nsw i64 %307, 1
  %311 = load i32, ptr %290, align 4, !tbaa !77
  %312 = sext i32 %311 to i64
  %313 = icmp slt i64 %310, %312
  br i1 %313, label %306, label %314, !llvm.loop !174

314:                                              ; preds = %306, %298
  %315 = add nuw nsw i64 %299, 1
  %316 = load i32, ptr %289, align 8, !tbaa !79
  %317 = sext i32 %316 to i64
  %318 = icmp slt i64 %315, %317
  br i1 %318, label %298, label %319, !llvm.loop !175

319:                                              ; preds = %314, %291
  %320 = add nuw nsw i64 %292, 1
  %321 = icmp eq i64 %292, 0
  br i1 %321, label %291, label %328, !llvm.loop !176

322:                                              ; preds = %254, %251
  %323 = load ptr, ptr %69, align 8, !tbaa !131
  %324 = getelementptr inbounds i8, ptr %11, i64 7
  %325 = load i8, ptr %324, align 1, !tbaa !54
  %326 = zext i8 %325 to i64
  %327 = getelementptr inbounds %struct.datapartition, ptr %323, i64 %326
  call fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef %3, ptr noundef %327)
  br label %328

328:                                              ; preds = %319, %284, %280, %322, %248
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_one_component_i_slice(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 9, ptr %5, align 4, !tbaa !177
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %7 = load i16, ptr %6, align 8, !tbaa !93
  switch i16 %7, label %16 [
    i16 14, label %8
    i16 10, label %10
    i16 9, label %12
    i16 13, label %14
  ]

8:                                                ; preds = %4
  %9 = tail call i32 @mb_pred_ipcm(ptr noundef %0) #15
  br label %16

10:                                               ; preds = %4
  %11 = tail call i32 @mb_pred_intra16x16(ptr noundef %0, i32 noundef %1, ptr noundef %3) #15
  br label %16

12:                                               ; preds = %4
  %13 = tail call i32 @mb_pred_intra4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %16

14:                                               ; preds = %4
  %15 = tail call i32 @mb_pred_intra8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15
  br label %16

16:                                               ; preds = %4, %10, %14, %12, %8
  ret i32 1
}

declare void @init_lists_i_slice_mvc(ptr noundef) #5

declare void @init_lists_i_slice(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @interpret_mb_mode_SI(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !93
  switch i16 %3, label %30 [
    i16 0, label %4
    i16 1, label %20
    i16 26, label %24
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %5, align 8, !tbaa !81
  store i16 12, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %6, align 4
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %7, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 126
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 4, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !71
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = load i16, ptr %11, align 4, !tbaa !70
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  store i32 1, ptr %19, align 4, !tbaa !53
  br label %43

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %21, align 8, !tbaa !81
  store i16 9, ptr %2, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 185273099, ptr %22, align 4
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %23, align 8
  br label %43

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %25, align 8, !tbaa !81
  store i16 14, ptr %2, align 8, !tbaa !93
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 -1, ptr %26, align 4, !tbaa !95
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 0, ptr %27, align 8, !tbaa !127
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %29, align 8
  br label %43

30:                                               ; preds = %1
  %31 = sext i16 %3 to i32
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  store i32 1, ptr %32, align 8, !tbaa !81
  store i16 10, ptr %2, align 8, !tbaa !93
  %33 = add nsw i32 %31, -2
  %34 = ashr i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], ptr @__const.interpret_mb_mode_SI.ICBPTAB, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %37, ptr %38, align 4, !tbaa !95
  %39 = and i32 %33, 3
  %40 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  store i32 %39, ptr %40, align 8, !tbaa !127
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  store i32 -1, ptr %42, align 8
  br label %43

43:                                               ; preds = %20, %30, %24, %4
  ret void
}

declare void @intrapred_chroma_mbaff(ptr noundef) #5

declare void @intrapred_chroma(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_444(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = icmp eq i32 %15, 1
  %17 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 33
  %18 = load i32, ptr %17, align 4, !tbaa !186
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !149
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %1, %20
  %25 = phi i1 [ false, %1 ], [ %23, %20 ]
  %26 = select i1 %25, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %28 = load i16, ptr %27, align 8, !tbaa !93
  switch i16 %28, label %29 [
    i16 10, label %180
    i16 14, label %180
    i16 9, label %30
    i16 12, label %30
    i16 13, label %30
  ]

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %24, %24, %24, %29
  %31 = phi i32 [ 11, %29 ], [ 6, %24 ], [ 6, %24 ], [ 6, %24 ]
  store i32 %31, ptr %6, align 8, !tbaa !129
  %32 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %11, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !54
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.datapartition, ptr %33, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  %40 = getelementptr inbounds %struct.bit_stream, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !136
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %30
  switch i16 %28, label %46 [
    i16 9, label %44
    i16 12, label %44
    i16 13, label %44
  ]

44:                                               ; preds = %43, %43, %43
  %45 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 120
  br label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 121
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %50, ptr %51, align 8, !tbaa !138
  br label %54

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %53, align 8, !tbaa !139
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.datapartition, ptr %33, i64 %37, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  %57 = call i32 %56(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %38) #15
  %58 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !154
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %59, ptr %60, align 4, !tbaa !95
  %61 = load i16, ptr %27, align 8, !tbaa !93
  %62 = add i16 %61, -1
  %63 = icmp ult i16 %62, 3
  br i1 %63, label %80, label %64

64:                                               ; preds = %54
  %65 = icmp eq i16 %61, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 33
  %68 = load i32, ptr %67, align 4, !tbaa !97
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !123
  %73 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %72, i64 0, i32 32
  %74 = load i32, ptr %73, align 4, !tbaa !163
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70, %66, %64
  %77 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %78 = load i32, ptr %77, align 8, !tbaa !162
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %54, %76, %70
  switch i16 %61, label %81 [
    i16 13, label %108
    i16 9, label %108
  ]

81:                                               ; preds = %80
  %82 = and i32 %59, 15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 9
  %86 = load i32, ptr %85, align 4, !tbaa !166
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %84
  store i32 0, ptr %6, align 8, !tbaa !129
  %89 = load ptr, ptr %32, align 8, !tbaa !131
  %90 = load i8, ptr %11, align 4, !tbaa !54
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds %struct.datapartition, ptr %89, i64 %91
  %93 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %93, align 8, !tbaa !139
  %94 = load ptr, ptr %92, align 8, !tbaa !133
  %95 = getelementptr inbounds %struct.bit_stream, ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !136
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %99, align 4, !tbaa !157
  %100 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %94) #15
  br label %105

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.datapartition, ptr %89, i64 %91, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !153
  %104 = call i32 %103(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %92) #15
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, ptr %58, align 4, !tbaa !154
  %107 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %106, ptr %107, align 4, !tbaa !167
  br label %108

108:                                              ; preds = %81, %80, %80, %76, %105, %84
  %109 = icmp eq i32 %59, 0
  br i1 %109, label %303, label %110

110:                                              ; preds = %108
  %111 = load i32, ptr %14, align 8, !tbaa !81
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %113)
  %114 = load i32, ptr %8, align 8, !tbaa !128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %303, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %14, align 8, !tbaa !81
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 75
  %121 = load i32, ptr %120, align 4, !tbaa !187
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %124, align 1, !tbaa !188
  br label %125

125:                                              ; preds = %123, %119, %116
  br i1 %16, label %126, label %133

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 74
  %128 = load i32, ptr %127, align 8, !tbaa !170
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %131, align 2, !tbaa !156
  %132 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %132, align 1, !tbaa !188
  br label %133

133:                                              ; preds = %130, %126, %125
  %134 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %135 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 160
  %136 = load ptr, ptr %135, align 8, !tbaa !189
  %137 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 81, i64 1
  call void %136(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %137, ptr noundef nonnull %5) #15
  %138 = load ptr, ptr %135, align 8, !tbaa !189
  call void %138(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %137, ptr noundef nonnull %4) #15
  %139 = load i32, ptr %14, align 8, !tbaa !81
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !111
  %144 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %143, i64 0, i32 30
  %145 = load i32, ptr %144, align 4, !tbaa !168
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %141, %133
  %148 = load i32, ptr %5, align 4, !tbaa !190
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 35
  %152 = load ptr, ptr %151, align 8, !tbaa !148
  %153 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !192
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.macroblock, ptr %152, i64 %155, i32 23
  %157 = load i8, ptr %156, align 1, !tbaa !188
  %158 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !188
  %160 = or i8 %159, %157
  store i8 %160, ptr %158, align 1, !tbaa !188
  br label %161

161:                                              ; preds = %150, %147
  %162 = load i32, ptr %4, align 4, !tbaa !190
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 35
  %166 = load ptr, ptr %165, align 8, !tbaa !148
  %167 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !192
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.macroblock, ptr %166, i64 %169, i32 23
  %171 = load i8, ptr %170, align 1, !tbaa !188
  %172 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %173 = load i8, ptr %172, align 1, !tbaa !188
  %174 = or i8 %173, %171
  store i8 %174, ptr %172, align 1, !tbaa !188
  br label %175

175:                                              ; preds = %141, %161, %164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %176 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %177 = load i8, ptr %176, align 1, !tbaa !188
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %303, label %179

179:                                              ; preds = %175
  store i32 0, ptr %60, align 4, !tbaa !95
  br label %303

180:                                              ; preds = %24, %24
  %181 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %182 = load i32, ptr %181, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef 17)
  %183 = load i32, ptr %8, align 8, !tbaa !128
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %239, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 74
  %187 = load i32, ptr %186, align 8, !tbaa !170
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %190, align 2, !tbaa !156
  %191 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %191, align 1, !tbaa !188
  br label %192

192:                                              ; preds = %189, %185
  %193 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %194 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 160
  %195 = load ptr, ptr %194, align 8, !tbaa !189
  %196 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 81, i64 1
  call void %195(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %196, ptr noundef nonnull %3) #15
  %197 = load ptr, ptr %194, align 8, !tbaa !189
  call void %197(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %196, ptr noundef nonnull %2) #15
  %198 = load i32, ptr %14, align 8, !tbaa !81
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !111
  %203 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %202, i64 0, i32 30
  %204 = load i32, ptr %203, align 4, !tbaa !168
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %200, %192
  %207 = load i32, ptr %3, align 4, !tbaa !190
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 35
  %211 = load ptr, ptr %210, align 8, !tbaa !148
  %212 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %213 = load i32, ptr %212, align 4, !tbaa !192
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.macroblock, ptr %211, i64 %214, i32 23
  %216 = load i8, ptr %215, align 1, !tbaa !188
  %217 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %218 = load i8, ptr %217, align 1, !tbaa !188
  %219 = or i8 %218, %216
  store i8 %219, ptr %217, align 1, !tbaa !188
  br label %220

220:                                              ; preds = %209, %206
  %221 = load i32, ptr %2, align 4, !tbaa !190
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 35
  %225 = load ptr, ptr %224, align 8, !tbaa !148
  %226 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !192
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.macroblock, ptr %225, i64 %228, i32 23
  %230 = load i8, ptr %229, align 1, !tbaa !188
  %231 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %232 = load i8, ptr %231, align 1, !tbaa !188
  %233 = or i8 %232, %230
  store i8 %233, ptr %231, align 1, !tbaa !188
  br label %234

234:                                              ; preds = %200, %220, %223
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %235 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %236 = load i8, ptr %235, align 1, !tbaa !188
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store i32 0, ptr %181, align 4, !tbaa !95
  br label %239

239:                                              ; preds = %234, %238, %180
  %240 = phi i32 [ 0, %238 ], [ %182, %234 ], [ %182, %180 ]
  %241 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %242 = load i8, ptr %241, align 1, !tbaa !188
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %303

244:                                              ; preds = %239
  store i32 7, ptr %6, align 8, !tbaa !129
  %245 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %246 = load ptr, ptr %245, align 8, !tbaa !131
  %247 = getelementptr inbounds i8, ptr %11, i64 7
  %248 = load i8, ptr %247, align 1, !tbaa !54
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds %struct.datapartition, ptr %246, i64 %249
  %251 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  store i32 0, ptr %251, align 8, !tbaa !193
  store i32 7, ptr %6, align 8, !tbaa !129
  %252 = load ptr, ptr %250, align 8, !tbaa !133
  %253 = getelementptr inbounds %struct.bit_stream, ptr %252, i64 0, i32 5
  %254 = load i32, ptr %253, align 8, !tbaa !136
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %244
  %257 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %257, align 8, !tbaa !138
  br label %260

258:                                              ; preds = %244
  %259 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %259, align 8, !tbaa !139
  br label %260

260:                                              ; preds = %258, %256
  %261 = getelementptr inbounds %struct.datapartition, ptr %246, i64 %249, i32 2
  %262 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %263 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %264 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  br label %265

265:                                              ; preds = %260, %290
  %266 = phi ptr [ %26, %260 ], [ %291, %290 ]
  %267 = phi i32 [ 0, %260 ], [ %292, %290 ]
  %268 = load ptr, ptr %261, align 8, !tbaa !153
  %269 = call i32 %268(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %250) #15
  %270 = load i32, ptr %262, align 4, !tbaa !154
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %265
  %273 = load i32, ptr %263, align 8, !tbaa !194
  %274 = shl nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %266, i64 %275
  %277 = getelementptr inbounds i8, ptr %276, i64 1
  %278 = load i8, ptr %276, align 1, !tbaa !54
  %279 = zext i8 %278 to i64
  %280 = shl nuw nsw i64 %279, 2
  %281 = getelementptr inbounds i8, ptr %276, i64 2
  %282 = load i8, ptr %277, align 1, !tbaa !54
  %283 = zext i8 %282 to i64
  %284 = shl nuw nsw i64 %283, 2
  %285 = load ptr, ptr %264, align 8, !tbaa !62
  %286 = load ptr, ptr %285, align 8, !tbaa !63
  %287 = getelementptr inbounds ptr, ptr %286, i64 %284
  %288 = load ptr, ptr %287, align 8, !tbaa !63
  %289 = getelementptr inbounds i32, ptr %288, i64 %280
  store i32 %270, ptr %289, align 4, !tbaa !53
  br label %290

290:                                              ; preds = %265, %272
  %291 = phi ptr [ %281, %272 ], [ %266, %265 ]
  %292 = add nuw nsw i32 %267, 1
  %293 = icmp ult i32 %267, 16
  %294 = icmp ne i32 %270, 0
  %295 = and i1 %294, %293
  br i1 %295, label %265, label %296, !llvm.loop !195

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %298 = load i32, ptr %297, align 4, !tbaa !60
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 46
  %302 = load i32, ptr %301, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %302) #15
  br label %303

303:                                              ; preds = %239, %300, %296, %108, %175, %179, %110
  %304 = phi i32 [ %240, %239 ], [ %240, %300 ], [ %240, %296 ], [ 0, %179 ], [ %59, %175 ], [ %59, %110 ], [ 0, %108 ]
  %305 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 29
  %306 = load i32, ptr %305, align 4, !tbaa !150
  %307 = load ptr, ptr %12, align 8, !tbaa !34
  %308 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %306, ptr %308, align 4, !tbaa !46
  %309 = getelementptr inbounds %struct.video_par, ptr %307, i64 0, i32 67
  %310 = load i32, ptr %309, align 4, !tbaa !58
  %311 = add nsw i32 %310, %306
  %312 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %311, ptr %312, align 8, !tbaa !53
  %313 = load ptr, ptr %0, align 8, !tbaa !42
  %314 = getelementptr inbounds %struct.slice, ptr %313, i64 0, i32 125
  %315 = load ptr, ptr %314, align 8, !tbaa !43
  %316 = getelementptr inbounds %struct.video_par, ptr %307, i64 0, i32 68
  br label %317

317:                                              ; preds = %333, %303
  %318 = phi i64 [ 0, %303 ], [ %337, %333 ]
  %319 = load i32, ptr %316, align 8, !tbaa !47
  %320 = sub nsw i32 0, %319
  %321 = getelementptr inbounds %struct.storable_picture, ptr %315, i64 0, i32 56, i64 %318
  %322 = load i32, ptr %321, align 4, !tbaa !53
  %323 = add nsw i32 %322, %306
  %324 = call i32 @llvm.smax.i32(i32 %323, i32 %320)
  %325 = call i32 @llvm.smin.i32(i32 %324, i32 51)
  %326 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %318
  store i32 %325, ptr %326, align 4, !tbaa !53
  %327 = icmp slt i32 %324, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %317
  %329 = zext nneg i32 %325 to i64
  %330 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !54
  %332 = zext i8 %331 to i32
  br label %333

333:                                              ; preds = %328, %317
  %334 = phi i32 [ %332, %328 ], [ %325, %317 ]
  store i32 %334, ptr %326, align 4, !tbaa !53
  %335 = load i32, ptr %316, align 8, !tbaa !47
  %336 = add nsw i32 %335, %334
  %337 = add nuw nsw i64 %318, 1
  %338 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %337
  store i32 %336, ptr %338, align 4, !tbaa !53
  %339 = icmp eq i64 %318, 0
  br i1 %339, label %317, label %340, !llvm.loop !55

340:                                              ; preds = %333
  %341 = load i32, ptr %312, align 8, !tbaa !53
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.video_par, ptr %307, i64 0, i32 73
  %345 = load i32, ptr %344, align 4, !tbaa !59
  %346 = icmp eq i32 %345, 1
  %347 = zext i1 %346 to i32
  br label %348

348:                                              ; preds = %340, %343
  %349 = phi i32 [ 0, %340 ], [ %347, %343 ]
  %350 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %349, ptr %350, align 4, !tbaa !60
  %351 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 132
  %352 = load ptr, ptr %351, align 8, !tbaa !197
  %353 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 46
  %354 = load i32, ptr %353, align 8, !tbaa !196
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !53
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, ptr %352, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !53
  %361 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 133
  %362 = load ptr, ptr %361, align 8, !tbaa !198
  %363 = getelementptr inbounds i32, ptr %362, i64 %358
  %364 = load i32, ptr %363, align 4, !tbaa !53
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 88, i64 %355, i64 %365
  %367 = sext i32 %364 to i64
  %368 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 89, i64 %355, i64 %367
  %369 = select i1 %16, ptr %366, ptr %368
  %370 = icmp eq i32 %304, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %348
  %372 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %373 = load i32, ptr %372, align 4, !tbaa !167
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %371
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0)
  br label %377

376:                                              ; preds = %371
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %369, i32 noundef %360, i32 noundef %304)
  br label %377

377:                                              ; preds = %375, %376, %348
  %378 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %379 = getelementptr inbounds i8, ptr %11, i64 7
  %380 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 105
  %381 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  %382 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  %383 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  %384 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  %385 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %386 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %387 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  %388 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 68
  %389 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  br label %390

390:                                              ; preds = %377, %517
  %391 = phi i64 [ 0, %377 ], [ %506, %517 ]
  %392 = load i16, ptr %27, align 8, !tbaa !93
  switch i16 %392, label %452 [
    i16 10, label %393
    i16 14, label %393
  ]

393:                                              ; preds = %390, %390
  store i32 7, ptr %6, align 8, !tbaa !129
  %394 = load ptr, ptr %378, align 8, !tbaa !131
  %395 = load i8, ptr %379, align 1, !tbaa !54
  %396 = zext i8 %395 to i64
  %397 = getelementptr inbounds %struct.datapartition, ptr %394, i64 %396
  %398 = load i32, ptr %380, align 8, !tbaa !124
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %401, label %400

400:                                              ; preds = %393
  store i32 0, ptr %381, align 8, !tbaa !193
  br label %404

401:                                              ; preds = %393
  %402 = icmp eq i64 %391, 0
  %403 = select i1 %402, i32 10, i32 16
  store i32 %403, ptr %382, align 8, !tbaa !193
  br label %404

404:                                              ; preds = %401, %400
  %405 = load ptr, ptr %397, align 8, !tbaa !133
  %406 = getelementptr inbounds %struct.bit_stream, ptr %405, i64 0, i32 5
  %407 = load i32, ptr %406, align 8, !tbaa !136
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %404
  store ptr @linfo_levrun_inter, ptr %383, align 8, !tbaa !138
  br label %411

410:                                              ; preds = %404
  store ptr @readRunLevel_CABAC, ptr %384, align 8, !tbaa !139
  br label %411

411:                                              ; preds = %410, %409
  %412 = getelementptr inbounds %struct.datapartition, ptr %394, i64 %396, i32 2
  br label %413

413:                                              ; preds = %411, %440
  %414 = phi i32 [ 0, %411 ], [ %442, %440 ]
  %415 = phi i32 [ -1, %411 ], [ %441, %440 ]
  %416 = load ptr, ptr %412, align 8, !tbaa !153
  %417 = call i32 %416(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %397) #15
  %418 = load i32, ptr %385, align 4, !tbaa !154
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %440, label %420

420:                                              ; preds = %413
  %421 = load i32, ptr %386, align 8, !tbaa !194
  %422 = add i32 %415, 1
  %423 = add i32 %422, %421
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [2 x i8], ptr %26, i64 %424
  %426 = load i8, ptr %425, align 2, !tbaa !54
  %427 = zext i8 %426 to i64
  %428 = getelementptr inbounds [2 x i8], ptr %26, i64 %424, i64 1
  %429 = load i8, ptr %428, align 1, !tbaa !54
  %430 = zext i8 %429 to i64
  %431 = load ptr, ptr %387, align 8, !tbaa !62
  %432 = getelementptr ptr, ptr %431, i64 %391
  %433 = getelementptr ptr, ptr %432, i64 1
  %434 = load ptr, ptr %433, align 8, !tbaa !63
  %435 = shl nuw nsw i64 %430, 2
  %436 = getelementptr inbounds ptr, ptr %434, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !63
  %438 = shl nuw nsw i64 %427, 2
  %439 = getelementptr inbounds i32, ptr %437, i64 %438
  store i32 %418, ptr %439, align 4, !tbaa !53
  br label %440

440:                                              ; preds = %413, %420
  %441 = phi i32 [ %423, %420 ], [ %415, %413 ]
  %442 = add nuw nsw i32 %414, 1
  %443 = icmp ult i32 %414, 16
  %444 = icmp ne i32 %418, 0
  %445 = and i1 %444, %443
  br i1 %445, label %413, label %446, !llvm.loop !199

446:                                              ; preds = %440
  %447 = load i32, ptr %350, align 4, !tbaa !60
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446
  %450 = trunc i64 %391 to i32
  %451 = add i32 %450, 1
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %451) #15
  br label %452

452:                                              ; preds = %390, %446, %449
  %453 = load i32, ptr %305, align 4, !tbaa !150
  %454 = load ptr, ptr %12, align 8, !tbaa !34
  store i32 %453, ptr %308, align 4, !tbaa !46
  %455 = getelementptr inbounds %struct.video_par, ptr %454, i64 0, i32 67
  %456 = load i32, ptr %455, align 4, !tbaa !58
  %457 = add nsw i32 %456, %453
  store i32 %457, ptr %312, align 8, !tbaa !53
  %458 = load ptr, ptr %0, align 8, !tbaa !42
  %459 = getelementptr inbounds %struct.slice, ptr %458, i64 0, i32 125
  %460 = load ptr, ptr %459, align 8, !tbaa !43
  %461 = getelementptr inbounds %struct.video_par, ptr %454, i64 0, i32 68
  br label %462

462:                                              ; preds = %478, %452
  %463 = phi i64 [ 0, %452 ], [ %482, %478 ]
  %464 = load i32, ptr %461, align 8, !tbaa !47
  %465 = sub nsw i32 0, %464
  %466 = getelementptr inbounds %struct.storable_picture, ptr %460, i64 0, i32 56, i64 %463
  %467 = load i32, ptr %466, align 4, !tbaa !53
  %468 = add nsw i32 %467, %453
  %469 = call i32 @llvm.smax.i32(i32 %468, i32 %465)
  %470 = call i32 @llvm.smin.i32(i32 %469, i32 51)
  %471 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %463
  store i32 %470, ptr %471, align 4, !tbaa !53
  %472 = icmp slt i32 %469, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %462
  %474 = zext nneg i32 %470 to i64
  %475 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !54
  %477 = zext i8 %476 to i32
  br label %478

478:                                              ; preds = %473, %462
  %479 = phi i32 [ %477, %473 ], [ %470, %462 ]
  store i32 %479, ptr %471, align 4, !tbaa !53
  %480 = load i32, ptr %461, align 8, !tbaa !47
  %481 = add nsw i32 %480, %479
  %482 = add nuw nsw i64 %463, 1
  %483 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %482
  store i32 %481, ptr %483, align 4, !tbaa !53
  %484 = icmp eq i64 %463, 0
  br i1 %484, label %462, label %485, !llvm.loop !55

485:                                              ; preds = %478
  %486 = load i32, ptr %312, align 8, !tbaa !53
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.video_par, ptr %454, i64 0, i32 73
  %490 = load i32, ptr %489, align 4, !tbaa !59
  %491 = icmp eq i32 %490, 1
  %492 = zext i1 %491 to i32
  br label %493

493:                                              ; preds = %485, %488
  %494 = phi i32 [ 0, %485 ], [ %492, %488 ]
  store i32 %494, ptr %350, align 4, !tbaa !60
  %495 = load ptr, ptr %351, align 8, !tbaa !197
  %496 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %391
  %497 = load i32, ptr %496, align 4, !tbaa !53
  %498 = load i32, ptr %388, align 8, !tbaa !47
  %499 = add nsw i32 %498, %497
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, ptr %495, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !53
  %503 = load ptr, ptr %361, align 8, !tbaa !198
  %504 = getelementptr inbounds i32, ptr %503, i64 %500
  %505 = load i32, ptr %504, align 4, !tbaa !53
  %506 = add nuw nsw i64 %391, 1
  %507 = sext i32 %505 to i64
  %508 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 88, i64 %506, i64 %507
  %509 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 89, i64 %506, i64 %507
  %510 = select i1 %16, ptr %508, ptr %509
  br i1 %370, label %517, label %511

511:                                              ; preds = %493
  %512 = load i32, ptr %389, align 4, !tbaa !167
  %513 = icmp eq i32 %512, 0
  %514 = trunc i64 %506 to i32
  br i1 %513, label %516, label %515

515:                                              ; preds = %511
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %514)
  br label %517

516:                                              ; preds = %511
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %514, ptr noundef nonnull %510, i32 noundef %502, i32 noundef %304)
  br label %517

517:                                              ; preds = %493, %516, %515
  %518 = icmp eq i64 %391, 0
  br i1 %518, label %390, label %519, !llvm.loop !200

519:                                              ; preds = %517
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_422(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x [4 x i32]], align 16
  %10 = alloca [2 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 42
  %13 = load i32, ptr %12, align 8, !tbaa !128
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = icmp eq i32 %19, 1
  %21 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 125
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 48
  %24 = load i32, ptr %23, align 4, !tbaa !173
  %25 = add nsw i32 %24, -1
  %26 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 33
  %27 = load i32, ptr %26, align 4, !tbaa !186
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %31 = load i32, ptr %30, align 8, !tbaa !149
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i1 [ false, %1 ], [ %32, %29 ]
  %35 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 132
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 133
  %38 = load ptr, ptr %37, align 8, !tbaa !198
  br label %39

39:                                               ; preds = %33, %39
  %40 = phi i64 [ 0, %33 ], [ %41, %39 ]
  %41 = add nuw nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !53
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %36, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !53
  %47 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %40
  store i32 %46, ptr %47, align 4, !tbaa !53
  %48 = getelementptr inbounds i32, ptr %38, i64 %44
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %40
  store i32 %49, ptr %50, align 4, !tbaa !53
  %51 = icmp eq i64 %40, 0
  br i1 %51, label %39, label %52, !llvm.loop !201

52:                                               ; preds = %39
  %53 = select i1 %34, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %54 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %55 = load i16, ptr %54, align 8, !tbaa !93
  switch i16 %55, label %56 [
    i16 10, label %207
    i16 14, label %207
    i16 9, label %57
    i16 12, label %57
    i16 13, label %57
  ]

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %52, %52, %52, %56
  %58 = phi i32 [ 11, %56 ], [ 6, %52 ], [ 6, %52 ], [ 6, %52 ]
  store i32 %58, ptr %6, align 8, !tbaa !129
  %59 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 57
  %60 = load ptr, ptr %59, align 8, !tbaa !131
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds i8, ptr %15, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !54
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds %struct.datapartition, ptr %60, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !133
  %67 = getelementptr inbounds %struct.bit_stream, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !136
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %57
  switch i16 %55, label %73 [
    i16 9, label %71
    i16 12, label %71
    i16 13, label %71
  ]

71:                                               ; preds = %70, %70, %70
  %72 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 120
  br label %75

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 121
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !63
  %78 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %77, ptr %78, align 8, !tbaa !138
  br label %81

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %80, align 8, !tbaa !139
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds %struct.datapartition, ptr %60, i64 %64, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !153
  %84 = call i32 %83(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %65) #15
  %85 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !154
  %87 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %86, ptr %87, align 4, !tbaa !95
  %88 = load i16, ptr %54, align 8, !tbaa !93
  %89 = add i16 %88, -1
  %90 = icmp ult i16 %89, 3
  br i1 %90, label %107, label %91

91:                                               ; preds = %81
  %92 = icmp eq i16 %88, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 33
  %95 = load i32, ptr %94, align 4, !tbaa !97
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !123
  %100 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %99, i64 0, i32 32
  %101 = load i32, ptr %100, align 4, !tbaa !163
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97, %93, %91
  %104 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %105 = load i32, ptr %104, align 8, !tbaa !162
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %135, label %107

107:                                              ; preds = %81, %103, %97
  switch i16 %88, label %108 [
    i16 13, label %135
    i16 9, label %135
  ]

108:                                              ; preds = %107
  %109 = and i32 %86, 15
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 9
  %113 = load i32, ptr %112, align 4, !tbaa !166
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %135, label %115

115:                                              ; preds = %111
  store i32 0, ptr %6, align 8, !tbaa !129
  %116 = load ptr, ptr %59, align 8, !tbaa !131
  %117 = load i8, ptr %15, align 4, !tbaa !54
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds %struct.datapartition, ptr %116, i64 %118
  %120 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %120, align 8, !tbaa !139
  %121 = load ptr, ptr %119, align 8, !tbaa !133
  %122 = getelementptr inbounds %struct.bit_stream, ptr %121, i64 0, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !136
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %126, align 4, !tbaa !157
  %127 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %121) #15
  br label %132

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.datapartition, ptr %116, i64 %118, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !153
  %131 = call i32 %130(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %119) #15
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, ptr %85, align 4, !tbaa !154
  %134 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %133, ptr %134, align 4, !tbaa !167
  br label %135

135:                                              ; preds = %108, %107, %107, %103, %132, %111
  %136 = icmp eq i32 %86, 0
  br i1 %136, label %330, label %137

137:                                              ; preds = %135
  %138 = load i32, ptr %18, align 8, !tbaa !81
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %15, i32 noundef %140)
  %141 = load i32, ptr %12, align 8, !tbaa !128
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %330, label %143

143:                                              ; preds = %137
  %144 = load i32, ptr %18, align 8, !tbaa !81
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 75
  %148 = load i32, ptr %147, align 4, !tbaa !187
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %151, align 1, !tbaa !188
  br label %152

152:                                              ; preds = %150, %146, %143
  br i1 %20, label %153, label %160

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 74
  %155 = load i32, ptr %154, align 8, !tbaa !170
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %158, align 2, !tbaa !156
  %159 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %159, align 1, !tbaa !188
  br label %160

160:                                              ; preds = %157, %153, %152
  %161 = load ptr, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %162 = getelementptr inbounds %struct.video_par, ptr %161, i64 0, i32 160
  %163 = load ptr, ptr %162, align 8, !tbaa !189
  %164 = getelementptr inbounds %struct.video_par, ptr %161, i64 0, i32 81, i64 1
  call void %163(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %164, ptr noundef nonnull %5) #15
  %165 = load ptr, ptr %162, align 8, !tbaa !189
  call void %165(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %164, ptr noundef nonnull %4) #15
  %166 = load i32, ptr %18, align 8, !tbaa !81
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.video_par, ptr %161, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !111
  %171 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %170, i64 0, i32 30
  %172 = load i32, ptr %171, align 4, !tbaa !168
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %202

174:                                              ; preds = %168, %160
  %175 = load i32, ptr %5, align 4, !tbaa !190
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.video_par, ptr %161, i64 0, i32 35
  %179 = load ptr, ptr %178, align 8, !tbaa !148
  %180 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !192
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.macroblock, ptr %179, i64 %182, i32 23
  %184 = load i8, ptr %183, align 1, !tbaa !188
  %185 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %186 = load i8, ptr %185, align 1, !tbaa !188
  %187 = or i8 %186, %184
  store i8 %187, ptr %185, align 1, !tbaa !188
  br label %188

188:                                              ; preds = %177, %174
  %189 = load i32, ptr %4, align 4, !tbaa !190
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.video_par, ptr %161, i64 0, i32 35
  %193 = load ptr, ptr %192, align 8, !tbaa !148
  %194 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !192
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.macroblock, ptr %193, i64 %196, i32 23
  %198 = load i8, ptr %197, align 1, !tbaa !188
  %199 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %200 = load i8, ptr %199, align 1, !tbaa !188
  %201 = or i8 %200, %198
  store i8 %201, ptr %199, align 1, !tbaa !188
  br label %202

202:                                              ; preds = %168, %188, %191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %203 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %204 = load i8, ptr %203, align 1, !tbaa !188
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %330, label %206

206:                                              ; preds = %202
  store i32 0, ptr %87, align 4, !tbaa !95
  br label %330

207:                                              ; preds = %52, %52
  %208 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %209 = load i32, ptr %208, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %15, i32 noundef 17)
  %210 = load i32, ptr %12, align 8, !tbaa !128
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %266, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 74
  %214 = load i32, ptr %213, align 8, !tbaa !170
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %217, align 2, !tbaa !156
  %218 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %218, align 1, !tbaa !188
  br label %219

219:                                              ; preds = %216, %212
  %220 = load ptr, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %221 = getelementptr inbounds %struct.video_par, ptr %220, i64 0, i32 160
  %222 = load ptr, ptr %221, align 8, !tbaa !189
  %223 = getelementptr inbounds %struct.video_par, ptr %220, i64 0, i32 81, i64 1
  call void %222(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %223, ptr noundef nonnull %3) #15
  %224 = load ptr, ptr %221, align 8, !tbaa !189
  call void %224(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %223, ptr noundef nonnull %2) #15
  %225 = load i32, ptr %18, align 8, !tbaa !81
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.video_par, ptr %220, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !111
  %230 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %229, i64 0, i32 30
  %231 = load i32, ptr %230, align 4, !tbaa !168
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %261

233:                                              ; preds = %227, %219
  %234 = load i32, ptr %3, align 4, !tbaa !190
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %247, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.video_par, ptr %220, i64 0, i32 35
  %238 = load ptr, ptr %237, align 8, !tbaa !148
  %239 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %240 = load i32, ptr %239, align 4, !tbaa !192
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.macroblock, ptr %238, i64 %241, i32 23
  %243 = load i8, ptr %242, align 1, !tbaa !188
  %244 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %245 = load i8, ptr %244, align 1, !tbaa !188
  %246 = or i8 %245, %243
  store i8 %246, ptr %244, align 1, !tbaa !188
  br label %247

247:                                              ; preds = %236, %233
  %248 = load i32, ptr %2, align 4, !tbaa !190
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.video_par, ptr %220, i64 0, i32 35
  %252 = load ptr, ptr %251, align 8, !tbaa !148
  %253 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %254 = load i32, ptr %253, align 4, !tbaa !192
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.macroblock, ptr %252, i64 %255, i32 23
  %257 = load i8, ptr %256, align 1, !tbaa !188
  %258 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %259 = load i8, ptr %258, align 1, !tbaa !188
  %260 = or i8 %259, %257
  store i8 %260, ptr %258, align 1, !tbaa !188
  br label %261

261:                                              ; preds = %227, %247, %250
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %262 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %263 = load i8, ptr %262, align 1, !tbaa !188
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %261
  store i32 0, ptr %208, align 4, !tbaa !95
  br label %266

266:                                              ; preds = %261, %265, %207
  %267 = phi i32 [ 0, %265 ], [ %209, %261 ], [ %209, %207 ]
  %268 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %269 = load i8, ptr %268, align 1, !tbaa !188
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %330

271:                                              ; preds = %266
  store i32 7, ptr %6, align 8, !tbaa !129
  %272 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 57
  %273 = load ptr, ptr %272, align 8, !tbaa !131
  %274 = getelementptr inbounds i8, ptr %15, i64 7
  %275 = load i8, ptr %274, align 1, !tbaa !54
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds %struct.datapartition, ptr %273, i64 %276
  %278 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  store i32 0, ptr %278, align 8, !tbaa !193
  store i32 7, ptr %6, align 8, !tbaa !129
  %279 = load ptr, ptr %277, align 8, !tbaa !133
  %280 = getelementptr inbounds %struct.bit_stream, ptr %279, i64 0, i32 5
  %281 = load i32, ptr %280, align 8, !tbaa !136
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %271
  %284 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %284, align 8, !tbaa !138
  br label %287

285:                                              ; preds = %271
  %286 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %286, align 8, !tbaa !139
  br label %287

287:                                              ; preds = %285, %283
  %288 = getelementptr inbounds %struct.datapartition, ptr %273, i64 %276, i32 2
  %289 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %290 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %291 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  br label %292

292:                                              ; preds = %287, %317
  %293 = phi i32 [ 0, %287 ], [ %319, %317 ]
  %294 = phi ptr [ %53, %287 ], [ %318, %317 ]
  %295 = load ptr, ptr %288, align 8, !tbaa !153
  %296 = call i32 %295(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %277) #15
  %297 = load i32, ptr %289, align 4, !tbaa !154
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %317, label %299

299:                                              ; preds = %292
  %300 = load i32, ptr %290, align 8, !tbaa !194
  %301 = shl nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %294, i64 %302
  %304 = getelementptr inbounds i8, ptr %303, i64 1
  %305 = load i8, ptr %303, align 1, !tbaa !54
  %306 = zext i8 %305 to i64
  %307 = shl nuw nsw i64 %306, 2
  %308 = getelementptr inbounds i8, ptr %303, i64 2
  %309 = load i8, ptr %304, align 1, !tbaa !54
  %310 = zext i8 %309 to i64
  %311 = shl nuw nsw i64 %310, 2
  %312 = load ptr, ptr %291, align 8, !tbaa !62
  %313 = load ptr, ptr %312, align 8, !tbaa !63
  %314 = getelementptr inbounds ptr, ptr %313, i64 %311
  %315 = load ptr, ptr %314, align 8, !tbaa !63
  %316 = getelementptr inbounds i32, ptr %315, i64 %307
  store i32 %297, ptr %316, align 4, !tbaa !53
  br label %317

317:                                              ; preds = %292, %299
  %318 = phi ptr [ %308, %299 ], [ %294, %292 ]
  %319 = add nuw nsw i32 %293, 1
  %320 = icmp ult i32 %293, 16
  %321 = icmp ne i32 %297, 0
  %322 = and i1 %321, %320
  br i1 %322, label %292, label %323, !llvm.loop !202

323:                                              ; preds = %317
  %324 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %325 = load i32, ptr %324, align 4, !tbaa !60
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 46
  %329 = load i32, ptr %328, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %329) #15
  br label %330

330:                                              ; preds = %266, %327, %323, %135, %202, %206, %137
  %331 = phi i32 [ %267, %266 ], [ %267, %327 ], [ %267, %323 ], [ 0, %206 ], [ %86, %202 ], [ %86, %137 ], [ 0, %135 ]
  %332 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 29
  %333 = load i32, ptr %332, align 4, !tbaa !150
  %334 = load ptr, ptr %16, align 8, !tbaa !34
  %335 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %333, ptr %335, align 4, !tbaa !46
  %336 = getelementptr inbounds %struct.video_par, ptr %334, i64 0, i32 67
  %337 = load i32, ptr %336, align 4, !tbaa !58
  %338 = add nsw i32 %337, %333
  %339 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %338, ptr %339, align 8, !tbaa !53
  %340 = load ptr, ptr %0, align 8, !tbaa !42
  %341 = getelementptr inbounds %struct.slice, ptr %340, i64 0, i32 125
  %342 = load ptr, ptr %341, align 8, !tbaa !43
  %343 = getelementptr inbounds %struct.video_par, ptr %334, i64 0, i32 68
  br label %344

344:                                              ; preds = %360, %330
  %345 = phi i64 [ 0, %330 ], [ %364, %360 ]
  %346 = load i32, ptr %343, align 8, !tbaa !47
  %347 = sub nsw i32 0, %346
  %348 = getelementptr inbounds %struct.storable_picture, ptr %342, i64 0, i32 56, i64 %345
  %349 = load i32, ptr %348, align 4, !tbaa !53
  %350 = add nsw i32 %349, %333
  %351 = call i32 @llvm.smax.i32(i32 %350, i32 %347)
  %352 = call i32 @llvm.smin.i32(i32 %351, i32 51)
  %353 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %345
  store i32 %352, ptr %353, align 4, !tbaa !53
  %354 = icmp slt i32 %351, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %344
  %356 = zext nneg i32 %352 to i64
  %357 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !54
  %359 = zext i8 %358 to i32
  br label %360

360:                                              ; preds = %355, %344
  %361 = phi i32 [ %359, %355 ], [ %352, %344 ]
  store i32 %361, ptr %353, align 4, !tbaa !53
  %362 = load i32, ptr %343, align 8, !tbaa !47
  %363 = add nsw i32 %362, %361
  %364 = add nuw nsw i64 %345, 1
  %365 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %364
  store i32 %363, ptr %365, align 4, !tbaa !53
  %366 = icmp eq i64 %345, 0
  br i1 %366, label %344, label %367, !llvm.loop !55

367:                                              ; preds = %360
  %368 = load i32, ptr %339, align 8, !tbaa !53
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.video_par, ptr %334, i64 0, i32 73
  %372 = load i32, ptr %371, align 4, !tbaa !59
  %373 = icmp eq i32 %372, 1
  %374 = zext i1 %373 to i32
  br label %375

375:                                              ; preds = %367, %370
  %376 = phi i32 [ 0, %367 ], [ %374, %370 ]
  %377 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %376, ptr %377, align 4, !tbaa !60
  %378 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 132
  %379 = load ptr, ptr %378, align 8, !tbaa !197
  %380 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 46
  %381 = load i32, ptr %380, align 8, !tbaa !196
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !53
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %379, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !53
  %388 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 133
  %389 = load ptr, ptr %388, align 8, !tbaa !198
  %390 = getelementptr inbounds i32, ptr %389, i64 %385
  %391 = load i32, ptr %390, align 4, !tbaa !53
  br label %392

392:                                              ; preds = %375, %392
  %393 = phi i64 [ 0, %375 ], [ %394, %392 ]
  %394 = add nuw nsw i64 %393, 1
  %395 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !53
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, ptr %379, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !53
  %400 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %393
  store i32 %399, ptr %400, align 4, !tbaa !53
  %401 = getelementptr inbounds i32, ptr %389, i64 %397
  %402 = load i32, ptr %401, align 4, !tbaa !53
  %403 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %393
  store i32 %402, ptr %403, align 4, !tbaa !53
  %404 = icmp eq i64 %393, 0
  br i1 %404, label %392, label %405, !llvm.loop !203

405:                                              ; preds = %392
  %406 = sext i32 %391 to i64
  %407 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 88, i64 %382, i64 %406
  %408 = sext i32 %391 to i64
  %409 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 89, i64 %382, i64 %408
  %410 = select i1 %20, ptr %407, ptr %409
  %411 = icmp eq i32 %331, 0
  br i1 %411, label %418, label %412

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %414 = load i32, ptr %413, align 4, !tbaa !167
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %412
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0)
  br label %418

417:                                              ; preds = %412
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %410, i32 noundef %387, i32 noundef %331)
  br label %418

418:                                              ; preds = %416, %417, %405
  %419 = icmp sgt i32 %331, 15
  br i1 %419, label %420, label %620

420:                                              ; preds = %418
  %421 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  %422 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 68
  %423 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  %424 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %425 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 57
  %426 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  %427 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  %428 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %429 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %430 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %431 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1
  %432 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  %433 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1, i64 1
  %434 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 1
  %435 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  %436 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1, i64 2
  %437 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 2
  %438 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 3
  %439 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 1, i64 3
  %440 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 3
  %441 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 1
  %442 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 1, i64 1
  %443 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 1, i64 2
  %444 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 1, i64 3
  %445 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 78
  %446 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 77
  br label %447

447:                                              ; preds = %420, %617
  %448 = phi i64 [ 0, %420 ], [ %618, %617 ]
  %449 = lshr exact i64 %448, 1
  %450 = load ptr, ptr %421, align 8, !tbaa !62
  %451 = add nuw nsw i64 %449, 1
  %452 = getelementptr inbounds ptr, ptr %450, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %454 = load ptr, ptr %378, align 8, !tbaa !197
  %455 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %449
  %456 = load i32, ptr %455, align 4, !tbaa !53
  %457 = add nsw i32 %456, 3
  %458 = load i32, ptr %422, align 8, !tbaa !47
  %459 = add nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, ptr %454, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !53
  %463 = load ptr, ptr %388, align 8, !tbaa !198
  %464 = getelementptr inbounds i32, ptr %463, i64 %460
  %465 = load i32, ptr %464, align 4, !tbaa !53
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 89, i64 %451, i64 %466
  %468 = shl nuw nsw i64 %448, 2
  %469 = shl nuw nsw i64 16711680, %468
  %470 = trunc i64 %448 to i32
  br label %471

471:                                              ; preds = %447, %509
  %472 = phi i32 [ 0, %447 ], [ %511, %509 ]
  %473 = phi i32 [ -1, %447 ], [ %510, %509 ]
  store i32 8, ptr %423, align 8, !tbaa !193
  %474 = load i32, ptr %18, align 8, !tbaa !81
  %475 = icmp eq i32 %474, 1
  %476 = select i1 %475, i32 8, i32 13
  store i32 %476, ptr %6, align 8, !tbaa !129
  store i32 %470, ptr %424, align 4, !tbaa !204
  %477 = load ptr, ptr %425, align 8, !tbaa !131
  %478 = zext nneg i32 %476 to i64
  %479 = getelementptr inbounds i8, ptr %15, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !54
  %481 = zext i8 %480 to i64
  %482 = getelementptr inbounds %struct.datapartition, ptr %477, i64 %481
  %483 = load ptr, ptr %482, align 8, !tbaa !133
  %484 = getelementptr inbounds %struct.bit_stream, ptr %483, i64 0, i32 5
  %485 = load i32, ptr %484, align 8, !tbaa !136
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %471
  store ptr @linfo_levrun_c2x2, ptr %426, align 8, !tbaa !138
  br label %489

488:                                              ; preds = %471
  store ptr @readRunLevel_CABAC, ptr %427, align 8, !tbaa !139
  br label %489

489:                                              ; preds = %488, %487
  %490 = getelementptr inbounds %struct.datapartition, ptr %477, i64 %481, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !153
  %492 = call i32 %491(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %482) #15
  %493 = load i32, ptr %428, align 4, !tbaa !154
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %509, label %495

495:                                              ; preds = %489
  %496 = load i64, ptr %429, align 8, !tbaa !61
  %497 = or i64 %496, %469
  store i64 %497, ptr %429, align 8, !tbaa !61
  %498 = load i32, ptr %430, align 8, !tbaa !194
  %499 = add i32 %473, 1
  %500 = add i32 %499, %498
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %501
  %503 = load i8, ptr %502, align 2, !tbaa !54
  %504 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %501, i64 1
  %505 = load i8, ptr %504, align 1, !tbaa !54
  %506 = zext i8 %503 to i64
  %507 = zext i8 %505 to i64
  %508 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 %506, i64 %507
  store i32 %493, ptr %508, align 4, !tbaa !53
  br label %509

509:                                              ; preds = %489, %495
  %510 = phi i32 [ %500, %495 ], [ %473, %489 ]
  %511 = add nuw nsw i32 %472, 1
  %512 = icmp ult i32 %472, 8
  %513 = icmp ne i32 %493, 0
  %514 = and i1 %513, %512
  br i1 %514, label %471, label %515, !llvm.loop !205

515:                                              ; preds = %509
  %516 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 88, i64 %451, i64 %466
  %517 = select i1 %20, ptr %516, ptr %467
  %518 = load i32, ptr %377, align 4, !tbaa !60
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %524, label %520

520:                                              ; preds = %515
  %521 = load ptr, ptr %421, align 8, !tbaa !62
  %522 = getelementptr inbounds ptr, ptr %521, i64 %451
  %523 = load ptr, ptr %522, align 8, !tbaa !63
  br label %601

524:                                              ; preds = %515
  %525 = load i32, ptr %9, align 16, !tbaa !53
  %526 = load i32, ptr %431, align 16, !tbaa !53
  %527 = add nsw i32 %526, %525
  store i32 %527, ptr %10, align 16, !tbaa !53
  %528 = load i32, ptr %432, align 4, !tbaa !53
  %529 = load i32, ptr %433, align 4, !tbaa !53
  %530 = add nsw i32 %529, %528
  store i32 %530, ptr %434, align 4, !tbaa !53
  %531 = load i32, ptr %435, align 8, !tbaa !53
  %532 = load i32, ptr %436, align 8, !tbaa !53
  %533 = add nsw i32 %532, %531
  store i32 %533, ptr %437, align 8, !tbaa !53
  %534 = load i32, ptr %438, align 4, !tbaa !53
  %535 = load i32, ptr %439, align 4, !tbaa !53
  %536 = add nsw i32 %535, %534
  store i32 %536, ptr %440, align 4, !tbaa !53
  %537 = sub nsw i32 %525, %526
  store i32 %537, ptr %441, align 16, !tbaa !53
  %538 = sub nsw i32 %528, %529
  store i32 %538, ptr %442, align 4, !tbaa !53
  %539 = sub nsw i32 %531, %532
  store i32 %539, ptr %443, align 8, !tbaa !53
  %540 = sub nsw i32 %534, %535
  store i32 %540, ptr %444, align 4, !tbaa !53
  %541 = load ptr, ptr %453, align 8, !tbaa !63
  %542 = getelementptr inbounds ptr, ptr %453, i64 4
  %543 = load ptr, ptr %542, align 8, !tbaa !63
  %544 = getelementptr inbounds ptr, ptr %453, i64 8
  %545 = load ptr, ptr %544, align 8, !tbaa !63
  %546 = getelementptr inbounds ptr, ptr %453, i64 12
  %547 = load ptr, ptr %546, align 8, !tbaa !63
  br label %551

548:                                              ; preds = %551
  %549 = load i32, ptr %445, align 8, !tbaa !79
  %550 = icmp sgt i32 %549, 0
  br i1 %550, label %576, label %617

551:                                              ; preds = %524, %551
  %552 = phi i64 [ 0, %524 ], [ %574, %551 ]
  %553 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 %552
  %554 = load i32, ptr %553, align 16, !tbaa !53
  %555 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 %552, i64 2
  %556 = load i32, ptr %555, align 8, !tbaa !53
  %557 = add nsw i32 %556, %554
  %558 = sub nsw i32 %554, %556
  %559 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 %552, i64 1
  %560 = load i32, ptr %559, align 4, !tbaa !53
  %561 = getelementptr inbounds [2 x [4 x i32]], ptr %10, i64 0, i64 %552, i64 3
  %562 = load i32, ptr %561, align 4, !tbaa !53
  %563 = sub nsw i32 %560, %562
  %564 = add nsw i32 %562, %560
  %565 = add nsw i32 %564, %557
  %566 = shl nuw nsw i64 %552, 2
  %567 = getelementptr inbounds i32, ptr %541, i64 %566
  store i32 %565, ptr %567, align 4, !tbaa !53
  %568 = add nsw i32 %563, %558
  %569 = getelementptr inbounds i32, ptr %543, i64 %566
  store i32 %568, ptr %569, align 4, !tbaa !53
  %570 = sub nsw i32 %558, %563
  %571 = getelementptr inbounds i32, ptr %545, i64 %566
  store i32 %570, ptr %571, align 4, !tbaa !53
  %572 = sub nsw i32 %557, %564
  %573 = getelementptr inbounds i32, ptr %547, i64 %566
  store i32 %572, ptr %573, align 4, !tbaa !53
  %574 = add nuw nsw i64 %552, 1
  %575 = icmp eq i64 %552, 0
  br i1 %575, label %551, label %548, !llvm.loop !206

576:                                              ; preds = %548, %596
  %577 = phi i64 [ %597, %596 ], [ 0, %548 ]
  %578 = load i32, ptr %446, align 4, !tbaa !77
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %580, label %596

580:                                              ; preds = %576
  %581 = getelementptr inbounds ptr, ptr %453, i64 %577
  %582 = load ptr, ptr %581, align 8, !tbaa !63
  br label %583

583:                                              ; preds = %580, %583
  %584 = phi i64 [ 0, %580 ], [ %592, %583 ]
  %585 = getelementptr inbounds i32, ptr %582, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !53
  %587 = load i32, ptr %517, align 4, !tbaa !53
  %588 = mul nsw i32 %587, %586
  %589 = shl i32 %588, %462
  %590 = add nsw i32 %589, 32
  %591 = ashr i32 %590, 6
  store i32 %591, ptr %585, align 4, !tbaa !53
  %592 = add nuw nsw i64 %584, 4
  %593 = load i32, ptr %446, align 4, !tbaa !77
  %594 = sext i32 %593 to i64
  %595 = icmp slt i64 %592, %594
  br i1 %595, label %583, label %596, !llvm.loop !207

596:                                              ; preds = %583, %576
  %597 = add nuw nsw i64 %577, 4
  %598 = load i32, ptr %445, align 8, !tbaa !79
  %599 = sext i32 %598 to i64
  %600 = icmp slt i64 %597, %599
  br i1 %600, label %576, label %617, !llvm.loop !208

601:                                              ; preds = %520, %614
  %602 = phi i64 [ 0, %520 ], [ %615, %614 ]
  %603 = shl nuw nsw i64 %602, 2
  %604 = getelementptr inbounds ptr, ptr %523, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !63
  br label %606

606:                                              ; preds = %601, %606
  %607 = phi i64 [ 0, %601 ], [ %612, %606 ]
  %608 = getelementptr inbounds [2 x [4 x i32]], ptr %9, i64 0, i64 %607, i64 %602
  %609 = load i32, ptr %608, align 4, !tbaa !53
  %610 = shl nuw nsw i64 %607, 2
  %611 = getelementptr inbounds i32, ptr %605, i64 %610
  store i32 %609, ptr %611, align 4, !tbaa !53
  %612 = add nuw nsw i64 %607, 1
  %613 = icmp eq i64 %607, 0
  br i1 %613, label %606, label %614, !llvm.loop !209

614:                                              ; preds = %606
  %615 = add nuw nsw i64 %602, 1
  %616 = icmp eq i64 %615, 4
  br i1 %616, label %617, label %601, !llvm.loop !210

617:                                              ; preds = %614, %596, %548
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  %618 = add nuw nsw i64 %448, 2
  %619 = icmp eq i64 %448, 0
  br i1 %619, label %447, label %620, !llvm.loop !211

620:                                              ; preds = %617, %418
  %621 = icmp slt i32 %331, 32
  br i1 %621, label %839, label %622

622:                                              ; preds = %620
  %623 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  store i32 7, ptr %623, align 8, !tbaa !193
  %624 = load i32, ptr %18, align 8, !tbaa !81
  %625 = icmp eq i32 %624, 0
  %626 = select i1 %625, i32 15, i32 10
  store i32 %626, ptr %6, align 8, !tbaa !129
  %627 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 57
  %628 = load ptr, ptr %627, align 8, !tbaa !131
  %629 = zext nneg i32 %626 to i64
  %630 = getelementptr inbounds i8, ptr %15, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !54
  %632 = zext i8 %631 to i64
  %633 = getelementptr inbounds %struct.datapartition, ptr %628, i64 %632
  %634 = load ptr, ptr %633, align 8, !tbaa !133
  %635 = getelementptr inbounds %struct.bit_stream, ptr %634, i64 0, i32 5
  %636 = load i32, ptr %635, align 8, !tbaa !136
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %640, label %638

638:                                              ; preds = %622
  %639 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %639, align 8, !tbaa !138
  br label %642

640:                                              ; preds = %622
  %641 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %641, align 8, !tbaa !139
  br label %642

642:                                              ; preds = %640, %638
  %643 = load i32, ptr %377, align 4, !tbaa !60
  %644 = icmp eq i32 %643, 0
  %645 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 74
  %646 = load i32, ptr %645, align 8, !tbaa !212
  %647 = icmp sgt i32 %646, 0
  br i1 %644, label %661, label %648

648:                                              ; preds = %642
  br i1 %647, label %649, label %839

649:                                              ; preds = %648
  %650 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 75
  %651 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %652 = sext i32 %25 to i64
  %653 = select i1 %34, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %654 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %655 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %656 = getelementptr inbounds %struct.datapartition, ptr %628, i64 %632, i32 2
  %657 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %658 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %659 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %660 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  br label %765

661:                                              ; preds = %642
  br i1 %647, label %662, label %839

662:                                              ; preds = %661
  %663 = getelementptr inbounds %struct.video_par, ptr %17, i64 0, i32 75
  %664 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %665 = sext i32 %25 to i64
  %666 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %667 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %668 = select i1 %34, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %669 = getelementptr inbounds %struct.datapartition, ptr %628, i64 %632, i32 2
  %670 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %671 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %672 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %673 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 80
  br label %674

674:                                              ; preds = %662, %760
  %675 = phi i64 [ 0, %662 ], [ %761, %760 ]
  %676 = load i32, ptr %663, align 4, !tbaa !213
  %677 = sext i32 %676 to i64
  %678 = icmp sge i64 %675, %677
  %679 = zext i1 %678 to i32
  store i32 %679, ptr %664, align 4, !tbaa !204
  %680 = select i1 %678, i64 2, i64 1
  %681 = zext i1 %678 to i64
  %682 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %681
  %683 = load i32, ptr %682, align 4, !tbaa !53
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 88, i64 %680, i64 %684
  %686 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 89, i64 %680, i64 %684
  %687 = select i1 %20, ptr %685, ptr %686
  %688 = zext i1 %678 to i64
  %689 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %688
  %690 = select i1 %678, i64 2, i64 1
  br label %691

691:                                              ; preds = %674, %757
  %692 = phi i64 [ 0, %674 ], [ %758, %757 ]
  %693 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %665, i64 %675, i64 %692
  %694 = load i8, ptr %693, align 1, !tbaa !54
  %695 = zext i8 %694 to i64
  %696 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %665, i64 %675, i64 %692
  %697 = load i8, ptr %696, align 1, !tbaa !54
  %698 = zext i8 %697 to i64
  %699 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %665, i64 %675, i64 %692
  %700 = load i8, ptr %699, align 1, !tbaa !54
  %701 = zext i8 %700 to i32
  store i32 %701, ptr %666, align 8, !tbaa !141
  %702 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %665, i64 %675, i64 %692
  %703 = load i8, ptr %702, align 1, !tbaa !54
  %704 = zext i8 %703 to i32
  store i32 %704, ptr %667, align 4, !tbaa !142
  %705 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %675, i64 %692
  %706 = shl nuw nsw i64 %698, 2
  %707 = shl nuw nsw i64 %695, 2
  br label %708

708:                                              ; preds = %691, %751
  %709 = phi i32 [ 0, %691 ], [ %753, %751 ]
  %710 = phi ptr [ %668, %691 ], [ %752, %751 ]
  %711 = load ptr, ptr %669, align 8, !tbaa !153
  %712 = call i32 %711(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %633) #15
  %713 = load i32, ptr %670, align 4, !tbaa !154
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %751, label %715

715:                                              ; preds = %708
  %716 = load i8, ptr %705, align 1, !tbaa !54
  %717 = icmp ugt i8 %716, 63
  br i1 %717, label %722, label %718

718:                                              ; preds = %715
  %719 = zext nneg i8 %716 to i64
  %720 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %719
  %721 = load i64, ptr %720, align 8, !tbaa !61
  br label %722

722:                                              ; preds = %715, %718
  %723 = phi i64 [ %721, %718 ], [ 0, %715 ]
  %724 = load i64, ptr %671, align 8, !tbaa !61
  %725 = or i64 %724, %723
  store i64 %725, ptr %671, align 8, !tbaa !61
  %726 = load i32, ptr %672, align 8, !tbaa !194
  %727 = shl i32 %726, 1
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i8, ptr %710, i64 %728
  %730 = getelementptr inbounds i8, ptr %729, i64 1
  %731 = load i8, ptr %729, align 1, !tbaa !54
  %732 = zext i8 %731 to i64
  %733 = getelementptr inbounds i8, ptr %729, i64 2
  %734 = load i8, ptr %730, align 1, !tbaa !54
  %735 = zext i8 %734 to i64
  %736 = getelementptr inbounds [4 x i32], ptr %687, i64 %735, i64 %732
  %737 = load i32, ptr %736, align 4, !tbaa !53
  %738 = mul nsw i32 %737, %713
  %739 = load i32, ptr %689, align 4, !tbaa !53
  %740 = shl i32 %738, %739
  %741 = add nsw i32 %740, 8
  %742 = ashr i32 %741, 4
  %743 = load ptr, ptr %673, align 8, !tbaa !62
  %744 = getelementptr inbounds ptr, ptr %743, i64 %690
  %745 = load ptr, ptr %744, align 8, !tbaa !63
  %746 = getelementptr ptr, ptr %745, i64 %706
  %747 = getelementptr ptr, ptr %746, i64 %735
  %748 = load ptr, ptr %747, align 8, !tbaa !63
  %749 = getelementptr i32, ptr %748, i64 %707
  %750 = getelementptr i32, ptr %749, i64 %732
  store i32 %742, ptr %750, align 4, !tbaa !53
  br label %751

751:                                              ; preds = %708, %722
  %752 = phi ptr [ %733, %722 ], [ %710, %708 ]
  %753 = add nuw nsw i32 %709, 1
  %754 = icmp ult i32 %709, 15
  %755 = icmp ne i32 %713, 0
  %756 = and i1 %755, %754
  br i1 %756, label %708, label %757, !llvm.loop !214

757:                                              ; preds = %751
  %758 = add nuw nsw i64 %692, 1
  %759 = icmp eq i64 %758, 4
  br i1 %759, label %760, label %691, !llvm.loop !215

760:                                              ; preds = %757
  %761 = add nuw nsw i64 %675, 1
  %762 = load i32, ptr %645, align 8, !tbaa !212
  %763 = sext i32 %762 to i64
  %764 = icmp slt i64 %761, %763
  br i1 %764, label %674, label %839, !llvm.loop !216

765:                                              ; preds = %649, %834
  %766 = phi i64 [ 0, %649 ], [ %835, %834 ]
  %767 = load i32, ptr %650, align 4, !tbaa !213
  %768 = sext i32 %767 to i64
  %769 = icmp sge i64 %766, %768
  %770 = zext i1 %769 to i32
  store i32 %770, ptr %651, align 4, !tbaa !204
  %771 = select i1 %769, i64 2, i64 1
  br label %772

772:                                              ; preds = %765, %831
  %773 = phi i64 [ 0, %765 ], [ %832, %831 ]
  %774 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %652, i64 %766, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !54
  %776 = zext i8 %775 to i64
  %777 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %652, i64 %766, i64 %773
  %778 = load i8, ptr %777, align 1, !tbaa !54
  %779 = zext i8 %778 to i64
  %780 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %652, i64 %766, i64 %773
  %781 = load i8, ptr %780, align 1, !tbaa !54
  %782 = zext i8 %781 to i32
  store i32 %782, ptr %654, align 8, !tbaa !141
  %783 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %652, i64 %766, i64 %773
  %784 = load i8, ptr %783, align 1, !tbaa !54
  %785 = zext i8 %784 to i32
  store i32 %785, ptr %655, align 4, !tbaa !142
  %786 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %766, i64 %773
  %787 = shl nuw nsw i64 %779, 2
  %788 = shl nuw nsw i64 %776, 2
  br label %789

789:                                              ; preds = %772, %825
  %790 = phi i32 [ 0, %772 ], [ %827, %825 ]
  %791 = phi ptr [ %653, %772 ], [ %826, %825 ]
  %792 = load ptr, ptr %656, align 8, !tbaa !153
  %793 = call i32 %792(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %633) #15
  %794 = load i32, ptr %657, align 4, !tbaa !154
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %825, label %796

796:                                              ; preds = %789
  %797 = load i8, ptr %786, align 1, !tbaa !54
  %798 = icmp ugt i8 %797, 63
  br i1 %798, label %803, label %799

799:                                              ; preds = %796
  %800 = zext nneg i8 %797 to i64
  %801 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %800
  %802 = load i64, ptr %801, align 8, !tbaa !61
  br label %803

803:                                              ; preds = %796, %799
  %804 = phi i64 [ %802, %799 ], [ 0, %796 ]
  %805 = load i64, ptr %658, align 8, !tbaa !61
  %806 = or i64 %805, %804
  store i64 %806, ptr %658, align 8, !tbaa !61
  %807 = load i32, ptr %659, align 8, !tbaa !194
  %808 = shl i32 %807, 1
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i8, ptr %791, i64 %809
  %811 = getelementptr inbounds i8, ptr %810, i64 1
  %812 = load i8, ptr %810, align 1, !tbaa !54
  %813 = zext i8 %812 to i64
  %814 = getelementptr inbounds i8, ptr %810, i64 2
  %815 = load i8, ptr %811, align 1, !tbaa !54
  %816 = zext i8 %815 to i64
  %817 = load ptr, ptr %660, align 8, !tbaa !62
  %818 = getelementptr inbounds ptr, ptr %817, i64 %771
  %819 = load ptr, ptr %818, align 8, !tbaa !63
  %820 = getelementptr ptr, ptr %819, i64 %787
  %821 = getelementptr ptr, ptr %820, i64 %816
  %822 = load ptr, ptr %821, align 8, !tbaa !63
  %823 = getelementptr i32, ptr %822, i64 %788
  %824 = getelementptr i32, ptr %823, i64 %813
  store i32 %794, ptr %824, align 4, !tbaa !53
  br label %825

825:                                              ; preds = %789, %803
  %826 = phi ptr [ %814, %803 ], [ %791, %789 ]
  %827 = add nuw nsw i32 %790, 1
  %828 = icmp ult i32 %790, 15
  %829 = icmp ne i32 %794, 0
  %830 = and i1 %829, %828
  br i1 %830, label %789, label %831, !llvm.loop !217

831:                                              ; preds = %825
  %832 = add nuw nsw i64 %773, 1
  %833 = icmp eq i64 %832, 4
  br i1 %833, label %834, label %772, !llvm.loop !218

834:                                              ; preds = %831
  %835 = add nuw nsw i64 %766, 1
  %836 = load i32, ptr %645, align 8, !tbaa !212
  %837 = sext i32 %836 to i64
  %838 = icmp slt i64 %835, %837
  br i1 %838, label %765, label %839, !llvm.loop !219

839:                                              ; preds = %834, %760, %648, %661, %620
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_400(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %9 = load i32, ptr %8, align 8, !tbaa !128
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = icmp eq i32 %15, 1
  %17 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 33
  %18 = load i32, ptr %17, align 4, !tbaa !186
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !149
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %20, %1
  %25 = phi i1 [ false, %1 ], [ %23, %20 ]
  %26 = select i1 %25, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %28 = load i16, ptr %27, align 8, !tbaa !93
  switch i16 %28, label %29 [
    i16 10, label %180
    i16 14, label %180
    i16 9, label %30
    i16 12, label %30
    i16 13, label %30
  ]

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %24, %24, %24, %29
  %31 = phi i32 [ 11, %29 ], [ 6, %24 ], [ 6, %24 ], [ 6, %24 ]
  store i32 %31, ptr %6, align 8, !tbaa !129
  %32 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %11, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !54
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.datapartition, ptr %33, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  %40 = getelementptr inbounds %struct.bit_stream, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !136
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %30
  switch i16 %28, label %46 [
    i16 9, label %44
    i16 12, label %44
    i16 13, label %44
  ]

44:                                               ; preds = %43, %43, %43
  %45 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 120
  br label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 121
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %50, ptr %51, align 8, !tbaa !138
  br label %54

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %53, align 8, !tbaa !139
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.datapartition, ptr %33, i64 %37, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  %57 = call i32 %56(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %38) #15
  %58 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !154
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %59, ptr %60, align 4, !tbaa !95
  %61 = load i16, ptr %27, align 8, !tbaa !93
  %62 = add i16 %61, -1
  %63 = icmp ult i16 %62, 3
  br i1 %63, label %80, label %64

64:                                               ; preds = %54
  %65 = icmp eq i16 %61, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 33
  %68 = load i32, ptr %67, align 4, !tbaa !97
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !123
  %73 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %72, i64 0, i32 32
  %74 = load i32, ptr %73, align 4, !tbaa !163
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70, %66, %64
  %77 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %78 = load i32, ptr %77, align 8, !tbaa !162
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %54, %76, %70
  switch i16 %61, label %81 [
    i16 13, label %108
    i16 9, label %108
  ]

81:                                               ; preds = %80
  %82 = and i32 %59, 15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 9
  %86 = load i32, ptr %85, align 4, !tbaa !166
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %84
  store i32 0, ptr %6, align 8, !tbaa !129
  %89 = load ptr, ptr %32, align 8, !tbaa !131
  %90 = load i8, ptr %11, align 4, !tbaa !54
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds %struct.datapartition, ptr %89, i64 %91
  %93 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %93, align 8, !tbaa !139
  %94 = load ptr, ptr %92, align 8, !tbaa !133
  %95 = getelementptr inbounds %struct.bit_stream, ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !136
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %99, align 4, !tbaa !157
  %100 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %94) #15
  br label %105

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.datapartition, ptr %89, i64 %91, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !153
  %104 = call i32 %103(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %92) #15
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, ptr %58, align 4, !tbaa !154
  %107 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %106, ptr %107, align 4, !tbaa !167
  br label %108

108:                                              ; preds = %81, %80, %80, %76, %105, %84
  %109 = icmp eq i32 %59, 0
  br i1 %109, label %303, label %110

110:                                              ; preds = %108
  %111 = load i32, ptr %14, align 8, !tbaa !81
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %113)
  %114 = load i32, ptr %8, align 8, !tbaa !128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %303, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %14, align 8, !tbaa !81
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 75
  %121 = load i32, ptr %120, align 4, !tbaa !187
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %124, align 1, !tbaa !188
  br label %125

125:                                              ; preds = %123, %119, %116
  br i1 %16, label %126, label %133

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 74
  %128 = load i32, ptr %127, align 8, !tbaa !170
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %131, align 2, !tbaa !156
  %132 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %132, align 1, !tbaa !188
  br label %133

133:                                              ; preds = %130, %126, %125
  %134 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %135 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 160
  %136 = load ptr, ptr %135, align 8, !tbaa !189
  %137 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 81, i64 1
  call void %136(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %137, ptr noundef nonnull %5) #15
  %138 = load ptr, ptr %135, align 8, !tbaa !189
  call void %138(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %137, ptr noundef nonnull %4) #15
  %139 = load i32, ptr %14, align 8, !tbaa !81
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !111
  %144 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %143, i64 0, i32 30
  %145 = load i32, ptr %144, align 4, !tbaa !168
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %141, %133
  %148 = load i32, ptr %5, align 4, !tbaa !190
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 35
  %152 = load ptr, ptr %151, align 8, !tbaa !148
  %153 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !192
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.macroblock, ptr %152, i64 %155, i32 23
  %157 = load i8, ptr %156, align 1, !tbaa !188
  %158 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !188
  %160 = or i8 %159, %157
  store i8 %160, ptr %158, align 1, !tbaa !188
  br label %161

161:                                              ; preds = %150, %147
  %162 = load i32, ptr %4, align 4, !tbaa !190
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.video_par, ptr %134, i64 0, i32 35
  %166 = load ptr, ptr %165, align 8, !tbaa !148
  %167 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !192
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.macroblock, ptr %166, i64 %169, i32 23
  %171 = load i8, ptr %170, align 1, !tbaa !188
  %172 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %173 = load i8, ptr %172, align 1, !tbaa !188
  %174 = or i8 %173, %171
  store i8 %174, ptr %172, align 1, !tbaa !188
  br label %175

175:                                              ; preds = %141, %161, %164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %176 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %177 = load i8, ptr %176, align 1, !tbaa !188
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %303, label %179

179:                                              ; preds = %175
  store i32 0, ptr %60, align 4, !tbaa !95
  br label %303

180:                                              ; preds = %24, %24
  %181 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %182 = load i32, ptr %181, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef 17)
  %183 = load i32, ptr %8, align 8, !tbaa !128
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %239, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 74
  %187 = load i32, ptr %186, align 8, !tbaa !170
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %190, align 2, !tbaa !156
  %191 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %191, align 1, !tbaa !188
  br label %192

192:                                              ; preds = %189, %185
  %193 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %194 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 160
  %195 = load ptr, ptr %194, align 8, !tbaa !189
  %196 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 81, i64 1
  call void %195(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %196, ptr noundef nonnull %3) #15
  %197 = load ptr, ptr %194, align 8, !tbaa !189
  call void %197(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %196, ptr noundef nonnull %2) #15
  %198 = load i32, ptr %14, align 8, !tbaa !81
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !111
  %203 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %202, i64 0, i32 30
  %204 = load i32, ptr %203, align 4, !tbaa !168
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %200, %192
  %207 = load i32, ptr %3, align 4, !tbaa !190
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 35
  %211 = load ptr, ptr %210, align 8, !tbaa !148
  %212 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %213 = load i32, ptr %212, align 4, !tbaa !192
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.macroblock, ptr %211, i64 %214, i32 23
  %216 = load i8, ptr %215, align 1, !tbaa !188
  %217 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %218 = load i8, ptr %217, align 1, !tbaa !188
  %219 = or i8 %218, %216
  store i8 %219, ptr %217, align 1, !tbaa !188
  br label %220

220:                                              ; preds = %209, %206
  %221 = load i32, ptr %2, align 4, !tbaa !190
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.video_par, ptr %193, i64 0, i32 35
  %225 = load ptr, ptr %224, align 8, !tbaa !148
  %226 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !192
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.macroblock, ptr %225, i64 %228, i32 23
  %230 = load i8, ptr %229, align 1, !tbaa !188
  %231 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %232 = load i8, ptr %231, align 1, !tbaa !188
  %233 = or i8 %232, %230
  store i8 %233, ptr %231, align 1, !tbaa !188
  br label %234

234:                                              ; preds = %200, %220, %223
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %235 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %236 = load i8, ptr %235, align 1, !tbaa !188
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store i32 0, ptr %181, align 4, !tbaa !95
  br label %239

239:                                              ; preds = %234, %238, %180
  %240 = phi i32 [ 0, %238 ], [ %182, %234 ], [ %182, %180 ]
  %241 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %242 = load i8, ptr %241, align 1, !tbaa !188
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %303

244:                                              ; preds = %239
  store i32 7, ptr %6, align 8, !tbaa !129
  %245 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 57
  %246 = load ptr, ptr %245, align 8, !tbaa !131
  %247 = getelementptr inbounds i8, ptr %11, i64 7
  %248 = load i8, ptr %247, align 1, !tbaa !54
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds %struct.datapartition, ptr %246, i64 %249
  %251 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  store i32 0, ptr %251, align 8, !tbaa !193
  store i32 7, ptr %6, align 8, !tbaa !129
  %252 = load ptr, ptr %250, align 8, !tbaa !133
  %253 = getelementptr inbounds %struct.bit_stream, ptr %252, i64 0, i32 5
  %254 = load i32, ptr %253, align 8, !tbaa !136
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %244
  %257 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %257, align 8, !tbaa !138
  br label %260

258:                                              ; preds = %244
  %259 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %259, align 8, !tbaa !139
  br label %260

260:                                              ; preds = %258, %256
  %261 = getelementptr inbounds %struct.datapartition, ptr %246, i64 %249, i32 2
  %262 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %263 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %264 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  br label %265

265:                                              ; preds = %260, %290
  %266 = phi ptr [ %26, %260 ], [ %291, %290 ]
  %267 = phi i32 [ 0, %260 ], [ %292, %290 ]
  %268 = load ptr, ptr %261, align 8, !tbaa !153
  %269 = call i32 %268(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %250) #15
  %270 = load i32, ptr %262, align 4, !tbaa !154
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %290, label %272

272:                                              ; preds = %265
  %273 = load i32, ptr %263, align 8, !tbaa !194
  %274 = shl nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %266, i64 %275
  %277 = getelementptr inbounds i8, ptr %276, i64 1
  %278 = load i8, ptr %276, align 1, !tbaa !54
  %279 = zext i8 %278 to i64
  %280 = shl nuw nsw i64 %279, 2
  %281 = getelementptr inbounds i8, ptr %276, i64 2
  %282 = load i8, ptr %277, align 1, !tbaa !54
  %283 = zext i8 %282 to i64
  %284 = shl nuw nsw i64 %283, 2
  %285 = load ptr, ptr %264, align 8, !tbaa !62
  %286 = load ptr, ptr %285, align 8, !tbaa !63
  %287 = getelementptr inbounds ptr, ptr %286, i64 %284
  %288 = load ptr, ptr %287, align 8, !tbaa !63
  %289 = getelementptr inbounds i32, ptr %288, i64 %280
  store i32 %270, ptr %289, align 4, !tbaa !53
  br label %290

290:                                              ; preds = %265, %272
  %291 = phi ptr [ %281, %272 ], [ %266, %265 ]
  %292 = add nuw nsw i32 %267, 1
  %293 = icmp ult i32 %267, 16
  %294 = icmp ne i32 %270, 0
  %295 = and i1 %294, %293
  br i1 %295, label %265, label %296, !llvm.loop !220

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %298 = load i32, ptr %297, align 4, !tbaa !60
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 46
  %302 = load i32, ptr %301, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %302) #15
  br label %303

303:                                              ; preds = %239, %300, %296, %108, %175, %179, %110
  %304 = phi i32 [ %240, %239 ], [ %240, %300 ], [ %240, %296 ], [ 0, %179 ], [ %59, %175 ], [ %59, %110 ], [ 0, %108 ]
  %305 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 29
  %306 = load i32, ptr %305, align 4, !tbaa !150
  %307 = load ptr, ptr %12, align 8, !tbaa !34
  %308 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %306, ptr %308, align 4, !tbaa !46
  %309 = getelementptr inbounds %struct.video_par, ptr %307, i64 0, i32 67
  %310 = load i32, ptr %309, align 4, !tbaa !58
  %311 = add nsw i32 %310, %306
  %312 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %311, ptr %312, align 8, !tbaa !53
  %313 = load ptr, ptr %0, align 8, !tbaa !42
  %314 = getelementptr inbounds %struct.slice, ptr %313, i64 0, i32 125
  %315 = load ptr, ptr %314, align 8, !tbaa !43
  %316 = getelementptr inbounds %struct.video_par, ptr %307, i64 0, i32 68
  br label %317

317:                                              ; preds = %333, %303
  %318 = phi i64 [ 0, %303 ], [ %337, %333 ]
  %319 = load i32, ptr %316, align 8, !tbaa !47
  %320 = sub nsw i32 0, %319
  %321 = getelementptr inbounds %struct.storable_picture, ptr %315, i64 0, i32 56, i64 %318
  %322 = load i32, ptr %321, align 4, !tbaa !53
  %323 = add nsw i32 %322, %306
  %324 = call i32 @llvm.smax.i32(i32 %323, i32 %320)
  %325 = call i32 @llvm.smin.i32(i32 %324, i32 51)
  %326 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %318
  store i32 %325, ptr %326, align 4, !tbaa !53
  %327 = icmp slt i32 %324, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %317
  %329 = zext nneg i32 %325 to i64
  %330 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !54
  %332 = zext i8 %331 to i32
  br label %333

333:                                              ; preds = %328, %317
  %334 = phi i32 [ %332, %328 ], [ %325, %317 ]
  store i32 %334, ptr %326, align 4, !tbaa !53
  %335 = load i32, ptr %316, align 8, !tbaa !47
  %336 = add nsw i32 %335, %334
  %337 = add nuw nsw i64 %318, 1
  %338 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %337
  store i32 %336, ptr %338, align 4, !tbaa !53
  %339 = icmp eq i64 %318, 0
  br i1 %339, label %317, label %340, !llvm.loop !55

340:                                              ; preds = %333
  %341 = load i32, ptr %312, align 8, !tbaa !53
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.video_par, ptr %307, i64 0, i32 73
  %345 = load i32, ptr %344, align 4, !tbaa !59
  %346 = icmp eq i32 %345, 1
  %347 = zext i1 %346 to i32
  br label %348

348:                                              ; preds = %340, %343
  %349 = phi i32 [ 0, %340 ], [ %347, %343 ]
  %350 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %349, ptr %350, align 4, !tbaa !60
  %351 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 132
  %352 = load ptr, ptr %351, align 8, !tbaa !197
  %353 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 46
  %354 = load i32, ptr %353, align 8, !tbaa !196
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !53
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, ptr %352, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !53
  %361 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 133
  %362 = load ptr, ptr %361, align 8, !tbaa !198
  %363 = getelementptr inbounds i32, ptr %362, i64 %358
  %364 = load i32, ptr %363, align 4, !tbaa !53
  %365 = icmp eq i32 %304, 0
  br i1 %365, label %376, label %366

366:                                              ; preds = %348
  %367 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %368 = load i32, ptr %367, align 4, !tbaa !167
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %366
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0)
  br label %376

371:                                              ; preds = %366
  %372 = sext i32 %364 to i64
  %373 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 88, i64 %355, i64 %372
  %374 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 89, i64 %355, i64 %372
  %375 = select i1 %16, ptr %373, ptr %374
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %375, i32 noundef %360, i32 noundef %304)
  br label %376

376:                                              ; preds = %370, %371, %348
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CABAC_420(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !128
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 22
  %18 = load i32, ptr %17, align 8, !tbaa !221
  switch i32 %18, label %29 [
    i32 3, label %19
    i32 4, label %25
  ]

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %18, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %1, %23
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %27 = load i16, ptr %26, align 8, !tbaa !93
  %28 = icmp eq i16 %27, 12
  br label %29

29:                                               ; preds = %1, %23, %25, %19
  %30 = phi i1 [ true, %19 ], [ false, %23 ], [ %28, %25 ], [ false, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = icmp eq i32 %32, 1
  %34 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 48
  %37 = load i32, ptr %36, align 4, !tbaa !173
  %38 = add nsw i32 %37, -1
  %39 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 33
  %40 = load i32, ptr %39, align 4, !tbaa !186
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %44 = load i32, ptr %43, align 8, !tbaa !149
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %42, %29
  %47 = phi i1 [ false, %29 ], [ %45, %42 ]
  %48 = select i1 %47, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %49 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %50 = load i16, ptr %49, align 8, !tbaa !93
  switch i16 %50, label %51 [
    i16 10, label %202
    i16 14, label %202
    i16 9, label %52
    i16 12, label %52
    i16 13, label %52
  ]

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %46, %46, %46, %51
  %53 = phi i32 [ 11, %51 ], [ 6, %46 ], [ 6, %46 ], [ 6, %46 ]
  store i32 %53, ptr %6, align 8, !tbaa !129
  %54 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %55 = load ptr, ptr %54, align 8, !tbaa !131
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds i8, ptr %14, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !54
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.datapartition, ptr %55, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !133
  %62 = getelementptr inbounds %struct.bit_stream, ptr %61, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !136
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %52
  switch i16 %50, label %68 [
    i16 9, label %66
    i16 12, label %66
    i16 13, label %66
  ]

66:                                               ; preds = %65, %65, %65
  %67 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 120
  br label %70

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 121
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi ptr [ %67, %66 ], [ %69, %68 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %72, ptr %73, align 8, !tbaa !138
  br label %76

74:                                               ; preds = %52
  %75 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @read_CBP_CABAC, ptr %75, align 8, !tbaa !139
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %struct.datapartition, ptr %55, i64 %59, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !153
  %79 = call i32 %78(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %60) #15
  %80 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !154
  %82 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %81, ptr %82, align 4, !tbaa !95
  %83 = load i16, ptr %49, align 8, !tbaa !93
  %84 = add i16 %83, -1
  %85 = icmp ult i16 %84, 3
  br i1 %85, label %102, label %86

86:                                               ; preds = %76
  %87 = icmp eq i16 %83, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 33
  %90 = load i32, ptr %89, align 4, !tbaa !97
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !123
  %95 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %94, i64 0, i32 32
  %96 = load i32, ptr %95, align 4, !tbaa !163
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92, %88, %86
  %99 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %100 = load i32, ptr %99, align 8, !tbaa !162
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %76, %98, %92
  switch i16 %83, label %103 [
    i16 13, label %130
    i16 9, label %130
  ]

103:                                              ; preds = %102
  %104 = and i32 %81, 15
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 9
  %108 = load i32, ptr %107, align 4, !tbaa !166
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %106
  store i32 0, ptr %6, align 8, !tbaa !129
  %111 = load ptr, ptr %54, align 8, !tbaa !131
  %112 = load i8, ptr %14, align 4, !tbaa !54
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds %struct.datapartition, ptr %111, i64 %113
  %115 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %115, align 8, !tbaa !139
  %116 = load ptr, ptr %114, align 8, !tbaa !133
  %117 = getelementptr inbounds %struct.bit_stream, ptr %116, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !136
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %121, align 4, !tbaa !157
  %122 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %116) #15
  br label %127

123:                                              ; preds = %110
  %124 = getelementptr inbounds %struct.datapartition, ptr %111, i64 %113, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !153
  %126 = call i32 %125(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %114) #15
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, ptr %80, align 4, !tbaa !154
  %129 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %128, ptr %129, align 4, !tbaa !167
  br label %130

130:                                              ; preds = %103, %102, %102, %98, %127, %106
  %131 = icmp eq i32 %81, 0
  br i1 %131, label %325, label %132

132:                                              ; preds = %130
  %133 = load i32, ptr %31, align 8, !tbaa !81
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef %135)
  %136 = load i32, ptr %11, align 8, !tbaa !128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %325, label %138

138:                                              ; preds = %132
  %139 = load i32, ptr %31, align 8, !tbaa !81
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 75
  %143 = load i32, ptr %142, align 4, !tbaa !187
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %146, align 1, !tbaa !188
  br label %147

147:                                              ; preds = %145, %141, %138
  br i1 %33, label %148, label %155

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 74
  %150 = load i32, ptr %149, align 8, !tbaa !170
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %153, align 2, !tbaa !156
  %154 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %154, align 1, !tbaa !188
  br label %155

155:                                              ; preds = %152, %148, %147
  %156 = load ptr, ptr %15, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %157 = getelementptr inbounds %struct.video_par, ptr %156, i64 0, i32 160
  %158 = load ptr, ptr %157, align 8, !tbaa !189
  %159 = getelementptr inbounds %struct.video_par, ptr %156, i64 0, i32 81, i64 1
  call void %158(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %159, ptr noundef nonnull %5) #15
  %160 = load ptr, ptr %157, align 8, !tbaa !189
  call void %160(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %159, ptr noundef nonnull %4) #15
  %161 = load i32, ptr %31, align 8, !tbaa !81
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.video_par, ptr %156, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !111
  %166 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %165, i64 0, i32 30
  %167 = load i32, ptr %166, align 4, !tbaa !168
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %163, %155
  %170 = load i32, ptr %5, align 4, !tbaa !190
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.video_par, ptr %156, i64 0, i32 35
  %174 = load ptr, ptr %173, align 8, !tbaa !148
  %175 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !192
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.macroblock, ptr %174, i64 %177, i32 23
  %179 = load i8, ptr %178, align 1, !tbaa !188
  %180 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %181 = load i8, ptr %180, align 1, !tbaa !188
  %182 = or i8 %181, %179
  store i8 %182, ptr %180, align 1, !tbaa !188
  br label %183

183:                                              ; preds = %172, %169
  %184 = load i32, ptr %4, align 4, !tbaa !190
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.video_par, ptr %156, i64 0, i32 35
  %188 = load ptr, ptr %187, align 8, !tbaa !148
  %189 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !192
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.macroblock, ptr %188, i64 %191, i32 23
  %193 = load i8, ptr %192, align 1, !tbaa !188
  %194 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %195 = load i8, ptr %194, align 1, !tbaa !188
  %196 = or i8 %195, %193
  store i8 %196, ptr %194, align 1, !tbaa !188
  br label %197

197:                                              ; preds = %163, %183, %186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %198 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %199 = load i8, ptr %198, align 1, !tbaa !188
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %325, label %201

201:                                              ; preds = %197
  store i32 0, ptr %82, align 4, !tbaa !95
  br label %325

202:                                              ; preds = %46, %46
  %203 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %204 = load i32, ptr %203, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 17)
  %205 = load i32, ptr %11, align 8, !tbaa !128
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %261, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 74
  %209 = load i32, ptr %208, align 8, !tbaa !170
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %212, align 2, !tbaa !156
  %213 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %213, align 1, !tbaa !188
  br label %214

214:                                              ; preds = %211, %207
  %215 = load ptr, ptr %15, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %216 = getelementptr inbounds %struct.video_par, ptr %215, i64 0, i32 160
  %217 = load ptr, ptr %216, align 8, !tbaa !189
  %218 = getelementptr inbounds %struct.video_par, ptr %215, i64 0, i32 81, i64 1
  call void %217(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %218, ptr noundef nonnull %3) #15
  %219 = load ptr, ptr %216, align 8, !tbaa !189
  call void %219(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %218, ptr noundef nonnull %2) #15
  %220 = load i32, ptr %31, align 8, !tbaa !81
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.video_par, ptr %215, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !111
  %225 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %224, i64 0, i32 30
  %226 = load i32, ptr %225, align 4, !tbaa !168
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %256

228:                                              ; preds = %222, %214
  %229 = load i32, ptr %3, align 4, !tbaa !190
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.video_par, ptr %215, i64 0, i32 35
  %233 = load ptr, ptr %232, align 8, !tbaa !148
  %234 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !192
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.macroblock, ptr %233, i64 %236, i32 23
  %238 = load i8, ptr %237, align 1, !tbaa !188
  %239 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %240 = load i8, ptr %239, align 1, !tbaa !188
  %241 = or i8 %240, %238
  store i8 %241, ptr %239, align 1, !tbaa !188
  br label %242

242:                                              ; preds = %231, %228
  %243 = load i32, ptr %2, align 4, !tbaa !190
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %256, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.video_par, ptr %215, i64 0, i32 35
  %247 = load ptr, ptr %246, align 8, !tbaa !148
  %248 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %249 = load i32, ptr %248, align 4, !tbaa !192
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.macroblock, ptr %247, i64 %250, i32 23
  %252 = load i8, ptr %251, align 1, !tbaa !188
  %253 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %254 = load i8, ptr %253, align 1, !tbaa !188
  %255 = or i8 %254, %252
  store i8 %255, ptr %253, align 1, !tbaa !188
  br label %256

256:                                              ; preds = %222, %242, %245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %257 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %258 = load i8, ptr %257, align 1, !tbaa !188
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  store i32 0, ptr %203, align 4, !tbaa !95
  br label %261

261:                                              ; preds = %256, %260, %202
  %262 = phi i32 [ 0, %260 ], [ %204, %256 ], [ %204, %202 ]
  %263 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %264 = load i8, ptr %263, align 1, !tbaa !188
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %325

266:                                              ; preds = %261
  store i32 7, ptr %6, align 8, !tbaa !129
  %267 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %268 = load ptr, ptr %267, align 8, !tbaa !131
  %269 = getelementptr inbounds i8, ptr %14, i64 7
  %270 = load i8, ptr %269, align 1, !tbaa !54
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds %struct.datapartition, ptr %268, i64 %271
  %273 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  store i32 0, ptr %273, align 8, !tbaa !193
  store i32 7, ptr %6, align 8, !tbaa !129
  %274 = load ptr, ptr %272, align 8, !tbaa !133
  %275 = getelementptr inbounds %struct.bit_stream, ptr %274, i64 0, i32 5
  %276 = load i32, ptr %275, align 8, !tbaa !136
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %266
  %279 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %279, align 8, !tbaa !138
  br label %282

280:                                              ; preds = %266
  %281 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %281, align 8, !tbaa !139
  br label %282

282:                                              ; preds = %280, %278
  %283 = getelementptr inbounds %struct.datapartition, ptr %268, i64 %271, i32 2
  %284 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %285 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %286 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  br label %287

287:                                              ; preds = %282, %312
  %288 = phi i32 [ 0, %282 ], [ %314, %312 ]
  %289 = phi ptr [ %48, %282 ], [ %313, %312 ]
  %290 = load ptr, ptr %283, align 8, !tbaa !153
  %291 = call i32 %290(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %272) #15
  %292 = load i32, ptr %284, align 4, !tbaa !154
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %312, label %294

294:                                              ; preds = %287
  %295 = load i32, ptr %285, align 8, !tbaa !194
  %296 = shl nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, ptr %289, i64 %297
  %299 = getelementptr inbounds i8, ptr %298, i64 1
  %300 = load i8, ptr %298, align 1, !tbaa !54
  %301 = zext i8 %300 to i64
  %302 = shl nuw nsw i64 %301, 2
  %303 = getelementptr inbounds i8, ptr %298, i64 2
  %304 = load i8, ptr %299, align 1, !tbaa !54
  %305 = zext i8 %304 to i64
  %306 = shl nuw nsw i64 %305, 2
  %307 = load ptr, ptr %286, align 8, !tbaa !62
  %308 = load ptr, ptr %307, align 8, !tbaa !63
  %309 = getelementptr inbounds ptr, ptr %308, i64 %306
  %310 = load ptr, ptr %309, align 8, !tbaa !63
  %311 = getelementptr inbounds i32, ptr %310, i64 %302
  store i32 %292, ptr %311, align 4, !tbaa !53
  br label %312

312:                                              ; preds = %287, %294
  %313 = phi ptr [ %303, %294 ], [ %289, %287 ]
  %314 = add nuw nsw i32 %288, 1
  %315 = icmp ult i32 %288, 16
  %316 = icmp ne i32 %292, 0
  %317 = and i1 %315, %316
  br i1 %317, label %287, label %318, !llvm.loop !222

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %320 = load i32, ptr %319, align 4, !tbaa !60
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 46
  %324 = load i32, ptr %323, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %324) #15
  br label %325

325:                                              ; preds = %318, %322, %130, %197, %201, %132, %261
  %326 = phi i32 [ %262, %261 ], [ 0, %201 ], [ %81, %197 ], [ %81, %132 ], [ 0, %130 ], [ %262, %322 ], [ %262, %318 ]
  %327 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 29
  %328 = load i32, ptr %327, align 4, !tbaa !150
  %329 = load ptr, ptr %15, align 8, !tbaa !34
  %330 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %328, ptr %330, align 4, !tbaa !46
  %331 = getelementptr inbounds %struct.video_par, ptr %329, i64 0, i32 67
  %332 = load i32, ptr %331, align 4, !tbaa !58
  %333 = add nsw i32 %332, %328
  %334 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %333, ptr %334, align 8, !tbaa !53
  %335 = load ptr, ptr %0, align 8, !tbaa !42
  %336 = getelementptr inbounds %struct.slice, ptr %335, i64 0, i32 125
  %337 = load ptr, ptr %336, align 8, !tbaa !43
  %338 = getelementptr inbounds %struct.video_par, ptr %329, i64 0, i32 68
  br label %339

339:                                              ; preds = %355, %325
  %340 = phi i64 [ 0, %325 ], [ %359, %355 ]
  %341 = load i32, ptr %338, align 8, !tbaa !47
  %342 = sub nsw i32 0, %341
  %343 = getelementptr inbounds %struct.storable_picture, ptr %337, i64 0, i32 56, i64 %340
  %344 = load i32, ptr %343, align 4, !tbaa !53
  %345 = add nsw i32 %344, %328
  %346 = call i32 @llvm.smax.i32(i32 %345, i32 %342)
  %347 = call i32 @llvm.smin.i32(i32 %346, i32 51)
  %348 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %340
  store i32 %347, ptr %348, align 4, !tbaa !53
  %349 = icmp slt i32 %346, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %339
  %351 = zext nneg i32 %347 to i64
  %352 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !54
  %354 = zext i8 %353 to i32
  br label %355

355:                                              ; preds = %350, %339
  %356 = phi i32 [ %354, %350 ], [ %347, %339 ]
  store i32 %356, ptr %348, align 4, !tbaa !53
  %357 = load i32, ptr %338, align 8, !tbaa !47
  %358 = add nsw i32 %357, %356
  %359 = add nuw nsw i64 %340, 1
  %360 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %359
  store i32 %358, ptr %360, align 4, !tbaa !53
  %361 = icmp eq i64 %340, 0
  br i1 %361, label %339, label %362, !llvm.loop !55

362:                                              ; preds = %355
  %363 = load i32, ptr %334, align 8, !tbaa !53
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.video_par, ptr %329, i64 0, i32 73
  %367 = load i32, ptr %366, align 4, !tbaa !59
  %368 = icmp eq i32 %367, 1
  %369 = zext i1 %368 to i32
  br label %370

370:                                              ; preds = %362, %365
  %371 = phi i32 [ 0, %362 ], [ %369, %365 ]
  %372 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %371, ptr %372, align 4, !tbaa !60
  %373 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 132
  %374 = load ptr, ptr %373, align 8, !tbaa !197
  %375 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 46
  %376 = load i32, ptr %375, align 8, !tbaa !196
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !53
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, ptr %374, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !53
  %383 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 133
  %384 = load ptr, ptr %383, align 8, !tbaa !198
  %385 = getelementptr inbounds i32, ptr %384, i64 %380
  %386 = load i32, ptr %385, align 4, !tbaa !53
  %387 = icmp eq i32 %326, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %370
  %389 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %390 = load i32, ptr %389, align 4, !tbaa !167
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  call fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0)
  br label %398

393:                                              ; preds = %388
  %394 = sext i32 %386 to i64
  %395 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 88, i64 %377, i64 %394
  %396 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 89, i64 %377, i64 %394
  %397 = select i1 %33, ptr %395, ptr %396
  call fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %397, i32 noundef %382, i32 noundef %326)
  br label %398

398:                                              ; preds = %392, %393, %370
  %399 = load ptr, ptr %373, align 8, !tbaa !197
  %400 = load ptr, ptr %383, align 8, !tbaa !198
  br label %401

401:                                              ; preds = %398, %401
  %402 = phi i64 [ 0, %398 ], [ %403, %401 ]
  %403 = add nuw nsw i64 %402, 1
  %404 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !53
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, ptr %399, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !53
  %409 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %402
  store i32 %408, ptr %409, align 4, !tbaa !53
  %410 = getelementptr inbounds i32, ptr %400, i64 %406
  %411 = load i32, ptr %410, align 4, !tbaa !53
  %412 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %402
  store i32 %411, ptr %412, align 4, !tbaa !53
  %413 = icmp eq i64 %402, 0
  br i1 %413, label %401, label %414, !llvm.loop !223

414:                                              ; preds = %401
  %415 = icmp sgt i32 %326, 15
  br i1 %415, label %416, label %540

416:                                              ; preds = %414
  %417 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 82
  %418 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %419 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  %420 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %421 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 76
  %422 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  %423 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  %424 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %425 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %426 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %427 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  %428 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  %429 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  %430 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 3
  %431 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  %432 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 82, i64 1
  %433 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 82, i64 2
  %434 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 82, i64 3
  %435 = select i1 %33, i32 8, i32 13
  %436 = zext nneg i32 %435 to i64
  %437 = getelementptr inbounds i8, ptr %14, i64 %436
  %438 = load i8, ptr %437, align 1, !tbaa !54
  %439 = zext i8 %438 to i64
  br label %440

440:                                              ; preds = %416, %537
  %441 = phi i64 [ 0, %416 ], [ %538, %537 ]
  %442 = lshr exact i64 %441, 1
  %443 = add nuw nsw i64 %442, 1
  %444 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %442
  %445 = load i32, ptr %444, align 4, !tbaa !53
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 88, i64 %443, i64 %446
  %448 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 89, i64 %443, i64 %446
  %449 = select i1 %33, ptr %447, ptr %448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %417, i8 0, i64 16, i1 false)
  %450 = trunc i64 %441 to i32
  store i32 %450, ptr %418, align 4, !tbaa !204
  store i32 6, ptr %419, align 8, !tbaa !193
  store i32 %435, ptr %6, align 8, !tbaa !129
  %451 = load ptr, ptr %420, align 8, !tbaa !131
  %452 = getelementptr inbounds %struct.datapartition, ptr %451, i64 %439
  %453 = load ptr, ptr %452, align 8, !tbaa !133
  %454 = getelementptr inbounds %struct.bit_stream, ptr %453, i64 0, i32 5
  %455 = load i32, ptr %454, align 8, !tbaa !136
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %458, label %457

457:                                              ; preds = %440
  store ptr @linfo_levrun_c2x2, ptr %422, align 8, !tbaa !138
  br label %459

458:                                              ; preds = %440
  store ptr @readRunLevel_CABAC, ptr %423, align 8, !tbaa !139
  br label %459

459:                                              ; preds = %458, %457
  %460 = load i32, ptr %421, align 8, !tbaa !224
  %461 = icmp sgt i32 %460, -1
  br i1 %461, label %462, label %490

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.datapartition, ptr %451, i64 %439, i32 2
  %464 = trunc i64 %441 to i32
  %465 = shl i32 %464, 1
  %466 = shl nuw nsw i32 983040, %465
  %467 = zext nneg i32 %466 to i64
  br label %468

468:                                              ; preds = %462, %483
  %469 = phi i32 [ -1, %462 ], [ %484, %483 ]
  %470 = phi i32 [ 0, %462 ], [ %485, %483 ]
  %471 = load ptr, ptr %463, align 8, !tbaa !153
  %472 = call i32 %471(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %452) #15
  %473 = load i32, ptr %424, align 4, !tbaa !154
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %483, label %475

475:                                              ; preds = %468
  %476 = load i64, ptr %425, align 8, !tbaa !61
  %477 = or i64 %476, %467
  store i64 %477, ptr %425, align 8, !tbaa !61
  %478 = load i32, ptr %426, align 8, !tbaa !194
  %479 = add i32 %469, 1
  %480 = add i32 %479, %478
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 82, i64 %481
  store i32 %473, ptr %482, align 4, !tbaa !53
  br label %483

483:                                              ; preds = %468, %475
  %484 = phi i32 [ %480, %475 ], [ %469, %468 ]
  %485 = add nuw nsw i32 %470, 1
  %486 = load i32, ptr %421, align 8, !tbaa !224
  %487 = icmp slt i32 %470, %486
  %488 = icmp ne i32 %473, 0
  %489 = and i1 %488, %487
  br i1 %489, label %468, label %490, !llvm.loop !225

490:                                              ; preds = %483, %459
  br i1 %30, label %494, label %491

491:                                              ; preds = %490
  %492 = load i32, ptr %372, align 4, !tbaa !60
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %494, label %508

494:                                              ; preds = %491, %490
  %495 = load i32, ptr %417, align 8, !tbaa !53
  %496 = load ptr, ptr %431, align 8, !tbaa !62
  %497 = getelementptr ptr, ptr %496, i64 %442
  %498 = getelementptr ptr, ptr %497, i64 1
  %499 = load ptr, ptr %498, align 8, !tbaa !63
  %500 = load ptr, ptr %499, align 8, !tbaa !63
  store i32 %495, ptr %500, align 4, !tbaa !53
  %501 = load i32, ptr %432, align 4, !tbaa !53
  %502 = getelementptr inbounds i32, ptr %500, i64 4
  store i32 %501, ptr %502, align 4, !tbaa !53
  %503 = load i32, ptr %433, align 8, !tbaa !53
  %504 = getelementptr inbounds ptr, ptr %499, i64 4
  %505 = load ptr, ptr %504, align 8, !tbaa !63
  store i32 %503, ptr %505, align 4, !tbaa !53
  %506 = load i32, ptr %434, align 4, !tbaa !53
  %507 = getelementptr inbounds i32, ptr %505, i64 4
  store i32 %506, ptr %507, align 4, !tbaa !53
  br label %537

508:                                              ; preds = %491
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  %509 = load i32, ptr %449, align 4, !tbaa !53
  call void @ihadamard2x2(ptr noundef nonnull %417, ptr noundef nonnull %9) #15
  %510 = load i32, ptr %9, align 16, !tbaa !53
  %511 = mul nsw i32 %510, %509
  %512 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %442
  %513 = load i32, ptr %512, align 4, !tbaa !53
  %514 = shl i32 %511, %513
  %515 = ashr i32 %514, 5
  %516 = load ptr, ptr %427, align 8, !tbaa !62
  %517 = getelementptr ptr, ptr %516, i64 %442
  %518 = getelementptr ptr, ptr %517, i64 1
  %519 = load ptr, ptr %518, align 8, !tbaa !63
  %520 = load ptr, ptr %519, align 8, !tbaa !63
  store i32 %515, ptr %520, align 4, !tbaa !53
  %521 = load i32, ptr %428, align 4, !tbaa !53
  %522 = mul nsw i32 %521, %509
  %523 = shl i32 %522, %513
  %524 = ashr i32 %523, 5
  %525 = getelementptr inbounds i32, ptr %520, i64 4
  store i32 %524, ptr %525, align 4, !tbaa !53
  %526 = load i32, ptr %429, align 8, !tbaa !53
  %527 = mul nsw i32 %526, %509
  %528 = shl i32 %527, %513
  %529 = ashr i32 %528, 5
  %530 = getelementptr inbounds ptr, ptr %519, i64 4
  %531 = load ptr, ptr %530, align 8, !tbaa !63
  store i32 %529, ptr %531, align 4, !tbaa !53
  %532 = load i32, ptr %430, align 4, !tbaa !53
  %533 = mul nsw i32 %532, %509
  %534 = shl i32 %533, %513
  %535 = ashr i32 %534, 5
  %536 = getelementptr inbounds i32, ptr %531, i64 4
  store i32 %535, ptr %536, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %537

537:                                              ; preds = %494, %508
  %538 = add nuw nsw i64 %441, 2
  %539 = icmp eq i64 %441, 0
  br i1 %539, label %440, label %540, !llvm.loop !226

540:                                              ; preds = %537, %414
  %541 = icmp sgt i32 %326, 31
  br i1 %541, label %542, label %759

542:                                              ; preds = %540
  %543 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 6
  store i32 7, ptr %543, align 8, !tbaa !193
  %544 = load i32, ptr %31, align 8, !tbaa !81
  %545 = icmp eq i32 %544, 0
  %546 = select i1 %545, i32 15, i32 10
  store i32 %546, ptr %6, align 8, !tbaa !129
  %547 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %548 = load ptr, ptr %547, align 8, !tbaa !131
  %549 = zext nneg i32 %546 to i64
  %550 = getelementptr inbounds i8, ptr %14, i64 %549
  %551 = load i8, ptr %550, align 1, !tbaa !54
  %552 = zext i8 %551 to i64
  %553 = getelementptr inbounds %struct.datapartition, ptr %548, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !133
  %555 = getelementptr inbounds %struct.bit_stream, ptr %554, i64 0, i32 5
  %556 = load i32, ptr %555, align 8, !tbaa !136
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %542
  %559 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr @linfo_levrun_inter, ptr %559, align 8, !tbaa !138
  br label %562

560:                                              ; preds = %542
  %561 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %561, align 8, !tbaa !139
  br label %562

562:                                              ; preds = %560, %558
  %563 = load i32, ptr %372, align 4, !tbaa !60
  %564 = icmp eq i32 %563, 0
  %565 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 74
  %566 = load i32, ptr %565, align 8, !tbaa !212
  %567 = icmp sgt i32 %566, 0
  br i1 %564, label %581, label %568

568:                                              ; preds = %562
  br i1 %567, label %569, label %759

569:                                              ; preds = %568
  %570 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 75
  %571 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %572 = sext i32 %38 to i64
  %573 = select i1 %47, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %574 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %575 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %576 = getelementptr inbounds %struct.datapartition, ptr %548, i64 %552, i32 2
  %577 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %578 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %579 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %580 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  br label %685

581:                                              ; preds = %562
  br i1 %567, label %582, label %759

582:                                              ; preds = %581
  %583 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 75
  %584 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %585 = sext i32 %38 to i64
  %586 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %587 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %588 = select i1 %47, ptr getelementptr inbounds ([16 x [2 x i8]], ptr @SNGL_SCAN, i64 0, i64 1), ptr getelementptr inbounds ([16 x [2 x i8]], ptr @FIELD_SCAN, i64 0, i64 1)
  %589 = getelementptr inbounds %struct.datapartition, ptr %548, i64 %552, i32 2
  %590 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %591 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %592 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 2
  %593 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  br label %594

594:                                              ; preds = %582, %680
  %595 = phi i64 [ 0, %582 ], [ %681, %680 ]
  %596 = load i32, ptr %583, align 4, !tbaa !213
  %597 = sext i32 %596 to i64
  %598 = icmp sge i64 %595, %597
  %599 = zext i1 %598 to i32
  store i32 %599, ptr %584, align 4, !tbaa !204
  %600 = select i1 %598, i64 2, i64 1
  %601 = zext i1 %598 to i64
  %602 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !53
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 88, i64 %600, i64 %604
  %606 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 89, i64 %600, i64 %604
  %607 = select i1 %33, ptr %605, ptr %606
  %608 = zext i1 %598 to i64
  %609 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 %608
  %610 = select i1 %598, i64 2, i64 1
  br label %611

611:                                              ; preds = %594, %677
  %612 = phi i64 [ 0, %594 ], [ %678, %677 ]
  %613 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %585, i64 %595, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !54
  %615 = zext i8 %614 to i64
  %616 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %585, i64 %595, i64 %612
  %617 = load i8, ptr %616, align 1, !tbaa !54
  %618 = zext i8 %617 to i64
  %619 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %585, i64 %595, i64 %612
  %620 = load i8, ptr %619, align 1, !tbaa !54
  %621 = zext i8 %620 to i32
  store i32 %621, ptr %586, align 8, !tbaa !141
  %622 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %585, i64 %595, i64 %612
  %623 = load i8, ptr %622, align 1, !tbaa !54
  %624 = zext i8 %623 to i32
  store i32 %624, ptr %587, align 4, !tbaa !142
  %625 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %595, i64 %612
  %626 = shl nuw nsw i64 %618, 2
  %627 = shl nuw nsw i64 %615, 2
  br label %628

628:                                              ; preds = %611, %671
  %629 = phi i32 [ 0, %611 ], [ %673, %671 ]
  %630 = phi ptr [ %588, %611 ], [ %672, %671 ]
  %631 = load ptr, ptr %589, align 8, !tbaa !153
  %632 = call i32 %631(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %553) #15
  %633 = load i32, ptr %590, align 4, !tbaa !154
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %671, label %635

635:                                              ; preds = %628
  %636 = load i8, ptr %625, align 1, !tbaa !54
  %637 = icmp ugt i8 %636, 63
  br i1 %637, label %642, label %638

638:                                              ; preds = %635
  %639 = zext nneg i8 %636 to i64
  %640 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %639
  %641 = load i64, ptr %640, align 8, !tbaa !61
  br label %642

642:                                              ; preds = %635, %638
  %643 = phi i64 [ %641, %638 ], [ 0, %635 ]
  %644 = load i64, ptr %591, align 8, !tbaa !61
  %645 = or i64 %644, %643
  store i64 %645, ptr %591, align 8, !tbaa !61
  %646 = load i32, ptr %592, align 8, !tbaa !194
  %647 = shl i32 %646, 1
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, ptr %630, i64 %648
  %650 = getelementptr inbounds i8, ptr %649, i64 1
  %651 = load i8, ptr %649, align 1, !tbaa !54
  %652 = zext i8 %651 to i64
  %653 = getelementptr inbounds i8, ptr %649, i64 2
  %654 = load i8, ptr %650, align 1, !tbaa !54
  %655 = zext i8 %654 to i64
  %656 = getelementptr inbounds [4 x i32], ptr %607, i64 %655, i64 %652
  %657 = load i32, ptr %656, align 4, !tbaa !53
  %658 = mul nsw i32 %657, %633
  %659 = load i32, ptr %609, align 4, !tbaa !53
  %660 = shl i32 %658, %659
  %661 = add nsw i32 %660, 8
  %662 = ashr i32 %661, 4
  %663 = load ptr, ptr %593, align 8, !tbaa !62
  %664 = getelementptr inbounds ptr, ptr %663, i64 %610
  %665 = load ptr, ptr %664, align 8, !tbaa !63
  %666 = getelementptr ptr, ptr %665, i64 %626
  %667 = getelementptr ptr, ptr %666, i64 %655
  %668 = load ptr, ptr %667, align 8, !tbaa !63
  %669 = getelementptr i32, ptr %668, i64 %627
  %670 = getelementptr i32, ptr %669, i64 %652
  store i32 %662, ptr %670, align 4, !tbaa !53
  br label %671

671:                                              ; preds = %628, %642
  %672 = phi ptr [ %653, %642 ], [ %630, %628 ]
  %673 = add nuw nsw i32 %629, 1
  %674 = icmp ult i32 %629, 15
  %675 = icmp ne i32 %633, 0
  %676 = and i1 %675, %674
  br i1 %676, label %628, label %677, !llvm.loop !227

677:                                              ; preds = %671
  %678 = add nuw nsw i64 %612, 1
  %679 = icmp eq i64 %678, 4
  br i1 %679, label %680, label %611, !llvm.loop !228

680:                                              ; preds = %677
  %681 = add nuw nsw i64 %595, 1
  %682 = load i32, ptr %565, align 8, !tbaa !212
  %683 = sext i32 %682 to i64
  %684 = icmp slt i64 %681, %683
  br i1 %684, label %594, label %759, !llvm.loop !229

685:                                              ; preds = %569, %754
  %686 = phi i64 [ 0, %569 ], [ %755, %754 ]
  %687 = load i32, ptr %570, align 4, !tbaa !213
  %688 = sext i32 %687 to i64
  %689 = icmp sge i64 %686, %688
  %690 = zext i1 %689 to i32
  store i32 %690, ptr %571, align 4, !tbaa !204
  %691 = select i1 %689, i64 2, i64 1
  br label %692

692:                                              ; preds = %685, %751
  %693 = phi i64 [ 0, %685 ], [ %752, %751 ]
  %694 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %572, i64 %686, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !54
  %696 = zext i8 %695 to i64
  %697 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %572, i64 %686, i64 %693
  %698 = load i8, ptr %697, align 1, !tbaa !54
  %699 = zext i8 %698 to i64
  %700 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %572, i64 %686, i64 %693
  %701 = load i8, ptr %700, align 1, !tbaa !54
  %702 = zext i8 %701 to i32
  store i32 %702, ptr %574, align 8, !tbaa !141
  %703 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %572, i64 %686, i64 %693
  %704 = load i8, ptr %703, align 1, !tbaa !54
  %705 = zext i8 %704 to i32
  store i32 %705, ptr %575, align 4, !tbaa !142
  %706 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %686, i64 %693
  %707 = shl nuw nsw i64 %699, 2
  %708 = shl nuw nsw i64 %696, 2
  br label %709

709:                                              ; preds = %692, %745
  %710 = phi i32 [ 0, %692 ], [ %747, %745 ]
  %711 = phi ptr [ %573, %692 ], [ %746, %745 ]
  %712 = load ptr, ptr %576, align 8, !tbaa !153
  %713 = call i32 %712(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %553) #15
  %714 = load i32, ptr %577, align 4, !tbaa !154
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %745, label %716

716:                                              ; preds = %709
  %717 = load i8, ptr %706, align 1, !tbaa !54
  %718 = icmp ugt i8 %717, 63
  br i1 %718, label %723, label %719

719:                                              ; preds = %716
  %720 = zext nneg i8 %717 to i64
  %721 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %720
  %722 = load i64, ptr %721, align 8, !tbaa !61
  br label %723

723:                                              ; preds = %716, %719
  %724 = phi i64 [ %722, %719 ], [ 0, %716 ]
  %725 = load i64, ptr %578, align 8, !tbaa !61
  %726 = or i64 %725, %724
  store i64 %726, ptr %578, align 8, !tbaa !61
  %727 = load i32, ptr %579, align 8, !tbaa !194
  %728 = shl i32 %727, 1
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i8, ptr %711, i64 %729
  %731 = getelementptr inbounds i8, ptr %730, i64 1
  %732 = load i8, ptr %730, align 1, !tbaa !54
  %733 = zext i8 %732 to i64
  %734 = getelementptr inbounds i8, ptr %730, i64 2
  %735 = load i8, ptr %731, align 1, !tbaa !54
  %736 = zext i8 %735 to i64
  %737 = load ptr, ptr %580, align 8, !tbaa !62
  %738 = getelementptr inbounds ptr, ptr %737, i64 %691
  %739 = load ptr, ptr %738, align 8, !tbaa !63
  %740 = getelementptr ptr, ptr %739, i64 %707
  %741 = getelementptr ptr, ptr %740, i64 %736
  %742 = load ptr, ptr %741, align 8, !tbaa !63
  %743 = getelementptr i32, ptr %742, i64 %708
  %744 = getelementptr i32, ptr %743, i64 %733
  store i32 %714, ptr %744, align 4, !tbaa !53
  br label %745

745:                                              ; preds = %709, %723
  %746 = phi ptr [ %734, %723 ], [ %711, %709 ]
  %747 = add nuw nsw i32 %710, 1
  %748 = icmp ult i32 %710, 15
  %749 = icmp ne i32 %714, 0
  %750 = and i1 %749, %748
  br i1 %750, label %709, label %751, !llvm.loop !230

751:                                              ; preds = %745
  %752 = add nuw nsw i64 %693, 1
  %753 = icmp eq i64 %752, 4
  br i1 %753, label %754, label %692, !llvm.loop !231

754:                                              ; preds = %751
  %755 = add nuw nsw i64 %686, 1
  %756 = load i32, ptr %565, align 8, !tbaa !212
  %757 = sext i32 %756 to i64
  %758 = icmp slt i64 %755, %757
  br i1 %758, label %685, label %759, !llvm.loop !232

759:                                              ; preds = %754, %680, %568, %581, %540
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_444(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 42
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = icmp eq i32 %20, 1
  %22 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !186
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %27 = load i32, ptr %26, align 8, !tbaa !149
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i1 [ false, %1 ], [ %28, %25 ]
  %31 = select i1 %30, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %33 = load i16, ptr %32, align 8, !tbaa !93
  switch i16 %33, label %34 [
    i16 10, label %168
    i16 14, label %168
    i16 9, label %35
    i16 12, label %35
    i16 13, label %35
  ]

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %29, %29, %29, %34
  %36 = phi i32 [ 11, %34 ], [ 6, %29 ], [ 6, %29 ], [ 6, %29 ]
  store i32 %36, ptr %6, align 8, !tbaa !129
  %37 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 57
  %38 = load ptr, ptr %37, align 8, !tbaa !131
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds i8, ptr %16, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !54
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.datapartition, ptr %38, i64 %42
  switch i16 %33, label %46 [
    i16 9, label %44
    i16 12, label %44
    i16 13, label %44
  ]

44:                                               ; preds = %35, %35, %35
  %45 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 120
  br label %48

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 121
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %50, ptr %51, align 8, !tbaa !138
  %52 = getelementptr inbounds %struct.datapartition, ptr %38, i64 %42, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !153
  %54 = call i32 %53(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %43) #15
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !154
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %56, ptr %57, align 4, !tbaa !95
  %58 = load i16, ptr %32, align 8, !tbaa !93
  %59 = add i16 %58, -1
  %60 = icmp ult i16 %59, 3
  br i1 %60, label %77, label %61

61:                                               ; preds = %48
  %62 = icmp eq i16 %58, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 33
  %65 = load i32, ptr %64, align 4, !tbaa !97
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !123
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %69, i64 0, i32 32
  %71 = load i32, ptr %70, align 4, !tbaa !163
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %63, %61
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %75 = load i32, ptr %74, align 8, !tbaa !162
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %48, %73, %67
  switch i16 %58, label %78 [
    i16 13, label %96
    i16 9, label %96
  ]

78:                                               ; preds = %77
  %79 = and i32 %56, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !166
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  store i32 0, ptr %6, align 8, !tbaa !129
  %86 = load ptr, ptr %37, align 8, !tbaa !131
  %87 = load i8, ptr %16, align 4, !tbaa !54
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %88
  %90 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %90, align 8, !tbaa !139
  %91 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %91, align 4, !tbaa !157
  %92 = load ptr, ptr %89, align 8, !tbaa !133
  %93 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %92) #15
  %94 = load i32, ptr %55, align 4, !tbaa !154
  %95 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %94, ptr %95, align 4, !tbaa !167
  br label %96

96:                                               ; preds = %78, %77, %77, %73, %85, %81
  %97 = icmp eq i32 %56, 0
  br i1 %97, label %274, label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %19, align 8, !tbaa !81
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef %101)
  %102 = load i32, ptr %13, align 8, !tbaa !128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %274, label %104

104:                                              ; preds = %98
  %105 = load i32, ptr %19, align 8, !tbaa !81
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 75
  %109 = load i32, ptr %108, align 4, !tbaa !187
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %112, align 1, !tbaa !188
  br label %113

113:                                              ; preds = %111, %107, %104
  br i1 %21, label %114, label %121

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 74
  %116 = load i32, ptr %115, align 8, !tbaa !170
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %119, align 2, !tbaa !156
  %120 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %120, align 1, !tbaa !188
  br label %121

121:                                              ; preds = %118, %114, %113
  %122 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %123 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 160
  %124 = load ptr, ptr %123, align 8, !tbaa !189
  %125 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 81, i64 1
  call void %124(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %125, ptr noundef nonnull %5) #15
  %126 = load ptr, ptr %123, align 8, !tbaa !189
  call void %126(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %125, ptr noundef nonnull %4) #15
  %127 = load i32, ptr %19, align 8, !tbaa !81
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !111
  %132 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %131, i64 0, i32 30
  %133 = load i32, ptr %132, align 4, !tbaa !168
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %129, %121
  %136 = load i32, ptr %5, align 4, !tbaa !190
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 35
  %140 = load ptr, ptr %139, align 8, !tbaa !148
  %141 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !192
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.macroblock, ptr %140, i64 %143, i32 23
  %145 = load i8, ptr %144, align 1, !tbaa !188
  %146 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %147 = load i8, ptr %146, align 1, !tbaa !188
  %148 = or i8 %147, %145
  store i8 %148, ptr %146, align 1, !tbaa !188
  br label %149

149:                                              ; preds = %138, %135
  %150 = load i32, ptr %4, align 4, !tbaa !190
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 35
  %154 = load ptr, ptr %153, align 8, !tbaa !148
  %155 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !192
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.macroblock, ptr %154, i64 %157, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !188
  %160 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %161 = load i8, ptr %160, align 1, !tbaa !188
  %162 = or i8 %161, %159
  store i8 %162, ptr %160, align 1, !tbaa !188
  br label %163

163:                                              ; preds = %129, %149, %152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %164 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %165 = load i8, ptr %164, align 1, !tbaa !188
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %274, label %167

167:                                              ; preds = %163
  store i32 0, ptr %57, align 4, !tbaa !95
  br label %274

168:                                              ; preds = %29, %29
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %170 = load i32, ptr %169, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 17)
  %171 = load i32, ptr %13, align 8, !tbaa !128
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %227, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 74
  %175 = load i32, ptr %174, align 8, !tbaa !170
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %178, align 2, !tbaa !156
  %179 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %179, align 1, !tbaa !188
  br label %180

180:                                              ; preds = %177, %173
  %181 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %182 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 160
  %183 = load ptr, ptr %182, align 8, !tbaa !189
  %184 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 81, i64 1
  call void %183(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %184, ptr noundef nonnull %3) #15
  %185 = load ptr, ptr %182, align 8, !tbaa !189
  call void %185(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %184, ptr noundef nonnull %2) #15
  %186 = load i32, ptr %19, align 8, !tbaa !81
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !111
  %191 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %190, i64 0, i32 30
  %192 = load i32, ptr %191, align 4, !tbaa !168
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %188, %180
  %195 = load i32, ptr %3, align 4, !tbaa !190
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 35
  %199 = load ptr, ptr %198, align 8, !tbaa !148
  %200 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !192
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.macroblock, ptr %199, i64 %202, i32 23
  %204 = load i8, ptr %203, align 1, !tbaa !188
  %205 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %206 = load i8, ptr %205, align 1, !tbaa !188
  %207 = or i8 %206, %204
  store i8 %207, ptr %205, align 1, !tbaa !188
  br label %208

208:                                              ; preds = %197, %194
  %209 = load i32, ptr %2, align 4, !tbaa !190
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 35
  %213 = load ptr, ptr %212, align 8, !tbaa !148
  %214 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !192
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.macroblock, ptr %213, i64 %216, i32 23
  %218 = load i8, ptr %217, align 1, !tbaa !188
  %219 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %220 = load i8, ptr %219, align 1, !tbaa !188
  %221 = or i8 %220, %218
  store i8 %221, ptr %219, align 1, !tbaa !188
  br label %222

222:                                              ; preds = %188, %208, %211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %223 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %224 = load i8, ptr %223, align 1, !tbaa !188
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  store i32 0, ptr %169, align 4, !tbaa !95
  br label %227

227:                                              ; preds = %222, %226, %168
  %228 = phi i32 [ 0, %226 ], [ %170, %222 ], [ %170, %168 ]
  %229 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %230 = load i8, ptr %229, align 1, !tbaa !188
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %274

232:                                              ; preds = %227
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %233 = load i32, ptr %9, align 4, !tbaa !53
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 80
  %237 = zext nneg i32 %233 to i64
  br label %238

238:                                              ; preds = %235, %263
  %239 = phi i64 [ 0, %235 ], [ %265, %263 ]
  %240 = phi ptr [ %31, %235 ], [ %264, %263 ]
  %241 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %239
  %242 = load i32, ptr %241, align 4, !tbaa !53
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %263, label %244

244:                                              ; preds = %238
  %245 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %239
  %246 = load i32, ptr %245, align 4, !tbaa !53
  %247 = shl nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %240, i64 %248
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  %251 = load i8, ptr %249, align 1, !tbaa !54
  %252 = zext i8 %251 to i64
  %253 = shl nuw nsw i64 %252, 2
  %254 = getelementptr inbounds i8, ptr %249, i64 2
  %255 = load i8, ptr %250, align 1, !tbaa !54
  %256 = zext i8 %255 to i64
  %257 = shl nuw nsw i64 %256, 2
  %258 = load ptr, ptr %236, align 8, !tbaa !62
  %259 = load ptr, ptr %258, align 8, !tbaa !63
  %260 = getelementptr inbounds ptr, ptr %259, i64 %257
  %261 = load ptr, ptr %260, align 8, !tbaa !63
  %262 = getelementptr inbounds i32, ptr %261, i64 %253
  store i32 %242, ptr %262, align 4, !tbaa !53
  br label %263

263:                                              ; preds = %238, %244
  %264 = phi ptr [ %254, %244 ], [ %240, %238 ]
  %265 = add nuw nsw i64 %239, 1
  %266 = icmp eq i64 %265, %237
  br i1 %266, label %267, label %238, !llvm.loop !233

267:                                              ; preds = %263, %232
  %268 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %269 = load i32, ptr %268, align 4, !tbaa !60
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 46
  %273 = load i32, ptr %272, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %273) #15
  br label %274

274:                                              ; preds = %227, %271, %267, %96, %163, %167, %98
  %275 = phi i32 [ %228, %227 ], [ %228, %271 ], [ %228, %267 ], [ 0, %167 ], [ %56, %163 ], [ %56, %98 ], [ 0, %96 ]
  %276 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 29
  %277 = load i32, ptr %276, align 4, !tbaa !150
  %278 = load ptr, ptr %17, align 8, !tbaa !34
  %279 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %277, ptr %279, align 4, !tbaa !46
  %280 = getelementptr inbounds %struct.video_par, ptr %278, i64 0, i32 67
  %281 = load i32, ptr %280, align 4, !tbaa !58
  %282 = add nsw i32 %281, %277
  %283 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %282, ptr %283, align 8, !tbaa !53
  %284 = load ptr, ptr %0, align 8, !tbaa !42
  %285 = getelementptr inbounds %struct.slice, ptr %284, i64 0, i32 125
  %286 = load ptr, ptr %285, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.video_par, ptr %278, i64 0, i32 68
  br label %288

288:                                              ; preds = %304, %274
  %289 = phi i64 [ 0, %274 ], [ %308, %304 ]
  %290 = load i32, ptr %287, align 8, !tbaa !47
  %291 = sub nsw i32 0, %290
  %292 = getelementptr inbounds %struct.storable_picture, ptr %286, i64 0, i32 56, i64 %289
  %293 = load i32, ptr %292, align 4, !tbaa !53
  %294 = add nsw i32 %293, %277
  %295 = call i32 @llvm.smax.i32(i32 %294, i32 %291)
  %296 = call i32 @llvm.smin.i32(i32 %295, i32 51)
  %297 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %289
  store i32 %296, ptr %297, align 4, !tbaa !53
  %298 = icmp slt i32 %295, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %288
  %300 = zext nneg i32 %296 to i64
  %301 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !54
  %303 = zext i8 %302 to i32
  br label %304

304:                                              ; preds = %299, %288
  %305 = phi i32 [ %303, %299 ], [ %296, %288 ]
  store i32 %305, ptr %297, align 4, !tbaa !53
  %306 = load i32, ptr %287, align 8, !tbaa !47
  %307 = add nsw i32 %306, %305
  %308 = add nuw nsw i64 %289, 1
  %309 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %308
  store i32 %307, ptr %309, align 4, !tbaa !53
  %310 = icmp eq i64 %289, 0
  br i1 %310, label %288, label %311, !llvm.loop !55

311:                                              ; preds = %304
  %312 = load i32, ptr %283, align 8, !tbaa !53
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.video_par, ptr %278, i64 0, i32 73
  %316 = load i32, ptr %315, align 4, !tbaa !59
  %317 = icmp eq i32 %316, 1
  %318 = zext i1 %317 to i32
  br label %319

319:                                              ; preds = %311, %314
  %320 = phi i32 [ 0, %311 ], [ %318, %314 ]
  %321 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %320, ptr %321, align 4, !tbaa !60
  %322 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 132
  %323 = load ptr, ptr %322, align 8, !tbaa !197
  %324 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 46
  %325 = load i32, ptr %324, align 8, !tbaa !196
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !53
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, ptr %323, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !53
  %332 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 133
  %333 = load ptr, ptr %332, align 8, !tbaa !198
  %334 = getelementptr inbounds i32, ptr %333, i64 %329
  %335 = load i32, ptr %334, align 4, !tbaa !53
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 88, i64 %326, i64 %336
  %338 = sext i32 %335 to i64
  %339 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 89, i64 %326, i64 %338
  %340 = select i1 %21, ptr %337, ptr %339
  %341 = sext i32 %335 to i64
  %342 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 90, i64 %326, i64 %341
  %343 = sext i32 %335 to i64
  %344 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 91, i64 %326, i64 %343
  %345 = select i1 %21, ptr %342, ptr %344
  %346 = icmp eq i32 %275, 0
  br i1 %346, label %359, label %347

347:                                              ; preds = %319
  %348 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %349 = load i32, ptr %348, align 4, !tbaa !167
  %350 = icmp eq i32 %349, 0
  %351 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %352 = load ptr, ptr %351, align 8, !tbaa !184
  %353 = sext i32 %11 to i64
  %354 = getelementptr inbounds ptr, ptr %352, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !63
  %356 = load ptr, ptr %355, align 8, !tbaa !63
  br i1 %350, label %357, label %358

357:                                              ; preds = %347
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %340, i32 noundef %331, i32 noundef %275, ptr noundef %356)
  br label %367

358:                                              ; preds = %347
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %345, i32 noundef %331, i32 noundef %275, ptr noundef %356)
  br label %367

359:                                              ; preds = %319
  %360 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %361 = load ptr, ptr %360, align 8, !tbaa !184
  %362 = sext i32 %11 to i64
  %363 = getelementptr inbounds ptr, ptr %361, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !63
  %365 = load ptr, ptr %364, align 8, !tbaa !63
  %366 = load ptr, ptr %365, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %366, i8 0, i64 16, i1 false)
  br label %367

367:                                              ; preds = %357, %358, %359
  %368 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 80
  %369 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 68
  %370 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %371 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %372 = sext i32 %11 to i64
  %373 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %374 = sext i32 %11 to i64
  br label %375

375:                                              ; preds = %367, %499
  %376 = phi i64 [ 0, %367 ], [ %476, %499 ]
  %377 = load i16, ptr %32, align 8, !tbaa !93
  switch i16 %377, label %422 [
    i16 10, label %378
    i16 14, label %378
  ]

378:                                              ; preds = %375, %375
  %379 = icmp eq i64 %376, 0
  %380 = select i1 %379, i32 4, i32 9
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %380, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %381 = load i32, ptr %9, align 4, !tbaa !53
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %416

383:                                              ; preds = %378
  %384 = zext nneg i32 %381 to i64
  br label %385

385:                                              ; preds = %383, %412
  %386 = phi i64 [ 0, %383 ], [ %414, %412 ]
  %387 = phi i32 [ -1, %383 ], [ %413, %412 ]
  %388 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %386
  %389 = load i32, ptr %388, align 4, !tbaa !53
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %412, label %391

391:                                              ; preds = %385
  %392 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %386
  %393 = load i32, ptr %392, align 4, !tbaa !53
  %394 = add i32 %387, 1
  %395 = add i32 %394, %393
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [2 x i8], ptr %31, i64 %396
  %398 = load i8, ptr %397, align 2, !tbaa !54
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds [2 x i8], ptr %31, i64 %396, i64 1
  %401 = load i8, ptr %400, align 1, !tbaa !54
  %402 = zext i8 %401 to i64
  %403 = load ptr, ptr %368, align 8, !tbaa !62
  %404 = getelementptr ptr, ptr %403, i64 %376
  %405 = getelementptr ptr, ptr %404, i64 1
  %406 = load ptr, ptr %405, align 8, !tbaa !63
  %407 = shl nuw nsw i64 %402, 2
  %408 = getelementptr inbounds ptr, ptr %406, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !63
  %410 = shl nuw nsw i64 %399, 2
  %411 = getelementptr inbounds i32, ptr %409, i64 %410
  store i32 %389, ptr %411, align 4, !tbaa !53
  br label %412

412:                                              ; preds = %385, %391
  %413 = phi i32 [ %395, %391 ], [ %387, %385 ]
  %414 = add nuw nsw i64 %386, 1
  %415 = icmp eq i64 %414, %384
  br i1 %415, label %416, label %385, !llvm.loop !234

416:                                              ; preds = %412, %378
  %417 = load i32, ptr %321, align 4, !tbaa !60
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = trunc i64 %376 to i32
  %421 = add i32 %420, 1
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %421) #15
  br label %422

422:                                              ; preds = %375, %416, %419
  %423 = load i32, ptr %276, align 4, !tbaa !150
  %424 = load ptr, ptr %17, align 8, !tbaa !34
  store i32 %423, ptr %279, align 4, !tbaa !46
  %425 = getelementptr inbounds %struct.video_par, ptr %424, i64 0, i32 67
  %426 = load i32, ptr %425, align 4, !tbaa !58
  %427 = add nsw i32 %426, %423
  store i32 %427, ptr %283, align 8, !tbaa !53
  %428 = load ptr, ptr %0, align 8, !tbaa !42
  %429 = getelementptr inbounds %struct.slice, ptr %428, i64 0, i32 125
  %430 = load ptr, ptr %429, align 8, !tbaa !43
  %431 = getelementptr inbounds %struct.video_par, ptr %424, i64 0, i32 68
  br label %432

432:                                              ; preds = %448, %422
  %433 = phi i64 [ 0, %422 ], [ %452, %448 ]
  %434 = load i32, ptr %431, align 8, !tbaa !47
  %435 = sub nsw i32 0, %434
  %436 = getelementptr inbounds %struct.storable_picture, ptr %430, i64 0, i32 56, i64 %433
  %437 = load i32, ptr %436, align 4, !tbaa !53
  %438 = add nsw i32 %437, %423
  %439 = call i32 @llvm.smax.i32(i32 %438, i32 %435)
  %440 = call i32 @llvm.smin.i32(i32 %439, i32 51)
  %441 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %433
  store i32 %440, ptr %441, align 4, !tbaa !53
  %442 = icmp slt i32 %439, 0
  br i1 %442, label %448, label %443

443:                                              ; preds = %432
  %444 = zext nneg i32 %440 to i64
  %445 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !54
  %447 = zext i8 %446 to i32
  br label %448

448:                                              ; preds = %443, %432
  %449 = phi i32 [ %447, %443 ], [ %440, %432 ]
  store i32 %449, ptr %441, align 4, !tbaa !53
  %450 = load i32, ptr %431, align 8, !tbaa !47
  %451 = add nsw i32 %450, %449
  %452 = add nuw nsw i64 %433, 1
  %453 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %452
  store i32 %451, ptr %453, align 4, !tbaa !53
  %454 = icmp eq i64 %433, 0
  br i1 %454, label %432, label %455, !llvm.loop !55

455:                                              ; preds = %448
  %456 = load i32, ptr %283, align 8, !tbaa !53
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %463

458:                                              ; preds = %455
  %459 = getelementptr inbounds %struct.video_par, ptr %424, i64 0, i32 73
  %460 = load i32, ptr %459, align 4, !tbaa !59
  %461 = icmp eq i32 %460, 1
  %462 = zext i1 %461 to i32
  br label %463

463:                                              ; preds = %455, %458
  %464 = phi i32 [ 0, %455 ], [ %462, %458 ]
  store i32 %464, ptr %321, align 4, !tbaa !60
  %465 = load ptr, ptr %322, align 8, !tbaa !197
  %466 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %376
  %467 = load i32, ptr %466, align 4, !tbaa !53
  %468 = load i32, ptr %369, align 8, !tbaa !47
  %469 = add nsw i32 %468, %467
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, ptr %465, i64 %470
  %472 = load i32, ptr %471, align 4, !tbaa !53
  %473 = load ptr, ptr %332, align 8, !tbaa !198
  %474 = getelementptr inbounds i32, ptr %473, i64 %470
  %475 = load i32, ptr %474, align 4, !tbaa !53
  %476 = add nuw nsw i64 %376, 1
  %477 = sext i32 %475 to i64
  %478 = load i32, ptr %370, align 4, !tbaa !167
  %479 = icmp eq i32 %478, 0
  %480 = trunc i64 %476 to i32
  br i1 %479, label %481, label %490

481:                                              ; preds = %463
  %482 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 88, i64 %476, i64 %477
  %483 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 89, i64 %476, i64 %477
  %484 = select i1 %21, ptr %482, ptr %483
  %485 = load ptr, ptr %373, align 8, !tbaa !184
  %486 = getelementptr inbounds ptr, ptr %485, i64 %374
  %487 = load ptr, ptr %486, align 8, !tbaa !63
  %488 = getelementptr inbounds ptr, ptr %487, i64 %476
  %489 = load ptr, ptr %488, align 8, !tbaa !63
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef %480, ptr noundef nonnull %484, i32 noundef %472, i32 noundef %275, ptr noundef %489)
  br label %499

490:                                              ; preds = %463
  %491 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 90, i64 %476, i64 %477
  %492 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 91, i64 %476, i64 %477
  %493 = select i1 %21, ptr %491, ptr %492
  %494 = load ptr, ptr %371, align 8, !tbaa !184
  %495 = getelementptr inbounds ptr, ptr %494, i64 %372
  %496 = load ptr, ptr %495, align 8, !tbaa !63
  %497 = getelementptr inbounds ptr, ptr %496, i64 %476
  %498 = load ptr, ptr %497, align 8, !tbaa !63
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef %480, ptr noundef nonnull %493, i32 noundef %472, i32 noundef %275, ptr noundef %498)
  br label %499

499:                                              ; preds = %481, %490
  %500 = icmp eq i64 %376, 0
  br i1 %500, label %375, label %501, !llvm.loop !235

501:                                              ; preds = %499
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_422(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x [4 x i32]], align 16
  %13 = alloca [2 x [4 x i32]], align 16
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !128
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %24 = load i32, ptr %23, align 8, !tbaa !81
  %25 = icmp eq i32 %24, 1
  %26 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 125
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.storable_picture, ptr %27, i64 0, i32 48
  %29 = load i32, ptr %28, align 4, !tbaa !173
  %30 = add nsw i32 %29, -1
  %31 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 33
  %32 = load i32, ptr %31, align 4, !tbaa !186
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %36 = load i32, ptr %35, align 8, !tbaa !149
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %34, %1
  %39 = phi i1 [ false, %1 ], [ %37, %34 ]
  %40 = select i1 %39, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %42 = load i16, ptr %41, align 8, !tbaa !93
  switch i16 %42, label %43 [
    i16 10, label %177
    i16 14, label %177
    i16 9, label %44
    i16 12, label %44
    i16 13, label %44
  ]

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %38, %38, %38, %43
  %45 = phi i32 [ 11, %43 ], [ 6, %38 ], [ 6, %38 ], [ 6, %38 ]
  store i32 %45, ptr %6, align 8, !tbaa !129
  %46 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 57
  %47 = load ptr, ptr %46, align 8, !tbaa !131
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds i8, ptr %20, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !54
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds %struct.datapartition, ptr %47, i64 %51
  switch i16 %42, label %55 [
    i16 9, label %53
    i16 12, label %53
    i16 13, label %53
  ]

53:                                               ; preds = %44, %44, %44
  %54 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 120
  br label %57

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 121
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %54, %53 ], [ %56, %55 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %59, ptr %60, align 8, !tbaa !138
  %61 = getelementptr inbounds %struct.datapartition, ptr %47, i64 %51, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !153
  %63 = call i32 %62(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %52) #15
  %64 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !154
  %66 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %65, ptr %66, align 4, !tbaa !95
  %67 = load i16, ptr %41, align 8, !tbaa !93
  %68 = add i16 %67, -1
  %69 = icmp ult i16 %68, 3
  br i1 %69, label %86, label %70

70:                                               ; preds = %57
  %71 = icmp eq i16 %67, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 33
  %74 = load i32, ptr %73, align 4, !tbaa !97
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !123
  %79 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %78, i64 0, i32 32
  %80 = load i32, ptr %79, align 4, !tbaa !163
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76, %72, %70
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %84 = load i32, ptr %83, align 8, !tbaa !162
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %57, %82, %76
  switch i16 %67, label %87 [
    i16 13, label %105
    i16 9, label %105
  ]

87:                                               ; preds = %86
  %88 = and i32 %65, 15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 9
  %92 = load i32, ptr %91, align 4, !tbaa !166
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %90
  store i32 0, ptr %6, align 8, !tbaa !129
  %95 = load ptr, ptr %46, align 8, !tbaa !131
  %96 = load i8, ptr %20, align 4, !tbaa !54
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds %struct.datapartition, ptr %95, i64 %97
  %99 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %99, align 8, !tbaa !139
  %100 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %100, align 4, !tbaa !157
  %101 = load ptr, ptr %98, align 8, !tbaa !133
  %102 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %101) #15
  %103 = load i32, ptr %64, align 4, !tbaa !154
  %104 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %103, ptr %104, align 4, !tbaa !167
  br label %105

105:                                              ; preds = %87, %86, %86, %82, %94, %90
  %106 = icmp eq i32 %65, 0
  br i1 %106, label %283, label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %23, align 8, !tbaa !81
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef %110)
  %111 = load i32, ptr %17, align 8, !tbaa !128
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %283, label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %23, align 8, !tbaa !81
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 75
  %118 = load i32, ptr %117, align 4, !tbaa !187
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %121, align 1, !tbaa !188
  br label %122

122:                                              ; preds = %120, %116, %113
  br i1 %25, label %123, label %130

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 74
  %125 = load i32, ptr %124, align 8, !tbaa !170
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %128, align 2, !tbaa !156
  %129 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %129, align 1, !tbaa !188
  br label %130

130:                                              ; preds = %127, %123, %122
  %131 = load ptr, ptr %21, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %132 = getelementptr inbounds %struct.video_par, ptr %131, i64 0, i32 160
  %133 = load ptr, ptr %132, align 8, !tbaa !189
  %134 = getelementptr inbounds %struct.video_par, ptr %131, i64 0, i32 81, i64 1
  call void %133(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %134, ptr noundef nonnull %5) #15
  %135 = load ptr, ptr %132, align 8, !tbaa !189
  call void %135(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %134, ptr noundef nonnull %4) #15
  %136 = load i32, ptr %23, align 8, !tbaa !81
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.video_par, ptr %131, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !111
  %141 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %140, i64 0, i32 30
  %142 = load i32, ptr %141, align 4, !tbaa !168
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %138, %130
  %145 = load i32, ptr %5, align 4, !tbaa !190
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.video_par, ptr %131, i64 0, i32 35
  %149 = load ptr, ptr %148, align 8, !tbaa !148
  %150 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !192
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.macroblock, ptr %149, i64 %152, i32 23
  %154 = load i8, ptr %153, align 1, !tbaa !188
  %155 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %156 = load i8, ptr %155, align 1, !tbaa !188
  %157 = or i8 %156, %154
  store i8 %157, ptr %155, align 1, !tbaa !188
  br label %158

158:                                              ; preds = %147, %144
  %159 = load i32, ptr %4, align 4, !tbaa !190
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.video_par, ptr %131, i64 0, i32 35
  %163 = load ptr, ptr %162, align 8, !tbaa !148
  %164 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !192
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.macroblock, ptr %163, i64 %166, i32 23
  %168 = load i8, ptr %167, align 1, !tbaa !188
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %170 = load i8, ptr %169, align 1, !tbaa !188
  %171 = or i8 %170, %168
  store i8 %171, ptr %169, align 1, !tbaa !188
  br label %172

172:                                              ; preds = %138, %158, %161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %173 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %174 = load i8, ptr %173, align 1, !tbaa !188
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %283, label %176

176:                                              ; preds = %172
  store i32 0, ptr %66, align 4, !tbaa !95
  br label %283

177:                                              ; preds = %38, %38
  %178 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %179 = load i32, ptr %178, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 17)
  %180 = load i32, ptr %17, align 8, !tbaa !128
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %236, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 74
  %184 = load i32, ptr %183, align 8, !tbaa !170
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %187, align 2, !tbaa !156
  %188 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %188, align 1, !tbaa !188
  br label %189

189:                                              ; preds = %186, %182
  %190 = load ptr, ptr %21, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %191 = getelementptr inbounds %struct.video_par, ptr %190, i64 0, i32 160
  %192 = load ptr, ptr %191, align 8, !tbaa !189
  %193 = getelementptr inbounds %struct.video_par, ptr %190, i64 0, i32 81, i64 1
  call void %192(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %193, ptr noundef nonnull %3) #15
  %194 = load ptr, ptr %191, align 8, !tbaa !189
  call void %194(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %193, ptr noundef nonnull %2) #15
  %195 = load i32, ptr %23, align 8, !tbaa !81
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.video_par, ptr %190, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !111
  %200 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %199, i64 0, i32 30
  %201 = load i32, ptr %200, align 4, !tbaa !168
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %231

203:                                              ; preds = %197, %189
  %204 = load i32, ptr %3, align 4, !tbaa !190
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.video_par, ptr %190, i64 0, i32 35
  %208 = load ptr, ptr %207, align 8, !tbaa !148
  %209 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %210 = load i32, ptr %209, align 4, !tbaa !192
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.macroblock, ptr %208, i64 %211, i32 23
  %213 = load i8, ptr %212, align 1, !tbaa !188
  %214 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %215 = load i8, ptr %214, align 1, !tbaa !188
  %216 = or i8 %215, %213
  store i8 %216, ptr %214, align 1, !tbaa !188
  br label %217

217:                                              ; preds = %206, %203
  %218 = load i32, ptr %2, align 4, !tbaa !190
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.video_par, ptr %190, i64 0, i32 35
  %222 = load ptr, ptr %221, align 8, !tbaa !148
  %223 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !192
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.macroblock, ptr %222, i64 %225, i32 23
  %227 = load i8, ptr %226, align 1, !tbaa !188
  %228 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %229 = load i8, ptr %228, align 1, !tbaa !188
  %230 = or i8 %229, %227
  store i8 %230, ptr %228, align 1, !tbaa !188
  br label %231

231:                                              ; preds = %197, %217, %220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %232 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %233 = load i8, ptr %232, align 1, !tbaa !188
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  store i32 0, ptr %178, align 4, !tbaa !95
  br label %236

236:                                              ; preds = %231, %235, %177
  %237 = phi i32 [ 0, %235 ], [ %179, %231 ], [ %179, %177 ]
  %238 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %239 = load i8, ptr %238, align 1, !tbaa !188
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %283

241:                                              ; preds = %236
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %242 = load i32, ptr %9, align 4, !tbaa !53
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %276

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 80
  %246 = zext nneg i32 %242 to i64
  br label %247

247:                                              ; preds = %244, %272
  %248 = phi i64 [ 0, %244 ], [ %274, %272 ]
  %249 = phi ptr [ %40, %244 ], [ %273, %272 ]
  %250 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %248
  %251 = load i32, ptr %250, align 4, !tbaa !53
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %272, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %248
  %255 = load i32, ptr %254, align 4, !tbaa !53
  %256 = shl nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %249, i64 %257
  %259 = getelementptr inbounds i8, ptr %258, i64 1
  %260 = load i8, ptr %258, align 1, !tbaa !54
  %261 = zext i8 %260 to i64
  %262 = shl nuw nsw i64 %261, 2
  %263 = getelementptr inbounds i8, ptr %258, i64 2
  %264 = load i8, ptr %259, align 1, !tbaa !54
  %265 = zext i8 %264 to i64
  %266 = shl nuw nsw i64 %265, 2
  %267 = load ptr, ptr %245, align 8, !tbaa !62
  %268 = load ptr, ptr %267, align 8, !tbaa !63
  %269 = getelementptr inbounds ptr, ptr %268, i64 %266
  %270 = load ptr, ptr %269, align 8, !tbaa !63
  %271 = getelementptr inbounds i32, ptr %270, i64 %262
  store i32 %251, ptr %271, align 4, !tbaa !53
  br label %272

272:                                              ; preds = %247, %253
  %273 = phi ptr [ %263, %253 ], [ %249, %247 ]
  %274 = add nuw nsw i64 %248, 1
  %275 = icmp eq i64 %274, %246
  br i1 %275, label %276, label %247, !llvm.loop !236

276:                                              ; preds = %272, %241
  %277 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %278 = load i32, ptr %277, align 4, !tbaa !60
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 46
  %282 = load i32, ptr %281, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %282) #15
  br label %283

283:                                              ; preds = %236, %280, %276, %105, %172, %176, %107
  %284 = phi i32 [ %237, %236 ], [ %237, %280 ], [ %237, %276 ], [ 0, %176 ], [ %65, %172 ], [ %65, %107 ], [ 0, %105 ]
  %285 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 29
  %286 = load i32, ptr %285, align 4, !tbaa !150
  %287 = load ptr, ptr %21, align 8, !tbaa !34
  %288 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %286, ptr %288, align 4, !tbaa !46
  %289 = getelementptr inbounds %struct.video_par, ptr %287, i64 0, i32 67
  %290 = load i32, ptr %289, align 4, !tbaa !58
  %291 = add nsw i32 %290, %286
  %292 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %291, ptr %292, align 8, !tbaa !53
  %293 = load ptr, ptr %0, align 8, !tbaa !42
  %294 = getelementptr inbounds %struct.slice, ptr %293, i64 0, i32 125
  %295 = load ptr, ptr %294, align 8, !tbaa !43
  %296 = getelementptr inbounds %struct.video_par, ptr %287, i64 0, i32 68
  br label %297

297:                                              ; preds = %313, %283
  %298 = phi i64 [ 0, %283 ], [ %317, %313 ]
  %299 = load i32, ptr %296, align 8, !tbaa !47
  %300 = sub nsw i32 0, %299
  %301 = getelementptr inbounds %struct.storable_picture, ptr %295, i64 0, i32 56, i64 %298
  %302 = load i32, ptr %301, align 4, !tbaa !53
  %303 = add nsw i32 %302, %286
  %304 = call i32 @llvm.smax.i32(i32 %303, i32 %300)
  %305 = call i32 @llvm.smin.i32(i32 %304, i32 51)
  %306 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %298
  store i32 %305, ptr %306, align 4, !tbaa !53
  %307 = icmp slt i32 %304, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %297
  %309 = zext nneg i32 %305 to i64
  %310 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !54
  %312 = zext i8 %311 to i32
  br label %313

313:                                              ; preds = %308, %297
  %314 = phi i32 [ %312, %308 ], [ %305, %297 ]
  store i32 %314, ptr %306, align 4, !tbaa !53
  %315 = load i32, ptr %296, align 8, !tbaa !47
  %316 = add nsw i32 %315, %314
  %317 = add nuw nsw i64 %298, 1
  %318 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %317
  store i32 %316, ptr %318, align 4, !tbaa !53
  %319 = icmp eq i64 %298, 0
  br i1 %319, label %297, label %320, !llvm.loop !55

320:                                              ; preds = %313
  %321 = load i32, ptr %292, align 8, !tbaa !53
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.video_par, ptr %287, i64 0, i32 73
  %325 = load i32, ptr %324, align 4, !tbaa !59
  %326 = icmp eq i32 %325, 1
  %327 = zext i1 %326 to i32
  br label %328

328:                                              ; preds = %320, %323
  %329 = phi i32 [ 0, %320 ], [ %327, %323 ]
  %330 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %329, ptr %330, align 4, !tbaa !60
  %331 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 132
  %332 = load ptr, ptr %331, align 8, !tbaa !197
  %333 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 46
  %334 = load i32, ptr %333, align 8, !tbaa !196
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !53
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, ptr %332, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !53
  %341 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 133
  %342 = load ptr, ptr %341, align 8, !tbaa !198
  %343 = getelementptr inbounds i32, ptr %342, i64 %338
  %344 = load i32, ptr %343, align 4, !tbaa !53
  br label %345

345:                                              ; preds = %328, %345
  %346 = phi i64 [ 0, %328 ], [ %347, %345 ]
  %347 = add nuw nsw i64 %346, 1
  %348 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !53
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, ptr %332, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !53
  %353 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %346
  store i32 %352, ptr %353, align 4, !tbaa !53
  %354 = getelementptr inbounds i32, ptr %342, i64 %350
  %355 = load i32, ptr %354, align 4, !tbaa !53
  %356 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 %346
  store i32 %355, ptr %356, align 4, !tbaa !53
  %357 = icmp eq i64 %346, 0
  br i1 %357, label %345, label %358, !llvm.loop !237

358:                                              ; preds = %345
  %359 = sext i32 %344 to i64
  %360 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 88, i64 %335, i64 %359
  %361 = sext i32 %344 to i64
  %362 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 89, i64 %335, i64 %361
  %363 = select i1 %25, ptr %360, ptr %362
  %364 = sext i32 %344 to i64
  %365 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 90, i64 %335, i64 %364
  %366 = sext i32 %344 to i64
  %367 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 91, i64 %335, i64 %366
  %368 = select i1 %25, ptr %365, ptr %367
  %369 = icmp eq i32 %284, 0
  br i1 %369, label %382, label %370

370:                                              ; preds = %358
  %371 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %372 = load i32, ptr %371, align 4, !tbaa !167
  %373 = icmp eq i32 %372, 0
  %374 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 29
  %375 = load ptr, ptr %374, align 8, !tbaa !184
  %376 = sext i32 %15 to i64
  %377 = getelementptr inbounds ptr, ptr %375, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !63
  %379 = load ptr, ptr %378, align 8, !tbaa !63
  br i1 %373, label %380, label %381

380:                                              ; preds = %370
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %363, i32 noundef %340, i32 noundef %284, ptr noundef %379)
  br label %390

381:                                              ; preds = %370
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %368, i32 noundef %340, i32 noundef %284, ptr noundef %379)
  br label %390

382:                                              ; preds = %358
  %383 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 29
  %384 = load ptr, ptr %383, align 8, !tbaa !184
  %385 = sext i32 %15 to i64
  %386 = getelementptr inbounds ptr, ptr %384, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !63
  %388 = load ptr, ptr %387, align 8, !tbaa !63
  %389 = load ptr, ptr %388, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %389, i8 0, i64 16, i1 false)
  br label %390

390:                                              ; preds = %380, %381, %382
  %391 = icmp sgt i32 %284, 15
  br i1 %391, label %392, label %565

392:                                              ; preds = %390
  %393 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 80
  %394 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 68
  %395 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %396 = getelementptr inbounds [2 x [4 x i32]], ptr %12, i64 0, i64 1
  %397 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 1
  %398 = getelementptr inbounds [2 x [4 x i32]], ptr %12, i64 0, i64 1, i64 1
  %399 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 1
  %400 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 2
  %401 = getelementptr inbounds [2 x [4 x i32]], ptr %12, i64 0, i64 1, i64 2
  %402 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 2
  %403 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 3
  %404 = getelementptr inbounds [2 x [4 x i32]], ptr %12, i64 0, i64 1, i64 3
  %405 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 3
  %406 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 1
  %407 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 1, i64 1
  %408 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 1, i64 2
  %409 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 1, i64 3
  %410 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 78
  %411 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 77
  br label %412

412:                                              ; preds = %392, %562
  %413 = phi i64 [ 0, %392 ], [ %563, %562 ]
  %414 = lshr exact i64 %413, 1
  %415 = load ptr, ptr %393, align 8, !tbaa !62
  %416 = add nuw nsw i64 %414, 1
  %417 = getelementptr inbounds ptr, ptr %415, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %419 = load ptr, ptr %331, align 8, !tbaa !197
  %420 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %414
  %421 = load i32, ptr %420, align 4, !tbaa !53
  %422 = add nsw i32 %421, 3
  %423 = load i32, ptr %394, align 8, !tbaa !47
  %424 = add nsw i32 %422, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, ptr %419, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !53
  %428 = load ptr, ptr %341, align 8, !tbaa !198
  %429 = getelementptr inbounds i32, ptr %428, i64 %425
  %430 = load i32, ptr %429, align 4, !tbaa !53
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 88, i64 %416, i64 %431
  %433 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 89, i64 %416, i64 %431
  %434 = select i1 %25, ptr %432, ptr %433
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %435 = load i32, ptr %9, align 4, !tbaa !53
  %436 = icmp sgt i32 %435, 0
  br i1 %436, label %437, label %466

437:                                              ; preds = %412
  %438 = shl nuw nsw i64 %413, 2
  %439 = shl nuw nsw i64 16711680, %438
  %440 = zext nneg i32 %435 to i64
  br label %441

441:                                              ; preds = %437, %462
  %442 = phi i64 [ 0, %437 ], [ %464, %462 ]
  %443 = phi i32 [ -1, %437 ], [ %463, %462 ]
  %444 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %442
  %445 = load i32, ptr %444, align 4, !tbaa !53
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %462, label %447

447:                                              ; preds = %441
  %448 = load i64, ptr %395, align 8, !tbaa !61
  %449 = or i64 %448, %439
  store i64 %449, ptr %395, align 8, !tbaa !61
  %450 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %442
  %451 = load i32, ptr %450, align 4, !tbaa !53
  %452 = add i32 %443, 1
  %453 = add i32 %452, %451
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %454
  %456 = load i8, ptr %455, align 2, !tbaa !54
  %457 = getelementptr inbounds [8 x [2 x i8]], ptr @SCAN_YUV422, i64 0, i64 %454, i64 1
  %458 = load i8, ptr %457, align 1, !tbaa !54
  %459 = zext i8 %456 to i64
  %460 = zext i8 %458 to i64
  %461 = getelementptr inbounds [2 x [4 x i32]], ptr %12, i64 0, i64 %459, i64 %460
  store i32 %445, ptr %461, align 4, !tbaa !53
  br label %462

462:                                              ; preds = %441, %447
  %463 = phi i32 [ %453, %447 ], [ %443, %441 ]
  %464 = add nuw nsw i64 %442, 1
  %465 = icmp eq i64 %464, %440
  br i1 %465, label %466, label %441, !llvm.loop !238

466:                                              ; preds = %462, %412
  %467 = load i32, ptr %330, align 4, !tbaa !60
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %466
  %470 = load ptr, ptr %393, align 8, !tbaa !62
  %471 = getelementptr inbounds ptr, ptr %470, i64 %416
  %472 = load ptr, ptr %471, align 8, !tbaa !63
  br label %550

473:                                              ; preds = %466
  %474 = load i32, ptr %12, align 16, !tbaa !53
  %475 = load i32, ptr %396, align 16, !tbaa !53
  %476 = add nsw i32 %475, %474
  store i32 %476, ptr %13, align 16, !tbaa !53
  %477 = load i32, ptr %397, align 4, !tbaa !53
  %478 = load i32, ptr %398, align 4, !tbaa !53
  %479 = add nsw i32 %478, %477
  store i32 %479, ptr %399, align 4, !tbaa !53
  %480 = load i32, ptr %400, align 8, !tbaa !53
  %481 = load i32, ptr %401, align 8, !tbaa !53
  %482 = add nsw i32 %481, %480
  store i32 %482, ptr %402, align 8, !tbaa !53
  %483 = load i32, ptr %403, align 4, !tbaa !53
  %484 = load i32, ptr %404, align 4, !tbaa !53
  %485 = add nsw i32 %484, %483
  store i32 %485, ptr %405, align 4, !tbaa !53
  %486 = sub nsw i32 %474, %475
  store i32 %486, ptr %406, align 16, !tbaa !53
  %487 = sub nsw i32 %477, %478
  store i32 %487, ptr %407, align 4, !tbaa !53
  %488 = sub nsw i32 %480, %481
  store i32 %488, ptr %408, align 8, !tbaa !53
  %489 = sub nsw i32 %483, %484
  store i32 %489, ptr %409, align 4, !tbaa !53
  %490 = load ptr, ptr %418, align 8, !tbaa !63
  %491 = getelementptr inbounds ptr, ptr %418, i64 4
  %492 = load ptr, ptr %491, align 8, !tbaa !63
  %493 = getelementptr inbounds ptr, ptr %418, i64 8
  %494 = load ptr, ptr %493, align 8, !tbaa !63
  %495 = getelementptr inbounds ptr, ptr %418, i64 12
  %496 = load ptr, ptr %495, align 8, !tbaa !63
  br label %500

497:                                              ; preds = %500
  %498 = load i32, ptr %410, align 8, !tbaa !79
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %525, label %562

500:                                              ; preds = %473, %500
  %501 = phi i64 [ 0, %473 ], [ %523, %500 ]
  %502 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 %501
  %503 = load i32, ptr %502, align 16, !tbaa !53
  %504 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 %501, i64 2
  %505 = load i32, ptr %504, align 8, !tbaa !53
  %506 = add nsw i32 %505, %503
  %507 = sub nsw i32 %503, %505
  %508 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 %501, i64 1
  %509 = load i32, ptr %508, align 4, !tbaa !53
  %510 = getelementptr inbounds [2 x [4 x i32]], ptr %13, i64 0, i64 %501, i64 3
  %511 = load i32, ptr %510, align 4, !tbaa !53
  %512 = sub nsw i32 %509, %511
  %513 = add nsw i32 %511, %509
  %514 = add nsw i32 %513, %506
  %515 = shl nuw nsw i64 %501, 2
  %516 = getelementptr inbounds i32, ptr %490, i64 %515
  store i32 %514, ptr %516, align 4, !tbaa !53
  %517 = add nsw i32 %512, %507
  %518 = getelementptr inbounds i32, ptr %492, i64 %515
  store i32 %517, ptr %518, align 4, !tbaa !53
  %519 = sub nsw i32 %507, %512
  %520 = getelementptr inbounds i32, ptr %494, i64 %515
  store i32 %519, ptr %520, align 4, !tbaa !53
  %521 = sub nsw i32 %506, %513
  %522 = getelementptr inbounds i32, ptr %496, i64 %515
  store i32 %521, ptr %522, align 4, !tbaa !53
  %523 = add nuw nsw i64 %501, 1
  %524 = icmp eq i64 %501, 0
  br i1 %524, label %500, label %497, !llvm.loop !239

525:                                              ; preds = %497, %545
  %526 = phi i64 [ %546, %545 ], [ 0, %497 ]
  %527 = load i32, ptr %411, align 4, !tbaa !77
  %528 = icmp sgt i32 %527, 0
  br i1 %528, label %529, label %545

529:                                              ; preds = %525
  %530 = getelementptr inbounds ptr, ptr %418, i64 %526
  %531 = load ptr, ptr %530, align 8, !tbaa !63
  br label %532

532:                                              ; preds = %529, %532
  %533 = phi i64 [ 0, %529 ], [ %541, %532 ]
  %534 = getelementptr inbounds i32, ptr %531, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !53
  %536 = load i32, ptr %434, align 4, !tbaa !53
  %537 = mul nsw i32 %536, %535
  %538 = shl i32 %537, %427
  %539 = add nsw i32 %538, 32
  %540 = ashr i32 %539, 6
  store i32 %540, ptr %534, align 4, !tbaa !53
  %541 = add nuw nsw i64 %533, 4
  %542 = load i32, ptr %411, align 4, !tbaa !77
  %543 = sext i32 %542 to i64
  %544 = icmp slt i64 %541, %543
  br i1 %544, label %532, label %545, !llvm.loop !240

545:                                              ; preds = %532, %525
  %546 = add nuw nsw i64 %526, 4
  %547 = load i32, ptr %410, align 8, !tbaa !79
  %548 = sext i32 %547 to i64
  %549 = icmp slt i64 %546, %548
  br i1 %549, label %525, label %562, !llvm.loop !241

550:                                              ; preds = %469, %550
  %551 = phi i64 [ 0, %469 ], [ %560, %550 ]
  %552 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %551
  %553 = load i32, ptr %552, align 4, !tbaa !53
  %554 = shl nuw nsw i64 %551, 2
  %555 = getelementptr inbounds ptr, ptr %472, i64 %554
  %556 = load ptr, ptr %555, align 8, !tbaa !63
  store i32 %553, ptr %556, align 4, !tbaa !53
  %557 = getelementptr inbounds [2 x [4 x i32]], ptr %12, i64 0, i64 1, i64 %551
  %558 = load i32, ptr %557, align 4, !tbaa !53
  %559 = getelementptr inbounds i32, ptr %556, i64 4
  store i32 %558, ptr %559, align 4, !tbaa !53
  %560 = add nuw nsw i64 %551, 1
  %561 = icmp eq i64 %560, 4
  br i1 %561, label %562, label %550, !llvm.loop !242

562:                                              ; preds = %550, %545, %497
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #15
  %563 = add nuw nsw i64 %413, 2
  %564 = icmp eq i64 %413, 0
  br i1 %564, label %412, label %565, !llvm.loop !243

565:                                              ; preds = %562, %390
  %566 = icmp slt i32 %284, 32
  br i1 %566, label %567, label %576

567:                                              ; preds = %565
  %568 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 29
  %569 = load ptr, ptr %568, align 8, !tbaa !184
  %570 = sext i32 %15 to i64
  %571 = getelementptr inbounds ptr, ptr %569, i64 %570
  %572 = load ptr, ptr %571, align 8, !tbaa !63
  %573 = getelementptr inbounds ptr, ptr %572, i64 1
  %574 = load ptr, ptr %573, align 8, !tbaa !63
  %575 = load ptr, ptr %574, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %575, i8 0, i64 32, i1 false)
  br label %765

576:                                              ; preds = %565
  %577 = load i32, ptr %330, align 4, !tbaa !60
  %578 = icmp eq i32 %577, 0
  %579 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 74
  %580 = load i32, ptr %579, align 8, !tbaa !212
  %581 = icmp sgt i32 %580, 0
  br i1 %578, label %589, label %582

582:                                              ; preds = %576
  br i1 %581, label %583, label %765

583:                                              ; preds = %582
  %584 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 75
  %585 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %586 = sext i32 %30 to i64
  %587 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %588 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 80
  br label %690

589:                                              ; preds = %576
  br i1 %581, label %590, label %765

590:                                              ; preds = %589
  %591 = getelementptr inbounds %struct.video_par, ptr %22, i64 0, i32 75
  %592 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %593 = sext i32 %30 to i64
  %594 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %595 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 80
  br label %596

596:                                              ; preds = %590, %685
  %597 = phi i64 [ 0, %590 ], [ %686, %685 ]
  %598 = load i32, ptr %591, align 4, !tbaa !213
  %599 = sext i32 %598 to i64
  %600 = icmp sge i64 %597, %599
  %601 = zext i1 %600 to i32
  store i32 %601, ptr %592, align 4, !tbaa !204
  %602 = select i1 %600, i64 2, i64 1
  %603 = zext i1 %600 to i64
  %604 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 %603
  %605 = load i32, ptr %604, align 4, !tbaa !53
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 88, i64 %602, i64 %606
  %608 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 89, i64 %602, i64 %606
  %609 = select i1 %25, ptr %607, ptr %608
  %610 = select i1 %600, i32 2, i32 0
  %611 = zext i1 %600 to i64
  %612 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %611
  %613 = select i1 %600, i64 2, i64 1
  br label %614

614:                                              ; preds = %596, %682
  %615 = phi i64 [ 0, %596 ], [ %683, %682 ]
  %616 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %593, i64 %597, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !54
  %618 = zext i8 %617 to i32
  %619 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %593, i64 %597, i64 %615
  %620 = load i8, ptr %619, align 1, !tbaa !54
  %621 = zext i8 %620 to i32
  %622 = add nuw nsw i32 %610, %618
  %623 = add nuw nsw i32 %621, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %622, i32 noundef %623, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %624 = load i32, ptr %9, align 4, !tbaa !53
  %625 = icmp sgt i32 %624, 0
  br i1 %625, label %626, label %682

626:                                              ; preds = %614
  %627 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %597, i64 %615
  %628 = shl nuw nsw i32 %621, 2
  %629 = shl nuw nsw i32 %618, 2
  %630 = zext nneg i32 %624 to i64
  br label %631

631:                                              ; preds = %626, %678
  %632 = phi i64 [ 0, %626 ], [ %680, %678 ]
  %633 = phi i32 [ 0, %626 ], [ %679, %678 ]
  %634 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %632
  %635 = load i32, ptr %634, align 4, !tbaa !53
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %678, label %637

637:                                              ; preds = %631
  %638 = load i8, ptr %627, align 1, !tbaa !54
  %639 = icmp ugt i8 %638, 63
  br i1 %639, label %644, label %640

640:                                              ; preds = %637
  %641 = zext nneg i8 %638 to i64
  %642 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %641
  %643 = load i64, ptr %642, align 8, !tbaa !61
  br label %644

644:                                              ; preds = %637, %640
  %645 = phi i64 [ %643, %640 ], [ 0, %637 ]
  %646 = load i64, ptr %594, align 8, !tbaa !61
  %647 = or i64 %646, %645
  store i64 %647, ptr %594, align 8, !tbaa !61
  %648 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %632
  %649 = load i32, ptr %648, align 4, !tbaa !53
  %650 = add i32 %633, 1
  %651 = add i32 %650, %649
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [2 x i8], ptr %40, i64 %652
  %654 = load i8, ptr %653, align 2, !tbaa !54
  %655 = zext i8 %654 to i32
  %656 = getelementptr inbounds [2 x i8], ptr %40, i64 %652, i64 1
  %657 = load i8, ptr %656, align 1, !tbaa !54
  %658 = zext i8 %657 to i32
  %659 = zext i8 %657 to i64
  %660 = zext i8 %654 to i64
  %661 = getelementptr inbounds [4 x i32], ptr %609, i64 %659, i64 %660
  %662 = load i32, ptr %661, align 4, !tbaa !53
  %663 = mul nsw i32 %662, %635
  %664 = load i32, ptr %612, align 4, !tbaa !53
  %665 = shl i32 %663, %664
  %666 = add nsw i32 %665, 8
  %667 = ashr i32 %666, 4
  %668 = load ptr, ptr %595, align 8, !tbaa !62
  %669 = getelementptr inbounds ptr, ptr %668, i64 %613
  %670 = load ptr, ptr %669, align 8, !tbaa !63
  %671 = add nuw nsw i32 %628, %658
  %672 = zext nneg i32 %671 to i64
  %673 = getelementptr inbounds ptr, ptr %670, i64 %672
  %674 = load ptr, ptr %673, align 8, !tbaa !63
  %675 = add nuw nsw i32 %629, %655
  %676 = zext nneg i32 %675 to i64
  %677 = getelementptr inbounds i32, ptr %674, i64 %676
  store i32 %667, ptr %677, align 4, !tbaa !53
  br label %678

678:                                              ; preds = %631, %644
  %679 = phi i32 [ %651, %644 ], [ %633, %631 ]
  %680 = add nuw nsw i64 %632, 1
  %681 = icmp eq i64 %680, %630
  br i1 %681, label %682, label %631, !llvm.loop !244

682:                                              ; preds = %678, %614
  %683 = add nuw nsw i64 %615, 1
  %684 = icmp eq i64 %683, 4
  br i1 %684, label %685, label %614, !llvm.loop !245

685:                                              ; preds = %682
  %686 = add nuw nsw i64 %597, 1
  %687 = load i32, ptr %579, align 8, !tbaa !212
  %688 = sext i32 %687 to i64
  %689 = icmp slt i64 %686, %688
  br i1 %689, label %596, label %765, !llvm.loop !246

690:                                              ; preds = %583, %760
  %691 = phi i64 [ 0, %583 ], [ %761, %760 ]
  %692 = load i32, ptr %584, align 4, !tbaa !213
  %693 = sext i32 %692 to i64
  %694 = icmp sge i64 %691, %693
  %695 = zext i1 %694 to i32
  store i32 %695, ptr %585, align 4, !tbaa !204
  %696 = select i1 %694, i32 2, i32 0
  %697 = select i1 %694, i64 2, i64 1
  br label %698

698:                                              ; preds = %690, %757
  %699 = phi i64 [ 0, %690 ], [ %758, %757 ]
  %700 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %586, i64 %691, i64 %699
  %701 = load i8, ptr %700, align 1, !tbaa !54
  %702 = zext i8 %701 to i32
  %703 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %586, i64 %691, i64 %699
  %704 = load i8, ptr %703, align 1, !tbaa !54
  %705 = zext i8 %704 to i32
  %706 = add nuw nsw i32 %696, %702
  %707 = add nuw nsw i32 %705, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %706, i32 noundef %707, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %708 = load i32, ptr %9, align 4, !tbaa !53
  %709 = icmp sgt i32 %708, 0
  br i1 %709, label %710, label %757

710:                                              ; preds = %698
  %711 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %691, i64 %699
  %712 = shl nuw nsw i32 %705, 2
  %713 = shl nuw nsw i32 %702, 2
  %714 = zext nneg i32 %708 to i64
  br label %715

715:                                              ; preds = %710, %753
  %716 = phi i64 [ 0, %710 ], [ %755, %753 ]
  %717 = phi i32 [ 0, %710 ], [ %754, %753 ]
  %718 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %716
  %719 = load i32, ptr %718, align 4, !tbaa !53
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %753, label %721

721:                                              ; preds = %715
  %722 = load i8, ptr %711, align 1, !tbaa !54
  %723 = icmp ugt i8 %722, 63
  br i1 %723, label %728, label %724

724:                                              ; preds = %721
  %725 = zext nneg i8 %722 to i64
  %726 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %725
  %727 = load i64, ptr %726, align 8, !tbaa !61
  br label %728

728:                                              ; preds = %721, %724
  %729 = phi i64 [ %727, %724 ], [ 0, %721 ]
  %730 = load i64, ptr %587, align 8, !tbaa !61
  %731 = or i64 %730, %729
  store i64 %731, ptr %587, align 8, !tbaa !61
  %732 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %716
  %733 = load i32, ptr %732, align 4, !tbaa !53
  %734 = add i32 %717, 1
  %735 = add i32 %734, %733
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [2 x i8], ptr %40, i64 %736
  %738 = load i8, ptr %737, align 2, !tbaa !54
  %739 = zext i8 %738 to i32
  %740 = getelementptr inbounds [2 x i8], ptr %40, i64 %736, i64 1
  %741 = load i8, ptr %740, align 1, !tbaa !54
  %742 = zext i8 %741 to i32
  %743 = load ptr, ptr %588, align 8, !tbaa !62
  %744 = getelementptr inbounds ptr, ptr %743, i64 %697
  %745 = load ptr, ptr %744, align 8, !tbaa !63
  %746 = add nuw nsw i32 %712, %742
  %747 = zext nneg i32 %746 to i64
  %748 = getelementptr inbounds ptr, ptr %745, i64 %747
  %749 = load ptr, ptr %748, align 8, !tbaa !63
  %750 = add nuw nsw i32 %713, %739
  %751 = zext nneg i32 %750 to i64
  %752 = getelementptr inbounds i32, ptr %749, i64 %751
  store i32 %719, ptr %752, align 4, !tbaa !53
  br label %753

753:                                              ; preds = %715, %728
  %754 = phi i32 [ %735, %728 ], [ %717, %715 ]
  %755 = add nuw nsw i64 %716, 1
  %756 = icmp eq i64 %755, %714
  br i1 %756, label %757, label %715, !llvm.loop !247

757:                                              ; preds = %753, %698
  %758 = add nuw nsw i64 %699, 1
  %759 = icmp eq i64 %758, 4
  br i1 %759, label %760, label %698, !llvm.loop !248

760:                                              ; preds = %757
  %761 = add nuw nsw i64 %691, 1
  %762 = load i32, ptr %579, align 8, !tbaa !212
  %763 = sext i32 %762 to i64
  %764 = icmp slt i64 %761, %763
  br i1 %764, label %690, label %765, !llvm.loop !249

765:                                              ; preds = %760, %685, %582, %589, %567
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_400(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 42
  %14 = load i32, ptr %13, align 8, !tbaa !128
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %20 = load i32, ptr %19, align 8, !tbaa !81
  %21 = icmp eq i32 %20, 1
  %22 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !186
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %27 = load i32, ptr %26, align 8, !tbaa !149
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i1 [ false, %1 ], [ %28, %25 ]
  %31 = select i1 %30, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %33 = load i16, ptr %32, align 8, !tbaa !93
  switch i16 %33, label %34 [
    i16 10, label %168
    i16 14, label %168
    i16 9, label %35
    i16 12, label %35
    i16 13, label %35
  ]

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %29, %29, %29, %34
  %36 = phi i32 [ 11, %34 ], [ 6, %29 ], [ 6, %29 ], [ 6, %29 ]
  store i32 %36, ptr %6, align 8, !tbaa !129
  %37 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 57
  %38 = load ptr, ptr %37, align 8, !tbaa !131
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds i8, ptr %16, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !54
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.datapartition, ptr %38, i64 %42
  switch i16 %33, label %46 [
    i16 9, label %44
    i16 12, label %44
    i16 13, label %44
  ]

44:                                               ; preds = %35, %35, %35
  %45 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 120
  br label %48

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 121
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %50, ptr %51, align 8, !tbaa !138
  %52 = getelementptr inbounds %struct.datapartition, ptr %38, i64 %42, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !153
  %54 = call i32 %53(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %43) #15
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !154
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %56, ptr %57, align 4, !tbaa !95
  %58 = load i16, ptr %32, align 8, !tbaa !93
  %59 = add i16 %58, -1
  %60 = icmp ult i16 %59, 3
  br i1 %60, label %77, label %61

61:                                               ; preds = %48
  %62 = icmp eq i16 %58, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 33
  %65 = load i32, ptr %64, align 4, !tbaa !97
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !123
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %69, i64 0, i32 32
  %71 = load i32, ptr %70, align 4, !tbaa !163
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %63, %61
  %74 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %75 = load i32, ptr %74, align 8, !tbaa !162
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %48, %73, %67
  switch i16 %58, label %78 [
    i16 13, label %96
    i16 9, label %96
  ]

78:                                               ; preds = %77
  %79 = and i32 %56, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !166
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  store i32 0, ptr %6, align 8, !tbaa !129
  %86 = load ptr, ptr %37, align 8, !tbaa !131
  %87 = load i8, ptr %16, align 4, !tbaa !54
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds %struct.datapartition, ptr %86, i64 %88
  %90 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %90, align 8, !tbaa !139
  %91 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %91, align 4, !tbaa !157
  %92 = load ptr, ptr %89, align 8, !tbaa !133
  %93 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %92) #15
  %94 = load i32, ptr %55, align 4, !tbaa !154
  %95 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %94, ptr %95, align 4, !tbaa !167
  br label %96

96:                                               ; preds = %78, %77, %77, %73, %85, %81
  %97 = icmp eq i32 %56, 0
  br i1 %97, label %274, label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %19, align 8, !tbaa !81
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef %101)
  %102 = load i32, ptr %13, align 8, !tbaa !128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %274, label %104

104:                                              ; preds = %98
  %105 = load i32, ptr %19, align 8, !tbaa !81
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 75
  %109 = load i32, ptr %108, align 4, !tbaa !187
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %112, align 1, !tbaa !188
  br label %113

113:                                              ; preds = %111, %107, %104
  br i1 %21, label %114, label %121

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 74
  %116 = load i32, ptr %115, align 8, !tbaa !170
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %119, align 2, !tbaa !156
  %120 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %120, align 1, !tbaa !188
  br label %121

121:                                              ; preds = %118, %114, %113
  %122 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %123 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 160
  %124 = load ptr, ptr %123, align 8, !tbaa !189
  %125 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 81, i64 1
  call void %124(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %125, ptr noundef nonnull %5) #15
  %126 = load ptr, ptr %123, align 8, !tbaa !189
  call void %126(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %125, ptr noundef nonnull %4) #15
  %127 = load i32, ptr %19, align 8, !tbaa !81
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !111
  %132 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %131, i64 0, i32 30
  %133 = load i32, ptr %132, align 4, !tbaa !168
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %129, %121
  %136 = load i32, ptr %5, align 4, !tbaa !190
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 35
  %140 = load ptr, ptr %139, align 8, !tbaa !148
  %141 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !192
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.macroblock, ptr %140, i64 %143, i32 23
  %145 = load i8, ptr %144, align 1, !tbaa !188
  %146 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %147 = load i8, ptr %146, align 1, !tbaa !188
  %148 = or i8 %147, %145
  store i8 %148, ptr %146, align 1, !tbaa !188
  br label %149

149:                                              ; preds = %138, %135
  %150 = load i32, ptr %4, align 4, !tbaa !190
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.video_par, ptr %122, i64 0, i32 35
  %154 = load ptr, ptr %153, align 8, !tbaa !148
  %155 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !192
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.macroblock, ptr %154, i64 %157, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !188
  %160 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %161 = load i8, ptr %160, align 1, !tbaa !188
  %162 = or i8 %161, %159
  store i8 %162, ptr %160, align 1, !tbaa !188
  br label %163

163:                                              ; preds = %129, %149, %152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %164 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %165 = load i8, ptr %164, align 1, !tbaa !188
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %274, label %167

167:                                              ; preds = %163
  store i32 0, ptr %57, align 4, !tbaa !95
  br label %274

168:                                              ; preds = %29, %29
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %170 = load i32, ptr %169, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 17)
  %171 = load i32, ptr %13, align 8, !tbaa !128
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %227, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 74
  %175 = load i32, ptr %174, align 8, !tbaa !170
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %178, align 2, !tbaa !156
  %179 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %179, align 1, !tbaa !188
  br label %180

180:                                              ; preds = %177, %173
  %181 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %182 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 160
  %183 = load ptr, ptr %182, align 8, !tbaa !189
  %184 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 81, i64 1
  call void %183(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %184, ptr noundef nonnull %3) #15
  %185 = load ptr, ptr %182, align 8, !tbaa !189
  call void %185(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %184, ptr noundef nonnull %2) #15
  %186 = load i32, ptr %19, align 8, !tbaa !81
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !111
  %191 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %190, i64 0, i32 30
  %192 = load i32, ptr %191, align 4, !tbaa !168
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %188, %180
  %195 = load i32, ptr %3, align 4, !tbaa !190
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 35
  %199 = load ptr, ptr %198, align 8, !tbaa !148
  %200 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !192
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.macroblock, ptr %199, i64 %202, i32 23
  %204 = load i8, ptr %203, align 1, !tbaa !188
  %205 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %206 = load i8, ptr %205, align 1, !tbaa !188
  %207 = or i8 %206, %204
  store i8 %207, ptr %205, align 1, !tbaa !188
  br label %208

208:                                              ; preds = %197, %194
  %209 = load i32, ptr %2, align 4, !tbaa !190
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.video_par, ptr %181, i64 0, i32 35
  %213 = load ptr, ptr %212, align 8, !tbaa !148
  %214 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !192
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.macroblock, ptr %213, i64 %216, i32 23
  %218 = load i8, ptr %217, align 1, !tbaa !188
  %219 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %220 = load i8, ptr %219, align 1, !tbaa !188
  %221 = or i8 %220, %218
  store i8 %221, ptr %219, align 1, !tbaa !188
  br label %222

222:                                              ; preds = %188, %208, %211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %223 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %224 = load i8, ptr %223, align 1, !tbaa !188
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  store i32 0, ptr %169, align 4, !tbaa !95
  br label %227

227:                                              ; preds = %222, %226, %168
  %228 = phi i32 [ 0, %226 ], [ %170, %222 ], [ %170, %168 ]
  %229 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %230 = load i8, ptr %229, align 1, !tbaa !188
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %274

232:                                              ; preds = %227
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %233 = load i32, ptr %9, align 4, !tbaa !53
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 80
  %237 = zext nneg i32 %233 to i64
  br label %238

238:                                              ; preds = %235, %263
  %239 = phi i64 [ 0, %235 ], [ %265, %263 ]
  %240 = phi ptr [ %31, %235 ], [ %264, %263 ]
  %241 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %239
  %242 = load i32, ptr %241, align 4, !tbaa !53
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %263, label %244

244:                                              ; preds = %238
  %245 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %239
  %246 = load i32, ptr %245, align 4, !tbaa !53
  %247 = shl nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %240, i64 %248
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  %251 = load i8, ptr %249, align 1, !tbaa !54
  %252 = zext i8 %251 to i64
  %253 = shl nuw nsw i64 %252, 2
  %254 = getelementptr inbounds i8, ptr %249, i64 2
  %255 = load i8, ptr %250, align 1, !tbaa !54
  %256 = zext i8 %255 to i64
  %257 = shl nuw nsw i64 %256, 2
  %258 = load ptr, ptr %236, align 8, !tbaa !62
  %259 = load ptr, ptr %258, align 8, !tbaa !63
  %260 = getelementptr inbounds ptr, ptr %259, i64 %257
  %261 = load ptr, ptr %260, align 8, !tbaa !63
  %262 = getelementptr inbounds i32, ptr %261, i64 %253
  store i32 %242, ptr %262, align 4, !tbaa !53
  br label %263

263:                                              ; preds = %238, %244
  %264 = phi ptr [ %254, %244 ], [ %240, %238 ]
  %265 = add nuw nsw i64 %239, 1
  %266 = icmp eq i64 %265, %237
  br i1 %266, label %267, label %238, !llvm.loop !250

267:                                              ; preds = %263, %232
  %268 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %269 = load i32, ptr %268, align 4, !tbaa !60
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 46
  %273 = load i32, ptr %272, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %273) #15
  br label %274

274:                                              ; preds = %227, %271, %267, %96, %163, %167, %98
  %275 = phi i32 [ %228, %227 ], [ %228, %271 ], [ %228, %267 ], [ 0, %167 ], [ %56, %163 ], [ %56, %98 ], [ 0, %96 ]
  %276 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 29
  %277 = load i32, ptr %276, align 4, !tbaa !150
  %278 = load ptr, ptr %17, align 8, !tbaa !34
  %279 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %277, ptr %279, align 4, !tbaa !46
  %280 = getelementptr inbounds %struct.video_par, ptr %278, i64 0, i32 67
  %281 = load i32, ptr %280, align 4, !tbaa !58
  %282 = add nsw i32 %281, %277
  %283 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %282, ptr %283, align 8, !tbaa !53
  %284 = load ptr, ptr %0, align 8, !tbaa !42
  %285 = getelementptr inbounds %struct.slice, ptr %284, i64 0, i32 125
  %286 = load ptr, ptr %285, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.video_par, ptr %278, i64 0, i32 68
  br label %288

288:                                              ; preds = %304, %274
  %289 = phi i64 [ 0, %274 ], [ %308, %304 ]
  %290 = load i32, ptr %287, align 8, !tbaa !47
  %291 = sub nsw i32 0, %290
  %292 = getelementptr inbounds %struct.storable_picture, ptr %286, i64 0, i32 56, i64 %289
  %293 = load i32, ptr %292, align 4, !tbaa !53
  %294 = add nsw i32 %293, %277
  %295 = call i32 @llvm.smax.i32(i32 %294, i32 %291)
  %296 = call i32 @llvm.smin.i32(i32 %295, i32 51)
  %297 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %289
  store i32 %296, ptr %297, align 4, !tbaa !53
  %298 = icmp slt i32 %295, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %288
  %300 = zext nneg i32 %296 to i64
  %301 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !54
  %303 = zext i8 %302 to i32
  br label %304

304:                                              ; preds = %299, %288
  %305 = phi i32 [ %303, %299 ], [ %296, %288 ]
  store i32 %305, ptr %297, align 4, !tbaa !53
  %306 = load i32, ptr %287, align 8, !tbaa !47
  %307 = add nsw i32 %306, %305
  %308 = add nuw nsw i64 %289, 1
  %309 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %308
  store i32 %307, ptr %309, align 4, !tbaa !53
  %310 = icmp eq i64 %289, 0
  br i1 %310, label %288, label %311, !llvm.loop !55

311:                                              ; preds = %304
  %312 = load i32, ptr %283, align 8, !tbaa !53
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.video_par, ptr %278, i64 0, i32 73
  %316 = load i32, ptr %315, align 4, !tbaa !59
  %317 = icmp eq i32 %316, 1
  %318 = zext i1 %317 to i32
  br label %319

319:                                              ; preds = %311, %314
  %320 = phi i32 [ 0, %311 ], [ %318, %314 ]
  %321 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %320, ptr %321, align 4, !tbaa !60
  %322 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 132
  %323 = load ptr, ptr %322, align 8, !tbaa !197
  %324 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 46
  %325 = load i32, ptr %324, align 8, !tbaa !196
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !53
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, ptr %323, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !53
  %332 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 133
  %333 = load ptr, ptr %332, align 8, !tbaa !198
  %334 = getelementptr inbounds i32, ptr %333, i64 %329
  %335 = load i32, ptr %334, align 4, !tbaa !53
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 88, i64 %326, i64 %336
  %338 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 89, i64 %326, i64 %336
  %339 = select i1 %21, ptr %337, ptr %338
  %340 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 90, i64 %326, i64 %336
  %341 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 91, i64 %326, i64 %336
  %342 = select i1 %21, ptr %340, ptr %341
  %343 = icmp eq i32 %275, 0
  br i1 %343, label %356, label %344

344:                                              ; preds = %319
  %345 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %346 = load i32, ptr %345, align 4, !tbaa !167
  %347 = icmp eq i32 %346, 0
  %348 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %349 = load ptr, ptr %348, align 8, !tbaa !184
  %350 = sext i32 %11 to i64
  %351 = getelementptr inbounds ptr, ptr %349, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !63
  %353 = load ptr, ptr %352, align 8, !tbaa !63
  br i1 %347, label %354, label %355

354:                                              ; preds = %344
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %339, i32 noundef %331, i32 noundef %275, ptr noundef %353)
  br label %364

355:                                              ; preds = %344
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %342, i32 noundef %331, i32 noundef %275, ptr noundef %353)
  br label %364

356:                                              ; preds = %319
  %357 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 29
  %358 = load ptr, ptr %357, align 8, !tbaa !184
  %359 = sext i32 %11 to i64
  %360 = getelementptr inbounds ptr, ptr %358, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !63
  %362 = load ptr, ptr %361, align 8, !tbaa !63
  %363 = load ptr, ptr %362, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %363, i8 0, i64 16, i1 false)
  br label %364

364:                                              ; preds = %354, %355, %356
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @read_CBP_and_coeffs_from_NAL_CAVLC_420(ptr noundef %0) #3 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.syntaxelement, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [4 x i32], align 16
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %15 = load ptr, ptr %0, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 42
  %17 = load i32, ptr %16, align 8, !tbaa !128
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 22
  %23 = load i32, ptr %22, align 8, !tbaa !221
  switch i32 %23, label %34 [
    i32 3, label %24
    i32 4, label %30
  ]

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %26 = load i32, ptr %25, align 8, !tbaa !81
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %23, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %1, %28
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %32 = load i16, ptr %31, align 8, !tbaa !93
  %33 = icmp eq i16 %32, 12
  br label %34

34:                                               ; preds = %1, %28, %30, %24
  %35 = phi i1 [ true, %24 ], [ false, %28 ], [ %33, %30 ], [ false, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %37 = load i32, ptr %36, align 8, !tbaa !81
  %38 = icmp eq i32 %37, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  %39 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 125
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 48
  %42 = load i32, ptr %41, align 4, !tbaa !173
  %43 = add nsw i32 %42, -1
  %44 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 33
  %45 = load i32, ptr %44, align 4, !tbaa !186
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %49 = load i32, ptr %48, align 8, !tbaa !149
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %47, %34
  %52 = phi i1 [ false, %34 ], [ %50, %47 ]
  %53 = select i1 %52, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  %54 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %55 = load i16, ptr %54, align 8, !tbaa !93
  switch i16 %55, label %56 [
    i16 10, label %190
    i16 14, label %190
    i16 9, label %57
    i16 12, label %57
    i16 13, label %57
  ]

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %51, %51, %51, %56
  %58 = phi i32 [ 11, %56 ], [ 6, %51 ], [ 6, %51 ], [ 6, %51 ]
  store i32 %58, ptr %6, align 8, !tbaa !129
  %59 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 57
  %60 = load ptr, ptr %59, align 8, !tbaa !131
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds i8, ptr %19, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !54
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds %struct.datapartition, ptr %60, i64 %64
  switch i16 %55, label %68 [
    i16 9, label %66
    i16 12, label %66
    i16 13, label %66
  ]

66:                                               ; preds = %57, %57, %57
  %67 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 120
  br label %70

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 121
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi ptr [ %67, %66 ], [ %69, %68 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 8
  store ptr %72, ptr %73, align 8, !tbaa !138
  %74 = getelementptr inbounds %struct.datapartition, ptr %60, i64 %64, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !153
  %76 = call i32 %75(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %65) #15
  %77 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !154
  %79 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 %78, ptr %79, align 4, !tbaa !95
  %80 = load i16, ptr %54, align 8, !tbaa !93
  %81 = add i16 %80, -1
  %82 = icmp ult i16 %81, 3
  br i1 %82, label %99, label %83

83:                                               ; preds = %70
  %84 = icmp eq i16 %80, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 33
  %87 = load i32, ptr %86, align 4, !tbaa !97
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !123
  %92 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %91, i64 0, i32 32
  %93 = load i32, ptr %92, align 4, !tbaa !163
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89, %85, %83
  %96 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 55
  %97 = load i32, ptr %96, align 8, !tbaa !162
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %70, %95, %89
  switch i16 %80, label %100 [
    i16 13, label %118
    i16 9, label %118
  ]

100:                                              ; preds = %99
  %101 = and i32 %78, 15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 9
  %105 = load i32, ptr %104, align 4, !tbaa !166
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %103
  store i32 0, ptr %6, align 8, !tbaa !129
  %108 = load ptr, ptr %59, align 8, !tbaa !131
  %109 = load i8, ptr %19, align 4, !tbaa !54
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.datapartition, ptr %108, i64 %110
  %112 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 9
  store ptr @readMB_transform_size_flag_CABAC, ptr %112, align 8, !tbaa !139
  %113 = getelementptr inbounds %struct.syntaxelement, ptr %6, i64 0, i32 3
  store i32 1, ptr %113, align 4, !tbaa !157
  %114 = load ptr, ptr %111, align 8, !tbaa !133
  %115 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %6, ptr noundef %114) #15
  %116 = load i32, ptr %77, align 4, !tbaa !154
  %117 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  store i32 %116, ptr %117, align 4, !tbaa !167
  br label %118

118:                                              ; preds = %100, %99, %99, %95, %107, %103
  %119 = icmp eq i32 %78, 0
  br i1 %119, label %296, label %120

120:                                              ; preds = %118
  %121 = load i32, ptr %36, align 8, !tbaa !81
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 16, i32 17
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %19, i32 noundef %123)
  %124 = load i32, ptr %16, align 8, !tbaa !128
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %296, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %36, align 8, !tbaa !81
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 75
  %131 = load i32, ptr %130, align 4, !tbaa !187
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %134, align 1, !tbaa !188
  br label %135

135:                                              ; preds = %133, %129, %126
  br i1 %38, label %136, label %143

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 74
  %138 = load i32, ptr %137, align 8, !tbaa !170
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %141, align 2, !tbaa !156
  %142 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %142, align 1, !tbaa !188
  br label %143

143:                                              ; preds = %140, %136, %135
  %144 = load ptr, ptr %20, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %145 = getelementptr inbounds %struct.video_par, ptr %144, i64 0, i32 160
  %146 = load ptr, ptr %145, align 8, !tbaa !189
  %147 = getelementptr inbounds %struct.video_par, ptr %144, i64 0, i32 81, i64 1
  call void %146(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %147, ptr noundef nonnull %5) #15
  %148 = load ptr, ptr %145, align 8, !tbaa !189
  call void %148(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %147, ptr noundef nonnull %4) #15
  %149 = load i32, ptr %36, align 8, !tbaa !81
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.video_par, ptr %144, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !111
  %154 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %153, i64 0, i32 30
  %155 = load i32, ptr %154, align 4, !tbaa !168
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %151, %143
  %158 = load i32, ptr %5, align 4, !tbaa !190
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.video_par, ptr %144, i64 0, i32 35
  %162 = load ptr, ptr %161, align 8, !tbaa !148
  %163 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !192
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.macroblock, ptr %162, i64 %165, i32 23
  %167 = load i8, ptr %166, align 1, !tbaa !188
  %168 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %169 = load i8, ptr %168, align 1, !tbaa !188
  %170 = or i8 %169, %167
  store i8 %170, ptr %168, align 1, !tbaa !188
  br label %171

171:                                              ; preds = %160, %157
  %172 = load i32, ptr %4, align 4, !tbaa !190
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.video_par, ptr %144, i64 0, i32 35
  %176 = load ptr, ptr %175, align 8, !tbaa !148
  %177 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !192
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.macroblock, ptr %176, i64 %179, i32 23
  %181 = load i8, ptr %180, align 1, !tbaa !188
  %182 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %183 = load i8, ptr %182, align 1, !tbaa !188
  %184 = or i8 %183, %181
  store i8 %184, ptr %182, align 1, !tbaa !188
  br label %185

185:                                              ; preds = %151, %171, %174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %186 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %187 = load i8, ptr %186, align 1, !tbaa !188
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %296, label %189

189:                                              ; preds = %185
  store i32 0, ptr %79, align 4, !tbaa !95
  br label %296

190:                                              ; preds = %51, %51
  %191 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %192 = load i32, ptr %191, align 4, !tbaa !95
  call fastcc void @read_delta_quant(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %19, i32 noundef 17)
  %193 = load i32, ptr %16, align 8, !tbaa !128
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %249, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 74
  %197 = load i32, ptr %196, align 8, !tbaa !170
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 22
  store i8 1, ptr %200, align 2, !tbaa !156
  %201 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  store i8 1, ptr %201, align 1, !tbaa !188
  br label %202

202:                                              ; preds = %199, %195
  %203 = load ptr, ptr %20, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %204 = getelementptr inbounds %struct.video_par, ptr %203, i64 0, i32 160
  %205 = load ptr, ptr %204, align 8, !tbaa !189
  %206 = getelementptr inbounds %struct.video_par, ptr %203, i64 0, i32 81, i64 1
  call void %205(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %206, ptr noundef nonnull %3) #15
  %207 = load ptr, ptr %204, align 8, !tbaa !189
  call void %207(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %206, ptr noundef nonnull %2) #15
  %208 = load i32, ptr %36, align 8, !tbaa !81
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.video_par, ptr %203, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !111
  %213 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %212, i64 0, i32 30
  %214 = load i32, ptr %213, align 4, !tbaa !168
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %244

216:                                              ; preds = %210, %202
  %217 = load i32, ptr %3, align 4, !tbaa !190
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.video_par, ptr %203, i64 0, i32 35
  %221 = load ptr, ptr %220, align 8, !tbaa !148
  %222 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !192
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.macroblock, ptr %221, i64 %224, i32 23
  %226 = load i8, ptr %225, align 1, !tbaa !188
  %227 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %228 = load i8, ptr %227, align 1, !tbaa !188
  %229 = or i8 %228, %226
  store i8 %229, ptr %227, align 1, !tbaa !188
  br label %230

230:                                              ; preds = %219, %216
  %231 = load i32, ptr %2, align 4, !tbaa !190
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %244, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.video_par, ptr %203, i64 0, i32 35
  %235 = load ptr, ptr %234, align 8, !tbaa !148
  %236 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %237 = load i32, ptr %236, align 4, !tbaa !192
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.macroblock, ptr %235, i64 %238, i32 23
  %240 = load i8, ptr %239, align 1, !tbaa !188
  %241 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %242 = load i8, ptr %241, align 1, !tbaa !188
  %243 = or i8 %242, %240
  store i8 %243, ptr %241, align 1, !tbaa !188
  br label %244

244:                                              ; preds = %210, %230, %233
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %245 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %246 = load i8, ptr %245, align 1, !tbaa !188
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  store i32 0, ptr %191, align 4, !tbaa !95
  br label %249

249:                                              ; preds = %244, %248, %190
  %250 = phi i32 [ 0, %248 ], [ %192, %244 ], [ %192, %190 ]
  %251 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 23
  %252 = load i8, ptr %251, align 1, !tbaa !188
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %296

254:                                              ; preds = %249
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %255 = load i32, ptr %9, align 4, !tbaa !53
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %289

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 80
  %259 = zext nneg i32 %255 to i64
  br label %260

260:                                              ; preds = %257, %285
  %261 = phi i64 [ 0, %257 ], [ %287, %285 ]
  %262 = phi ptr [ %53, %257 ], [ %286, %285 ]
  %263 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %261
  %264 = load i32, ptr %263, align 4, !tbaa !53
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %285, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %261
  %268 = load i32, ptr %267, align 4, !tbaa !53
  %269 = shl nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %262, i64 %270
  %272 = getelementptr inbounds i8, ptr %271, i64 1
  %273 = load i8, ptr %271, align 1, !tbaa !54
  %274 = zext i8 %273 to i64
  %275 = shl nuw nsw i64 %274, 2
  %276 = getelementptr inbounds i8, ptr %271, i64 2
  %277 = load i8, ptr %272, align 1, !tbaa !54
  %278 = zext i8 %277 to i64
  %279 = shl nuw nsw i64 %278, 2
  %280 = load ptr, ptr %258, align 8, !tbaa !62
  %281 = load ptr, ptr %280, align 8, !tbaa !63
  %282 = getelementptr inbounds ptr, ptr %281, i64 %279
  %283 = load ptr, ptr %282, align 8, !tbaa !63
  %284 = getelementptr inbounds i32, ptr %283, i64 %275
  store i32 %264, ptr %284, align 4, !tbaa !53
  br label %285

285:                                              ; preds = %260, %266
  %286 = phi ptr [ %276, %266 ], [ %262, %260 ]
  %287 = add nuw nsw i64 %261, 1
  %288 = icmp eq i64 %287, %259
  br i1 %288, label %289, label %260, !llvm.loop !251

289:                                              ; preds = %285, %254
  %290 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %291 = load i32, ptr %290, align 4, !tbaa !60
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 46
  %295 = load i32, ptr %294, align 8, !tbaa !196
  call void @itrans_2(ptr noundef nonnull %0, i32 noundef %295) #15
  br label %296

296:                                              ; preds = %249, %293, %289, %118, %185, %189, %120
  %297 = phi i32 [ %250, %249 ], [ %250, %293 ], [ %250, %289 ], [ 0, %189 ], [ %78, %185 ], [ %78, %120 ], [ 0, %118 ]
  %298 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 29
  %299 = load i32, ptr %298, align 4, !tbaa !150
  %300 = load ptr, ptr %20, align 8, !tbaa !34
  %301 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 14
  store i32 %299, ptr %301, align 4, !tbaa !46
  %302 = getelementptr inbounds %struct.video_par, ptr %300, i64 0, i32 67
  %303 = load i32, ptr %302, align 4, !tbaa !58
  %304 = add nsw i32 %303, %299
  %305 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16
  store i32 %304, ptr %305, align 8, !tbaa !53
  %306 = load ptr, ptr %0, align 8, !tbaa !42
  %307 = getelementptr inbounds %struct.slice, ptr %306, i64 0, i32 125
  %308 = load ptr, ptr %307, align 8, !tbaa !43
  %309 = getelementptr inbounds %struct.video_par, ptr %300, i64 0, i32 68
  br label %310

310:                                              ; preds = %326, %296
  %311 = phi i64 [ 0, %296 ], [ %330, %326 ]
  %312 = load i32, ptr %309, align 8, !tbaa !47
  %313 = sub nsw i32 0, %312
  %314 = getelementptr inbounds %struct.storable_picture, ptr %308, i64 0, i32 56, i64 %311
  %315 = load i32, ptr %314, align 4, !tbaa !53
  %316 = add nsw i32 %315, %299
  %317 = call i32 @llvm.smax.i32(i32 %316, i32 %313)
  %318 = call i32 @llvm.smin.i32(i32 %317, i32 51)
  %319 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 15, i64 %311
  store i32 %318, ptr %319, align 4, !tbaa !53
  %320 = icmp slt i32 %317, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %310
  %322 = zext nneg i32 %318 to i64
  %323 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !54
  %325 = zext i8 %324 to i32
  br label %326

326:                                              ; preds = %321, %310
  %327 = phi i32 [ %325, %321 ], [ %318, %310 ]
  store i32 %327, ptr %319, align 4, !tbaa !53
  %328 = load i32, ptr %309, align 8, !tbaa !47
  %329 = add nsw i32 %328, %327
  %330 = add nuw nsw i64 %311, 1
  %331 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %330
  store i32 %329, ptr %331, align 4, !tbaa !53
  %332 = icmp eq i64 %311, 0
  br i1 %332, label %310, label %333, !llvm.loop !55

333:                                              ; preds = %326
  %334 = load i32, ptr %305, align 8, !tbaa !53
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.video_par, ptr %300, i64 0, i32 73
  %338 = load i32, ptr %337, align 4, !tbaa !59
  %339 = icmp eq i32 %338, 1
  %340 = zext i1 %339 to i32
  br label %341

341:                                              ; preds = %333, %336
  %342 = phi i32 [ 0, %333 ], [ %340, %336 ]
  %343 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  store i32 %342, ptr %343, align 4, !tbaa !60
  %344 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 132
  %345 = load ptr, ptr %344, align 8, !tbaa !197
  %346 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 46
  %347 = load i32, ptr %346, align 8, !tbaa !196
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !53
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, ptr %345, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !53
  %354 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 133
  %355 = load ptr, ptr %354, align 8, !tbaa !198
  %356 = getelementptr inbounds i32, ptr %355, i64 %351
  %357 = load i32, ptr %356, align 4, !tbaa !53
  %358 = load i32, ptr %41, align 4, !tbaa !173
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %373, label %360

360:                                              ; preds = %341, %360
  %361 = phi i64 [ %362, %360 ], [ 0, %341 ]
  %362 = add nuw nsw i64 %361, 1
  %363 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !53
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, ptr %345, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !53
  %368 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %361
  store i32 %367, ptr %368, align 4, !tbaa !53
  %369 = getelementptr inbounds i32, ptr %355, i64 %365
  %370 = load i32, ptr %369, align 4, !tbaa !53
  %371 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 %361
  store i32 %370, ptr %371, align 4, !tbaa !53
  %372 = icmp eq i64 %361, 0
  br i1 %372, label %360, label %373, !llvm.loop !252

373:                                              ; preds = %360, %341
  %374 = sext i32 %357 to i64
  %375 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 88, i64 %348, i64 %374
  %376 = sext i32 %357 to i64
  %377 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 89, i64 %348, i64 %376
  %378 = select i1 %38, ptr %375, ptr %377
  %379 = sext i32 %357 to i64
  %380 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 90, i64 %348, i64 %379
  %381 = sext i32 %357 to i64
  %382 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 91, i64 %348, i64 %381
  %383 = select i1 %38, ptr %380, ptr %382
  %384 = icmp eq i32 %297, 0
  br i1 %384, label %397, label %385

385:                                              ; preds = %373
  %386 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %387 = load i32, ptr %386, align 4, !tbaa !167
  %388 = icmp eq i32 %387, 0
  %389 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 29
  %390 = load ptr, ptr %389, align 8, !tbaa !184
  %391 = sext i32 %14 to i64
  %392 = getelementptr inbounds ptr, ptr %390, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !63
  %394 = load ptr, ptr %393, align 8, !tbaa !63
  br i1 %388, label %395, label %396

395:                                              ; preds = %385
  call fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %378, i32 noundef %353, i32 noundef %297, ptr noundef %394)
  br label %405

396:                                              ; preds = %385
  call fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %383, i32 noundef %353, i32 noundef %297, ptr noundef %394)
  br label %405

397:                                              ; preds = %373
  %398 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 29
  %399 = load ptr, ptr %398, align 8, !tbaa !184
  %400 = sext i32 %14 to i64
  %401 = getelementptr inbounds ptr, ptr %399, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !63
  %403 = load ptr, ptr %402, align 8, !tbaa !63
  %404 = load ptr, ptr %403, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %404, i8 0, i64 16, i1 false)
  br label %405

405:                                              ; preds = %395, %396, %397
  %406 = load i32, ptr %41, align 4, !tbaa !173
  %407 = icmp eq i32 %406, 3
  br i1 %407, label %714, label %408

408:                                              ; preds = %405
  %409 = icmp sgt i32 %297, 15
  %410 = icmp eq i32 %406, 1
  %411 = and i1 %409, %410
  br i1 %411, label %412, label %514

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 82
  %414 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %415 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 80
  %416 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 1
  %417 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 2
  %418 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 3
  %419 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 80
  %420 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 82, i64 1
  %421 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 82, i64 2
  %422 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 82, i64 3
  br label %423

423:                                              ; preds = %412, %508
  %424 = phi i64 [ 0, %412 ], [ %512, %508 ]
  %425 = lshr exact i64 %424, 1
  %426 = add nuw nsw i64 %425, 1
  %427 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 %425
  %428 = load i32, ptr %427, align 4, !tbaa !53
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 88, i64 %426, i64 %429
  %431 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 89, i64 %426, i64 %429
  %432 = select i1 %38, ptr %430, ptr %431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %413, i8 0, i64 16, i1 false)
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %433 = load i32, ptr %9, align 4, !tbaa !53
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %460

435:                                              ; preds = %423
  %436 = trunc i64 %424 to i32
  %437 = shl i32 %436, 1
  %438 = shl nuw nsw i32 983040, %437
  %439 = zext nneg i32 %438 to i64
  %440 = zext nneg i32 %433 to i64
  br label %441

441:                                              ; preds = %435, %456
  %442 = phi i64 [ 0, %435 ], [ %458, %456 ]
  %443 = phi i32 [ -1, %435 ], [ %457, %456 ]
  %444 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %442
  %445 = load i32, ptr %444, align 4, !tbaa !53
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %456, label %447

447:                                              ; preds = %441
  %448 = load i64, ptr %414, align 8, !tbaa !61
  %449 = or i64 %448, %439
  store i64 %449, ptr %414, align 8, !tbaa !61
  %450 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %442
  %451 = load i32, ptr %450, align 4, !tbaa !53
  %452 = add i32 %443, 1
  %453 = add i32 %452, %451
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 82, i64 %454
  store i32 %445, ptr %455, align 4, !tbaa !53
  br label %456

456:                                              ; preds = %441, %447
  %457 = phi i32 [ %453, %447 ], [ %443, %441 ]
  %458 = add nuw nsw i64 %442, 1
  %459 = icmp eq i64 %458, %440
  br i1 %459, label %460, label %441, !llvm.loop !253

460:                                              ; preds = %456, %423
  br i1 %35, label %464, label %461

461:                                              ; preds = %460
  %462 = load i32, ptr %343, align 4, !tbaa !60
  %463 = icmp eq i32 %462, 1
  br i1 %463, label %464, label %477

464:                                              ; preds = %461, %460
  %465 = load i32, ptr %413, align 8, !tbaa !53
  %466 = load ptr, ptr %419, align 8, !tbaa !62
  %467 = getelementptr ptr, ptr %466, i64 %425
  %468 = getelementptr ptr, ptr %467, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !63
  %470 = load ptr, ptr %469, align 8, !tbaa !63
  store i32 %465, ptr %470, align 4, !tbaa !53
  %471 = load i32, ptr %420, align 4, !tbaa !53
  %472 = getelementptr inbounds i32, ptr %470, i64 4
  store i32 %471, ptr %472, align 4, !tbaa !53
  %473 = load i32, ptr %421, align 8, !tbaa !53
  %474 = getelementptr inbounds ptr, ptr %469, i64 4
  %475 = load ptr, ptr %474, align 8, !tbaa !63
  store i32 %473, ptr %475, align 4, !tbaa !53
  %476 = load i32, ptr %422, align 4, !tbaa !53
  br label %508

477:                                              ; preds = %461
  call void @ihadamard2x2(ptr noundef nonnull %413, ptr noundef nonnull %12) #15
  %478 = load i32, ptr %12, align 16, !tbaa !53
  %479 = load i32, ptr %432, align 4, !tbaa !53
  %480 = mul nsw i32 %479, %478
  %481 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %425
  %482 = load i32, ptr %481, align 4, !tbaa !53
  %483 = shl i32 %480, %482
  %484 = ashr i32 %483, 5
  %485 = load ptr, ptr %415, align 8, !tbaa !62
  %486 = getelementptr ptr, ptr %485, i64 %425
  %487 = getelementptr ptr, ptr %486, i64 1
  %488 = load ptr, ptr %487, align 8, !tbaa !63
  %489 = load ptr, ptr %488, align 8, !tbaa !63
  store i32 %484, ptr %489, align 4, !tbaa !53
  %490 = load i32, ptr %416, align 4, !tbaa !53
  %491 = load i32, ptr %432, align 4, !tbaa !53
  %492 = mul nsw i32 %491, %490
  %493 = shl i32 %492, %482
  %494 = ashr i32 %493, 5
  %495 = getelementptr inbounds i32, ptr %489, i64 4
  store i32 %494, ptr %495, align 4, !tbaa !53
  %496 = load i32, ptr %417, align 8, !tbaa !53
  %497 = load i32, ptr %432, align 4, !tbaa !53
  %498 = mul nsw i32 %497, %496
  %499 = shl i32 %498, %482
  %500 = ashr i32 %499, 5
  %501 = getelementptr inbounds ptr, ptr %488, i64 4
  %502 = load ptr, ptr %501, align 8, !tbaa !63
  store i32 %500, ptr %502, align 4, !tbaa !53
  %503 = load i32, ptr %418, align 4, !tbaa !53
  %504 = load i32, ptr %432, align 4, !tbaa !53
  %505 = mul nsw i32 %504, %503
  %506 = shl i32 %505, %482
  %507 = ashr i32 %506, 5
  br label %508

508:                                              ; preds = %464, %477
  %509 = phi ptr [ %475, %464 ], [ %502, %477 ]
  %510 = phi i32 [ %476, %464 ], [ %507, %477 ]
  %511 = getelementptr inbounds i32, ptr %509, i64 4
  store i32 %510, ptr %511, align 4, !tbaa !53
  %512 = add nuw nsw i64 %424, 2
  %513 = icmp eq i64 %424, 0
  br i1 %513, label %423, label %514, !llvm.loop !254

514:                                              ; preds = %508, %408
  %515 = icmp slt i32 %297, 32
  br i1 %515, label %516, label %525

516:                                              ; preds = %514
  %517 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 29
  %518 = load ptr, ptr %517, align 8, !tbaa !184
  %519 = sext i32 %14 to i64
  %520 = getelementptr inbounds ptr, ptr %518, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !63
  %522 = getelementptr inbounds ptr, ptr %521, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !63
  %524 = load ptr, ptr %523, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %524, i8 0, i64 32, i1 false)
  br label %714

525:                                              ; preds = %514
  %526 = load i32, ptr %343, align 4, !tbaa !60
  %527 = icmp eq i32 %526, 0
  %528 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 74
  %529 = load i32, ptr %528, align 8, !tbaa !212
  %530 = icmp sgt i32 %529, 0
  br i1 %527, label %538, label %531

531:                                              ; preds = %525
  br i1 %530, label %532, label %714

532:                                              ; preds = %531
  %533 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 75
  %534 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %535 = sext i32 %43 to i64
  %536 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %537 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 80
  br label %639

538:                                              ; preds = %525
  br i1 %530, label %539, label %714

539:                                              ; preds = %538
  %540 = getelementptr inbounds %struct.video_par, ptr %21, i64 0, i32 75
  %541 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %542 = sext i32 %43 to i64
  %543 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  %544 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 80
  br label %545

545:                                              ; preds = %539, %634
  %546 = phi i64 [ 0, %539 ], [ %635, %634 ]
  %547 = load i32, ptr %540, align 4, !tbaa !213
  %548 = sext i32 %547 to i64
  %549 = icmp sge i64 %546, %548
  %550 = zext i1 %549 to i32
  store i32 %550, ptr %541, align 4, !tbaa !204
  %551 = select i1 %549, i64 2, i64 1
  %552 = zext i1 %549 to i64
  %553 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !53
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 88, i64 %551, i64 %555
  %557 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 89, i64 %551, i64 %555
  %558 = select i1 %38, ptr %556, ptr %557
  %559 = select i1 %549, i32 2, i32 0
  %560 = zext i1 %549 to i64
  %561 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %560
  %562 = select i1 %549, i64 2, i64 1
  br label %563

563:                                              ; preds = %545, %631
  %564 = phi i64 [ 0, %545 ], [ %632, %631 ]
  %565 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %542, i64 %546, i64 %564
  %566 = load i8, ptr %565, align 1, !tbaa !54
  %567 = zext i8 %566 to i32
  %568 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %542, i64 %546, i64 %564
  %569 = load i8, ptr %568, align 1, !tbaa !54
  %570 = zext i8 %569 to i32
  %571 = add nuw nsw i32 %559, %567
  %572 = add nuw nsw i32 %570, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %571, i32 noundef %572, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %573 = load i32, ptr %9, align 4, !tbaa !53
  %574 = icmp sgt i32 %573, 0
  br i1 %574, label %575, label %631

575:                                              ; preds = %563
  %576 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %546, i64 %564
  %577 = shl nuw nsw i32 %570, 2
  %578 = shl nuw nsw i32 %567, 2
  %579 = zext nneg i32 %573 to i64
  br label %580

580:                                              ; preds = %575, %627
  %581 = phi i64 [ 0, %575 ], [ %629, %627 ]
  %582 = phi i32 [ 0, %575 ], [ %628, %627 ]
  %583 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %581
  %584 = load i32, ptr %583, align 4, !tbaa !53
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %627, label %586

586:                                              ; preds = %580
  %587 = load i8, ptr %576, align 1, !tbaa !54
  %588 = icmp ugt i8 %587, 63
  br i1 %588, label %593, label %589

589:                                              ; preds = %586
  %590 = zext nneg i8 %587 to i64
  %591 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %590
  %592 = load i64, ptr %591, align 8, !tbaa !61
  br label %593

593:                                              ; preds = %586, %589
  %594 = phi i64 [ %592, %589 ], [ 0, %586 ]
  %595 = load i64, ptr %543, align 8, !tbaa !61
  %596 = or i64 %595, %594
  store i64 %596, ptr %543, align 8, !tbaa !61
  %597 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %581
  %598 = load i32, ptr %597, align 4, !tbaa !53
  %599 = add i32 %582, 1
  %600 = add i32 %599, %598
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [2 x i8], ptr %53, i64 %601
  %603 = load i8, ptr %602, align 2, !tbaa !54
  %604 = zext i8 %603 to i32
  %605 = getelementptr inbounds [2 x i8], ptr %53, i64 %601, i64 1
  %606 = load i8, ptr %605, align 1, !tbaa !54
  %607 = zext i8 %606 to i32
  %608 = zext i8 %606 to i64
  %609 = zext i8 %603 to i64
  %610 = getelementptr inbounds [4 x i32], ptr %558, i64 %608, i64 %609
  %611 = load i32, ptr %610, align 4, !tbaa !53
  %612 = mul nsw i32 %611, %584
  %613 = load i32, ptr %561, align 4, !tbaa !53
  %614 = shl i32 %612, %613
  %615 = add nsw i32 %614, 8
  %616 = ashr i32 %615, 4
  %617 = load ptr, ptr %544, align 8, !tbaa !62
  %618 = getelementptr inbounds ptr, ptr %617, i64 %562
  %619 = load ptr, ptr %618, align 8, !tbaa !63
  %620 = add nuw nsw i32 %577, %607
  %621 = zext nneg i32 %620 to i64
  %622 = getelementptr inbounds ptr, ptr %619, i64 %621
  %623 = load ptr, ptr %622, align 8, !tbaa !63
  %624 = add nuw nsw i32 %578, %604
  %625 = zext nneg i32 %624 to i64
  %626 = getelementptr inbounds i32, ptr %623, i64 %625
  store i32 %616, ptr %626, align 4, !tbaa !53
  br label %627

627:                                              ; preds = %580, %593
  %628 = phi i32 [ %600, %593 ], [ %582, %580 ]
  %629 = add nuw nsw i64 %581, 1
  %630 = icmp eq i64 %629, %579
  br i1 %630, label %631, label %580, !llvm.loop !255

631:                                              ; preds = %627, %563
  %632 = add nuw nsw i64 %564, 1
  %633 = icmp eq i64 %632, 4
  br i1 %633, label %634, label %563, !llvm.loop !256

634:                                              ; preds = %631
  %635 = add nuw nsw i64 %546, 1
  %636 = load i32, ptr %528, align 8, !tbaa !212
  %637 = sext i32 %636 to i64
  %638 = icmp slt i64 %635, %637
  br i1 %638, label %545, label %714, !llvm.loop !257

639:                                              ; preds = %532, %709
  %640 = phi i64 [ 0, %532 ], [ %710, %709 ]
  %641 = load i32, ptr %533, align 4, !tbaa !213
  %642 = sext i32 %641 to i64
  %643 = icmp sge i64 %640, %642
  %644 = zext i1 %643 to i32
  store i32 %644, ptr %534, align 4, !tbaa !204
  %645 = select i1 %643, i32 2, i32 0
  %646 = select i1 %643, i64 2, i64 1
  br label %647

647:                                              ; preds = %639, %706
  %648 = phi i64 [ 0, %639 ], [ %707, %706 ]
  %649 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_x, i64 0, i64 %535, i64 %640, i64 %648
  %650 = load i8, ptr %649, align 1, !tbaa !54
  %651 = zext i8 %650 to i32
  %652 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @cofuv_blk_y, i64 0, i64 %535, i64 %640, i64 %648
  %653 = load i8, ptr %652, align 1, !tbaa !54
  %654 = zext i8 %653 to i32
  %655 = add nuw nsw i32 %645, %651
  %656 = add nuw nsw i32 %654, 4
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef 7, i32 noundef %655, i32 noundef %656, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %657 = load i32, ptr %9, align 4, !tbaa !53
  %658 = icmp sgt i32 %657, 0
  br i1 %658, label %659, label %706

659:                                              ; preds = %647
  %660 = getelementptr inbounds [8 x [4 x i8]], ptr @cbp_blk_chroma, i64 0, i64 %640, i64 %648
  %661 = shl nuw nsw i32 %654, 2
  %662 = shl nuw nsw i32 %651, 2
  %663 = zext nneg i32 %657 to i64
  br label %664

664:                                              ; preds = %659, %702
  %665 = phi i64 [ 0, %659 ], [ %704, %702 ]
  %666 = phi i32 [ 0, %659 ], [ %703, %702 ]
  %667 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %665
  %668 = load i32, ptr %667, align 4, !tbaa !53
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %702, label %670

670:                                              ; preds = %664
  %671 = load i8, ptr %660, align 1, !tbaa !54
  %672 = icmp ugt i8 %671, 63
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = zext nneg i8 %671 to i64
  %675 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %674
  %676 = load i64, ptr %675, align 8, !tbaa !61
  br label %677

677:                                              ; preds = %670, %673
  %678 = phi i64 [ %676, %673 ], [ 0, %670 ]
  %679 = load i64, ptr %536, align 8, !tbaa !61
  %680 = or i64 %679, %678
  store i64 %680, ptr %536, align 8, !tbaa !61
  %681 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %665
  %682 = load i32, ptr %681, align 4, !tbaa !53
  %683 = add i32 %666, 1
  %684 = add i32 %683, %682
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [2 x i8], ptr %53, i64 %685
  %687 = load i8, ptr %686, align 2, !tbaa !54
  %688 = zext i8 %687 to i32
  %689 = getelementptr inbounds [2 x i8], ptr %53, i64 %685, i64 1
  %690 = load i8, ptr %689, align 1, !tbaa !54
  %691 = zext i8 %690 to i32
  %692 = load ptr, ptr %537, align 8, !tbaa !62
  %693 = getelementptr inbounds ptr, ptr %692, i64 %646
  %694 = load ptr, ptr %693, align 8, !tbaa !63
  %695 = add nuw nsw i32 %661, %691
  %696 = zext nneg i32 %695 to i64
  %697 = getelementptr inbounds ptr, ptr %694, i64 %696
  %698 = load ptr, ptr %697, align 8, !tbaa !63
  %699 = add nuw nsw i32 %662, %688
  %700 = zext nneg i32 %699 to i64
  %701 = getelementptr inbounds i32, ptr %698, i64 %700
  store i32 %668, ptr %701, align 4, !tbaa !53
  br label %702

702:                                              ; preds = %664, %677
  %703 = phi i32 [ %684, %677 ], [ %666, %664 ]
  %704 = add nuw nsw i64 %665, 1
  %705 = icmp eq i64 %704, %663
  br i1 %705, label %706, label %664, !llvm.loop !258

706:                                              ; preds = %702, %647
  %707 = add nuw nsw i64 %648, 1
  %708 = icmp eq i64 %707, 4
  br i1 %708, label %709, label %647, !llvm.loop !259

709:                                              ; preds = %706
  %710 = add nuw nsw i64 %640, 1
  %711 = load i32, ptr %528, align 8, !tbaa !212
  %712 = sext i32 %711 to i64
  %713 = icmp slt i64 %710, %712
  br i1 %713, label %639, label %714, !llvm.loop !260

714:                                              ; preds = %709, %634, %531, %538, %516, %405
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SetB8Mode(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 33
  %6 = load i32, ptr %5, align 4, !tbaa !97
  %7 = icmp eq i32 %6, 1
  %8 = sext i32 %1 to i64
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %9
  br i1 %7, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2b8, i64 0, i64 %8
  %13 = load i8, ptr %12, align 1, !tbaa !54
  store i8 %13, ptr %10, align 1, !tbaa !54
  %14 = getelementptr inbounds [14 x i8], ptr @SetB8Mode.b_v2pd, i64 0, i64 %8
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2b8, i64 0, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !54
  store i8 %17, ptr %10, align 1, !tbaa !54
  %18 = getelementptr inbounds [5 x i8], ptr @SetB8Mode.p_v2pd, i64 0, i64 %8
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %18, %15 ], [ %14, %11 ]
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %9
  %22 = load i8, ptr %20, align 1, !tbaa !54
  store i8 %22, ptr %21, align 1, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_coeffs(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %17, i8 0, i64 48, i1 false)
  br label %18

18:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @field_flag_inference(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %5 = load i32, ptr %4, align 4, !tbaa !151
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %11 = load i32, ptr %10, align 8, !tbaa !152
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %7 ]
  %17 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = load i32, ptr %16, align 4, !tbaa !53
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %20, i32 45
  %22 = load i32, ptr %21, align 8, !tbaa !149
  br label %23

23:                                               ; preds = %15, %9
  %24 = phi i32 [ 0, %9 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  store i32 %24, ptr %25, align 8, !tbaa !149
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @skip_macroblock(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.MotionVector, align 4
  %3 = alloca [4 x %struct.pix_pos], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %10 = load i16, ptr %9, align 2, !tbaa !106
  %11 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %13, ptr noundef nonnull %3) #15
  %14 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 2
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef 16, i32 noundef -1, ptr noundef nonnull %13, ptr noundef nonnull %15) #15
  %16 = load i32, ptr %15, align 16, !tbaa !190
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 3
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %13, ptr noundef nonnull %19) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !261
  br label %20

20:                                               ; preds = %1, %18
  %21 = load i32, ptr %3, align 16, !tbaa !190
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %27 = load i16, ptr %26, align 2, !tbaa !262
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %32 = load i16, ptr %31, align 4, !tbaa !263
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds %struct.pic_motion_params, ptr %30, i64 %33, i32 1
  %35 = getelementptr inbounds %struct.MotionVector, ptr %34, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !264
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.pic_motion_params, ptr %30, i64 %33, i32 2
  %39 = load i8, ptr %38, align 8, !tbaa !54
  %40 = sext i8 %39 to i32
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %42 = load i32, ptr %41, align 8, !tbaa !149
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %46 = load ptr, ptr %45, align 8, !tbaa !148
  %47 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !192
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.macroblock, ptr %46, i64 %49, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !149
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = sdiv i32 %37, 2
  %55 = shl nsw i32 %40, 1
  br label %56

56:                                               ; preds = %53, %44, %23
  %57 = phi i32 [ %40, %44 ], [ %55, %53 ], [ %40, %23 ]
  %58 = phi i32 [ %37, %44 ], [ %54, %53 ], [ %37, %23 ]
  br i1 %43, label %59, label %71

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %61 = load ptr, ptr %60, align 8, !tbaa !148
  %62 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !192
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.macroblock, ptr %61, i64 %64, i32 45
  %66 = load i32, ptr %65, align 8, !tbaa !149
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = shl nsw i32 %58, 1
  %70 = ashr i32 %57, 1
  br label %71

71:                                               ; preds = %56, %59, %68, %20
  %72 = phi i32 [ %57, %56 ], [ %70, %68 ], [ %57, %59 ], [ 0, %20 ]
  %73 = phi i32 [ %58, %56 ], [ %69, %68 ], [ %58, %59 ], [ 0, %20 ]
  %74 = phi ptr [ %34, %56 ], [ %34, %68 ], [ %34, %59 ], [ null, %20 ]
  %75 = load i32, ptr %14, align 16, !tbaa !190
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %79 = load ptr, ptr %78, align 8, !tbaa !140
  %80 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 5
  %81 = load i16, ptr %80, align 2, !tbaa !262
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %79, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !63
  %85 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 4
  %86 = load i16, ptr %85, align 4, !tbaa !263
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds %struct.pic_motion_params, ptr %84, i64 %87, i32 1
  %89 = getelementptr inbounds %struct.MotionVector, ptr %88, i64 0, i32 1
  %90 = load i16, ptr %89, align 2, !tbaa !264
  %91 = sext i16 %90 to i32
  %92 = getelementptr inbounds %struct.pic_motion_params, ptr %84, i64 %87, i32 2
  %93 = load i8, ptr %92, align 8, !tbaa !54
  %94 = sext i8 %93 to i32
  %95 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %96 = load i32, ptr %95, align 8, !tbaa !149
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %77
  %99 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %100 = load ptr, ptr %99, align 8, !tbaa !148
  %101 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !192
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.macroblock, ptr %100, i64 %103, i32 45
  %105 = load i32, ptr %104, align 8, !tbaa !149
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = sdiv i32 %91, 2
  %109 = shl nsw i32 %94, 1
  br label %110

110:                                              ; preds = %107, %98, %77
  %111 = phi i32 [ %94, %98 ], [ %109, %107 ], [ %94, %77 ]
  %112 = phi i32 [ %91, %98 ], [ %108, %107 ], [ %91, %77 ]
  br i1 %97, label %113, label %125

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %115 = load ptr, ptr %114, align 8, !tbaa !148
  %116 = getelementptr inbounds [4 x %struct.pix_pos], ptr %3, i64 0, i64 1, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !192
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.macroblock, ptr %115, i64 %118, i32 45
  %120 = load i32, ptr %119, align 8, !tbaa !149
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = shl nsw i32 %112, 1
  %124 = ashr i32 %111, 1
  br label %125

125:                                              ; preds = %110, %113, %122, %71
  %126 = phi i32 [ %111, %110 ], [ %124, %122 ], [ %111, %113 ], [ 0, %71 ]
  %127 = phi i32 [ %112, %110 ], [ %123, %122 ], [ %112, %113 ], [ 0, %71 ]
  %128 = phi ptr [ %88, %110 ], [ %88, %122 ], [ %88, %113 ], [ null, %71 ]
  br i1 %22, label %136, label %129

129:                                              ; preds = %125
  %130 = icmp eq i32 %72, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %129
  %132 = load i16, ptr %74, align 2, !tbaa !265
  %133 = icmp eq i16 %132, 0
  %134 = icmp eq i32 %73, 0
  %135 = select i1 %133, i1 %134, i1 false
  br label %136

136:                                              ; preds = %131, %129, %125
  %137 = phi i1 [ true, %125 ], [ false, %129 ], [ %135, %131 ]
  br i1 %76, label %166, label %138

138:                                              ; preds = %136
  %139 = icmp eq i32 %126, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %138
  %141 = load i16, ptr %128, align 2, !tbaa !265
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = icmp eq i32 %127, 0
  %145 = select i1 %144, i1 true, i1 %137
  br label %146

146:                                              ; preds = %138, %140, %143
  %147 = phi i1 [ %137, %140 ], [ %137, %138 ], [ %145, %143 ]
  %148 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %148, align 4, !tbaa !95
  %149 = load ptr, ptr %8, align 8, !tbaa !64
  %150 = getelementptr inbounds %struct.video_par, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !111
  %152 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %151, i64 0, i32 3
  %153 = load i32, ptr %152, align 4, !tbaa !112
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.video_par, ptr %149, i64 0, i32 29
  %157 = load ptr, ptr %156, align 8, !tbaa !184
  %158 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %159 = load i32, ptr %158, align 4, !tbaa !65
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %157, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !63
  %163 = load ptr, ptr %162, align 8, !tbaa !63
  %164 = load ptr, ptr %163, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %164, i8 0, i64 48, i1 false)
  br label %165

165:                                              ; preds = %146, %155
  br i1 %147, label %184, label %214

166:                                              ; preds = %136
  %167 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  store i32 0, ptr %167, align 4, !tbaa !95
  %168 = load ptr, ptr %8, align 8, !tbaa !64
  %169 = getelementptr inbounds %struct.video_par, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !111
  %171 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %170, i64 0, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !112
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.video_par, ptr %168, i64 0, i32 29
  %176 = load ptr, ptr %175, align 8, !tbaa !184
  %177 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 20
  %178 = load i32, ptr %177, align 4, !tbaa !65
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %176, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !63
  %182 = load ptr, ptr %181, align 8, !tbaa !63
  %183 = load ptr, ptr %182, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %183, i8 0, i64 48, i1 false)
  br label %184

184:                                              ; preds = %174, %166, %165
  %185 = sext i16 %10 to i64
  %186 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !63
  %188 = load ptr, ptr %187, align 8, !tbaa !63
  %189 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %190 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %191 = sext i32 %5 to i64
  %192 = add nsw i32 %5, 3
  %193 = sext i32 %192 to i64
  br label %194

194:                                              ; preds = %184, %211
  %195 = phi i64 [ %191, %184 ], [ %212, %211 ]
  %196 = load i32, ptr %189, align 8, !tbaa !72
  %197 = sext i32 %196 to i64
  br label %198

198:                                              ; preds = %194, %198
  %199 = phi i64 [ %197, %194 ], [ %206, %198 ]
  %200 = load ptr, ptr %190, align 8, !tbaa !140
  %201 = getelementptr inbounds ptr, ptr %200, i64 %195
  %202 = load ptr, ptr %201, align 8, !tbaa !63
  %203 = getelementptr inbounds %struct.pic_motion_params, ptr %202, i64 %199
  store ptr %188, ptr %203, align 8, !tbaa !63
  %204 = getelementptr inbounds %struct.pic_motion_params, ptr %202, i64 %199, i32 1
  store i32 0, ptr %204, align 8
  %205 = getelementptr inbounds %struct.pic_motion_params, ptr %202, i64 %199, i32 2
  store i8 0, ptr %205, align 8, !tbaa !54
  %206 = add nsw i64 %199, 1
  %207 = load i32, ptr %189, align 8, !tbaa !72
  %208 = add nsw i32 %207, 3
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %199, %209
  br i1 %210, label %198, label %211, !llvm.loop !266

211:                                              ; preds = %198
  %212 = add nsw i64 %195, 1
  %213 = icmp slt i64 %195, %193
  br i1 %213, label %194, label %248, !llvm.loop !267

214:                                              ; preds = %165
  %215 = sext i16 %10 to i64
  %216 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !63
  %218 = load ptr, ptr %217, align 8, !tbaa !63
  %219 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 58
  %220 = load ptr, ptr %219, align 8, !tbaa !268
  %221 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %222 = load ptr, ptr %221, align 8, !tbaa !140
  call void %220(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2, i16 noundef signext 0, ptr noundef %222, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #15
  %223 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %224 = sext i32 %5 to i64
  %225 = add nsw i32 %5, 3
  %226 = sext i32 %225 to i64
  br label %227

227:                                              ; preds = %214, %245
  %228 = phi i64 [ %224, %214 ], [ %246, %245 ]
  %229 = load i32, ptr %223, align 8, !tbaa !72
  %230 = sext i32 %229 to i64
  br label %231

231:                                              ; preds = %227, %231
  %232 = phi i64 [ %230, %227 ], [ %240, %231 ]
  %233 = load ptr, ptr %221, align 8, !tbaa !140
  %234 = getelementptr inbounds ptr, ptr %233, i64 %228
  %235 = load ptr, ptr %234, align 8, !tbaa !63
  %236 = getelementptr inbounds %struct.pic_motion_params, ptr %235, i64 %232
  store ptr %218, ptr %236, align 8, !tbaa !63
  %237 = getelementptr inbounds %struct.pic_motion_params, ptr %235, i64 %232, i32 1
  %238 = load i32, ptr %2, align 4
  store i32 %238, ptr %237, align 8
  %239 = getelementptr inbounds %struct.pic_motion_params, ptr %235, i64 %232, i32 2
  store i8 0, ptr %239, align 8, !tbaa !54
  %240 = add nsw i64 %232, 1
  %241 = load i32, ptr %223, align 8, !tbaa !72
  %242 = add nsw i32 %241, 3
  %243 = sext i32 %242 to i64
  %244 = icmp slt i64 %232, %243
  br i1 %244, label %231, label %245, !llvm.loop !269

245:                                              ; preds = %231
  %246 = add nsw i64 %228, 1
  %247 = icmp slt i64 %228, %226
  br i1 %247, label %227, label %248, !llvm.loop !270

248:                                              ; preds = %245, %211
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_neighbors(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  %9 = add nsw i32 %2, -1
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %9, i32 noundef %3, ptr noundef nonnull %8, ptr noundef %1) #15
  %10 = add nsw i32 %3, -1
  %11 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 1
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %2, i32 noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %11) #15
  %12 = add nsw i32 %4, %2
  %13 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 2
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %12, i32 noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %13) #15
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = icmp slt i32 %2, 8
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = icmp eq i32 %3, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = icmp eq i32 %4, 16
  br i1 %20, label %25, label %26

21:                                               ; preds = %17
  %22 = icmp eq i32 %12, 8
  br i1 %22, label %25, label %26

23:                                               ; preds = %15
  %24 = icmp eq i32 %12, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %21, %19
  store i32 0, ptr %13, align 4, !tbaa !190
  br label %26

26:                                               ; preds = %25, %21, %19, %23, %5
  %27 = load i32, ptr %13, align 4, !tbaa !190
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 3
  tail call void @get4x4Neighbour(ptr noundef %0, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %30) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !261
  br label %31

31:                                               ; preds = %29, %26
  ret void
}

declare void @get4x4Neighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @predict_nnz(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.pix_pos, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %9 = add nsw i32 %2, -1
  %10 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %5) #15
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !81
  %13 = icmp eq i32 %12, 1
  %14 = load i32, ptr %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %19, i64 0, i32 30
  %21 = load i32, ptr %20, align 4, !tbaa !168
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 42
  %25 = load i32, ptr %24, align 8, !tbaa !128
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %29 = load ptr, ptr %28, align 8, !tbaa !169
  %30 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !192
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !54
  %35 = sext i8 %34 to i32
  %36 = and i32 %14, %35
  store i32 %36, ptr %5, align 4, !tbaa !190
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %27, %23, %17, %4
  %40 = phi i32 [ 0, %23 ], [ 0, %17 ], [ 0, %4 ], [ %38, %27 ]
  %41 = load i32, ptr %5, align 4, !tbaa !190
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %107, label %43

43:                                               ; preds = %39
  switch i32 %1, label %106 [
    i32 0, label %44
    i32 3, label %64
    i32 8, label %85
  ]

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %46 = load ptr, ptr %45, align 8, !tbaa !184
  %47 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !192
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !271
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %59 = load i16, ptr %58, align 4, !tbaa !272
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !54
  %63 = add nuw nsw i32 %40, 1
  br label %107

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %66 = load ptr, ptr %65, align 8, !tbaa !184
  %67 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !192
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %75 = load i16, ptr %74, align 2, !tbaa !271
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %73, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %80 = load i16, ptr %79, align 4, !tbaa !272
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !54
  %84 = add nuw nsw i32 %40, 1
  br label %107

85:                                               ; preds = %43
  %86 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %87 = load ptr, ptr %86, align 8, !tbaa !184
  %88 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !192
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %87, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !63
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !63
  %95 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %96 = load i16, ptr %95, align 2, !tbaa !271
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %94, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !63
  %100 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %101 = load i16, ptr %100, align 4, !tbaa !272
  %102 = sext i16 %101 to i64
  %103 = getelementptr inbounds i8, ptr %99, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !54
  %105 = add nuw nsw i32 %40, 1
  br label %107

106:                                              ; preds = %43
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 600) #15
  br label %107

107:                                              ; preds = %44, %64, %85, %106, %39
  %108 = phi i8 [ 0, %106 ], [ %104, %85 ], [ %83, %64 ], [ %62, %44 ], [ 0, %39 ]
  %109 = phi i32 [ %40, %106 ], [ %105, %85 ], [ %84, %64 ], [ %63, %44 ], [ %40, %39 ]
  %110 = zext i8 %108 to i32
  %111 = add nsw i32 %3, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %111, ptr noundef nonnull %10, ptr noundef nonnull %5) #15
  %112 = load i32, ptr %11, align 8, !tbaa !81
  %113 = icmp eq i32 %112, 1
  %114 = load i32, ptr %5, align 4
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %140

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !111
  %120 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %119, i64 0, i32 30
  %121 = load i32, ptr %120, align 4, !tbaa !168
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 42
  %125 = load i32, ptr %124, align 8, !tbaa !128
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %129 = load ptr, ptr %128, align 8, !tbaa !169
  %130 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !192
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %129, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !54
  %135 = sext i8 %134 to i32
  %136 = and i32 %114, %135
  store i32 %136, ptr %5, align 4, !tbaa !190
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = add nsw i32 %109, %138
  br label %140

140:                                              ; preds = %127, %123, %117, %107
  %141 = phi i32 [ %109, %123 ], [ %109, %117 ], [ %109, %107 ], [ %139, %127 ]
  %142 = load i32, ptr %5, align 4, !tbaa !190
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %214, label %144

144:                                              ; preds = %140
  switch i32 %1, label %213 [
    i32 0, label %145
    i32 3, label %167
    i32 8, label %190
  ]

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %147 = load ptr, ptr %146, align 8, !tbaa !184
  %148 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !192
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %147, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !63
  %153 = load ptr, ptr %152, align 8, !tbaa !63
  %154 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %155 = load i16, ptr %154, align 2, !tbaa !271
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %153, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !63
  %159 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %160 = load i16, ptr %159, align 4, !tbaa !272
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds i8, ptr %158, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !54
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %164, %110
  %166 = add nsw i32 %141, 1
  br label %214

167:                                              ; preds = %144
  %168 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %169 = load ptr, ptr %168, align 8, !tbaa !184
  %170 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !192
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %169, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !63
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !63
  %177 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %178 = load i16, ptr %177, align 2, !tbaa !271
  %179 = sext i16 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %176, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !63
  %182 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %183 = load i16, ptr %182, align 4, !tbaa !272
  %184 = sext i16 %183 to i64
  %185 = getelementptr inbounds i8, ptr %181, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !54
  %187 = zext i8 %186 to i32
  %188 = add nuw nsw i32 %187, %110
  %189 = add nsw i32 %141, 1
  br label %214

190:                                              ; preds = %144
  %191 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 29
  %192 = load ptr, ptr %191, align 8, !tbaa !184
  %193 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !192
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %192, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !63
  %198 = getelementptr inbounds ptr, ptr %197, i64 2
  %199 = load ptr, ptr %198, align 8, !tbaa !63
  %200 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %201 = load i16, ptr %200, align 2, !tbaa !271
  %202 = sext i16 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %199, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !63
  %205 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %206 = load i16, ptr %205, align 4, !tbaa !272
  %207 = sext i16 %206 to i64
  %208 = getelementptr inbounds i8, ptr %204, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !54
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %210, %110
  %212 = add nsw i32 %141, 1
  br label %214

213:                                              ; preds = %144
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 600) #15
  br label %214

214:                                              ; preds = %145, %167, %190, %213, %140
  %215 = phi i32 [ %110, %213 ], [ %211, %190 ], [ %188, %167 ], [ %165, %145 ], [ %110, %140 ]
  %216 = phi i32 [ %141, %213 ], [ %212, %190 ], [ %189, %167 ], [ %166, %145 ], [ %141, %140 ]
  %217 = icmp eq i32 %216, 2
  %218 = add nuw nsw i32 %215, 1
  %219 = lshr i32 %218, 1
  %220 = select i1 %217, i32 %219, i32 %215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i32 %220
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @predict_nnz_chroma(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %11 = load i32, ptr %10, align 4, !tbaa !173
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %144, label %13

13:                                               ; preds = %3
  %14 = shl i32 %1, 2
  %15 = and i32 %14, 4
  %16 = add nsw i32 %15, -1
  %17 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %16, i32 noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %4) #15
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = icmp eq i32 %19, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %46

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !111
  %27 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %26, i64 0, i32 30
  %28 = load i32, ptr %27, align 4, !tbaa !168
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %32 = load i32, ptr %31, align 8, !tbaa !128
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %36 = load ptr, ptr %35, align 8, !tbaa !169
  %37 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !192
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !54
  %42 = sext i8 %41 to i32
  %43 = and i32 %21, %42
  store i32 %43, ptr %4, align 4, !tbaa !190
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %34, %30, %24, %13
  %47 = phi i32 [ 0, %30 ], [ 0, %24 ], [ 0, %13 ], [ %45, %34 ]
  %48 = load i32, ptr %4, align 4, !tbaa !190
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 29
  %52 = load ptr, ptr %51, align 8, !tbaa !184
  %53 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !192
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !271
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = and i32 %1, -2
  %66 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %67 = load i16, ptr %66, align 4, !tbaa !272
  %68 = sext i16 %67 to i32
  %69 = add nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %64, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !54
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %47, 1
  br label %75

75:                                               ; preds = %50, %46
  %76 = phi i32 [ %73, %50 ], [ 0, %46 ]
  %77 = phi i32 [ %74, %50 ], [ %47, %46 ]
  %78 = add nsw i32 %2, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %15, i32 noundef %78, ptr noundef nonnull %17, ptr noundef nonnull %4) #15
  %79 = load i32, ptr %18, align 8, !tbaa !81
  %80 = icmp eq i32 %79, 1
  %81 = load i32, ptr %4, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %107

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !111
  %87 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %86, i64 0, i32 30
  %88 = load i32, ptr %87, align 4, !tbaa !168
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 42
  %92 = load i32, ptr %91, align 8, !tbaa !128
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %96 = load ptr, ptr %95, align 8, !tbaa !169
  %97 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !192
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !54
  %102 = sext i8 %101 to i32
  %103 = and i32 %81, %102
  store i32 %103, ptr %4, align 4, !tbaa !190
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = add nuw nsw i32 %77, %105
  br label %107

107:                                              ; preds = %94, %90, %84, %75
  %108 = phi i32 [ %77, %90 ], [ %77, %84 ], [ %77, %75 ], [ %106, %94 ]
  %109 = load i32, ptr %4, align 4, !tbaa !190
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %137, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 29
  %113 = load ptr, ptr %112, align 8, !tbaa !184
  %114 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !192
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %113, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = getelementptr inbounds ptr, ptr %118, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !63
  %121 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %122 = load i16, ptr %121, align 2, !tbaa !271
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !63
  %126 = and i32 %1, -2
  %127 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %128 = load i16, ptr %127, align 4, !tbaa !272
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %125, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !54
  %134 = zext i8 %133 to i32
  %135 = add nuw nsw i32 %76, %134
  %136 = add nuw nsw i32 %108, 1
  br label %137

137:                                              ; preds = %111, %107
  %138 = phi i32 [ %135, %111 ], [ %76, %107 ]
  %139 = phi i32 [ %136, %111 ], [ %108, %107 ]
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = add nuw nsw i32 %138, 1
  %143 = lshr i32 %142, 1
  br label %144

144:                                              ; preds = %137, %141, %3
  %145 = phi i32 [ %143, %141 ], [ %138, %137 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @decode_one_macroblock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !273
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %167, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %147

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 105
  %15 = load i32, ptr %14, align 8, !tbaa !124
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 138
  %19 = load ptr, ptr %18, align 8, !tbaa !274
  %20 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !275
  %22 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 104
  %23 = load i32, ptr %22, align 4, !tbaa !276
  %24 = icmp slt i32 %21, %23
  br label %25

25:                                               ; preds = %51, %17
  %26 = phi i64 [ %52, %51 ], [ 0, %17 ]
  %27 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 55, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !54
  %29 = icmp sgt i8 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %26
  br label %32

32:                                               ; preds = %46, %30
  %33 = phi i64 [ 0, %30 ], [ %47, %46 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !63
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = icmp eq ptr %36, %19
  %40 = select i1 %24, i1 %39, i1 false
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 72
  store i32 %41, ptr %42, align 8, !tbaa !277
  %43 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 32
  %44 = load ptr, ptr %43, align 8, !tbaa !278
  %45 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 71
  store ptr %44, ptr %45, align 8, !tbaa !279
  br label %46

46:                                               ; preds = %38, %32
  %47 = add nuw nsw i64 %33, 1
  %48 = load i8, ptr %27, align 1, !tbaa !54
  %49 = sext i8 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %32, label %51, !llvm.loop !280

51:                                               ; preds = %46, %25
  %52 = add nuw nsw i64 %26, 1
  %53 = icmp eq i64 %52, 6
  br i1 %53, label %54, label %25, !llvm.loop !281

54:                                               ; preds = %51, %13
  %55 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 112
  %56 = load ptr, ptr %55, align 8, !tbaa !118
  %57 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %58 = load ptr, ptr %57, align 8, !tbaa !278
  %59 = tail call i32 %56(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %58, ptr noundef %1) #15
  %60 = load i32, ptr %14, align 8, !tbaa !124
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 138
  %64 = load ptr, ptr %63, align 8, !tbaa !274
  %65 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 13
  %66 = load i32, ptr %65, align 4, !tbaa !275
  %67 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 104
  %68 = load i32, ptr %67, align 4, !tbaa !276
  %69 = icmp slt i32 %66, %68
  br label %70

70:                                               ; preds = %97, %62
  %71 = phi i64 [ 0, %62 ], [ %98, %97 ]
  %72 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 55, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !54
  %74 = icmp sgt i8 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %71
  br label %77

77:                                               ; preds = %92, %75
  %78 = phi i64 [ 0, %75 ], [ %93, %92 ]
  %79 = load ptr, ptr %76, align 8, !tbaa !63
  %80 = getelementptr inbounds ptr, ptr %79, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !63
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %77
  %84 = icmp eq ptr %81, %64
  %85 = select i1 %69, i1 %84, i1 false
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.storable_picture, ptr %81, i64 0, i32 72
  store i32 %86, ptr %87, align 8, !tbaa !277
  %88 = getelementptr inbounds %struct.storable_picture, ptr %81, i64 0, i32 33
  %89 = load ptr, ptr %88, align 8, !tbaa !282
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = getelementptr inbounds %struct.storable_picture, ptr %81, i64 0, i32 71
  store ptr %90, ptr %91, align 8, !tbaa !279
  br label %92

92:                                               ; preds = %83, %77
  %93 = add nuw nsw i64 %78, 1
  %94 = load i8, ptr %72, align 1, !tbaa !54
  %95 = sext i8 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %77, label %97, !llvm.loop !283

97:                                               ; preds = %92, %70
  %98 = add nuw nsw i64 %71, 1
  %99 = icmp eq i64 %98, 6
  br i1 %99, label %100, label %70, !llvm.loop !284

100:                                              ; preds = %97, %54
  %101 = load ptr, ptr %55, align 8, !tbaa !118
  %102 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %103 = load ptr, ptr %102, align 8, !tbaa !282
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = tail call i32 %101(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %104, ptr noundef %1) #15
  %106 = load i32, ptr %14, align 8, !tbaa !124
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %158

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 138
  %110 = load ptr, ptr %109, align 8, !tbaa !274
  %111 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 13
  %112 = load i32, ptr %111, align 4, !tbaa !275
  %113 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 104
  %114 = load i32, ptr %113, align 4, !tbaa !276
  %115 = icmp slt i32 %112, %114
  br label %116

116:                                              ; preds = %144, %108
  %117 = phi i64 [ 0, %108 ], [ %145, %144 ]
  %118 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 55, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !54
  %120 = icmp sgt i8 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 56, i64 %117
  br label %123

123:                                              ; preds = %139, %121
  %124 = phi i64 [ 0, %121 ], [ %140, %139 ]
  %125 = load ptr, ptr %122, align 8, !tbaa !63
  %126 = getelementptr inbounds ptr, ptr %125, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !63
  %128 = icmp eq ptr %127, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %123
  %130 = icmp eq ptr %127, %110
  %131 = select i1 %115, i1 %130, i1 false
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 72
  store i32 %132, ptr %133, align 8, !tbaa !277
  %134 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 33
  %135 = load ptr, ptr %134, align 8, !tbaa !282
  %136 = getelementptr ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !63
  %138 = getelementptr inbounds %struct.storable_picture, ptr %127, i64 0, i32 71
  store ptr %137, ptr %138, align 8, !tbaa !279
  br label %139

139:                                              ; preds = %129, %123
  %140 = add nuw nsw i64 %124, 1
  %141 = load i8, ptr %118, align 1, !tbaa !54
  %142 = sext i8 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %123, label %144, !llvm.loop !283

144:                                              ; preds = %139, %116
  %145 = add nuw nsw i64 %117, 1
  %146 = icmp eq i64 %145, 6
  br i1 %146, label %158, label %116, !llvm.loop !284

147:                                              ; preds = %9
  %148 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 112
  %149 = load ptr, ptr %148, align 8, !tbaa !118
  %150 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %151 = load ptr, ptr %150, align 8, !tbaa !278
  %152 = tail call i32 %149(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %151, ptr noundef %1) #15
  %153 = load ptr, ptr %148, align 8, !tbaa !118
  %154 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %155 = load ptr, ptr %154, align 8, !tbaa !282
  %156 = load ptr, ptr %155, align 8, !tbaa !63
  %157 = tail call i32 %153(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %156, ptr noundef %1) #15
  br label %158

158:                                              ; preds = %144, %100, %147
  %159 = phi ptr [ %148, %147 ], [ %55, %100 ], [ %55, %144 ]
  %160 = phi ptr [ %154, %147 ], [ %102, %100 ], [ %102, %144 ]
  %161 = load ptr, ptr %159, align 8, !tbaa !118
  %162 = load ptr, ptr %160, align 8, !tbaa !282
  %163 = getelementptr inbounds ptr, ptr %162, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !63
  %165 = tail call i32 %161(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %164, ptr noundef %1) #15
  %166 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 76
  store i32 0, ptr %166, align 8, !tbaa !98
  br label %173

167:                                              ; preds = %2
  %168 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 112
  %169 = load ptr, ptr %168, align 8, !tbaa !118
  %170 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %171 = load ptr, ptr %170, align 8, !tbaa !278
  %172 = tail call i32 %169(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %171, ptr noundef %1) #15
  br label %173

173:                                              ; preds = %167, %158
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @change_plane_JV(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #8 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 36, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  store ptr %6, ptr %7, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 %4
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  store ptr %9, ptr %10, align 8, !tbaa !285
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 31, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 30
  store ptr %12, ptr %13, align 8, !tbaa !286
  %14 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 28, i64 %4
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 27
  store ptr %15, ptr %16, align 8, !tbaa !287
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 21, i64 %4
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 20
  store ptr %18, ptr %19, align 8, !tbaa !288
  %20 = icmp eq ptr %2, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  store ptr %22, ptr %23, align 8, !tbaa !66
  %24 = load ptr, ptr %8, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  store ptr %24, ptr %25, align 8, !tbaa !43
  %26 = load ptr, ptr %11, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 126
  store ptr %26, ptr %27, align 8, !tbaa !161
  %28 = load ptr, ptr %14, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 127
  store ptr %28, ptr %29, align 8, !tbaa !289
  %30 = load ptr, ptr %17, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 128
  store ptr %30, ptr %31, align 8, !tbaa !169
  br label %32

32:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @make_frame_picture_JV(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  store ptr %3, ptr %4, align 8, !tbaa !285
  %5 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !290
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 43
  %10 = load i32, ptr %9, align 8, !tbaa !291
  switch i32 %10, label %11 [
    i32 2, label %45
    i32 4, label %45
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 17
  %13 = load i32, ptr %12, align 4, !tbaa !292
  %14 = sdiv i32 %13, 4
  %15 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !293
  %17 = sdiv i32 %16, 4
  %18 = shl i32 %14, 5
  %19 = mul i32 %18, %17
  %20 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 36
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !140
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = sext i32 %19 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %25, i64 %26, i1 false)
  %27 = load ptr, ptr %4, align 8, !tbaa !285
  %28 = getelementptr inbounds %struct.storable_picture, ptr %27, i64 0, i32 36, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = getelementptr inbounds %struct.storable_picture, ptr %32, i64 0, i32 35
  %34 = load ptr, ptr %33, align 8, !tbaa !140
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %35, i64 %26, i1 false)
  %36 = load ptr, ptr %4, align 8, !tbaa !285
  %37 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 36, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct.storable_picture, ptr %41, i64 0, i32 35
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %44, i64 %26, i1 false)
  br label %45

45:                                               ; preds = %8, %8, %11, %1
  %46 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 24
  %47 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  br label %48

48:                                               ; preds = %45, %76
  %49 = phi i64 [ 0, %45 ], [ %77, %76 ]
  %50 = load i32, ptr %46, align 8, !tbaa !294
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = add nuw nsw i64 %49, 1
  %54 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 %53
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ 0, %52 ], [ %72, %55 ]
  %57 = load i32, ptr %47, align 4, !tbaa !69
  %58 = shl i32 %57, 1
  %59 = load ptr, ptr %4, align 8, !tbaa !285
  %60 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 33
  %61 = load ptr, ptr %60, align 8, !tbaa !282
  %62 = getelementptr inbounds ptr, ptr %61, i64 %49
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  %64 = getelementptr inbounds ptr, ptr %63, i64 %56
  %65 = load ptr, ptr %64, align 8, !tbaa !63
  %66 = load ptr, ptr %54, align 8, !tbaa !63
  %67 = getelementptr inbounds %struct.storable_picture, ptr %66, i64 0, i32 32
  %68 = load ptr, ptr %67, align 8, !tbaa !278
  %69 = getelementptr inbounds ptr, ptr %68, i64 %56
  %70 = load ptr, ptr %69, align 8, !tbaa !63
  %71 = sext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %65, ptr align 2 %70, i64 %71, i1 false)
  %72 = add nuw nsw i64 %56, 1
  %73 = load i32, ptr %46, align 8, !tbaa !294
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %55, label %76, !llvm.loop !295

76:                                               ; preds = %55, %48
  %77 = add nuw nsw i64 %49, 1
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 137, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !63
  tail call void @free_storable_picture(ptr noundef %79) #15
  %80 = icmp eq i64 %49, 0
  br i1 %80, label %48, label %81, !llvm.loop !296

81:                                               ; preds = %76
  ret void
}

declare void @free_storable_picture(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @linfo_ue(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

declare i32 @readSyntaxElement_FLC(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @readFieldModeInfo_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

declare void @CheckAvailabilityOfNeighborsCABAC(ptr noundef) local_unnamed_addr #5

declare void @readMB_typeInfo_CABAC_i_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare void @readMB_transform_size_flag_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @read_ipred_modes(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %5 = load ptr, ptr %0, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 42
  %7 = load i32, ptr %6, align 8, !tbaa !128
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  store i32 4, ptr %2, align 8, !tbaa !129
  %17 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 57
  %18 = load ptr, ptr %17, align 8, !tbaa !131
  %19 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %8, i64 4
  %20 = load i8, ptr %19, align 4, !tbaa !54
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds %struct.datapartition, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !112
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load ptr, ptr %22, align 8, !tbaa !133
  %30 = getelementptr inbounds %struct.bit_stream, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !136
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readIntraPredMode_CABAC, ptr %34, align 8, !tbaa !139
  br label %35

35:                                               ; preds = %33, %28, %1
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %37 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %38 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 6
  %39 = getelementptr inbounds %struct.datapartition, ptr %18, i64 %21, i32 2
  %40 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81
  %41 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %42 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %44 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %46 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 33
  %47 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 126
  %48 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %49 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 126
  %50 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %51 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 127
  %52 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %53 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %54 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 127
  %55 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %56 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %57 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %58 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 127
  %59 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 127
  br label %60

60:                                               ; preds = %35, %264
  %61 = phi i64 [ 0, %35 ], [ %266, %264 ]
  %62 = phi i8 [ %16, %35 ], [ %265, %264 ]
  %63 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %61
  %64 = load i8, ptr %63, align 1, !tbaa !54
  switch i8 %64, label %264 [
    i8 11, label %65
    i8 13, label %65
  ]

65:                                               ; preds = %60, %60
  %66 = icmp eq i8 %64, 13
  %67 = select i1 %66, i32 2, i32 1
  %68 = trunc i64 %61 to i32
  %69 = and i32 %68, 2
  %70 = trunc i64 %61 to i32
  %71 = shl i32 %70, 1
  %72 = and i32 %71, 2
  %73 = trunc i64 %61 to i32
  %74 = shl i32 %73, 2
  %75 = zext nneg i32 %67 to i64
  br label %76

76:                                               ; preds = %65, %260
  %77 = phi i32 [ 0, %65 ], [ %262, %260 ]
  %78 = add nuw nsw i32 %77, %69
  %79 = load i32, ptr %36, align 4, !tbaa !73
  %80 = add nsw i32 %79, %78
  %81 = shl nuw nsw i32 %77, 1
  %82 = add nuw nsw i32 %81, %74
  %83 = shl nuw nsw i32 %78, 2
  %84 = add nsw i32 %83, -1
  %85 = sext i32 %80 to i64
  %86 = sext i32 %80 to i64
  br label %87

87:                                               ; preds = %76, %256
  %88 = phi i32 [ 0, %76 ], [ %258, %256 ]
  %89 = or disjoint i32 %88, %72
  %90 = load i32, ptr %37, align 8, !tbaa !72
  %91 = add nsw i32 %90, %89
  %92 = load ptr, ptr %23, align 8, !tbaa !111
  %93 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !112
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %22, align 8, !tbaa !133
  %98 = getelementptr inbounds %struct.bit_stream, ptr %97, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !136
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96, %87
  %102 = load ptr, ptr %22, align 8, !tbaa !133
  %103 = call i32 @readSyntaxElement_Intra4x4PredictionMode(ptr noundef nonnull %2, ptr noundef %102) #15
  br label %108

104:                                              ; preds = %96
  %105 = add nuw nsw i32 %88, %82
  store i32 %105, ptr %38, align 8, !tbaa !193
  %106 = load ptr, ptr %39, align 8, !tbaa !153
  %107 = call i32 %106(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %22) #15
  br label %108

108:                                              ; preds = %104, %101
  %109 = shl nuw nsw i32 %89, 2
  %110 = add nsw i32 %109, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %110, i32 noundef %83, ptr noundef nonnull %40, ptr noundef nonnull %3) #15
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %109, i32 noundef %84, ptr noundef nonnull %40, ptr noundef nonnull %4) #15
  %111 = load ptr, ptr %23, align 8, !tbaa !111
  %112 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %111, i64 0, i32 30
  %113 = load i32, ptr %112, align 4, !tbaa !168
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %108
  %116 = load i32, ptr %3, align 4, !tbaa !190
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %41, align 8, !tbaa !169
  %120 = load i32, ptr %42, align 4, !tbaa !192
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %119, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !54
  %124 = sext i8 %123 to i32
  br label %125

125:                                              ; preds = %115, %118
  %126 = phi i32 [ %124, %118 ], [ 0, %115 ]
  store i32 %126, ptr %3, align 4, !tbaa !190
  %127 = load i32, ptr %4, align 4, !tbaa !190
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %43, align 8, !tbaa !169
  %131 = load i32, ptr %44, align 4, !tbaa !192
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %130, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !54
  %135 = sext i8 %134 to i32
  br label %136

136:                                              ; preds = %125, %129
  %137 = phi i32 [ %135, %129 ], [ 0, %125 ]
  store i32 %137, ptr %4, align 4, !tbaa !190
  br label %138

138:                                              ; preds = %136, %108
  %139 = load i16, ptr %45, align 8, !tbaa !93
  %140 = icmp eq i16 %139, 9
  br i1 %140, label %141, label %184

141:                                              ; preds = %138
  %142 = load i32, ptr %46, align 4, !tbaa !97
  %143 = icmp eq i32 %142, 4
  br i1 %143, label %144, label %184

144:                                              ; preds = %141
  %145 = load i32, ptr %3, align 4, !tbaa !190
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %164, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %47, align 8, !tbaa !161
  %149 = load ptr, ptr @PicPos, align 8, !tbaa !63
  %150 = load i32, ptr %48, align 4, !tbaa !192
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.BlockPos, ptr %149, i64 %151
  %153 = getelementptr inbounds %struct.BlockPos, ptr %149, i64 %151, i32 1
  %154 = load i16, ptr %153, align 2, !tbaa !264
  %155 = sext i16 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %148, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !63
  %158 = load i16, ptr %152, align 2, !tbaa !265
  %159 = sext i16 %158 to i64
  %160 = getelementptr inbounds i32, ptr %157, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !53
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  br label %164

164:                                              ; preds = %147, %144
  %165 = phi i32 [ 0, %144 ], [ %163, %147 ]
  %166 = load i32, ptr %4, align 4, !tbaa !190
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %49, align 8, !tbaa !161
  %170 = load ptr, ptr @PicPos, align 8, !tbaa !63
  %171 = load i32, ptr %50, align 4, !tbaa !192
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.BlockPos, ptr %170, i64 %172
  %174 = getelementptr inbounds %struct.BlockPos, ptr %170, i64 %172, i32 1
  %175 = load i16, ptr %174, align 2, !tbaa !264
  %176 = sext i16 %175 to i64
  %177 = getelementptr inbounds ptr, ptr %169, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !63
  %179 = load i16, ptr %173, align 2, !tbaa !265
  %180 = sext i16 %179 to i64
  %181 = getelementptr inbounds i32, ptr %178, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !53
  %183 = icmp eq i32 %182, 0
  br label %184

184:                                              ; preds = %168, %164, %141, %138
  %185 = phi i32 [ %165, %164 ], [ 0, %141 ], [ 0, %138 ], [ %165, %168 ]
  %186 = phi i1 [ true, %164 ], [ true, %141 ], [ true, %138 ], [ %183, %168 ]
  %187 = load i32, ptr %4, align 4, !tbaa !190
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load ptr, ptr %51, align 8, !tbaa !289
  %192 = load i16, ptr %52, align 2, !tbaa !262
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %191, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !63
  %196 = load i16, ptr %53, align 4, !tbaa !263
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds i8, ptr %195, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !54
  %200 = zext i8 %199 to i32
  br label %201

201:                                              ; preds = %184, %190
  %202 = phi i32 [ %200, %190 ], [ -1, %184 ]
  %203 = load i32, ptr %3, align 4, !tbaa !190
  %204 = icmp ne i32 %203, 0
  %205 = icmp eq i32 %185, 0
  %206 = and i1 %205, %204
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  %208 = load ptr, ptr %54, align 8, !tbaa !289
  %209 = load i16, ptr %55, align 2, !tbaa !262
  %210 = sext i16 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %208, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !63
  %213 = load i16, ptr %56, align 4, !tbaa !263
  %214 = sext i16 %213 to i64
  %215 = getelementptr inbounds i8, ptr %212, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !54
  %217 = zext i8 %216 to i32
  br label %218

218:                                              ; preds = %201, %207
  %219 = phi i32 [ %217, %207 ], [ -1, %201 ]
  %220 = icmp slt i32 %202, 0
  %221 = icmp slt i32 %219, 0
  %222 = select i1 %220, i1 true, i1 %221
  %223 = call i32 @llvm.smin.i32(i32 %202, i32 %219)
  %224 = select i1 %222, i32 2, i32 %223
  %225 = load i32, ptr %57, align 4, !tbaa !154
  %226 = icmp eq i32 %225, -1
  %227 = icmp sge i32 %225, %224
  %228 = zext i1 %227 to i32
  %229 = add nuw nsw i32 %225, %228
  %230 = select i1 %226, i32 %224, i32 %229
  %231 = trunc i32 %230 to i8
  %232 = sext i32 %91 to i64
  br i1 %66, label %233, label %247

233:                                              ; preds = %218, %233
  %234 = phi i64 [ %245, %233 ], [ 0, %218 ]
  %235 = load ptr, ptr %59, align 8, !tbaa !289
  %236 = add nsw i64 %234, %86
  %237 = getelementptr inbounds ptr, ptr %235, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !63
  %239 = getelementptr inbounds i8, ptr %238, i64 %232
  store i8 %231, ptr %239, align 1, !tbaa !54
  %240 = load ptr, ptr %59, align 8, !tbaa !289
  %241 = getelementptr inbounds ptr, ptr %240, i64 %236
  %242 = load ptr, ptr %241, align 8, !tbaa !63
  %243 = getelementptr i8, ptr %242, i64 %232
  %244 = getelementptr i8, ptr %243, i64 1
  store i8 %231, ptr %244, align 1, !tbaa !54
  %245 = add nuw nsw i64 %234, 1
  %246 = icmp eq i64 %245, %75
  br i1 %246, label %256, label %233, !llvm.loop !297

247:                                              ; preds = %218, %247
  %248 = phi i64 [ %254, %247 ], [ 0, %218 ]
  %249 = load ptr, ptr %58, align 8, !tbaa !289
  %250 = getelementptr ptr, ptr %249, i64 %248
  %251 = getelementptr ptr, ptr %250, i64 %85
  %252 = load ptr, ptr %251, align 8, !tbaa !63
  %253 = getelementptr inbounds i8, ptr %252, i64 %232
  store i8 %231, ptr %253, align 1, !tbaa !54
  %254 = add nuw nsw i64 %248, 1
  %255 = icmp eq i64 %254, %75
  br i1 %255, label %256, label %247, !llvm.loop !298

256:                                              ; preds = %247, %233
  %257 = phi i64 [ %245, %233 ], [ %254, %247 ]
  %258 = add nuw nsw i32 %88, %67
  %259 = icmp ult i32 %258, 2
  br i1 %259, label %87, label %260, !llvm.loop !299

260:                                              ; preds = %256
  %261 = trunc i64 %257 to i32
  %262 = add nuw nsw i32 %77, %261
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %76, label %264, !llvm.loop !300

264:                                              ; preds = %260, %60
  %265 = phi i8 [ %62, %60 ], [ 1, %260 ]
  %266 = add nuw nsw i64 %61, 1
  %267 = icmp eq i64 %266, 4
  br i1 %267, label %268, label %60, !llvm.loop !301

268:                                              ; preds = %264
  %269 = icmp eq i8 %265, 0
  br i1 %269, label %300, label %270

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 48
  %272 = load i32, ptr %271, align 4, !tbaa !173
  switch i32 %272, label %273 [
    i32 0, label %300
    i32 3, label %300
  ]

273:                                              ; preds = %270
  store i32 4, ptr %2, align 8, !tbaa !129
  %274 = load ptr, ptr %17, align 8, !tbaa !131
  %275 = getelementptr inbounds %struct.datapartition, ptr %274, i64 %21
  %276 = load ptr, ptr %23, align 8, !tbaa !111
  %277 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %276, i64 0, i32 3
  %278 = load i32, ptr %277, align 4, !tbaa !112
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %273
  %281 = load ptr, ptr %275, align 8, !tbaa !133
  %282 = getelementptr inbounds %struct.bit_stream, ptr %281, i64 0, i32 5
  %283 = load i32, ptr %282, align 8, !tbaa !136
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %280, %273
  %286 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 8
  store ptr @linfo_ue, ptr %286, align 8, !tbaa !138
  br label %289

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 9
  store ptr @readCIPredMode_CABAC, ptr %288, align 8, !tbaa !139
  br label %289

289:                                              ; preds = %287, %285
  %290 = getelementptr inbounds %struct.datapartition, ptr %274, i64 %21, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !153
  %292 = call i32 %291(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %275) #15
  %293 = getelementptr inbounds %struct.syntaxelement, ptr %2, i64 0, i32 1
  %294 = load i32, ptr %293, align 4, !tbaa !154
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  store i8 %295, ptr %296, align 1, !tbaa !96
  %297 = and i32 %294, 252
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %289
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 600) #15
  br label %300

300:                                              ; preds = %289, %270, %270, %299, %268
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_IPCM_coeffs_from_NAL(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.syntaxelement, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  %7 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !112
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  tail call void @readIPCM_CABAC(ptr noundef nonnull %0, ptr noundef %1) #15
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %14 = load i32, ptr %13, align 8, !tbaa !128
  switch i32 %14, label %16 [
    i32 0, label %18
    i32 1, label %15
  ]

15:                                               ; preds = %12
  br label %18

16:                                               ; preds = %12
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  tail call void @exit(i32 noundef 1) #16
  unreachable

18:                                               ; preds = %15, %12
  %19 = phi i64 [ 3, %15 ], [ 1, %12 ]
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %30, %21 ]
  %23 = load ptr, ptr %20, align 8, !tbaa !131
  %24 = getelementptr inbounds %struct.datapartition, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = load i32, ptr %25, align 8, !tbaa !302
  %27 = getelementptr inbounds %struct.datapartition, ptr %23, i64 %22, i32 1
  %28 = getelementptr inbounds %struct.bit_stream, ptr %25, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !303
  tail call void @arideco_start_decoding(ptr noundef nonnull %27, ptr noundef %29, i32 noundef %26, ptr noundef nonnull %25) #15
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %19
  br i1 %31, label %141, label %21, !llvm.loop !304

32:                                               ; preds = %2
  %33 = load ptr, ptr %1, align 8, !tbaa !133
  %34 = getelementptr inbounds %struct.bit_stream, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !158
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = sub nuw nsw i32 8, %36
  %40 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  store i32 %39, ptr %40, align 4, !tbaa !157
  %41 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %33) #15
  br label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 64
  %44 = load i16, ptr %43, align 8, !tbaa !305
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  store i32 %45, ptr %46, align 4, !tbaa !157
  %47 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %49

49:                                               ; preds = %42, %63
  %50 = phi i64 [ 0, %42 ], [ %64, %63 ]
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %61, %51 ]
  %53 = load ptr, ptr %1, align 8, !tbaa !133
  %54 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %53) #15
  %55 = load i32, ptr %47, align 4, !tbaa !154
  %56 = load ptr, ptr %48, align 8, !tbaa !62
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = getelementptr inbounds ptr, ptr %57, i64 %50
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = getelementptr inbounds i32, ptr %59, i64 %52
  store i32 %55, ptr %60, align 4, !tbaa !53
  %61 = add nuw nsw i64 %52, 1
  %62 = icmp eq i64 %61, 16
  br i1 %62, label %63, label %51, !llvm.loop !306

63:                                               ; preds = %51
  %64 = add nuw nsw i64 %50, 1
  %65 = icmp eq i64 %64, 16
  br i1 %65, label %66, label %49, !llvm.loop !307

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 65
  %68 = load i16, ptr %67, align 2, !tbaa !308
  %69 = sext i16 %68 to i32
  store i32 %69, ptr %46, align 4, !tbaa !157
  %70 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %71 = load i32, ptr %70, align 4, !tbaa !173
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %141, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %75 = load i32, ptr %74, align 8, !tbaa !124
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %141

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %79 = load i32, ptr %78, align 8, !tbaa !79
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %83 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %84 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %85

85:                                               ; preds = %81, %112
  %86 = phi i64 [ 0, %81 ], [ %113, %112 ]
  %87 = load i32, ptr %82, align 4, !tbaa !77
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %97, label %112

89:                                               ; preds = %112, %77
  %90 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %91 = load i32, ptr %90, align 8, !tbaa !79
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %95 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %96 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %117

97:                                               ; preds = %85, %97
  %98 = phi i64 [ %108, %97 ], [ 0, %85 ]
  %99 = load ptr, ptr %1, align 8, !tbaa !133
  %100 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %99) #15
  %101 = load i32, ptr %83, align 4, !tbaa !154
  %102 = load ptr, ptr %84, align 8, !tbaa !62
  %103 = getelementptr inbounds ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = getelementptr inbounds ptr, ptr %104, i64 %86
  %106 = load ptr, ptr %105, align 8, !tbaa !63
  %107 = getelementptr inbounds i32, ptr %106, i64 %98
  store i32 %101, ptr %107, align 4, !tbaa !53
  %108 = add nuw nsw i64 %98, 1
  %109 = load i32, ptr %82, align 4, !tbaa !77
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %97, label %112, !llvm.loop !309

112:                                              ; preds = %97, %85
  %113 = add nuw nsw i64 %86, 1
  %114 = load i32, ptr %78, align 8, !tbaa !79
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %85, label %89, !llvm.loop !310

117:                                              ; preds = %93, %136
  %118 = phi i64 [ 0, %93 ], [ %137, %136 ]
  %119 = load i32, ptr %94, align 4, !tbaa !77
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117, %121
  %122 = phi i64 [ %132, %121 ], [ 0, %117 ]
  %123 = load ptr, ptr %1, align 8, !tbaa !133
  %124 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %3, ptr noundef %123) #15
  %125 = load i32, ptr %95, align 4, !tbaa !154
  %126 = load ptr, ptr %96, align 8, !tbaa !62
  %127 = getelementptr inbounds ptr, ptr %126, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !63
  %129 = getelementptr inbounds ptr, ptr %128, i64 %118
  %130 = load ptr, ptr %129, align 8, !tbaa !63
  %131 = getelementptr inbounds i32, ptr %130, i64 %122
  store i32 %125, ptr %131, align 4, !tbaa !53
  %132 = add nuw nsw i64 %122, 1
  %133 = load i32, ptr %94, align 4, !tbaa !77
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %121, label %136, !llvm.loop !311

136:                                              ; preds = %121, %117
  %137 = add nuw nsw i64 %118, 1
  %138 = load i32, ptr %90, align 8, !tbaa !79
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %117, label %141, !llvm.loop !312

141:                                              ; preds = %136, %21, %89, %66, %73
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  ret void
}

declare void @readIntraPredMode_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @readSyntaxElement_Intra4x4PredictionMode(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @readCIPredMode_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

declare void @readIPCM_CABAC(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

declare void @arideco_start_decoding(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @read_skip_flag_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @readMB_typeInfo_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @mb_is_available(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @readB8_typeInfo_CABAC_p_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare void @read_skip_flag_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @readMB_typeInfo_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare void @readB8_typeInfo_CABAC_b_slice(ptr noundef, ptr noundef, ptr noundef) #5

declare void @linfo_se(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

declare void @read_MVD_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @readMBMotionVectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = alloca [2 x i16], align 2
  %8 = alloca %struct.MotionVector, align 2
  %9 = alloca [4 x %struct.pix_pos], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %10 = load ptr, ptr %2, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 35
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #15
  %15 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 6
  %16 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 5
  %17 = zext nneg i32 %3 to i64
  %18 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 13
  %19 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 12
  %20 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 58
  %21 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 2
  %23 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %25 = getelementptr inbounds %struct.MotionVector, ptr %8, i64 0, i32 1
  %26 = sext i32 %4 to i64
  %27 = sext i32 %5 to i64
  %28 = sext i32 %4 to i64
  %29 = icmp sgt i32 %5, 0
  %30 = icmp sgt i32 %4, 0
  br label %31

31:                                               ; preds = %6, %169
  %32 = phi i64 [ 0, %6 ], [ %35, %169 ]
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, -2
  %35 = add i64 %32, %27
  %36 = getelementptr ptr, ptr %14, i64 %32
  br label %37

37:                                               ; preds = %31, %166
  %38 = phi i64 [ 0, %31 ], [ %167, %166 ]
  %39 = trunc i64 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = add nsw i32 %40, %34
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 38, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !54
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, %3
  %47 = icmp eq i8 %44, 2
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %166

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 37, i64 %42
  %51 = load i8, ptr %50, align 1, !tbaa !54
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %166, label %53

53:                                               ; preds = %49
  %54 = sext i8 %51 to i64
  %55 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %54
  %56 = load i32, ptr %55, align 8, !tbaa !53
  %57 = getelementptr inbounds [8 x [2 x i32]], ptr @BLOCK_STEP, i64 0, i64 %54, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !53
  %59 = shl i32 %56, 2
  %60 = shl i32 %58, 2
  br i1 %29, label %61, label %166

61:                                               ; preds = %53
  %62 = load i32, ptr %15, align 4, !tbaa !73
  %63 = sext i32 %62 to i64
  %64 = getelementptr ptr, ptr %36, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !63
  %66 = load i32, ptr %16, align 8, !tbaa !72
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %38, %67
  %69 = getelementptr inbounds %struct.pic_motion_params, ptr %65, i64 %68, i32 2, i64 %17
  %70 = load i8, ptr %69, align 1, !tbaa !54
  %71 = add nsw i64 %38, %28
  %72 = sext i8 %70 to i16
  %73 = lshr i64 94, %54
  %74 = and i64 %73, 1
  %75 = icmp eq i64 %74, 0
  %76 = shl nsw i32 %56, 1
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 1
  %79 = sext i32 %56 to i64
  %80 = call i32 @llvm.smax.i32(i32 %58, i32 2)
  %81 = sext i32 %58 to i64
  %82 = icmp sgt i32 %56, 0
  %83 = icmp sgt i32 %56, 0
  %84 = zext nneg i32 %80 to i64
  br label %85

85:                                               ; preds = %61, %163
  %86 = phi i64 [ %32, %61 ], [ %164, %163 ]
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 2
  store i32 %88, ptr %18, align 8, !tbaa !141
  %89 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %17, i64 %86
  br i1 %30, label %90, label %163

90:                                               ; preds = %85
  %91 = load i32, ptr %15, align 4, !tbaa !73
  %92 = trunc i64 %86 to i32
  %93 = add nsw i32 %91, %92
  %94 = add nsw i32 %93, %58
  %95 = trunc i64 %86 to i32
  %96 = add i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = sext i32 %94 to i64
  br label %101

99:                                               ; preds = %158, %149
  %100 = icmp slt i64 %131, %71
  br i1 %100, label %101, label %163, !llvm.loop !313

101:                                              ; preds = %90, %99
  %102 = phi i64 [ %38, %90 ], [ %131, %99 ]
  %103 = trunc i64 %102 to i32
  %104 = shl i32 %103, 2
  store i32 %104, ptr %19, align 4, !tbaa !142
  %105 = load i32, ptr %16, align 8, !tbaa !72
  call void @get_neighbors(ptr noundef nonnull %2, ptr noundef nonnull %9, i32 noundef %104, i32 noundef %88, i32 noundef %59)
  %106 = load ptr, ptr %20, align 8, !tbaa !268
  call void %106(ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef nonnull %8, i16 noundef signext %72, ptr noundef %14, i32 noundef %3, i32 noundef %104, i32 noundef %88, i32 noundef %59, i32 noundef %60) #15
  br label %107

107:                                              ; preds = %101, %107
  %108 = phi i64 [ 0, %101 ], [ %117, %107 ]
  %109 = trunc i64 %108 to i32
  %110 = shl i32 %109, 1
  %111 = add i32 %110, %3
  store i32 %111, ptr %21, align 8, !tbaa !194
  %112 = load ptr, ptr %22, align 8, !tbaa !153
  %113 = call i32 %112(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1) #15
  %114 = load i32, ptr %23, align 4, !tbaa !154
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 %108
  store i16 %115, ptr %116, align 2, !tbaa !87
  %117 = add nuw nsw i64 %108, 1
  %118 = icmp eq i64 %108, 0
  br i1 %118, label %107, label %119, !llvm.loop !314

119:                                              ; preds = %107
  %120 = trunc i64 %102 to i32
  %121 = add nsw i32 %105, %120
  %122 = load i16, ptr %7, align 2, !tbaa !87
  %123 = load i16, ptr %8, align 2, !tbaa !265
  %124 = add i16 %123, %122
  %125 = load i16, ptr %24, align 2, !tbaa !87
  %126 = load i16, ptr %25, align 2, !tbaa !264
  %127 = add i16 %126, %125
  %128 = sext i32 %121 to i64
  %129 = add nsw i32 %121, %56
  br label %132

130:                                              ; preds = %146
  %131 = add i64 %102, %79
  br i1 %83, label %152, label %149

132:                                              ; preds = %119, %146
  %133 = phi i64 [ %97, %119 ], [ %147, %146 ]
  br i1 %82, label %134, label %146

134:                                              ; preds = %132
  %135 = getelementptr inbounds ptr, ptr %14, i64 %133
  %136 = load ptr, ptr %135, align 8, !tbaa !63
  %137 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %128
  br label %138

138:                                              ; preds = %134, %138
  %139 = phi ptr [ %141, %138 ], [ %137, %134 ]
  %140 = phi i32 [ %144, %138 ], [ %121, %134 ]
  %141 = getelementptr inbounds %struct.pic_motion_params, ptr %139, i64 1
  %142 = getelementptr inbounds %struct.pic_motion_params, ptr %139, i64 0, i32 1, i64 %17
  store i16 %124, ptr %142, align 4, !tbaa.struct !315
  %143 = getelementptr inbounds i8, ptr %142, i64 2
  store i16 %127, ptr %143, align 2, !tbaa.struct !316
  %144 = add nsw i32 %140, 1
  %145 = icmp slt i32 %144, %129
  br i1 %145, label %138, label %146, !llvm.loop !317

146:                                              ; preds = %138, %132
  %147 = add nsw i64 %133, 1
  %148 = icmp slt i64 %147, %98
  br i1 %148, label %132, label %130, !llvm.loop !318

149:                                              ; preds = %152, %130
  br i1 %75, label %99, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %17, i64 %86, i64 %102
  br label %158

152:                                              ; preds = %130, %152
  %153 = phi i64 [ %156, %152 ], [ %102, %130 ]
  %154 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %17, i64 %86, i64 %153
  store i16 %122, ptr %154, align 2, !tbaa !87
  %155 = getelementptr inbounds %struct.macroblock, ptr %2, i64 0, i32 31, i64 %17, i64 %86, i64 %153, i64 1
  store i16 %125, ptr %155, align 2, !tbaa !87
  %156 = add i64 %153, 1
  %157 = icmp slt i64 %156, %131
  br i1 %157, label %152, label %149, !llvm.loop !319

158:                                              ; preds = %150, %158
  %159 = phi i64 [ 1, %150 ], [ %161, %158 ]
  %160 = getelementptr inbounds [4 x [2 x i16]], ptr %89, i64 %159, i64 %102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %160, ptr nonnull align 2 %151, i64 %78, i1 false)
  %161 = add nuw nsw i64 %159, 1
  %162 = icmp eq i64 %161, %84
  br i1 %162, label %99, label %158, !llvm.loop !320

163:                                              ; preds = %99, %85
  %164 = add i64 %86, %81
  %165 = icmp slt i64 %164, %35
  br i1 %165, label %85, label %166, !llvm.loop !321

166:                                              ; preds = %163, %53, %37, %49
  %167 = add i64 %38, %26
  %168 = icmp slt i64 %167, 4
  br i1 %168, label %37, label %169, !llvm.loop !322

169:                                              ; preds = %166
  %170 = icmp slt i64 %35, 4
  br i1 %170, label %31, label %171, !llvm.loop !323

171:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i8 @readRefPictureIdx_Null(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i8 signext %3, i32 %4) #12 {
  ret i8 0
}

; Function Attrs: nounwind uwtable
define internal signext i8 @readRefPictureIdx_FLC(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef signext %3, i32 %4) #3 {
  %6 = icmp sgt i8 %3, 3
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %7, ptr %8, align 8, !tbaa !193
  %9 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 1, ptr %9, align 4, !tbaa !157
  %10 = load ptr, ptr %2, align 8, !tbaa !133
  %11 = tail call i32 @readSyntaxElement_FLC(ptr noundef %1, ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !154
  %14 = sub nsw i32 1, %13
  store i32 %14, ptr %12, align 4, !tbaa !154
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define internal signext i8 @readRefPictureIdx_VLC(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef signext %3, i32 noundef %4) #3 {
  %6 = icmp sgt i8 %3, 3
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %7, ptr %8, align 8, !tbaa !193
  %9 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  store i32 %4, ptr %9, align 8, !tbaa !194
  %10 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %13 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !154
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

declare void @readRefFrame_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

declare void @read_CBP_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @read_delta_quant(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  store i32 %3, ptr %0, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 57
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !54
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %13
  %15 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !112
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %14, align 8, !tbaa !133
  %22 = getelementptr inbounds %struct.bit_stream, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !136
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %4
  %26 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 8
  store ptr @linfo_se, ptr %26, align 8, !tbaa !138
  br label %29

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 9
  store ptr @read_dQuant_CABAC, ptr %28, align 8, !tbaa !139
  br label %29

29:                                               ; preds = %27, %25
  %30 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %13, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !153
  %32 = tail call i32 %31(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %14) #15
  %33 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !154
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 24
  store i16 %35, ptr %36, align 8, !tbaa !94
  %37 = shl i32 %34, 16
  %38 = ashr exact i32 %37, 16
  %39 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 67
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 -26, %41
  %43 = icmp slt i32 %38, %42
  %44 = add nsw i32 %41, 25
  %45 = icmp sgt i32 %38, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 500) #15
  br label %48

48:                                               ; preds = %29, %47
  %49 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 29
  %50 = load i32, ptr %49, align 4, !tbaa !150
  %51 = load i16, ptr %36, align 8, !tbaa !94
  %52 = sext i16 %51 to i32
  %53 = load i32, ptr %39, align 4, !tbaa !58
  %54 = shl nsw i32 %53, 1
  %55 = add i32 %50, 52
  %56 = add i32 %55, %52
  %57 = add nsw i32 %56, %54
  %58 = add nsw i32 %53, 52
  %59 = srem i32 %57, %58
  %60 = sub nsw i32 %59, %53
  store i32 %60, ptr %49, align 4, !tbaa !150
  %61 = load ptr, ptr %6, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 14
  store i32 %60, ptr %62, align 4, !tbaa !46
  %63 = getelementptr inbounds %struct.video_par, ptr %61, i64 0, i32 67
  %64 = load i32, ptr %63, align 4, !tbaa !58
  %65 = add nsw i32 %64, %60
  %66 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 16
  store i32 %65, ptr %66, align 8, !tbaa !53
  %67 = load ptr, ptr %1, align 8, !tbaa !42
  %68 = getelementptr inbounds %struct.slice, ptr %67, i64 0, i32 125
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.video_par, ptr %61, i64 0, i32 68
  br label %71

71:                                               ; preds = %87, %48
  %72 = phi i64 [ 0, %48 ], [ %91, %87 ]
  %73 = load i32, ptr %70, align 8, !tbaa !47
  %74 = sub nsw i32 0, %73
  %75 = getelementptr inbounds %struct.storable_picture, ptr %69, i64 0, i32 56, i64 %72
  %76 = load i32, ptr %75, align 4, !tbaa !53
  %77 = add nsw i32 %76, %60
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 %74)
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 51)
  %80 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 15, i64 %72
  store i32 %79, ptr %80, align 4, !tbaa !53
  %81 = icmp slt i32 %78, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %71
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !54
  %86 = zext i8 %85 to i32
  br label %87

87:                                               ; preds = %82, %71
  %88 = phi i32 [ %86, %82 ], [ %79, %71 ]
  store i32 %88, ptr %80, align 4, !tbaa !53
  %89 = load i32, ptr %70, align 8, !tbaa !47
  %90 = add nsw i32 %89, %88
  %91 = add nuw nsw i64 %72, 1
  %92 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 16, i64 %91
  store i32 %90, ptr %92, align 4, !tbaa !53
  %93 = icmp eq i64 %72, 0
  br i1 %93, label %71, label %94, !llvm.loop !55

94:                                               ; preds = %87
  %95 = load i32, ptr %66, align 8, !tbaa !53
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.video_par, ptr %61, i64 0, i32 73
  %99 = load i32, ptr %98, align 4, !tbaa !59
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  br label %102

102:                                              ; preds = %94, %97
  %103 = phi i32 [ 0, %94 ], [ %101, %97 ]
  %104 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 17
  store i32 %103, ptr %104, align 4, !tbaa !60
  ret void
}

declare void @linfo_levrun_inter(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

declare void @readRunLevel_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

declare void @itrans_2(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff8x8MB_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 2)
  tail call fastcc void @readCompCoeff8x8_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 3)
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 2)
  tail call fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 3)
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff4x4MB_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %9 = load i16, ptr %8, align 8, !tbaa !93
  %10 = and i16 %9, -5
  %11 = icmp eq i16 %10, 10
  %12 = zext i1 %11 to i32
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %13
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.video_par, ptr %18, i64 0, i32 105
  %20 = load i32, ptr %19, align 8, !tbaa !124
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16, %6
  %23 = and i16 %9, -5
  %24 = icmp eq i16 %23, 10
  %25 = select i1 %24, i32 1, i32 5
  %26 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %25, ptr %26, align 8, !tbaa !193
  br label %34

27:                                               ; preds = %16
  %28 = icmp eq i32 %2, 1
  %29 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  br i1 %28, label %30, label %32

30:                                               ; preds = %27
  %31 = select i1 %11, i32 11, i32 15
  store i32 %31, ptr %29, align 8, !tbaa !193
  br label %34

32:                                               ; preds = %27
  %33 = select i1 %11, i32 17, i32 21
  store i32 %33, ptr %29, align 8, !tbaa !193
  br label %34

34:                                               ; preds = %30, %32, %22
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %36 = load i32, ptr %35, align 4, !tbaa !60
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %190

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 80
  br label %40

40:                                               ; preds = %38, %187
  %41 = phi i64 [ 0, %38 ], [ %188, %187 ]
  %42 = load ptr, ptr %39, align 8, !tbaa !62
  %43 = getelementptr inbounds ptr, ptr %42, i64 %13
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  %45 = getelementptr inbounds ptr, ptr %44, i64 %41
  %46 = lshr exact i64 %41, 2
  %47 = trunc i64 %41 to i32
  br label %48

48:                                               ; preds = %40, %184
  %49 = phi i64 [ 0, %40 ], [ %185, %184 ]
  %50 = lshr exact i64 %49, 3
  %51 = add nuw nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  %53 = shl nuw nsw i32 1, %52
  %54 = and i32 %53, %5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %184, label %56

56:                                               ; preds = %48
  %57 = trunc i64 %49 to i32
  tail call fastcc void @readCompCoeff4x4SMB_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %47, i32 noundef %57, i32 noundef %12, ptr noundef nonnull %14)
  switch i16 %9, label %59 [
    i16 14, label %58
    i16 10, label %58
  ]

58:                                               ; preds = %56, %56
  br label %120

59:                                               ; preds = %56, %117
  %60 = phi i64 [ %118, %117 ], [ 0, %56 ]
  %61 = getelementptr inbounds ptr, ptr %45, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = getelementptr inbounds i32, ptr %62, i64 %49
  %64 = and i64 %60, 3
  %65 = and i64 %60, 3
  %66 = getelementptr inbounds [4 x i32], ptr %3, i64 %65
  %67 = and i64 %60, 3
  %68 = getelementptr inbounds [4 x i32], ptr %3, i64 %67, i64 1
  %69 = and i64 %60, 3
  %70 = getelementptr inbounds [4 x i32], ptr %3, i64 %69, i64 2
  %71 = getelementptr inbounds [4 x i32], ptr %3, i64 %64, i64 3
  br label %72

72:                                               ; preds = %59, %113
  %73 = phi ptr [ %63, %59 ], [ %114, %113 ]
  %74 = phi i32 [ 0, %59 ], [ %115, %113 ]
  %75 = load i32, ptr %73, align 4, !tbaa !53
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %66, align 4, !tbaa !53
  %79 = mul nsw i32 %78, %75
  %80 = shl i32 %79, %4
  %81 = add nsw i32 %80, 8
  %82 = ashr i32 %81, 4
  store i32 %82, ptr %73, align 4, !tbaa !53
  br label %83

83:                                               ; preds = %77, %72
  %84 = getelementptr inbounds i32, ptr %73, i64 1
  %85 = load i32, ptr %84, align 4, !tbaa !53
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %68, align 4, !tbaa !53
  %89 = mul nsw i32 %88, %85
  %90 = shl i32 %89, %4
  %91 = add nsw i32 %90, 8
  %92 = ashr i32 %91, 4
  store i32 %92, ptr %84, align 4, !tbaa !53
  br label %93

93:                                               ; preds = %87, %83
  %94 = getelementptr inbounds i32, ptr %73, i64 2
  %95 = load i32, ptr %94, align 4, !tbaa !53
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %70, align 4, !tbaa !53
  %99 = mul nsw i32 %98, %95
  %100 = shl i32 %99, %4
  %101 = add nsw i32 %100, 8
  %102 = ashr i32 %101, 4
  store i32 %102, ptr %94, align 4, !tbaa !53
  br label %103

103:                                              ; preds = %97, %93
  %104 = getelementptr inbounds i32, ptr %73, i64 3
  %105 = load i32, ptr %104, align 4, !tbaa !53
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load i32, ptr %71, align 4, !tbaa !53
  %109 = mul nsw i32 %108, %105
  %110 = shl i32 %109, %4
  %111 = add nsw i32 %110, 8
  %112 = ashr i32 %111, 4
  store i32 %112, ptr %104, align 4, !tbaa !53
  br label %113

113:                                              ; preds = %107, %103
  %114 = getelementptr inbounds i32, ptr %73, i64 4
  %115 = add nuw nsw i32 %74, 4
  %116 = icmp eq i32 %74, 0
  br i1 %116, label %72, label %117, !llvm.loop !324

117:                                              ; preds = %113
  %118 = add nuw nsw i64 %60, 1
  %119 = icmp eq i64 %118, 8
  br i1 %119, label %184, label %59, !llvm.loop !325

120:                                              ; preds = %58, %181
  %121 = phi i64 [ %182, %181 ], [ 0, %58 ]
  %122 = getelementptr inbounds ptr, ptr %45, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = getelementptr inbounds i32, ptr %123, i64 %49
  %125 = and i64 %121, 3
  %126 = icmp eq i64 %125, 0
  %127 = and i64 %121, 3
  %128 = getelementptr inbounds [4 x i32], ptr %3, i64 %127
  %129 = and i64 %121, 3
  %130 = getelementptr inbounds [4 x i32], ptr %3, i64 %129, i64 1
  %131 = and i64 %121, 3
  %132 = getelementptr inbounds [4 x i32], ptr %3, i64 %131, i64 2
  %133 = and i64 %121, 3
  %134 = getelementptr inbounds [4 x i32], ptr %3, i64 %133, i64 3
  br label %135

135:                                              ; preds = %120, %177
  %136 = phi ptr [ %124, %120 ], [ %178, %177 ]
  %137 = phi i32 [ 0, %120 ], [ %179, %177 ]
  br i1 %126, label %147, label %138

138:                                              ; preds = %135
  %139 = load i32, ptr %136, align 4, !tbaa !53
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %128, align 4, !tbaa !53
  %143 = mul nsw i32 %142, %139
  %144 = shl i32 %143, %4
  %145 = add nsw i32 %144, 8
  %146 = ashr i32 %145, 4
  store i32 %146, ptr %136, align 4, !tbaa !53
  br label %147

147:                                              ; preds = %141, %138, %135
  %148 = getelementptr inbounds i32, ptr %136, i64 1
  %149 = load i32, ptr %148, align 4, !tbaa !53
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %130, align 4, !tbaa !53
  %153 = mul nsw i32 %152, %149
  %154 = shl i32 %153, %4
  %155 = add nsw i32 %154, 8
  %156 = ashr i32 %155, 4
  store i32 %156, ptr %148, align 4, !tbaa !53
  br label %157

157:                                              ; preds = %151, %147
  %158 = getelementptr inbounds i32, ptr %136, i64 2
  %159 = load i32, ptr %158, align 4, !tbaa !53
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %132, align 4, !tbaa !53
  %163 = mul nsw i32 %162, %159
  %164 = shl i32 %163, %4
  %165 = add nsw i32 %164, 8
  %166 = ashr i32 %165, 4
  store i32 %166, ptr %158, align 4, !tbaa !53
  br label %167

167:                                              ; preds = %161, %157
  %168 = getelementptr inbounds i32, ptr %136, i64 3
  %169 = load i32, ptr %168, align 4, !tbaa !53
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %134, align 4, !tbaa !53
  %173 = mul nsw i32 %172, %169
  %174 = shl i32 %173, %4
  %175 = add nsw i32 %174, 8
  %176 = ashr i32 %175, 4
  store i32 %176, ptr %168, align 4, !tbaa !53
  br label %177

177:                                              ; preds = %171, %167
  %178 = getelementptr inbounds i32, ptr %136, i64 4
  %179 = add nuw nsw i32 %137, 4
  %180 = icmp eq i32 %137, 0
  br i1 %180, label %135, label %181, !llvm.loop !326

181:                                              ; preds = %177
  %182 = add nuw nsw i64 %121, 1
  %183 = icmp eq i64 %182, 8
  br i1 %183, label %184, label %120, !llvm.loop !327

184:                                              ; preds = %181, %117, %48
  %185 = add nuw nsw i64 %49, 8
  %186 = icmp eq i64 %49, 0
  br i1 %186, label %48, label %187, !llvm.loop !328

187:                                              ; preds = %184
  %188 = add nuw nsw i64 %41, 8
  %189 = icmp eq i64 %41, 0
  br i1 %189, label %40, label %207, !llvm.loop !329

190:                                              ; preds = %34, %204
  %191 = phi i32 [ %205, %204 ], [ 0, %34 ]
  %192 = lshr exact i32 %191, 2
  br label %193

193:                                              ; preds = %190, %201
  %194 = phi i32 [ 0, %190 ], [ %202, %201 ]
  %195 = lshr exact i32 %194, 3
  %196 = add nuw nsw i32 %195, %192
  %197 = shl nuw nsw i32 1, %196
  %198 = and i32 %197, %5
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %193
  tail call fastcc void @readCompCoeff4x4SMB_CABAC(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %191, i32 noundef %194, i32 noundef %12, ptr noundef nonnull %14)
  br label %201

201:                                              ; preds = %193, %200
  %202 = add nuw nsw i32 %194, 8
  %203 = icmp eq i32 %194, 0
  br i1 %203, label %193, label %204, !llvm.loop !330

204:                                              ; preds = %201
  %205 = add nuw nsw i32 %191, 8
  %206 = icmp eq i32 %191, 0
  br i1 %206, label %190, label %207, !llvm.loop !331

207:                                              ; preds = %204, %187
  ret void
}

declare void @linfo_levrun_c2x2(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #5

declare void @ihadamard2x2(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @read_dQuant_CABAC(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff8x8_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = shl nuw nsw i32 1, %3
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %171, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 105
  %14 = load i32, ptr %13, align 8, !tbaa !124
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 46
  %19 = load i32, ptr %18, align 8, !tbaa !196
  br label %20

20:                                               ; preds = %10, %16
  %21 = phi i32 [ %19, %16 ], [ %2, %10 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 42
  %24 = load i32, ptr %23, align 8, !tbaa !128
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %25
  %27 = shl i32 %3, 2
  %28 = and i32 %3, 1
  %29 = shl nuw nsw i32 %28, 1
  %30 = sub nsw i32 %27, %29
  %31 = zext nneg i32 %30 to i64
  %32 = shl i64 51, %31
  %33 = zext nneg i32 %2 to i64
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33, i64 %33
  %35 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %36 = load i32, ptr %35, align 4, !tbaa !186
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %40 = load i32, ptr %39, align 8, !tbaa !149
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8
  br label %43

43:                                               ; preds = %38, %20
  %44 = phi ptr [ @FIELD_SCAN8x8, %20 ], [ %42, %38 ]
  %45 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 132
  %46 = load ptr, ptr %45, align 8, !tbaa !197
  %47 = sext i32 %21 to i64
  %48 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %46, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !53
  %53 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 133
  %54 = load ptr, ptr %53, align 8, !tbaa !198
  %55 = getelementptr inbounds i32, ptr %54, i64 %50
  %56 = load i32, ptr %55, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %58 = load i32, ptr %57, align 8, !tbaa !81
  %59 = icmp eq i32 %58, 1
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 90, i64 %47, i64 %60
  %62 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 91, i64 %47, i64 %60
  %63 = select i1 %59, ptr %61, ptr %62
  %64 = shl nuw nsw i32 %28, 3
  %65 = and i32 %27, -8
  %66 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 79
  %67 = load ptr, ptr %66, align 8, !tbaa !99
  %68 = getelementptr inbounds ptr, ptr %67, i64 %33
  %69 = load ptr, ptr %68, align 8, !tbaa !63
  %70 = zext nneg i32 %65 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  store i32 %64, ptr %72, align 4, !tbaa !142
  %73 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  store i32 %65, ptr %73, align 8, !tbaa !141
  %74 = icmp eq i32 %2, 0
  %75 = or i1 %74, %15
  br i1 %75, label %76, label %78

76:                                               ; preds = %43
  %77 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 2, ptr %77, align 8, !tbaa !193
  br label %83

78:                                               ; preds = %43
  %79 = icmp eq i32 %2, 1
  %80 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  br i1 %79, label %81, label %82

81:                                               ; preds = %78
  store i32 12, ptr %80, align 8, !tbaa !193
  br label %83

82:                                               ; preds = %78
  store i32 18, ptr %80, align 8, !tbaa !193
  br label %83

83:                                               ; preds = %81, %82, %76
  %84 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %84, align 8, !tbaa !139
  %85 = select i1 %59, i32 7, i32 12
  store i32 %85, ptr %1, align 8, !tbaa !129
  %86 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 57
  %87 = load ptr, ptr %86, align 8, !tbaa !131
  %88 = zext nneg i32 %85 to i64
  %89 = getelementptr inbounds i8, ptr %26, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !54
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds %struct.datapartition, ptr %87, i64 %91
  %93 = getelementptr inbounds %struct.datapartition, ptr %87, i64 %91, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !153
  %95 = tail call i32 %94(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %92) #15
  %96 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !154
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %171, label %99

99:                                               ; preds = %83
  %100 = load i64, ptr %34, align 8, !tbaa !61
  %101 = or i64 %100, %32
  store i64 %101, ptr %34, align 8, !tbaa !61
  %102 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !194
  %104 = shl nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %44, i64 %105
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = load i8, ptr %106, align 1, !tbaa !54
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds i8, ptr %106, i64 2
  %111 = load i8, ptr %107, align 1, !tbaa !54
  %112 = zext i8 %111 to i64
  %113 = zext i8 %108 to i64
  %114 = getelementptr inbounds [8 x i32], ptr %63, i64 %112, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !53
  %116 = mul nsw i32 %115, %97
  %117 = shl i32 %116, %52
  %118 = add nsw i32 %117, 32
  %119 = ashr i32 %118, 6
  %120 = getelementptr inbounds ptr, ptr %71, i64 %112
  %121 = load ptr, ptr %120, align 8, !tbaa !63
  %122 = add nuw nsw i32 %64, %109
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %121, i64 %123
  store i32 %119, ptr %124, align 4, !tbaa !53
  %125 = load i32, ptr %57, align 8, !tbaa !81
  %126 = icmp eq i32 %125, 1
  %127 = select i1 %126, i32 9, i32 14
  store i32 %127, ptr %1, align 8, !tbaa !129
  %128 = load ptr, ptr %86, align 8, !tbaa !131
  %129 = zext nneg i32 %127 to i64
  %130 = getelementptr inbounds i8, ptr %26, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !54
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds %struct.datapartition, ptr %128, i64 %132
  %134 = getelementptr inbounds %struct.datapartition, ptr %128, i64 %132, i32 2
  br label %135

135:                                              ; preds = %99, %165
  %136 = phi i32 [ 1, %99 ], [ %167, %165 ]
  %137 = phi ptr [ %110, %99 ], [ %166, %165 ]
  %138 = load ptr, ptr %134, align 8, !tbaa !153
  %139 = tail call i32 %138(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %133) #15
  %140 = load i32, ptr %96, align 4, !tbaa !154
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %165, label %142

142:                                              ; preds = %135
  %143 = load i32, ptr %102, align 8, !tbaa !194
  %144 = shl nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %137, i64 %145
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  %148 = load i8, ptr %146, align 1, !tbaa !54
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds i8, ptr %146, i64 2
  %151 = load i8, ptr %147, align 1, !tbaa !54
  %152 = zext i8 %151 to i64
  %153 = zext i8 %148 to i64
  %154 = getelementptr inbounds [8 x i32], ptr %63, i64 %152, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !53
  %156 = mul nsw i32 %155, %140
  %157 = shl i32 %156, %52
  %158 = add nsw i32 %157, 32
  %159 = ashr i32 %158, 6
  %160 = getelementptr inbounds ptr, ptr %71, i64 %152
  %161 = load ptr, ptr %160, align 8, !tbaa !63
  %162 = add nuw nsw i32 %64, %149
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %161, i64 %163
  store i32 %159, ptr %164, align 4, !tbaa !53
  br label %165

165:                                              ; preds = %135, %142
  %166 = phi ptr [ %150, %142 ], [ %137, %135 ]
  %167 = add nuw nsw i32 %136, 1
  %168 = icmp ult i32 %136, 64
  %169 = icmp ne i32 %140, 0
  %170 = and i1 %169, %168
  br i1 %170, label %135, label %171, !llvm.loop !332

171:                                              ; preds = %165, %83, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff8x8_CABAC_lossless(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = shl nuw nsw i32 1, %3
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %108, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = load ptr, ptr %0, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 42
  %15 = load i32, ptr %14, align 8, !tbaa !128
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
  %27 = load i32, ptr %26, align 4, !tbaa !186
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %31 = load i32, ptr %30, align 8, !tbaa !149
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8
  br label %34

34:                                               ; preds = %29, %10
  %35 = phi ptr [ @FIELD_SCAN8x8, %10 ], [ %33, %29 ]
  %36 = shl nuw nsw i32 %19, 3
  %37 = and i32 %18, -8
  %38 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 79
  %39 = load ptr, ptr %38, align 8, !tbaa !99
  %40 = getelementptr inbounds ptr, ptr %39, i64 %24
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = zext nneg i32 %37 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  store i32 %36, ptr %44, align 4, !tbaa !142
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  store i32 %37, ptr %45, align 8, !tbaa !141
  %46 = icmp eq i32 %2, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 105
  %49 = load i32, ptr %48, align 8, !tbaa !124
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %34
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 2, ptr %52, align 8, !tbaa !193
  br label %58

53:                                               ; preds = %47
  %54 = icmp eq i32 %2, 1
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  br i1 %54, label %56, label %57

56:                                               ; preds = %53
  store i32 12, ptr %55, align 8, !tbaa !193
  br label %58

57:                                               ; preds = %53
  store i32 18, ptr %55, align 8, !tbaa !193
  br label %58

58:                                               ; preds = %56, %57, %51
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  store ptr @readRunLevel_CABAC, ptr %59, align 8, !tbaa !139
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %61 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 57
  %62 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %63 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  br label %64

64:                                               ; preds = %58, %102
  %65 = phi ptr [ %35, %58 ], [ %103, %102 ]
  %66 = phi i32 [ 0, %58 ], [ %104, %102 ]
  %67 = load i32, ptr %60, align 8, !tbaa !81
  %68 = icmp eq i32 %67, 1
  %69 = icmp eq i32 %66, 0
  %70 = select i1 %69, i32 7, i32 9
  %71 = select i1 %69, i32 12, i32 14
  %72 = select i1 %68, i32 %70, i32 %71
  store i32 %72, ptr %1, align 8, !tbaa !129
  %73 = load ptr, ptr %61, align 8, !tbaa !131
  %74 = zext nneg i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %17, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !54
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds %struct.datapartition, ptr %73, i64 %77
  store ptr @readRunLevel_CABAC, ptr %59, align 8, !tbaa !139
  %79 = getelementptr inbounds %struct.datapartition, ptr %73, i64 %77, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !153
  %81 = tail call i32 %80(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %78) #15
  %82 = load i32, ptr %62, align 4, !tbaa !154
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %64
  %85 = load i32, ptr %63, align 8, !tbaa !194
  %86 = shl nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %65, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  %90 = load i8, ptr %88, align 1, !tbaa !54
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds i8, ptr %88, i64 2
  %93 = load i8, ptr %89, align 1, !tbaa !54
  %94 = load i64, ptr %25, align 8, !tbaa !61
  %95 = or i64 %94, %23
  store i64 %95, ptr %25, align 8, !tbaa !61
  %96 = zext i8 %93 to i64
  %97 = getelementptr inbounds ptr, ptr %43, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  %99 = add nuw nsw i32 %36, %91
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %98, i64 %100
  store i32 %82, ptr %101, align 4, !tbaa !53
  br label %102

102:                                              ; preds = %64, %84
  %103 = phi ptr [ %92, %84 ], [ %65, %64 ]
  %104 = add nuw nsw i32 %66, 1
  %105 = icmp ult i32 %66, 64
  %106 = icmp ne i32 %82, 0
  %107 = and i1 %106, %105
  br i1 %107, label %64, label %108, !llvm.loop !333

108:                                              ; preds = %102, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff4x4SMB_CABAC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #3 {
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !128
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !186
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %20 = load i32, ptr %19, align 8, !tbaa !149
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi ptr [ @FIELD_SCAN, %7 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = zext nneg i32 %2 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !63
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
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %42 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %43 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 8
  %44 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  %45 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %46 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %47 = add nsw i32 %4, 4
  %48 = add nsw i32 %3, 4
  br label %49

49:                                               ; preds = %23, %159
  %50 = phi i32 [ %3, %23 ], [ %160, %159 ]
  store i32 %50, ptr %30, align 8, !tbaa !141
  br label %51

51:                                               ; preds = %49, %156
  %52 = phi i32 [ %4, %49 ], [ %157, %156 ]
  store i32 %52, ptr %31, align 4, !tbaa !142
  br i1 %34, label %53, label %104

53:                                               ; preds = %51
  %54 = load i32, ptr %35, align 8, !tbaa !81
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 12, i32 7
  store i32 %56, ptr %1, align 8, !tbaa !129
  %57 = load ptr, ptr %36, align 8, !tbaa !131
  %58 = zext nneg i32 %56 to i64
  %59 = getelementptr inbounds i8, ptr %14, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !54
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.datapartition, ptr %57, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !133
  %64 = getelementptr inbounds %struct.bit_stream, ptr %63, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !136
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  store ptr @linfo_levrun_inter, ptr %37, align 8, !tbaa !138
  br label %69

68:                                               ; preds = %53
  store ptr @readRunLevel_CABAC, ptr %38, align 8, !tbaa !139
  br label %69

69:                                               ; preds = %68, %67
  %70 = getelementptr inbounds %struct.datapartition, ptr %57, i64 %61, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !153
  %72 = tail call i32 %71(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %62) #15
  %73 = load i32, ptr %39, align 4, !tbaa !154
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %104, label %75

75:                                               ; preds = %69
  %76 = load i32, ptr %40, align 8, !tbaa !194
  %77 = shl nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %33, i64 %78
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %79, align 1, !tbaa !54
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds i8, ptr %79, i64 2
  %84 = load i8, ptr %80, align 1, !tbaa !54
  %85 = zext i8 %84 to i32
  %86 = ashr i32 %52, 2
  %87 = add nsw i32 %86, %50
  %88 = icmp sgt i32 %87, 63
  br i1 %88, label %93, label %89

89:                                               ; preds = %75
  %90 = sext i32 %87 to i64
  %91 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !61
  br label %93

93:                                               ; preds = %75, %89
  %94 = phi i64 [ %92, %89 ], [ 0, %75 ]
  %95 = load i64, ptr %6, align 8, !tbaa !61
  %96 = or i64 %95, %94
  store i64 %96, ptr %6, align 8, !tbaa !61
  %97 = add nsw i32 %50, %85
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %29, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !63
  %101 = add nsw i32 %52, %82
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %100, i64 %102
  store i32 %73, ptr %103, align 4, !tbaa !53
  br label %104

104:                                              ; preds = %69, %93, %51
  %105 = phi i1 [ false, %93 ], [ true, %69 ], [ false, %51 ]
  %106 = phi ptr [ %83, %93 ], [ %33, %69 ], [ %33, %51 ]
  br i1 %105, label %156, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %41, align 8, !tbaa !81
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 14, i32 9
  store i32 %110, ptr %1, align 8, !tbaa !129
  %111 = load ptr, ptr %42, align 8, !tbaa !131
  %112 = zext nneg i32 %110 to i64
  %113 = getelementptr inbounds i8, ptr %14, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !54
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.datapartition, ptr %111, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !133
  %118 = getelementptr inbounds %struct.bit_stream, ptr %117, i64 0, i32 5
  %119 = load i32, ptr %118, align 8, !tbaa !136
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %107
  store ptr @linfo_levrun_inter, ptr %43, align 8, !tbaa !138
  br label %123

122:                                              ; preds = %107
  store ptr @readRunLevel_CABAC, ptr %44, align 8, !tbaa !139
  br label %123

123:                                              ; preds = %122, %121
  %124 = getelementptr inbounds %struct.datapartition, ptr %111, i64 %115, i32 2
  br label %125

125:                                              ; preds = %123, %150
  %126 = phi ptr [ %106, %123 ], [ %151, %150 ]
  %127 = phi i32 [ 1, %123 ], [ %152, %150 ]
  %128 = load ptr, ptr %124, align 8, !tbaa !153
  %129 = tail call i32 %128(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %116) #15
  %130 = load i32, ptr %45, align 4, !tbaa !154
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %125
  %133 = load i32, ptr %46, align 8, !tbaa !194
  %134 = shl nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %126, i64 %135
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  %138 = load i8, ptr %136, align 1, !tbaa !54
  %139 = zext i8 %138 to i32
  %140 = getelementptr inbounds i8, ptr %136, i64 2
  %141 = load i8, ptr %137, align 1, !tbaa !54
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %50, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %29, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !63
  %147 = add nsw i32 %52, %139
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %146, i64 %148
  store i32 %130, ptr %149, align 4, !tbaa !53
  br label %150

150:                                              ; preds = %125, %132
  %151 = phi ptr [ %140, %132 ], [ %126, %125 ]
  %152 = add nuw nsw i32 %127, 1
  %153 = icmp ult i32 %127, 16
  %154 = icmp ne i32 %130, 0
  %155 = and i1 %154, %153
  br i1 %155, label %125, label %156, !llvm.loop !334

156:                                              ; preds = %150, %104
  %157 = add nsw i32 %52, 4
  %158 = icmp slt i32 %52, %47
  br i1 %158, label %51, label %159, !llvm.loop !335

159:                                              ; preds = %156
  %160 = add nsw i32 %50, 4
  %161 = icmp slt i32 %50, %48
  br i1 %161, label %49, label %162, !llvm.loop !336

162:                                              ; preds = %159
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readCoeff4x4_CAVLC(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #3 {
  %8 = alloca %struct.syntaxelement, align 8
  %9 = alloca [15 x i8], align 1
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
  %15 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 42
  %16 = load i32, ptr %15, align 8, !tbaa !128
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %17
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %9) #15
  switch i32 %1, label %113 [
    i32 0, label %19
    i32 1, label %29
    i32 2, label %35
    i32 3, label %41
    i32 4, label %52
    i32 5, label %59
    i32 8, label %66
    i32 9, label %77
    i32 10, label %84
    i32 6, label %91
    i32 7, label %103
  ]

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = icmp eq i32 %21, 1
  %23 = select i1 %22, i32 9, i32 14
  %24 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  br label %114

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = sext i32 %14 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  br label %114

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %37 = load ptr, ptr %36, align 8, !tbaa !184
  %38 = sext i32 %14 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !63
  br label %114

41:                                               ; preds = %7
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %43 = load i32, ptr %42, align 8, !tbaa !81
  %44 = icmp eq i32 %43, 1
  %45 = select i1 %44, i32 9, i32 14
  %46 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %47 = load ptr, ptr %46, align 8, !tbaa !184
  %48 = sext i32 %14 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  br label %114

52:                                               ; preds = %7
  %53 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %54 = load ptr, ptr %53, align 8, !tbaa !184
  %55 = sext i32 %14 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  br label %114

59:                                               ; preds = %7
  %60 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %61 = load ptr, ptr %60, align 8, !tbaa !184
  %62 = sext i32 %14 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = getelementptr inbounds ptr, ptr %64, i64 1
  br label %114

66:                                               ; preds = %7
  %67 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %68 = load i32, ptr %67, align 8, !tbaa !81
  %69 = icmp eq i32 %68, 1
  %70 = select i1 %69, i32 9, i32 14
  %71 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %72 = load ptr, ptr %71, align 8, !tbaa !184
  %73 = sext i32 %14 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !63
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  br label %114

77:                                               ; preds = %7
  %78 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %79 = load ptr, ptr %78, align 8, !tbaa !184
  %80 = sext i32 %14 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !63
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  br label %114

84:                                               ; preds = %7
  %85 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %86 = load ptr, ptr %85, align 8, !tbaa !184
  %87 = sext i32 %14 to i64
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !63
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  br label %114

91:                                               ; preds = %7
  %92 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 76
  %93 = load i32, ptr %92, align 8, !tbaa !224
  %94 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %95 = load i32, ptr %94, align 8, !tbaa !81
  %96 = icmp eq i32 %95, 1
  %97 = select i1 %96, i32 8, i32 13
  %98 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %99 = load ptr, ptr %98, align 8, !tbaa !184
  %100 = sext i32 %14 to i64
  %101 = getelementptr inbounds ptr, ptr %99, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !63
  br label %114

103:                                              ; preds = %7
  %104 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %105 = load i32, ptr %104, align 8, !tbaa !81
  %106 = icmp eq i32 %105, 1
  %107 = select i1 %106, i32 10, i32 15
  %108 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %109 = load ptr, ptr %108, align 8, !tbaa !184
  %110 = sext i32 %14 to i64
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !63
  br label %114

113:                                              ; preds = %7
  unreachable

114:                                              ; preds = %103, %91, %84, %77, %66, %59, %52, %41, %35, %29, %19
  %115 = phi ptr [ %112, %103 ], [ %102, %91 ], [ %90, %84 ], [ %83, %77 ], [ %76, %66 ], [ %65, %59 ], [ %58, %52 ], [ %51, %41 ], [ %40, %35 ], [ %34, %29 ], [ %28, %19 ]
  %116 = phi i1 [ true, %103 ], [ false, %91 ], [ true, %84 ], [ true, %77 ], [ true, %66 ], [ true, %59 ], [ true, %52 ], [ true, %41 ], [ true, %35 ], [ true, %29 ], [ true, %19 ]
  %117 = phi i1 [ false, %103 ], [ true, %91 ], [ true, %84 ], [ true, %77 ], [ true, %66 ], [ true, %59 ], [ true, %52 ], [ true, %41 ], [ true, %35 ], [ true, %29 ], [ true, %19 ]
  %118 = phi i32 [ %107, %103 ], [ %97, %91 ], [ 9, %84 ], [ 7, %77 ], [ %70, %66 ], [ 9, %59 ], [ 7, %52 ], [ %45, %41 ], [ 9, %35 ], [ 7, %29 ], [ %23, %19 ]
  %119 = phi i32 [ 15, %103 ], [ %93, %91 ], [ 15, %84 ], [ 16, %77 ], [ 16, %66 ], [ 15, %59 ], [ 16, %52 ], [ 16, %41 ], [ 15, %35 ], [ 16, %29 ], [ 16, %19 ]
  %120 = load ptr, ptr %115, align 8, !tbaa !63
  %121 = sext i32 %3 to i64
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = sext i32 %2 to i64
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  store i8 0, ptr %125, align 1, !tbaa !54
  store i32 %118, ptr %8, align 8, !tbaa !129
  %126 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 57
  %127 = load ptr, ptr %126, align 8, !tbaa !131
  %128 = zext nneg i32 %118 to i64
  %129 = getelementptr inbounds i8, ptr %18, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !54
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds %struct.datapartition, ptr %127, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !133
  br i1 %116, label %134, label %204

134:                                              ; preds = %114
  switch i32 %1, label %144 [
    i32 7, label %135
    i32 2, label %135
    i32 1, label %135
    i32 0, label %135
  ]

135:                                              ; preds = %134, %134, %134, %134
  br i1 %117, label %136, label %140

136:                                              ; preds = %135
  %137 = shl i32 %2, 2
  %138 = shl i32 %3, 2
  %139 = tail call i32 @predict_nnz(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %137, i32 noundef %138), !range !337
  br label %153

140:                                              ; preds = %135
  %141 = shl i32 %3, 2
  %142 = add i32 %141, -16
  %143 = tail call i32 @predict_nnz_chroma(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %142), !range !337
  br label %153

144:                                              ; preds = %134
  %145 = add i32 %1, -3
  %146 = icmp ult i32 %145, 3
  %147 = shl i32 %2, 2
  %148 = shl i32 %3, 2
  br i1 %146, label %149, label %151

149:                                              ; preds = %144
  %150 = tail call i32 @predict_nnz(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %147, i32 noundef %148), !range !337
  br label %153

151:                                              ; preds = %144
  %152 = tail call i32 @predict_nnz(ptr noundef nonnull %0, i32 noundef 8, i32 noundef %147, i32 noundef %148), !range !337
  br label %153

153:                                              ; preds = %136, %140, %149, %151
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ], [ %139, %136 ], [ %143, %140 ]
  %155 = icmp ult i32 %154, 2
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = icmp ult i32 %154, 4
  br i1 %157, label %161, label %158

158:                                              ; preds = %156
  %159 = icmp ult i32 %154, 8
  %160 = select i1 %159, i32 2, i32 3
  br label %161

161:                                              ; preds = %158, %156, %153
  %162 = phi i32 [ 0, %153 ], [ 1, %156 ], [ %160, %158 ]
  %163 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  store i32 %162, ptr %163, align 4, !tbaa !154
  %164 = call i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr noundef nonnull %8, ptr noundef %133, ptr noundef nonnull %9) #15
  %165 = load i32, ptr %163, align 4, !tbaa !154
  %166 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !194
  switch i32 %1, label %181 [
    i32 7, label %168
    i32 2, label %168
    i32 1, label %168
    i32 0, label %168
  ]

168:                                              ; preds = %161, %161, %161, %161
  %169 = trunc i32 %165 to i8
  %170 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %171 = load ptr, ptr %170, align 8, !tbaa !184
  %172 = sext i32 %14 to i64
  %173 = getelementptr inbounds ptr, ptr %171, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !63
  %175 = load ptr, ptr %174, align 8, !tbaa !63
  %176 = sext i32 %3 to i64
  %177 = getelementptr inbounds ptr, ptr %175, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !63
  %179 = sext i32 %2 to i64
  %180 = getelementptr inbounds i8, ptr %178, i64 %179
  store i8 %169, ptr %180, align 1, !tbaa !54
  br label %210

181:                                              ; preds = %161
  %182 = add i32 %1, -3
  %183 = icmp ult i32 %182, 3
  %184 = trunc i32 %165 to i8
  %185 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 29
  %186 = load ptr, ptr %185, align 8, !tbaa !184
  %187 = sext i32 %14 to i64
  %188 = getelementptr inbounds ptr, ptr %186, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !63
  %190 = sext i32 %3 to i64
  %191 = sext i32 %2 to i64
  br i1 %183, label %192, label %198

192:                                              ; preds = %181
  %193 = getelementptr inbounds ptr, ptr %189, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !63
  %195 = getelementptr inbounds ptr, ptr %194, i64 %190
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = getelementptr inbounds i8, ptr %196, i64 %191
  store i8 %184, ptr %197, align 1, !tbaa !54
  br label %210

198:                                              ; preds = %181
  %199 = getelementptr inbounds ptr, ptr %189, i64 2
  %200 = load ptr, ptr %199, align 8, !tbaa !63
  %201 = getelementptr inbounds ptr, ptr %200, i64 %190
  %202 = load ptr, ptr %201, align 8, !tbaa !63
  %203 = getelementptr inbounds i8, ptr %202, i64 %191
  store i8 %184, ptr %203, align 1, !tbaa !54
  br label %210

204:                                              ; preds = %114
  %205 = call i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef %12, ptr noundef nonnull %8, ptr noundef %133) #15
  %206 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !154
  %208 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 2
  %209 = load i32, ptr %208, align 8, !tbaa !194
  br label %210

210:                                              ; preds = %168, %198, %192, %204
  %211 = phi i32 [ %207, %204 ], [ %165, %168 ], [ %165, %192 ], [ %165, %198 ]
  %212 = phi i32 [ %209, %204 ], [ %167, %168 ], [ %167, %192 ], [ %167, %198 ]
  %213 = sext i32 %119 to i64
  %214 = shl nsw i64 %213, 2
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %214, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 %214, i1 false)
  store i32 %211, ptr %6, align 4, !tbaa !53
  %215 = icmp eq i32 %211, 0
  br i1 %215, label %328, label %216

216:                                              ; preds = %210
  %217 = icmp eq i32 %212, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 3
  store i32 %212, ptr %219, align 4, !tbaa !157
  %220 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %8, ptr noundef %133) #15
  %221 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !338
  %223 = icmp sgt i32 %212, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %218
  %225 = add i32 %211, -1
  %226 = sub nsw i32 %225, %212
  %227 = sext i32 %225 to i64
  %228 = sext i32 %226 to i64
  br label %229

229:                                              ; preds = %224, %229
  %230 = phi i64 [ %227, %224 ], [ %238, %229 ]
  %231 = phi i32 [ %212, %224 ], [ %232, %229 ]
  %232 = add nsw i32 %231, -1
  %233 = shl nuw i32 1, %232
  %234 = and i32 %233, %222
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %235, i32 1, i32 -1
  %237 = getelementptr inbounds i32, ptr %4, i64 %230
  store i32 %236, ptr %237, align 4, !tbaa !53
  %238 = add nsw i64 %230, -1
  %239 = icmp sgt i64 %238, %228
  br i1 %239, label %229, label %240, !llvm.loop !339

240:                                              ; preds = %229, %218, %216
  %241 = add nsw i32 %211, -1
  %242 = sub nsw i32 %241, %212
  %243 = icmp sgt i32 %242, -1
  br i1 %243, label %244, label %288

244:                                              ; preds = %240
  %245 = icmp sgt i32 %211, 10
  %246 = icmp slt i32 %212, 3
  %247 = select i1 %245, i1 %246, i1 false
  %248 = zext i1 %247 to i32
  %249 = icmp sgt i32 %211, 3
  %250 = icmp eq i32 %212, 3
  %251 = select i1 %249, i1 %250, i1 false
  %252 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 4
  %253 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 4
  %254 = zext nneg i32 %242 to i64
  %255 = zext nneg i32 %242 to i64
  br label %256

256:                                              ; preds = %244, %271
  %257 = phi i64 [ %254, %244 ], [ %287, %271 ]
  %258 = phi i1 [ %251, %244 ], [ true, %271 ]
  %259 = phi i32 [ %248, %244 ], [ %284, %271 ]
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = call i32 @readSyntaxElement_Level_VLC0(ptr noundef nonnull %8, ptr noundef %133) #15
  br label %265

263:                                              ; preds = %256
  %264 = call i32 @readSyntaxElement_Level_VLCN(ptr noundef nonnull %8, i32 noundef %259, ptr noundef %133) #15
  br label %265

265:                                              ; preds = %263, %261
  br i1 %258, label %271, label %266

266:                                              ; preds = %265
  %267 = load i32, ptr %252, align 8, !tbaa !338
  %268 = icmp slt i32 %267, 1
  %269 = select i1 %268, i32 -1, i32 1
  %270 = add nsw i32 %269, %267
  store i32 %270, ptr %252, align 8, !tbaa !338
  br label %271

271:                                              ; preds = %266, %265
  %272 = load i32, ptr %253, align 8, !tbaa !338
  %273 = getelementptr inbounds i32, ptr %4, i64 %257
  store i32 %272, ptr %273, align 4, !tbaa !53
  %274 = call i32 @llvm.abs.i32(i32 %272, i1 true)
  %275 = sext i32 %259 to i64
  %276 = getelementptr inbounds [7 x i32], ptr @readCoeff4x4_CAVLC.incVlc, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !53
  %278 = icmp sgt i32 %274, %277
  %279 = zext i1 %278 to i32
  %280 = add nsw i32 %259, %279
  %281 = icmp eq i64 %257, %255
  %282 = icmp ugt i32 %274, 3
  %283 = and i1 %281, %282
  %284 = select i1 %283, i32 2, i32 %280
  %285 = trunc i64 %257 to i32
  %286 = icmp sgt i32 %285, 0
  %287 = add nsw i64 %257, -1
  br i1 %286, label %256, label %288, !llvm.loop !340

288:                                              ; preds = %271, %240
  %289 = icmp slt i32 %211, %119
  br i1 %289, label %290, label %298

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  store i32 %241, ptr %291, align 4, !tbaa !154
  br i1 %116, label %294, label %292

292:                                              ; preds = %290
  %293 = call i32 @readSyntaxElement_TotalZerosChromaDC(ptr noundef %12, ptr noundef nonnull %8, ptr noundef %133) #15
  br label %296

294:                                              ; preds = %290
  %295 = call i32 @readSyntaxElement_TotalZeros(ptr noundef nonnull %8, ptr noundef %133) #15
  br label %296

296:                                              ; preds = %294, %292
  %297 = load i32, ptr %291, align 4, !tbaa !154
  br label %298

298:                                              ; preds = %288, %296
  %299 = phi i32 [ %297, %296 ], [ 0, %288 ]
  %300 = icmp sgt i32 %299, 0
  %301 = icmp sgt i32 %211, 1
  %302 = and i1 %301, %300
  br i1 %302, label %303, label %323

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.syntaxelement, ptr %8, i64 0, i32 1
  %305 = sext i32 %211 to i64
  %306 = add nsw i64 %305, -1
  br label %307

307:                                              ; preds = %303, %307
  %308 = phi i64 [ %306, %303 ], [ %316, %307 ]
  %309 = phi i32 [ %299, %303 ], [ %315, %307 ]
  %310 = call i32 @llvm.smin.i32(i32 %309, i32 7)
  %311 = add nsw i32 %310, -1
  store i32 %311, ptr %304, align 4, !tbaa !154
  %312 = call i32 @readSyntaxElement_Run(ptr noundef nonnull %8, ptr noundef %133) #15
  %313 = load i32, ptr %304, align 4, !tbaa !154
  %314 = getelementptr inbounds i32, ptr %5, i64 %308
  store i32 %313, ptr %314, align 4, !tbaa !53
  %315 = sub nsw i32 %309, %313
  %316 = add nsw i64 %308, -1
  %317 = icmp ne i32 %315, 0
  %318 = and i64 %316, 4294967295
  %319 = icmp ne i64 %318, 0
  %320 = select i1 %317, i1 %319, i1 false
  br i1 %320, label %307, label %321, !llvm.loop !341

321:                                              ; preds = %307
  %322 = trunc i64 %316 to i32
  br label %323

323:                                              ; preds = %321, %298
  %324 = phi i32 [ %241, %298 ], [ %322, %321 ]
  %325 = phi i32 [ %299, %298 ], [ %315, %321 ]
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, ptr %5, i64 %326
  store i32 %325, ptr %327, align 4, !tbaa !53
  br label %328

328:                                              ; preds = %323, %210
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff4x4MB_CAVLC(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #3 {
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !186
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !149
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @SNGL_SCAN, ptr @FIELD_SCAN
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi ptr [ @FIELD_SCAN, %6 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !93
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
  %42 = load i32, ptr %41, align 4, !tbaa !60
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 80
  br i1 %43, label %48, label %45

45:                                               ; preds = %39
  %46 = xor i1 %26, true
  %47 = sext i1 %46 to i32
  br label %146

48:                                               ; preds = %39
  %49 = zext i1 %26 to i64
  %50 = getelementptr inbounds [2 x i8], ptr %22, i64 %49
  br label %51

51:                                               ; preds = %48, %142
  %52 = phi i64 [ 0, %48 ], [ %143, %142 ]
  %53 = phi i64 [ 0, %48 ], [ %145, %142 ]
  %54 = shl nuw nsw i64 %52, 2
  %55 = add nuw nsw i64 %54, 8
  %56 = getelementptr inbounds ptr, ptr %5, i64 %52
  %57 = or disjoint i64 %52, 1
  %58 = getelementptr inbounds ptr, ptr %5, i64 %57
  br label %59

59:                                               ; preds = %51, %138
  %60 = phi i64 [ 0, %51 ], [ %139, %138 ]
  %61 = phi i64 [ 0, %51 ], [ %141, %138 ]
  %62 = lshr exact i64 %60, 1
  %63 = add nuw nsw i64 %62, %52
  %64 = trunc i64 %63 to i32
  %65 = shl nuw nsw i32 1, %64
  %66 = and i32 %65, %4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %133, label %68

68:                                               ; preds = %59
  %69 = shl nuw nsw i64 %60, 2
  %70 = add nuw nsw i64 %69, 8
  br label %71

71:                                               ; preds = %68, %130
  %72 = phi i64 [ %53, %68 ], [ %131, %130 ]
  %73 = lshr exact i64 %72, 2
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %71, %127
  %76 = phi i64 [ %61, %71 ], [ %128, %127 ]
  %77 = lshr exact i64 %76, 2
  %78 = trunc i64 %77 to i32
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %78, i32 noundef %74, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %79 = load i32, ptr %9, align 4, !tbaa !53
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %127

81:                                               ; preds = %75
  %82 = add nuw nsw i64 %77, %72
  %83 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %82
  %84 = zext nneg i32 %79 to i64
  br label %85

85:                                               ; preds = %81, %123
  %86 = phi i64 [ 0, %81 ], [ %125, %123 ]
  %87 = phi ptr [ %50, %81 ], [ %124, %123 ]
  %88 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %86
  %89 = load i32, ptr %88, align 4, !tbaa !53
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %123, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %86
  %93 = load i32, ptr %92, align 4, !tbaa !53
  %94 = shl i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %87, i64 %95
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  %98 = load i8, ptr %96, align 1, !tbaa !54
  %99 = getelementptr inbounds i8, ptr %96, i64 2
  %100 = load i8, ptr %97, align 1, !tbaa !54
  %101 = zext i8 %100 to i64
  %102 = load i64, ptr %83, align 8, !tbaa !61
  %103 = load i64, ptr %28, align 8, !tbaa !61
  %104 = or i64 %103, %102
  store i64 %104, ptr %28, align 8, !tbaa !61
  %105 = zext i8 %100 to i64
  %106 = zext i8 %98 to i64
  %107 = getelementptr inbounds [4 x i32], ptr %2, i64 %105, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !53
  %109 = mul nsw i32 %108, %89
  %110 = shl i32 %109, %3
  %111 = add nsw i32 %110, 8
  %112 = ashr i32 %111, 4
  %113 = load ptr, ptr %44, align 8, !tbaa !62
  %114 = getelementptr inbounds ptr, ptr %113, i64 %27
  %115 = load ptr, ptr %114, align 8, !tbaa !63
  %116 = add nuw i64 %72, %101
  %117 = and i64 %116, 4294967295
  %118 = getelementptr inbounds ptr, ptr %115, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !63
  %120 = zext i8 %98 to i64
  %121 = getelementptr i32, ptr %119, i64 %76
  %122 = getelementptr i32, ptr %121, i64 %120
  store i32 %112, ptr %122, align 4, !tbaa !53
  br label %123

123:                                              ; preds = %85, %91
  %124 = phi ptr [ %99, %91 ], [ %87, %85 ]
  %125 = add nuw nsw i64 %86, 1
  %126 = icmp eq i64 %125, %84
  br i1 %126, label %127, label %85, !llvm.loop !342

127:                                              ; preds = %123, %75
  %128 = add nuw nsw i64 %76, 4
  %129 = icmp ult i64 %128, %70
  br i1 %129, label %75, label %130, !llvm.loop !343

130:                                              ; preds = %127
  %131 = add nuw nsw i64 %72, 4
  %132 = icmp ult i64 %131, %55
  br i1 %132, label %71, label %138, !llvm.loop !344

133:                                              ; preds = %59
  %134 = load ptr, ptr %56, align 8, !tbaa !63
  %135 = getelementptr inbounds i8, ptr %134, i64 %60
  store i16 0, ptr %135, align 1
  %136 = load ptr, ptr %58, align 8, !tbaa !63
  %137 = getelementptr inbounds i8, ptr %136, i64 %60
  store i16 0, ptr %137, align 1
  br label %138

138:                                              ; preds = %130, %133
  %139 = add nuw nsw i64 %60, 2
  %140 = icmp eq i64 %60, 0
  %141 = add nuw nsw i64 %61, 8
  br i1 %140, label %59, label %142, !llvm.loop !345

142:                                              ; preds = %138
  %143 = add nuw nsw i64 %52, 2
  %144 = icmp eq i64 %52, 0
  %145 = add nuw nsw i64 %53, 8
  br i1 %144, label %51, label %227, !llvm.loop !346

146:                                              ; preds = %45, %223
  %147 = phi i64 [ 2, %45 ], [ %226, %223 ]
  %148 = phi i64 [ 0, %45 ], [ %224, %223 ]
  %149 = getelementptr inbounds ptr, ptr %5, i64 %148
  %150 = or disjoint i64 %148, 1
  %151 = getelementptr inbounds ptr, ptr %5, i64 %150
  br label %152

152:                                              ; preds = %146, %219
  %153 = phi i64 [ 2, %146 ], [ %222, %219 ]
  %154 = phi i64 [ 0, %146 ], [ %220, %219 ]
  %155 = lshr exact i64 %154, 1
  %156 = add nuw nsw i64 %155, %148
  %157 = trunc i64 %156 to i32
  %158 = shl nuw nsw i32 1, %157
  %159 = and i32 %158, %4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %214, label %161

161:                                              ; preds = %152, %211
  %162 = phi i64 [ %212, %211 ], [ %148, %152 ]
  %163 = shl i64 %162, 2
  %164 = trunc i64 %162 to i32
  br label %165

165:                                              ; preds = %161, %208
  %166 = phi i64 [ %154, %161 ], [ %209, %208 ]
  %167 = trunc i64 %166 to i32
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %167, i32 noundef %164, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %168 = load i32, ptr %9, align 4, !tbaa !53
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %208

170:                                              ; preds = %165
  %171 = add nuw nsw i64 %166, %163
  %172 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %171
  %173 = shl i64 %166, 2
  %174 = zext nneg i32 %168 to i64
  br label %175

175:                                              ; preds = %170, %204
  %176 = phi i64 [ 0, %170 ], [ %206, %204 ]
  %177 = phi i32 [ %47, %170 ], [ %205, %204 ]
  %178 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %176
  %179 = load i32, ptr %178, align 4, !tbaa !53
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %204, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %176
  %183 = load i32, ptr %182, align 4, !tbaa !53
  %184 = add i32 %177, 1
  %185 = add i32 %184, %183
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [2 x i8], ptr %22, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !54
  %189 = getelementptr inbounds [2 x i8], ptr %22, i64 %186, i64 1
  %190 = load i8, ptr %189, align 1, !tbaa !54
  %191 = load i64, ptr %172, align 8, !tbaa !61
  %192 = load i64, ptr %28, align 8, !tbaa !61
  %193 = or i64 %192, %191
  store i64 %193, ptr %28, align 8, !tbaa !61
  %194 = load ptr, ptr %44, align 8, !tbaa !62
  %195 = getelementptr inbounds ptr, ptr %194, i64 %27
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = zext i8 %190 to i64
  %198 = getelementptr ptr, ptr %196, i64 %163
  %199 = getelementptr ptr, ptr %198, i64 %197
  %200 = load ptr, ptr %199, align 8, !tbaa !63
  %201 = zext i8 %188 to i64
  %202 = getelementptr i32, ptr %200, i64 %173
  %203 = getelementptr i32, ptr %202, i64 %201
  store i32 %179, ptr %203, align 4, !tbaa !53
  br label %204

204:                                              ; preds = %175, %181
  %205 = phi i32 [ %185, %181 ], [ %177, %175 ]
  %206 = add nuw nsw i64 %176, 1
  %207 = icmp eq i64 %206, %174
  br i1 %207, label %208, label %175, !llvm.loop !347

208:                                              ; preds = %204, %165
  %209 = add nuw nsw i64 %166, 1
  %210 = icmp eq i64 %209, %153
  br i1 %210, label %211, label %165, !llvm.loop !348

211:                                              ; preds = %208
  %212 = add nuw nsw i64 %162, 1
  %213 = icmp eq i64 %212, %147
  br i1 %213, label %219, label %161, !llvm.loop !349

214:                                              ; preds = %152
  %215 = load ptr, ptr %149, align 8, !tbaa !63
  %216 = getelementptr inbounds i8, ptr %215, i64 %154
  store i16 0, ptr %216, align 1
  %217 = load ptr, ptr %151, align 8, !tbaa !63
  %218 = getelementptr inbounds i8, ptr %217, i64 %154
  store i16 0, ptr %218, align 1
  br label %219

219:                                              ; preds = %211, %214
  %220 = add nuw nsw i64 %154, 2
  %221 = icmp eq i64 %154, 0
  %222 = add nuw nsw i64 %153, 2
  br i1 %221, label %152, label %223, !llvm.loop !350

223:                                              ; preds = %219
  %224 = add nuw nsw i64 %148, 2
  %225 = icmp eq i64 %148, 0
  %226 = add nuw nsw i64 %147, 2
  br i1 %225, label %146, label %227, !llvm.loop !351

227:                                              ; preds = %223, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readCompCoeff8x8MB_CAVLC(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #3 {
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !186
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !149
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @SNGL_SCAN8x8, ptr @FIELD_SCAN8x8
  br label %21

21:                                               ; preds = %16, %6
  %22 = phi ptr [ @FIELD_SCAN8x8, %6 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !93
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
  %43 = load i32, ptr %42, align 4, !tbaa !60
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 79
  br i1 %44, label %46, label %147

46:                                               ; preds = %40, %143
  %47 = phi i64 [ %144, %143 ], [ 0, %40 ]
  %48 = phi i32 [ %146, %143 ], [ 2, %40 ]
  %49 = shl nuw nsw i64 %47, 2
  %50 = getelementptr inbounds ptr, ptr %5, i64 %47
  %51 = or disjoint i64 %47, 1
  %52 = getelementptr inbounds ptr, ptr %5, i64 %51
  %53 = trunc i64 %47 to i32
  %54 = trunc i64 %47 to i32
  br label %55

55:                                               ; preds = %46, %139
  %56 = phi i64 [ 0, %46 ], [ %140, %139 ]
  %57 = phi i32 [ 2, %46 ], [ %142, %139 ]
  %58 = lshr exact i64 %56, 1
  %59 = add nuw nsw i64 %58, %47
  %60 = trunc i64 %59 to i32
  %61 = shl nuw nsw i32 1, %60
  %62 = and i32 %61, %4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %134, label %64

64:                                               ; preds = %55
  %65 = add nuw nsw i64 %56, %49
  %66 = trunc i64 %65 to i32
  %67 = shl nuw nsw i32 51, %66
  %68 = zext nneg i32 %67 to i64
  %69 = trunc i64 %56 to i32
  %70 = trunc i64 %56 to i32
  %71 = shl i64 %56, 2
  br label %72

72:                                               ; preds = %64, %131
  %73 = phi i32 [ %53, %64 ], [ %132, %131 ]
  %74 = sub nuw nsw i32 %73, %54
  %75 = shl nsw i32 %74, 1
  %76 = sub nsw i32 %75, %70
  br label %77

77:                                               ; preds = %72, %128
  %78 = phi i32 [ %69, %72 ], [ %129, %128 ]
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %41, i32 noundef %78, i32 noundef %73, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %79 = load i32, ptr %9, align 4, !tbaa !53
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %77
  %82 = add nsw i32 %76, %78
  %83 = zext nneg i32 %79 to i64
  br label %84

84:                                               ; preds = %81, %124
  %85 = phi i64 [ 0, %81 ], [ %126, %124 ]
  %86 = phi i32 [ %27, %81 ], [ %125, %124 ]
  %87 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !53
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %124, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %85
  %92 = load i32, ptr %91, align 4, !tbaa !53
  %93 = add i32 %86, 1
  %94 = add i32 %93, %92
  %95 = load i64, ptr %29, align 8, !tbaa !61
  %96 = or i64 %95, %68
  store i64 %96, ptr %29, align 8, !tbaa !61
  %97 = shl i32 %94, 2
  %98 = add i32 %82, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i8], ptr %22, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !54
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [2 x i8], ptr %22, i64 %99, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !54
  %105 = zext i8 %104 to i64
  %106 = zext i8 %104 to i64
  %107 = zext i8 %101 to i64
  %108 = getelementptr inbounds [8 x i32], ptr %2, i64 %106, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !53
  %110 = mul nsw i32 %109, %88
  %111 = shl i32 %110, %3
  %112 = add nsw i32 %111, 32
  %113 = ashr i32 %112, 6
  %114 = load ptr, ptr %45, align 8, !tbaa !99
  %115 = getelementptr inbounds ptr, ptr %114, i64 %28
  %116 = load ptr, ptr %115, align 8, !tbaa !63
  %117 = add nuw i64 %49, %105
  %118 = and i64 %117, 4294967295
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !63
  %121 = add i64 %71, %102
  %122 = and i64 %121, 4294967295
  %123 = getelementptr inbounds i32, ptr %120, i64 %122
  store i32 %113, ptr %123, align 4, !tbaa !53
  br label %124

124:                                              ; preds = %84, %90
  %125 = phi i32 [ %94, %90 ], [ %86, %84 ]
  %126 = add nuw nsw i64 %85, 1
  %127 = icmp eq i64 %126, %83
  br i1 %127, label %128, label %84, !llvm.loop !352

128:                                              ; preds = %124, %77
  %129 = add nuw nsw i32 %78, 1
  %130 = icmp eq i32 %129, %57
  br i1 %130, label %131, label %77, !llvm.loop !353

131:                                              ; preds = %128
  %132 = add nuw nsw i32 %73, 1
  %133 = icmp eq i32 %132, %48
  br i1 %133, label %139, label %72, !llvm.loop !354

134:                                              ; preds = %55
  %135 = load ptr, ptr %50, align 8, !tbaa !63
  %136 = getelementptr inbounds i8, ptr %135, i64 %56
  store i16 0, ptr %136, align 1
  %137 = load ptr, ptr %52, align 8, !tbaa !63
  %138 = getelementptr inbounds i8, ptr %137, i64 %56
  store i16 0, ptr %138, align 1
  br label %139

139:                                              ; preds = %131, %134
  %140 = add nuw nsw i64 %56, 2
  %141 = icmp eq i64 %56, 0
  %142 = add nuw nsw i32 %57, 2
  br i1 %141, label %55, label %143, !llvm.loop !355

143:                                              ; preds = %139
  %144 = add nuw nsw i64 %47, 2
  %145 = icmp eq i64 %47, 0
  %146 = add nuw nsw i32 %48, 2
  br i1 %145, label %46, label %240, !llvm.loop !356

147:                                              ; preds = %40, %236
  %148 = phi i64 [ %237, %236 ], [ 0, %40 ]
  %149 = phi i32 [ %239, %236 ], [ 2, %40 ]
  %150 = shl nuw nsw i64 %148, 2
  %151 = getelementptr inbounds ptr, ptr %5, i64 %148
  %152 = or disjoint i64 %148, 1
  %153 = getelementptr inbounds ptr, ptr %5, i64 %152
  %154 = trunc i64 %148 to i32
  %155 = trunc i64 %148 to i32
  br label %156

156:                                              ; preds = %147, %232
  %157 = phi i64 [ 0, %147 ], [ %233, %232 ]
  %158 = phi i32 [ 2, %147 ], [ %235, %232 ]
  %159 = lshr exact i64 %157, 1
  %160 = add nuw nsw i64 %159, %148
  %161 = trunc i64 %160 to i32
  %162 = shl nuw nsw i32 1, %161
  %163 = and i32 %162, %4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %227, label %165

165:                                              ; preds = %156
  %166 = add nuw nsw i64 %157, %150
  %167 = trunc i64 %166 to i32
  %168 = shl nuw nsw i32 51, %167
  %169 = zext nneg i32 %168 to i64
  %170 = trunc i64 %157 to i32
  %171 = trunc i64 %157 to i32
  %172 = shl i64 %157, 2
  br label %173

173:                                              ; preds = %165, %224
  %174 = phi i32 [ %154, %165 ], [ %225, %224 ]
  %175 = sub nuw nsw i32 %174, %155
  %176 = shl nsw i32 %175, 1
  %177 = sub nsw i32 %176, %171
  br label %178

178:                                              ; preds = %173, %221
  %179 = phi i32 [ %170, %173 ], [ %222, %221 ]
  call fastcc void @readCoeff4x4_CAVLC(ptr noundef nonnull %0, i32 noundef %41, i32 noundef %179, i32 noundef %174, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %180 = load i32, ptr %9, align 4, !tbaa !53
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %221

182:                                              ; preds = %178
  %183 = add nsw i32 %177, %179
  %184 = zext nneg i32 %180 to i64
  br label %185

185:                                              ; preds = %182, %217
  %186 = phi i64 [ 0, %182 ], [ %219, %217 ]
  %187 = phi i32 [ %27, %182 ], [ %218, %217 ]
  %188 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %186
  %189 = load i32, ptr %188, align 4, !tbaa !53
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %217, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %186
  %193 = load i32, ptr %192, align 4, !tbaa !53
  %194 = add i32 %187, 1
  %195 = add i32 %194, %193
  %196 = load i64, ptr %29, align 8, !tbaa !61
  %197 = or i64 %196, %169
  store i64 %197, ptr %29, align 8, !tbaa !61
  %198 = shl nsw i32 %195, 2
  %199 = add nsw i32 %183, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [2 x i8], ptr %22, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !54
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds [2 x i8], ptr %22, i64 %200, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !54
  %206 = zext i8 %205 to i64
  %207 = load ptr, ptr %45, align 8, !tbaa !99
  %208 = getelementptr inbounds ptr, ptr %207, i64 %28
  %209 = load ptr, ptr %208, align 8, !tbaa !63
  %210 = add nuw i64 %150, %206
  %211 = and i64 %210, 4294967295
  %212 = getelementptr inbounds ptr, ptr %209, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !63
  %214 = add i64 %172, %203
  %215 = and i64 %214, 4294967295
  %216 = getelementptr inbounds i32, ptr %213, i64 %215
  store i32 %189, ptr %216, align 4, !tbaa !53
  br label %217

217:                                              ; preds = %185, %191
  %218 = phi i32 [ %195, %191 ], [ %187, %185 ]
  %219 = add nuw nsw i64 %186, 1
  %220 = icmp eq i64 %219, %184
  br i1 %220, label %221, label %185, !llvm.loop !357

221:                                              ; preds = %217, %178
  %222 = add nuw nsw i32 %179, 1
  %223 = icmp eq i32 %222, %158
  br i1 %223, label %224, label %178, !llvm.loop !358

224:                                              ; preds = %221
  %225 = add nuw nsw i32 %174, 1
  %226 = icmp eq i32 %225, %149
  br i1 %226, label %232, label %173, !llvm.loop !359

227:                                              ; preds = %156
  %228 = load ptr, ptr %151, align 8, !tbaa !63
  %229 = getelementptr inbounds i8, ptr %228, i64 %157
  store i16 0, ptr %229, align 1
  %230 = load ptr, ptr %153, align 8, !tbaa !63
  %231 = getelementptr inbounds i8, ptr %230, i64 %157
  store i16 0, ptr %231, align 1
  br label %232

232:                                              ; preds = %224, %227
  %233 = add nuw nsw i64 %157, 2
  %234 = icmp eq i64 %157, 0
  %235 = add nuw nsw i32 %158, 2
  br i1 %234, label %156, label %236, !llvm.loop !360

236:                                              ; preds = %232
  %237 = add nuw nsw i64 %148, 2
  %238 = icmp eq i64 %148, 0
  %239 = add nuw nsw i32 %149, 2
  br i1 %238, label %147, label %240, !llvm.loop !361

240:                                              ; preds = %236, %143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

declare i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @readSyntaxElement_Level_VLC0(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @readSyntaxElement_Level_VLCN(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @readSyntaxElement_TotalZerosChromaDC(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @readSyntaxElement_TotalZeros(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @readSyntaxElement_Run(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_ipcm(ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_intra16x16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_intra4x4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_intra8x8(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_skip(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_p_inter16x16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_p_inter16x8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_p_inter8x16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_p_inter8x8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_sp_skip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_b_d8x8temporal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_b_d4x4temporal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_b_d8x8spatial(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_b_d4x4spatial(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @mb_pred_b_inter8x8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 0}
!43 = !{!44, !36, i64 13520}
!44 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !45, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!45 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!46 = !{!35, !39, i64 68}
!47 = !{!48, !39, i64 849056}
!48 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !49, i64 849304, !49, i64 849624, !49, i64 849944, !49, i64 850264, !49, i64 850584, !49, i64 850904, !49, i64 851224, !49, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !52, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!49 = !{!"image_data", !50, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!50 = !{!"frame_format", !39, i64 0, !39, i64 4, !51, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!51 = !{!"double", !37, i64 0}
!52 = !{!"long", !37, i64 0}
!53 = !{!39, !39, i64 0}
!54 = !{!37, !37, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!48, !39, i64 849052}
!59 = !{!48, !39, i64 849092}
!60 = !{!35, !39, i64 92}
!61 = !{!52, !52, i64 0}
!62 = !{!44, !36, i64 1272}
!63 = !{!36, !36, i64 0}
!64 = !{!44, !36, i64 0}
!65 = !{!44, !39, i64 108}
!66 = !{!44, !36, i64 13512}
!67 = !{!35, !39, i64 24}
!68 = !{!44, !39, i64 128}
!69 = !{!48, !39, i64 848780}
!70 = !{!35, !41, i64 28}
!71 = !{!35, !41, i64 30}
!72 = !{!35, !39, i64 32}
!73 = !{!35, !39, i64 36}
!74 = !{!35, !39, i64 40}
!75 = !{!35, !39, i64 44}
!76 = !{!35, !39, i64 48}
!77 = !{!48, !39, i64 849108}
!78 = !{!35, !39, i64 52}
!79 = !{!48, !39, i64 849112}
!80 = !{!35, !39, i64 56}
!81 = !{!35, !39, i64 96}
!82 = !{!44, !41, i64 116}
!83 = !{!35, !41, i64 108}
!84 = !{!85, !36, i64 216}
!85 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !86, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!86 = !{!"pic_motion_params_old", !36, i64 0}
!87 = !{!41, !41, i64 0}
!88 = !{!44, !36, i64 24}
!89 = !{!90, !39, i64 36}
!90 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !91, i64 3172, !39, i64 4120, !39, i64 4124}
!91 = !{!"", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !92, i64 80, !39, i64 492, !92, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!92 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!93 = !{!35, !41, i64 152}
!94 = !{!35, !41, i64 112}
!95 = !{!35, !39, i64 284}
!96 = !{!35, !37, i64 373}
!97 = !{!44, !39, i64 164}
!98 = !{!44, !39, i64 1240}
!99 = !{!44, !36, i64 1264}
!100 = !{!44, !41, i64 1220}
!101 = !{!35, !41, i64 376}
!102 = !{!44, !41, i64 1222}
!103 = !{!35, !41, i64 378}
!104 = !{!44, !41, i64 1224}
!105 = !{!35, !41, i64 380}
!106 = !{!35, !41, i64 114}
!107 = !{!35, !37, i64 472}
!108 = !{!44, !39, i64 112}
!109 = !{!48, !39, i64 849012}
!110 = !{!44, !36, i64 13432}
!111 = !{!48, !36, i64 8}
!112 = !{!113, !39, i64 12}
!113 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!114 = !{!44, !39, i64 120}
!115 = !{!44, !36, i64 13456}
!116 = !{!44, !36, i64 13440}
!117 = !{!44, !36, i64 13448}
!118 = !{!44, !36, i64 13416}
!119 = !{!44, !36, i64 13496}
!120 = !{!44, !39, i64 1176}
!121 = !{!44, !36, i64 13464}
!122 = !{!44, !36, i64 13472}
!123 = !{!48, !36, i64 16}
!124 = !{!48, !39, i64 849280}
!125 = !{!44, !36, i64 13408}
!126 = !{!44, !39, i64 124}
!127 = !{!35, !39, i64 360}
!128 = !{!44, !39, i64 200}
!129 = !{!130, !39, i64 0}
!130 = !{!"syntaxelement", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !36, i64 40}
!131 = !{!44, !36, i64 312}
!132 = !{!35, !36, i64 464}
!133 = !{!134, !36, i64 0}
!134 = !{!"datapartition", !36, i64 0, !135, i64 8, !36, i64 40}
!135 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !36, i64 16, !36, i64 24}
!136 = !{!137, !39, i64 24}
!137 = !{!"bit_stream", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!138 = !{!130, !36, i64 32}
!139 = !{!130, !36, i64 40}
!140 = !{!85, !36, i64 152}
!141 = !{!35, !39, i64 64}
!142 = !{!35, !39, i64 60}
!143 = distinct !{!143, !56, !57}
!144 = distinct !{!144, !56, !57}
!145 = distinct !{!145, !56, !57}
!146 = distinct !{!146, !56, !57}
!147 = distinct !{!147, !56, !57}
!148 = !{!48, !36, i64 848888}
!149 = !{!35, !39, i64 384}
!150 = !{!44, !39, i64 148}
!151 = !{!35, !39, i64 404}
!152 = !{!35, !39, i64 408}
!153 = !{!134, !36, i64 40}
!154 = !{!130, !39, i64 4}
!155 = !{!35, !37, i64 374}
!156 = !{!35, !37, i64 110}
!157 = !{!130, !39, i64 12}
!158 = !{!137, !39, i64 8}
!159 = !{!48, !39, i64 848996}
!160 = !{!86, !36, i64 0}
!161 = !{!44, !36, i64 13528}
!162 = !{!35, !39, i64 424}
!163 = !{!90, !39, i64 3144}
!164 = distinct !{!164, !56, !57}
!165 = distinct !{!165, !56, !57}
!166 = !{!44, !39, i64 60}
!167 = !{!35, !39, i64 420}
!168 = !{!113, !39, i64 2204}
!169 = !{!44, !36, i64 13544}
!170 = !{!44, !39, i64 1232}
!171 = distinct !{!171, !56, !57}
!172 = distinct !{!172, !56, !57}
!173 = !{!85, !39, i64 268}
!174 = distinct !{!174, !56, !57}
!175 = distinct !{!175, !56, !57}
!176 = distinct !{!176, !56, !57}
!177 = !{!35, !37, i64 372}
!178 = distinct !{!178, !56, !57}
!179 = distinct !{!179, !56, !57}
!180 = distinct !{!180, !56, !57}
!181 = distinct !{!181, !56, !57}
!182 = !{!44, !36, i64 16}
!183 = distinct !{!183, !56, !57}
!184 = !{!48, !36, i64 848832}
!185 = !{!44, !39, i64 132}
!186 = !{!48, !39, i64 848876}
!187 = !{!44, !39, i64 1236}
!188 = !{!35, !37, i64 111}
!189 = !{!48, !36, i64 856744}
!190 = !{!191, !39, i64 0}
!191 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!192 = !{!191, !39, i64 4}
!193 = !{!130, !39, i64 24}
!194 = !{!130, !39, i64 8}
!195 = distinct !{!195, !56, !57}
!196 = !{!44, !39, i64 216}
!197 = !{!48, !36, i64 856032}
!198 = !{!48, !36, i64 856040}
!199 = distinct !{!199, !56, !57}
!200 = distinct !{!200, !56, !57}
!201 = distinct !{!201, !56, !57}
!202 = distinct !{!202, !56, !57}
!203 = distinct !{!203, !56, !57}
!204 = !{!35, !39, i64 100}
!205 = distinct !{!205, !56, !57}
!206 = distinct !{!206, !56, !57}
!207 = distinct !{!207, !56, !57}
!208 = distinct !{!208, !56, !57}
!209 = distinct !{!209, !56, !57}
!210 = distinct !{!210, !56, !57}
!211 = distinct !{!211, !56, !57}
!212 = !{!48, !39, i64 849096}
!213 = !{!48, !39, i64 849100}
!214 = distinct !{!214, !56, !57}
!215 = distinct !{!215, !56, !57}
!216 = distinct !{!216, !56, !57}
!217 = distinct !{!217, !56, !57}
!218 = distinct !{!218, !56, !57}
!219 = distinct !{!219, !56, !57}
!220 = distinct !{!220, !56, !57}
!221 = !{!48, !39, i64 848776}
!222 = distinct !{!222, !56, !57}
!223 = distinct !{!223, !56, !57}
!224 = !{!48, !39, i64 849104}
!225 = distinct !{!225, !56, !57}
!226 = distinct !{!226, !56, !57}
!227 = distinct !{!227, !56, !57}
!228 = distinct !{!228, !56, !57}
!229 = distinct !{!229, !56, !57}
!230 = distinct !{!230, !56, !57}
!231 = distinct !{!231, !56, !57}
!232 = distinct !{!232, !56, !57}
!233 = distinct !{!233, !56, !57}
!234 = distinct !{!234, !56, !57}
!235 = distinct !{!235, !56, !57}
!236 = distinct !{!236, !56, !57}
!237 = distinct !{!237, !56, !57}
!238 = distinct !{!238, !56, !57}
!239 = distinct !{!239, !56, !57}
!240 = distinct !{!240, !56, !57}
!241 = distinct !{!241, !56, !57}
!242 = distinct !{!242, !56, !57}
!243 = distinct !{!243, !56, !57}
!244 = distinct !{!244, !56, !57}
!245 = distinct !{!245, !56, !57}
!246 = distinct !{!246, !56, !57}
!247 = distinct !{!247, !56, !57}
!248 = distinct !{!248, !56, !57}
!249 = distinct !{!249, !56, !57}
!250 = distinct !{!250, !56, !57}
!251 = distinct !{!251, !56, !57}
!252 = distinct !{!252, !56, !57}
!253 = distinct !{!253, !56, !57}
!254 = distinct !{!254, !56, !57}
!255 = distinct !{!255, !56, !57}
!256 = distinct !{!256, !56, !57}
!257 = distinct !{!257, !56, !57}
!258 = distinct !{!258, !56, !57}
!259 = distinct !{!259, !56, !57}
!260 = distinct !{!260, !56, !57}
!261 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 2, !87, i64 10, i64 2, !87, i64 12, i64 2, !87, i64 14, i64 2, !87}
!262 = !{!191, !41, i64 14}
!263 = !{!191, !41, i64 12}
!264 = !{!40, !41, i64 2}
!265 = !{!40, !41, i64 0}
!266 = distinct !{!266, !56, !57}
!267 = distinct !{!267, !56, !57}
!268 = !{!35, !36, i64 448}
!269 = distinct !{!269, !56, !57}
!270 = distinct !{!270, !56, !57}
!271 = !{!191, !41, i64 10}
!272 = !{!191, !41, i64 8}
!273 = !{!44, !39, i64 64}
!274 = !{!48, !36, i64 856488}
!275 = !{!44, !39, i64 76}
!276 = !{!48, !39, i64 849276}
!277 = !{!85, !39, i64 384}
!278 = !{!85, !36, i64 128}
!279 = !{!85, !36, i64 376}
!280 = distinct !{!280, !56, !57}
!281 = distinct !{!281, !56, !57}
!282 = !{!85, !36, i64 136}
!283 = distinct !{!283, !56, !57}
!284 = distinct !{!284, !56, !57}
!285 = !{!48, !36, i64 856456}
!286 = !{!48, !36, i64 848840}
!287 = !{!48, !36, i64 848800}
!288 = !{!48, !36, i64 848744}
!289 = !{!44, !36, i64 13536}
!290 = !{!85, !39, i64 44}
!291 = !{!85, !39, i64 248}
!292 = !{!85, !39, i64 68}
!293 = !{!85, !39, i64 64}
!294 = !{!48, !39, i64 848784}
!295 = distinct !{!295, !56, !57}
!296 = distinct !{!296, !56, !57}
!297 = distinct !{!297, !56, !57}
!298 = distinct !{!298, !56, !57}
!299 = distinct !{!299, !56, !57}
!300 = distinct !{!300, !56, !57}
!301 = distinct !{!301, !56, !57}
!302 = !{!137, !39, i64 0}
!303 = !{!137, !36, i64 16}
!304 = distinct !{!304, !56, !57}
!305 = !{!48, !41, i64 849040}
!306 = distinct !{!306, !56, !57}
!307 = distinct !{!307, !56, !57}
!308 = !{!48, !41, i64 849042}
!309 = distinct !{!309, !56, !57}
!310 = distinct !{!310, !56, !57}
!311 = distinct !{!311, !56, !57}
!312 = distinct !{!312, !56, !57}
!313 = distinct !{!313, !56, !57}
!314 = distinct !{!314, !56, !57}
!315 = !{i64 0, i64 2, !87, i64 2, i64 2, !87}
!316 = !{i64 0, i64 2, !87}
!317 = distinct !{!317, !56, !57}
!318 = distinct !{!318, !56, !57}
!319 = distinct !{!319, !56, !57}
!320 = distinct !{!320, !56, !57}
!321 = distinct !{!321, !56, !57}
!322 = distinct !{!322, !56, !57}
!323 = distinct !{!323, !56, !57}
!324 = distinct !{!324, !56, !57}
!325 = distinct !{!325, !56, !57}
!326 = distinct !{!326, !56, !57}
!327 = distinct !{!327, !56, !57}
!328 = distinct !{!328, !56, !57}
!329 = distinct !{!329, !56, !57}
!330 = distinct !{!330, !56, !57}
!331 = distinct !{!331, !56, !57}
!332 = distinct !{!332, !56, !57}
!333 = distinct !{!333, !56, !57}
!334 = distinct !{!334, !56, !57}
!335 = distinct !{!335, !56, !57}
!336 = distinct !{!336, !56, !57}
!337 = !{i32 0, i32 511}
!338 = !{!130, !39, i64 16}
!339 = distinct !{!339, !56, !57}
!340 = distinct !{!340, !56, !57}
!341 = distinct !{!341, !56, !57}
!342 = distinct !{!342, !56, !57}
!343 = distinct !{!343, !56, !57}
!344 = distinct !{!344, !56, !57}
!345 = distinct !{!345, !56, !57}
!346 = distinct !{!346, !56, !57}
!347 = distinct !{!347, !56, !57}
!348 = distinct !{!348, !56, !57}
!349 = distinct !{!349, !56, !57}
!350 = distinct !{!350, !56, !57}
!351 = distinct !{!351, !56, !57}
!352 = distinct !{!352, !56, !57}
!353 = distinct !{!353, !56, !57}
!354 = distinct !{!354, !56, !57}
!355 = distinct !{!355, !56, !57}
!356 = distinct !{!356, !56, !57}
!357 = distinct !{!357, !56, !57}
!358 = distinct !{!358, !56, !57}
!359 = distinct !{!359, !56, !57}
!360 = distinct !{!360, !56, !57}
!361 = distinct !{!361, !56, !57}

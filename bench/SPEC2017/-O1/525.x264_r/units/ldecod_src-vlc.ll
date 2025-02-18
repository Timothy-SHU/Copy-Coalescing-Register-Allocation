; ModuleID = 'ldecod_src/vlc.c'
source_filename = "ldecod_src/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@p_Dec = external local_unnamed_addr global ptr, align 8
@NTAB1 = internal unnamed_addr constant [4 x [8 x [2 x i8]]] [[8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\01\04", [2 x i8] c"\01\05", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\01\08", [2 x i8] c"\01\09", [2 x i8] c"\04\00"]], align 16
@LEVRUN1 = internal unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@NTAB3 = internal unnamed_addr constant [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\01"]], align 1
@LEVRUN3 = internal unnamed_addr constant [4 x i8] c"\02\01\00\00", align 1
@assignSE2partition = internal unnamed_addr constant [2 x [20 x i8]] [[20 x i8] zeroinitializer, [20 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\00\02\02\02\02\00\00\00\00"], align 16
@readSyntaxElement_NumCoeffTrailingOnes.lentab = internal unnamed_addr constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"], [4 x [17 x i8]] [[17 x i8] c"\02\06\06\07\08\08\09\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\02\05\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0E\0E\0E", [17 x i8] c"\00\00\03\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\00\00\04\04\05\06\06\07\09\0B\0B\0C\0D\0D\0D\0E"], [4 x [17 x i8]] [[17 x i8] c"\04\06\06\06\07\07\07\07\08\08\09\09\09\0A\0A\0A\0A", [17 x i8] c"\00\04\05\05\05\05\06\06\07\08\08\09\09\09\0A\0A\0A", [17 x i8] c"\00\00\04\05\05\05\06\06\07\07\08\08\09\09\0A\0A\0A", [17 x i8] c"\00\00\00\04\04\04\04\04\05\06\07\08\08\09\0A\0A\0A"]], align 16
@readSyntaxElement_NumCoeffTrailingOnes.codtab = internal unnamed_addr constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"], [4 x [17 x i8]] [[17 x i8] c"\03\0B\07\07\07\04\07\0F\0B\0F\0B\08\0F\0B\07\09\07", [17 x i8] c"\00\02\07\0A\06\06\06\06\0E\0A\0E\0A\0E\0A\0B\08\06", [17 x i8] c"\00\00\03\09\05\05\05\05\0D\09\0D\09\0D\09\06\0A\05", [17 x i8] c"\00\00\00\05\04\06\08\04\04\04\0C\08\0C\0C\08\01\04"], [4 x [17 x i8]] [[17 x i8] c"\0F\0F\0B\08\0F\0B\09\08\0F\0B\0F\0B\08\0D\09\05\01", [17 x i8] c"\00\0E\0F\0C\0A\08\0E\0A\0E\0E\0A\0E\0A\07\0C\08\04", [17 x i8] c"\00\00\0D\0E\0B\09\0D\09\0D\0A\0D\09\0D\09\0B\07\03", [17 x i8] c"\00\00\00\0C\0B\0A\09\08\0D\0C\0C\0C\08\0C\0A\06\02"]], align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal unnamed_addr constant <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>], [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>] [<{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 6, i8 6, i8 6, i8 6, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 3, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 6, i8 7, [12 x i8] zeroinitializer }>], [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\07\07\09\09\0A\0B\0C\0D", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\02\07\07\09\0A\0B\0C\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\03\07\07\09\0A\0B\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\05\06\07\07\0A\0B", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"] }>, align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }>, [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }> <{ <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 7, i8 4, i8 3, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 1, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [13 x i8] }> <{ i8 0, i8 0, i8 0, i8 5, [13 x i8] zeroinitializer }> }>, [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\0F\0E\07\06\07\07\07\07", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\01\0D\0C\05\06\06\06\05", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\01\0B\0A\04\05\05\04", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\01\01\09\08\04\04", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"] }>, align 16
@readSyntaxElement_TotalZeros.lentab = internal unnamed_addr constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }>, align 16
@readSyntaxElement_TotalZeros.codtab = internal unnamed_addr constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }>, align 16
@readSyntaxElement_TotalZerosChromaDC.lentab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 2, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\03\03\04\04\04\05\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 3, i8 2, i8 2, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 2, i8 2, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16
@readSyntaxElement_TotalZerosChromaDC.codtab = internal unnamed_addr constant <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 2, i8 3, i8 2, i8 3, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 1, i8 1, i8 4, i8 5, i8 6, i8 7, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 6, i8 7, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 6, i8 0, i8 1, i8 2, i8 7, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 2, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16
@readSyntaxElement_Run.lentab = internal unnamed_addr constant <{ <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 2, i8 2, i8 2, i8 3, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, [16 x i8] c"\03\03\03\03\03\03\03\04\05\06\07\08\09\0A\0B\00", [8 x [16 x i8]] zeroinitializer }>, align 16
@readSyntaxElement_Run.codtab = internal unnamed_addr constant <{ <{ i8, [15 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 3, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 2, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 3, i8 2, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 0, i8 1, i8 3, i8 2, i8 5, i8 4, [9 x i8] zeroinitializer }>, [16 x i8] c"\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\00", [8 x [16 x i8]] zeroinitializer }>, align 16
@NCBP = internal unnamed_addr constant <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }> <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }> <{ [16 x [2 x i8]] [[2 x i8] c"\0F\00", [2 x i8] c"\00\01", [2 x i8] c"\07\02", [2 x i8] c"\0B\04", [2 x i8] c"\0D\08", [2 x i8] c"\0E\03", [2 x i8] c"\03\05", [2 x i8] c"\05\0A", [2 x i8] c"\0A\0C", [2 x i8] c"\0C\0F", [2 x i8] c"\01\07", [2 x i8] c"\02\0B", [2 x i8] c"\04\0D", [2 x i8] c"\08\0E", [2 x i8] c"\06\06", [2 x i8] c"\09\09"], [32 x [2 x i8]] zeroinitializer }>, [48 x [2 x i8]] [[2 x i8] c"/\00", [2 x i8] c"\1F\10", [2 x i8] c"\0F\01", [2 x i8] c"\00\02", [2 x i8] c"\17\04", [2 x i8] c"\1B\08", [2 x i8] c"\1D ", [2 x i8] c"\1E\03", [2 x i8] c"\07\05", [2 x i8] c"\0B\0A", [2 x i8] c"\0D\0C", [2 x i8] c"\0E\0F", [2 x i8] c"'/", [2 x i8] c"+\07", [2 x i8] c"-\0B", [2 x i8] c".\0D", [2 x i8] c"\10\0E", [2 x i8] c"\03\06", [2 x i8] c"\05\09", [2 x i8] c"\0A\1F", [2 x i8] c"\0C#", [2 x i8] c"\13%", [2 x i8] c"\15*", [2 x i8] c"\1A,", [2 x i8] c"\1C!", [2 x i8] c"#\22", [2 x i8] c"%$", [2 x i8] c"*(", [2 x i8] c",'", [2 x i8] c"\01+", [2 x i8] c"\02-", [2 x i8] c"\04.", [2 x i8] c"\08\11", [2 x i8] c"\11\12", [2 x i8] c"\12\14", [2 x i8] c"\14\18", [2 x i8] c"\18\13", [2 x i8] c"\06\15", [2 x i8] c"\09\1A", [2 x i8] c"\16\1C", [2 x i8] c"\19\17", [2 x i8] c" \1B", [2 x i8] c"!\1D", [2 x i8] c"\22\1E", [2 x i8] c"$\16", [2 x i8] c"(\19", [2 x i8] c"&&", [2 x i8] c"))"] }>, align 16
@str = private unnamed_addr constant [44 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes\00", align 1
@str.6 = private unnamed_addr constant [53 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes ChromaDC\00", align 1
@str.7 = private unnamed_addr constant [39 x i8] c"ERROR: failed to find Total Zeros !cdc\00", align 1
@str.8 = private unnamed_addr constant [34 x i8] c"ERROR: failed to find Total Zeros\00", align 1
@str.9 = private unnamed_addr constant [26 x i8] c"ERROR: failed to find Run\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ue_v(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  store i32 0, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 8
  store ptr @linfo_ue, ptr %4, align 8, !tbaa !40
  %5 = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %3, ptr noundef %1), !range !41
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = add nsw i32 %10, %7
  store i32 %11, ptr %9, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_ue(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  store i32 %8, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_VLC(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !52
  %10 = ashr i32 %6, 3
  %11 = sext i32 %10 to i64
  %12 = and i32 %6, 7
  %13 = xor i32 %12, 7
  %14 = getelementptr inbounds i8, ptr %4, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !53
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 1, %13
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2, %20
  %21 = phi ptr [ %32, %20 ], [ %14, %2 ]
  %22 = phi i32 [ %26, %20 ], [ 0, %2 ]
  %23 = phi i32 [ %27, %20 ], [ 1, %2 ]
  %24 = phi i32 [ %29, %20 ], [ %13, %2 ]
  %25 = phi i64 [ %33, %20 ], [ %11, %2 ]
  %26 = add nuw nsw i32 %22, 1
  %27 = add nuw nsw i32 %23, 1
  %28 = add nuw nsw i32 %24, 7
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %29, 7
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds i8, ptr %21, i64 %31
  %33 = add nsw i64 %25, %31
  %34 = load i8, ptr %32, align 1, !tbaa !53
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 1, %29
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %20, label %39, !llvm.loop !54

39:                                               ; preds = %20, %2
  %40 = phi i64 [ %11, %2 ], [ %33, %20 ]
  %41 = phi i32 [ %13, %2 ], [ %29, %20 ]
  %42 = phi i32 [ 1, %2 ], [ %27, %20 ]
  %43 = phi i32 [ 0, %2 ], [ %26, %20 ]
  %44 = phi ptr [ %14, %2 ], [ %32, %20 ]
  %45 = add nuw nsw i32 %43, 7
  %46 = lshr i32 %45, 3
  %47 = zext nneg i32 %46 to i64
  %48 = add nsw i64 %40, %47
  %49 = sext i32 %9 to i64
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %76, label %51

51:                                               ; preds = %39
  %52 = icmp eq i32 %43, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %51, %53
  %54 = phi i32 [ %69, %53 ], [ 0, %51 ]
  %55 = phi ptr [ %63, %53 ], [ %44, %51 ]
  %56 = phi i32 [ %58, %53 ], [ %43, %51 ]
  %57 = phi i32 [ %60, %53 ], [ %41, %51 ]
  %58 = add nsw i32 %56, -1
  %59 = add nuw nsw i32 %57, 7
  %60 = and i32 %59, 7
  %61 = icmp eq i32 %60, 7
  %62 = zext i1 %61 to i64
  %63 = getelementptr inbounds i8, ptr %55, i64 %62
  %64 = shl i32 %54, 1
  %65 = load i8, ptr %63, align 1, !tbaa !53
  %66 = zext i8 %65 to i32
  %67 = lshr i32 %66, %60
  %68 = and i32 %67, 1
  %69 = or disjoint i32 %68, %64
  %70 = icmp eq i32 %58, 0
  br i1 %70, label %71, label %53, !llvm.loop !57

71:                                               ; preds = %53
  %72 = add i32 %43, %42
  br label %73

73:                                               ; preds = %71, %51
  %74 = phi i32 [ %42, %51 ], [ %72, %71 ]
  %75 = phi i32 [ 0, %51 ], [ %69, %71 ]
  store i32 %75, ptr %7, align 4, !tbaa !48
  br label %76

76:                                               ; preds = %39, %73
  %77 = phi i32 [ %74, %73 ], [ -1, %39 ]
  %78 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %77, ptr %78, align 4, !tbaa !42
  %79 = icmp eq i32 %77, -1
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %5, align 8, !tbaa !51
  %82 = add nsw i32 %81, %77
  store i32 %82, ptr %5, align 8, !tbaa !51
  %83 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !40
  %85 = load i32, ptr %7, align 8, !tbaa !58
  %86 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %87 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  tail call void %84(i32 noundef %77, i32 noundef %85, ptr noundef nonnull %86, ptr noundef nonnull %87) #13
  br label %88

88:                                               ; preds = %76, %80
  %89 = phi i32 [ 1, %80 ], [ -1, %76 ]
  ret i32 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @se_v(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  store i32 0, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 8
  store ptr @linfo_se, ptr %4, align 8, !tbaa !40
  %5 = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %3, ptr noundef %1), !range !41
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = add nsw i32 %10, %7
  store i32 %11, ptr %9, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_se(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %6, %1
  %8 = lshr i32 %7, 1
  %9 = and i32 %7, 1
  %10 = icmp eq i32 %9, 0
  %11 = sub nsw i32 0, %8
  %12 = select i1 %10, i32 %8, i32 %11
  store i32 %12, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_v(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = shl i32 %5, 3
  %7 = or disjoint i32 %6, 7
  %8 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = add nsw i32 %9, %0
  %11 = icmp sgt i32 %10, %7
  br i1 %11, label %44, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = ashr i32 %9, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = and i32 %9, 7
  %21 = xor i32 %20, 7
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i32 [ %34, %22 ], [ 0, %14 ]
  %24 = phi ptr [ %38, %22 ], [ %19, %14 ]
  %25 = phi i32 [ %27, %22 ], [ %0, %14 ]
  %26 = phi i32 [ %36, %22 ], [ %21, %14 ]
  %27 = add nsw i32 %25, -1
  %28 = shl i32 %23, 1
  %29 = load i8, ptr %24, align 1, !tbaa !53
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %26, -1
  %32 = lshr i32 %30, %26
  %33 = and i32 %32, 1
  %34 = or disjoint i32 %33, %28
  %35 = icmp eq i32 %26, 0
  %36 = select i1 %35, i32 7, i32 %31
  %37 = zext i1 %35 to i64
  %38 = getelementptr inbounds i8, ptr %24, i64 %37
  %39 = icmp eq i32 %27, 0
  br i1 %39, label %40, label %22, !llvm.loop !59

40:                                               ; preds = %22, %12
  %41 = phi i32 [ 0, %12 ], [ %34, %22 ]
  %42 = icmp slt i32 %0, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 %10, ptr %8, align 8, !tbaa !51
  br label %44

44:                                               ; preds = %3, %40, %43
  %45 = phi i32 [ 0, %3 ], [ %41, %40 ], [ %41, %43 ]
  %46 = load ptr, ptr @p_Dec, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.decoder_params, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !44
  %49 = add nsw i32 %48, %0
  store i32 %49, ptr %47, align 8, !tbaa !44
  ret i32 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_FLC(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 7
  %7 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = add nsw i32 %11, %8
  %13 = icmp sgt i32 %12, %6
  br i1 %13, label %50, label %14

14:                                               ; preds = %2
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = ashr i32 %8, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = and i32 %8, 7
  %23 = xor i32 %22, 7
  br label %24

24:                                               ; preds = %16, %24
  %25 = phi i32 [ %36, %24 ], [ 0, %16 ]
  %26 = phi ptr [ %40, %24 ], [ %21, %16 ]
  %27 = phi i32 [ %29, %24 ], [ %11, %16 ]
  %28 = phi i32 [ %38, %24 ], [ %23, %16 ]
  %29 = add nsw i32 %27, -1
  %30 = shl i32 %25, 1
  %31 = load i8, ptr %26, align 1, !tbaa !53
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %28, -1
  %34 = lshr i32 %32, %28
  %35 = and i32 %34, 1
  %36 = or disjoint i32 %35, %30
  %37 = icmp eq i32 %28, 0
  %38 = select i1 %37, i32 7, i32 %33
  %39 = zext i1 %37 to i64
  %40 = getelementptr inbounds i8, ptr %26, i64 %39
  %41 = icmp eq i32 %29, 0
  br i1 %41, label %42, label %24, !llvm.loop !59

42:                                               ; preds = %24, %14
  %43 = phi i32 [ 0, %14 ], [ %36, %24 ]
  store i32 %43, ptr %9, align 4, !tbaa !48
  %44 = icmp slt i32 %11, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %9, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !47
  %48 = load i32, ptr %7, align 8, !tbaa !51
  %49 = add nsw i32 %48, %11
  store i32 %49, ptr %7, align 8, !tbaa !51
  br label %50

50:                                               ; preds = %2, %42, %45
  %51 = phi i32 [ 1, %45 ], [ -1, %42 ], [ -1, %2 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @i_v(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = shl i32 %5, 3
  %7 = or disjoint i32 %6, 7
  %8 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = add nsw i32 %9, %0
  %11 = icmp sgt i32 %10, %7
  br i1 %11, label %44, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = ashr i32 %9, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = and i32 %9, 7
  %21 = xor i32 %20, 7
  br label %22

22:                                               ; preds = %22, %14
  %23 = phi i32 [ %34, %22 ], [ 0, %14 ]
  %24 = phi ptr [ %38, %22 ], [ %19, %14 ]
  %25 = phi i32 [ %27, %22 ], [ %0, %14 ]
  %26 = phi i32 [ %36, %22 ], [ %21, %14 ]
  %27 = add nsw i32 %25, -1
  %28 = shl i32 %23, 1
  %29 = load i8, ptr %24, align 1, !tbaa !53
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %26, -1
  %32 = lshr i32 %30, %26
  %33 = and i32 %32, 1
  %34 = or disjoint i32 %33, %28
  %35 = icmp eq i32 %26, 0
  %36 = select i1 %35, i32 7, i32 %31
  %37 = zext i1 %35 to i64
  %38 = getelementptr inbounds i8, ptr %24, i64 %37
  %39 = icmp eq i32 %27, 0
  br i1 %39, label %40, label %22, !llvm.loop !59

40:                                               ; preds = %22, %12
  %41 = phi i32 [ 0, %12 ], [ %34, %22 ]
  %42 = icmp slt i32 %0, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 %10, ptr %8, align 8, !tbaa !51
  br label %44

44:                                               ; preds = %3, %40, %43
  %45 = phi i32 [ 0, %3 ], [ %41, %40 ], [ %41, %43 ]
  %46 = load ptr, ptr @p_Dec, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.decoder_params, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !44
  %49 = add nsw i32 %48, %0
  store i32 %49, ptr %47, align 8, !tbaa !44
  %50 = add nsw i32 %0, -1
  %51 = shl nuw i32 1, %50
  %52 = and i32 %45, %51
  %53 = sub nsw i32 0, %52
  %54 = or i32 %45, %53
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_1(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 7
  %7 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp slt i32 %8, %6
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = add nsw i32 %8, 1
  %12 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = ashr i32 %8, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !53
  %18 = zext i8 %17 to i32
  %19 = and i32 %8, 7
  %20 = xor i32 %19, 7
  %21 = lshr i32 %18, %20
  %22 = and i32 %21, 1
  store i32 %11, ptr %7, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %2, %10
  %24 = phi i32 [ 0, %2 ], [ %22, %10 ]
  %25 = load ptr, ptr @p_Dec, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.decoder_params, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !44
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !44
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_normal(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }>, ptr @NCBP, i64 0, i32 1, i64 %9
  %11 = load i8, ptr %10, align 2, !tbaa !53
  %12 = zext i8 %11 to i32
  store i32 %12, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_other(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %9
  %11 = load i8, ptr %10, align 2, !tbaa !53
  %12 = zext i8 %11 to i32
  store i32 %12, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_normal(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }>, ptr @NCBP, i64 0, i32 1, i64 %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  store i32 %12, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_other(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  store i32 %12, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_inter(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = icmp slt i32 %0, 10
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %5, label %8, label %23

8:                                                ; preds = %4
  %9 = ashr i32 %0, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = add nsw i32 %10, -1
  %12 = ashr i32 %1, 1
  %13 = zext nneg i32 %11 to i64
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x [8 x [2 x i8]]], ptr @NTAB1, i64 0, i64 %13, i64 %14
  %16 = load i8, ptr %15, align 2, !tbaa !53
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !48
  %18 = getelementptr inbounds [4 x [8 x [2 x i8]]], ptr @NTAB1, i64 0, i64 %13, i64 %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !53
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !48
  br i1 %7, label %39, label %21

21:                                               ; preds = %8
  %22 = load i32, ptr %2, align 4, !tbaa !48
  br label %36

23:                                               ; preds = %4
  %24 = lshr i32 %1, 1
  %25 = and i32 %24, 15
  store i32 %25, ptr %3, align 4, !tbaa !48
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8], ptr @LEVRUN1, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !53
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %1, 5
  %31 = lshr i32 %0, 1
  %32 = add nsw i32 %31, -5
  %33 = shl nuw i32 1, %32
  %34 = add i32 %33, %30
  %35 = add i32 %34, %29
  store i32 %35, ptr %2, align 4, !tbaa !48
  br i1 %7, label %39, label %36

36:                                               ; preds = %23, %21
  %37 = phi i32 [ %22, %21 ], [ %35, %23 ]
  %38 = sub nsw i32 0, %37
  store i32 %38, ptr %2, align 4, !tbaa !48
  br label %39

39:                                               ; preds = %36, %8, %23
  %40 = icmp eq i32 %0, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store i32 0, ptr %2, align 4, !tbaa !48
  br label %42

42:                                               ; preds = %41, %39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_c2x2(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = icmp slt i32 %0, 6
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %5, label %8, label %23

8:                                                ; preds = %4
  %9 = ashr i32 %0, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = add nsw i32 %10, -1
  %12 = ashr i32 %1, 1
  %13 = zext nneg i32 %11 to i64
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [2 x [2 x [2 x i8]]], ptr @NTAB3, i64 0, i64 %13, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !53
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !48
  %18 = getelementptr inbounds [2 x [2 x [2 x i8]]], ptr @NTAB3, i64 0, i64 %13, i64 %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !53
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !48
  br i1 %7, label %39, label %21

21:                                               ; preds = %8
  %22 = load i32, ptr %2, align 4, !tbaa !48
  br label %36

23:                                               ; preds = %4
  %24 = lshr i32 %1, 1
  %25 = and i32 %24, 3
  store i32 %25, ptr %3, align 4, !tbaa !48
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @LEVRUN3, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !53
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %1, 3
  %31 = lshr i32 %0, 1
  %32 = add nsw i32 %31, -3
  %33 = shl nuw i32 1, %32
  %34 = add i32 %33, %30
  %35 = add i32 %34, %29
  store i32 %35, ptr %2, align 4, !tbaa !48
  br i1 %7, label %39, label %36

36:                                               ; preds = %23, %21
  %37 = phi i32 [ %22, %21 ], [ %35, %23 ]
  %38 = sub nsw i32 0, %37
  store i32 %38, ptr %2, align 4, !tbaa !48
  br label %39

39:                                               ; preds = %36, %8, %23
  %40 = icmp eq i32 %0, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store i32 0, ptr %2, align 4, !tbaa !48
  br label %42

42:                                               ; preds = %41, %39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetVLCSymbol(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = ashr i32 %1, 3
  %6 = sext i32 %5 to i64
  %7 = and i32 %1, 7
  %8 = xor i32 %7, 7
  %9 = getelementptr inbounds i8, ptr %0, i64 %6
  %10 = load i8, ptr %9, align 1, !tbaa !53
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 1, %8
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4, %15
  %16 = phi ptr [ %27, %15 ], [ %9, %4 ]
  %17 = phi i32 [ %21, %15 ], [ 0, %4 ]
  %18 = phi i32 [ %22, %15 ], [ 1, %4 ]
  %19 = phi i32 [ %24, %15 ], [ %8, %4 ]
  %20 = phi i64 [ %28, %15 ], [ %6, %4 ]
  %21 = add nuw nsw i32 %17, 1
  %22 = add nuw nsw i32 %18, 1
  %23 = add nuw nsw i32 %19, 7
  %24 = and i32 %23, 7
  %25 = icmp eq i32 %24, 7
  %26 = zext i1 %25 to i64
  %27 = getelementptr inbounds i8, ptr %16, i64 %26
  %28 = add nsw i64 %20, %26
  %29 = load i8, ptr %27, align 1, !tbaa !53
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 1, %24
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %15, label %34, !llvm.loop !54

34:                                               ; preds = %15, %4
  %35 = phi i64 [ %6, %4 ], [ %28, %15 ]
  %36 = phi i32 [ %8, %4 ], [ %24, %15 ]
  %37 = phi i32 [ 1, %4 ], [ %22, %15 ]
  %38 = phi i32 [ 0, %4 ], [ %21, %15 ]
  %39 = phi ptr [ %9, %4 ], [ %27, %15 ]
  %40 = add nuw nsw i32 %38, 7
  %41 = lshr i32 %40, 3
  %42 = zext nneg i32 %41 to i64
  %43 = add nsw i64 %35, %42
  %44 = sext i32 %3 to i64
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %71, label %46

46:                                               ; preds = %34
  %47 = icmp eq i32 %38, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %46, %48
  %49 = phi i32 [ %64, %48 ], [ 0, %46 ]
  %50 = phi ptr [ %58, %48 ], [ %39, %46 ]
  %51 = phi i32 [ %53, %48 ], [ %38, %46 ]
  %52 = phi i32 [ %55, %48 ], [ %36, %46 ]
  %53 = add nsw i32 %51, -1
  %54 = add nuw nsw i32 %52, 7
  %55 = and i32 %54, 7
  %56 = icmp eq i32 %55, 7
  %57 = zext i1 %56 to i64
  %58 = getelementptr inbounds i8, ptr %50, i64 %57
  %59 = shl i32 %49, 1
  %60 = load i8, ptr %58, align 1, !tbaa !53
  %61 = zext i8 %60 to i32
  %62 = lshr i32 %61, %55
  %63 = and i32 %62, 1
  %64 = or disjoint i32 %63, %59
  %65 = icmp eq i32 %53, 0
  br i1 %65, label %66, label %48, !llvm.loop !57

66:                                               ; preds = %48
  %67 = add i32 %38, %37
  br label %68

68:                                               ; preds = %66, %46
  %69 = phi i32 [ %37, %46 ], [ %67, %66 ]
  %70 = phi i32 [ 0, %46 ], [ %64, %66 ]
  store i32 %70, ptr %2, align 4, !tbaa !48
  br label %71

71:                                               ; preds = %34, %68
  %72 = phi i32 [ %69, %68 ], [ -1, %34 ]
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_UVLC(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !60
  %5 = tail call i32 @readSyntaxElement_VLC(ptr noundef %1, ptr noundef %4), !range !41
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Intra4x4PredictionMode(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  %8 = ashr i32 %6, 3
  %9 = and i32 %6, 7
  %10 = xor i32 %9, 7
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !53
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 1, %10
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = icmp slt i32 %8, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = shl nuw nsw i32 %14, 8
  %24 = getelementptr inbounds i8, ptr %12, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !53
  %26 = zext i8 %25 to i32
  %27 = or disjoint i32 %23, %26
  %28 = sub nuw nsw i32 8, %10
  %29 = shl nuw nsw i32 %27, %28
  %30 = lshr i32 %29, 13
  %31 = and i32 %30, 7
  br label %32

32:                                               ; preds = %2, %22
  %33 = phi i32 [ %31, %22 ], [ 0, %2 ]
  %34 = phi i32 [ 4, %22 ], [ 1, %2 ]
  store i32 %33, ptr %7, align 4, !tbaa !48
  br label %35

35:                                               ; preds = %32, %18
  %36 = phi i1 [ true, %18 ], [ false, %32 ]
  %37 = phi i32 [ -1, %18 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !42
  br i1 %36, label %47, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %5, align 8, !tbaa !51
  %41 = add nsw i32 %40, %37
  store i32 %41, ptr %5, align 8, !tbaa !51
  br i1 %17, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, ptr %7, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %39 ]
  %46 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  store i32 %45, ptr %46, align 4, !tbaa !47
  br label %47

47:                                               ; preds = %35, %44
  %48 = phi i32 [ 1, %44 ], [ -1, %35 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @GetVLCSymbol_IntraMode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = ashr i32 %1, 3
  %6 = and i32 %1, 7
  %7 = xor i32 %6, 7
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !53
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 1, %7
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = icmp slt i32 %5, %3
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = shl nuw nsw i32 %11, 8
  %19 = getelementptr inbounds i8, ptr %9, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !53
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  %23 = sub nuw nsw i32 8, %7
  %24 = shl nuw nsw i32 %22, %23
  %25 = lshr i32 %24, 13
  %26 = and i32 %25, 7
  br label %27

27:                                               ; preds = %4, %17
  %28 = phi i32 [ %26, %17 ], [ 0, %4 ]
  %29 = phi i32 [ 4, %17 ], [ 1, %4 ]
  store i32 %28, ptr %2, align 4, !tbaa !48
  br label %30

30:                                               ; preds = %27, %15
  %31 = phi i32 [ -1, %15 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @more_rbsp_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = ashr i32 %1, 3
  %5 = add nsw i32 %2, -1
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = sext i32 %4 to i64
  %9 = and i32 %1, 7
  %10 = xor i32 %9, 7
  %11 = getelementptr inbounds i8, ptr %0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !53
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 1, %10
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %7
  %18 = icmp eq i32 %9, 7
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = sub nsw i32 6, %9
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %27, %21 ], [ 0, %19 ]
  %23 = phi i32 [ %24, %21 ], [ %20, %19 ]
  %24 = add nsw i32 %23, -1
  %25 = lshr i32 %13, %23
  %26 = and i32 %25, 1
  %27 = or i32 %26, %22
  %28 = icmp sgt i32 %23, 0
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %21, label %31, !llvm.loop !63

31:                                               ; preds = %21, %17, %7, %3
  %32 = phi i32 [ 1, %3 ], [ 1, %7 ], [ 0, %17 ], [ %27, %21 ]
  ret i32 %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uvlc_startcode_follows(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %4 = load i32, ptr %3, align 8, !tbaa !64
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %5, i64 2
  %7 = load i8, ptr %6, align 2, !tbaa !53
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = zext i8 %7 to i64
  %11 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.bit_stream, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.bit_stream, ptr %12, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = ashr i32 %14, 3
  %18 = add nsw i32 %16, -1
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %48, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.bit_stream, ptr %12, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = sext i32 %17 to i64
  %24 = and i32 %14, 7
  %25 = xor i32 %24, 7
  %26 = getelementptr inbounds i8, ptr %22, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !53
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 1, %25
  %30 = and i32 %29, %28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %20
  %33 = icmp eq i32 %24, 7
  br i1 %33, label %48, label %34

34:                                               ; preds = %32
  %35 = sub nsw i32 6, %24
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i32 [ %42, %36 ], [ 0, %34 ]
  %38 = phi i32 [ %39, %36 ], [ %35, %34 ]
  %39 = add nsw i32 %38, -1
  %40 = lshr i32 %28, %38
  %41 = and i32 %40, 1
  %42 = or i32 %41, %37
  %43 = icmp sgt i32 %38, 0
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %36, label %46, !llvm.loop !63

46:                                               ; preds = %36
  %47 = xor i32 %42, 1
  br label %48

48:                                               ; preds = %46, %32, %2, %20
  %49 = phi i32 [ 0, %2 ], [ 0, %20 ], [ 1, %32 ], [ %47, %46 ]
  ret i32 %49
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @GetBits(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = add nsw i32 %4, %1
  %7 = icmp sgt i32 %6, %3
  br i1 %7, label %36, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %8
  %11 = ashr i32 %1, 3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = and i32 %1, 7
  %15 = xor i32 %14, 7
  br label %16

16:                                               ; preds = %10, %16
  %17 = phi i32 [ %28, %16 ], [ 0, %10 ]
  %18 = phi ptr [ %32, %16 ], [ %13, %10 ]
  %19 = phi i32 [ %21, %16 ], [ %4, %10 ]
  %20 = phi i32 [ %30, %16 ], [ %15, %10 ]
  %21 = add nsw i32 %19, -1
  %22 = shl i32 %17, 1
  %23 = load i8, ptr %18, align 1, !tbaa !53
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %20, -1
  %26 = lshr i32 %24, %20
  %27 = and i32 %26, 1
  %28 = or disjoint i32 %27, %22
  %29 = icmp eq i32 %20, 0
  %30 = select i1 %29, i32 7, i32 %25
  %31 = zext i1 %29 to i64
  %32 = getelementptr inbounds i8, ptr %18, i64 %31
  %33 = icmp eq i32 %21, 0
  br i1 %33, label %34, label %16, !llvm.loop !59

34:                                               ; preds = %16, %8
  %35 = phi i32 [ 0, %8 ], [ %28, %16 ]
  store i32 %35, ptr %2, align 4, !tbaa !48
  br label %36

36:                                               ; preds = %5, %34
  %37 = phi i32 [ %4, %34 ], [ -1, %5 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !47
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %53

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = shl i32 %13, 3
  %15 = or disjoint i32 %14, 1
  %16 = icmp sgt i32 %5, %15
  br i1 %16, label %41, label %17

17:                                               ; preds = %11
  %18 = and i32 %5, 7
  %19 = xor i32 %18, 7
  %20 = ashr i32 %5, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %7, i64 %21
  br label %23

23:                                               ; preds = %17, %23
  %24 = phi i32 [ 0, %17 ], [ %35, %23 ]
  %25 = phi ptr [ %22, %17 ], [ %39, %23 ]
  %26 = phi i32 [ %19, %17 ], [ %37, %23 ]
  %27 = phi i32 [ 6, %17 ], [ %28, %23 ]
  %28 = add nsw i32 %27, -1
  %29 = shl i32 %24, 1
  %30 = load i8, ptr %25, align 1, !tbaa !53
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %26, -1
  %33 = lshr i32 %31, %26
  %34 = and i32 %33, 1
  %35 = or disjoint i32 %34, %29
  %36 = icmp eq i32 %26, 0
  %37 = select i1 %36, i32 7, i32 %32
  %38 = zext i1 %36 to i64
  %39 = getelementptr inbounds i8, ptr %25, i64 %38
  %40 = icmp eq i32 %28, 0
  br i1 %40, label %41, label %23, !llvm.loop !69

41:                                               ; preds = %23, %11
  %42 = phi i32 [ -1, %11 ], [ %35, %23 ]
  %43 = add nsw i32 %5, 6
  store i32 %43, ptr %4, align 8, !tbaa !51
  %44 = and i32 %42, 3
  %45 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  store i32 %44, ptr %45, align 8, !tbaa !70
  %46 = ashr i32 %42, 2
  store i32 %46, ptr %8, align 4, !tbaa !47
  %47 = icmp eq i32 %42, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, ptr %45, align 8, !tbaa !70
  br label %51

49:                                               ; preds = %41
  %50 = add nsw i32 %46, 1
  store i32 %50, ptr %8, align 4, !tbaa !47
  br label %51

51:                                               ; preds = %49, %48
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 6, ptr %52, align 4, !tbaa !42
  br label %109

53:                                               ; preds = %3
  %54 = sext i32 %9 to i64
  %55 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %54
  %56 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %54
  %57 = ashr i32 %5, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %7, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !53
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 16
  %63 = getelementptr inbounds i8, ptr %59, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !53
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = or disjoint i32 %66, %62
  %68 = getelementptr inbounds i8, ptr %59, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !53
  %70 = zext i8 %69 to i32
  %71 = or disjoint i32 %67, %70
  %72 = and i32 %5, 7
  %73 = shl nuw nsw i32 %71, %72
  %74 = and i32 %73, 16777215
  br label %75

75:                                               ; preds = %104, %53
  %76 = phi ptr [ %56, %53 ], [ %80, %104 ]
  %77 = phi ptr [ %55, %53 ], [ %79, %104 ]
  %78 = phi i32 [ 0, %53 ], [ %105, %104 ]
  %79 = getelementptr i8, ptr %77, i64 17
  %80 = getelementptr i8, ptr %76, i64 17
  br label %81

81:                                               ; preds = %94, %75
  %82 = phi i32 [ %97, %94 ], [ 0, %75 ]
  %83 = phi ptr [ %96, %94 ], [ %76, %75 ]
  %84 = phi ptr [ %95, %94 ], [ %77, %75 ]
  %85 = load i8, ptr %84, align 1, !tbaa !53
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = zext i8 %85 to i32
  %89 = sub nsw i32 24, %88
  %90 = lshr i32 %74, %89
  %91 = load i8, ptr %83, align 1, !tbaa !53
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %87, %81
  %95 = getelementptr inbounds i8, ptr %84, i64 1
  %96 = getelementptr inbounds i8, ptr %83, i64 1
  %97 = add nuw nsw i32 %82, 1
  %98 = icmp eq i32 %97, 17
  br i1 %98, label %104, label %81, !llvm.loop !71

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %88, ptr %100, align 4, !tbaa !42
  %101 = load i32, ptr %4, align 4, !tbaa !48
  %102 = add nsw i32 %101, %88
  store i32 %102, ptr %4, align 4, !tbaa !48
  store i32 %82, ptr %8, align 4, !tbaa !47
  %103 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  store i32 %78, ptr %103, align 8, !tbaa !70
  br label %109

104:                                              ; preds = %94
  %105 = add nuw nsw i32 %78, 1
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %75, !llvm.loop !72

107:                                              ; preds = %104
  %108 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #14
  unreachable

109:                                              ; preds = %99, %51
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShowBits(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = add nsw i32 %3, %1
  %6 = icmp sgt i32 %5, %2
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %7
  %10 = ashr i32 %1, 3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = and i32 %1, 7
  %14 = xor i32 %13, 7
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %27, %15 ], [ 0, %9 ]
  %17 = phi ptr [ %31, %15 ], [ %12, %9 ]
  %18 = phi i32 [ %29, %15 ], [ %14, %9 ]
  %19 = phi i32 [ %20, %15 ], [ %3, %9 ]
  %20 = add nsw i32 %19, -1
  %21 = shl i32 %16, 1
  %22 = load i8, ptr %17, align 1, !tbaa !53
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %18, -1
  %25 = lshr i32 %23, %18
  %26 = and i32 %25, 1
  %27 = or disjoint i32 %26, %21
  %28 = icmp eq i32 %18, 0
  %29 = select i1 %28, i32 7, i32 %24
  %30 = zext i1 %28 to i64
  %31 = getelementptr inbounds i8, ptr %17, i64 %30
  %32 = icmp eq i32 %20, 0
  br i1 %32, label %33, label %15, !llvm.loop !69

33:                                               ; preds = %15, %7, %4
  %34 = phi i32 [ -1, %4 ], [ 0, %7 ], [ %27, %15 ]
  ret i32 %34
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !78
  %8 = add i32 %7, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %9
  %11 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %9
  %12 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 2
  %13 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = load i32, ptr %12, align 4, !tbaa !48
  %16 = ashr i32 %15, 3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !53
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !53
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or disjoint i32 %25, %21
  %27 = getelementptr inbounds i8, ptr %18, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !53
  %29 = zext i8 %28 to i32
  %30 = or disjoint i32 %26, %29
  %31 = and i32 %15, 7
  %32 = shl nuw nsw i32 %30, %31
  %33 = and i32 %32, 16777215
  br label %34

34:                                               ; preds = %64, %3
  %35 = phi ptr [ %11, %3 ], [ %39, %64 ]
  %36 = phi ptr [ %10, %3 ], [ %38, %64 ]
  %37 = phi i32 [ 0, %3 ], [ %65, %64 ]
  %38 = getelementptr i8, ptr %36, i64 17
  %39 = getelementptr i8, ptr %35, i64 17
  br label %40

40:                                               ; preds = %53, %34
  %41 = phi i32 [ %56, %53 ], [ 0, %34 ]
  %42 = phi ptr [ %55, %53 ], [ %35, %34 ]
  %43 = phi ptr [ %54, %53 ], [ %36, %34 ]
  %44 = load i8, ptr %43, align 1, !tbaa !53
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = zext i8 %44 to i32
  %48 = sub nsw i32 24, %47
  %49 = lshr i32 %33, %48
  %50 = load i8, ptr %42, align 1, !tbaa !53
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %46, %40
  %54 = getelementptr inbounds i8, ptr %43, i64 1
  %55 = getelementptr inbounds i8, ptr %42, i64 1
  %56 = add nuw nsw i32 %41, 1
  %57 = icmp eq i32 %56, 17
  br i1 %57, label %64, label %40, !llvm.loop !71

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 %47, ptr %59, align 4, !tbaa !42
  %60 = load i32, ptr %12, align 4, !tbaa !48
  %61 = add nsw i32 %60, %47
  store i32 %61, ptr %12, align 4, !tbaa !48
  %62 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %41, ptr %62, align 4, !tbaa !47
  %63 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  store i32 %37, ptr %63, align 8, !tbaa !70
  ret i32 0

64:                                               ; preds = %53
  %65 = add nuw nsw i32 %37, 1
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %34, !llvm.loop !72

67:                                               ; preds = %64
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  tail call void @exit(i32 noundef -1) #14
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLC0(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = shl i32 %6, 3
  %8 = or disjoint i32 %7, 7
  %9 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %26, %2
  %12 = phi i32 [ 1, %2 ], [ %29, %26 ]
  %13 = phi i32 [ %4, %2 ], [ %14, %26 ]
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %13, %8
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = ashr i32 %13, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !53
  %21 = zext i8 %20 to i32
  %22 = and i32 %13, 7
  %23 = xor i32 %22, 7
  %24 = lshr i32 %21, %23
  %25 = and i32 %24, 1
  br label %26

26:                                               ; preds = %16, %11
  %27 = phi i32 [ -1, %11 ], [ %25, %16 ]
  %28 = icmp eq i32 %27, 0
  %29 = add nuw nsw i32 %12, 1
  br i1 %28, label %11, label %30, !llvm.loop !82

30:                                               ; preds = %26
  %31 = icmp ult i32 %12, 15
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = add nsw i32 %12, -1
  %34 = ashr i32 %33, 1
  %35 = add nsw i32 %34, 1
  br label %109

36:                                               ; preds = %30
  %37 = icmp eq i32 %12, 15
  br i1 %37, label %38, label %71

38:                                               ; preds = %36
  %39 = or disjoint i32 %7, 2
  %40 = icmp sgt i32 %13, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %38
  %42 = and i32 %14, 7
  %43 = xor i32 %42, 7
  %44 = ashr i32 %14, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %10, i64 %45
  br label %47

47:                                               ; preds = %41, %47
  %48 = phi i32 [ 0, %41 ], [ %59, %47 ]
  %49 = phi ptr [ %46, %41 ], [ %63, %47 ]
  %50 = phi i32 [ %43, %41 ], [ %61, %47 ]
  %51 = phi i32 [ 4, %41 ], [ %52, %47 ]
  %52 = add nsw i32 %51, -1
  %53 = shl i32 %48, 1
  %54 = load i8, ptr %49, align 1, !tbaa !53
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %50, -1
  %57 = lshr i32 %55, %50
  %58 = and i32 %57, 1
  %59 = or disjoint i32 %58, %53
  %60 = icmp eq i32 %50, 0
  %61 = select i1 %60, i32 7, i32 %56
  %62 = zext i1 %60 to i64
  %63 = getelementptr inbounds i8, ptr %49, i64 %62
  %64 = icmp eq i32 %52, 0
  br i1 %64, label %65, label %47, !llvm.loop !69

65:                                               ; preds = %47, %38
  %66 = phi i32 [ -1, %38 ], [ %59, %47 ]
  %67 = add nsw i32 %13, 5
  %68 = lshr i32 %66, 1
  %69 = and i32 %68, 7
  %70 = or disjoint i32 %69, 8
  br label %109

71:                                               ; preds = %36
  %72 = add nsw i32 %12, -16
  %73 = shl i32 2048, %72
  %74 = add nsw i32 %73, -2032
  %75 = add nsw i32 %12, -4
  %76 = add nsw i32 %14, %75
  %77 = icmp sgt i32 %76, %8
  br i1 %77, label %104, label %78

78:                                               ; preds = %71
  %79 = icmp eq i32 %75, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %78
  %81 = ashr i32 %14, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %10, i64 %82
  %84 = and i32 %14, 7
  %85 = xor i32 %84, 7
  br label %86

86:                                               ; preds = %80, %86
  %87 = phi i32 [ %98, %86 ], [ 0, %80 ]
  %88 = phi ptr [ %102, %86 ], [ %83, %80 ]
  %89 = phi i32 [ %100, %86 ], [ %85, %80 ]
  %90 = phi i32 [ %91, %86 ], [ %75, %80 ]
  %91 = add nsw i32 %90, -1
  %92 = shl i32 %87, 1
  %93 = load i8, ptr %88, align 1, !tbaa !53
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %89, -1
  %96 = lshr i32 %94, %89
  %97 = and i32 %96, 1
  %98 = or disjoint i32 %97, %92
  %99 = icmp eq i32 %89, 0
  %100 = select i1 %99, i32 7, i32 %95
  %101 = zext i1 %99 to i64
  %102 = getelementptr inbounds i8, ptr %88, i64 %101
  %103 = icmp eq i32 %91, 0
  br i1 %103, label %104, label %86, !llvm.loop !69

104:                                              ; preds = %86, %78, %71
  %105 = phi i32 [ -1, %71 ], [ 0, %78 ], [ %98, %86 ]
  %106 = ashr i32 %105, 1
  %107 = add nsw i32 %74, %106
  %108 = add nuw nsw i32 %75, %12
  br label %109

109:                                              ; preds = %65, %104, %32
  %110 = phi i32 [ %33, %32 ], [ %66, %65 ], [ %105, %104 ]
  %111 = phi i32 [ %35, %32 ], [ %70, %65 ], [ %107, %104 ]
  %112 = phi i32 [ %12, %32 ], [ 19, %65 ], [ %108, %104 ]
  %113 = phi i32 [ %14, %32 ], [ %67, %65 ], [ %76, %104 ]
  %114 = and i32 %110, 1
  %115 = icmp eq i32 %114, 0
  %116 = sub nsw i32 0, %111
  %117 = select i1 %115, i32 %111, i32 %116
  %118 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  store i32 %117, ptr %118, align 8, !tbaa !58
  %119 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %112, ptr %119, align 4, !tbaa !42
  store i32 %113, ptr %3, align 8, !tbaa !51
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLCN(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = shl i32 %7, 3
  %9 = or disjoint i32 %8, 7
  %10 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %27, %3
  %13 = phi i32 [ 1, %3 ], [ %30, %27 ]
  %14 = phi i32 [ %5, %3 ], [ %15, %27 ]
  %15 = add nsw i32 %14, 1
  %16 = icmp slt i32 %14, %9
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = ashr i32 %14, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %11, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !53
  %22 = zext i8 %21 to i32
  %23 = and i32 %14, 7
  %24 = xor i32 %23, 7
  %25 = lshr i32 %22, %24
  %26 = and i32 %25, 1
  br label %27

27:                                               ; preds = %17, %12
  %28 = phi i32 [ -1, %12 ], [ %26, %17 ]
  %29 = icmp eq i32 %28, 0
  %30 = add nuw nsw i32 %13, 1
  br i1 %29, label %12, label %31, !llvm.loop !83

31:                                               ; preds = %27
  %32 = add nsw i32 %1, -1
  %33 = sub nsw i32 %15, %13
  %34 = icmp ult i32 %13, 16
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = add nsw i32 %13, -1
  %37 = shl i32 %36, %32
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %32, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %35
  %41 = add i32 %14, %1
  %42 = icmp sgt i32 %41, %9
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = and i32 %15, 7
  %45 = xor i32 %44, 7
  %46 = ashr i32 %15, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %11, i64 %47
  br label %49

49:                                               ; preds = %43, %49
  %50 = phi i32 [ 0, %43 ], [ %61, %49 ]
  %51 = phi ptr [ %48, %43 ], [ %65, %49 ]
  %52 = phi i32 [ %45, %43 ], [ %63, %49 ]
  %53 = phi i32 [ %32, %43 ], [ %54, %49 ]
  %54 = add nsw i32 %53, -1
  %55 = shl i32 %50, 1
  %56 = load i8, ptr %51, align 1, !tbaa !53
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %52, -1
  %59 = lshr i32 %57, %52
  %60 = and i32 %59, 1
  %61 = or disjoint i32 %60, %55
  %62 = icmp eq i32 %52, 0
  %63 = select i1 %62, i32 7, i32 %58
  %64 = zext i1 %62 to i64
  %65 = getelementptr inbounds i8, ptr %51, i64 %64
  %66 = icmp eq i32 %54, 0
  br i1 %66, label %67, label %49, !llvm.loop !69

67:                                               ; preds = %49, %40
  %68 = phi i32 [ -1, %40 ], [ %61, %49 ]
  %69 = add nsw i32 %68, %38
  %70 = add nsw i32 %13, %32
  br label %71

71:                                               ; preds = %67, %35
  %72 = phi i32 [ %70, %67 ], [ %13, %35 ]
  %73 = phi i32 [ %69, %67 ], [ %38, %35 ]
  %74 = add nsw i32 %72, %33
  %75 = icmp slt i32 %74, %9
  br i1 %75, label %115, label %129

76:                                               ; preds = %31
  %77 = add nsw i32 %13, -5
  %78 = shl nuw i32 1, %77
  %79 = shl i32 15, %32
  %80 = add nsw i32 %15, %77
  %81 = icmp sgt i32 %80, %9
  br i1 %81, label %108, label %82

82:                                               ; preds = %76
  %83 = icmp eq i32 %77, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %82
  %85 = ashr i32 %15, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %11, i64 %86
  %88 = and i32 %15, 7
  %89 = xor i32 %88, 7
  br label %90

90:                                               ; preds = %84, %90
  %91 = phi i32 [ %102, %90 ], [ 0, %84 ]
  %92 = phi ptr [ %106, %90 ], [ %87, %84 ]
  %93 = phi i32 [ %104, %90 ], [ %89, %84 ]
  %94 = phi i32 [ %95, %90 ], [ %77, %84 ]
  %95 = add nsw i32 %94, -1
  %96 = shl i32 %91, 1
  %97 = load i8, ptr %92, align 1, !tbaa !53
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %93, -1
  %100 = lshr i32 %98, %93
  %101 = and i32 %100, 1
  %102 = or disjoint i32 %101, %96
  %103 = icmp eq i32 %93, 0
  %104 = select i1 %103, i32 7, i32 %99
  %105 = zext i1 %103 to i64
  %106 = getelementptr inbounds i8, ptr %92, i64 %105
  %107 = icmp eq i32 %95, 0
  br i1 %107, label %108, label %90, !llvm.loop !69

108:                                              ; preds = %90, %82, %76
  %109 = phi i32 [ -1, %76 ], [ 0, %82 ], [ %102, %90 ]
  %110 = add nuw nsw i32 %77, %13
  %111 = add i32 %79, -2047
  %112 = add i32 %111, %78
  %113 = add nsw i32 %112, %109
  %114 = icmp slt i32 %80, %9
  br i1 %114, label %115, label %129

115:                                              ; preds = %108, %71
  %116 = phi i32 [ %74, %71 ], [ %80, %108 ]
  %117 = phi i32 [ %72, %71 ], [ %110, %108 ]
  %118 = phi i32 [ %73, %71 ], [ %113, %108 ]
  %119 = ashr i32 %116, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %11, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !53
  %123 = zext i8 %122 to i32
  %124 = and i32 %116, 7
  %125 = xor i32 %124, 7
  %126 = shl nuw nsw i32 1, %125
  %127 = and i32 %126, %123
  %128 = icmp eq i32 %127, 0
  br label %129

129:                                              ; preds = %115, %108, %71
  %130 = phi i32 [ %72, %71 ], [ %110, %108 ], [ %117, %115 ]
  %131 = phi i1 [ false, %71 ], [ false, %108 ], [ %128, %115 ]
  %132 = phi i32 [ %73, %71 ], [ %113, %108 ], [ %118, %115 ]
  %133 = add nsw i32 %130, 1
  %134 = sub nsw i32 0, %132
  %135 = select i1 %131, i32 %132, i32 %134
  %136 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  store i32 %135, ptr %136, align 8, !tbaa !58
  %137 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %133, ptr %137, align 4, !tbaa !42
  %138 = add nsw i32 %133, %33
  store i32 %138, ptr %4, align 8, !tbaa !51
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZeros(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load i32, ptr %4, align 4, !tbaa !48
  %8 = ashr i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !53
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %10, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !53
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  %23 = and i32 %7, 7
  %24 = shl nuw nsw i32 %22, %23
  %25 = and i32 %24, 16777215
  %26 = load i32, ptr %3, align 4, !tbaa !47
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.codtab, i64 0, i64 %27
  %29 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.lentab, i64 0, i64 %27
  br label %30

30:                                               ; preds = %43, %2
  %31 = phi i32 [ %46, %43 ], [ 0, %2 ]
  %32 = phi ptr [ %45, %43 ], [ %28, %2 ]
  %33 = phi ptr [ %44, %43 ], [ %29, %2 ]
  %34 = load i8, ptr %33, align 1, !tbaa !53
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = zext i8 %34 to i32
  %38 = sub nsw i32 24, %37
  %39 = lshr i32 %25, %38
  %40 = load i8, ptr %32, align 1, !tbaa !53
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36, %30
  %44 = getelementptr inbounds i8, ptr %33, i64 1
  %45 = getelementptr inbounds i8, ptr %32, i64 1
  %46 = add nuw nsw i32 %31, 1
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %53, label %30, !llvm.loop !71

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %37, ptr %49, align 4, !tbaa !42
  %50 = load i32, ptr %4, align 4, !tbaa !48
  %51 = add nsw i32 %50, %37
  store i32 %51, ptr %4, align 4, !tbaa !48
  store i32 %31, ptr %3, align 4, !tbaa !47
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  store i32 0, ptr %52, align 8, !tbaa !70
  ret i32 0

53:                                               ; preds = %43
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  tail call void @exit(i32 noundef -1) #14
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZerosChromaDC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = load i32, ptr %5, align 4, !tbaa !48
  %9 = ashr i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !53
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !53
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %11, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !53
  %22 = zext i8 %21 to i32
  %23 = or disjoint i32 %19, %22
  %24 = and i32 %8, 7
  %25 = shl nuw nsw i32 %23, %24
  %26 = and i32 %25, 16777215
  %27 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !78
  %31 = add i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = load i32, ptr %4, align 4, !tbaa !47
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %32, i64 %34
  %36 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %32, i64 %34
  br label %37

37:                                               ; preds = %50, %3
  %38 = phi i32 [ %53, %50 ], [ 0, %3 ]
  %39 = phi ptr [ %52, %50 ], [ %35, %3 ]
  %40 = phi ptr [ %51, %50 ], [ %36, %3 ]
  %41 = load i8, ptr %40, align 1, !tbaa !53
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = zext i8 %41 to i32
  %45 = sub nsw i32 24, %44
  %46 = lshr i32 %26, %45
  %47 = load i8, ptr %39, align 1, !tbaa !53
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %43, %37
  %51 = getelementptr inbounds i8, ptr %40, i64 1
  %52 = getelementptr inbounds i8, ptr %39, i64 1
  %53 = add nuw nsw i32 %38, 1
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %60, label %37, !llvm.loop !71

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 %44, ptr %56, align 4, !tbaa !42
  %57 = load i32, ptr %5, align 4, !tbaa !48
  %58 = add nsw i32 %57, %44
  store i32 %58, ptr %5, align 4, !tbaa !48
  store i32 %38, ptr %4, align 4, !tbaa !47
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  store i32 0, ptr %59, align 8, !tbaa !70
  ret i32 0

60:                                               ; preds = %50
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  tail call void @exit(i32 noundef -1) #14
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @readSyntaxElement_Run(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load i32, ptr %4, align 4, !tbaa !48
  %8 = ashr i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !53
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %10, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !53
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  %23 = and i32 %7, 7
  %24 = shl nuw nsw i32 %22, %23
  %25 = and i32 %24, 16777215
  %26 = load i32, ptr %3, align 4, !tbaa !47
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.codtab, i64 0, i64 %27
  %29 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.lentab, i64 0, i64 %27
  br label %30

30:                                               ; preds = %43, %2
  %31 = phi i32 [ %46, %43 ], [ 0, %2 ]
  %32 = phi ptr [ %45, %43 ], [ %28, %2 ]
  %33 = phi ptr [ %44, %43 ], [ %29, %2 ]
  %34 = load i8, ptr %33, align 1, !tbaa !53
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = zext i8 %34 to i32
  %38 = sub nsw i32 24, %37
  %39 = lshr i32 %25, %38
  %40 = load i8, ptr %32, align 1, !tbaa !53
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36, %30
  %44 = getelementptr inbounds i8, ptr %33, i64 1
  %45 = getelementptr inbounds i8, ptr %32, i64 1
  %46 = add nuw nsw i32 %31, 1
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %53, label %30, !llvm.loop !71

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %37, ptr %49, align 4, !tbaa !42
  %50 = load i32, ptr %4, align 4, !tbaa !48
  %51 = add nsw i32 %50, %37
  store i32 %51, ptr %4, align 4, !tbaa !48
  store i32 %31, ptr %3, align 4, !tbaa !47
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  store i32 0, ptr %52, align 8, !tbaa !70
  ret i32 0

53:                                               ; preds = %43
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  tail call void @exit(i32 noundef -1) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"syntaxelement", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !39, i64 40}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !39, i64 32}
!41 = !{i32 -1, i32 2}
!42 = !{!35, !36, i64 12}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !36, i64 24}
!45 = !{!"decoder_params", !39, i64 0, !39, i64 8, !46, i64 16, !36, i64 24, !39, i64 32, !36, i64 40}
!46 = !{!"long", !37, i64 0}
!47 = !{!35, !36, i64 4}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !39, i64 16}
!50 = !{!"bit_stream", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !36, i64 24}
!51 = !{!50, !36, i64 8}
!52 = !{!50, !36, i64 12}
!53 = !{!37, !37, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!35, !36, i64 16}
!59 = distinct !{!59, !55, !56}
!60 = !{!61, !39, i64 0}
!61 = !{!"datapartition", !39, i64 0, !62, i64 8, !39, i64 40}
!62 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !39, i64 24}
!63 = distinct !{!63, !55, !56}
!64 = !{!65, !36, i64 200}
!65 = !{!"slice", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !39, i64 40, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !37, i64 88, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !66, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !37, i64 136, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !39, i64 248, !37, i64 256, !37, i64 264, !39, i64 312, !39, i64 320, !39, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !36, i64 1176, !36, i64 1180, !36, i64 1184, !67, i64 1188, !66, i64 1220, !66, i64 1222, !66, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !37, i64 1288, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !36, i64 13264, !36, i64 13268, !66, i64 13272, !66, i64 13274, !66, i64 13276, !66, i64 13278, !39, i64 13280, !39, i64 13288, !39, i64 13296, !66, i64 13304, !66, i64 13306, !36, i64 13308, !36, i64 13312, !39, i64 13320, !39, i64 13328, !36, i64 13336, !37, i64 13340, !39, i64 13408, !39, i64 13416, !39, i64 13424, !39, i64 13432, !39, i64 13440, !39, i64 13448, !39, i64 13456, !39, i64 13464, !39, i64 13472, !39, i64 13480, !39, i64 13488, !39, i64 13496, !36, i64 13504, !39, i64 13512, !39, i64 13520, !39, i64 13528, !39, i64 13536, !39, i64 13544, !37, i64 13552}
!66 = !{!"short", !37, i64 0}
!67 = !{!"nalunitheadermvcext_tag", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28}
!68 = !{!65, !39, i64 312}
!69 = distinct !{!69, !55, !56}
!70 = !{!35, !36, i64 8}
!71 = distinct !{!71, !55, !56}
!72 = distinct !{!72, !55, !56}
!73 = !{!74, !39, i64 16}
!74 = !{!"video_par", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24, !37, i64 132120, !39, i64 699416, !37, i64 699424, !36, i64 848672, !36, i64 848676, !36, i64 848680, !36, i64 848684, !39, i64 848688, !39, i64 848696, !39, i64 848704, !36, i64 848712, !36, i64 848716, !36, i64 848720, !36, i64 848724, !36, i64 848728, !39, i64 848736, !39, i64 848744, !37, i64 848752, !36, i64 848776, !36, i64 848780, !36, i64 848784, !36, i64 848788, !36, i64 848792, !39, i64 848800, !37, i64 848808, !39, i64 848832, !39, i64 848840, !37, i64 848848, !36, i64 848872, !36, i64 848876, !39, i64 848880, !39, i64 848888, !37, i64 848896, !36, i64 848920, !39, i64 848928, !39, i64 848936, !36, i64 848944, !36, i64 848948, !36, i64 848952, !36, i64 848956, !36, i64 848960, !36, i64 848964, !36, i64 848968, !36, i64 848972, !36, i64 848976, !36, i64 848980, !36, i64 848984, !36, i64 848988, !36, i64 848992, !36, i64 848996, !36, i64 849000, !36, i64 849004, !36, i64 849008, !36, i64 849012, !36, i64 849016, !36, i64 849020, !36, i64 849024, !36, i64 849028, !36, i64 849032, !36, i64 849036, !66, i64 849040, !66, i64 849042, !37, i64 849044, !36, i64 849052, !36, i64 849056, !37, i64 849060, !37, i64 849072, !36, i64 849084, !36, i64 849088, !36, i64 849092, !36, i64 849096, !36, i64 849100, !36, i64 849104, !36, i64 849108, !36, i64 849112, !36, i64 849116, !36, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !36, i64 849196, !36, i64 849200, !36, i64 849204, !36, i64 849208, !36, i64 849212, !36, i64 849216, !36, i64 849220, !36, i64 849224, !36, i64 849228, !36, i64 849232, !36, i64 849236, !36, i64 849240, !36, i64 849244, !36, i64 849248, !36, i64 849252, !36, i64 849256, !36, i64 849260, !36, i64 849264, !36, i64 849268, !36, i64 849272, !36, i64 849276, !36, i64 849280, !36, i64 849284, !39, i64 849288, !39, i64 849296, !75, i64 849304, !75, i64 849624, !75, i64 849944, !75, i64 850264, !75, i64 850584, !75, i64 850904, !75, i64 851224, !75, i64 851544, !36, i64 851864, !36, i64 851868, !36, i64 851872, !46, i64 851880, !36, i64 851888, !37, i64 851892, !36, i64 855988, !36, i64 855992, !36, i64 855996, !36, i64 856000, !36, i64 856004, !36, i64 856008, !36, i64 856012, !39, i64 856016, !39, i64 856024, !39, i64 856032, !39, i64 856040, !39, i64 856048, !37, i64 856056, !39, i64 856456, !37, i64 856464, !39, i64 856488, !39, i64 856496, !39, i64 856504, !36, i64 856512, !39, i64 856520, !37, i64 856528, !39, i64 856608, !39, i64 856616, !39, i64 856624, !39, i64 856632, !36, i64 856640, !36, i64 856644, !36, i64 856648, !39, i64 856656, !39, i64 856664, !37, i64 856672, !37, i64 856688, !39, i64 856704, !39, i64 856712, !36, i64 856720, !39, i64 856728, !39, i64 856736, !39, i64 856744, !39, i64 856752, !39, i64 856760, !39, i64 856768, !39, i64 856776, !39, i64 856784, !39, i64 856792, !39, i64 856800, !39, i64 856808, !39, i64 856816, !36, i64 856824, !39, i64 856832, !36, i64 856840, !36, i64 856844, !36, i64 856848, !36, i64 856852, !36, i64 856856, !36, i64 856860, !36, i64 856864, !39, i64 856872}
!75 = !{!"image_data", !76, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!76 = !{!"frame_format", !36, i64 0, !36, i64 4, !77, i64 8, !37, i64 16, !37, i64 28, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !36, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !36, i64 124, !36, i64 128}
!77 = !{!"double", !37, i64 0}
!78 = !{!79, !36, i64 36}
!79 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !36, i64 2060, !36, i64 2064, !36, i64 2068, !36, i64 2072, !36, i64 2076, !36, i64 2080, !36, i64 2084, !36, i64 2088, !36, i64 2092, !37, i64 2096, !36, i64 3120, !36, i64 3124, !36, i64 3128, !36, i64 3132, !36, i64 3136, !36, i64 3140, !36, i64 3144, !36, i64 3148, !36, i64 3152, !36, i64 3156, !36, i64 3160, !36, i64 3164, !36, i64 3168, !80, i64 3172, !36, i64 4120, !36, i64 4124}
!80 = !{!"", !36, i64 0, !36, i64 4, !66, i64 8, !66, i64 10, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !81, i64 80, !36, i64 492, !81, i64 496, !36, i64 908, !36, i64 912, !36, i64 916, !36, i64 920, !36, i64 924, !36, i64 928, !36, i64 932, !36, i64 936, !36, i64 940, !36, i64 944}
!81 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !55, !56}

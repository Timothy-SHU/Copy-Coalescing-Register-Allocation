; ModuleID = 'ldecod_src/vlc.c'
source_filename = "ldecod_src/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.decoder_params = type { ptr, ptr, i64, i32, ptr, i32 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }
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

@p_Dec = external local_unnamed_addr global ptr, align 8
@NCBP = internal unnamed_addr constant <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }> <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }> <{ [16 x [2 x i8]] [[2 x i8] c"\0F\00", [2 x i8] c"\00\01", [2 x i8] c"\07\02", [2 x i8] c"\0B\04", [2 x i8] c"\0D\08", [2 x i8] c"\0E\03", [2 x i8] c"\03\05", [2 x i8] c"\05\0A", [2 x i8] c"\0A\0C", [2 x i8] c"\0C\0F", [2 x i8] c"\01\07", [2 x i8] c"\02\0B", [2 x i8] c"\04\0D", [2 x i8] c"\08\0E", [2 x i8] c"\06\06", [2 x i8] c"\09\09"], [32 x [2 x i8]] zeroinitializer }>, [48 x [2 x i8]] [[2 x i8] c"/\00", [2 x i8] c"\1F\10", [2 x i8] c"\0F\01", [2 x i8] c"\00\02", [2 x i8] c"\17\04", [2 x i8] c"\1B\08", [2 x i8] c"\1D ", [2 x i8] c"\1E\03", [2 x i8] c"\07\05", [2 x i8] c"\0B\0A", [2 x i8] c"\0D\0C", [2 x i8] c"\0E\0F", [2 x i8] c"'/", [2 x i8] c"+\07", [2 x i8] c"-\0B", [2 x i8] c".\0D", [2 x i8] c"\10\0E", [2 x i8] c"\03\06", [2 x i8] c"\05\09", [2 x i8] c"\0A\1F", [2 x i8] c"\0C#", [2 x i8] c"\13%", [2 x i8] c"\15*", [2 x i8] c"\1A,", [2 x i8] c"\1C!", [2 x i8] c"#\22", [2 x i8] c"%$", [2 x i8] c"*(", [2 x i8] c",'", [2 x i8] c"\01+", [2 x i8] c"\02-", [2 x i8] c"\04.", [2 x i8] c"\08\11", [2 x i8] c"\11\12", [2 x i8] c"\12\14", [2 x i8] c"\14\18", [2 x i8] c"\18\13", [2 x i8] c"\06\15", [2 x i8] c"\09\1A", [2 x i8] c"\16\1C", [2 x i8] c"\19\17", [2 x i8] c" \1B", [2 x i8] c"!\1D", [2 x i8] c"\22\1E", [2 x i8] c"$\16", [2 x i8] c"(\19", [2 x i8] c"&&", [2 x i8] c"))"] }>, align 16
@NTAB1 = internal unnamed_addr constant [4 x [8 x [2 x i8]]] [[8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\01\04", [2 x i8] c"\01\05", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\01\08", [2 x i8] c"\01\09", [2 x i8] c"\04\00"]], align 16
@LEVRUN1 = internal unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@NTAB3 = internal unnamed_addr constant [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\01"]], align 1
@LEVRUN3 = internal unnamed_addr constant [4 x i8] c"\02\01\00\00", align 1
@readSyntaxElement_NumCoeffTrailingOnes.lentab = internal constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"], [4 x [17 x i8]] [[17 x i8] c"\02\06\06\07\08\08\09\0B\0B\0C\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\02\05\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0E\0E\0E", [17 x i8] c"\00\00\03\06\06\07\08\09\0B\0B\0C\0C\0D\0D\0D\0E\0E", [17 x i8] c"\00\00\00\04\04\05\06\06\07\09\0B\0B\0C\0D\0D\0D\0E"], [4 x [17 x i8]] [[17 x i8] c"\04\06\06\06\07\07\07\07\08\08\09\09\09\0A\0A\0A\0A", [17 x i8] c"\00\04\05\05\05\05\06\06\07\08\08\09\09\09\0A\0A\0A", [17 x i8] c"\00\00\04\05\05\05\06\06\07\07\08\08\09\09\0A\0A\0A", [17 x i8] c"\00\00\00\04\04\04\04\04\05\06\07\08\08\09\0A\0A\0A"]], align 16
@readSyntaxElement_NumCoeffTrailingOnes.codtab = internal constant [3 x [4 x [17 x i8]]] [[4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"], [4 x [17 x i8]] [[17 x i8] c"\03\0B\07\07\07\04\07\0F\0B\0F\0B\08\0F\0B\07\09\07", [17 x i8] c"\00\02\07\0A\06\06\06\06\0E\0A\0E\0A\0E\0A\0B\08\06", [17 x i8] c"\00\00\03\09\05\05\05\05\0D\09\0D\09\0D\09\06\0A\05", [17 x i8] c"\00\00\00\05\04\06\08\04\04\04\0C\08\0C\0C\08\01\04"], [4 x [17 x i8]] [[17 x i8] c"\0F\0F\0B\08\0F\0B\09\08\0F\0B\0F\0B\08\0D\09\05\01", [17 x i8] c"\00\0E\0F\0C\0A\08\0E\0A\0E\0E\0A\0E\0A\07\0C\08\04", [17 x i8] c"\00\00\0D\0E\0B\09\0D\09\0D\0A\0D\09\0D\09\0B\07\03", [17 x i8] c"\00\00\00\0C\0B\0A\09\08\0D\0C\0C\0C\08\0C\0A\06\02"]], align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal constant <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>], [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ [4 x <{ i8, i8, i8, i8, i8, [12 x i8] }>] [<{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 6, i8 6, i8 6, i8 6, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 3, i8 7, i8 8, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 6, i8 7, [12 x i8] zeroinitializer }>], [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\07\07\09\09\0A\0B\0C\0D", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\02\07\07\09\0A\0B\0C\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\03\07\07\09\0A\0B\0C", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\05\06\07\07\0A\0B", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\06\08\09\0A\0B\0D\0D\0D\0E\0E\0F\0F\10\10\10\10", [17 x i8] c"\00\02\06\08\09\0A\0B\0D\0D\0E\0E\0F\0F\0F\10\10\10", [17 x i8] c"\00\00\03\07\08\09\0A\0B\0D\0D\0E\0E\0F\0F\10\10\10", [17 x i8] c"\00\00\00\05\06\07\08\09\0A\0B\0D\0E\0E\0F\0F\10\10"] }>, align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal constant <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }>, [4 x <{ [9 x i8], [8 x i8] }>], [4 x [17 x i8]] }> <{ <{ <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, [13 x i8] }> }> <{ <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 7, i8 4, i8 3, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 6, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 1, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [13 x i8] }> <{ i8 0, i8 0, i8 0, i8 5, [13 x i8] zeroinitializer }> }>, [4 x <{ [9 x i8], [8 x i8] }>] [<{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\01\0F\0E\07\06\07\07\07\07", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\01\0D\0C\05\06\06\06\05", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\01\0B\0A\04\05\05\04", [8 x i8] zeroinitializer }>, <{ [9 x i8], [8 x i8] }> <{ [9 x i8] c"\00\00\00\01\01\09\08\04\04", [8 x i8] zeroinitializer }>], [4 x [17 x i8]] [[17 x i8] c"\01\05\07\07\07\07\0F\0B\08\0F\0B\0F\0B\0F\0B\07\04", [17 x i8] c"\00\01\04\06\06\06\06\0E\0A\0E\0A\0E\0A\01\0E\0A\06", [17 x i8] c"\00\00\01\05\05\05\05\05\0D\09\0D\09\0D\09\0D\09\05", [17 x i8] c"\00\00\00\03\03\04\04\04\04\04\0C\0C\08\0C\08\0C\08"] }>, align 16
@readSyntaxElement_TotalZeros.lentab = internal constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }>, align 16
@readSyntaxElement_TotalZeros.codtab = internal constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }>, align 16
@readSyntaxElement_TotalZerosChromaDC.lentab = internal constant <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 2, i8 3, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\03\03\04\04\04\05\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 3, i8 2, i8 2, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 2, i8 2, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16
@readSyntaxElement_TotalZerosChromaDC.codtab = internal constant <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> }> <{ <{ <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, [15 x i8] }>, [12 x [16 x i8]] }> <{ <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, [12 x [16 x i8]] zeroinitializer }>, <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [8 x [16 x i8]] }> <{ <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 2, i8 3, i8 2, i8 3, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 1, i8 1, i8 4, i8 5, i8 6, i8 7, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 6, i8 7, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 6, i8 0, i8 1, i8 2, i8 7, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 2, i8 3, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }>, [8 x [16 x i8]] zeroinitializer }>, <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }> }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }> }> }>, align 16
@readSyntaxElement_Run.lentab = internal constant <{ <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 2, i8 2, i8 2, i8 3, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, [16 x i8] c"\03\03\03\03\03\03\03\04\05\06\07\08\09\0A\0B\00", [8 x [16 x i8]] zeroinitializer }>, align 16
@readSyntaxElement_Run.codtab = internal constant <{ <{ i8, [15 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8], [8 x [16 x i8]] }> <{ <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 3, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 2, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 3, i8 2, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 0, i8 1, i8 3, i8 2, i8 5, i8 4, [9 x i8] zeroinitializer }>, [16 x i8] c"\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\00", [8 x [16 x i8]] zeroinitializer }>, align 16
@str = private unnamed_addr constant [44 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes\00", align 1
@str.6 = private unnamed_addr constant [53 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes ChromaDC\00", align 1
@str.7 = private unnamed_addr constant [39 x i8] c"ERROR: failed to find Total Zeros !cdc\00", align 1
@str.8 = private unnamed_addr constant [34 x i8] c"ERROR: failed to find Total Zeros\00", align 1
@str.9 = private unnamed_addr constant [26 x i8] c"ERROR: failed to find Run\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ue_v(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  store i32 0, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 8
  store ptr @linfo_ue, ptr %4, align 8, !tbaa !12
  %5 = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %3, ptr noundef %1) #14, !range !13
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !14
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = add nsw i32 %10, %7
  store i32 %11, ptr %9, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linfo_ue(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  store i32 %8, ptr %2, align 4, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_VLC(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !24
  %10 = tail call i32 @GetVLCSymbol(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %7, i32 noundef %9) #14
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %10, ptr %11, align 4, !tbaa !14
  %12 = icmp eq i32 %10, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 8, !tbaa !23
  %15 = add nsw i32 %14, %10
  store i32 %15, ptr %5, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = load i32, ptr %7, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  tail call void %17(i32 noundef %10, i32 noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  br label %21

21:                                               ; preds = %2, %13
  %22 = phi i32 [ 1, %13 ], [ -1, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @se_v(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  store i32 0, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 8
  store ptr @linfo_se, ptr %4, align 8, !tbaa !12
  %5 = call i32 @readSyntaxElement_VLC(ptr noundef nonnull %3, ptr noundef %1) #14, !range !13
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !14
  %8 = load ptr, ptr @p_Dec, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.decoder_params, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = add nsw i32 %10, %7
  store i32 %11, ptr %9, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linfo_se(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3) #2 {
  %5 = ashr i32 %0, 1
  %6 = shl nuw i32 1, %5
  %7 = add i32 %6, %1
  %8 = lshr i32 %7, 1
  %9 = and i32 %7, 1
  %10 = icmp eq i32 %9, 0
  %11 = sub nsw i32 0, %8
  %12 = select i1 %10, i32 %8, i32 %11
  store i32 %12, ptr %2, align 4, !tbaa !20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_v(i32 noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.syntaxelement, ptr %4, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !25
  store i32 0, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %4, i64 0, i32 8
  store ptr @linfo_ue, ptr %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %4, i64 0, i32 3
  store i32 %0, ptr %7, align 4, !tbaa !14
  %8 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %4, ptr noundef %2) #14, !range !13
  %9 = load i32, ptr %7, align 4, !tbaa !14
  %10 = load ptr, ptr @p_Dec, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.decoder_params, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = add nsw i32 %12, %9
  store i32 %13, ptr %11, align 8, !tbaa !16
  %14 = load i32, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_FLC(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !24
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 7
  %7 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = tail call i32 @GetBits(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %13) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %11, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !19
  %19 = load i32, ptr %12, align 4, !tbaa !14
  %20 = load i32, ptr %9, align 8, !tbaa !23
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr %9, align 8, !tbaa !23
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi i32 [ 1, %16 ], [ -1, %2 ]
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @i_v(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.syntaxelement, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.syntaxelement, ptr %4, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !25
  store i32 0, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %4, i64 0, i32 8
  store ptr @linfo_ue, ptr %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %4, i64 0, i32 3
  store i32 %0, ptr %7, align 4, !tbaa !14
  %8 = call i32 @readSyntaxElement_FLC(ptr noundef nonnull %4, ptr noundef %2) #14, !range !13
  %9 = load i32, ptr %7, align 4, !tbaa !14
  %10 = load ptr, ptr @p_Dec, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.decoder_params, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = add nsw i32 %12, %9
  store i32 %13, ptr %11, align 8, !tbaa !16
  %14 = load i32, ptr %5, align 8, !tbaa !25
  %15 = add nsw i32 %0, -1
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = sub nsw i32 0, %17
  %19 = or i32 %14, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @u_1(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @u_v(i32 noundef 1, ptr poison, ptr noundef %1) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_normal(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @linfo_ue(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr poison) #14
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }>, ptr @NCBP, i64 0, i32 1, i64 %7
  %9 = load i8, ptr %8, align 2, !tbaa !26
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_intra_other(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @linfo_ue(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr poison) #14
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %7
  %9 = load i8, ptr %8, align 2, !tbaa !26
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_normal(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @linfo_ue(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr poison) #14
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }>, ptr @NCBP, i64 0, i32 1, i64 %7, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !26
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @linfo_cbp_inter_other(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @linfo_ue(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr poison) #14
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [48 x [2 x i8]], ptr @NCBP, i64 0, i64 %7, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !26
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_inter(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp slt i32 %0, 10
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %5, label %8, label %24

8:                                                ; preds = %4
  %9 = ashr i32 %0, 1
  %10 = add nsw i32 %9, -1
  %11 = tail call fastcc i32 @imax(i32 noundef %10) #14
  %12 = ashr i32 %1, 1
  %13 = sext i32 %11 to i64
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x [8 x [2 x i8]]], ptr @NTAB1, i64 0, i64 %13, i64 %14
  %16 = load i8, ptr %15, align 2, !tbaa !26
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !20
  %18 = getelementptr inbounds [4 x [8 x [2 x i8]]], ptr @NTAB1, i64 0, i64 %13, i64 %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !26
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !20
  br i1 %7, label %39, label %21

21:                                               ; preds = %8
  %22 = load i32, ptr %2, align 4, !tbaa !20
  %23 = sub nsw i32 0, %22
  store i32 %23, ptr %2, align 4, !tbaa !20
  br label %39

24:                                               ; preds = %4
  %25 = lshr i32 %1, 1
  %26 = and i32 %25, 15
  store i32 %26, ptr %3, align 4, !tbaa !20
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [16 x i8], ptr @LEVRUN1, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !26
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %1, 5
  %32 = lshr i32 %0, 1
  %33 = add nsw i32 %32, -5
  %34 = shl nuw i32 1, %33
  %35 = add i32 %34, %31
  %36 = add i32 %35, %30
  store i32 %36, ptr %2, align 4, !tbaa !20
  br i1 %7, label %43, label %37

37:                                               ; preds = %24
  %38 = sub nsw i32 0, %36
  br label %41

39:                                               ; preds = %8, %21
  %40 = icmp eq i32 %0, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %42, ptr %2, align 4, !tbaa !20
  br label %43

43:                                               ; preds = %41, %24, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @linfo_levrun_c2x2(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp slt i32 %0, 6
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %5, label %8, label %24

8:                                                ; preds = %4
  %9 = ashr i32 %0, 1
  %10 = add nsw i32 %9, -1
  %11 = tail call fastcc i32 @imax(i32 noundef %10) #14
  %12 = ashr i32 %1, 1
  %13 = sext i32 %11 to i64
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [2 x [2 x [2 x i8]]], ptr @NTAB3, i64 0, i64 %13, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %2, align 4, !tbaa !20
  %18 = getelementptr inbounds [2 x [2 x [2 x i8]]], ptr @NTAB3, i64 0, i64 %13, i64 %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !26
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %3, align 4, !tbaa !20
  br i1 %7, label %39, label %21

21:                                               ; preds = %8
  %22 = load i32, ptr %2, align 4, !tbaa !20
  %23 = sub nsw i32 0, %22
  store i32 %23, ptr %2, align 4, !tbaa !20
  br label %39

24:                                               ; preds = %4
  %25 = lshr i32 %1, 1
  %26 = and i32 %25, 3
  store i32 %26, ptr %3, align 4, !tbaa !20
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @LEVRUN3, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !26
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %1, 3
  %32 = lshr i32 %0, 1
  %33 = add nsw i32 %32, -3
  %34 = shl nuw i32 1, %33
  %35 = add i32 %34, %31
  %36 = add i32 %35, %30
  store i32 %36, ptr %2, align 4, !tbaa !20
  br i1 %7, label %43, label %37

37:                                               ; preds = %24
  %38 = sub nsw i32 0, %36
  br label %41

39:                                               ; preds = %8, %21
  %40 = icmp eq i32 %0, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %42, ptr %2, align 4, !tbaa !20
  br label %43

43:                                               ; preds = %41, %24, %39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @GetVLCSymbol(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = ashr i32 %1, 3
  %6 = sext i32 %5 to i64
  %7 = and i32 %1, 7
  %8 = xor i32 %7, 7
  %9 = getelementptr inbounds i8, ptr %0, i64 %6
  %10 = load i8, ptr %9, align 1, !tbaa !26
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 1, %8
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %41

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
  %29 = load i8, ptr %27, align 1, !tbaa !26
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 1, %24
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %15, label %34, !llvm.loop !27

34:                                               ; preds = %15
  %35 = add nuw nsw i32 %17, 8
  %36 = lshr i32 %35, 3
  %37 = zext nneg i32 %36 to i64
  %38 = add nsw i64 %28, %37
  %39 = sext i32 %3 to i64
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %66, label %43

41:                                               ; preds = %4
  %42 = icmp sgt i32 %5, %3
  br i1 %42, label %66, label %63

43:                                               ; preds = %34, %43
  %44 = phi i32 [ %59, %43 ], [ 0, %34 ]
  %45 = phi ptr [ %53, %43 ], [ %27, %34 ]
  %46 = phi i32 [ %48, %43 ], [ %21, %34 ]
  %47 = phi i32 [ %50, %43 ], [ %24, %34 ]
  %48 = add nsw i32 %46, -1
  %49 = add nuw nsw i32 %47, 7
  %50 = and i32 %49, 7
  %51 = icmp eq i32 %50, 7
  %52 = zext i1 %51 to i64
  %53 = getelementptr inbounds i8, ptr %45, i64 %52
  %54 = shl i32 %44, 1
  %55 = load i8, ptr %53, align 1, !tbaa !26
  %56 = zext i8 %55 to i32
  %57 = lshr i32 %56, %50
  %58 = and i32 %57, 1
  %59 = or disjoint i32 %58, %54
  %60 = icmp eq i32 %48, 0
  br i1 %60, label %61, label %43, !llvm.loop !29

61:                                               ; preds = %43
  %62 = add nuw i32 %21, %22
  br label %63

63:                                               ; preds = %41, %61
  %64 = phi i32 [ %62, %61 ], [ 1, %41 ]
  %65 = phi i32 [ %59, %61 ], [ 0, %41 ]
  store i32 %65, ptr %2, align 4, !tbaa !20
  br label %66

66:                                               ; preds = %41, %34, %63
  %67 = phi i32 [ %64, %63 ], [ -1, %34 ], [ -1, %41 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_UVLC(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !30
  %5 = tail call i32 @readSyntaxElement_VLC(ptr noundef %1, ptr noundef %4) #14, !range !13
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Intra4x4PredictionMode(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !24
  %10 = tail call i32 @GetVLCSymbol_IntraMode(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %7, i32 noundef %9) #14, !range !33
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %10, ptr %11, align 4, !tbaa !14
  %12 = icmp eq i32 %10, -1
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 8, !tbaa !23
  %15 = add nsw i32 %14, %10
  store i32 %15, ptr %5, align 8, !tbaa !23
  %16 = icmp eq i32 %10, 1
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %7, align 8, !tbaa !25
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i32 [ %18, %17 ], [ -1, %13 ]
  %21 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !19
  br label %22

22:                                               ; preds = %2, %19
  %23 = phi i32 [ 1, %19 ], [ -1, %2 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @GetVLCSymbol_IntraMode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = ashr i32 %1, 3
  %6 = and i32 %1, 7
  %7 = xor i32 %6, 7
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !26
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
  %20 = load i8, ptr %19, align 1, !tbaa !26
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
  store i32 %28, ptr %2, align 4, !tbaa !20
  br label %30

30:                                               ; preds = %27, %15
  %31 = phi i32 [ -1, %15 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @more_rbsp_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = ashr i32 %1, 3
  %5 = add nsw i32 %2, -1
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = sext i32 %4 to i64
  %9 = and i32 %1, 7
  %10 = xor i32 %9, 7
  %11 = getelementptr inbounds i8, ptr %0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !26
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 1, %10
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %7
  %18 = icmp eq i32 %9, 7
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  %20 = sub nuw nsw i32 6, %9
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %23, %21 ], [ %20, %19 ]
  %23 = add nsw i32 %22, -1
  %24 = lshr i32 %13, %22
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %22, 0
  %27 = icmp eq i32 %25, 0
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %21, label %29, !llvm.loop !34

29:                                               ; preds = %21, %17, %7, %3
  %30 = phi i32 [ 1, %3 ], [ 1, %7 ], [ 0, %17 ], [ %25, %21 ]
  ret i32 %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uvlc_startcode_follows(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.bit_stream, ptr %5, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !24
  %12 = tail call i32 @more_rbsp_data(ptr noundef %7, i32 noundef %9, i32 noundef %11) #14, !range !39
  %13 = xor i32 %12, 1
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @GetBits(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
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
  %23 = load i8, ptr %18, align 1, !tbaa !26
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
  br i1 %33, label %34, label %16, !llvm.loop !40

34:                                               ; preds = %16, %8
  %35 = phi i32 [ 0, %8 ], [ %28, %16 ]
  store i32 %35, ptr %2, align 4, !tbaa !20
  br label %36

36:                                               ; preds = %5, %34
  %37 = phi i32 [ %4, %34 ], [ -1, %5 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnes(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !24
  %9 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !19
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = shl i32 %8, 3
  %16 = or disjoint i32 %15, 7
  %17 = tail call i32 @ShowBits(ptr noundef %10, i32 noundef %6, i32 noundef %16, i32 noundef 6) #14
  %18 = add nsw i32 %6, 6
  store i32 %18, ptr %5, align 8, !tbaa !23
  %19 = and i32 %17, 3
  %20 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !41
  %21 = ashr i32 %17, 2
  store i32 %21, ptr %11, align 4, !tbaa !19
  %22 = icmp eq i32 %17, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, ptr %20, align 8, !tbaa !41
  br label %26

24:                                               ; preds = %14
  %25 = add nsw i32 %21, 1
  store i32 %25, ptr %11, align 4, !tbaa !19
  br label %26

26:                                               ; preds = %24, %23
  %27 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 6, ptr %27, align 4, !tbaa !14
  br label %36

28:                                               ; preds = %3
  %29 = sext i32 %12 to i64
  %30 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %29
  %31 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %29
  %32 = call fastcc i32 @code_from_bitstream_2d(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %4) #14, !range !42
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #16
  unreachable

36:                                               ; preds = %28, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %22 = load i8, ptr %17, align 1, !tbaa !26
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
  br i1 %32, label %33, label %15, !llvm.loop !43

33:                                               ; preds = %15, %7, %4
  %34 = phi i32 [ -1, %4 ], [ 0, %7 ], [ %27, %15 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @code_from_bitstream_2d(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #6 {
  %8 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load i32, ptr %8, align 4, !tbaa !20
  %12 = ashr i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !26
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !26
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or disjoint i32 %21, %17
  %23 = getelementptr inbounds i8, ptr %14, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !26
  %25 = zext i8 %24 to i32
  %26 = or disjoint i32 %22, %25
  %27 = and i32 %11, 7
  %28 = shl nuw nsw i32 %26, %27
  %29 = and i32 %28, 16777215
  %30 = icmp sgt i32 %5, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %7
  %32 = icmp sgt i32 %4, 0
  %33 = add i32 %4, -1
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %34, 1
  br label %36

36:                                               ; preds = %31, %70
  %37 = phi ptr [ %3, %31 ], [ %72, %70 ]
  %38 = phi ptr [ %2, %31 ], [ %71, %70 ]
  %39 = phi i32 [ 0, %31 ], [ %73, %70 ]
  br i1 %32, label %40, label %70

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i64 %35
  %42 = getelementptr i8, ptr %37, i64 %35
  br label %43

43:                                               ; preds = %40, %55
  %44 = phi i32 [ %58, %55 ], [ 0, %40 ]
  %45 = phi ptr [ %57, %55 ], [ %37, %40 ]
  %46 = phi ptr [ %56, %55 ], [ %38, %40 ]
  %47 = load i8, ptr %46, align 1, !tbaa !26
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = zext i8 %47 to i32
  %51 = tail call fastcc i32 @ShowBitsThres(i32 noundef %29, i32 noundef %50) #14, !range !44
  %52 = load i8, ptr %45, align 1, !tbaa !26
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49, %43
  %56 = getelementptr inbounds i8, ptr %46, i64 1
  %57 = getelementptr inbounds i8, ptr %45, i64 1
  %58 = add nuw nsw i32 %44, 1
  %59 = icmp eq i32 %58, %4
  br i1 %59, label %70, label %43, !llvm.loop !45

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %50, ptr %61, align 4, !tbaa !14
  %62 = load i8, ptr %46, align 1, !tbaa !26
  %63 = zext i8 %62 to i32
  %64 = load i32, ptr %8, align 4, !tbaa !20
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr %8, align 4, !tbaa !20
  %66 = load i8, ptr %45, align 1, !tbaa !26
  %67 = zext i8 %66 to i32
  store i32 %67, ptr %6, align 4, !tbaa !20
  %68 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  store i32 %44, ptr %68, align 4, !tbaa !19
  %69 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 2
  store i32 %39, ptr %69, align 8, !tbaa !41
  br label %75

70:                                               ; preds = %55, %36
  %71 = phi ptr [ %38, %36 ], [ %41, %55 ]
  %72 = phi ptr [ %37, %36 ], [ %42, %55 ]
  %73 = add nuw nsw i32 %39, 1
  %74 = icmp eq i32 %73, %5
  br i1 %74, label %75, label %36, !llvm.loop !46

75:                                               ; preds = %70, %7, %60
  %76 = phi i32 [ 0, %60 ], [ -1, %7 ], [ -1, %70 ]
  ret i32 %76
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ShowBitsThres(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = sub i32 24, %1
  %4 = lshr i32 %0, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = add i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %10
  %12 = getelementptr inbounds [3 x [4 x [17 x i8]]], ptr @readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %10
  %13 = call fastcc i32 @code_from_bitstream_2d(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %4) #14, !range !42
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  tail call void @exit(i32 noundef -1) #16
  unreachable

17:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLC0(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !24
  %7 = shl i32 %6, 3
  %8 = or disjoint i32 %7, 7
  %9 = getelementptr inbounds %struct.bit_stream, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ 1, %2 ], [ %17, %11 ]
  %13 = phi i32 [ %4, %2 ], [ %14, %11 ]
  %14 = add nsw i32 %13, 1
  %15 = tail call i32 @ShowBits(ptr noundef %10, i32 noundef %13, i32 noundef %8, i32 noundef 1) #14
  %16 = icmp eq i32 %15, 0
  %17 = add nuw nsw i32 %12, 1
  br i1 %16, label %11, label %18, !llvm.loop !56

18:                                               ; preds = %11
  %19 = icmp ult i32 %12, 15
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = add nsw i32 %12, -1
  %22 = lshr i32 %21, 1
  %23 = add nuw nsw i32 %22, 1
  br label %42

24:                                               ; preds = %18
  %25 = icmp eq i32 %12, 15
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = tail call i32 @ShowBits(ptr noundef %10, i32 noundef %14, i32 noundef %8, i32 noundef 4) #14
  %28 = add nsw i32 %13, 5
  %29 = lshr i32 %27, 1
  %30 = and i32 %29, 7
  %31 = or disjoint i32 %30, 8
  br label %42

32:                                               ; preds = %24
  %33 = add nsw i32 %12, -16
  %34 = shl i32 2048, %33
  %35 = add nsw i32 %34, -2032
  %36 = add nsw i32 %12, -4
  %37 = tail call i32 @ShowBits(ptr noundef %10, i32 noundef %14, i32 noundef %8, i32 noundef %36) #14
  %38 = add nsw i32 %14, %36
  %39 = ashr i32 %37, 1
  %40 = add nsw i32 %35, %39
  %41 = add nuw nsw i32 %36, %12
  br label %42

42:                                               ; preds = %26, %32, %20
  %43 = phi i32 [ %21, %20 ], [ %27, %26 ], [ %37, %32 ]
  %44 = phi i32 [ %23, %20 ], [ %31, %26 ], [ %40, %32 ]
  %45 = phi i32 [ %12, %20 ], [ 19, %26 ], [ %41, %32 ]
  %46 = phi i32 [ %14, %20 ], [ %28, %26 ], [ %38, %32 ]
  %47 = and i32 %43, 1
  %48 = icmp eq i32 %47, 0
  %49 = sub nsw i32 0, %44
  %50 = select i1 %48, i32 %44, i32 %49
  %51 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  store i32 %50, ptr %51, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %45, ptr %52, align 4, !tbaa !14
  store i32 %46, ptr %3, align 8, !tbaa !23
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @readSyntaxElement_Level_VLCN(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !24
  %8 = shl i32 %7, 3
  %9 = or disjoint i32 %8, 7
  %10 = getelementptr inbounds %struct.bit_stream, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %12, %3
  %13 = phi i32 [ 1, %3 ], [ %18, %12 ]
  %14 = phi i32 [ %5, %3 ], [ %15, %12 ]
  %15 = add nsw i32 %14, 1
  %16 = tail call i32 @ShowBits(ptr noundef %11, i32 noundef %14, i32 noundef %9, i32 noundef 1) #14
  %17 = icmp eq i32 %16, 0
  %18 = add nuw nsw i32 %13, 1
  br i1 %17, label %12, label %19, !llvm.loop !57

19:                                               ; preds = %12
  %20 = add nsw i32 %1, -1
  %21 = sub nsw i32 %15, %13
  %22 = icmp ult i32 %13, 16
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = add nsw i32 %13, -1
  %25 = shl i32 %24, %20
  %26 = add nsw i32 %25, 1
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @ShowBits(ptr noundef %11, i32 noundef %15, i32 noundef %9, i32 noundef %20) #14
  %30 = add nsw i32 %29, %26
  %31 = add nsw i32 %13, %20
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i32 [ %31, %28 ], [ %13, %23 ]
  %34 = phi i32 [ %30, %28 ], [ %26, %23 ]
  %35 = add nsw i32 %33, %21
  br label %46

36:                                               ; preds = %19
  %37 = add nsw i32 %13, -5
  %38 = shl nuw i32 1, %37
  %39 = shl i32 15, %20
  %40 = tail call i32 @ShowBits(ptr noundef %11, i32 noundef %15, i32 noundef %9, i32 noundef %37) #14
  %41 = add nuw nsw i32 %37, %13
  %42 = add i32 %39, -2047
  %43 = add i32 %42, %38
  %44 = add nsw i32 %43, %40
  %45 = add i32 %15, %37
  br label %46

46:                                               ; preds = %36, %32
  %47 = phi i32 [ %45, %36 ], [ %35, %32 ]
  %48 = phi i32 [ %41, %36 ], [ %33, %32 ]
  %49 = phi i32 [ %44, %36 ], [ %34, %32 ]
  %50 = tail call i32 @ShowBits(ptr noundef %11, i32 noundef %47, i32 noundef %9, i32 noundef 1) #14
  %51 = add nsw i32 %48, 1
  %52 = icmp eq i32 %50, 0
  %53 = sub nsw i32 0, %49
  %54 = select i1 %52, i32 %49, i32 %53
  %55 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 4
  store i32 %54, ptr %55, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 3
  store i32 %51, ptr %56, align 4, !tbaa !14
  %57 = add nsw i32 %51, %21
  store i32 %57, ptr %4, align 8, !tbaa !23
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZeros(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.lentab, i64 0, i64 %6
  %8 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_TotalZeros.codtab, i64 0, i64 %6
  %9 = call fastcc i32 @code_from_bitstream_2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %3) #14, !range !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  tail call void @exit(i32 noundef -1) #16
  unreachable

13:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_TotalZerosChromaDC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = add i32 %8, -1
  %10 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !19
  %12 = sext i32 %9 to i64
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %12, i64 %13
  %15 = getelementptr inbounds [3 x [15 x [16 x i8]]], ptr @readSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %12, i64 %13
  %16 = call fastcc i32 @code_from_bitstream_2d(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %4) #14, !range !42
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  tail call void @exit(i32 noundef -1) #16
  unreachable

20:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readSyntaxElement_Run(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.syntaxelement, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.lentab, i64 0, i64 %6
  %8 = getelementptr inbounds [15 x [16 x i8]], ptr @readSyntaxElement_Run.codtab, i64 0, i64 %6
  %9 = call fastcc i32 @code_from_bitstream_2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %3) #14, !range !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  tail call void @exit(i32 noundef -1) #16
  unreachable

13:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"syntaxelement", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !11, i64 40}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !11, i64 32}
!13 = !{i32 -1, i32 2}
!14 = !{!7, !8, i64 12}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !8, i64 24}
!17 = !{!"decoder_params", !11, i64 0, !11, i64 8, !18, i64 16, !8, i64 24, !11, i64 32, !8, i64 40}
!18 = !{!"long", !9, i64 0}
!19 = !{!7, !8, i64 4}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !11, i64 16}
!22 = !{!"bit_stream", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !8, i64 24}
!23 = !{!22, !8, i64 8}
!24 = !{!22, !8, i64 12}
!25 = !{!7, !8, i64 16}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !11, i64 0}
!31 = !{!"datapartition", !11, i64 0, !32, i64 8, !11, i64 40}
!32 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !11, i64 24}
!33 = !{i32 -1, i32 5}
!34 = distinct !{!34, !28}
!35 = !{!36, !11, i64 312}
!36 = !{!"slice", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !37, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !9, i64 136, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !9, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !11, i64 248, !9, i64 256, !9, i64 264, !11, i64 312, !11, i64 320, !11, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !8, i64 1176, !8, i64 1180, !8, i64 1184, !38, i64 1188, !37, i64 1220, !37, i64 1222, !37, i64 1224, !8, i64 1228, !8, i64 1232, !8, i64 1236, !8, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !9, i64 1288, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !8, i64 13264, !8, i64 13268, !37, i64 13272, !37, i64 13274, !37, i64 13276, !37, i64 13278, !11, i64 13280, !11, i64 13288, !11, i64 13296, !37, i64 13304, !37, i64 13306, !8, i64 13308, !8, i64 13312, !11, i64 13320, !11, i64 13328, !8, i64 13336, !9, i64 13340, !11, i64 13408, !11, i64 13416, !11, i64 13424, !11, i64 13432, !11, i64 13440, !11, i64 13448, !11, i64 13456, !11, i64 13464, !11, i64 13472, !11, i64 13480, !11, i64 13488, !11, i64 13496, !8, i64 13504, !11, i64 13512, !11, i64 13520, !11, i64 13528, !11, i64 13536, !11, i64 13544, !9, i64 13552}
!37 = !{!"short", !9, i64 0}
!38 = !{!"nalunitheadermvcext_tag", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!39 = !{i32 0, i32 2}
!40 = distinct !{!40, !28}
!41 = !{!7, !8, i64 8}
!42 = !{i32 -1, i32 1}
!43 = distinct !{!43, !28}
!44 = !{i32 0, i32 16777216}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = !{!48, !11, i64 16}
!48 = !{!"video_par", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !9, i64 132120, !11, i64 699416, !9, i64 699424, !8, i64 848672, !8, i64 848676, !8, i64 848680, !8, i64 848684, !11, i64 848688, !11, i64 848696, !11, i64 848704, !8, i64 848712, !8, i64 848716, !8, i64 848720, !8, i64 848724, !8, i64 848728, !11, i64 848736, !11, i64 848744, !9, i64 848752, !8, i64 848776, !8, i64 848780, !8, i64 848784, !8, i64 848788, !8, i64 848792, !11, i64 848800, !9, i64 848808, !11, i64 848832, !11, i64 848840, !9, i64 848848, !8, i64 848872, !8, i64 848876, !11, i64 848880, !11, i64 848888, !9, i64 848896, !8, i64 848920, !11, i64 848928, !11, i64 848936, !8, i64 848944, !8, i64 848948, !8, i64 848952, !8, i64 848956, !8, i64 848960, !8, i64 848964, !8, i64 848968, !8, i64 848972, !8, i64 848976, !8, i64 848980, !8, i64 848984, !8, i64 848988, !8, i64 848992, !8, i64 848996, !8, i64 849000, !8, i64 849004, !8, i64 849008, !8, i64 849012, !8, i64 849016, !8, i64 849020, !8, i64 849024, !8, i64 849028, !8, i64 849032, !8, i64 849036, !37, i64 849040, !37, i64 849042, !9, i64 849044, !8, i64 849052, !8, i64 849056, !9, i64 849060, !9, i64 849072, !8, i64 849084, !8, i64 849088, !8, i64 849092, !8, i64 849096, !8, i64 849100, !8, i64 849104, !8, i64 849108, !8, i64 849112, !8, i64 849116, !8, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !8, i64 849196, !8, i64 849200, !8, i64 849204, !8, i64 849208, !8, i64 849212, !8, i64 849216, !8, i64 849220, !8, i64 849224, !8, i64 849228, !8, i64 849232, !8, i64 849236, !8, i64 849240, !8, i64 849244, !8, i64 849248, !8, i64 849252, !8, i64 849256, !8, i64 849260, !8, i64 849264, !8, i64 849268, !8, i64 849272, !8, i64 849276, !8, i64 849280, !8, i64 849284, !11, i64 849288, !11, i64 849296, !49, i64 849304, !49, i64 849624, !49, i64 849944, !49, i64 850264, !49, i64 850584, !49, i64 850904, !49, i64 851224, !49, i64 851544, !8, i64 851864, !8, i64 851868, !8, i64 851872, !18, i64 851880, !8, i64 851888, !9, i64 851892, !8, i64 855988, !8, i64 855992, !8, i64 855996, !8, i64 856000, !8, i64 856004, !8, i64 856008, !8, i64 856012, !11, i64 856016, !11, i64 856024, !11, i64 856032, !11, i64 856040, !11, i64 856048, !9, i64 856056, !11, i64 856456, !9, i64 856464, !11, i64 856488, !11, i64 856496, !11, i64 856504, !8, i64 856512, !11, i64 856520, !9, i64 856528, !11, i64 856608, !11, i64 856616, !11, i64 856624, !11, i64 856632, !8, i64 856640, !8, i64 856644, !8, i64 856648, !11, i64 856656, !11, i64 856664, !9, i64 856672, !9, i64 856688, !11, i64 856704, !11, i64 856712, !8, i64 856720, !11, i64 856728, !11, i64 856736, !11, i64 856744, !11, i64 856752, !11, i64 856760, !11, i64 856768, !11, i64 856776, !11, i64 856784, !11, i64 856792, !11, i64 856800, !11, i64 856808, !11, i64 856816, !8, i64 856824, !11, i64 856832, !8, i64 856840, !8, i64 856844, !8, i64 856848, !8, i64 856852, !8, i64 856856, !8, i64 856860, !8, i64 856864, !11, i64 856872}
!49 = !{!"image_data", !50, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!50 = !{!"frame_format", !8, i64 0, !8, i64 4, !51, i64 8, !9, i64 16, !9, i64 28, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !8, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !8, i64 124, !8, i64 128}
!51 = !{!"double", !9, i64 0}
!52 = !{!53, !8, i64 36}
!53 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !9, i64 44, !9, i64 92, !9, i64 476, !9, i64 2012, !9, i64 2036, !8, i64 2060, !8, i64 2064, !8, i64 2068, !8, i64 2072, !8, i64 2076, !8, i64 2080, !8, i64 2084, !8, i64 2088, !8, i64 2092, !9, i64 2096, !8, i64 3120, !8, i64 3124, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !8, i64 3152, !8, i64 3156, !8, i64 3160, !8, i64 3164, !8, i64 3168, !54, i64 3172, !8, i64 4120, !8, i64 4124}
!54 = !{!"", !8, i64 0, !8, i64 4, !37, i64 8, !37, i64 10, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !55, i64 80, !8, i64 492, !55, i64 496, !8, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944}
!55 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !9, i64 140, !9, i64 268, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !28}

; ModuleID = 'drivers/scsi/constants.c'
source_filename = "drivers/scsi/constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_sense_key_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_sense_key_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_extd_sense_format: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_extd_sense_format ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_hostbyte_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_hostbyte_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_mlreturn_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_mlreturn_string ; .previous"

%struct.sa_name_list = type { i32, ptr, i32 }
%struct.error_info = type { i16, i16 }
%struct.error_info2 = type { i8, i8, i8, ptr, ptr }
%struct.value_name_pair = type { i32, ptr }

@cdb_byte0_names = internal global [192 x ptr] [ptr @.str, ptr @.str.1, ptr null, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr null, ptr @.str.5, ptr @.str.6, ptr null, ptr @.str.7, ptr @.str.8, ptr null, ptr null, ptr null, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null, ptr null, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr null, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr null, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 16, !dbg !0
@sa_names_arr = internal global [13 x %struct.sa_name_list] [%struct.sa_name_list { i32 127, ptr @variable_length_arr, i32 36 }, %struct.sa_name_list { i32 163, ptr @maint_in_arr, i32 8 }, %struct.sa_name_list { i32 164, ptr @maint_out_arr, i32 7 }, %struct.sa_name_list { i32 94, ptr @pr_in_arr, i32 4 }, %struct.sa_name_list { i32 95, ptr @pr_out_arr, i32 8 }, %struct.sa_name_list { i32 171, ptr @serv_in12_arr, i32 1 }, %struct.sa_name_list { i32 169, ptr @serv_out12_arr, i32 1 }, %struct.sa_name_list { i32 157, ptr @serv_bidi_arr, i32 1 }, %struct.sa_name_list { i32 158, ptr @serv_in16_arr, i32 4 }, %struct.sa_name_list { i32 159, ptr @serv_out16_arr, i32 2 }, %struct.sa_name_list { i32 132, ptr @tpc_in_arr, i32 8 }, %struct.sa_name_list { i32 131, ptr @tpc_out_arr, i32 5 }, %struct.sa_name_list zeroinitializer], align 16, !dbg !409
@snstext = internal constant [16 x ptr] [ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238], align 16, !dbg !690
@__UNIQUE_ID___addressable_scsi_sense_key_string348 = internal global ptr @scsi_sense_key_string, section ".discard.addressable", align 8, !dbg !35
@additional = internal constant [756 x %struct.error_info] [%struct.error_info { i16 0, i16 32 }, %struct.error_info { i16 1, i16 18 }, %struct.error_info { i16 2, i16 33 }, %struct.error_info { i16 3, i16 17 }, %struct.error_info { i16 4, i16 39 }, %struct.error_info { i16 5, i16 21 }, %struct.error_info { i16 6, i16 23 }, %struct.error_info { i16 7, i16 36 }, %struct.error_info { i16 17, i16 33 }, %struct.error_info { i16 18, i16 28 }, %struct.error_info { i16 19, i16 44 }, %struct.error_info { i16 20, i16 42 }, %struct.error_info { i16 21, i16 34 }, %struct.error_info { i16 22, i16 22 }, %struct.error_info { i16 23, i16 19 }, %struct.error_info { i16 24, i16 28 }, %struct.error_info { i16 25, i16 29 }, %struct.error_info { i16 26, i16 29 }, %struct.error_info { i16 27, i16 35 }, %struct.error_info { i16 28, i16 29 }, %struct.error_info { i16 29, i16 39 }, %struct.error_info { i16 30, i16 32 }, %struct.error_info { i16 31, i16 54 }, %struct.error_info { i16 32, i16 36 }, %struct.error_info { i16 33, i16 34 }, %struct.error_info { i16 34, i16 30 }, %struct.error_info { i16 256, i16 23 }, %struct.error_info { i16 512, i16 17 }, %struct.error_info { i16 768, i16 30 }, %struct.error_info { i16 769, i16 17 }, %struct.error_info { i16 770, i16 23 }, %struct.error_info { i16 1024, i16 45 }, %struct.error_info { i16 1025, i16 45 }, %struct.error_info { i16 1026, i16 54 }, %struct.error_info { i16 1027, i16 53 }, %struct.error_info { i16 1028, i16 43 }, %struct.error_info { i16 1029, i16 44 }, %struct.error_info { i16 1030, i16 50 }, %struct.error_info { i16 1031, i16 46 }, %struct.error_info { i16 1032, i16 47 }, %struct.error_info { i16 1033, i16 46 }, %struct.error_info { i16 1034, i16 64 }, %struct.error_info { i16 1035, i16 58 }, %struct.error_info { i16 1036, i16 62 }, %struct.error_info { i16 1037, i16 49 }, %struct.error_info { i16 1038, i16 53 }, %struct.error_info { i16 1040, i16 56 }, %struct.error_info { i16 1041, i16 56 }, %struct.error_info { i16 1042, i16 32 }, %struct.error_info { i16 1043, i16 48 }, %struct.error_info { i16 1044, i16 53 }, %struct.error_info { i16 1045, i16 42 }, %struct.error_info { i16 1046, i16 47 }, %struct.error_info { i16 1047, i16 45 }, %struct.error_info { i16 1048, i16 39 }, %struct.error_info { i16 1049, i16 53 }, %struct.error_info { i16 1050, i16 60 }, %struct.error_info { i16 1051, i16 45 }, %struct.error_info { i16 1052, i16 61 }, %struct.error_info { i16 1053, i16 50 }, %struct.error_info { i16 1054, i16 54 }, %struct.error_info { i16 1055, i16 52 }, %struct.error_info { i16 1056, i16 52 }, %struct.error_info { i16 1057, i16 44 }, %struct.error_info { i16 1058, i16 45 }, %struct.error_info { i16 1059, i16 45 }, %struct.error_info { i16 1060, i16 25 }, %struct.error_info { i16 1061, i16 37 }, %struct.error_info { i16 1280, i16 43 }, %struct.error_info { i16 1536, i16 28 }, %struct.error_info { i16 1792, i16 37 }, %struct.error_info { i16 2048, i16 35 }, %struct.error_info { i16 2049, i16 36 }, %struct.error_info { i16 2050, i16 40 }, %struct.error_info { i16 2051, i16 52 }, %struct.error_info { i16 2052, i16 24 }, %struct.error_info { i16 2304, i16 22 }, %struct.error_info { i16 2305, i16 23 }, %struct.error_info { i16 2306, i16 20 }, %struct.error_info { i16 2307, i16 22 }, %struct.error_info { i16 2308, i16 18 }, %struct.error_info { i16 2309, i16 33 }, %struct.error_info { i16 2560, i16 19 }, %struct.error_info { i16 2816, i16 8 }, %struct.error_info { i16 2817, i16 41 }, %struct.error_info { i16 2818, i16 29 }, %struct.error_info { i16 2819, i16 38 }, %struct.error_info { i16 2820, i16 52 }, %struct.error_info { i16 2821, i16 55 }, %struct.error_info { i16 2822, i16 42 }, %struct.error_info { i16 2823, i16 47 }, %struct.error_info { i16 2824, i16 30 }, %struct.error_info { i16 2825, i16 48 }, %struct.error_info { i16 2826, i16 51 }, %struct.error_info { i16 2827, i16 50 }, %struct.error_info { i16 2828, i16 52 }, %struct.error_info { i16 2829, i16 51 }, %struct.error_info { i16 2830, i16 48 }, %struct.error_info { i16 2831, i16 47 }, %struct.error_info { i16 2832, i16 49 }, %struct.error_info { i16 2833, i16 48 }, %struct.error_info { i16 2834, i16 37 }, %struct.error_info { i16 2835, i16 57 }, %struct.error_info { i16 2836, i16 41 }, %struct.error_info { i16 3072, i16 12 }, %struct.error_info { i16 3073, i16 47 }, %struct.error_info { i16 3074, i16 39 }, %struct.error_info { i16 3075, i16 37 }, %struct.error_info { i16 3076, i16 35 }, %struct.error_info { i16 3077, i16 43 }, %struct.error_info { i16 3078, i16 23 }, %struct.error_info { i16 3079, i16 30 }, %struct.error_info { i16 3080, i16 30 }, %struct.error_info { i16 3081, i16 32 }, %struct.error_info { i16 3082, i16 35 }, %struct.error_info { i16 3083, i16 29 }, %struct.error_info { i16 3084, i16 42 }, %struct.error_info { i16 3085, i16 42 }, %struct.error_info { i16 3086, i16 22 }, %struct.error_info { i16 3087, i16 24 }, %struct.error_info { i16 3088, i16 44 }, %struct.error_info { i16 3089, i16 35 }, %struct.error_info { i16 3090, i16 42 }, %struct.error_info { i16 3328, i16 50 }, %struct.error_info { i16 3329, i16 27 }, %struct.error_info { i16 3330, i16 33 }, %struct.error_info { i16 3331, i16 34 }, %struct.error_info { i16 3332, i16 33 }, %struct.error_info { i16 3333, i16 32 }, %struct.error_info { i16 3584, i16 25 }, %struct.error_info { i16 3585, i16 27 }, %struct.error_info { i16 3586, i16 26 }, %struct.error_info { i16 3587, i16 42 }, %struct.error_info { i16 4096, i16 20 }, %struct.error_info { i16 4097, i16 33 }, %struct.error_info { i16 4098, i16 43 }, %struct.error_info { i16 4099, i16 41 }, %struct.error_info { i16 4100, i16 56 }, %struct.error_info { i16 4101, i16 38 }, %struct.error_info { i16 4352, i16 23 }, %struct.error_info { i16 4353, i16 23 }, %struct.error_info { i16 4354, i16 26 }, %struct.error_info { i16 4355, i16 21 }, %struct.error_info { i16 4356, i16 48 }, %struct.error_info { i16 4357, i16 25 }, %struct.error_info { i16 4358, i16 23 }, %struct.error_info { i16 4359, i16 30 }, %struct.error_info { i16 4360, i16 22 }, %struct.error_info { i16 4361, i16 13 }, %struct.error_info { i16 4362, i16 19 }, %struct.error_info { i16 4363, i16 48 }, %struct.error_info { i16 4364, i16 52 }, %struct.error_info { i16 4365, i16 25 }, %struct.error_info { i16 4366, i16 43 }, %struct.error_info { i16 4367, i16 29 }, %struct.error_info { i16 4368, i16 26 }, %struct.error_info { i16 4369, i16 31 }, %struct.error_info { i16 4370, i16 28 }, %struct.error_info { i16 4371, i16 43 }, %struct.error_info { i16 4372, i16 50 }, %struct.error_info { i16 4373, i16 30 }, %struct.error_info { i16 4608, i16 36 }, %struct.error_info { i16 4864, i16 38 }, %struct.error_info { i16 5120, i16 26 }, %struct.error_info { i16 5121, i16 17 }, %struct.error_info { i16 5122, i16 30 }, %struct.error_info { i16 5123, i16 22 }, %struct.error_info { i16 5124, i16 21 }, %struct.error_info { i16 5125, i16 42 }, %struct.error_info { i16 5126, i16 41 }, %struct.error_info { i16 5127, i16 25 }, %struct.error_info { i16 5376, i16 25 }, %struct.error_info { i16 5377, i16 29 }, %struct.error_info { i16 5378, i16 45 }, %struct.error_info { i16 5632, i16 32 }, %struct.error_info { i16 5633, i16 33 }, %struct.error_info { i16 5634, i16 36 }, %struct.error_info { i16 5635, i16 40 }, %struct.error_info { i16 5636, i16 41 }, %struct.error_info { i16 5888, i16 48 }, %struct.error_info { i16 5889, i16 28 }, %struct.error_info { i16 5890, i16 41 }, %struct.error_info { i16 5891, i16 41 }, %struct.error_info { i16 5892, i16 48 }, %struct.error_info { i16 5893, i16 40 }, %struct.error_info { i16 5894, i16 51 }, %struct.error_info { i16 5895, i16 52 }, %struct.error_info { i16 5896, i16 47 }, %struct.error_info { i16 5897, i16 44 }, %struct.error_info { i16 6144, i16 45 }, %struct.error_info { i16 6145, i16 50 }, %struct.error_info { i16 6146, i16 39 }, %struct.error_info { i16 6147, i16 25 }, %struct.error_info { i16 6148, i16 25 }, %struct.error_info { i16 6149, i16 40 }, %struct.error_info { i16 6150, i16 35 }, %struct.error_info { i16 6151, i16 41 }, %struct.error_info { i16 6152, i16 28 }, %struct.error_info { i16 6400, i16 18 }, %struct.error_info { i16 6401, i16 26 }, %struct.error_info { i16 6402, i16 34 }, %struct.error_info { i16 6403, i16 32 }, %struct.error_info { i16 6656, i16 28 }, %struct.error_info { i16 6912, i16 32 }, %struct.error_info { i16 7168, i16 22 }, %struct.error_info { i16 7169, i16 30 }, %struct.error_info { i16 7170, i16 28 }, %struct.error_info { i16 7424, i16 35 }, %struct.error_info { i16 7425, i16 34 }, %struct.error_info { i16 7680, i16 33 }, %struct.error_info { i16 7936, i16 29 }, %struct.error_info { i16 8192, i16 31 }, %struct.error_info { i16 8193, i16 43 }, %struct.error_info { i16 8194, i16 33 }, %struct.error_info { i16 8195, i16 36 }, %struct.error_info { i16 8196, i16 45 }, %struct.error_info { i16 8197, i16 9 }, %struct.error_info { i16 8198, i16 47 }, %struct.error_info { i16 8199, i16 47 }, %struct.error_info { i16 8200, i16 36 }, %struct.error_info { i16 8201, i16 38 }, %struct.error_info { i16 8202, i16 36 }, %struct.error_info { i16 8203, i16 33 }, %struct.error_info { i16 8204, i16 45 }, %struct.error_info { i16 8205, i16 35 }, %struct.error_info { i16 8206, i16 30 }, %struct.error_info { i16 8207, i16 32 }, %struct.error_info { i16 8448, i16 35 }, %struct.error_info { i16 8449, i16 24 }, %struct.error_info { i16 8450, i16 26 }, %struct.error_info { i16 8451, i16 34 }, %struct.error_info { i16 8452, i16 24 }, %struct.error_info { i16 8453, i16 25 }, %struct.error_info { i16 8454, i16 29 }, %struct.error_info { i16 8455, i16 24 }, %struct.error_info { i16 8456, i16 25 }, %struct.error_info { i16 8457, i16 27 }, %struct.error_info { i16 8704, i16 46 }, %struct.error_info { i16 8960, i16 46 }, %struct.error_info { i16 8961, i16 48 }, %struct.error_info { i16 8962, i16 58 }, %struct.error_info { i16 8963, i16 65 }, %struct.error_info { i16 8964, i16 39 }, %struct.error_info { i16 8965, i16 39 }, %struct.error_info { i16 8966, i16 39 }, %struct.error_info { i16 8967, i16 39 }, %struct.error_info { i16 8968, i16 41 }, %struct.error_info { i16 8969, i16 39 }, %struct.error_info { i16 8970, i16 46 }, %struct.error_info { i16 9216, i16 21 }, %struct.error_info { i16 9217, i16 21 }, %struct.error_info { i16 9218, i16 9 }, %struct.error_info { i16 9219, i16 9 }, %struct.error_info { i16 9220, i16 28 }, %struct.error_info { i16 9221, i16 28 }, %struct.error_info { i16 9222, i16 17 }, %struct.error_info { i16 9223, i16 29 }, %struct.error_info { i16 9224, i16 13 }, %struct.error_info { i16 9225, i16 20 }, %struct.error_info { i16 9472, i16 27 }, %struct.error_info { i16 9728, i16 32 }, %struct.error_info { i16 9729, i16 24 }, %struct.error_info { i16 9730, i16 24 }, %struct.error_info { i16 9731, i16 35 }, %struct.error_info { i16 9732, i16 42 }, %struct.error_info { i16 9733, i16 22 }, %struct.error_info { i16 9734, i16 28 }, %struct.error_info { i16 9735, i16 40 }, %struct.error_info { i16 9736, i16 29 }, %struct.error_info { i16 9737, i16 41 }, %struct.error_info { i16 9738, i16 27 }, %struct.error_info { i16 9739, i16 28 }, %struct.error_info { i16 9740, i16 49 }, %struct.error_info { i16 9741, i16 35 }, %struct.error_info { i16 9742, i16 40 }, %struct.error_info { i16 9743, i16 46 }, %struct.error_info { i16 9744, i16 39 }, %struct.error_info { i16 9745, i16 35 }, %struct.error_info { i16 9746, i16 40 }, %struct.error_info { i16 9747, i16 37 }, %struct.error_info { i16 9748, i16 32 }, %struct.error_info { i16 9749, i16 47 }, %struct.error_info { i16 9750, i16 23 }, %struct.error_info { i16 9984, i16 16 }, %struct.error_info { i16 9985, i16 25 }, %struct.error_info { i16 9986, i16 38 }, %struct.error_info { i16 9987, i16 25 }, %struct.error_info { i16 9988, i16 25 }, %struct.error_info { i16 9989, i16 24 }, %struct.error_info { i16 9990, i16 26 }, %struct.error_info { i16 9991, i16 38 }, %struct.error_info { i16 9992, i16 18 }, %struct.error_info { i16 10240, i16 51 }, %struct.error_info { i16 10241, i16 34 }, %struct.error_info { i16 10242, i16 30 }, %struct.error_info { i16 10243, i16 47 }, %struct.error_info { i16 10496, i16 46 }, %struct.error_info { i16 10497, i16 18 }, %struct.error_info { i16 10498, i16 24 }, %struct.error_info { i16 10499, i16 35 }, %struct.error_info { i16 10500, i16 22 }, %struct.error_info { i16 10501, i16 41 }, %struct.error_info { i16 10502, i16 32 }, %struct.error_info { i16 10503, i16 24 }, %struct.error_info { i16 10752, i16 19 }, %struct.error_info { i16 10753, i16 24 }, %struct.error_info { i16 10754, i16 23 }, %struct.error_info { i16 10755, i16 23 }, %struct.error_info { i16 10756, i16 22 }, %struct.error_info { i16 10757, i16 24 }, %struct.error_info { i16 10758, i16 32 }, %struct.error_info { i16 10759, i16 51 }, %struct.error_info { i16 10760, i16 17 }, %struct.error_info { i16 10761, i16 26 }, %struct.error_info { i16 10762, i16 32 }, %struct.error_info { i16 10763, i16 32 }, %struct.error_info { i16 10764, i16 39 }, %struct.error_info { i16 10765, i16 37 }, %struct.error_info { i16 10768, i16 18 }, %struct.error_info { i16 10769, i16 56 }, %struct.error_info { i16 10770, i16 60 }, %struct.error_info { i16 10771, i16 49 }, %struct.error_info { i16 10772, i16 42 }, %struct.error_info { i16 10773, i16 36 }, %struct.error_info { i16 10774, i16 37 }, %struct.error_info { i16 11008, i16 49 }, %struct.error_info { i16 11264, i16 23 }, %struct.error_info { i16 11265, i16 27 }, %struct.error_info { i16 11266, i16 41 }, %struct.error_info { i16 11267, i16 34 }, %struct.error_info { i16 11268, i16 30 }, %struct.error_info { i16 11269, i16 32 }, %struct.error_info { i16 11270, i16 28 }, %struct.error_info { i16 11271, i16 21 }, %struct.error_info { i16 11272, i16 30 }, %struct.error_info { i16 11273, i16 37 }, %struct.error_info { i16 11274, i16 46 }, %struct.error_info { i16 11275, i16 13 }, %struct.error_info { i16 11276, i16 34 }, %struct.error_info { i16 11277, i16 32 }, %struct.error_info { i16 11278, i16 16 }, %struct.error_info { i16 11279, i16 16 }, %struct.error_info { i16 11280, i16 23 }, %struct.error_info { i16 11281, i16 38 }, %struct.error_info { i16 11282, i16 17 }, %struct.error_info { i16 11283, i16 40 }, %struct.error_info { i16 11520, i16 35 }, %struct.error_info { i16 11776, i16 32 }, %struct.error_info { i16 11777, i16 34 }, %struct.error_info { i16 11778, i16 34 }, %struct.error_info { i16 11779, i16 56 }, %struct.error_info { i16 12032, i16 38 }, %struct.error_info { i16 12033, i16 44 }, %struct.error_info { i16 12034, i16 34 }, %struct.error_info { i16 12035, i16 45 }, %struct.error_info { i16 12288, i16 30 }, %struct.error_info { i16 12289, i16 36 }, %struct.error_info { i16 12290, i16 41 }, %struct.error_info { i16 12291, i16 29 }, %struct.error_info { i16 12292, i16 37 }, %struct.error_info { i16 12293, i16 42 }, %struct.error_info { i16 12294, i16 43 }, %struct.error_info { i16 12295, i16 17 }, %struct.error_info { i16 12296, i16 41 }, %struct.error_info { i16 12297, i16 39 }, %struct.error_info { i16 12298, i16 26 }, %struct.error_info { i16 12300, i16 34 }, %struct.error_info { i16 12301, i16 30 }, %struct.error_info { i16 12304, i16 21 }, %struct.error_info { i16 12305, i16 25 }, %struct.error_info { i16 12306, i16 30 }, %struct.error_info { i16 12307, i16 24 }, %struct.error_info { i16 12544, i16 24 }, %struct.error_info { i16 12545, i16 22 }, %struct.error_info { i16 12546, i16 45 }, %struct.error_info { i16 12547, i16 24 }, %struct.error_info { i16 12548, i16 20 }, %struct.error_info { i16 12549, i16 32 }, %struct.error_info { i16 12800, i16 35 }, %struct.error_info { i16 12801, i16 27 }, %struct.error_info { i16 13056, i16 18 }, %struct.error_info { i16 13312, i16 18 }, %struct.error_info { i16 13568, i16 27 }, %struct.error_info { i16 13569, i16 31 }, %struct.error_info { i16 13570, i16 31 }, %struct.error_info { i16 13571, i16 36 }, %struct.error_info { i16 13572, i16 36 }, %struct.error_info { i16 13573, i16 34 }, %struct.error_info { i16 13824, i16 30 }, %struct.error_info { i16 14080, i16 18 }, %struct.error_info { i16 14336, i16 26 }, %struct.error_info { i16 14338, i16 35 }, %struct.error_info { i16 14340, i16 24 }, %struct.error_info { i16 14342, i16 30 }, %struct.error_info { i16 14343, i16 41 }, %struct.error_info { i16 14344, i16 25 }, %struct.error_info { i16 14592, i16 32 }, %struct.error_info { i16 14848, i16 19 }, %struct.error_info { i16 14849, i16 33 }, %struct.error_info { i16 14850, i16 31 }, %struct.error_info { i16 14851, i16 30 }, %struct.error_info { i16 14852, i16 56 }, %struct.error_info { i16 15104, i16 29 }, %struct.error_info { i16 15105, i16 43 }, %struct.error_info { i16 15106, i16 37 }, %struct.error_info { i16 15107, i16 49 }, %struct.error_info { i16 15108, i16 13 }, %struct.error_info { i16 15109, i16 10 }, %struct.error_info { i16 15110, i16 28 }, %struct.error_info { i16 15111, i16 31 }, %struct.error_info { i16 15112, i16 17 }, %struct.error_info { i16 15113, i16 24 }, %struct.error_info { i16 15114, i16 30 }, %struct.error_info { i16 15115, i16 28 }, %struct.error_info { i16 15116, i16 34 }, %struct.error_info { i16 15117, i16 32 }, %struct.error_info { i16 15118, i16 28 }, %struct.error_info { i16 15119, i16 22 }, %struct.error_info { i16 15121, i16 31 }, %struct.error_info { i16 15122, i16 24 }, %struct.error_info { i16 15123, i16 25 }, %struct.error_info { i16 15124, i16 23 }, %struct.error_info { i16 15125, i16 25 }, %struct.error_info { i16 15126, i16 40 }, %struct.error_info { i16 15127, i16 29 }, %struct.error_info { i16 15128, i16 17 }, %struct.error_info { i16 15129, i16 16 }, %struct.error_info { i16 15130, i16 29 }, %struct.error_info { i16 15131, i16 30 }, %struct.error_info { i16 15132, i16 59 }, %struct.error_info { i16 15136, i16 35 }, %struct.error_info { i16 15616, i16 33 }, %struct.error_info { i16 15872, i16 41 }, %struct.error_info { i16 15873, i16 21 }, %struct.error_info { i16 15874, i16 24 }, %struct.error_info { i16 15875, i16 30 }, %struct.error_info { i16 15876, i16 44 }, %struct.error_info { i16 16128, i16 41 }, %struct.error_info { i16 16129, i16 27 }, %struct.error_info { i16 16130, i16 29 }, %struct.error_info { i16 16131, i16 25 }, %struct.error_info { i16 16132, i16 26 }, %struct.error_info { i16 16133, i16 26 }, %struct.error_info { i16 16134, i16 37 }, %struct.error_info { i16 16135, i16 25 }, %struct.error_info { i16 16136, i16 26 }, %struct.error_info { i16 16137, i16 14 }, %struct.error_info { i16 16138, i16 31 }, %struct.error_info { i16 16139, i16 19 }, %struct.error_info { i16 16140, i16 22 }, %struct.error_info { i16 16141, i16 22 }, %struct.error_info { i16 16142, i16 31 }, %struct.error_info { i16 16143, i16 24 }, %struct.error_info { i16 16144, i16 16 }, %struct.error_info { i16 16145, i16 35 }, %struct.error_info { i16 16146, i16 23 }, %struct.error_info { i16 16147, i16 25 }, %struct.error_info { i16 16148, i16 25 }, %struct.error_info { i16 16149, i16 36 }, %struct.error_info { i16 16150, i16 41 }, %struct.error_info { i16 16151, i16 24 }, %struct.error_info { i16 16152, i16 15 }, %struct.error_info { i16 16153, i16 16 }, %struct.error_info { i16 16154, i16 27 }, %struct.error_info { i16 17152, i16 14 }, %struct.error_info { i16 17408, i16 24 }, %struct.error_info { i16 17409, i16 40 }, %struct.error_info { i16 17521, i16 31 }, %struct.error_info { i16 17664, i16 27 }, %struct.error_info { i16 17920, i16 24 }, %struct.error_info { i16 18176, i16 18 }, %struct.error_info { i16 18177, i16 30 }, %struct.error_info { i16 18178, i16 48 }, %struct.error_info { i16 18179, i16 38 }, %struct.error_info { i16 18180, i16 51 }, %struct.error_info { i16 18181, i16 27 }, %struct.error_info { i16 18182, i16 30 }, %struct.error_info { i16 18303, i16 46 }, %struct.error_info { i16 18432, i16 42 }, %struct.error_info { i16 18688, i16 22 }, %struct.error_info { i16 18944, i16 20 }, %struct.error_info { i16 19200, i16 17 }, %struct.error_info { i16 19201, i16 42 }, %struct.error_info { i16 19202, i16 20 }, %struct.error_info { i16 19203, i16 16 }, %struct.error_info { i16 19204, i16 13 }, %struct.error_info { i16 19205, i16 18 }, %struct.error_info { i16 19206, i16 27 }, %struct.error_info { i16 19207, i16 16 }, %struct.error_info { i16 19208, i16 43 }, %struct.error_info { i16 19209, i16 54 }, %struct.error_info { i16 19210, i16 21 }, %struct.error_info { i16 19211, i16 44 }, %struct.error_info { i16 19212, i16 55 }, %struct.error_info { i16 19213, i16 22 }, %struct.error_info { i16 19214, i16 18 }, %struct.error_info { i16 19215, i16 24 }, %struct.error_info { i16 19216, i16 21 }, %struct.error_info { i16 19217, i16 27 }, %struct.error_info { i16 19218, i16 23 }, %struct.error_info { i16 19219, i16 25 }, %struct.error_info { i16 19220, i16 19 }, %struct.error_info { i16 19221, i16 24 }, %struct.error_info { i16 19456, i16 39 }, %struct.error_info { i16 19968, i16 30 }, %struct.error_info { i16 20480, i16 19 }, %struct.error_info { i16 20481, i16 28 }, %struct.error_info { i16 20482, i16 33 }, %struct.error_info { i16 20736, i16 14 }, %struct.error_info { i16 20737, i16 52 }, %struct.error_info { i16 20992, i16 16 }, %struct.error_info { i16 21248, i16 27 }, %struct.error_info { i16 21249, i16 20 }, %struct.error_info { i16 21250, i16 25 }, %struct.error_info { i16 21251, i16 50 }, %struct.error_info { i16 21252, i16 34 }, %struct.error_info { i16 21253, i16 26 }, %struct.error_info { i16 21254, i16 26 }, %struct.error_info { i16 21255, i16 28 }, %struct.error_info { i16 21256, i16 23 }, %struct.error_info { i16 21257, i16 41 }, %struct.error_info { i16 21258, i16 43 }, %struct.error_info { i16 21259, i16 44 }, %struct.error_info { i16 21260, i16 42 }, %struct.error_info { i16 21261, i16 58 }, %struct.error_info { i16 21504, i16 38 }, %struct.error_info { i16 21760, i16 24 }, %struct.error_info { i16 21761, i16 19 }, %struct.error_info { i16 21762, i16 35 }, %struct.error_info { i16 21763, i16 23 }, %struct.error_info { i16 21764, i16 36 }, %struct.error_info { i16 21765, i16 38 }, %struct.error_info { i16 21766, i16 30 }, %struct.error_info { i16 21767, i16 12 }, %struct.error_info { i16 21768, i16 56 }, %struct.error_info { i16 21769, i16 39 }, %struct.error_info { i16 21770, i16 27 }, %struct.error_info { i16 21771, i16 33 }, %struct.error_info { i16 21772, i16 37 }, %struct.error_info { i16 21773, i16 43 }, %struct.error_info { i16 21774, i16 28 }, %struct.error_info { i16 21775, i16 46 }, %struct.error_info { i16 21776, i16 31 }, %struct.error_info { i16 21777, i16 31 }, %struct.error_info { i16 22272, i16 36 }, %struct.error_info { i16 22528, i16 26 }, %struct.error_info { i16 22784, i16 19 }, %struct.error_info { i16 23040, i16 39 }, %struct.error_info { i16 23041, i16 32 }, %struct.error_info { i16 23042, i16 32 }, %struct.error_info { i16 23043, i16 31 }, %struct.error_info { i16 23296, i16 14 }, %struct.error_info { i16 23297, i16 24 }, %struct.error_info { i16 23298, i16 23 }, %struct.error_info { i16 23299, i16 25 }, %struct.error_info { i16 23552, i16 18 }, %struct.error_info { i16 23553, i16 22 }, %struct.error_info { i16 23554, i16 26 }, %struct.error_info { i16 23808, i16 38 }, %struct.error_info { i16 23809, i16 44 }, %struct.error_info { i16 23810, i16 51 }, %struct.error_info { i16 23811, i16 52 }, %struct.error_info { i16 23824, i16 54 }, %struct.error_info { i16 23825, i16 53 }, %struct.error_info { i16 23826, i16 52 }, %struct.error_info { i16 23827, i16 52 }, %struct.error_info { i16 23828, i16 52 }, %struct.error_info { i16 23829, i16 49 }, %struct.error_info { i16 23830, i16 53 }, %struct.error_info { i16 23831, i16 47 }, %struct.error_info { i16 23832, i16 47 }, %struct.error_info { i16 23833, i16 50 }, %struct.error_info { i16 23834, i16 49 }, %struct.error_info { i16 23835, i16 47 }, %struct.error_info { i16 23836, i16 57 }, %struct.error_info { i16 23840, i16 56 }, %struct.error_info { i16 23841, i16 55 }, %struct.error_info { i16 23842, i16 54 }, %struct.error_info { i16 23843, i16 54 }, %struct.error_info { i16 23844, i16 54 }, %struct.error_info { i16 23845, i16 51 }, %struct.error_info { i16 23846, i16 55 }, %struct.error_info { i16 23847, i16 49 }, %struct.error_info { i16 23848, i16 49 }, %struct.error_info { i16 23849, i16 52 }, %struct.error_info { i16 23850, i16 51 }, %struct.error_info { i16 23851, i16 49 }, %struct.error_info { i16 23852, i16 59 }, %struct.error_info { i16 23856, i16 58 }, %struct.error_info { i16 23857, i16 57 }, %struct.error_info { i16 23858, i16 56 }, %struct.error_info { i16 23859, i16 56 }, %struct.error_info { i16 23860, i16 56 }, %struct.error_info { i16 23861, i16 53 }, %struct.error_info { i16 23862, i16 57 }, %struct.error_info { i16 23863, i16 51 }, %struct.error_info { i16 23864, i16 51 }, %struct.error_info { i16 23865, i16 54 }, %struct.error_info { i16 23866, i16 53 }, %struct.error_info { i16 23867, i16 51 }, %struct.error_info { i16 23868, i16 61 }, %struct.error_info { i16 23872, i16 51 }, %struct.error_info { i16 23873, i16 50 }, %struct.error_info { i16 23874, i16 49 }, %struct.error_info { i16 23875, i16 49 }, %struct.error_info { i16 23876, i16 49 }, %struct.error_info { i16 23877, i16 46 }, %struct.error_info { i16 23878, i16 50 }, %struct.error_info { i16 23879, i16 44 }, %struct.error_info { i16 23880, i16 44 }, %struct.error_info { i16 23881, i16 47 }, %struct.error_info { i16 23882, i16 46 }, %struct.error_info { i16 23883, i16 44 }, %struct.error_info { i16 23884, i16 54 }, %struct.error_info { i16 23888, i16 53 }, %struct.error_info { i16 23889, i16 52 }, %struct.error_info { i16 23890, i16 51 }, %struct.error_info { i16 23891, i16 51 }, %struct.error_info { i16 23892, i16 51 }, %struct.error_info { i16 23893, i16 48 }, %struct.error_info { i16 23894, i16 52 }, %struct.error_info { i16 23895, i16 46 }, %struct.error_info { i16 23896, i16 46 }, %struct.error_info { i16 23897, i16 49 }, %struct.error_info { i16 23898, i16 48 }, %struct.error_info { i16 23899, i16 46 }, %struct.error_info { i16 23900, i16 56 }, %struct.error_info { i16 23904, i16 54 }, %struct.error_info { i16 23905, i16 53 }, %struct.error_info { i16 23906, i16 52 }, %struct.error_info { i16 23907, i16 52 }, %struct.error_info { i16 23908, i16 52 }, %struct.error_info { i16 23909, i16 49 }, %struct.error_info { i16 23910, i16 53 }, %struct.error_info { i16 23911, i16 47 }, %struct.error_info { i16 23912, i16 47 }, %struct.error_info { i16 23913, i16 50 }, %struct.error_info { i16 23914, i16 49 }, %struct.error_info { i16 23915, i16 47 }, %struct.error_info { i16 23916, i16 57 }, %struct.error_info { i16 23923, i16 44 }, %struct.error_info { i16 24063, i16 46 }, %struct.error_info { i16 24064, i16 23 }, %struct.error_info { i16 24065, i16 34 }, %struct.error_info { i16 24066, i16 37 }, %struct.error_info { i16 24067, i16 36 }, %struct.error_info { i16 24068, i16 39 }, %struct.error_info { i16 24069, i16 36 }, %struct.error_info { i16 24070, i16 38 }, %struct.error_info { i16 24071, i16 36 }, %struct.error_info { i16 24072, i16 38 }, %struct.error_info { i16 24073, i16 39 }, %struct.error_info { i16 24074, i16 41 }, %struct.error_info { i16 24129, i16 29 }, %struct.error_info { i16 24130, i16 27 }, %struct.error_info { i16 24131, i16 30 }, %struct.error_info { i16 24133, i16 28 }, %struct.error_info { i16 24135, i16 37 }, %struct.error_info { i16 24576, i16 13 }, %struct.error_info { i16 24832, i16 24 }, %struct.error_info { i16 24833, i16 24 }, %struct.error_info { i16 24834, i16 13 }, %struct.error_info { i16 25088, i16 28 }, %struct.error_info { i16 25344, i16 43 }, %struct.error_info { i16 25345, i16 39 }, %struct.error_info { i16 25600, i16 28 }, %struct.error_info { i16 25601, i16 20 }, %struct.error_info { i16 25856, i16 14 }, %struct.error_info { i16 26112, i16 35 }, %struct.error_info { i16 26113, i16 34 }, %struct.error_info { i16 26114, i16 42 }, %struct.error_info { i16 26115, i16 48 }, %struct.error_info { i16 26368, i16 22 }, %struct.error_info { i16 26369, i16 48 }, %struct.error_info { i16 26370, i16 24 }, %struct.error_info { i16 26371, i16 36 }, %struct.error_info { i16 26372, i16 32 }, %struct.error_info { i16 26373, i16 30 }, %struct.error_info { i16 26374, i16 34 }, %struct.error_info { i16 26375, i16 32 }, %struct.error_info { i16 26376, i16 24 }, %struct.error_info { i16 26377, i16 31 }, %struct.error_info { i16 26378, i16 38 }, %struct.error_info { i16 26379, i16 31 }, %struct.error_info { i16 26380, i16 17 }, %struct.error_info { i16 26381, i16 26 }, %struct.error_info { i16 26624, i16 28 }, %struct.error_info { i16 26625, i16 39 }, %struct.error_info { i16 26880, i16 26 }, %struct.error_info { i16 26881, i16 31 }, %struct.error_info { i16 26882, i16 21 }, %struct.error_info { i16 27136, i16 28 }, %struct.error_info { i16 27392, i16 26 }, %struct.error_info { i16 27393, i16 28 }, %struct.error_info { i16 27394, i16 27 }, %struct.error_info { i16 27648, i16 25 }, %struct.error_info { i16 27904, i16 29 }, %struct.error_info { i16 28160, i16 31 }, %struct.error_info { i16 28416, i16 62 }, %struct.error_info { i16 28417, i16 55 }, %struct.error_info { i16 28418, i16 59 }, %struct.error_info { i16 28419, i16 48 }, %struct.error_info { i16 28420, i16 55 }, %struct.error_info { i16 28421, i16 56 }, %struct.error_info { i16 28422, i16 53 }, %struct.error_info { i16 28423, i16 36 }, %struct.error_info { i16 28424, i16 24 }, %struct.error_info { i16 28425, i16 34 }, %struct.error_info { i16 28426, i16 29 }, %struct.error_info { i16 28928, i16 42 }, %struct.error_info { i16 29184, i16 23 }, %struct.error_info { i16 29185, i16 39 }, %struct.error_info { i16 29186, i16 40 }, %struct.error_info { i16 29187, i16 53 }, %struct.error_info { i16 29188, i16 42 }, %struct.error_info { i16 29189, i16 35 }, %struct.error_info { i16 29190, i16 29 }, %struct.error_info { i16 29191, i16 41 }, %struct.error_info { i16 29440, i16 17 }, %struct.error_info { i16 29441, i16 35 }, %struct.error_info { i16 29442, i16 31 }, %struct.error_info { i16 29443, i16 29 }, %struct.error_info { i16 29444, i16 35 }, %struct.error_info { i16 29445, i16 28 }, %struct.error_info { i16 29446, i16 23 }, %struct.error_info { i16 29456, i16 43 }, %struct.error_info { i16 29457, i16 39 }, %struct.error_info { i16 29463, i16 12 }, %struct.error_info { i16 29696, i16 15 }, %struct.error_info { i16 29697, i16 23 }, %struct.error_info { i16 29698, i16 46 }, %struct.error_info { i16 29699, i16 30 }, %struct.error_info { i16 29700, i16 42 }, %struct.error_info { i16 29701, i16 22 }, %struct.error_info { i16 29702, i16 35 }, %struct.error_info { i16 29703, i16 34 }, %struct.error_info { i16 29704, i16 37 }, %struct.error_info { i16 29705, i16 33 }, %struct.error_info { i16 29706, i16 37 }, %struct.error_info { i16 29707, i16 32 }, %struct.error_info { i16 29708, i16 33 }, %struct.error_info { i16 29709, i16 30 }, %struct.error_info { i16 29712, i16 36 }, %struct.error_info { i16 29713, i16 37 }, %struct.error_info { i16 29714, i16 17 }, %struct.error_info { i16 29729, i16 40 }, %struct.error_info { i16 29744, i16 36 }, %struct.error_info { i16 29760, i16 22 }, %struct.error_info { i16 29793, i16 50 }, %struct.error_info { i16 29794, i16 43 }, %struct.error_info { i16 29795, i16 39 }, %struct.error_info { i16 29796, i16 48 }, %struct.error_info { i16 29806, i16 41 }, %struct.error_info { i16 29807, i16 39 }, %struct.error_info { i16 29809, i16 35 }, %struct.error_info { i16 29817, i16 39 }], align 16, !dbg !694
@additional_text = internal global ptr @.str.239, align 8, !dbg !711
@additional2 = internal constant [7 x %struct.error_info2] [%struct.error_info2 { i8 64, i8 0, i8 127, ptr @.str.240, ptr @.str.241 }, %struct.error_info2 { i8 64, i8 -128, i8 -1, ptr @.str.242, ptr @.str.241 }, %struct.error_info2 { i8 65, i8 0, i8 -1, ptr @.str.243, ptr @.str.241 }, %struct.error_info2 { i8 66, i8 0, i8 -1, ptr @.str.244, ptr @.str.241 }, %struct.error_info2 { i8 77, i8 0, i8 -1, ptr @.str.245, ptr @.str.246 }, %struct.error_info2 { i8 112, i8 0, i8 -1, ptr @.str.247, ptr @.str.248 }, %struct.error_info2 zeroinitializer], align 16, !dbg !732
@__UNIQUE_ID___addressable_scsi_extd_sense_format349 = internal global ptr @scsi_extd_sense_format, section ".discard.addressable", align 8, !dbg !37
@hostbyte_table = internal constant [20 x ptr] [ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268], align 16, !dbg !785
@__UNIQUE_ID___addressable_scsi_hostbyte_string350 = internal global ptr @scsi_hostbyte_string, section ".discard.addressable", align 8, !dbg !39
@scsi_mlreturn_arr = internal constant [9 x %struct.value_name_pair] [%struct.value_name_pair { i32 8193, ptr @.str.269 }, %struct.value_name_pair { i32 8194, ptr @.str.270 }, %struct.value_name_pair { i32 8195, ptr @.str.271 }, %struct.value_name_pair { i32 8196, ptr @.str.272 }, %struct.value_name_pair { i32 8197, ptr @.str.273 }, %struct.value_name_pair { i32 8198, ptr @.str.274 }, %struct.value_name_pair { i32 8199, ptr @.str.275 }, %struct.value_name_pair { i32 8200, ptr @.str.276 }, %struct.value_name_pair { i32 8201, ptr @.str.277 }], align 16, !dbg !806
@__UNIQUE_ID___addressable_scsi_mlreturn_string351 = internal global ptr @scsi_mlreturn_string, section ".discard.addressable", align 8, !dbg !41
@.str = private unnamed_addr constant [16 x i8] c"Test Unit Ready\00", align 1, !dbg !43
@.str.1 = private unnamed_addr constant [19 x i8] c"Rezero Unit/Rewind\00", align 1, !dbg !49
@.str.2 = private unnamed_addr constant [14 x i8] c"Request Sense\00", align 1, !dbg !54
@.str.3 = private unnamed_addr constant [19 x i8] c"Format Unit/Medium\00", align 1, !dbg !59
@.str.4 = private unnamed_addr constant [18 x i8] c"Read Block Limits\00", align 1, !dbg !61
@.str.5 = private unnamed_addr constant [16 x i8] c"Reassign Blocks\00", align 1, !dbg !66
@.str.6 = private unnamed_addr constant [8 x i8] c"Read(6)\00", align 1, !dbg !68
@.str.7 = private unnamed_addr constant [9 x i8] c"Write(6)\00", align 1, !dbg !73
@.str.8 = private unnamed_addr constant [8 x i8] c"Seek(6)\00", align 1, !dbg !78
@.str.9 = private unnamed_addr constant [13 x i8] c"Read Reverse\00", align 1, !dbg !80
@.str.10 = private unnamed_addr constant [16 x i8] c"Write Filemarks\00", align 1, !dbg !85
@.str.11 = private unnamed_addr constant [6 x i8] c"Space\00", align 1, !dbg !87
@.str.12 = private unnamed_addr constant [8 x i8] c"Inquiry\00", align 1, !dbg !92
@.str.13 = private unnamed_addr constant [10 x i8] c"Verify(6)\00", align 1, !dbg !94
@.str.14 = private unnamed_addr constant [22 x i8] c"Recover Buffered Data\00", align 1, !dbg !99
@.str.15 = private unnamed_addr constant [15 x i8] c"Mode Select(6)\00", align 1, !dbg !104
@.str.16 = private unnamed_addr constant [11 x i8] c"Reserve(6)\00", align 1, !dbg !109
@.str.17 = private unnamed_addr constant [11 x i8] c"Release(6)\00", align 1, !dbg !114
@.str.18 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1, !dbg !116
@.str.19 = private unnamed_addr constant [6 x i8] c"Erase\00", align 1, !dbg !121
@.str.20 = private unnamed_addr constant [14 x i8] c"Mode Sense(6)\00", align 1, !dbg !123
@.str.21 = private unnamed_addr constant [16 x i8] c"Start/Stop Unit\00", align 1, !dbg !125
@.str.22 = private unnamed_addr constant [19 x i8] c"Receive Diagnostic\00", align 1, !dbg !127
@.str.23 = private unnamed_addr constant [16 x i8] c"Send Diagnostic\00", align 1, !dbg !129
@.str.24 = private unnamed_addr constant [29 x i8] c"Prevent/Allow Medium Removal\00", align 1, !dbg !131
@.str.25 = private unnamed_addr constant [23 x i8] c"Read Format Capacities\00", align 1, !dbg !136
@.str.26 = private unnamed_addr constant [11 x i8] c"Set Window\00", align 1, !dbg !141
@.str.27 = private unnamed_addr constant [18 x i8] c"Read Capacity(10)\00", align 1, !dbg !143
@.str.28 = private unnamed_addr constant [9 x i8] c"Read(10)\00", align 1, !dbg !145
@.str.29 = private unnamed_addr constant [16 x i8] c"Read Generation\00", align 1, !dbg !147
@.str.30 = private unnamed_addr constant [10 x i8] c"Write(10)\00", align 1, !dbg !149
@.str.31 = private unnamed_addr constant [9 x i8] c"Seek(10)\00", align 1, !dbg !151
@.str.32 = private unnamed_addr constant [10 x i8] c"Erase(10)\00", align 1, !dbg !153
@.str.33 = private unnamed_addr constant [19 x i8] c"Read updated block\00", align 1, !dbg !155
@.str.34 = private unnamed_addr constant [17 x i8] c"Write Verify(10)\00", align 1, !dbg !157
@.str.35 = private unnamed_addr constant [11 x i8] c"Verify(10)\00", align 1, !dbg !162
@.str.36 = private unnamed_addr constant [12 x i8] c"Search High\00", align 1, !dbg !164
@.str.37 = private unnamed_addr constant [13 x i8] c"Search Equal\00", align 1, !dbg !169
@.str.38 = private unnamed_addr constant [11 x i8] c"Search Low\00", align 1, !dbg !171
@.str.39 = private unnamed_addr constant [11 x i8] c"Set Limits\00", align 1, !dbg !173
@.str.40 = private unnamed_addr constant [23 x i8] c"Prefetch/Read Position\00", align 1, !dbg !175
@.str.41 = private unnamed_addr constant [22 x i8] c"Synchronize Cache(10)\00", align 1, !dbg !177
@.str.42 = private unnamed_addr constant [22 x i8] c"Lock/Unlock Cache(10)\00", align 1, !dbg !179
@.str.43 = private unnamed_addr constant [21 x i8] c"Read Defect Data(10)\00", align 1, !dbg !181
@.str.44 = private unnamed_addr constant [12 x i8] c"Medium Scan\00", align 1, !dbg !186
@.str.45 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1, !dbg !188
@.str.46 = private unnamed_addr constant [12 x i8] c"Copy Verify\00", align 1, !dbg !190
@.str.47 = private unnamed_addr constant [13 x i8] c"Write Buffer\00", align 1, !dbg !192
@.str.48 = private unnamed_addr constant [12 x i8] c"Read Buffer\00", align 1, !dbg !194
@.str.49 = private unnamed_addr constant [13 x i8] c"Update Block\00", align 1, !dbg !196
@.str.50 = private unnamed_addr constant [14 x i8] c"Read Long(10)\00", align 1, !dbg !198
@.str.51 = private unnamed_addr constant [15 x i8] c"Write Long(10)\00", align 1, !dbg !200
@.str.52 = private unnamed_addr constant [18 x i8] c"Change Definition\00", align 1, !dbg !202
@.str.53 = private unnamed_addr constant [15 x i8] c"Write Same(10)\00", align 1, !dbg !204
@.str.54 = private unnamed_addr constant [23 x i8] c"Unmap/Read sub-channel\00", align 1, !dbg !206
@.str.55 = private unnamed_addr constant [18 x i8] c"Read TOC/PMA/ATIP\00", align 1, !dbg !208
@.str.56 = private unnamed_addr constant [21 x i8] c"Read density support\00", align 1, !dbg !210
@.str.57 = private unnamed_addr constant [15 x i8] c"Play audio(10)\00", align 1, !dbg !212
@.str.58 = private unnamed_addr constant [18 x i8] c"Get configuration\00", align 1, !dbg !214
@.str.59 = private unnamed_addr constant [15 x i8] c"Play audio msf\00", align 1, !dbg !216
@.str.60 = private unnamed_addr constant [32 x i8] c"Sanitize/Play audio track/index\00", align 1, !dbg !218
@.str.61 = private unnamed_addr constant [24 x i8] c"Play track relative(10)\00", align 1, !dbg !223
@.str.62 = private unnamed_addr constant [30 x i8] c"Get event status notification\00", align 1, !dbg !228
@.str.63 = private unnamed_addr constant [13 x i8] c"Pause/resume\00", align 1, !dbg !233
@.str.64 = private unnamed_addr constant [11 x i8] c"Log Select\00", align 1, !dbg !235
@.str.65 = private unnamed_addr constant [10 x i8] c"Log Sense\00", align 1, !dbg !237
@.str.66 = private unnamed_addr constant [15 x i8] c"Stop play/scan\00", align 1, !dbg !239
@.str.67 = private unnamed_addr constant [8 x i8] c"Xdwrite\00", align 1, !dbg !241
@.str.68 = private unnamed_addr constant [24 x i8] c"Xpwrite, Read disk info\00", align 1, !dbg !243
@.str.69 = private unnamed_addr constant [24 x i8] c"Xdread, Read track info\00", align 1, !dbg !245
@.str.70 = private unnamed_addr constant [14 x i8] c"Reserve track\00", align 1, !dbg !247
@.str.71 = private unnamed_addr constant [14 x i8] c"Send OPC info\00", align 1, !dbg !249
@.str.72 = private unnamed_addr constant [16 x i8] c"Mode Select(10)\00", align 1, !dbg !251
@.str.73 = private unnamed_addr constant [12 x i8] c"Reserve(10)\00", align 1, !dbg !253
@.str.74 = private unnamed_addr constant [12 x i8] c"Release(10)\00", align 1, !dbg !255
@.str.75 = private unnamed_addr constant [13 x i8] c"Repair track\00", align 1, !dbg !257
@.str.76 = private unnamed_addr constant [16 x i8] c"Read master cue\00", align 1, !dbg !259
@.str.77 = private unnamed_addr constant [15 x i8] c"Mode Sense(10)\00", align 1, !dbg !261
@.str.78 = private unnamed_addr constant [20 x i8] c"Close track/session\00", align 1, !dbg !263
@.str.79 = private unnamed_addr constant [21 x i8] c"Read buffer capacity\00", align 1, !dbg !268
@.str.80 = private unnamed_addr constant [15 x i8] c"Send cue sheet\00", align 1, !dbg !270
@.str.81 = private unnamed_addr constant [22 x i8] c"Persistent reserve in\00", align 1, !dbg !272
@.str.82 = private unnamed_addr constant [23 x i8] c"Persistent reserve out\00", align 1, !dbg !274
@.str.83 = private unnamed_addr constant [13 x i8] c"Extended CDB\00", align 1, !dbg !276
@.str.84 = private unnamed_addr constant [16 x i8] c"Variable length\00", align 1, !dbg !278
@.str.85 = private unnamed_addr constant [12 x i8] c"Xdwrite(16)\00", align 1, !dbg !280
@.str.86 = private unnamed_addr constant [12 x i8] c"Rebuild(16)\00", align 1, !dbg !282
@.str.87 = private unnamed_addr constant [15 x i8] c"Regenerate(16)\00", align 1, !dbg !284
@.str.88 = private unnamed_addr constant [21 x i8] c"Third party copy out\00", align 1, !dbg !286
@.str.89 = private unnamed_addr constant [20 x i8] c"Third party copy in\00", align 1, !dbg !288
@.str.90 = private unnamed_addr constant [29 x i8] c"ATA command pass through(16)\00", align 1, !dbg !290
@.str.91 = private unnamed_addr constant [18 x i8] c"Access control in\00", align 1, !dbg !292
@.str.92 = private unnamed_addr constant [19 x i8] c"Access control out\00", align 1, !dbg !294
@.str.93 = private unnamed_addr constant [9 x i8] c"Read(16)\00", align 1, !dbg !296
@.str.94 = private unnamed_addr constant [18 x i8] c"Compare and Write\00", align 1, !dbg !298
@.str.95 = private unnamed_addr constant [10 x i8] c"Write(16)\00", align 1, !dbg !300
@.str.96 = private unnamed_addr constant [8 x i8] c"ORWrite\00", align 1, !dbg !302
@.str.97 = private unnamed_addr constant [16 x i8] c"Read attributes\00", align 1, !dbg !304
@.str.98 = private unnamed_addr constant [17 x i8] c"Write attributes\00", align 1, !dbg !306
@.str.99 = private unnamed_addr constant [21 x i8] c"Write and verify(16)\00", align 1, !dbg !308
@.str.100 = private unnamed_addr constant [11 x i8] c"Verify(16)\00", align 1, !dbg !310
@.str.101 = private unnamed_addr constant [14 x i8] c"Pre-fetch(16)\00", align 1, !dbg !312
@.str.102 = private unnamed_addr constant [22 x i8] c"Synchronize cache(16)\00", align 1, !dbg !314
@.str.103 = private unnamed_addr constant [22 x i8] c"Lock/unlock cache(16)\00", align 1, !dbg !316
@.str.104 = private unnamed_addr constant [15 x i8] c"Write same(16)\00", align 1, !dbg !318
@.str.105 = private unnamed_addr constant [29 x i8] c"Service action bidirectional\00", align 1, !dbg !320
@.str.106 = private unnamed_addr constant [22 x i8] c"Service action in(16)\00", align 1, !dbg !322
@.str.107 = private unnamed_addr constant [23 x i8] c"Service action out(16)\00", align 1, !dbg !324
@.str.108 = private unnamed_addr constant [12 x i8] c"Report luns\00", align 1, !dbg !326
@.str.109 = private unnamed_addr constant [35 x i8] c"ATA command pass through(12)/Blank\00", align 1, !dbg !328
@.str.110 = private unnamed_addr constant [21 x i8] c"Security protocol in\00", align 1, !dbg !333
@.str.111 = private unnamed_addr constant [15 x i8] c"Maintenance in\00", align 1, !dbg !335
@.str.112 = private unnamed_addr constant [16 x i8] c"Maintenance out\00", align 1, !dbg !337
@.str.113 = private unnamed_addr constant [27 x i8] c"Move medium/play audio(12)\00", align 1, !dbg !339
@.str.114 = private unnamed_addr constant [16 x i8] c"Exchange medium\00", align 1, !dbg !344
@.str.115 = private unnamed_addr constant [21 x i8] c"Move medium attached\00", align 1, !dbg !346
@.str.116 = private unnamed_addr constant [9 x i8] c"Read(12)\00", align 1, !dbg !348
@.str.117 = private unnamed_addr constant [24 x i8] c"Play track relative(12)\00", align 1, !dbg !350
@.str.118 = private unnamed_addr constant [10 x i8] c"Write(12)\00", align 1, !dbg !352
@.str.119 = private unnamed_addr constant [27 x i8] c"Erase(12), Get Performance\00", align 1, !dbg !354
@.str.120 = private unnamed_addr constant [19 x i8] c"Read DVD structure\00", align 1, !dbg !356
@.str.121 = private unnamed_addr constant [21 x i8] c"Write and verify(12)\00", align 1, !dbg !358
@.str.122 = private unnamed_addr constant [11 x i8] c"Verify(12)\00", align 1, !dbg !360
@.str.123 = private unnamed_addr constant [21 x i8] c"Search data high(12)\00", align 1, !dbg !362
@.str.124 = private unnamed_addr constant [22 x i8] c"Search data equal(12)\00", align 1, !dbg !364
@.str.125 = private unnamed_addr constant [20 x i8] c"Search data low(12)\00", align 1, !dbg !366
@.str.126 = private unnamed_addr constant [15 x i8] c"Set limits(12)\00", align 1, !dbg !368
@.str.127 = private unnamed_addr constant [29 x i8] c"Read element status attached\00", align 1, !dbg !370
@.str.128 = private unnamed_addr constant [22 x i8] c"Security protocol out\00", align 1, !dbg !372
@.str.129 = private unnamed_addr constant [31 x i8] c"Send volume tag, set streaming\00", align 1, !dbg !374
@.str.130 = private unnamed_addr constant [21 x i8] c"Read defect data(12)\00", align 1, !dbg !379
@.str.131 = private unnamed_addr constant [20 x i8] c"Read element status\00", align 1, !dbg !381
@.str.132 = private unnamed_addr constant [12 x i8] c"Read CD msf\00", align 1, !dbg !383
@.str.133 = private unnamed_addr constant [28 x i8] c"Redundancy group (in), Scan\00", align 1, !dbg !385
@.str.134 = private unnamed_addr constant [41 x i8] c"Redundancy group (out), Set cd-rom speed\00", align 1, !dbg !390
@.str.135 = private unnamed_addr constant [20 x i8] c"Spare (in), Play cd\00", align 1, !dbg !395
@.str.136 = private unnamed_addr constant [30 x i8] c"Spare (out), Mechanism status\00", align 1, !dbg !397
@.str.137 = private unnamed_addr constant [25 x i8] c"Volume set (in), Read cd\00", align 1, !dbg !399
@.str.138 = private unnamed_addr constant [37 x i8] c"Volume set (out), Send DVD structure\00", align 1, !dbg !404
@variable_length_arr = internal constant [36 x %struct.value_name_pair] [%struct.value_name_pair { i32 1, ptr @.str.139 }, %struct.value_name_pair { i32 2, ptr @.str.140 }, %struct.value_name_pair { i32 3, ptr @.str.141 }, %struct.value_name_pair { i32 4, ptr @.str.142 }, %struct.value_name_pair { i32 5, ptr @.str.143 }, %struct.value_name_pair { i32 6, ptr @.str.144 }, %struct.value_name_pair { i32 7, ptr @.str.145 }, %struct.value_name_pair { i32 8, ptr @.str.146 }, %struct.value_name_pair { i32 9, ptr @.str.147 }, %struct.value_name_pair { i32 10, ptr @.str.148 }, %struct.value_name_pair { i32 11, ptr @.str.149 }, %struct.value_name_pair { i32 12, ptr @.str.150 }, %struct.value_name_pair { i32 13, ptr @.str.151 }, %struct.value_name_pair { i32 34817, ptr @.str.152 }, %struct.value_name_pair { i32 34818, ptr @.str.153 }, %struct.value_name_pair { i32 34819, ptr @.str.154 }, %struct.value_name_pair { i32 34821, ptr @.str.155 }, %struct.value_name_pair { i32 34822, ptr @.str.156 }, %struct.value_name_pair { i32 34823, ptr @.str.157 }, %struct.value_name_pair { i32 34824, ptr @.str.158 }, %struct.value_name_pair { i32 34826, ptr @.str.159 }, %struct.value_name_pair { i32 34827, ptr @.str.160 }, %struct.value_name_pair { i32 34828, ptr @.str.161 }, %struct.value_name_pair { i32 34830, ptr @.str.162 }, %struct.value_name_pair { i32 34831, ptr @.str.163 }, %struct.value_name_pair { i32 34834, ptr @.str.164 }, %struct.value_name_pair { i32 34837, ptr @.str.165 }, %struct.value_name_pair { i32 34838, ptr @.str.166 }, %struct.value_name_pair { i32 34839, ptr @.str.167 }, %struct.value_name_pair { i32 34840, ptr @.str.168 }, %struct.value_name_pair { i32 34841, ptr @.str.169 }, %struct.value_name_pair { i32 34842, ptr @.str.170 }, %struct.value_name_pair { i32 34843, ptr @.str.171 }, %struct.value_name_pair { i32 34844, ptr @.str.172 }, %struct.value_name_pair { i32 36734, ptr @.str.173 }, %struct.value_name_pair { i32 36735, ptr @.str.174 }], align 16, !dbg !500
@maint_in_arr = internal constant [8 x %struct.value_name_pair] [%struct.value_name_pair { i32 5, ptr @.str.175 }, %struct.value_name_pair { i32 10, ptr @.str.176 }, %struct.value_name_pair { i32 11, ptr @.str.177 }, %struct.value_name_pair { i32 12, ptr @.str.178 }, %struct.value_name_pair { i32 13, ptr @.str.179 }, %struct.value_name_pair { i32 14, ptr @.str.180 }, %struct.value_name_pair { i32 15, ptr @.str.181 }, %struct.value_name_pair { i32 16, ptr @.str.182 }], align 16, !dbg !530
@maint_out_arr = internal constant [7 x %struct.value_name_pair] [%struct.value_name_pair { i32 6, ptr @.str.183 }, %struct.value_name_pair { i32 10, ptr @.str.184 }, %struct.value_name_pair { i32 11, ptr @.str.185 }, %struct.value_name_pair { i32 12, ptr @.str.186 }, %struct.value_name_pair { i32 14, ptr @.str.187 }, %struct.value_name_pair { i32 15, ptr @.str.188 }, %struct.value_name_pair { i32 16, ptr @.str.189 }], align 16, !dbg !547
@pr_in_arr = internal constant [4 x %struct.value_name_pair] [%struct.value_name_pair { i32 0, ptr @.str.190 }, %struct.value_name_pair { i32 1, ptr @.str.191 }, %struct.value_name_pair { i32 2, ptr @.str.192 }, %struct.value_name_pair { i32 3, ptr @.str.193 }], align 16, !dbg !563
@pr_out_arr = internal constant [8 x %struct.value_name_pair] [%struct.value_name_pair { i32 0, ptr @.str.194 }, %struct.value_name_pair { i32 1, ptr @.str.195 }, %struct.value_name_pair { i32 2, ptr @.str.196 }, %struct.value_name_pair { i32 3, ptr @.str.197 }, %struct.value_name_pair { i32 4, ptr @.str.198 }, %struct.value_name_pair { i32 5, ptr @.str.199 }, %struct.value_name_pair { i32 6, ptr @.str.200 }, %struct.value_name_pair { i32 7, ptr @.str.201 }], align 16, !dbg !590
@serv_in12_arr = internal constant [1 x %struct.value_name_pair] [%struct.value_name_pair { i32 1, ptr @.str.202 }], align 16, !dbg !594
@serv_out12_arr = internal constant [1 x %struct.value_name_pair] [%struct.value_name_pair { i32 -1, ptr @.str.203 }], align 16, !dbg !601
@serv_bidi_arr = internal constant [1 x %struct.value_name_pair] [%struct.value_name_pair { i32 -1, ptr @.str.203 }], align 16, !dbg !603
@serv_in16_arr = internal constant [4 x %struct.value_name_pair] [%struct.value_name_pair { i32 16, ptr @.str.204 }, %struct.value_name_pair { i32 17, ptr @.str.205 }, %struct.value_name_pair { i32 18, ptr @.str.206 }, %struct.value_name_pair { i32 19, ptr @.str.207 }], align 16, !dbg !613
@serv_out16_arr = internal constant [2 x %struct.value_name_pair] [%struct.value_name_pair { i32 17, ptr @.str.208 }, %struct.value_name_pair { i32 31, ptr @.str.209 }], align 16, !dbg !619
@tpc_in_arr = internal constant [8 x %struct.value_name_pair] [%struct.value_name_pair { i32 0, ptr @.str.210 }, %struct.value_name_pair { i32 1, ptr @.str.211 }, %struct.value_name_pair { i32 3, ptr @.str.212 }, %struct.value_name_pair { i32 4, ptr @.str.213 }, %struct.value_name_pair { i32 5, ptr @.str.214 }, %struct.value_name_pair { i32 6, ptr @.str.215 }, %struct.value_name_pair { i32 7, ptr @.str.216 }, %struct.value_name_pair { i32 8, ptr @.str.217 }], align 16, !dbg !643
@tpc_out_arr = internal constant [5 x %struct.value_name_pair] [%struct.value_name_pair { i32 0, ptr @.str.218 }, %struct.value_name_pair { i32 1, ptr @.str.219 }, %struct.value_name_pair { i32 16, ptr @.str.220 }, %struct.value_name_pair { i32 17, ptr @.str.221 }, %struct.value_name_pair { i32 28, ptr @.str.222 }], align 16, !dbg !655
@.str.139 = private unnamed_addr constant [12 x i8] c"Rebuild(32)\00", align 1, !dbg !425
@.str.140 = private unnamed_addr constant [15 x i8] c"Regenerate(32)\00", align 1, !dbg !427
@.str.141 = private unnamed_addr constant [11 x i8] c"Xdread(32)\00", align 1, !dbg !429
@.str.142 = private unnamed_addr constant [12 x i8] c"Xdwrite(32)\00", align 1, !dbg !431
@.str.143 = private unnamed_addr constant [21 x i8] c"Xdwrite extended(32)\00", align 1, !dbg !433
@.str.144 = private unnamed_addr constant [12 x i8] c"Xpwrite(32)\00", align 1, !dbg !435
@.str.145 = private unnamed_addr constant [16 x i8] c"Xdwriteread(32)\00", align 1, !dbg !437
@.str.146 = private unnamed_addr constant [21 x i8] c"Xdwrite extended(64)\00", align 1, !dbg !439
@.str.147 = private unnamed_addr constant [9 x i8] c"Read(32)\00", align 1, !dbg !441
@.str.148 = private unnamed_addr constant [11 x i8] c"Verify(32)\00", align 1, !dbg !443
@.str.149 = private unnamed_addr constant [10 x i8] c"Write(32)\00", align 1, !dbg !445
@.str.150 = private unnamed_addr constant [20 x i8] c"Write an verify(32)\00", align 1, !dbg !447
@.str.151 = private unnamed_addr constant [15 x i8] c"Write same(32)\00", align 1, !dbg !449
@.str.152 = private unnamed_addr constant [11 x i8] c"Format OSD\00", align 1, !dbg !451
@.str.153 = private unnamed_addr constant [13 x i8] c"Create (osd)\00", align 1, !dbg !453
@.str.154 = private unnamed_addr constant [11 x i8] c"List (osd)\00", align 1, !dbg !455
@.str.155 = private unnamed_addr constant [11 x i8] c"Read (osd)\00", align 1, !dbg !457
@.str.156 = private unnamed_addr constant [12 x i8] c"Write (osd)\00", align 1, !dbg !459
@.str.157 = private unnamed_addr constant [13 x i8] c"Append (osd)\00", align 1, !dbg !461
@.str.158 = private unnamed_addr constant [12 x i8] c"Flush (osd)\00", align 1, !dbg !463
@.str.159 = private unnamed_addr constant [13 x i8] c"Remove (osd)\00", align 1, !dbg !465
@.str.160 = private unnamed_addr constant [23 x i8] c"Create partition (osd)\00", align 1, !dbg !467
@.str.161 = private unnamed_addr constant [23 x i8] c"Remove partition (osd)\00", align 1, !dbg !469
@.str.162 = private unnamed_addr constant [21 x i8] c"Get attributes (osd)\00", align 1, !dbg !471
@.str.163 = private unnamed_addr constant [21 x i8] c"Set attributes (osd)\00", align 1, !dbg !473
@.str.164 = private unnamed_addr constant [23 x i8] c"Create and write (osd)\00", align 1, !dbg !475
@.str.165 = private unnamed_addr constant [24 x i8] c"Create collection (osd)\00", align 1, !dbg !477
@.str.166 = private unnamed_addr constant [24 x i8] c"Remove collection (osd)\00", align 1, !dbg !479
@.str.167 = private unnamed_addr constant [22 x i8] c"List collection (osd)\00", align 1, !dbg !481
@.str.168 = private unnamed_addr constant [14 x i8] c"Set key (osd)\00", align 1, !dbg !483
@.str.169 = private unnamed_addr constant [21 x i8] c"Set master key (osd)\00", align 1, !dbg !485
@.str.170 = private unnamed_addr constant [23 x i8] c"Flush collection (osd)\00", align 1, !dbg !487
@.str.171 = private unnamed_addr constant [22 x i8] c"Flush partition (osd)\00", align 1, !dbg !489
@.str.172 = private unnamed_addr constant [10 x i8] c"Flush OSD\00", align 1, !dbg !491
@.str.173 = private unnamed_addr constant [27 x i8] c"Perform SCSI command (osd)\00", align 1, !dbg !493
@.str.174 = private unnamed_addr constant [39 x i8] c"Perform task management function (osd)\00", align 1, !dbg !495
@.str.175 = private unnamed_addr constant [31 x i8] c"Report identifying information\00", align 1, !dbg !505
@.str.176 = private unnamed_addr constant [26 x i8] c"Report target port groups\00", align 1, !dbg !507
@.str.177 = private unnamed_addr constant [15 x i8] c"Report aliases\00", align 1, !dbg !512
@.str.178 = private unnamed_addr constant [33 x i8] c"Report supported operation codes\00", align 1, !dbg !514
@.str.179 = private unnamed_addr constant [43 x i8] c"Report supported task management functions\00", align 1, !dbg !519
@.str.180 = private unnamed_addr constant [16 x i8] c"Report priority\00", align 1, !dbg !524
@.str.181 = private unnamed_addr constant [17 x i8] c"Report timestamp\00", align 1, !dbg !526
@.str.182 = private unnamed_addr constant [23 x i8] c"Management protocol in\00", align 1, !dbg !528
@.str.183 = private unnamed_addr constant [28 x i8] c"Set identifying information\00", align 1, !dbg !533
@.str.184 = private unnamed_addr constant [23 x i8] c"Set target port groups\00", align 1, !dbg !535
@.str.185 = private unnamed_addr constant [15 x i8] c"Change aliases\00", align 1, !dbg !537
@.str.186 = private unnamed_addr constant [17 x i8] c"Remove I_T nexus\00", align 1, !dbg !539
@.str.187 = private unnamed_addr constant [13 x i8] c"Set priority\00", align 1, !dbg !541
@.str.188 = private unnamed_addr constant [14 x i8] c"Set timestamp\00", align 1, !dbg !543
@.str.189 = private unnamed_addr constant [24 x i8] c"Management protocol out\00", align 1, !dbg !545
@.str.190 = private unnamed_addr constant [33 x i8] c"Persistent reserve in, read keys\00", align 1, !dbg !552
@.str.191 = private unnamed_addr constant [40 x i8] c"Persistent reserve in, read reservation\00", align 1, !dbg !554
@.str.192 = private unnamed_addr constant [43 x i8] c"Persistent reserve in, report capabilities\00", align 1, !dbg !559
@.str.193 = private unnamed_addr constant [40 x i8] c"Persistent reserve in, read full status\00", align 1, !dbg !561
@.str.194 = private unnamed_addr constant [33 x i8] c"Persistent reserve out, register\00", align 1, !dbg !568
@.str.195 = private unnamed_addr constant [32 x i8] c"Persistent reserve out, reserve\00", align 1, !dbg !570
@.str.196 = private unnamed_addr constant [32 x i8] c"Persistent reserve out, release\00", align 1, !dbg !572
@.str.197 = private unnamed_addr constant [30 x i8] c"Persistent reserve out, clear\00", align 1, !dbg !574
@.str.198 = private unnamed_addr constant [32 x i8] c"Persistent reserve out, preempt\00", align 1, !dbg !576
@.str.199 = private unnamed_addr constant [42 x i8] c"Persistent reserve out, preempt and abort\00", align 1, !dbg !578
@.str.200 = private unnamed_addr constant [57 x i8] c"Persistent reserve out, register and ignore existing key\00", align 1, !dbg !583
@.str.201 = private unnamed_addr constant [42 x i8] c"Persistent reserve out, register and move\00", align 1, !dbg !588
@.str.202 = private unnamed_addr constant [25 x i8] c"Read media serial number\00", align 1, !dbg !592
@.str.203 = private unnamed_addr constant [12 x i8] c"dummy entry\00", align 1, !dbg !599
@.str.204 = private unnamed_addr constant [18 x i8] c"Read capacity(16)\00", align 1, !dbg !605
@.str.205 = private unnamed_addr constant [14 x i8] c"Read long(16)\00", align 1, !dbg !607
@.str.206 = private unnamed_addr constant [15 x i8] c"Get LBA status\00", align 1, !dbg !609
@.str.207 = private unnamed_addr constant [17 x i8] c"Report referrals\00", align 1, !dbg !611
@.str.208 = private unnamed_addr constant [15 x i8] c"Write long(16)\00", align 1, !dbg !615
@.str.209 = private unnamed_addr constant [32 x i8] c"Notify data transfer device(16)\00", align 1, !dbg !617
@.str.210 = private unnamed_addr constant [26 x i8] c"Receive copy status(LID1)\00", align 1, !dbg !624
@.str.211 = private unnamed_addr constant [24 x i8] c"Receive copy data(LID1)\00", align 1, !dbg !626
@.str.212 = private unnamed_addr constant [34 x i8] c"Receive copy operating parameters\00", align 1, !dbg !628
@.str.213 = private unnamed_addr constant [35 x i8] c"Receive copy failure details(LID1)\00", align 1, !dbg !633
@.str.214 = private unnamed_addr constant [26 x i8] c"Receive copy status(LID4)\00", align 1, !dbg !635
@.str.215 = private unnamed_addr constant [24 x i8] c"Receive copy data(LID4)\00", align 1, !dbg !637
@.str.216 = private unnamed_addr constant [30 x i8] c"Receive ROD token information\00", align 1, !dbg !639
@.str.217 = private unnamed_addr constant [22 x i8] c"Report all ROD tokens\00", align 1, !dbg !641
@.str.218 = private unnamed_addr constant [20 x i8] c"Extended copy(LID1)\00", align 1, !dbg !645
@.str.219 = private unnamed_addr constant [20 x i8] c"Extended copy(LID4)\00", align 1, !dbg !647
@.str.220 = private unnamed_addr constant [15 x i8] c"Populate token\00", align 1, !dbg !649
@.str.221 = private unnamed_addr constant [18 x i8] c"Write using token\00", align 1, !dbg !651
@.str.222 = private unnamed_addr constant [21 x i8] c"Copy operation abort\00", align 1, !dbg !653
@.str.223 = private unnamed_addr constant [9 x i8] c"No Sense\00", align 1, !dbg !658
@.str.224 = private unnamed_addr constant [16 x i8] c"Recovered Error\00", align 1, !dbg !660
@.str.225 = private unnamed_addr constant [10 x i8] c"Not Ready\00", align 1, !dbg !662
@.str.226 = private unnamed_addr constant [13 x i8] c"Medium Error\00", align 1, !dbg !664
@.str.227 = private unnamed_addr constant [15 x i8] c"Hardware Error\00", align 1, !dbg !666
@.str.228 = private unnamed_addr constant [16 x i8] c"Illegal Request\00", align 1, !dbg !668
@.str.229 = private unnamed_addr constant [15 x i8] c"Unit Attention\00", align 1, !dbg !670
@.str.230 = private unnamed_addr constant [13 x i8] c"Data Protect\00", align 1, !dbg !672
@.str.231 = private unnamed_addr constant [12 x i8] c"Blank Check\00", align 1, !dbg !674
@.str.232 = private unnamed_addr constant [19 x i8] c"Vendor Specific(9)\00", align 1, !dbg !676
@.str.233 = private unnamed_addr constant [13 x i8] c"Copy Aborted\00", align 1, !dbg !678
@.str.234 = private unnamed_addr constant [16 x i8] c"Aborted Command\00", align 1, !dbg !680
@.str.235 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1, !dbg !682
@.str.236 = private unnamed_addr constant [16 x i8] c"Volume Overflow\00", align 1, !dbg !684
@.str.237 = private unnamed_addr constant [11 x i8] c"Miscompare\00", align 1, !dbg !686
@.str.238 = private unnamed_addr constant [10 x i8] c"Completed\00", align 1, !dbg !688
@.str.239 = private unnamed_addr constant [26551 x i8] c"No additional sense information\00Filemark detected\00End-of-partition/medium detected\00Setmark detected\00Beginning-of-partition/medium detected\00End-of-data detected\00I/O process terminated\00Programmable early warning detected\00Audio play operation in progress\00Audio play operation paused\00Audio play operation successfully completed\00Audio play operation stopped due to error\00No current audio status to return\00Operation in progress\00Cleaning requested\00Erase operation in progress\00Locate operation in progress\00Rewind operation in progress\00Set capacity operation in progress\00Verify operation in progress\00ATA pass through information available\00Conflicting SA creation request\00Logical unit transitioning to another power condition\00Extended copy information available\00Atomic command aborted due to ACA\00Deferred microcode is pending\00No index/sector signal\00No seek complete\00Peripheral device write fault\00No write current\00Excessive write errors\00Logical unit not ready, cause not reportable\00Logical unit is in process of becoming ready\00Logical unit not ready, initializing command required\00Logical unit not ready, manual intervention required\00Logical unit not ready, format in progress\00Logical unit not ready, rebuild in progress\00Logical unit not ready, recalculation in progress\00Logical unit not ready, operation in progress\00Logical unit not ready, long write in progress\00Logical unit not ready, self-test in progress\00Logical unit not accessible, asymmetric access state transition\00Logical unit not accessible, target port in standby state\00Logical unit not accessible, target port in unavailable state\00Logical unit not ready, structure check required\00Logical unit not ready, security session in progress\00Logical unit not ready, auxiliary memory not accessible\00Logical unit not ready, notify (enable spinup) required\00Logical unit not ready, offline\00Logical unit not ready, SA creation in progress\00Logical unit not ready, space allocation in progress\00Logical unit not ready, robotics disabled\00Logical unit not ready, configuration required\00Logical unit not ready, calibration required\00Logical unit not ready, a door is open\00Logical unit not ready, operating in sequential mode\00Logical unit not ready, start stop unit command in progress\00Logical unit not ready, sanitize in progress\00Logical unit not ready, additional power use not yet granted\00Logical unit not ready, configuration in progress\00Logical unit not ready, microcode activation required\00Logical unit not ready, microcode download required\00Logical unit not ready, logical unit reset required\00Logical unit not ready, hard reset required\00Logical unit not ready, power cycle required\00Logical unit not ready, affiliation required\00Depopulation in progress\00Depopulation restoration in progress\00Logical unit does not respond to selection\00No reference position found\00Multiple peripheral devices selected\00Logical unit communication failure\00Logical unit communication time-out\00Logical unit communication parity error\00Logical unit communication CRC error (Ultra-DMA/32)\00Unreachable copy target\00Track following error\00Tracking servo failure\00Focus servo failure\00Spindle servo failure\00Head select fault\00Vibration induced tracking error\00Error log overflow\00Warning\00Warning - specified temperature exceeded\00Warning - enclosure degraded\00Warning - background self-test failed\00Warning - background pre-scan detected medium error\00Warning - background medium scan detected medium error\00Warning - non-volatile cache now volatile\00Warning - degraded power to non-volatile cache\00Warning - power loss expected\00Warning - device statistics notification active\00Warning - high critical temperature limit exceeded\00Warning - low critical temperature limit exceeded\00Warning - high operating temperature limit exceeded\00Warning - low operating temperature limit exceeded\00Warning - high critical humidity limit exceeded\00Warning - low critical humidity limit exceeded\00Warning - high operating humidity limit exceeded\00Warning - low operating humidity limit exceeded\00Warning - microcode security at risk\00Warning - microcode digital signature validation failure\00Warning - physical element status change\00Write error\00Write error - recovered with auto reallocation\00Write error - auto reallocation failed\00Write error - recommend reassignment\00Compression check miscompare error\00Data expansion occurred during compression\00Block not compressible\00Write error - recovery needed\00Write error - recovery failed\00Write error - loss of streaming\00Write error - padding blocks added\00Auxiliary memory write error\00Write error - unexpected unsolicited data\00Write error - not enough unsolicited data\00Multiple write errors\00Defects in error window\00Incomplete multiple atomic write operations\00Write error - recovery scan needed\00Write error - insufficient zone resources\00Error detected by third party temporary initiator\00Third party device failure\00Copy target device not reachable\00Incorrect copy target device type\00Copy target device data underrun\00Copy target device data overrun\00Invalid information unit\00Information unit too short\00Information unit too long\00Invalid field in command information unit\00Id CRC or ECC error\00Logical block guard check failed\00Logical block application tag check failed\00Logical block reference tag check failed\00Logical block protection error on recover buffered data\00Logical block protection method error\00Unrecovered read error\00Read retries exhausted\00Error too long to correct\00Multiple read errors\00Unrecovered read error - auto reallocate failed\00L-EC uncorrectable error\00CIRC unrecovered error\00Data re-synchronization error\00Incomplete block read\00No gap found\00Miscorrected error\00Unrecovered read error - recommend reassignment\00Unrecovered read error - recommend rewrite the data\00De-compression CRC error\00Cannot decompress using declared algorithm\00Error reading UPC/EAN number\00Error reading ISRC number\00Read error - loss of streaming\00Auxiliary memory read error\00Read error - failed retransmission request\00Read error - lba marked bad by application client\00Write after sanitize required\00Address mark not found for id field\00Address mark not found for data field\00Recorded entity not found\00Record not found\00Filemark or setmark not found\00End-of-data not found\00Block sequence error\00Record not found - recommend reassignment\00Record not found - data auto-reallocated\00Locate operation failure\00Random positioning error\00Mechanical positioning error\00Positioning error detected by read of medium\00Data synchronization mark error\00Data sync error - data rewritten\00Data sync error - recommend rewrite\00Data sync error - data auto-reallocated\00Data sync error - recommend reassignment\00Recovered data with no error correction applied\00Recovered data with retries\00Recovered data with positive head offset\00Recovered data with negative head offset\00Recovered data with retries and/or circ applied\00Recovered data using previous sector id\00Recovered data without ECC - data auto-reallocated\00Recovered data without ECC - recommend reassignment\00Recovered data without ECC - recommend rewrite\00Recovered data without ECC - data rewritten\00Recovered data with error correction applied\00Recovered data with error corr. & retries applied\00Recovered data - data auto-reallocated\00Recovered data with CIRC\00Recovered data with L-EC\00Recovered data - recommend reassignment\00Recovered data - recommend rewrite\00Recovered data with ECC - data rewritten\00Recovered data with linking\00Defect list error\00Defect list not available\00Defect list error in primary list\00Defect list error in grown list\00Parameter list length error\00Synchronous data transfer error\00Defect list not found\00Primary defect list not found\00Grown defect list not found\00Miscompare during verify operation\00Miscompare verify of unmapped LBA\00Recovered id with ECC correction\00Partial defect list transfer\00Invalid command operation code\00Access denied - initiator pending-enrolled\00Access denied - no access rights\00Access denied - invalid mgmt id key\00Illegal command while in write capable state\00Obsolete\00Illegal command while in explicit address mode\00Illegal command while in implicit address mode\00Access denied - enrollment conflict\00Access denied - invalid LU identifier\00Access denied - invalid proxy token\00Access denied - ACL LUN conflict\00Illegal command when not in append-only mode\00Not an administrative logical unit\00Not a subsidiary logical unit\00Not a conglomerate logical unit\00Logical block address out of range\00Invalid element address\00Invalid address for write\00Invalid write crossing layer jump\00Unaligned write command\00Write boundary violation\00Attempt to read invalid data\00Read boundary violation\00Misaligned write command\00Attempt to access gap zone\00Illegal function (use 20 00, 24 00, or 26 00)\00Invalid token operation, cause not reportable\00Invalid token operation, unsupported token type\00Invalid token operation, remote token usage not supported\00Invalid token operation, remote rod token creation not supported\00Invalid token operation, token unknown\00Invalid token operation, token corrupt\00Invalid token operation, token revoked\00Invalid token operation, token expired\00Invalid token operation, token cancelled\00Invalid token operation, token deleted\00Invalid token operation, invalid token length\00Invalid field in cdb\00CDB decryption error\00Obsolete\00Obsolete\00Security audit value frozen\00Security working key frozen\00Nonce not unique\00Nonce timestamp out of range\00Invalid XCDB\00Invalid fast format\00Logical unit not supported\00Invalid field in parameter list\00Parameter not supported\00Parameter value invalid\00Threshold parameters not supported\00Invalid release of persistent reservation\00Data decryption error\00Too many target descriptors\00Unsupported target descriptor type code\00Too many segment descriptors\00Unsupported segment descriptor type code\00Unexpected inexact segment\00Inline data length exceeded\00Invalid operation for copy source or destination\00Copy segment granularity violation\00Invalid parameter while port is enabled\00Invalid data-out buffer integrity check value\00Data decryption key fail limit reached\00Incomplete key-associated data set\00Vendor specific key reference not found\00Application tag mode page is invalid\00Tape stream mirroring prevented\00Copy source or copy destination not authorized\00Fast copy not possible\00Write protected\00Hardware write protected\00Logical unit software write protected\00Associated write protect\00Persistent write protect\00Permanent write protect\00Conditional write protect\00Space allocation failed write protect\00Zone is read only\00Not ready to ready change, medium may have changed\00Import or export element accessed\00Format-layer may have changed\00Import/export element accessed, medium changed\00Power on, reset, or bus device reset occurred\00Power on occurred\00Scsi bus reset occurred\00Bus device reset function occurred\00Device internal reset\00Transceiver mode changed to single-ended\00Transceiver mode changed to lvd\00I_T nexus loss occurred\00Parameters changed\00Mode parameters changed\00Log parameters changed\00Reservations preempted\00Reservations released\00Registrations preempted\00Asymmetric access state changed\00Implicit asymmetric access state transition failed\00Priority changed\00Capacity data has changed\00Error history I_T nexus cleared\00Error history snapshot released\00Error recovery attributes have changed\00Data encryption capabilities changed\00Timestamp changed\00Data encryption parameters changed by another i_t nexus\00Data encryption parameters changed by vendor specific event\00Data encryption key instance counter has changed\00SA creation capabilities data has changed\00Medium removal prevention preempted\00Zone reset write pointer recommended\00Copy cannot execute since host cannot disconnect\00Command sequence error\00Too many windows specified\00Invalid combination of windows specified\00Current program area is not empty\00Current program area is empty\00Illegal power condition request\00Persistent prevent conflict\00Previous busy status\00Previous task set full status\00Previous reservation conflict status\00Partition or collection contains user objects\00Not reserved\00Orwrite generation does not match\00Reset write pointer not allowed\00Zone is offline\00Stream not open\00Unwritten data in zone\00Descriptor format sense data required\00Zone is inactive\00Well known logical unit access required\00Overwrite error on update in place\00Insufficient time for operation\00Command timeout before processing\00Command timeout during processing\00Command timeout during processing due to error recovery\00Commands cleared by another initiator\00Commands cleared by power loss notification\00Commands cleared by device server\00Some commands cleared by queuing layer event\00Incompatible medium installed\00Cannot read medium - unknown format\00Cannot read medium - incompatible format\00Cleaning cartridge installed\00Cannot write medium - unknown format\00Cannot write medium - incompatible format\00Cannot format medium - incompatible medium\00Cleaning failure\00Cannot write - application code mismatch\00Current session not fixated for append\00Cleaning request rejected\00WORM medium - overwrite attempted\00WORM medium - integrity check\00Medium not formatted\00Incompatible volume type\00Incompatible volume qualifier\00Cleaning volume expired\00Medium format corrupted\00Format command failed\00Zoned formatting failed due to spare linking\00Sanitize command failed\00Depopulation failed\00Depopulation restoration failed\00No defect spare location available\00Defect list update failure\00Tape length error\00Enclosure failure\00Enclosure services failure\00Unsupported enclosure function\00Enclosure services unavailable\00Enclosure services transfer failure\00Enclosure services transfer refused\00Enclosure services checksum error\00Ribbon, ink, or toner failure\00Rounded parameter\00Event status notification\00Esn - power management class event\00Esn - media class event\00Esn - device busy class event\00Thin Provisioning soft threshold reached\00Depopulation interrupted\00Saving parameters not supported\00Medium not present\00Medium not present - tray closed\00Medium not present - tray open\00Medium not present - loadable\00Medium not present - medium auxiliary memory accessible\00Sequential positioning error\00Tape position error at beginning-of-medium\00Tape position error at end-of-medium\00Tape or electronic vertical forms unit not ready\00Slew failure\00Paper jam\00Failed to sense top-of-form\00Failed to sense bottom-of-form\00Reposition error\00Read past end of medium\00Read past beginning of medium\00Position past end of medium\00Position past beginning of medium\00Medium destination element full\00Medium source element empty\00End of medium reached\00Medium magazine not accessible\00Medium magazine removed\00Medium magazine inserted\00Medium magazine locked\00Medium magazine unlocked\00Mechanical positioning or changer error\00Read past end of user object\00Element disabled\00Element enabled\00Data transfer device removed\00Data transfer device inserted\00Too many logical objects on partition to support operation\00Element static information changed\00Invalid bits in identify message\00Logical unit has not self-configured yet\00Logical unit failure\00Timeout on logical unit\00Logical unit failed self-test\00Logical unit unable to update self-test log\00Target operating conditions have changed\00Microcode has been changed\00Changed operating definition\00Inquiry data has changed\00Component device attached\00Device identifier changed\00Redundancy group created or modified\00Redundancy group deleted\00Spare created or modified\00Spare deleted\00Volume set created or modified\00Volume set deleted\00Volume set deassigned\00Volume set reassigned\00Reported luns data has changed\00Echo buffer overwritten\00Medium loadable\00Medium auxiliary memory accessible\00iSCSI IP address added\00iSCSI IP address removed\00iSCSI IP address changed\00Inspect referrals sense descriptors\00Microcode has been changed without reset\00Zone transition to full\00Bind completed\00Bind redirected\00Subsidiary binding changed\00Message error\00Internal target failure\00Persistent reservation information lost\00ATA device failed set features\00Select or reselect failure\00Unsuccessful soft reset\00Scsi parity error\00Data phase CRC error detected\00Scsi parity error detected during st data phase\00Information unit iuCRC error detected\00Asynchronous information protection error detected\00Protocol service CRC error\00Phy test function in progress\00Some commands cleared by iSCSI Protocol event\00Initiator detected error message received\00Invalid message error\00Command phase error\00Data phase error\00Invalid target port transfer tag received\00Too much write data\00Ack/nak timeout\00Nak received\00Data offset error\00Initiator response timeout\00Connection lost\00Data-in buffer overflow - data buffer size\00Data-in buffer overflow - data buffer descriptor area\00Data-in buffer error\00Data-out buffer overflow - data buffer size\00Data-out buffer overflow - data buffer descriptor area\00Data-out buffer error\00PCIe fabric error\00PCIe completion timeout\00PCIe completer abort\00PCIe poisoned tlp received\00PCIe eCRC check failed\00PCIe unsupported request\00PCIe acs violation\00PCIe tlp prefix blocked\00Logical unit failed self-configuration\00Overlapped commands attempted\00Write append error\00Write append position error\00Position error related to timing\00Erase failure\00Erase failure - incomplete erase operation detected\00Cartridge fault\00Media load or eject failed\00Unload tape failure\00Medium removal prevented\00Medium removal prevented by data transfer element\00Medium thread or unthread failure\00Volume identifier invalid\00Volume identifier missing\00Duplicate volume identifier\00Element status unknown\00Data transfer device error - load failed\00Data transfer device error - unload failed\00Data transfer device error - unload missing\00Data transfer device error - eject failed\00Data transfer device error - library communication failed\00Scsi to host system interface failure\00System resource failure\00System buffer full\00Insufficient reservation resources\00Insufficient resources\00Insufficient registration resources\00Insufficient access control resources\00Auxiliary memory out of space\00Quota error\00Maximum number of supplemental decryption keys exceeded\00Medium auxiliary memory not accessible\00Data currently unavailable\00Insufficient power for operation\00Insufficient resources to create rod\00Insufficient resources to create rod token\00Insufficient zone resources\00Insufficient zone resources to complete write\00Maximum number of streams open\00Insufficient resources to bind\00Unable to recover table-of-contents\00Generation does not exist\00Updated block read\00Operator request or state change input\00Operator medium removal request\00Operator selected write protect\00Operator selected write permit\00Log exception\00Threshold condition met\00Log counter at maximum\00Log list codes exhausted\00Rpl status change\00Spindles synchronized\00Spindles not synchronized\00Failure prediction threshold exceeded\00Media failure prediction threshold exceeded\00Logical unit failure prediction threshold exceeded\00Spare area exhaustion prediction threshold exceeded\00Hardware impending failure general hard drive failure\00Hardware impending failure drive error rate too high\00Hardware impending failure data error rate too high\00Hardware impending failure seek error rate too high\00Hardware impending failure too many block reassigns\00Hardware impending failure access times too high\00Hardware impending failure start unit times too high\00Hardware impending failure channel parametrics\00Hardware impending failure controller detected\00Hardware impending failure throughput performance\00Hardware impending failure seek time performance\00Hardware impending failure spin-up retry count\00Hardware impending failure drive calibration retry count\00Controller impending failure general hard drive failure\00Controller impending failure drive error rate too high\00Controller impending failure data error rate too high\00Controller impending failure seek error rate too high\00Controller impending failure too many block reassigns\00Controller impending failure access times too high\00Controller impending failure start unit times too high\00Controller impending failure channel parametrics\00Controller impending failure controller detected\00Controller impending failure throughput performance\00Controller impending failure seek time performance\00Controller impending failure spin-up retry count\00Controller impending failure drive calibration retry count\00Data channel impending failure general hard drive failure\00Data channel impending failure drive error rate too high\00Data channel impending failure data error rate too high\00Data channel impending failure seek error rate too high\00Data channel impending failure too many block reassigns\00Data channel impending failure access times too high\00Data channel impending failure start unit times too high\00Data channel impending failure channel parametrics\00Data channel impending failure controller detected\00Data channel impending failure throughput performance\00Data channel impending failure seek time performance\00Data channel impending failure spin-up retry count\00Data channel impending failure drive calibration retry count\00Servo impending failure general hard drive failure\00Servo impending failure drive error rate too high\00Servo impending failure data error rate too high\00Servo impending failure seek error rate too high\00Servo impending failure too many block reassigns\00Servo impending failure access times too high\00Servo impending failure start unit times too high\00Servo impending failure channel parametrics\00Servo impending failure controller detected\00Servo impending failure throughput performance\00Servo impending failure seek time performance\00Servo impending failure spin-up retry count\00Servo impending failure drive calibration retry count\00Spindle impending failure general hard drive failure\00Spindle impending failure drive error rate too high\00Spindle impending failure data error rate too high\00Spindle impending failure seek error rate too high\00Spindle impending failure too many block reassigns\00Spindle impending failure access times too high\00Spindle impending failure start unit times too high\00Spindle impending failure channel parametrics\00Spindle impending failure controller detected\00Spindle impending failure throughput performance\00Spindle impending failure seek time performance\00Spindle impending failure spin-up retry count\00Spindle impending failure drive calibration retry count\00Firmware impending failure general hard drive failure\00Firmware impending failure drive error rate too high\00Firmware impending failure data error rate too high\00Firmware impending failure seek error rate too high\00Firmware impending failure too many block reassigns\00Firmware impending failure access times too high\00Firmware impending failure start unit times too high\00Firmware impending failure channel parametrics\00Firmware impending failure controller detected\00Firmware impending failure throughput performance\00Firmware impending failure seek time performance\00Firmware impending failure spin-up retry count\00Firmware impending failure drive calibration retry count\00Media impending failure endurance limit met\00Failure prediction threshold exceeded (false)\00Low power condition on\00Idle condition activated by timer\00Standby condition activated by timer\00Idle condition activated by command\00Standby condition activated by command\00Idle_b condition activated by timer\00Idle_b condition activated by command\00Idle_c condition activated by timer\00Idle_c condition activated by command\00Standby_y condition activated by timer\00Standby_y condition activated by command\00Power state change to active\00Power state change to idle\00Power state change to standby\00Power state change to sleep\00Power state change to device control\00Lamp failure\00Video acquisition error\00Unable to acquire video\00Out of focus\00Scan head positioning error\00End of user area encountered on this track\00Packet does not fit in available space\00Illegal mode for this track\00Invalid packet size\00Voltage fault\00Automatic document feeder cover up\00Automatic document feeder lift up\00Document jam in automatic document feeder\00Document miss feed automatic in document feeder\00Configuration failure\00Configuration of incapable logical units failed\00Add logical unit failed\00Modification of logical unit failed\00Exchange of logical unit failed\00Remove of logical unit failed\00Attachment of logical unit failed\00Creation of logical unit failed\00Assign failure occurred\00Multiply assigned logical unit\00Set target port groups command failed\00ATA device feature not enabled\00Command rejected\00Explicit bind not allowed\00Logical unit not configured\00Subsidiary logical unit not configured\00Data loss on logical unit\00Multiple logical unit failures\00Parity/data mismatch\00Informational, refer to log\00State change has occurred\00Redundancy level got better\00Redundancy level got worse\00Rebuild failure occurred\00Recalculate failure occurred\00Command to logical unit failed\00Copy protection key exchange failure - authentication failure\00Copy protection key exchange failure - key not present\00Copy protection key exchange failure - key not established\00Read of scrambled sector without authentication\00Media region code is mismatched to logical unit region\00Drive region must be permanent/region reset count error\00Insufficient block count for binding nonce recording\00Conflict in binding nonce recording\00Insufficient permission\00Invalid drive-host pairing server\00Drive-host pairing suspended\00Decompression exception long algorithm id\00Session fixation error\00Session fixation error writing lead-in\00Session fixation error writing lead-out\00Session fixation error - incomplete track in session\00Empty or partially written reserved track\00No more track reservations allowed\00RMZ extension is not allowed\00No more test zone extensions are allowed\00Cd control error\00Power calibration area almost full\00Power calibration area is full\00Power calibration area error\00Program memory area update failure\00Program memory area is full\00RMA/PMA is almost full\00Current power calibration area almost full\00Current power calibration area is full\00RDZ is full\00Security error\00Unable to decrypt data\00Unencrypted data encountered while decrypting\00Incorrect data encryption key\00Cryptographic integrity validation failed\00Error decrypting data\00Unknown signature verification key\00Encryption parameters not useable\00Digital signature validation failure\00Encryption mode mismatch on read\00Encrypted block not raw read enabled\00Incorrect Encryption parameters\00Unable to decrypt parameter list\00Encryption algorithm disabled\00SA creation parameter value invalid\00SA creation parameter value rejected\00Invalid SA usage\00Data Encryption configuration prevented\00SA creation parameter not supported\00Authentication failed\00External data encryption key manager access error\00External data encryption key manager error\00External data encryption key not found\00External data encryption request not authorized\00External data encryption control timeout\00External data encryption control error\00Logical unit access not authorized\00Security conflict in translated device\00\00", align 1, !dbg !705
@.str.240 = private unnamed_addr constant [12 x i8] c"Ram failure\00", align 1, !dbg !713
@.str.241 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !715
@.str.242 = private unnamed_addr constant [32 x i8] c"Diagnostic failure on component\00", align 1, !dbg !718
@.str.243 = private unnamed_addr constant [18 x i8] c"Data path failure\00", align 1, !dbg !720
@.str.244 = private unnamed_addr constant [30 x i8] c"Power-on or self-test failure\00", align 1, !dbg !722
@.str.245 = private unnamed_addr constant [27 x i8] c"Tagged overlapped commands\00", align 1, !dbg !724
@.str.246 = private unnamed_addr constant [10 x i8] c"task tag \00", align 1, !dbg !726
@.str.247 = private unnamed_addr constant [24 x i8] c"Decompression exception\00", align 1, !dbg !728
@.str.248 = private unnamed_addr constant [23 x i8] c"short algorithm id of \00", align 1, !dbg !730
@.str.249 = private unnamed_addr constant [7 x i8] c"DID_OK\00", align 1, !dbg !744
@.str.250 = private unnamed_addr constant [15 x i8] c"DID_NO_CONNECT\00", align 1, !dbg !747
@.str.251 = private unnamed_addr constant [13 x i8] c"DID_BUS_BUSY\00", align 1, !dbg !749
@.str.252 = private unnamed_addr constant [13 x i8] c"DID_TIME_OUT\00", align 1, !dbg !751
@.str.253 = private unnamed_addr constant [15 x i8] c"DID_BAD_TARGET\00", align 1, !dbg !753
@.str.254 = private unnamed_addr constant [10 x i8] c"DID_ABORT\00", align 1, !dbg !755
@.str.255 = private unnamed_addr constant [11 x i8] c"DID_PARITY\00", align 1, !dbg !757
@.str.256 = private unnamed_addr constant [10 x i8] c"DID_ERROR\00", align 1, !dbg !759
@.str.257 = private unnamed_addr constant [10 x i8] c"DID_RESET\00", align 1, !dbg !761
@.str.258 = private unnamed_addr constant [13 x i8] c"DID_BAD_INTR\00", align 1, !dbg !763
@.str.259 = private unnamed_addr constant [16 x i8] c"DID_PASSTHROUGH\00", align 1, !dbg !765
@.str.260 = private unnamed_addr constant [15 x i8] c"DID_SOFT_ERROR\00", align 1, !dbg !767
@.str.261 = private unnamed_addr constant [14 x i8] c"DID_IMM_RETRY\00", align 1, !dbg !769
@.str.262 = private unnamed_addr constant [12 x i8] c"DID_REQUEUE\00", align 1, !dbg !771
@.str.263 = private unnamed_addr constant [24 x i8] c"DID_TRANSPORT_DISRUPTED\00", align 1, !dbg !773
@.str.264 = private unnamed_addr constant [23 x i8] c"DID_TRANSPORT_FAILFAST\00", align 1, !dbg !775
@.str.265 = private unnamed_addr constant [19 x i8] c"DID_TARGET_FAILURE\00", align 1, !dbg !777
@.str.266 = private unnamed_addr constant [18 x i8] c"DID_NEXUS_FAILURE\00", align 1, !dbg !779
@.str.267 = private unnamed_addr constant [18 x i8] c"DID_ALLOC_FAILURE\00", align 1, !dbg !781
@.str.268 = private unnamed_addr constant [17 x i8] c"DID_MEDIUM_ERROR\00", align 1, !dbg !783
@.str.269 = private unnamed_addr constant [12 x i8] c"NEEDS_RETRY\00", align 1, !dbg !788
@.str.270 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1, !dbg !790
@.str.271 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1, !dbg !792
@.str.272 = private unnamed_addr constant [7 x i8] c"QUEUED\00", align 1, !dbg !794
@.str.273 = private unnamed_addr constant [11 x i8] c"SOFT_ERROR\00", align 1, !dbg !796
@.str.274 = private unnamed_addr constant [15 x i8] c"ADD_TO_MLQUEUE\00", align 1, !dbg !798
@.str.275 = private unnamed_addr constant [14 x i8] c"TIMEOUT_ERROR\00", align 1, !dbg !800
@.str.276 = private unnamed_addr constant [24 x i8] c"SCSI_RETURN_NOT_HANDLED\00", align 1, !dbg !802
@.str.277 = private unnamed_addr constant [13 x i8] c"FAST_IO_FAIL\00", align 1, !dbg !804
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_scsi_sense_key_string348, ptr @__UNIQUE_ID___addressable_scsi_extd_sense_format349, ptr @__UNIQUE_ID___addressable_scsi_hostbyte_string350, ptr @__UNIQUE_ID___addressable_scsi_mlreturn_string351], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @scsi_opcode_sa_name(i32 noundef %opcode, i32 noundef %service_action, ptr noundef %cdb_name, ptr noundef %sa_name) #0 align 16 !dbg !821 {
entry:
  %retval = alloca i1, align 1
  %opcode.addr = alloca i32, align 4
  %service_action.addr = alloca i32, align 4
  %cdb_name.addr = alloca ptr, align 8
  %sa_name.addr = alloca ptr, align 8
  %sa_name_ptr = alloca ptr, align 8
  %arr = alloca ptr, align 8
  %arr_sz = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %opcode, ptr %opcode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !829, metadata !DIExpression()), !dbg !838
  store i32 %service_action, ptr %service_action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %service_action.addr, metadata !830, metadata !DIExpression()), !dbg !839
  store ptr %cdb_name, ptr %cdb_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdb_name.addr, metadata !831, metadata !DIExpression()), !dbg !840
  store ptr %sa_name, ptr %sa_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sa_name.addr, metadata !832, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa_name_ptr) #3, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %sa_name_ptr, metadata !833, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 8, ptr %arr) #3, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %arr, metadata !835, metadata !DIExpression()), !dbg !845
  store ptr null, ptr %arr, align 8, !dbg !845
  call void @llvm.lifetime.start.p0(i64 4, ptr %arr_sz) #3, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %arr_sz, metadata !836, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %k, metadata !837, metadata !DIExpression()), !dbg !848
  %0 = load ptr, ptr %cdb_name.addr, align 8, !dbg !849
  store ptr null, ptr %0, align 8, !dbg !850
  %1 = load i32, ptr %opcode.addr, align 4, !dbg !851
  %cmp = icmp sge i32 %1, 192, !dbg !853
  br i1 %cmp, label %if.then, label %if.end, !dbg !854

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %opcode.addr, align 4, !dbg !856
  %conv = sext i32 %2 to i64, !dbg !856
  %cmp1 = icmp ult i64 %conv, 192, !dbg !858
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !859

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %opcode.addr, align 4, !dbg !860
  %idxprom = sext i32 %3 to i64, !dbg !861
  %arrayidx = getelementptr [192 x ptr], ptr @cdb_byte0_names, i64 0, i64 %idxprom, !dbg !861
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !861
  %5 = load ptr, ptr %cdb_name.addr, align 8, !dbg !862
  store ptr %4, ptr %5, align 8, !dbg !863
  br label %if.end4, !dbg !864

if.end4:                                          ; preds = %if.then3, %if.end
  store ptr @sa_names_arr, ptr %sa_name_ptr, align 8, !dbg !865
  br label %for.cond, !dbg !867

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load ptr, ptr %sa_name_ptr, align 8, !dbg !868
  %arr5 = getelementptr inbounds %struct.sa_name_list, ptr %6, i32 0, i32 1, !dbg !870
  %7 = load ptr, ptr %arr5, align 8, !dbg !870
  %tobool = icmp ne ptr %7, null, !dbg !871
  br i1 %tobool, label %for.body, label %for.end, !dbg !871

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %sa_name_ptr, align 8, !dbg !872
  %opcode6 = getelementptr inbounds %struct.sa_name_list, ptr %8, i32 0, i32 0, !dbg !875
  %9 = load i32, ptr %opcode6, align 8, !dbg !875
  %10 = load i32, ptr %opcode.addr, align 4, !dbg !876
  %cmp7 = icmp eq i32 %9, %10, !dbg !877
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !878

if.then9:                                         ; preds = %for.body
  %11 = load ptr, ptr %sa_name_ptr, align 8, !dbg !879
  %arr10 = getelementptr inbounds %struct.sa_name_list, ptr %11, i32 0, i32 1, !dbg !881
  %12 = load ptr, ptr %arr10, align 8, !dbg !881
  store ptr %12, ptr %arr, align 8, !dbg !882
  %13 = load ptr, ptr %sa_name_ptr, align 8, !dbg !883
  %arr_sz11 = getelementptr inbounds %struct.sa_name_list, ptr %13, i32 0, i32 2, !dbg !884
  %14 = load i32, ptr %arr_sz11, align 8, !dbg !884
  store i32 %14, ptr %arr_sz, align 4, !dbg !885
  br label %for.end, !dbg !886

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !887

for.inc:                                          ; preds = %if.end12
  %15 = load ptr, ptr %sa_name_ptr, align 8, !dbg !888
  %incdec.ptr = getelementptr %struct.sa_name_list, ptr %15, i32 1, !dbg !888
  store ptr %incdec.ptr, ptr %sa_name_ptr, align 8, !dbg !888
  br label %for.cond, !dbg !889, !llvm.loop !890

for.end:                                          ; preds = %if.then9, %for.cond
  %16 = load ptr, ptr %arr, align 8, !dbg !894
  %tobool13 = icmp ne ptr %16, null, !dbg !894
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !896

if.then14:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !897

if.end15:                                         ; preds = %for.end
  store i32 0, ptr %k, align 4, !dbg !898
  br label %for.cond16, !dbg !900

for.cond16:                                       ; preds = %for.inc24, %if.end15
  %17 = load i32, ptr %k, align 4, !dbg !901
  %18 = load i32, ptr %arr_sz, align 4, !dbg !903
  %cmp17 = icmp slt i32 %17, %18, !dbg !904
  br i1 %cmp17, label %for.body19, label %for.end26, !dbg !905

for.body19:                                       ; preds = %for.cond16
  %19 = load i32, ptr %service_action.addr, align 4, !dbg !906
  %20 = load ptr, ptr %arr, align 8, !dbg !909
  %value = getelementptr inbounds %struct.value_name_pair, ptr %20, i32 0, i32 0, !dbg !910
  %21 = load i32, ptr %value, align 8, !dbg !910
  %cmp20 = icmp eq i32 %19, %21, !dbg !911
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !912

if.then22:                                        ; preds = %for.body19
  br label %for.end26, !dbg !913

if.end23:                                         ; preds = %for.body19
  br label %for.inc24, !dbg !914

for.inc24:                                        ; preds = %if.end23
  %22 = load i32, ptr %k, align 4, !dbg !915
  %inc = add i32 %22, 1, !dbg !915
  store i32 %inc, ptr %k, align 4, !dbg !915
  %23 = load ptr, ptr %arr, align 8, !dbg !916
  %incdec.ptr25 = getelementptr %struct.value_name_pair, ptr %23, i32 1, !dbg !916
  store ptr %incdec.ptr25, ptr %arr, align 8, !dbg !916
  br label %for.cond16, !dbg !917, !llvm.loop !918

for.end26:                                        ; preds = %if.then22, %for.cond16
  %24 = load i32, ptr %k, align 4, !dbg !920
  %25 = load i32, ptr %arr_sz, align 4, !dbg !922
  %cmp27 = icmp slt i32 %24, %25, !dbg !923
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !924

if.then29:                                        ; preds = %for.end26
  %26 = load ptr, ptr %arr, align 8, !dbg !925
  %name = getelementptr inbounds %struct.value_name_pair, ptr %26, i32 0, i32 1, !dbg !926
  %27 = load ptr, ptr %name, align 8, !dbg !926
  %28 = load ptr, ptr %sa_name.addr, align 8, !dbg !927
  store ptr %27, ptr %28, align 8, !dbg !928
  br label %if.end30, !dbg !929

if.end30:                                         ; preds = %if.then29, %for.end26
  store i1 true, ptr %retval, align 1, !dbg !930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !930

cleanup:                                          ; preds = %if.end30, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3, !dbg !931
  call void @llvm.lifetime.end.p0(i64 4, ptr %arr_sz) #3, !dbg !931
  call void @llvm.lifetime.end.p0(i64 8, ptr %arr) #3, !dbg !931
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa_name_ptr) #3, !dbg !931
  %29 = load i1, ptr %retval, align 1, !dbg !931
  ret i1 %29, !dbg !931
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_sense_key_string(i8 noundef zeroext %key) #0 align 16 !dbg !932 {
entry:
  %retval = alloca ptr, align 8
  %key.addr = alloca i8, align 1
  store i8 %key, ptr %key.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !936, metadata !DIExpression()), !dbg !937
  %0 = load i8, ptr %key.addr, align 1, !dbg !938
  %conv = zext i8 %0 to i64, !dbg !938
  %cmp = icmp ult i64 %conv, 16, !dbg !940
  br i1 %cmp, label %if.then, label %if.end, !dbg !941

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %key.addr, align 1, !dbg !942
  %idxprom = zext i8 %1 to i64, !dbg !943
  %arrayidx = getelementptr [16 x ptr], ptr @snstext, i64 0, i64 %idxprom, !dbg !943
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !943
  store ptr %2, ptr %retval, align 8, !dbg !944
  br label %return, !dbg !944

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !945
  br label %return, !dbg !945

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !946
  ret ptr %3, !dbg !946
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_extd_sense_format(i8 noundef zeroext %asc, i8 noundef zeroext %ascq, ptr noundef %fmt) #0 align 16 !dbg !947 {
entry:
  %retval = alloca ptr, align 8
  %asc.addr = alloca i8, align 1
  %ascq.addr = alloca i8, align 1
  %fmt.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %code = alloca i16, align 2
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %asc, ptr %asc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %asc.addr, metadata !951, metadata !DIExpression()), !dbg !957
  store i8 %ascq, ptr %ascq.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascq.addr, metadata !952, metadata !DIExpression()), !dbg !958
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !953, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %i, metadata !954, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 2, ptr %code) #3, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %code, metadata !955, metadata !DIExpression()), !dbg !963
  %0 = load i8, ptr %asc.addr, align 1, !dbg !964
  %conv = zext i8 %0 to i32, !dbg !964
  %shl = shl i32 %conv, 8, !dbg !965
  %1 = load i8, ptr %ascq.addr, align 1, !dbg !966
  %conv1 = zext i8 %1 to i32, !dbg !966
  %or = or i32 %shl, %conv1, !dbg !967
  %conv2 = trunc i32 %or to i16, !dbg !968
  store i16 %conv2, ptr %code, align 2, !dbg !963
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #3, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !956, metadata !DIExpression()), !dbg !970
  store i32 0, ptr %offset, align 4, !dbg !970
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !971
  store ptr null, ptr %2, align 8, !dbg !972
  store i32 0, ptr %i, align 4, !dbg !973
  br label %for.cond, !dbg !975

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !976
  %conv3 = sext i32 %3 to i64, !dbg !976
  %cmp = icmp ult i64 %conv3, 756, !dbg !978
  br i1 %cmp, label %for.body, label %for.end, !dbg !979

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !980
  %idxprom = sext i32 %4 to i64, !dbg !983
  %arrayidx = getelementptr [756 x %struct.error_info], ptr @additional, i64 0, i64 %idxprom, !dbg !983
  %code12 = getelementptr inbounds %struct.error_info, ptr %arrayidx, i32 0, i32 0, !dbg !984
  %5 = load i16, ptr %code12, align 4, !dbg !984
  %conv5 = zext i16 %5 to i32, !dbg !983
  %6 = load i16, ptr %code, align 2, !dbg !985
  %conv6 = zext i16 %6 to i32, !dbg !985
  %cmp7 = icmp eq i32 %conv5, %conv6, !dbg !986
  br i1 %cmp7, label %if.then, label %if.end, !dbg !987

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr @additional_text, align 8, !dbg !988
  %8 = load i32, ptr %offset, align 4, !dbg !989
  %idx.ext = zext i32 %8 to i64, !dbg !990
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !990
  store ptr %add.ptr, ptr %retval, align 8, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

if.end:                                           ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !992
  %idxprom9 = sext i32 %9 to i64, !dbg !993
  %arrayidx10 = getelementptr [756 x %struct.error_info], ptr @additional, i64 0, i64 %idxprom9, !dbg !993
  %size = getelementptr inbounds %struct.error_info, ptr %arrayidx10, i32 0, i32 1, !dbg !994
  %10 = load i16, ptr %size, align 2, !dbg !994
  %conv11 = zext i16 %10 to i32, !dbg !993
  %11 = load i32, ptr %offset, align 4, !dbg !995
  %add = add i32 %11, %conv11, !dbg !995
  store i32 %add, ptr %offset, align 4, !dbg !995
  br label %for.inc, !dbg !996

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !997
  %inc = add i32 %12, 1, !dbg !997
  store i32 %inc, ptr %i, align 4, !dbg !997
  br label %for.cond, !dbg !998, !llvm.loop !999

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1001
  br label %for.cond12, !dbg !1003

for.cond12:                                       ; preds = %for.inc43, %for.end
  %13 = load i32, ptr %i, align 4, !dbg !1004
  %idxprom13 = sext i32 %13 to i64, !dbg !1006
  %arrayidx14 = getelementptr [7 x %struct.error_info2], ptr @additional2, i64 0, i64 %idxprom13, !dbg !1006
  %fmt15 = getelementptr inbounds %struct.error_info2, ptr %arrayidx14, i32 0, i32 4, !dbg !1007
  %14 = load ptr, ptr %fmt15, align 8, !dbg !1007
  %tobool = icmp ne ptr %14, null, !dbg !1008
  br i1 %tobool, label %for.body16, label %for.end45, !dbg !1008

for.body16:                                       ; preds = %for.cond12
  %15 = load i32, ptr %i, align 4, !dbg !1009
  %idxprom17 = sext i32 %15 to i64, !dbg !1012
  %arrayidx18 = getelementptr [7 x %struct.error_info2], ptr @additional2, i64 0, i64 %idxprom17, !dbg !1012
  %code1 = getelementptr inbounds %struct.error_info2, ptr %arrayidx18, i32 0, i32 0, !dbg !1013
  %16 = load i8, ptr %code1, align 8, !dbg !1013
  %conv19 = zext i8 %16 to i32, !dbg !1012
  %17 = load i8, ptr %asc.addr, align 1, !dbg !1014
  %conv20 = zext i8 %17 to i32, !dbg !1014
  %cmp21 = icmp eq i32 %conv19, %conv20, !dbg !1015
  br i1 %cmp21, label %land.lhs.true, label %if.end42, !dbg !1016

land.lhs.true:                                    ; preds = %for.body16
  %18 = load i8, ptr %ascq.addr, align 1, !dbg !1017
  %conv23 = zext i8 %18 to i32, !dbg !1017
  %19 = load i32, ptr %i, align 4, !dbg !1018
  %idxprom24 = sext i32 %19 to i64, !dbg !1019
  %arrayidx25 = getelementptr [7 x %struct.error_info2], ptr @additional2, i64 0, i64 %idxprom24, !dbg !1019
  %code2_min = getelementptr inbounds %struct.error_info2, ptr %arrayidx25, i32 0, i32 1, !dbg !1020
  %20 = load i8, ptr %code2_min, align 1, !dbg !1020
  %conv26 = zext i8 %20 to i32, !dbg !1019
  %cmp27 = icmp sge i32 %conv23, %conv26, !dbg !1021
  br i1 %cmp27, label %land.lhs.true29, label %if.end42, !dbg !1022

land.lhs.true29:                                  ; preds = %land.lhs.true
  %21 = load i8, ptr %ascq.addr, align 1, !dbg !1023
  %conv30 = zext i8 %21 to i32, !dbg !1023
  %22 = load i32, ptr %i, align 4, !dbg !1024
  %idxprom31 = sext i32 %22 to i64, !dbg !1025
  %arrayidx32 = getelementptr [7 x %struct.error_info2], ptr @additional2, i64 0, i64 %idxprom31, !dbg !1025
  %code2_max = getelementptr inbounds %struct.error_info2, ptr %arrayidx32, i32 0, i32 2, !dbg !1026
  %23 = load i8, ptr %code2_max, align 2, !dbg !1026
  %conv33 = zext i8 %23 to i32, !dbg !1025
  %cmp34 = icmp sle i32 %conv30, %conv33, !dbg !1027
  br i1 %cmp34, label %if.then36, label %if.end42, !dbg !1028

if.then36:                                        ; preds = %land.lhs.true29
  %24 = load i32, ptr %i, align 4, !dbg !1029
  %idxprom37 = sext i32 %24 to i64, !dbg !1031
  %arrayidx38 = getelementptr [7 x %struct.error_info2], ptr @additional2, i64 0, i64 %idxprom37, !dbg !1031
  %fmt39 = getelementptr inbounds %struct.error_info2, ptr %arrayidx38, i32 0, i32 4, !dbg !1032
  %25 = load ptr, ptr %fmt39, align 8, !dbg !1032
  %26 = load ptr, ptr %fmt.addr, align 8, !dbg !1033
  store ptr %25, ptr %26, align 8, !dbg !1034
  %27 = load i32, ptr %i, align 4, !dbg !1035
  %idxprom40 = sext i32 %27 to i64, !dbg !1036
  %arrayidx41 = getelementptr [7 x %struct.error_info2], ptr @additional2, i64 0, i64 %idxprom40, !dbg !1036
  %str = getelementptr inbounds %struct.error_info2, ptr %arrayidx41, i32 0, i32 3, !dbg !1037
  %28 = load ptr, ptr %str, align 8, !dbg !1037
  store ptr %28, ptr %retval, align 8, !dbg !1038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1038

if.end42:                                         ; preds = %land.lhs.true29, %land.lhs.true, %for.body16
  br label %for.inc43, !dbg !1039

for.inc43:                                        ; preds = %if.end42
  %29 = load i32, ptr %i, align 4, !dbg !1040
  %inc44 = add i32 %29, 1, !dbg !1040
  store i32 %inc44, ptr %i, align 4, !dbg !1040
  br label %for.cond12, !dbg !1041, !llvm.loop !1042

for.end45:                                        ; preds = %for.cond12
  store ptr null, ptr %retval, align 8, !dbg !1044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1044

cleanup:                                          ; preds = %for.end45, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #3, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 2, ptr %code) #3, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !1045
  %30 = load ptr, ptr %retval, align 8, !dbg !1045
  ret ptr %30, !dbg !1045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_hostbyte_string(i32 noundef %result) #0 align 16 !dbg !1046 {
entry:
  %result.addr = alloca i32, align 4
  %hb = alloca i32, align 4
  %hb_string = alloca ptr, align 8
  store i32 %result, ptr %result.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1050, metadata !DIExpression()), !dbg !1053
  call void @llvm.lifetime.start.p0(i64 4, ptr %hb) #3, !dbg !1054
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !1051, metadata !DIExpression()), !dbg !1055
  %0 = load i32, ptr %result.addr, align 4, !dbg !1056
  %shr = ashr i32 %0, 16, !dbg !1056
  %and = and i32 %shr, 255, !dbg !1056
  store i32 %and, ptr %hb, align 4, !dbg !1055
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb_string) #3, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %hb_string, metadata !1052, metadata !DIExpression()), !dbg !1058
  store ptr null, ptr %hb_string, align 8, !dbg !1058
  %1 = load i32, ptr %hb, align 4, !dbg !1059
  %conv = zext i32 %1 to i64, !dbg !1059
  %cmp = icmp ult i64 %conv, 20, !dbg !1061
  br i1 %cmp, label %if.then, label %if.end, !dbg !1062

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %hb, align 4, !dbg !1063
  %idxprom = zext i32 %2 to i64, !dbg !1064
  %arrayidx = getelementptr [20 x ptr], ptr @hostbyte_table, i64 0, i64 %idxprom, !dbg !1064
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1064
  store ptr %3, ptr %hb_string, align 8, !dbg !1065
  br label %if.end, !dbg !1066

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %hb_string, align 8, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb_string) #3, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 4, ptr %hb) #3, !dbg !1068
  ret ptr %4, !dbg !1069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_mlreturn_string(i32 noundef %result) #0 align 16 !dbg !1070 {
entry:
  %retval = alloca ptr, align 8
  %result.addr = alloca i32, align 4
  %arr = alloca ptr, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %result, ptr %result.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1072, metadata !DIExpression()), !dbg !1075
  call void @llvm.lifetime.start.p0(i64 8, ptr %arr) #3, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %arr, metadata !1073, metadata !DIExpression()), !dbg !1077
  store ptr @scsi_mlreturn_arr, ptr %arr, align 8, !dbg !1077
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1074, metadata !DIExpression()), !dbg !1079
  store i32 0, ptr %k, align 4, !dbg !1080
  br label %for.cond, !dbg !1082

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !dbg !1083
  %conv = sext i32 %0 to i64, !dbg !1083
  %cmp = icmp ult i64 %conv, 9, !dbg !1085
  br i1 %cmp, label %for.body, label %for.end, !dbg !1086

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %result.addr, align 4, !dbg !1087
  %2 = load ptr, ptr %arr, align 8, !dbg !1090
  %value = getelementptr inbounds %struct.value_name_pair, ptr %2, i32 0, i32 0, !dbg !1091
  %3 = load i32, ptr %value, align 8, !dbg !1091
  %cmp2 = icmp eq i32 %1, %3, !dbg !1092
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %arr, align 8, !dbg !1094
  %name = getelementptr inbounds %struct.value_name_pair, ptr %4, i32 0, i32 1, !dbg !1095
  %5 = load ptr, ptr %name, align 8, !dbg !1095
  store ptr %5, ptr %retval, align 8, !dbg !1096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1096

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1097

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %k, align 4, !dbg !1098
  %inc = add i32 %6, 1, !dbg !1098
  store i32 %inc, ptr %k, align 4, !dbg !1098
  %7 = load ptr, ptr %arr, align 8, !dbg !1099
  %incdec.ptr = getelementptr %struct.value_name_pair, ptr %7, i32 1, !dbg !1099
  store ptr %incdec.ptr, ptr %arr, align 8, !dbg !1099
  br label %for.cond, !dbg !1100, !llvm.loop !1101

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1103

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %arr) #3, !dbg !1104
  %8 = load ptr, ptr %retval, align 8, !dbg !1104
  ret ptr %8, !dbg !1104
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!812, !813, !814, !815, !816, !817, !818, !819}
!llvm.ident = !{!820}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cdb_byte0_names", scope: !2, file: !3, line: 37, type: !809, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/scsi/.constants.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/scsi/scsi_mod\22 -D KBUILD_BASENAME=\22constants\22 -D KBUILD_MODNAME=\22scsi_mod\22 -D __KBUILD_MODNAME=kmod_scsi_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/scsi/constants.ll drivers/scsi/constants.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/scsi/constants.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "325321c362d6529c10ffff80d4a6290d")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_host_status", file: !12, line: 44, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/scsi/scsi_status.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "103a83094c91aa5c35c92697a93f794a")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!14 = !DIEnumerator(name: "DID_OK", value: 0)
!15 = !DIEnumerator(name: "DID_NO_CONNECT", value: 1)
!16 = !DIEnumerator(name: "DID_BUS_BUSY", value: 2)
!17 = !DIEnumerator(name: "DID_TIME_OUT", value: 3)
!18 = !DIEnumerator(name: "DID_BAD_TARGET", value: 4)
!19 = !DIEnumerator(name: "DID_ABORT", value: 5)
!20 = !DIEnumerator(name: "DID_PARITY", value: 6)
!21 = !DIEnumerator(name: "DID_ERROR", value: 7)
!22 = !DIEnumerator(name: "DID_RESET", value: 8)
!23 = !DIEnumerator(name: "DID_BAD_INTR", value: 9)
!24 = !DIEnumerator(name: "DID_PASSTHROUGH", value: 10)
!25 = !DIEnumerator(name: "DID_SOFT_ERROR", value: 11)
!26 = !DIEnumerator(name: "DID_IMM_RETRY", value: 12)
!27 = !DIEnumerator(name: "DID_REQUEUE", value: 13)
!28 = !DIEnumerator(name: "DID_TRANSPORT_DISRUPTED", value: 14)
!29 = !DIEnumerator(name: "DID_TRANSPORT_FAILFAST", value: 15)
!30 = !DIEnumerator(name: "DID_TRANSPORT_MARGINAL", value: 20)
!31 = !{!32, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !{!35, !37, !39, !41, !43, !49, !54, !59, !61, !66, !68, !73, !78, !80, !85, !87, !92, !94, !99, !104, !109, !114, !116, !121, !123, !125, !127, !129, !131, !136, !141, !143, !145, !147, !149, !151, !153, !155, !157, !162, !164, !169, !171, !173, !175, !177, !179, !181, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !223, !228, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !333, !335, !337, !339, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !379, !381, !383, !385, !390, !395, !397, !399, !404, !0, !409, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !500, !505, !507, !512, !514, !519, !524, !526, !528, !530, !533, !535, !537, !539, !541, !543, !545, !547, !552, !554, !559, !561, !563, !568, !570, !572, !574, !576, !578, !583, !588, !590, !592, !594, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !624, !626, !628, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !694, !705, !711, !713, !715, !718, !720, !722, !724, !726, !728, !730, !732, !744, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_sense_key_string348", scope: !2, file: !3, line: 371, type: !33, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_extd_sense_format349", scope: !2, file: !3, line: 400, type: !33, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_hostbyte_string350", scope: !2, file: !3, line: 418, type: !33, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_mlreturn_string351", scope: !2, file: !3, line: 444, type: !33, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !47)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 152, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 19)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 112, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !51, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 144, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 18)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !45, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 72, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 9)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !70, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 104, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 13)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !45, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 6)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !70, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 80, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 10)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 176, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 22)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 120, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 15)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 88, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 11)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !111, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 40, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 5)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !89, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !56, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !45, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !51, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !45, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 232, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 29)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 184, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 23)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !111, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !63, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !75, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !45, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !96, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !75, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !96, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !51, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 136, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 17)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !111, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 96, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 12)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !82, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !111, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !111, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !138, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !101, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !101, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 168, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 21)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !166, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !70, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !166, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !82, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !166, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !82, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !56, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !106, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !63, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !106, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !138, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !63, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !183, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !106, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !63, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !106, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 32)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 24)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 240, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 30)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !82, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !111, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !96, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !106, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !70, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !225, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !225, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !56, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !56, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !45, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !166, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !166, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !82, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !45, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !106, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 20)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !183, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !106, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !101, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !138, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !82, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !45, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !166, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !166, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !106, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !183, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !265, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !133, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !63, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !51, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !75, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !63, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !96, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !70, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !45, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !159, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !183, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !111, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !56, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !101, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !101, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !106, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !133, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !101, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !138, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !166, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 280, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 35)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !183, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !106, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !45, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 216, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 27)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !45, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !183, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !75, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !225, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !96, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !341, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !51, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !183, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !111, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !183, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !101, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !265, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !106, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !133, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !101, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 248, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 31)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !183, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !265, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !166, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 224, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 28)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 328, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 41)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !265, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !230, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 25)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 296, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 37)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "sa_names_arr", scope: !2, file: !3, line: 244, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2496, elements: !83)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sa_name_list", file: !3, line: 26, size: 192, elements: !413)
!413 = !{!414, !415, !424}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !412, file: !3, line: 27, baseType: !32, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !412, file: !3, line: 28, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "value_name_pair", file: !3, line: 32, size: 128, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !418, file: !3, line: 33, baseType: !32, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !3, line: 34, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arr_sz", scope: !412, file: !3, line: 29, baseType: !32, size: 32, offset: 128)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !3, line: 205, type: !166, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !106, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !111, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !166, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !183, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !166, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !45, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !183, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !75, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !111, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !96, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !265, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !106, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !111, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !82, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !111, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !111, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !166, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !82, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 224, type: !166, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !82, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !138, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !138, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !183, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !183, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !138, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !225, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !3, line: 232, type: !225, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !101, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !56, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !183, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !138, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !101, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !96, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !341, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 312, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 39)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "variable_length_arr", scope: !2, file: !3, line: 204, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 4608, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 36)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !376, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !509, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 208, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 26)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !106, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 264, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 33)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !521, isLocal: true, isDefinition: true)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 344, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 43)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !45, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !159, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !138, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "maint_in_arr", scope: !2, file: !3, line: 107, type: !532, isLocal: true, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 1024, elements: !71)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !387, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !138, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !106, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !159, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !82, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !56, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !225, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "maint_out_arr", scope: !2, file: !3, line: 119, type: !549, isLocal: true, isDefinition: true)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 896, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 7)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !516, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !556, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 320, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 40)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !521, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !556, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "pr_in_arr", scope: !2, file: !3, line: 159, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 4)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !516, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !220, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !220, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !230, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !220, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 336, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 42)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 456, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 57)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !580, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "pr_out_arr", scope: !2, file: !3, line: 167, type: !532, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !401, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "serv_in12_arr", scope: !2, file: !3, line: 130, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 1)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !166, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "serv_out12_arr", scope: !2, file: !3, line: 135, type: !596, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "serv_bidi_arr", scope: !2, file: !3, line: 140, type: !596, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !63, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !56, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !106, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !159, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "serv_in16_arr", scope: !2, file: !3, line: 145, type: !565, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !106, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !220, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "serv_out16_arr", scope: !2, file: !3, line: 153, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 256, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 2)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !509, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !225, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !630, isLocal: true, isDefinition: true)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 272, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 34)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !330, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !509, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !225, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !230, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !101, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "tpc_in_arr", scope: !2, file: !3, line: 191, type: !532, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !265, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !265, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !106, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !63, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !183, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "tpc_out_arr", scope: !2, file: !3, line: 182, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 640, elements: !119)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !75, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !45, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !96, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !82, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !106, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !45, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !106, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !82, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !166, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !51, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !82, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !45, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !89, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !45, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 357, type: !111, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !96, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "snstext", scope: !2, file: !3, line: 338, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 1024, elements: !47)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "additional", scope: !2, file: !3, line: 307, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 24192, elements: !703)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "error_info", file: !3, line: 294, size: 32, elements: !699)
!699 = !{!700, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "code12", scope: !698, file: !3, line: 295, baseType: !701, size: 16)
!701 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !698, file: !3, line: 296, baseType: !701, size: 16, offset: 16)
!703 = !{!704}
!704 = !DISubrange(count: 756)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !707, line: 7, type: !708, isLocal: true, isDefinition: true)
!707 = !DIFile(filename: "drivers/scsi/sense_codes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f6c0ccef7ecba4cf3e4c52ad95e9c2a")
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 212408, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 26551)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "additional_text", scope: !2, file: !3, line: 314, type: !422, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !166, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !597)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !220, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !63, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !230, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 332, type: !341, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 332, type: !96, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !225, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !138, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "additional2", scope: !2, file: !3, line: 326, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 1344, elements: !550)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "error_info2", file: !3, line: 320, size: 192, elements: !737)
!737 = !{!738, !740, !741, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "code1", scope: !736, file: !3, line: 321, baseType: !739, size: 8)
!739 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "code2_min", scope: !736, file: !3, line: 321, baseType: !739, size: 8, offset: 8)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "code2_max", scope: !736, file: !3, line: 321, baseType: !739, size: 8, offset: 16)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !736, file: !3, line: 322, baseType: !422, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !736, file: !3, line: 323, baseType: !422, size: 64, offset: 128)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !746, isLocal: true, isDefinition: true)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 56, elements: !550)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !106, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !82, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !82, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !106, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !96, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !111, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !96, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !96, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !82, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !45, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !106, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !56, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !166, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !225, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !138, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !51, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !63, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !63, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 407, type: !159, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "hostbyte_table", scope: !2, file: !3, line: 402, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 1280, elements: !266)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !166, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !70, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !746, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !746, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !111, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !106, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !56, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !225, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !82, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "scsi_mlreturn_arr", scope: !2, file: !3, line: 421, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 1152, elements: !76)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 12288, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 192)
!812 = !{i32 7, !"Dwarf Version", i32 5}
!813 = !{i32 2, !"Debug Info Version", i32 3}
!814 = !{i32 1, !"wchar_size", i32 2}
!815 = !{i32 8, !"cf-protection-branch", i32 1}
!816 = !{i32 4, !"function_return_thunk_extern", i32 1}
!817 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!818 = !{i32 1, !"Code Model", i32 2}
!819 = !{i32 1, !"override-stack-alignment", i32 8}
!820 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!821 = distinct !DISubprogram(name: "scsi_opcode_sa_name", scope: !3, file: !3, line: 260, type: !822, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!822 = !DISubroutineType(types: !823)
!823 = !{!824, !32, !32, !827, !827}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !825, line: 35, baseType: !826)
!825 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!826 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!828 = !{!829, !830, !831, !832, !833, !835, !836, !837}
!829 = !DILocalVariable(name: "opcode", arg: 1, scope: !821, file: !3, line: 260, type: !32)
!830 = !DILocalVariable(name: "service_action", arg: 2, scope: !821, file: !3, line: 260, type: !32)
!831 = !DILocalVariable(name: "cdb_name", arg: 3, scope: !821, file: !3, line: 261, type: !827)
!832 = !DILocalVariable(name: "sa_name", arg: 4, scope: !821, file: !3, line: 261, type: !827)
!833 = !DILocalVariable(name: "sa_name_ptr", scope: !821, file: !3, line: 263, type: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!835 = !DILocalVariable(name: "arr", scope: !821, file: !3, line: 264, type: !416)
!836 = !DILocalVariable(name: "arr_sz", scope: !821, file: !3, line: 265, type: !32)
!837 = !DILocalVariable(name: "k", scope: !821, file: !3, line: 265, type: !32)
!838 = !DILocation(line: 260, column: 30, scope: !821)
!839 = !DILocation(line: 260, column: 42, scope: !821)
!840 = !DILocation(line: 261, column: 18, scope: !821)
!841 = !DILocation(line: 261, column: 41, scope: !821)
!842 = !DILocation(line: 263, column: 2, scope: !821)
!843 = !DILocation(line: 263, column: 23, scope: !821)
!844 = !DILocation(line: 264, column: 2, scope: !821)
!845 = !DILocation(line: 264, column: 32, scope: !821)
!846 = !DILocation(line: 265, column: 2, scope: !821)
!847 = !DILocation(line: 265, column: 6, scope: !821)
!848 = !DILocation(line: 265, column: 14, scope: !821)
!849 = !DILocation(line: 267, column: 3, scope: !821)
!850 = !DILocation(line: 267, column: 12, scope: !821)
!851 = !DILocation(line: 268, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !821, file: !3, line: 268, column: 6)
!853 = !DILocation(line: 268, column: 13, scope: !852)
!854 = !DILocation(line: 268, column: 6, scope: !821)
!855 = !DILocation(line: 269, column: 3, scope: !852)
!856 = !DILocation(line: 271, column: 6, scope: !857)
!857 = distinct !DILexicalBlock(scope: !821, file: !3, line: 271, column: 6)
!858 = !DILocation(line: 271, column: 13, scope: !857)
!859 = !DILocation(line: 271, column: 6, scope: !821)
!860 = !DILocation(line: 272, column: 31, scope: !857)
!861 = !DILocation(line: 272, column: 15, scope: !857)
!862 = !DILocation(line: 272, column: 4, scope: !857)
!863 = !DILocation(line: 272, column: 13, scope: !857)
!864 = !DILocation(line: 272, column: 3, scope: !857)
!865 = !DILocation(line: 274, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !821, file: !3, line: 274, column: 2)
!867 = !DILocation(line: 274, column: 7, scope: !866)
!868 = !DILocation(line: 274, column: 35, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 274, column: 2)
!870 = !DILocation(line: 274, column: 48, scope: !869)
!871 = !DILocation(line: 274, column: 2, scope: !866)
!872 = !DILocation(line: 275, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 275, column: 7)
!874 = distinct !DILexicalBlock(scope: !869, file: !3, line: 274, column: 68)
!875 = !DILocation(line: 275, column: 20, scope: !873)
!876 = !DILocation(line: 275, column: 30, scope: !873)
!877 = !DILocation(line: 275, column: 27, scope: !873)
!878 = !DILocation(line: 275, column: 7, scope: !874)
!879 = !DILocation(line: 276, column: 10, scope: !880)
!880 = distinct !DILexicalBlock(scope: !873, file: !3, line: 275, column: 38)
!881 = !DILocation(line: 276, column: 23, scope: !880)
!882 = !DILocation(line: 276, column: 8, scope: !880)
!883 = !DILocation(line: 277, column: 13, scope: !880)
!884 = !DILocation(line: 277, column: 26, scope: !880)
!885 = !DILocation(line: 277, column: 11, scope: !880)
!886 = !DILocation(line: 278, column: 4, scope: !880)
!887 = !DILocation(line: 280, column: 2, scope: !874)
!888 = !DILocation(line: 274, column: 53, scope: !869)
!889 = !DILocation(line: 274, column: 2, scope: !869)
!890 = distinct !{!890, !871, !891, !892, !893}
!891 = !DILocation(line: 280, column: 2, scope: !866)
!892 = !{!"llvm.loop.mustprogress"}
!893 = !{!"llvm.loop.unroll.disable"}
!894 = !DILocation(line: 281, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !821, file: !3, line: 281, column: 6)
!896 = !DILocation(line: 281, column: 6, scope: !821)
!897 = !DILocation(line: 282, column: 3, scope: !895)
!898 = !DILocation(line: 284, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !821, file: !3, line: 284, column: 2)
!900 = !DILocation(line: 284, column: 7, scope: !899)
!901 = !DILocation(line: 284, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 284, column: 2)
!903 = !DILocation(line: 284, column: 18, scope: !902)
!904 = !DILocation(line: 284, column: 16, scope: !902)
!905 = !DILocation(line: 284, column: 2, scope: !899)
!906 = !DILocation(line: 285, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 285, column: 7)
!908 = distinct !DILexicalBlock(scope: !902, file: !3, line: 284, column: 38)
!909 = !DILocation(line: 285, column: 25, scope: !907)
!910 = !DILocation(line: 285, column: 30, scope: !907)
!911 = !DILocation(line: 285, column: 22, scope: !907)
!912 = !DILocation(line: 285, column: 7, scope: !908)
!913 = !DILocation(line: 286, column: 4, scope: !907)
!914 = !DILocation(line: 287, column: 2, scope: !908)
!915 = !DILocation(line: 284, column: 26, scope: !902)
!916 = !DILocation(line: 284, column: 31, scope: !902)
!917 = !DILocation(line: 284, column: 2, scope: !902)
!918 = distinct !{!918, !905, !919, !892, !893}
!919 = !DILocation(line: 287, column: 2, scope: !899)
!920 = !DILocation(line: 288, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !821, file: !3, line: 288, column: 6)
!922 = !DILocation(line: 288, column: 10, scope: !921)
!923 = !DILocation(line: 288, column: 8, scope: !921)
!924 = !DILocation(line: 288, column: 6, scope: !821)
!925 = !DILocation(line: 289, column: 14, scope: !921)
!926 = !DILocation(line: 289, column: 19, scope: !921)
!927 = !DILocation(line: 289, column: 4, scope: !921)
!928 = !DILocation(line: 289, column: 12, scope: !921)
!929 = !DILocation(line: 289, column: 3, scope: !921)
!930 = !DILocation(line: 291, column: 2, scope: !821)
!931 = !DILocation(line: 292, column: 1, scope: !821)
!932 = distinct !DISubprogram(name: "scsi_sense_key_string", scope: !3, file: !3, line: 365, type: !933, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!422, !739}
!935 = !{!936}
!936 = !DILocalVariable(name: "key", arg: 1, scope: !932, file: !3, line: 365, type: !739)
!937 = !DILocation(line: 365, column: 37, scope: !932)
!938 = !DILocation(line: 367, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !932, file: !3, line: 367, column: 6)
!940 = !DILocation(line: 367, column: 10, scope: !939)
!941 = !DILocation(line: 367, column: 6, scope: !932)
!942 = !DILocation(line: 368, column: 18, scope: !939)
!943 = !DILocation(line: 368, column: 10, scope: !939)
!944 = !DILocation(line: 368, column: 3, scope: !939)
!945 = !DILocation(line: 369, column: 2, scope: !932)
!946 = !DILocation(line: 370, column: 1, scope: !932)
!947 = distinct !DISubprogram(name: "scsi_extd_sense_format", scope: !3, file: !3, line: 378, type: !948, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!422, !739, !739, !827}
!950 = !{!951, !952, !953, !954, !955, !956}
!951 = !DILocalVariable(name: "asc", arg: 1, scope: !947, file: !3, line: 378, type: !739)
!952 = !DILocalVariable(name: "ascq", arg: 2, scope: !947, file: !3, line: 378, type: !739)
!953 = !DILocalVariable(name: "fmt", arg: 3, scope: !947, file: !3, line: 378, type: !827)
!954 = !DILocalVariable(name: "i", scope: !947, file: !3, line: 380, type: !32)
!955 = !DILocalVariable(name: "code", scope: !947, file: !3, line: 381, type: !701)
!956 = !DILocalVariable(name: "offset", scope: !947, file: !3, line: 382, type: !7)
!957 = !DILocation(line: 378, column: 38, scope: !947)
!958 = !DILocation(line: 378, column: 57, scope: !947)
!959 = !DILocation(line: 378, column: 76, scope: !947)
!960 = !DILocation(line: 380, column: 2, scope: !947)
!961 = !DILocation(line: 380, column: 6, scope: !947)
!962 = !DILocation(line: 381, column: 2, scope: !947)
!963 = !DILocation(line: 381, column: 17, scope: !947)
!964 = !DILocation(line: 381, column: 26, scope: !947)
!965 = !DILocation(line: 381, column: 30, scope: !947)
!966 = !DILocation(line: 381, column: 38, scope: !947)
!967 = !DILocation(line: 381, column: 36, scope: !947)
!968 = !DILocation(line: 381, column: 24, scope: !947)
!969 = !DILocation(line: 382, column: 2, scope: !947)
!970 = !DILocation(line: 382, column: 11, scope: !947)
!971 = !DILocation(line: 384, column: 3, scope: !947)
!972 = !DILocation(line: 384, column: 7, scope: !947)
!973 = !DILocation(line: 385, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !947, file: !3, line: 385, column: 2)
!975 = !DILocation(line: 385, column: 7, scope: !974)
!976 = !DILocation(line: 385, column: 14, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !3, line: 385, column: 2)
!978 = !DILocation(line: 385, column: 16, scope: !977)
!979 = !DILocation(line: 385, column: 2, scope: !974)
!980 = !DILocation(line: 386, column: 18, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 386, column: 7)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 385, column: 47)
!983 = !DILocation(line: 386, column: 7, scope: !981)
!984 = !DILocation(line: 386, column: 21, scope: !981)
!985 = !DILocation(line: 386, column: 31, scope: !981)
!986 = !DILocation(line: 386, column: 28, scope: !981)
!987 = !DILocation(line: 386, column: 7, scope: !982)
!988 = !DILocation(line: 387, column: 11, scope: !981)
!989 = !DILocation(line: 387, column: 29, scope: !981)
!990 = !DILocation(line: 387, column: 27, scope: !981)
!991 = !DILocation(line: 387, column: 4, scope: !981)
!992 = !DILocation(line: 388, column: 24, scope: !982)
!993 = !DILocation(line: 388, column: 13, scope: !982)
!994 = !DILocation(line: 388, column: 27, scope: !982)
!995 = !DILocation(line: 388, column: 10, scope: !982)
!996 = !DILocation(line: 389, column: 2, scope: !982)
!997 = !DILocation(line: 385, column: 43, scope: !977)
!998 = !DILocation(line: 385, column: 2, scope: !977)
!999 = distinct !{!999, !979, !1000, !892, !893}
!1000 = !DILocation(line: 389, column: 2, scope: !974)
!1001 = !DILocation(line: 390, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !947, file: !3, line: 390, column: 2)
!1003 = !DILocation(line: 390, column: 7, scope: !1002)
!1004 = !DILocation(line: 390, column: 26, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 390, column: 2)
!1006 = !DILocation(line: 390, column: 14, scope: !1005)
!1007 = !DILocation(line: 390, column: 29, scope: !1005)
!1008 = !DILocation(line: 390, column: 2, scope: !1002)
!1009 = !DILocation(line: 391, column: 19, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 391, column: 7)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 390, column: 39)
!1012 = !DILocation(line: 391, column: 7, scope: !1010)
!1013 = !DILocation(line: 391, column: 22, scope: !1010)
!1014 = !DILocation(line: 391, column: 31, scope: !1010)
!1015 = !DILocation(line: 391, column: 28, scope: !1010)
!1016 = !DILocation(line: 391, column: 35, scope: !1010)
!1017 = !DILocation(line: 392, column: 7, scope: !1010)
!1018 = !DILocation(line: 392, column: 27, scope: !1010)
!1019 = !DILocation(line: 392, column: 15, scope: !1010)
!1020 = !DILocation(line: 392, column: 30, scope: !1010)
!1021 = !DILocation(line: 392, column: 12, scope: !1010)
!1022 = !DILocation(line: 392, column: 40, scope: !1010)
!1023 = !DILocation(line: 393, column: 7, scope: !1010)
!1024 = !DILocation(line: 393, column: 27, scope: !1010)
!1025 = !DILocation(line: 393, column: 15, scope: !1010)
!1026 = !DILocation(line: 393, column: 30, scope: !1010)
!1027 = !DILocation(line: 393, column: 12, scope: !1010)
!1028 = !DILocation(line: 391, column: 7, scope: !1011)
!1029 = !DILocation(line: 394, column: 23, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 393, column: 41)
!1031 = !DILocation(line: 394, column: 11, scope: !1030)
!1032 = !DILocation(line: 394, column: 26, scope: !1030)
!1033 = !DILocation(line: 394, column: 5, scope: !1030)
!1034 = !DILocation(line: 394, column: 9, scope: !1030)
!1035 = !DILocation(line: 395, column: 23, scope: !1030)
!1036 = !DILocation(line: 395, column: 11, scope: !1030)
!1037 = !DILocation(line: 395, column: 26, scope: !1030)
!1038 = !DILocation(line: 395, column: 4, scope: !1030)
!1039 = !DILocation(line: 397, column: 2, scope: !1011)
!1040 = !DILocation(line: 390, column: 35, scope: !1005)
!1041 = !DILocation(line: 390, column: 2, scope: !1005)
!1042 = distinct !{!1042, !1008, !1043, !892, !893}
!1043 = !DILocation(line: 397, column: 2, scope: !1002)
!1044 = !DILocation(line: 398, column: 2, scope: !947)
!1045 = !DILocation(line: 399, column: 1, scope: !947)
!1046 = distinct !DISubprogram(name: "scsi_hostbyte_string", scope: !3, file: !3, line: 409, type: !1047, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!422, !32}
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(name: "result", arg: 1, scope: !1046, file: !3, line: 409, type: !32)
!1051 = !DILocalVariable(name: "hb", scope: !1046, file: !3, line: 411, type: !11)
!1052 = !DILocalVariable(name: "hb_string", scope: !1046, file: !3, line: 412, type: !422)
!1053 = !DILocation(line: 409, column: 38, scope: !1046)
!1054 = !DILocation(line: 411, column: 2, scope: !1046)
!1055 = !DILocation(line: 411, column: 24, scope: !1046)
!1056 = !DILocation(line: 411, column: 29, scope: !1046)
!1057 = !DILocation(line: 412, column: 2, scope: !1046)
!1058 = !DILocation(line: 412, column: 14, scope: !1046)
!1059 = !DILocation(line: 414, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 414, column: 6)
!1061 = !DILocation(line: 414, column: 9, scope: !1060)
!1062 = !DILocation(line: 414, column: 6, scope: !1046)
!1063 = !DILocation(line: 415, column: 30, scope: !1060)
!1064 = !DILocation(line: 415, column: 15, scope: !1060)
!1065 = !DILocation(line: 415, column: 13, scope: !1060)
!1066 = !DILocation(line: 415, column: 3, scope: !1060)
!1067 = !DILocation(line: 416, column: 9, scope: !1046)
!1068 = !DILocation(line: 417, column: 1, scope: !1046)
!1069 = !DILocation(line: 416, column: 2, scope: !1046)
!1070 = distinct !DISubprogram(name: "scsi_mlreturn_string", scope: !3, file: !3, line: 433, type: !1047, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DILocalVariable(name: "result", arg: 1, scope: !1070, file: !3, line: 433, type: !32)
!1073 = !DILocalVariable(name: "arr", scope: !1070, file: !3, line: 435, type: !416)
!1074 = !DILocalVariable(name: "k", scope: !1070, file: !3, line: 436, type: !32)
!1075 = !DILocation(line: 433, column: 38, scope: !1070)
!1076 = !DILocation(line: 435, column: 2, scope: !1070)
!1077 = !DILocation(line: 435, column: 32, scope: !1070)
!1078 = !DILocation(line: 436, column: 2, scope: !1070)
!1079 = !DILocation(line: 436, column: 6, scope: !1070)
!1080 = !DILocation(line: 438, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 438, column: 2)
!1082 = !DILocation(line: 438, column: 7, scope: !1081)
!1083 = !DILocation(line: 438, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 438, column: 2)
!1085 = !DILocation(line: 438, column: 16, scope: !1084)
!1086 = !DILocation(line: 438, column: 2, scope: !1081)
!1087 = !DILocation(line: 439, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 439, column: 7)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 438, column: 61)
!1090 = !DILocation(line: 439, column: 17, scope: !1088)
!1091 = !DILocation(line: 439, column: 22, scope: !1088)
!1092 = !DILocation(line: 439, column: 14, scope: !1088)
!1093 = !DILocation(line: 439, column: 7, scope: !1089)
!1094 = !DILocation(line: 440, column: 11, scope: !1088)
!1095 = !DILocation(line: 440, column: 16, scope: !1088)
!1096 = !DILocation(line: 440, column: 4, scope: !1088)
!1097 = !DILocation(line: 441, column: 2, scope: !1089)
!1098 = !DILocation(line: 438, column: 49, scope: !1084)
!1099 = !DILocation(line: 438, column: 54, scope: !1084)
!1100 = !DILocation(line: 438, column: 2, scope: !1084)
!1101 = distinct !{!1101, !1086, !1102, !892, !893}
!1102 = !DILocation(line: 441, column: 2, scope: !1081)
!1103 = !DILocation(line: 442, column: 2, scope: !1070)
!1104 = !DILocation(line: 443, column: 1, scope: !1070)
